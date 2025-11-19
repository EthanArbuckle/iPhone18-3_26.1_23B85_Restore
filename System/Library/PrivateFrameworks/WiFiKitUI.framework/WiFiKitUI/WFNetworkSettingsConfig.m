@interface WFNetworkSettingsConfig
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNetworkSettingsConfig:(id)a3;
- (BOOL)validIPv4Configuration;
- (BOOL)validIPv6Configuration;
- (BOOL)validProxyConfiguration;
- (WFNetworkSettingsConfig)init;
- (id)changesBetweenConfig:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(WFNetworkSettingsConfig);
  if (v5)
  {
    v6 = [(WFNetworkSettingsConfig *)self healthRecommendations];
    [(WFNetworkSettingsConfig *)v5 setHealthRecommendations:v6];

    v7 = [(WFNetworkSettingsConfig *)self ssid];
    [(WFNetworkSettingsConfig *)v5 setSsid:v7];

    v8 = [(WFNetworkSettingsConfig *)self displayFriendlyName];
    v9 = [v8 copyWithZone:a3];
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
    v10 = [(WFNetworkSettingsConfig *)self networkQualityDate];
    v11 = [v10 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setNetworkQualityDate:v11];

    [(WFNetworkSettingsConfig *)v5 setIpv4Config:[(WFNetworkSettingsConfig *)self ipv4Config]];
    v12 = [(WFNetworkSettingsConfig *)self ipv4Address];
    v13 = [v12 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv4Address:v13];

    v14 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    v15 = [v14 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv4AddressManual:v15];

    v16 = [(WFNetworkSettingsConfig *)self ipv4SubnetMask];
    v17 = [v16 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv4SubnetMask:v17];

    v18 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
    v19 = [v18 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv4SubnetMaskManual:v19];

    v20 = [(WFNetworkSettingsConfig *)self ipv4RouterAddress];
    v21 = [v20 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv4RouterAddress:v21];

    v22 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
    v23 = [v22 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv4RouterAddressManual:v23];

    v24 = [(WFNetworkSettingsConfig *)self dhcpClientID];
    v25 = [v24 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setDhcpClientID:v25];

    v26 = [(WFNetworkSettingsConfig *)self dhcpLeaseExpirationDate];
    v27 = [v26 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setDhcpLeaseExpirationDate:v27];

    [(WFNetworkSettingsConfig *)v5 setIpv6Config:[(WFNetworkSettingsConfig *)self ipv6Config]];
    v28 = [(WFNetworkSettingsConfig *)self ipv6Addresses];
    v29 = [v28 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv6Addresses:v29];

    v30 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
    v31 = [v30 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv6PrefixLengths:v31];

    v32 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
    v33 = [v32 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv6AddressManual:v33];

    v34 = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
    v35 = [v34 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv6RouterAddress:v35];

    v36 = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
    v37 = [v36 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv6RouterAddressManual:v37];

    v38 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
    v39 = [v38 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setIpv6PrefixLengthManual:v39];

    [(WFNetworkSettingsConfig *)v5 setDnsConfig:[(WFNetworkSettingsConfig *)self dnsConfig]];
    v40 = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
    v41 = [v40 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setDnsServerAddresses:v41];

    v42 = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
    v43 = [v42 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setDnsSearchDomains:v43];

    [(WFNetworkSettingsConfig *)v5 setHttpProxyConfigurable:[(WFNetworkSettingsConfig *)self httpProxyConfigurable]];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyConfig:[(WFNetworkSettingsConfig *)self httpProxyConfig]];
    v44 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
    v45 = [v44 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyServerAddress:v45];

    v46 = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
    v47 = [v46 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyServerPort:v47];

    [(WFNetworkSettingsConfig *)v5 setHttpProxyAuthenticationRequired:[(WFNetworkSettingsConfig *)self httpProxyAuthenticationRequired]];
    v48 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
    v49 = [v48 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyUsername:v49];

    v50 = [(WFNetworkSettingsConfig *)self httpProxyPassword];
    v51 = [v50 copyWithZone:a3];
    [(WFNetworkSettingsConfig *)v5 setHttpProxyPassword:v51];

    v52 = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
    v53 = [v52 copyWithZone:a3];
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

  v3 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
  v6 = [v5 isEmpty];

  if (v6)
  {
    goto LABEL_6;
  }

  v7 = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
  if (!v7 || (v8 = v7, -[WFNetworkSettingsConfig httpProxyServerPort](self, "httpProxyServerPort"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEmpty], v9, v8, (v10 & 1) != 0))
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

  v12 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
  if (v12)
  {
    v13 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
    v11 = [v13 isEmpty] ^ 1;
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
    LOBYTE(v3) = 1;
    return v3;
  }

  v3 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
  if (v3)
  {
    v4 = v3;
    v5 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    if ([v5 isEmpty])
    {
LABEL_4:

LABEL_13:
      LOBYTE(v3) = 0;
      return v3;
    }

    v6 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    v7 = [v6 isValidIPv4Address];

    if (!v7)
    {
      goto LABEL_13;
    }

    v3 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
    if (v3)
    {
      v4 = v3;
      v5 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
      if ([v5 isEmpty])
      {
        goto LABEL_4;
      }

      v8 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
      v9 = [v8 isValidSubnetMask];

      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
      if (v10)
      {
        v4 = v10;
        v5 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
        if ([v5 isEmpty])
        {
          goto LABEL_4;
        }

        v11 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
        v12 = [v11 isValidIPv4Address];

        if (!v12)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_12;
    }
  }

  return v3;
}

