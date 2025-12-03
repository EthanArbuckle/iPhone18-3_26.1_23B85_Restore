@interface WFNetworkSettingsConfig
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNetworkSettingsConfig:(id)config;
- (BOOL)validIPv4Configuration;
- (BOOL)validIPv6Configuration;
- (BOOL)validProxyConfiguration;
- (WFNetworkSettingsConfig)init;
- (id)changesBetweenConfig:(id)config;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WFNetworkSettingsConfig

- (WFNetworkSettingsConfig)init
{
  v3.receiver = self;
  v3.super_class = WFNetworkSettingsConfig;
  result = [(WFNetworkSettingsConfig *)&v3 init];
  if (result)
  {
    result->_ipv4Config = -1;
    result->_ipv6Config = -1;
    result->_current = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(WFNetworkSettingsConfig);
  if (v5)
  {
    healthRecommendations = [(WFNetworkSettingsConfig *)self healthRecommendations];
    [(WFNetworkSettingsConfig *)v5 setHealthRecommendations:healthRecommendations];

    ssid = [(WFNetworkSettingsConfig *)self ssid];
    [(WFNetworkSettingsConfig *)v5 setSsid:ssid];

    displayFriendlyName = [(WFNetworkSettingsConfig *)self displayFriendlyName];
    v9 = [displayFriendlyName copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setDisplayFriendlyName:v9];

    [(WFNetworkSettingsConfig *)v5 setCurrent:[(WFNetworkSettingsConfig *)self current]];
    [(WFNetworkSettingsConfig *)v5 setForgetable:[(WFNetworkSettingsConfig *)self forgetable]];
    [(WFNetworkSettingsConfig *)v5 setJoinable:[(WFNetworkSettingsConfig *)self joinable]];
    [(WFNetworkSettingsConfig *)v5 setManageable:[(WFNetworkSettingsConfig *)self manageable]];
    [(WFNetworkSettingsConfig *)v5 setCloudSyncable:[(WFNetworkSettingsConfig *)self cloudSyncable]];
    [(WFNetworkSettingsConfig *)v5 setCanRenewLease:[(WFNetworkSettingsConfig *)self canRenewLease]];
    [(WFNetworkSettingsConfig *)v5 setDiagnosable:[(WFNetworkSettingsConfig *)self diagnosable]];
    [(WFNetworkSettingsConfig *)v5 setAutoJoinConfigurable:[(WFNetworkSettingsConfig *)self autoJoinConfigurable]];
    [(WFNetworkSettingsConfig *)v5 setAutoJoinEnabled:[(WFNetworkSettingsConfig *)self autoJoinEnabled]];
    [(WFNetworkSettingsConfig *)v5 setAutoLoginConfigurable:[(WFNetworkSettingsConfig *)self autoLoginConfigurable]];
    [(WFNetworkSettingsConfig *)v5 setAutoLoginEnabled:[(WFNetworkSettingsConfig *)self autoLoginEnabled]];
    [(WFNetworkSettingsConfig *)v5 setSaveDataModeConfigurable:[(WFNetworkSettingsConfig *)self saveDataModeConfigurable]];
    [(WFNetworkSettingsConfig *)v5 setPrivacyProxyTierStatus:[(WFNetworkSettingsConfig *)self privacyProxyTierStatus]];
    [(WFNetworkSettingsConfig *)v5 setIsInSaveDataMode:[(WFNetworkSettingsConfig *)self isInSaveDataMode]];
    [(WFNetworkSettingsConfig *)v5 setPrivacyProxyEnabled:[(WFNetworkSettingsConfig *)self privacyProxyEnabled]];
    [(WFNetworkSettingsConfig *)v5 setWifiOutrankEnabled:[(WFNetworkSettingsConfig *)self wifiOutrankEnabled]];
    [(WFNetworkSettingsConfig *)v5 setNetworkQualityVisible:[(WFNetworkSettingsConfig *)self networkQualityVisible]];
    [(WFNetworkSettingsConfig *)self networkQualityResponsiveness];
    [(WFNetworkSettingsConfig *)v5 setNetworkQualityResponsiveness:?];
    networkQualityDate = [(WFNetworkSettingsConfig *)self networkQualityDate];
    v11 = [networkQualityDate copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setNetworkQualityDate:v11];

    [(WFNetworkSettingsConfig *)v5 setIpv4Config:[(WFNetworkSettingsConfig *)self ipv4Config]];
    ipv4Address = [(WFNetworkSettingsConfig *)self ipv4Address];
    v13 = [ipv4Address copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv4Address:v13];

    ipv4AddressManual = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    v15 = [ipv4AddressManual copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv4AddressManual:v15];

    ipv4SubnetMask = [(WFNetworkSettingsConfig *)self ipv4SubnetMask];
    v17 = [ipv4SubnetMask copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv4SubnetMask:v17];

    ipv4SubnetMaskManual = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
    v19 = [ipv4SubnetMaskManual copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv4SubnetMaskManual:v19];

    ipv4RouterAddress = [(WFNetworkSettingsConfig *)self ipv4RouterAddress];
    v21 = [ipv4RouterAddress copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv4RouterAddress:v21];

    ipv4RouterAddressManual = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
    v23 = [ipv4RouterAddressManual copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv4RouterAddressManual:v23];

    dhcpClientID = [(WFNetworkSettingsConfig *)self dhcpClientID];
    v25 = [dhcpClientID copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setDhcpClientID:v25];

    dhcpLeaseExpirationDate = [(WFNetworkSettingsConfig *)self dhcpLeaseExpirationDate];
    v27 = [dhcpLeaseExpirationDate copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setDhcpLeaseExpirationDate:v27];

    [(WFNetworkSettingsConfig *)v5 setIpv6Config:[(WFNetworkSettingsConfig *)self ipv6Config]];
    ipv6Addresses = [(WFNetworkSettingsConfig *)self ipv6Addresses];
    v29 = [ipv6Addresses copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv6Addresses:v29];

    ipv6PrefixLengths = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
    v31 = [ipv6PrefixLengths copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv6PrefixLengths:v31];

    ipv6AddressManual = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
    v33 = [ipv6AddressManual copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv6AddressManual:v33];

    ipv6RouterAddress = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
    v35 = [ipv6RouterAddress copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv6RouterAddress:v35];

    ipv6RouterAddressManual = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
    v37 = [ipv6RouterAddressManual copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv6RouterAddressManual:v37];

    ipv6PrefixLengthManual = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
    v39 = [ipv6PrefixLengthManual copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setIpv6PrefixLengthManual:v39];

    [(WFNetworkSettingsConfig *)v5 setDnsConfig:[(WFNetworkSettingsConfig *)self dnsConfig]];
    dnsServerAddresses = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
    v41 = [dnsServerAddresses copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setDnsServerAddresses:v41];

    dnsSearchDomains = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
    v43 = [dnsSearchDomains copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setDnsSearchDomains:v43];

    [(WFNetworkSettingsConfig *)v5 setHttpProxyConfigurable:[(WFNetworkSettingsConfig *)self httpProxyConfigurable]];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyConfig:[(WFNetworkSettingsConfig *)self httpProxyConfig]];
    httpProxyServerAddress = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
    v45 = [httpProxyServerAddress copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyServerAddress:v45];

    httpProxyServerPort = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
    v47 = [httpProxyServerPort copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyServerPort:v47];

    [(WFNetworkSettingsConfig *)v5 setHttpProxyAuthenticationRequired:[(WFNetworkSettingsConfig *)self httpProxyAuthenticationRequired]];
    httpProxyUsername = [(WFNetworkSettingsConfig *)self httpProxyUsername];
    v49 = [httpProxyUsername copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyUsername:v49];

    httpProxyPassword = [(WFNetworkSettingsConfig *)self httpProxyPassword];
    v51 = [httpProxyPassword copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyPassword:v51];

    httpProxyConfigPAC = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
    v53 = [httpProxyConfigPAC copyWithZone:zone];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyConfigPAC:v53];
  }

  return v5;
}

