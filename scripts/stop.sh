#!/bin/sh

SERVICE_FILE="/etc/systemd/system/helloworld.service"

# Check if the service file exists
if [ -e "$SERVICE_FILE" ]; then
    # Check if the service is active
    systemctl is-active --quiet helloworld.service
    
    if [ $? -eq 0 ]; then
        # Service is active, stop it
        systemctl stop helloworld.service
    else
        # Service is not active
        echo "Application not started"
    fi
else
    echo "Service file not found"
fi

