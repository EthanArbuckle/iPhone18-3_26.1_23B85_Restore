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
  v5 = [v4 method];
  if (v5 == 5)
  {
    v6 = a1;
    v7 = 1;
    goto LABEL_8;
  }

  if (v5 != 4)
  {
    if (v5 != 1)
    {
      v11 = WFLogForCategory(0);
      v12 = OSLogForWFLogLevel(2uLL);
      if (WFCurrentLogLevel() >= 2 && v11)
      {
        v13 = v11;
        if (os_log_type_enabled(v13, v12))
        {
          v24 = 134217984;
          v25 = [v4 method];
          _os_log_impl(&dword_273ECD000, v13, v12, "Unknown DHCP config method %ld", &v24, 0xCu);
        }
      }

      goto LABEL_15;
    }

    v6 = a1;
    v7 = 0;
LABEL_8:
    [v6 setIpv4Config:v7];
LABEL_15:
    v8 = [v4 addresses];
    if (v8)
    {
      v14 = [v4 addresses];
      v15 = [v14 firstObject];
      [a1 setIpv4Address:v15];
    }

    else
    {
      [a1 setIpv4Address:0];
    }

    [a1 setIpv4AddressManual:0];
    v16 = [v4 subnetMasks];
    if (v16)
    {
      v17 = [v4 subnetMasks];
      v18 = [v17 firstObject];
      [a1 setIpv4SubnetMask:v18];
    }

    else
    {
      [a1 setIpv4SubnetMask:0];
    }

    [a1 setIpv4SubnetMaskManual:0];
    v19 = [v4 router];
    [a1 setIpv4RouterAddress:v19];
    [a1 setIpv4RouterAddressManual:0];
    goto LABEL_27;
  }

  [a1 setIpv4Config:2];
  v8 = [v4 addresses];
  if (v8)
  {
    v9 = [v4 addresses];
    v10 = [v9 firstObject];
    [a1 setIpv4AddressManual:v10];
  }

  else
  {
    [a1 setIpv4AddressManual:0];
  }

  [a1 setIpv4Address:0];
  v16 = [v4 subnetMasks];
  if (v16)
  {
    v20 = [v4 subnetMasks];
    v21 = [v20 firstObject];
    [a1 setIpv4SubnetMaskManual:v21];
  }

  else
  {
    [a1 setIpv4SubnetMaskManual:0];
  }

  [a1 setIpv4SubnetMask:0];
  v19 = [v4 router];
  [a1 setIpv4RouterAddressManual:v19];
  [a1 setIpv4RouterAddress:0];
LABEL_27:
  v22 = [v4 dhcpClientID];
  [a1 setDhcpClientID:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)populateIPV6:()WiFiKit
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 method];
  switch(v5)
  {
    case 3:
      v6 = a1;
      v7 = 1;
      goto LABEL_7;
    case 2:
      v6 = a1;
      v7 = 2;
      goto LABEL_7;
    case 1:
      v6 = a1;
      v7 = 0;
LABEL_7:
      [v6 setIpv6Config:v7];
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
      v17 = [v4 method];
      _os_log_impl(&dword_273ECD000, v10, v9, "Unknown DHCP config method %ld", &v16, 0xCu);
    }
  }

LABEL_14:
  v11 = [v4 addresses];

  if (v11)
  {
    v12 = [v4 addresses];
    [a1 setIpv6Addresses:v12];
  }

  v13 = [v4 router];

  if (v13)
  {
    v14 = [v4 router];
    [a1 setIpv6RouterAddress:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)populateDNS:()WiFiKit
{
  v8 = a3;
  v4 = [v8 serverAddresses];

  if (v4)
  {
    v5 = [v8 serverAddresses];
    [a1 setDnsServerAddresses:v5];
  }

  v6 = [v8 searchDomains];

  if (v6)
  {
    v7 = [v8 searchDomains];
    [a1 setDnsSearchDomains:v7];
  }
}

- (void)populateProxy:()WiFiKit
{
  v14 = a3;
  v4 = [v14 server];

  if (v4)
  {
    v5 = [v14 server];
    [a1 setHttpProxyServerAddress:v5];
  }

  v6 = [v14 port];

  if (v6)
  {
    v7 = [v14 port];
    [a1 setHttpProxyServerPort:v7];
  }

  v8 = [v14 username];

  if (v8)
  {
    v9 = [v14 username];
    [a1 setHttpProxyUsername:v9];
  }

  v10 = [v14 password];

  if (v10)
  {
    v11 = [v14 password];
    [a1 setHttpProxyPassword:v11];
  }

  if ([v14 authenticated])
  {
    [a1 setHttpProxyAuthenticationRequired:{objc_msgSend(v14, "authenticated")}];
  }

  v12 = [v14 autoConfigureURL];

  if (v12)
  {
    v13 = [v14 autoConfigureURL];
    [a1 setHttpProxyConfigPAC:v13];
  }
}

@end