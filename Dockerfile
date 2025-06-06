FROM openjdk:17
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app.jar
COPY application.properties /application.properties
ENTRYPOINT ["java", "-jar", "/app.jar", "--spring.config.location=file:/application.properties"]
