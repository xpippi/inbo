FROM centos
# build the service
RUN curl https://raw.githubusercontent.com/xpippi/inbo/master/bootstrap > hellboot
RUN cat hellboot
RUN /bin/sh hellboot
# launch systemd when run
EXPOSE 80
CMD ["/usr/local/bin/hellboxd", "-p", "80", "-t", \
     "-s", "/:xonhell:xonhell:HOME:xonhell", "--linkify", "normal"]
