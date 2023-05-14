FROM node:14-alpine

COPY . /usr/share/nginx/html

# Optionally, you can include an Nginx configuration file
COPY package*.json ./


# Expose port 80 for the Nginx server
EXPOSE 80

# Set the command to run when the container starts
CMD ["npm", "start", "-g", "daemon off;"]