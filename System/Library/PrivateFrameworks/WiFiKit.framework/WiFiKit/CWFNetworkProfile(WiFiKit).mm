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
  disable6EMode = [self disable6EMode];
  if (_os_feature_enabled_impl())
  {
    v3 = _os_feature_enabled_impl() ^ 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [self isStandalone6G] | v3;
  if ((v4 & 1) != 0 || disable6EMode == 2)
  {
    return (v4 ^ 1) & 1;
  }

  return [self hasJoined6GHz];
}

- (uint64_t)hasJoined6GHz
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  bSSList = [self BSSList];
  v2 = [bSSList countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(bSSList);
        }

        channel = [*(*(&v9 + 1) + 8 * i) channel];
        band = [channel band];

        if (band == 3)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [bSSList countByEnumeratingWithState:&v9 objects:v13 count:16];
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
      networkName = [self networkName];
      v8 = 136316162;
      v9 = "[CWFNetworkProfile(WiFiKit) shouldShowInKnownNetworkList]";
      v10 = 2112;
      v11 = networkName;
      v12 = 1024;
      shouldShowInMyNetworkList = [self shouldShowInMyNetworkList];
      v14 = 1024;
      isPersonalHotspot = [self isPersonalHotspot];
      v16 = 1024;
      isAppBased = [self isAppBased];
      _os_log_impl(&dword_273ECD000, v4, v3, "%s: networkName='%@' shouldShowInMyNetworkList=%d isPersonalHotspot=%d isAppBased=%d", &v8, 0x28u);
    }
  }

  if ([self shouldShowInMyNetworkList] && !objc_msgSend(self, "isPersonalHotspot"))
  {
    result = 1;
  }

  else
  {
    result = [self isAppBased];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)shouldShowInMyNetworkList
{
  v24 = *MEMORY[0x277D85DE8];
  lastJoinedAt = [self lastJoinedAt];
  if (lastJoinedAt)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v3 setDay:14];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [currentCalendar dateByAddingComponents:v3 toDate:lastJoinedAt options:0];

    date = [MEMORY[0x277CBEAA8] date];
    v7 = [date compare:v5];

    isOpen = [self isOpen];
    if (v7 == 1)
    {
      v9 = isOpen;
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
        networkName = [self networkName];
        v18 = 138412802;
        v19 = networkName;
        v20 = 1024;
        v21 = v13;
        v22 = 1024;
        isOpen2 = [self isOpen];
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
  if (![self isCarPlay])
  {
    return 0;
  }

  lastJoinedByUserAt = [self lastJoinedByUserAt];
  if (lastJoinedByUserAt)
  {

    return 2;
  }

  payloadUUID = [self payloadUUID];

  if (payloadUUID)
  {
    return 2;
  }

  return 1;
}

- (BOOL)isManaged
{
  payloadUUID = [self payloadUUID];
  v2 = payloadUUID != 0;

  return v2;
}

- (uint64_t)autoLoginConfigurable
{
  result = [self isCaptive];
  if (result)
  {
    if ([self addReason] == 10)
    {
      return 0;
    }

    else
    {
      return [self isCarPlay] ^ 1;
    }
  }

  return result;
}

- (uint64_t)autoJoinConfigurable
{
  if ([self isPersonalHotspot])
  {
    return 0;
  }

  else
  {
    return [self isCarPlayOnly] ^ 1;
  }
}

- (id)networkQualityDate
{
  oSSpecificAttributes = [self OSSpecificAttributes];
  v2 = [oSSpecificAttributes objectForKey:*MEMORY[0x277D29860]];

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
  oSSpecificAttributes = [self OSSpecificAttributes];
  v2 = [oSSpecificAttributes objectForKeyedSubscript:@"DisplayFriendlyName"];

  return v2;
}

- (id)accessoryIdentifier
{
  oSSpecificAttributes = [self OSSpecificAttributes];
  v2 = [oSSpecificAttributes objectForKeyedSubscript:@"AccessoryIdentifier"];

  return v2;
}

- (id)randomMACAddress
{
  oSSpecificAttributes = [self OSSpecificAttributes];
  v2 = [oSSpecificAttributes objectForKey:@"PRIVATE_MAC_ADDRESS"];

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
  oSSpecificAttributes = [self OSSpecificAttributes];
  v2 = [oSSpecificAttributes objectForKey:*MEMORY[0x277D29868]];

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