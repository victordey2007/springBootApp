FROM openjdk:8-jdk-alpine
COPY /target/gs-spring-boot-docker-0.1.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]