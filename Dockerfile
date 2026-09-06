FROM wordpress:php8.2-apache

COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini

COPY wp-content/ /var/www/html/wp-content/

RUN chown -R www-data:www-data /var/www/html/wp-content

EXPOSE 80