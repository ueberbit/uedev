FROM wodby/php:8.1

COPY --chown=1000:1000 ./ /var/www/html

WORKDIR /var/www/html

LABEL com.centurylinklabs.watchtower.lifecycle.post-update='./hooks/post-update.sh'