- (BOOL)validProxyConfiguration
{
  if ([(WFNetworkSettingsConfig *)self httpProxyConfig]!= 1)
  {
    goto LABEL_10;
  }

  httpProxyServerAddress = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
  if (!httpProxyServerAddress)
  {
    goto LABEL_6;
  }

  v4 = httpProxyServerAddress;
  httpProxyServerAddress2 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
  isEmpty = [httpProxyServerAddress2 isEmpty];

  if (isEmpty)
  {
    goto LABEL_6;
  }

  httpProxyServerPort = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
  if (!httpProxyServerPort || (v8 = httpProxyServerPort, -[WFNetworkSettingsConfig httpProxyServerPort](self, "httpProxyServerPort"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEmpty], v9, v8, (v10 & 1) != 0))
  {
LABEL_6:
    LOBYTE(v11) = 0;
    return v11;
  }

  if (![(WFNetworkSettingsConfig *)self httpProxyAuthenticationRequired])
  {
LABEL_10:
    LOBYTE(v11) = 1;
    return v11;
  }

  httpProxyUsername = [(WFNetworkSettingsConfig *)self httpProxyUsername];
  if (httpProxyUsername)
  {
    httpProxyUsername2 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
    v11 = [httpProxyUsername2 isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)validIPv4Configuration
{
  if ([(WFNetworkSettingsConfig *)self ipv4Config]!= 2)
  {
LABEL_12:
    LOBYTE(ipv4AddressManual) = 1;
    return ipv4AddressManual;
  }

  ipv4AddressManual = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
  if (ipv4AddressManual)
  {
    v4 = ipv4AddressManual;
    ipv4AddressManual2 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    if ([ipv4AddressManual2 isEmpty])
    {
LABEL_4:

LABEL_13:
      LOBYTE(ipv4AddressManual) = 0;
      return ipv4AddressManual;
    }

    ipv4AddressManual3 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    isValidIPv4Address = [ipv4AddressManual3 isValidIPv4Address];

    if (!isValidIPv4Address)
    {
      goto LABEL_13;
    }

    ipv4AddressManual = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
    if (ipv4AddressManual)
    {
      v4 = ipv4AddressManual;
      ipv4AddressManual2 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
      if ([ipv4AddressManual2 isEmpty])
      {
        goto LABEL_4;
      }

      ipv4SubnetMaskManual = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
      isValidSubnetMask = [ipv4SubnetMaskManual isValidSubnetMask];

      if (!isValidSubnetMask)
      {
        goto LABEL_13;
      }

      ipv4RouterAddressManual = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
      if (ipv4RouterAddressManual)
      {
        v4 = ipv4RouterAddressManual;
        ipv4AddressManual2 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
        if ([ipv4AddressManual2 isEmpty])
        {
          goto LABEL_4;
        }

        ipv4RouterAddressManual2 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
        isValidIPv4Address2 = [ipv4RouterAddressManual2 isValidIPv4Address];

        if (!isValidIPv4Address2)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_12;
    }
  }

  return ipv4AddressManual;
}

- (BOOL)validIPv6Configuration
{
  if ([(WFNetworkSettingsConfig *)self ipv6Config]!= 1)
  {
    goto LABEL_5;
  }

  ipv6AddressManual = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
  if (ipv6AddressManual)
  {
    v4 = ipv6AddressManual;
    ipv6AddressManual2 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
    isEmpty = [ipv6AddressManual2 isEmpty];

    if (isEmpty)
    {
      LOBYTE(ipv6AddressManual) = 0;
      return ipv6AddressManual;
    }

LABEL_5:
    LOBYTE(ipv6AddressManual) = 1;
  }

  return ipv6AddressManual;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFNetworkSettingsConfig *)self isEqualToNetworkSettingsConfig:equalCopy];

  return v5;
}

- (BOOL)isEqualToNetworkSettingsConfig:(id)config
{
  configCopy = config;
  ssid = [(WFNetworkSettingsConfig *)self ssid];
  ssid2 = [configCopy ssid];
  v7 = [ssid isEqualToString:ssid2];

  if (!v7)
  {
    goto LABEL_20;
  }

  displayFriendlyName = [(WFNetworkSettingsConfig *)self displayFriendlyName];
  displayFriendlyName2 = [configCopy displayFriendlyName];
  v10 = [displayFriendlyName isEqualToString:displayFriendlyName2];

  if (!v10)
  {
    goto LABEL_20;
  }

  current = [(WFNetworkSettingsConfig *)self current];
  if (current != [configCopy current])
  {
    goto LABEL_20;
  }

  forgetable = [(WFNetworkSettingsConfig *)self forgetable];
  if (forgetable != [configCopy forgetable])
  {
    goto LABEL_20;
  }

  joinable = [(WFNetworkSettingsConfig *)self joinable];
  if (joinable != [configCopy joinable])
  {
    goto LABEL_20;
  }

  manageable = [(WFNetworkSettingsConfig *)self manageable];
  if (manageable != [configCopy manageable])
  {
    goto LABEL_20;
  }

  cloudSyncable = [(WFNetworkSettingsConfig *)self cloudSyncable];
  if (cloudSyncable != [configCopy cloudSyncable])
  {
    goto LABEL_20;
  }

  canRenewLease = [(WFNetworkSettingsConfig *)self canRenewLease];
  if (canRenewLease != [configCopy canRenewLease])
  {
    goto LABEL_20;
  }

  autoJoinConfigurable = [(WFNetworkSettingsConfig *)self autoJoinConfigurable];
  if (autoJoinConfigurable != [configCopy autoJoinConfigurable])
  {
    goto LABEL_20;
  }

  autoJoinEnabled = [(WFNetworkSettingsConfig *)self autoJoinEnabled];
  if (autoJoinEnabled != [configCopy autoJoinEnabled])
  {
    goto LABEL_20;
  }

  autoLoginConfigurable = [(WFNetworkSettingsConfig *)self autoLoginConfigurable];
  if (autoLoginConfigurable != [configCopy autoLoginConfigurable])
  {
    goto LABEL_20;
  }

  autoLoginEnabled = [(WFNetworkSettingsConfig *)self autoLoginEnabled];
  if (autoLoginEnabled != [configCopy autoLoginEnabled])
  {
    goto LABEL_20;
  }

  saveDataModeConfigurable = [(WFNetworkSettingsConfig *)self saveDataModeConfigurable];
  if (saveDataModeConfigurable != [configCopy saveDataModeConfigurable])
  {
    goto LABEL_20;
  }

  isInSaveDataMode = [(WFNetworkSettingsConfig *)self isInSaveDataMode];
  if (isInSaveDataMode != [configCopy isInSaveDataMode])
  {
    goto LABEL_20;
  }

  privacyProxyTierStatus = [(WFNetworkSettingsConfig *)self privacyProxyTierStatus];
  if (privacyProxyTierStatus != [configCopy privacyProxyTierStatus])
  {
    goto LABEL_20;
  }

  privacyProxyEnabled = [(WFNetworkSettingsConfig *)self privacyProxyEnabled];
  if (privacyProxyEnabled != [configCopy privacyProxyEnabled])
  {
    goto LABEL_20;
  }

  wifiOutrankEnabled = [(WFNetworkSettingsConfig *)self wifiOutrankEnabled];
  if (wifiOutrankEnabled != [configCopy wifiOutrankEnabled])
  {
    goto LABEL_20;
  }

  networkQualityVisible = [(WFNetworkSettingsConfig *)self networkQualityVisible];
  if (networkQualityVisible != [configCopy networkQualityVisible])
  {
    goto LABEL_20;
  }

  [(WFNetworkSettingsConfig *)self networkQualityResponsiveness];
  v28 = v27;
  [configCopy networkQualityResponsiveness];
  if (v28 != v29)
  {
    goto LABEL_20;
  }

  networkQualityDate = [(WFNetworkSettingsConfig *)self networkQualityDate];
  if (networkQualityDate || ([configCopy networkQualityDate], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    networkQualityDate2 = [(WFNetworkSettingsConfig *)self networkQualityDate];
    networkQualityDate3 = [configCopy networkQualityDate];
    v35 = [networkQualityDate2 isEqual:networkQualityDate3];

    if (networkQualityDate)
    {

      if (!v35)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v35 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv4Config = [(WFNetworkSettingsConfig *)self ipv4Config];
  if (ipv4Config != [configCopy ipv4Config])
  {
    goto LABEL_20;
  }

  ipv4Address = [(WFNetworkSettingsConfig *)self ipv4Address];
  if (ipv4Address || ([configCopy ipv4Address], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4Address2 = [(WFNetworkSettingsConfig *)self ipv4Address];
    ipv4Address3 = [configCopy ipv4Address];
    v40 = [ipv4Address2 isEqualToString:ipv4Address3];

    if (ipv4Address)
    {

      if (!v40)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v40 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv4AddressManual = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
  if (ipv4AddressManual || ([configCopy ipv4AddressManual], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual2 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    ipv4AddressManual3 = [configCopy ipv4AddressManual];
    v44 = [ipv4AddressManual2 isEqualToString:ipv4AddressManual3];

    if (ipv4AddressManual)
    {

      if (!v44)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v44 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv4SubnetMask = [(WFNetworkSettingsConfig *)self ipv4SubnetMask];
  if (ipv4SubnetMask || ([configCopy ipv4SubnetMask], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4SubnetMask2 = [(WFNetworkSettingsConfig *)self ipv4SubnetMask];
    ipv4SubnetMask3 = [configCopy ipv4SubnetMask];
    v48 = [ipv4SubnetMask2 isEqualToString:ipv4SubnetMask3];

    if (ipv4SubnetMask)
    {

      if (!v48)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v48 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv4SubnetMaskManual = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
  if (ipv4SubnetMaskManual || ([configCopy ipv4SubnetMaskManual], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4SubnetMaskManual2 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
    ipv4SubnetMaskManual3 = [configCopy ipv4SubnetMaskManual];
    v52 = [ipv4SubnetMaskManual2 isEqualToString:ipv4SubnetMaskManual3];

    if (ipv4SubnetMaskManual)
    {

      if (!v52)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v52 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv4RouterAddress = [(WFNetworkSettingsConfig *)self ipv4RouterAddress];
  if (ipv4RouterAddress || ([configCopy ipv4RouterAddress], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4RouterAddress2 = [(WFNetworkSettingsConfig *)self ipv4RouterAddress];
    ipv4RouterAddress3 = [configCopy ipv4RouterAddress];
    v56 = [ipv4RouterAddress2 isEqualToString:ipv4RouterAddress3];

    if (ipv4RouterAddress)
    {

      if (!v56)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v56 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv4RouterAddressManual = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
  if (ipv4RouterAddressManual || ([configCopy ipv4RouterAddressManual], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4RouterAddressManual2 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
    ipv4RouterAddressManual3 = [configCopy ipv4RouterAddressManual];
    v60 = [ipv4RouterAddressManual2 isEqualToString:ipv4RouterAddressManual3];

    if (ipv4RouterAddressManual)
    {

      if (!v60)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v60 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  dhcpClientID = [(WFNetworkSettingsConfig *)self dhcpClientID];
  if (dhcpClientID || ([configCopy dhcpClientID], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    dhcpClientID2 = [(WFNetworkSettingsConfig *)self dhcpClientID];
    dhcpClientID3 = [configCopy dhcpClientID];
    v64 = [dhcpClientID2 isEqualToString:dhcpClientID3];

    if (dhcpClientID)
    {

      if (!v64)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v64 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  dhcpLeaseExpirationDate = [(WFNetworkSettingsConfig *)self dhcpLeaseExpirationDate];
  if (dhcpLeaseExpirationDate || ([configCopy dhcpLeaseExpirationDate], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    dhcpLeaseExpirationDate2 = [(WFNetworkSettingsConfig *)self dhcpLeaseExpirationDate];
    dhcpLeaseExpirationDate3 = [configCopy dhcpLeaseExpirationDate];
    v68 = [dhcpLeaseExpirationDate2 isEqual:dhcpLeaseExpirationDate3];

    if (dhcpLeaseExpirationDate)
    {

      if (!v68)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v68 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv6Config = [(WFNetworkSettingsConfig *)self ipv6Config];
  if (ipv6Config != [configCopy ipv6Config])
  {
    goto LABEL_20;
  }

  ipv6Addresses = [(WFNetworkSettingsConfig *)self ipv6Addresses];
  if (ipv6Addresses || ([configCopy ipv6Addresses], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv6Addresses2 = [(WFNetworkSettingsConfig *)self ipv6Addresses];
    ipv6Addresses3 = [configCopy ipv6Addresses];
    v73 = [ipv6Addresses2 isEqualToArray:ipv6Addresses3];

    if (ipv6Addresses)
    {

      if (!v73)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v73 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv6PrefixLengths = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
  if (ipv6PrefixLengths || ([configCopy ipv6PrefixLengths], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv6PrefixLengths2 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
    ipv6PrefixLengths3 = [configCopy ipv6PrefixLengths];
    v77 = [ipv6PrefixLengths2 isEqualToArray:ipv6PrefixLengths3];

    if (ipv6PrefixLengths)
    {

      if (!v77)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v77 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv6AddressManual = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
  if (ipv6AddressManual || ([configCopy ipv6AddressManual], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv6AddressManual2 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
    ipv6AddressManual3 = [configCopy ipv6AddressManual];
    v81 = [ipv6AddressManual2 isEqualToString:ipv6AddressManual3];

    if (ipv6AddressManual)
    {

      if (!v81)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v81 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv6RouterAddress = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
  if (ipv6RouterAddress || ([configCopy ipv6RouterAddress], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv6RouterAddress2 = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
    ipv6RouterAddress3 = [configCopy ipv6RouterAddress];
    v85 = [ipv6RouterAddress2 isEqualToString:ipv6RouterAddress3];

    if (ipv6RouterAddress)
    {

      if (!v85)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v85 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv6RouterAddressManual = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
  if (ipv6RouterAddressManual || ([configCopy ipv6RouterAddressManual], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv6RouterAddressManual2 = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
    ipv6RouterAddressManual3 = [configCopy ipv6RouterAddressManual];
    v89 = [ipv6RouterAddressManual2 isEqualToString:ipv6RouterAddressManual3];

    if (ipv6RouterAddressManual)
    {

      if (!v89)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v89 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  ipv6PrefixLengthManual = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
  if (ipv6PrefixLengthManual || ([configCopy ipv6PrefixLengthManual], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv6PrefixLengthManual2 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
    ipv6PrefixLengthManual3 = [configCopy ipv6PrefixLengthManual];
    v93 = [ipv6PrefixLengthManual2 isEqualToString:ipv6PrefixLengthManual3];

    if (ipv6PrefixLengthManual)
    {

      if (!v93)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v93 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  dnsConfig = [(WFNetworkSettingsConfig *)self dnsConfig];
  if (dnsConfig != [configCopy dnsConfig])
  {
    goto LABEL_20;
  }

  dnsServerAddresses = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
  if (dnsServerAddresses || ([configCopy dnsServerAddresses], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    dnsServerAddresses2 = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
    dnsServerAddresses3 = [configCopy dnsServerAddresses];
    v98 = [dnsServerAddresses2 isEqualToArray:dnsServerAddresses3];

    if (dnsServerAddresses)
    {

      if (!v98)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v98 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  dnsSearchDomains = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
  if (dnsSearchDomains || ([configCopy dnsSearchDomains], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    dnsSearchDomains2 = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
    dnsSearchDomains3 = [configCopy dnsSearchDomains];
    v102 = [dnsSearchDomains2 isEqualToArray:dnsSearchDomains3];

    if (dnsSearchDomains)
    {

      if (!v102)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v102 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  httpProxyConfigurable = [(WFNetworkSettingsConfig *)self httpProxyConfigurable];
  if (httpProxyConfigurable != [configCopy httpProxyConfigurable])
  {
    goto LABEL_20;
  }

  httpProxyConfig = [(WFNetworkSettingsConfig *)self httpProxyConfig];
  if (httpProxyConfig != [configCopy httpProxyConfig])
  {
    goto LABEL_20;
  }

  httpProxyServerAddress = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
  if (httpProxyServerAddress || ([configCopy httpProxyServerAddress], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    httpProxyServerAddress2 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
    httpProxyServerAddress3 = [configCopy httpProxyServerAddress];
    v108 = [httpProxyServerAddress2 isEqualToString:httpProxyServerAddress3];

    if (httpProxyServerAddress)
    {

      if (!v108)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v108 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  httpProxyServerPort = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
  if (httpProxyServerPort || ([configCopy httpProxyServerPort], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    httpProxyServerPort2 = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
    httpProxyServerPort3 = [configCopy httpProxyServerPort];
    v112 = [httpProxyServerPort2 isEqualToString:httpProxyServerPort3];

    if (httpProxyServerPort)
    {

      if (!v112)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v112 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  httpProxyAuthenticationRequired = [(WFNetworkSettingsConfig *)self httpProxyAuthenticationRequired];
  if (httpProxyAuthenticationRequired != [configCopy httpProxyAuthenticationRequired])
  {
    goto LABEL_20;
  }

  httpProxyUsername = [(WFNetworkSettingsConfig *)self httpProxyUsername];
  if (httpProxyUsername || ([configCopy httpProxyUsername], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    httpProxyUsername2 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
    httpProxyUsername3 = [configCopy httpProxyUsername];
    v117 = [httpProxyUsername2 isEqualToString:httpProxyUsername3];

    if (httpProxyUsername)
    {

      if (!v117)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if ((v117 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  httpProxyPassword = [(WFNetworkSettingsConfig *)self httpProxyPassword];
  if (!httpProxyPassword)
  {
    displayFriendlyName2 = [configCopy httpProxyPassword];
    if (!displayFriendlyName2)
    {
LABEL_154:
      httpProxyConfigPAC = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
      if (httpProxyConfigPAC || ([configCopy httpProxyConfigPAC], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        httpProxyConfigPAC2 = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
        httpProxyConfigPAC3 = [configCopy httpProxyConfigPAC];
        v30 = [httpProxyConfigPAC2 isEqualToString:httpProxyConfigPAC3];

        if (httpProxyConfigPAC)
        {
LABEL_160:

          goto LABEL_21;
        }
      }

      else
      {
        v30 = 1;
      }

      goto LABEL_160;
    }
  }

  httpProxyPassword2 = [(WFNetworkSettingsConfig *)self httpProxyPassword];
  httpProxyPassword3 = [configCopy httpProxyPassword];
  v121 = [httpProxyPassword2 isEqualToString:httpProxyPassword3];

  if (!httpProxyPassword)
  {

    if ((v121 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_154;
  }

  if (v121)
  {
    goto LABEL_154;
  }

LABEL_20:
  v30 = 0;
LABEL_21:

  return v30;
}

- (id)changesBetweenConfig:(id)config
{
  configCopy = config;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  autoJoinEnabled = [(WFNetworkSettingsConfig *)self autoJoinEnabled];
  ipv4AddressManual5 = 0x277CCA000;
  if (autoJoinEnabled != [configCopy autoJoinEnabled])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configCopy, "autoJoinEnabled")}];
    [dictionary setObject:v11 forKey:@"autoJoinEnabled"];
  }

  autoLoginEnabled = [(WFNetworkSettingsConfig *)self autoLoginEnabled];
  if (autoLoginEnabled != [configCopy autoLoginEnabled])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configCopy, "autoLoginEnabled")}];
    [dictionary setObject:v13 forKey:@"autoLoginEnabled"];
  }

  isInSaveDataMode = [(WFNetworkSettingsConfig *)self isInSaveDataMode];
  if (isInSaveDataMode != [configCopy isInSaveDataMode])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configCopy, "isInSaveDataMode")}];
    [dictionary setObject:v15 forKey:@"isInSaveDataMode"];
  }

  privacyProxyEnabled = [(WFNetworkSettingsConfig *)self privacyProxyEnabled];
  if (privacyProxyEnabled != [configCopy privacyProxyEnabled])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configCopy, "privacyProxyEnabled")}];
    [dictionary setObject:v17 forKey:@"privacyProxyEnabled"];
  }

  wifiOutrankEnabled = [(WFNetworkSettingsConfig *)self wifiOutrankEnabled];
  if (wifiOutrankEnabled != [configCopy wifiOutrankEnabled])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configCopy, "wifiOutrankEnabled")}];
    [dictionary setObject:v19 forKey:@"wifiOutrankEnabled"];
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  ipv4Config = [(WFNetworkSettingsConfig *)self ipv4Config];
  if (ipv4Config != [configCopy ipv4Config])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(configCopy, "ipv4Config")}];
    [dictionary2 setObject:v22 forKey:@"ipv4Config"];
  }

  ipv4AddressManual = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
  if (ipv4AddressManual || ([configCopy ipv4AddressManual], (ipv4AddressManual5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual2 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    ipv4AddressManual3 = [configCopy ipv4AddressManual];
    ipv6AddressManual4 = [ipv4AddressManual2 isEqualToString:ipv4AddressManual3];

    if (ipv4AddressManual)
    {

      if (ipv6AddressManual4)
      {
        goto LABEL_23;
      }
    }

    else
    {

      if (ipv6AddressManual4)
      {
        goto LABEL_23;
      }
    }

    ipv4AddressManual4 = [configCopy ipv4AddressManual];
    if (ipv4AddressManual4)
    {
      ipv4AddressManual5 = [configCopy ipv4AddressManual];
      [v103 setObject:ipv4AddressManual5 forKey:@"ipv4AddressManual"];
    }

    else
    {
      [v103 setObject:&stru_288308678 forKey:@"ipv4AddressManual"];
    }
  }

LABEL_23:
  ipv4SubnetMaskManual = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
  if (ipv4SubnetMaskManual || ([configCopy ipv4SubnetMaskManual], (ipv4AddressManual5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual2 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
    ipv4AddressManual3 = [configCopy ipv4SubnetMaskManual];
    ipv6AddressManual4 = [ipv4AddressManual2 isEqualToString:ipv4AddressManual3];

    if (ipv4SubnetMaskManual)
    {

      if (ipv6AddressManual4)
      {
        goto LABEL_33;
      }
    }

    else
    {

      if (ipv6AddressManual4)
      {
        goto LABEL_33;
      }
    }

    ipv4SubnetMaskManual2 = [configCopy ipv4SubnetMaskManual];
    if (ipv4SubnetMaskManual2)
    {
      ipv4AddressManual5 = [configCopy ipv4SubnetMaskManual];
      [v103 setObject:ipv4AddressManual5 forKey:@"ipv4SubnetMaskManual"];
    }

    else
    {
      [v103 setObject:&stru_288308678 forKey:@"ipv4SubnetMaskManual"];
    }
  }

LABEL_33:
  ipv4RouterAddressManual = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
  if (ipv4RouterAddressManual || ([configCopy ipv4RouterAddressManual], (ipv4AddressManual5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual2 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
    ipv4AddressManual3 = [configCopy ipv4RouterAddressManual];
    ipv6AddressManual4 = [ipv4AddressManual2 isEqualToString:ipv4AddressManual3];

    if (ipv4RouterAddressManual)
    {

      if (ipv6AddressManual4)
      {
        goto LABEL_43;
      }
    }

    else
    {

      if (ipv6AddressManual4)
      {
        goto LABEL_43;
      }
    }

    ipv4RouterAddressManual2 = [configCopy ipv4RouterAddressManual];
    if (ipv4RouterAddressManual2)
    {
      ipv4AddressManual5 = [configCopy ipv4RouterAddressManual];
      [v103 setObject:ipv4AddressManual5 forKey:@"ipv4RouterAddressManual"];
    }

    else
    {
      [v103 setObject:&stru_288308678 forKey:@"ipv4RouterAddressManual"];
    }
  }

LABEL_43:
  dhcpClientID = [(WFNetworkSettingsConfig *)self dhcpClientID];
  if (dhcpClientID || ([configCopy dhcpClientID], (ipv4AddressManual5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual2 = [(WFNetworkSettingsConfig *)self dhcpClientID];
    ipv4AddressManual3 = [configCopy dhcpClientID];
    ipv6AddressManual4 = [ipv4AddressManual2 isEqualToString:ipv4AddressManual3];

    if (dhcpClientID)
    {

      if (ipv6AddressManual4)
      {
        goto LABEL_53;
      }
    }

    else
    {

      if (ipv6AddressManual4)
      {
        goto LABEL_53;
      }
    }

    dhcpClientID2 = [configCopy dhcpClientID];
    if (dhcpClientID2)
    {
      dhcpClientID3 = [configCopy dhcpClientID];
      [v103 setObject:dhcpClientID3 forKey:@"dhcpClientID"];
    }

    else
    {
      [v103 setObject:&stru_288308678 forKey:@"dhcpClientID"];
    }
  }

LABEL_53:
  if ([v103 count])
  {
    [dictionary setObject:v103 forKey:@"WFIPv4Changes"];
  }

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  ipv6Config = [(WFNetworkSettingsConfig *)self ipv6Config];
  if (ipv6Config != [configCopy ipv6Config])
  {
    v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(configCopy, "ipv6Config")}];
    [dictionary3 setObject:v34 forKey:@"ipv6Config"];
  }

  v104 = dictionary3;
  ipv6Addresses = [(WFNetworkSettingsConfig *)self ipv6Addresses];
  if (ipv6Addresses || ([configCopy ipv6Addresses], (ipv6AddressManual4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual3 = [(WFNetworkSettingsConfig *)self ipv6Addresses];
    ipv6Addresses2 = [configCopy ipv6Addresses];
    ipv4AddressManual2 = [ipv4AddressManual3 isEqualToArray:ipv6Addresses2];

    if (ipv6Addresses)
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_67;
      }
    }

    else
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_67;
      }
    }

    ipv6Addresses3 = [configCopy ipv6Addresses];
    if (ipv6Addresses3)
    {
      [configCopy ipv6Addresses];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    ipv6AddressManual4 = ;
    [dictionary3 setObject:ipv6AddressManual4 forKey:@"ipv6Addresses"];
  }

LABEL_67:
  ipv6PrefixLengths = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
  if (ipv6PrefixLengths || ([configCopy ipv6PrefixLengths], (ipv6AddressManual4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual3 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
    ipv6PrefixLengths2 = [configCopy ipv6PrefixLengths];
    ipv4AddressManual2 = [ipv4AddressManual3 isEqualToArray:ipv6PrefixLengths2];

    if (ipv6PrefixLengths)
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_77;
      }
    }

    else
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_77;
      }
    }

    ipv6PrefixLengths3 = [configCopy ipv6PrefixLengths];
    if (ipv6PrefixLengths3)
    {
      [configCopy ipv6PrefixLengths];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    ipv6AddressManual4 = ;
    [dictionary3 setObject:ipv6AddressManual4 forKey:@"ipv6PrefixLengths"];
  }

LABEL_77:
  ipv6AddressManual = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
  if (ipv6AddressManual || ([configCopy ipv6AddressManual], (ipv6AddressManual4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual3 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
    ipv6AddressManual2 = [configCopy ipv6AddressManual];
    ipv4AddressManual2 = [ipv4AddressManual3 isEqualToString:ipv6AddressManual2];

    if (ipv6AddressManual)
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_87;
      }
    }

    else
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_87;
      }
    }

    ipv6AddressManual3 = [configCopy ipv6AddressManual];
    if (ipv6AddressManual3)
    {
      ipv6AddressManual4 = [configCopy ipv6AddressManual];
      [dictionary3 setObject:ipv6AddressManual4 forKey:@"ipv6AddressManual"];
    }

    else
    {
      [dictionary3 setObject:&stru_288308678 forKey:@"ipv6AddressManual"];
    }
  }

LABEL_87:
  ipv6RouterAddress = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
  if (ipv6RouterAddress || ([configCopy ipv6RouterAddress], (ipv6AddressManual4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual3 = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
    ipv6RouterAddress2 = [configCopy ipv6RouterAddress];
    ipv4AddressManual2 = [ipv4AddressManual3 isEqualToString:ipv6RouterAddress2];

    if (ipv6RouterAddress)
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_97;
      }
    }

    else
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_97;
      }
    }

    ipv6RouterAddress3 = [configCopy ipv6RouterAddress];
    if (ipv6RouterAddress3)
    {
      ipv6AddressManual4 = [configCopy ipv6RouterAddress];
      [dictionary3 setObject:ipv6AddressManual4 forKey:@"ipv6RouterAddress"];
    }

    else
    {
      [dictionary3 setObject:&stru_288308678 forKey:@"ipv6RouterAddress"];
    }
  }

LABEL_97:
  ipv6RouterAddressManual = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
  if (ipv6RouterAddressManual || ([configCopy ipv6RouterAddressManual], (ipv6AddressManual4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual3 = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
    ipv6RouterAddressManual2 = [configCopy ipv6RouterAddressManual];
    ipv4AddressManual2 = [ipv4AddressManual3 isEqualToString:ipv6RouterAddressManual2];

    if (ipv6RouterAddressManual)
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_107;
      }
    }

    else
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_107;
      }
    }

    ipv6RouterAddressManual3 = [configCopy ipv6RouterAddressManual];
    if (ipv6RouterAddressManual3)
    {
      ipv6AddressManual4 = [configCopy ipv6RouterAddressManual];
      [dictionary3 setObject:ipv6AddressManual4 forKey:@"ipv6RouterAddressManual"];
    }

    else
    {
      [dictionary3 setObject:&stru_288308678 forKey:@"ipv6RouterAddressManual"];
    }
  }

LABEL_107:
  ipv6PrefixLengthManual = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
  if (ipv6PrefixLengthManual || ([configCopy ipv6PrefixLengthManual], (ipv6AddressManual4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ipv4AddressManual3 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
    ipv6PrefixLengthManual2 = [configCopy ipv6PrefixLengthManual];
    ipv4AddressManual2 = [ipv4AddressManual3 isEqualToString:ipv6PrefixLengthManual2];

    if (ipv6PrefixLengthManual)
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_117;
      }
    }

    else
    {

      if (ipv4AddressManual2)
      {
        goto LABEL_117;
      }
    }

    ipv6PrefixLengthManual3 = [configCopy ipv6PrefixLengthManual];
    if (ipv6PrefixLengthManual3)
    {
      ipv6PrefixLengthManual4 = [configCopy ipv6PrefixLengthManual];
      [dictionary3 setObject:ipv6PrefixLengthManual4 forKey:@"ipv6PrefixLengthManual"];
    }

    else
    {
      [dictionary3 setObject:&stru_288308678 forKey:@"ipv6PrefixLengthManual"];
    }
  }

LABEL_117:
  if ([dictionary3 count])
  {
    [dictionary setObject:dictionary3 forKey:@"WFIPv6Changes"];
  }

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  dnsConfig = [(WFNetworkSettingsConfig *)self dnsConfig];
  if (dnsConfig != [configCopy dnsConfig])
  {
    v56 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(configCopy, "dnsConfig")}];
    [dictionary4 setObject:v56 forKey:@"dnsConfig"];
  }

  dnsServerAddresses = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
  if (dnsServerAddresses || ([configCopy dnsServerAddresses], (ipv4AddressManual2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    dnsServerAddresses2 = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
    dnsServerAddresses3 = [configCopy dnsServerAddresses];
    ipv4AddressManual3 = [dnsServerAddresses2 isEqualToArray:dnsServerAddresses3];

    if (dnsServerAddresses)
    {

      if (ipv4AddressManual3)
      {
        goto LABEL_131;
      }
    }

    else
    {

      if (ipv4AddressManual3)
      {
        goto LABEL_131;
      }
    }

    dnsServerAddresses4 = [configCopy dnsServerAddresses];
    if (dnsServerAddresses4)
    {
      [configCopy dnsServerAddresses];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    ipv4AddressManual2 = ;
    [dictionary4 setObject:ipv4AddressManual2 forKey:@"dnsServerAddresses"];
  }

LABEL_131:
  dnsSearchDomains = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
  if (dnsSearchDomains || ([configCopy dnsSearchDomains], (ipv4AddressManual2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    dnsSearchDomains2 = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
    dnsSearchDomains3 = [configCopy dnsSearchDomains];
    ipv4AddressManual3 = [dnsSearchDomains2 isEqualToArray:dnsSearchDomains3];

    if (dnsSearchDomains)
    {

      if (ipv4AddressManual3)
      {
        goto LABEL_141;
      }
    }

    else
    {

      if (ipv4AddressManual3)
      {
        goto LABEL_141;
      }
    }

    dnsSearchDomains4 = [configCopy dnsSearchDomains];
    if (dnsSearchDomains4)
    {
      [configCopy dnsSearchDomains];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    v65 = ;
    [dictionary4 setObject:v65 forKey:@"dnsSearchDomains"];
  }

LABEL_141:
  if ([dictionary4 count])
  {
    [dictionary setObject:dictionary4 forKey:@"WFDNSChangesKey"];
  }

  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  httpProxyConfig = [(WFNetworkSettingsConfig *)self httpProxyConfig];
  if (httpProxyConfig != [configCopy httpProxyConfig])
  {
    v68 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(configCopy, "httpProxyConfig")}];
    [dictionary5 setObject:v68 forKey:@"httpProxyConfig"];
  }

  httpProxyServerAddress = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
  if (httpProxyServerAddress || ([configCopy httpProxyServerAddress], (ipv4AddressManual3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    httpProxyServerAddress2 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
    httpProxyServerAddress3 = [configCopy httpProxyServerAddress];
    v72 = [httpProxyServerAddress2 isEqualToString:httpProxyServerAddress3];

    if (httpProxyServerAddress)
    {

      if (v72)
      {
        goto LABEL_155;
      }
    }

    else
    {

      if (v72)
      {
        goto LABEL_155;
      }
    }

    httpProxyServerAddress4 = [configCopy httpProxyServerAddress];
    if (httpProxyServerAddress4)
    {
      httpProxyServerAddress5 = [configCopy httpProxyServerAddress];
      [dictionary5 setObject:httpProxyServerAddress5 forKey:@"httpProxyServerAddress"];
    }

    else
    {
      [dictionary5 setObject:&stru_288308678 forKey:@"httpProxyServerAddress"];
    }
  }

LABEL_155:
  httpProxyServerPort = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
  if (httpProxyServerPort || ([configCopy httpProxyServerPort], (ipv4AddressManual3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    httpProxyServerPort2 = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
    httpProxyServerPort3 = [configCopy httpProxyServerPort];
    v78 = [httpProxyServerPort2 isEqualToString:httpProxyServerPort3];

    if (httpProxyServerPort)
    {

      if (v78)
      {
        goto LABEL_165;
      }
    }

    else
    {

      if (v78)
      {
        goto LABEL_165;
      }
    }

    httpProxyServerPort4 = [configCopy httpProxyServerPort];
    if (httpProxyServerPort4)
    {
      httpProxyServerPort5 = [configCopy httpProxyServerPort];
      [dictionary5 setObject:httpProxyServerPort5 forKey:@"httpProxyServerPort"];
    }

    else
    {
      [dictionary5 setObject:&stru_288308678 forKey:@"httpProxyServerPort"];
    }
  }

LABEL_165:
  httpProxyAuthenticationRequired = [(WFNetworkSettingsConfig *)self httpProxyAuthenticationRequired];
  if (httpProxyAuthenticationRequired != [configCopy httpProxyAuthenticationRequired])
  {
    v82 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configCopy, "httpProxyAuthenticationRequired")}];
    [dictionary5 setObject:v82 forKey:@"httpProxyAuthenticationRequired"];
  }

  httpProxyUsername = [(WFNetworkSettingsConfig *)self httpProxyUsername];
  if (httpProxyUsername || ([configCopy httpProxyUsername], (ipv4AddressManual3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    httpProxyUsername2 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
    httpProxyUsername3 = [configCopy httpProxyUsername];
    v86 = [httpProxyUsername2 isEqualToString:httpProxyUsername3];

    if (httpProxyUsername)
    {

      if (v86)
      {
        goto LABEL_177;
      }
    }

    else
    {

      if (v86)
      {
        goto LABEL_177;
      }
    }

    httpProxyUsername4 = [configCopy httpProxyUsername];
    if (httpProxyUsername4)
    {
      httpProxyUsername5 = [configCopy httpProxyUsername];
      [dictionary5 setObject:httpProxyUsername5 forKey:@"httpProxyUsername"];
    }

    else
    {
      [dictionary5 setObject:&stru_288308678 forKey:@"httpProxyUsername"];
    }
  }

LABEL_177:
  httpProxyPassword = [(WFNetworkSettingsConfig *)self httpProxyPassword];
  if (httpProxyPassword || ([configCopy httpProxyPassword], (ipv4AddressManual3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    httpProxyPassword2 = [(WFNetworkSettingsConfig *)self httpProxyPassword];
    httpProxyPassword3 = [configCopy httpProxyPassword];
    v92 = [httpProxyPassword2 isEqualToString:httpProxyPassword3];

    if (httpProxyPassword)
    {

      if (v92)
      {
        goto LABEL_187;
      }
    }

    else
    {

      if (v92)
      {
        goto LABEL_187;
      }
    }

    httpProxyPassword4 = [configCopy httpProxyPassword];
    if (httpProxyPassword4)
    {
      httpProxyPassword5 = [configCopy httpProxyPassword];
      [dictionary5 setObject:httpProxyPassword5 forKey:@"httpProxyPassword"];
    }

    else
    {
      [dictionary5 setObject:&stru_288308678 forKey:@"httpProxyPassword"];
    }
  }

LABEL_187:
  httpProxyConfigPAC = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
  if (httpProxyConfigPAC || ([configCopy httpProxyConfigPAC], (ipv4AddressManual3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    httpProxyConfigPAC2 = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
    httpProxyConfigPAC3 = [configCopy httpProxyConfigPAC];
    v98 = [httpProxyConfigPAC2 isEqualToString:httpProxyConfigPAC3];

    if (httpProxyConfigPAC)
    {

      if (v98)
      {
        goto LABEL_197;
      }
    }

    else
    {

      if (v98)
      {
        goto LABEL_197;
      }
    }

    httpProxyConfigPAC4 = [configCopy httpProxyConfigPAC];
    if (httpProxyConfigPAC4)
    {
      httpProxyConfigPAC5 = [configCopy httpProxyConfigPAC];
      [dictionary5 setObject:httpProxyConfigPAC5 forKey:@"httpProxyConfigPAC"];
    }

    else
    {
      [dictionary5 setObject:&stru_288308678 forKey:@"httpProxyConfigPAC"];
    }
  }

LABEL_197:
  if ([dictionary5 count])
  {
    [dictionary setObject:dictionary5 forKey:@"WFProxyChangesKey"];
  }

  if (![dictionary count])
  {

    dictionary = 0;
  }

  v101 = dictionary;

  return dictionary;
}

@end