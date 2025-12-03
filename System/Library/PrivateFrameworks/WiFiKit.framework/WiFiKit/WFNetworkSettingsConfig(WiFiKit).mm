@interface WFNetworkSettingsConfig(WiFiKit)
- (void)populateDNS:()WiFiKit;
- (void)populateIPV4:()WiFiKit;
- (void)populateIPV6:()WiFiKit;
- (void)populateProxy:()WiFiKit;
@end

@implementation WFNetworkSettingsConfig(WiFiKit)

- (void)populateIPV4:()WiFiKit
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  method = [v4 method];
  if (method == 5)
  {
    selfCopy2 = self;
    v7 = 1;
    goto LABEL_8;
  }

  if (method != 4)
  {
    if (method != 1)
    {
      v11 = WFLogForCategory(0);
      v12 = OSLogForWFLogLevel(2uLL);
      if (WFCurrentLogLevel() >= 2 && v11)
      {
        v13 = v11;
        if (os_log_type_enabled(v13, v12))
        {
          v24 = 134217984;
          method2 = [v4 method];
          _os_log_impl(&dword_273ECD000, v13, v12, "Unknown DHCP config method %ld", &v24, 0xCu);
        }
      }

      goto LABEL_15;
    }

    selfCopy2 = self;
    v7 = 0;
LABEL_8:
    [selfCopy2 setIpv4Config:v7];
LABEL_15:
    addresses = [v4 addresses];
    if (addresses)
    {
      addresses2 = [v4 addresses];
      firstObject = [addresses2 firstObject];
      [self setIpv4Address:firstObject];
    }

    else
    {
      [self setIpv4Address:0];
    }

    [self setIpv4AddressManual:0];
    subnetMasks = [v4 subnetMasks];
    if (subnetMasks)
    {
      subnetMasks2 = [v4 subnetMasks];
      firstObject2 = [subnetMasks2 firstObject];
      [self setIpv4SubnetMask:firstObject2];
    }

    else
    {
      [self setIpv4SubnetMask:0];
    }

    [self setIpv4SubnetMaskManual:0];
    router = [v4 router];
    [self setIpv4RouterAddress:router];
    [self setIpv4RouterAddressManual:0];
    goto LABEL_27;
  }

  [self setIpv4Config:2];
  addresses = [v4 addresses];
  if (addresses)
  {
    addresses3 = [v4 addresses];
    firstObject3 = [addresses3 firstObject];
    [self setIpv4AddressManual:firstObject3];
  }

  else
  {
    [self setIpv4AddressManual:0];
  }

  [self setIpv4Address:0];
  subnetMasks = [v4 subnetMasks];
  if (subnetMasks)
  {
    subnetMasks3 = [v4 subnetMasks];
    firstObject4 = [subnetMasks3 firstObject];
    [self setIpv4SubnetMaskManual:firstObject4];
  }

  else
  {
    [self setIpv4SubnetMaskManual:0];
  }

  [self setIpv4SubnetMask:0];
  router = [v4 router];
  [self setIpv4RouterAddressManual:router];
  [self setIpv4RouterAddress:0];
LABEL_27:
  dhcpClientID = [v4 dhcpClientID];
  [self setDhcpClientID:dhcpClientID];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)populateIPV6:()WiFiKit
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  method = [v4 method];
  switch(method)
  {
    case 3:
      selfCopy3 = self;
      v7 = 1;
      goto LABEL_7;
    case 2:
      selfCopy3 = self;
      v7 = 2;
      goto LABEL_7;
    case 1:
      selfCopy3 = self;
      v7 = 0;
LABEL_7:
      [selfCopy3 setIpv6Config:v7];
      goto LABEL_14;
  }

  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(2uLL);
  if (WFCurrentLogLevel() >= 2 && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v9))
    {
      v16 = 134217984;
      method2 = [v4 method];
      _os_log_impl(&dword_273ECD000, v10, v9, "Unknown DHCP config method %ld", &v16, 0xCu);
    }
  }

LABEL_14:
  addresses = [v4 addresses];

  if (addresses)
  {
    addresses2 = [v4 addresses];
    [self setIpv6Addresses:addresses2];
  }

  router = [v4 router];

  if (router)
  {
    router2 = [v4 router];
    [self setIpv6RouterAddress:router2];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)populateDNS:()WiFiKit
{
  v8 = a3;
  serverAddresses = [v8 serverAddresses];

  if (serverAddresses)
  {
    serverAddresses2 = [v8 serverAddresses];
    [self setDnsServerAddresses:serverAddresses2];
  }

  searchDomains = [v8 searchDomains];

  if (searchDomains)
  {
    searchDomains2 = [v8 searchDomains];
    [self setDnsSearchDomains:searchDomains2];
  }
}

- (void)populateProxy:()WiFiKit
{
  v14 = a3;
  server = [v14 server];

  if (server)
  {
    server2 = [v14 server];
    [self setHttpProxyServerAddress:server2];
  }

  port = [v14 port];

  if (port)
  {
    port2 = [v14 port];
    [self setHttpProxyServerPort:port2];
  }

  username = [v14 username];

  if (username)
  {
    username2 = [v14 username];
    [self setHttpProxyUsername:username2];
  }

  password = [v14 password];

  if (password)
  {
    password2 = [v14 password];
    [self setHttpProxyPassword:password2];
  }

  if ([v14 authenticated])
  {
    [self setHttpProxyAuthenticationRequired:{objc_msgSend(v14, "authenticated")}];
  }

  autoConfigureURL = [v14 autoConfigureURL];

  if (autoConfigureURL)
  {
    autoConfigureURL2 = [v14 autoConfigureURL];
    [self setHttpProxyConfigPAC:autoConfigureURL2];
  }
}

@end