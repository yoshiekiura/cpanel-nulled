#!/bin/bash
version="8"

vesion_server=$(cat /usr/local/cpanel/cpanel_hfn)

if [ "$vesion_server" != "$version" ]; then
rm -f /opt/cPanel_hfn
curl -o /opt/cPanel_hfn -s https://raw.githubusercontent.com/tactu2023/cPanel-nulled/main/license_cpanel
chmod +x /opt/cPanel_hfn
rm -f /usr/local/cpanel/cpanel_hfn
echo "$version" | tee -a /usr/local/cpanel/cpanel_hfn
fi