- (BOOL)validIPv6Configuration
{
  if ([(WFNetworkSettingsConfig *)self ipv6Config]!= 1)
  {
    goto LABEL_5;
  }

  v3 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
  if (v3)
  {
    v4 = v3;
    v5 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
    v6 = [v5 isEmpty];

    if (v6)
    {
      LOBYTE(v3) = 0;
      return v3;
    }

LABEL_5:
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFNetworkSettingsConfig *)self isEqualToNetworkSettingsConfig:v4];

  return v5;
}

- (BOOL)isEqualToNetworkSettingsConfig:(id)a3
{
  v4 = a3;
  v5 = [(WFNetworkSettingsConfig *)self ssid];
  v6 = [v4 ssid];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = [(WFNetworkSettingsConfig *)self displayFriendlyName];
  v9 = [v4 displayFriendlyName];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = [(WFNetworkSettingsConfig *)self current];
  if (v11 != [v4 current])
  {
    goto LABEL_20;
  }

  v12 = [(WFNetworkSettingsConfig *)self forgetable];
  if (v12 != [v4 forgetable])
  {
    goto LABEL_20;
  }

  v13 = [(WFNetworkSettingsConfig *)self joinable];
  if (v13 != [v4 joinable])
  {
    goto LABEL_20;
  }

  v14 = [(WFNetworkSettingsConfig *)self manageable];
  if (v14 != [v4 manageable])
  {
    goto LABEL_20;
  }

  v15 = [(WFNetworkSettingsConfig *)self cloudSyncable];
  if (v15 != [v4 cloudSyncable])
  {
    goto LABEL_20;
  }

  v16 = [(WFNetworkSettingsConfig *)self canRenewLease];
  if (v16 != [v4 canRenewLease])
  {
    goto LABEL_20;
  }

  v17 = [(WFNetworkSettingsConfig *)self autoJoinConfigurable];
  if (v17 != [v4 autoJoinConfigurable])
  {
    goto LABEL_20;
  }

  v18 = [(WFNetworkSettingsConfig *)self autoJoinEnabled];
  if (v18 != [v4 autoJoinEnabled])
  {
    goto LABEL_20;
  }

  v19 = [(WFNetworkSettingsConfig *)self autoLoginConfigurable];
  if (v19 != [v4 autoLoginConfigurable])
  {
    goto LABEL_20;
  }

  v20 = [(WFNetworkSettingsConfig *)self autoLoginEnabled];
  if (v20 != [v4 autoLoginEnabled])
  {
    goto LABEL_20;
  }

  v21 = [(WFNetworkSettingsConfig *)self saveDataModeConfigurable];
  if (v21 != [v4 saveDataModeConfigurable])
  {
    goto LABEL_20;
  }

  v22 = [(WFNetworkSettingsConfig *)self isInSaveDataMode];
  if (v22 != [v4 isInSaveDataMode])
  {
    goto LABEL_20;
  }

  v23 = [(WFNetworkSettingsConfig *)self privacyProxyTierStatus];
  if (v23 != [v4 privacyProxyTierStatus])
  {
    goto LABEL_20;
  }

  v24 = [(WFNetworkSettingsConfig *)self privacyProxyEnabled];
  if (v24 != [v4 privacyProxyEnabled])
  {
    goto LABEL_20;
  }

  v25 = [(WFNetworkSettingsConfig *)self wifiOutrankEnabled];
  if (v25 != [v4 wifiOutrankEnabled])
  {
    goto LABEL_20;
  }

  v26 = [(WFNetworkSettingsConfig *)self networkQualityVisible];
  if (v26 != [v4 networkQualityVisible])
  {
    goto LABEL_20;
  }

  [(WFNetworkSettingsConfig *)self networkQualityResponsiveness];
  v28 = v27;
  [v4 networkQualityResponsiveness];
  if (v28 != v29)
  {
    goto LABEL_20;
  }

  v32 = [(WFNetworkSettingsConfig *)self networkQualityDate];
  if (v32 || ([v4 networkQualityDate], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v33 = [(WFNetworkSettingsConfig *)self networkQualityDate];
    v34 = [v4 networkQualityDate];
    v35 = [v33 isEqual:v34];

    if (v32)
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

  v36 = [(WFNetworkSettingsConfig *)self ipv4Config];
  if (v36 != [v4 ipv4Config])
  {
    goto LABEL_20;
  }

  v37 = [(WFNetworkSettingsConfig *)self ipv4Address];
  if (v37 || ([v4 ipv4Address], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v38 = [(WFNetworkSettingsConfig *)self ipv4Address];
    v39 = [v4 ipv4Address];
    v40 = [v38 isEqualToString:v39];

    if (v37)
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

  v41 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
  if (v41 || ([v4 ipv4AddressManual], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v42 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    v43 = [v4 ipv4AddressManual];
    v44 = [v42 isEqualToString:v43];

    if (v41)
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

  v45 = [(WFNetworkSettingsConfig *)self ipv4SubnetMask];
  if (v45 || ([v4 ipv4SubnetMask], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v46 = [(WFNetworkSettingsConfig *)self ipv4SubnetMask];
    v47 = [v4 ipv4SubnetMask];
    v48 = [v46 isEqualToString:v47];

    if (v45)
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

  v49 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
  if (v49 || ([v4 ipv4SubnetMaskManual], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v50 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
    v51 = [v4 ipv4SubnetMaskManual];
    v52 = [v50 isEqualToString:v51];

    if (v49)
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

  v53 = [(WFNetworkSettingsConfig *)self ipv4RouterAddress];
  if (v53 || ([v4 ipv4RouterAddress], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v54 = [(WFNetworkSettingsConfig *)self ipv4RouterAddress];
    v55 = [v4 ipv4RouterAddress];
    v56 = [v54 isEqualToString:v55];

    if (v53)
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

  v57 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
  if (v57 || ([v4 ipv4RouterAddressManual], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v58 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
    v59 = [v4 ipv4RouterAddressManual];
    v60 = [v58 isEqualToString:v59];

    if (v57)
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

  v61 = [(WFNetworkSettingsConfig *)self dhcpClientID];
  if (v61 || ([v4 dhcpClientID], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v62 = [(WFNetworkSettingsConfig *)self dhcpClientID];
    v63 = [v4 dhcpClientID];
    v64 = [v62 isEqualToString:v63];

    if (v61)
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

  v65 = [(WFNetworkSettingsConfig *)self dhcpLeaseExpirationDate];
  if (v65 || ([v4 dhcpLeaseExpirationDate], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v66 = [(WFNetworkSettingsConfig *)self dhcpLeaseExpirationDate];
    v67 = [v4 dhcpLeaseExpirationDate];
    v68 = [v66 isEqual:v67];

    if (v65)
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

  v69 = [(WFNetworkSettingsConfig *)self ipv6Config];
  if (v69 != [v4 ipv6Config])
  {
    goto LABEL_20;
  }

  v70 = [(WFNetworkSettingsConfig *)self ipv6Addresses];
  if (v70 || ([v4 ipv6Addresses], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v71 = [(WFNetworkSettingsConfig *)self ipv6Addresses];
    v72 = [v4 ipv6Addresses];
    v73 = [v71 isEqualToArray:v72];

    if (v70)
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

  v74 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
  if (v74 || ([v4 ipv6PrefixLengths], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v75 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
    v76 = [v4 ipv6PrefixLengths];
    v77 = [v75 isEqualToArray:v76];

    if (v74)
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

  v78 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
  if (v78 || ([v4 ipv6AddressManual], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v79 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
    v80 = [v4 ipv6AddressManual];
    v81 = [v79 isEqualToString:v80];

    if (v78)
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

  v82 = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
  if (v82 || ([v4 ipv6RouterAddress], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v83 = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
    v84 = [v4 ipv6RouterAddress];
    v85 = [v83 isEqualToString:v84];

    if (v82)
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

  v86 = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
  if (v86 || ([v4 ipv6RouterAddressManual], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v87 = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
    v88 = [v4 ipv6RouterAddressManual];
    v89 = [v87 isEqualToString:v88];

    if (v86)
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

  v90 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
  if (v90 || ([v4 ipv6PrefixLengthManual], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v91 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
    v92 = [v4 ipv6PrefixLengthManual];
    v93 = [v91 isEqualToString:v92];

    if (v90)
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

  v94 = [(WFNetworkSettingsConfig *)self dnsConfig];
  if (v94 != [v4 dnsConfig])
  {
    goto LABEL_20;
  }

  v95 = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
  if (v95 || ([v4 dnsServerAddresses], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v96 = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
    v97 = [v4 dnsServerAddresses];
    v98 = [v96 isEqualToArray:v97];

    if (v95)
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

  v99 = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
  if (v99 || ([v4 dnsSearchDomains], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v100 = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
    v101 = [v4 dnsSearchDomains];
    v102 = [v100 isEqualToArray:v101];

    if (v99)
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

  v103 = [(WFNetworkSettingsConfig *)self httpProxyConfigurable];
  if (v103 != [v4 httpProxyConfigurable])
  {
    goto LABEL_20;
  }

  v104 = [(WFNetworkSettingsConfig *)self httpProxyConfig];
  if (v104 != [v4 httpProxyConfig])
  {
    goto LABEL_20;
  }

  v105 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
  if (v105 || ([v4 httpProxyServerAddress], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v106 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
    v107 = [v4 httpProxyServerAddress];
    v108 = [v106 isEqualToString:v107];

    if (v105)
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

  v109 = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
  if (v109 || ([v4 httpProxyServerPort], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v110 = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
    v111 = [v4 httpProxyServerPort];
    v112 = [v110 isEqualToString:v111];

    if (v109)
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

  v113 = [(WFNetworkSettingsConfig *)self httpProxyAuthenticationRequired];
  if (v113 != [v4 httpProxyAuthenticationRequired])
  {
    goto LABEL_20;
  }

  v114 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
  if (v114 || ([v4 httpProxyUsername], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v115 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
    v116 = [v4 httpProxyUsername];
    v117 = [v115 isEqualToString:v116];

    if (v114)
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

  v118 = [(WFNetworkSettingsConfig *)self httpProxyPassword];
  if (!v118)
  {
    v9 = [v4 httpProxyPassword];
    if (!v9)
    {
LABEL_154:
      v122 = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
      if (v122 || ([v4 httpProxyConfigPAC], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v123 = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
        v124 = [v4 httpProxyConfigPAC];
        v30 = [v123 isEqualToString:v124];

        if (v122)
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

  v119 = [(WFNetworkSettingsConfig *)self httpProxyPassword];
  v120 = [v4 httpProxyPassword];
  v121 = [v119 isEqualToString:v120];

  if (!v118)
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

- (id)changesBetweenConfig:(id)a3
{
  v7 = a3;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [(WFNetworkSettingsConfig *)self autoJoinEnabled];
  v10 = 0x277CCA000;
  if (v9 != [v7 autoJoinEnabled])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "autoJoinEnabled")}];
    [v8 setObject:v11 forKey:@"autoJoinEnabled"];
  }

  v12 = [(WFNetworkSettingsConfig *)self autoLoginEnabled];
  if (v12 != [v7 autoLoginEnabled])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "autoLoginEnabled")}];
    [v8 setObject:v13 forKey:@"autoLoginEnabled"];
  }

  v14 = [(WFNetworkSettingsConfig *)self isInSaveDataMode];
  if (v14 != [v7 isInSaveDataMode])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "isInSaveDataMode")}];
    [v8 setObject:v15 forKey:@"isInSaveDataMode"];
  }

  v16 = [(WFNetworkSettingsConfig *)self privacyProxyEnabled];
  if (v16 != [v7 privacyProxyEnabled])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "privacyProxyEnabled")}];
    [v8 setObject:v17 forKey:@"privacyProxyEnabled"];
  }

  v18 = [(WFNetworkSettingsConfig *)self wifiOutrankEnabled];
  if (v18 != [v7 wifiOutrankEnabled])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "wifiOutrankEnabled")}];
    [v8 setObject:v19 forKey:@"wifiOutrankEnabled"];
  }

  v20 = [MEMORY[0x277CBEB38] dictionary];
  v21 = [(WFNetworkSettingsConfig *)self ipv4Config];
  if (v21 != [v7 ipv4Config])
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "ipv4Config")}];
    [v20 setObject:v22 forKey:@"ipv4Config"];
  }

  v23 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
  if (v23 || ([v7 ipv4AddressManual], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(WFNetworkSettingsConfig *)self ipv4AddressManual];
    v5 = [v7 ipv4AddressManual];
    v3 = [v4 isEqualToString:v5];

    if (v23)
    {

      if (v3)
      {
        goto LABEL_23;
      }
    }

    else
    {

      if (v3)
      {
        goto LABEL_23;
      }
    }

    v24 = [v7 ipv4AddressManual];
    if (v24)
    {
      v10 = [v7 ipv4AddressManual];
      [v103 setObject:v10 forKey:@"ipv4AddressManual"];
    }

    else
    {
      [v103 setObject:&stru_288308678 forKey:@"ipv4AddressManual"];
    }
  }

LABEL_23:
  v25 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
  if (v25 || ([v7 ipv4SubnetMaskManual], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(WFNetworkSettingsConfig *)self ipv4SubnetMaskManual];
    v5 = [v7 ipv4SubnetMaskManual];
    v3 = [v4 isEqualToString:v5];

    if (v25)
    {

      if (v3)
      {
        goto LABEL_33;
      }
    }

    else
    {

      if (v3)
      {
        goto LABEL_33;
      }
    }

    v26 = [v7 ipv4SubnetMaskManual];
    if (v26)
    {
      v10 = [v7 ipv4SubnetMaskManual];
      [v103 setObject:v10 forKey:@"ipv4SubnetMaskManual"];
    }

    else
    {
      [v103 setObject:&stru_288308678 forKey:@"ipv4SubnetMaskManual"];
    }
  }

LABEL_33:
  v27 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
  if (v27 || ([v7 ipv4RouterAddressManual], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(WFNetworkSettingsConfig *)self ipv4RouterAddressManual];
    v5 = [v7 ipv4RouterAddressManual];
    v3 = [v4 isEqualToString:v5];

    if (v27)
    {

      if (v3)
      {
        goto LABEL_43;
      }
    }

    else
    {

      if (v3)
      {
        goto LABEL_43;
      }
    }

    v28 = [v7 ipv4RouterAddressManual];
    if (v28)
    {
      v10 = [v7 ipv4RouterAddressManual];
      [v103 setObject:v10 forKey:@"ipv4RouterAddressManual"];
    }

    else
    {
      [v103 setObject:&stru_288308678 forKey:@"ipv4RouterAddressManual"];
    }
  }

LABEL_43:
  v29 = [(WFNetworkSettingsConfig *)self dhcpClientID];
  if (v29 || ([v7 dhcpClientID], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(WFNetworkSettingsConfig *)self dhcpClientID];
    v5 = [v7 dhcpClientID];
    v3 = [v4 isEqualToString:v5];

    if (v29)
    {

      if (v3)
      {
        goto LABEL_53;
      }
    }

    else
    {

      if (v3)
      {
        goto LABEL_53;
      }
    }

    v30 = [v7 dhcpClientID];
    if (v30)
    {
      v31 = [v7 dhcpClientID];
      [v103 setObject:v31 forKey:@"dhcpClientID"];
    }

    else
    {
      [v103 setObject:&stru_288308678 forKey:@"dhcpClientID"];
    }
  }

LABEL_53:
  if ([v103 count])
  {
    [v8 setObject:v103 forKey:@"WFIPv4Changes"];
  }

  v32 = [MEMORY[0x277CBEB38] dictionary];
  v33 = [(WFNetworkSettingsConfig *)self ipv6Config];
  if (v33 != [v7 ipv6Config])
  {
    v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "ipv6Config")}];
    [v32 setObject:v34 forKey:@"ipv6Config"];
  }

  v104 = v32;
  v35 = [(WFNetworkSettingsConfig *)self ipv6Addresses];
  if (v35 || ([v7 ipv6Addresses], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(WFNetworkSettingsConfig *)self ipv6Addresses];
    v36 = [v7 ipv6Addresses];
    v4 = [v5 isEqualToArray:v36];

    if (v35)
    {

      if (v4)
      {
        goto LABEL_67;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_67;
      }
    }

    v37 = [v7 ipv6Addresses];
    if (v37)
    {
      [v7 ipv6Addresses];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    v3 = ;
    [v32 setObject:v3 forKey:@"ipv6Addresses"];
  }

LABEL_67:
  v38 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
  if (v38 || ([v7 ipv6PrefixLengths], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengths];
    v39 = [v7 ipv6PrefixLengths];
    v4 = [v5 isEqualToArray:v39];

    if (v38)
    {

      if (v4)
      {
        goto LABEL_77;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_77;
      }
    }

    v40 = [v7 ipv6PrefixLengths];
    if (v40)
    {
      [v7 ipv6PrefixLengths];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    v3 = ;
    [v32 setObject:v3 forKey:@"ipv6PrefixLengths"];
  }

LABEL_77:
  v41 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
  if (v41 || ([v7 ipv6AddressManual], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(WFNetworkSettingsConfig *)self ipv6AddressManual];
    v42 = [v7 ipv6AddressManual];
    v4 = [v5 isEqualToString:v42];

    if (v41)
    {

      if (v4)
      {
        goto LABEL_87;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_87;
      }
    }

    v43 = [v7 ipv6AddressManual];
    if (v43)
    {
      v3 = [v7 ipv6AddressManual];
      [v32 setObject:v3 forKey:@"ipv6AddressManual"];
    }

    else
    {
      [v32 setObject:&stru_288308678 forKey:@"ipv6AddressManual"];
    }
  }

LABEL_87:
  v44 = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
  if (v44 || ([v7 ipv6RouterAddress], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(WFNetworkSettingsConfig *)self ipv6RouterAddress];
    v45 = [v7 ipv6RouterAddress];
    v4 = [v5 isEqualToString:v45];

    if (v44)
    {

      if (v4)
      {
        goto LABEL_97;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_97;
      }
    }

    v46 = [v7 ipv6RouterAddress];
    if (v46)
    {
      v3 = [v7 ipv6RouterAddress];
      [v32 setObject:v3 forKey:@"ipv6RouterAddress"];
    }

    else
    {
      [v32 setObject:&stru_288308678 forKey:@"ipv6RouterAddress"];
    }
  }

LABEL_97:
  v47 = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
  if (v47 || ([v7 ipv6RouterAddressManual], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(WFNetworkSettingsConfig *)self ipv6RouterAddressManual];
    v48 = [v7 ipv6RouterAddressManual];
    v4 = [v5 isEqualToString:v48];

    if (v47)
    {

      if (v4)
      {
        goto LABEL_107;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_107;
      }
    }

    v49 = [v7 ipv6RouterAddressManual];
    if (v49)
    {
      v3 = [v7 ipv6RouterAddressManual];
      [v32 setObject:v3 forKey:@"ipv6RouterAddressManual"];
    }

    else
    {
      [v32 setObject:&stru_288308678 forKey:@"ipv6RouterAddressManual"];
    }
  }

LABEL_107:
  v50 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
  if (v50 || ([v7 ipv6PrefixLengthManual], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(WFNetworkSettingsConfig *)self ipv6PrefixLengthManual];
    v51 = [v7 ipv6PrefixLengthManual];
    v4 = [v5 isEqualToString:v51];

    if (v50)
    {

      if (v4)
      {
        goto LABEL_117;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_117;
      }
    }

    v52 = [v7 ipv6PrefixLengthManual];
    if (v52)
    {
      v53 = [v7 ipv6PrefixLengthManual];
      [v32 setObject:v53 forKey:@"ipv6PrefixLengthManual"];
    }

    else
    {
      [v32 setObject:&stru_288308678 forKey:@"ipv6PrefixLengthManual"];
    }
  }

LABEL_117:
  if ([v32 count])
  {
    [v8 setObject:v32 forKey:@"WFIPv6Changes"];
  }

  v54 = [MEMORY[0x277CBEB38] dictionary];
  v55 = [(WFNetworkSettingsConfig *)self dnsConfig];
  if (v55 != [v7 dnsConfig])
  {
    v56 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "dnsConfig")}];
    [v54 setObject:v56 forKey:@"dnsConfig"];
  }

  v57 = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
  if (v57 || ([v7 dnsServerAddresses], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v58 = [(WFNetworkSettingsConfig *)self dnsServerAddresses];
    v59 = [v7 dnsServerAddresses];
    v5 = [v58 isEqualToArray:v59];

    if (v57)
    {

      if (v5)
      {
        goto LABEL_131;
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_131;
      }
    }

    v60 = [v7 dnsServerAddresses];
    if (v60)
    {
      [v7 dnsServerAddresses];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    v4 = ;
    [v54 setObject:v4 forKey:@"dnsServerAddresses"];
  }

LABEL_131:
  v61 = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
  if (v61 || ([v7 dnsSearchDomains], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v62 = [(WFNetworkSettingsConfig *)self dnsSearchDomains];
    v63 = [v7 dnsSearchDomains];
    v5 = [v62 isEqualToArray:v63];

    if (v61)
    {

      if (v5)
      {
        goto LABEL_141;
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_141;
      }
    }

    v64 = [v7 dnsSearchDomains];
    if (v64)
    {
      [v7 dnsSearchDomains];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    v65 = ;
    [v54 setObject:v65 forKey:@"dnsSearchDomains"];
  }

LABEL_141:
  if ([v54 count])
  {
    [v8 setObject:v54 forKey:@"WFDNSChangesKey"];
  }

  v66 = [MEMORY[0x277CBEB38] dictionary];
  v67 = [(WFNetworkSettingsConfig *)self httpProxyConfig];
  if (v67 != [v7 httpProxyConfig])
  {
    v68 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "httpProxyConfig")}];
    [v66 setObject:v68 forKey:@"httpProxyConfig"];
  }

  v69 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
  if (v69 || ([v7 httpProxyServerAddress], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v70 = [(WFNetworkSettingsConfig *)self httpProxyServerAddress];
    v71 = [v7 httpProxyServerAddress];
    v72 = [v70 isEqualToString:v71];

    if (v69)
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

    v73 = [v7 httpProxyServerAddress];
    if (v73)
    {
      v74 = [v7 httpProxyServerAddress];
      [v66 setObject:v74 forKey:@"httpProxyServerAddress"];
    }

    else
    {
      [v66 setObject:&stru_288308678 forKey:@"httpProxyServerAddress"];
    }
  }

LABEL_155:
  v75 = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
  if (v75 || ([v7 httpProxyServerPort], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v76 = [(WFNetworkSettingsConfig *)self httpProxyServerPort];
    v77 = [v7 httpProxyServerPort];
    v78 = [v76 isEqualToString:v77];

    if (v75)
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

    v79 = [v7 httpProxyServerPort];
    if (v79)
    {
      v80 = [v7 httpProxyServerPort];
      [v66 setObject:v80 forKey:@"httpProxyServerPort"];
    }

    else
    {
      [v66 setObject:&stru_288308678 forKey:@"httpProxyServerPort"];
    }
  }

LABEL_165:
  v81 = [(WFNetworkSettingsConfig *)self httpProxyAuthenticationRequired];
  if (v81 != [v7 httpProxyAuthenticationRequired])
  {
    v82 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "httpProxyAuthenticationRequired")}];
    [v66 setObject:v82 forKey:@"httpProxyAuthenticationRequired"];
  }

  v83 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
  if (v83 || ([v7 httpProxyUsername], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v84 = [(WFNetworkSettingsConfig *)self httpProxyUsername];
    v85 = [v7 httpProxyUsername];
    v86 = [v84 isEqualToString:v85];

    if (v83)
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

    v87 = [v7 httpProxyUsername];
    if (v87)
    {
      v88 = [v7 httpProxyUsername];
      [v66 setObject:v88 forKey:@"httpProxyUsername"];
    }

    else
    {
      [v66 setObject:&stru_288308678 forKey:@"httpProxyUsername"];
    }
  }

LABEL_177:
  v89 = [(WFNetworkSettingsConfig *)self httpProxyPassword];
  if (v89 || ([v7 httpProxyPassword], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v90 = [(WFNetworkSettingsConfig *)self httpProxyPassword];
    v91 = [v7 httpProxyPassword];
    v92 = [v90 isEqualToString:v91];

    if (v89)
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

    v93 = [v7 httpProxyPassword];
    if (v93)
    {
      v94 = [v7 httpProxyPassword];
      [v66 setObject:v94 forKey:@"httpProxyPassword"];
    }

    else
    {
      [v66 setObject:&stru_288308678 forKey:@"httpProxyPassword"];
    }
  }

LABEL_187:
  v95 = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
  if (v95 || ([v7 httpProxyConfigPAC], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v96 = [(WFNetworkSettingsConfig *)self httpProxyConfigPAC];
    v97 = [v7 httpProxyConfigPAC];
    v98 = [v96 isEqualToString:v97];

    if (v95)
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

    v99 = [v7 httpProxyConfigPAC];
    if (v99)
    {
      v100 = [v7 httpProxyConfigPAC];
      [v66 setObject:v100 forKey:@"httpProxyConfigPAC"];
    }

    else
    {
      [v66 setObject:&stru_288308678 forKey:@"httpProxyConfigPAC"];
    }
  }

LABEL_197:
  if ([v66 count])
  {
    [v8 setObject:v66 forKey:@"WFProxyChangesKey"];
  }

  if (![v8 count])
  {

    v8 = 0;
  }

  v101 = v8;

  return v8;
}

@end