#!/usr/bin/env bash
/Library/Tomcat/bin/catalina.sh jpda stop
mvn clean install &&
rm -rf /usr/local/apache-tomcat-9.0.0.M9/logs/* &&
rm -rf /usr/local/apache-tomcat-9.0.0.M9/webapps/ServletsExperiment &&
cp /Users/Silviu/Backend/Servlets/target/ServletsExperiment.war /Library/Tomcat/webapps/ServletsExperiment.war
/Library/Tomcat/bin/catalina.sh jpda start