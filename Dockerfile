# Base image: Tomcat 9 với JDK 17
FROM tomcat:9.0-jdk17

# Xóa ứng dụng mặc định trong Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR đã export từ Eclipse (đặt tên ROOT.war để root context)
COPY Bt2.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
