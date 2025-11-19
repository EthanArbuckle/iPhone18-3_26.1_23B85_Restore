@interface CWFNetworkProfile(WiFiKit)
- (BOOL)isManaged;
- (double)networkQualityResponsiveness;
- (id)accessoryIdentifier;
- (id)displayFriendlyName;
- (id)networkQualityDate;
- (id)randomMACAddress;
- (uint64_t)autoJoinConfigurable;
- (uint64_t)autoLoginConfigurable;
- (uint64_t)carPlayNetworkType;
- (uint64_t)hasDisabledUntilDate;
- (uint64_t)hasJoined6GHz;
- (uint64_t)shouldShowInKnownNetworkList;
- (uint64_t)shouldShowInMyNetworkList;
- (uint64_t)wifiModeConfigurable;
@end

@implementation CWFNetworkProfile(WiFiKit)

- (uint64_t)wifiModeConfigurable
{
  v2 = [a1 disable6EMode];
  if (_os_feature_enabled_impl())
  {
    v3 = _os_feature_enabled_impl() ^ 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [a1 isStandalone6G] | v3;
  if ((v4 & 1) != 0 || v2 == 2)
  {
    return (v4 ^ 1) & 1;
  }

  return [a1 hasJoined6GHz];
}

- (uint64_t)hasJoined6GHz
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 BSSList];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [*(*(&v9 + 1) + 8 * i) channel];
        v6 = [v5 band];

        if (v6 == 3)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (uint64_t)shouldShowInKnownNetworkList
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v2)
  {
    v4 = v2;
    if (os_log_type_enabled(v4, v3))
    {
      v5 = [a1 networkName];
      v8 = 136316162;
      v9 = "[CWFNetworkProfile(WiFiKit) shouldShowInKnownNetworkList]";
      v10 = 2112;
      v11 = v5;
      v12 = 1024;
      v13 = [a1 shouldShowInMyNetworkList];
      v14 = 1024;
      v15 = [a1 isPersonalHotspot];
      v16 = 1024;
      v17 = [a1 isAppBased];
      _os_log_impl(&dword_273ECD000, v4, v3, "%s: networkName='%@' shouldShowInMyNetworkList=%d isPersonalHotspot=%d isAppBased=%d", &v8, 0x28u);
    }
  }

  if ([a1 shouldShowInMyNetworkList] && !objc_msgSend(a1, "isPersonalHotspot"))
  {
    result = 1;
  }

  else
  {
    result = [a1 isAppBased];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)shouldShowInMyNetworkList
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [a1 lastJoinedAt];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v3 setDay:14];
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [v4 dateByAddingComponents:v3 toDate:v2 options:0];

    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v6 compare:v5];

    v8 = [a1 isOpen];
    if (v7 == 1)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v10)
    {
      v12 = v10;
      if (os_log_type_enabled(v12, v11))
      {
        v13 = v7 == 1;
        v14 = [a1 networkName];
        v18 = 138412802;
        v19 = v14;
        v20 = 1024;
        v21 = v13;
        v22 = 1024;
        v23 = [a1 isOpen];
        _os_log_impl(&dword_273ECD000, v12, v11, "%@ did pass last joined checkpoint: %d, is open: %d", &v18, 0x18u);
      }
    }

    v15 = v9 ^ 1u;
  }

  else
  {
    v15 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (uint64_t)carPlayNetworkType
{
  if (![a1 isCarPlay])
  {
    return 0;
  }

  v2 = [a1 lastJoinedByUserAt];
  if (v2)
  {

    return 2;
  }

  v4 = [a1 payloadUUID];

  if (v4)
  {
    return 2;
  }

  return 1;
}

- (BOOL)isManaged
{
  v1 = [a1 payloadUUID];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)autoLoginConfigurable
{
  result = [a1 isCaptive];
  if (result)
  {
    if ([a1 addReason] == 10)
    {
      return 0;
    }

    else
    {
      return [a1 isCarPlay] ^ 1;
    }
  }

  return result;
}

- (uint64_t)autoJoinConfigurable
{
  if ([a1 isPersonalHotspot])
  {
    return 0;
  }

  else
  {
    return [a1 isCarPlayOnly] ^ 1;
  }
}

- (id)networkQualityDate
{
  v1 = [a1 OSSpecificAttributes];
  v2 = [v1 objectForKey:*MEMORY[0x277D29860]];

  return v2;
}

- (uint64_t)hasDisabledUntilDate
{
  v0 = WiFiNetworkCreateFromCoreWiFiNetworkProfile();
  v1 = *MEMORY[0x277D29848];

  return WiFiNetworkGetProperty();
}

- (id)displayFriendlyName
{
  v1 = [a1 OSSpecificAttributes];
  v2 = [v1 objectForKeyedSubscript:@"DisplayFriendlyName"];

  return v2;
}

- (id)accessoryIdentifier
{
  v1 = [a1 OSSpecificAttributes];
  v2 = [v1 objectForKeyedSubscript:@"AccessoryIdentifier"];

  return v2;
}

- (id)randomMACAddress
{
  v1 = [a1 OSSpecificAttributes];
  v2 = [v1 objectForKey:@"PRIVATE_MAC_ADDRESS"];

  if (v2 && (v3 = [v2 objectForKey:@"PRIVATE_MAC_ADDRESS_VALUE"]) != 0)
  {
    v4 = WFConvertEthernetNetworkAddressToString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)networkQualityResponsiveness
{
  v1 = [a1 OSSpecificAttributes];
  v2 = [v1 objectForKey:*MEMORY[0x277D29868]];

  if (v2)
  {
    [v2 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

@end