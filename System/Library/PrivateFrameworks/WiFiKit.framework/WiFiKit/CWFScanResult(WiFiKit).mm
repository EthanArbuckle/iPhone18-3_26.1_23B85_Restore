@interface CWFScanResult(WiFiKit)
- (id)configurationIssues;
- (id)ieDictionary;
- (id)privateAddressConfigDictionary;
- (id)privateAddressInfoDictionary;
- (id)securityIssue;
- (id)supportedEAPTypes;
- (uint64_t)carPlayNetworkType;
- (uint64_t)isCarPlay;
- (uint64_t)isHidden;
- (uint64_t)isSAE;
- (uint64_t)isSSIDAmbiguous;
- (uint64_t)phyMode;
- (uint64_t)requiresPassword;
- (uint64_t)requiresUsername;
- (uint64_t)supportsJoinFailureDiagnostics;
@end

@implementation CWFScanResult(WiFiKit)

- (uint64_t)carPlayNetworkType
{
  if (![a1 isCarPlay])
  {
    return 0;
  }

  v2 = [a1 matchingKnownNetworkProfile];
  v3 = [v2 lastJoinedByUserAt];
  if (v3)
  {

    return 2;
  }

  v5 = [a1 matchingKnownNetworkProfile];
  v6 = [v5 payloadUUID];

  if (v6)
  {
    return 2;
  }

  return 1;
}

- (id)ieDictionary
{
  v1 = [a1 scanRecord];
  v2 = [v1 objectForKey:@"APPLE_DEVICE_IE"];

  return v2;
}

- (uint64_t)isHidden
{
  v2 = [a1 scanRecord];
  v3 = [v2 objectForKey:@"UserDirected"];
  v4 = [v3 BOOLValue];

  v5 = [a1 scanRecord];
  v6 = [v5 objectForKey:@"HIDDEN_NETWORK"];
  v7 = [v6 BOOLValue];

  v8 = [a1 scanRecord];
  v9 = [v8 objectForKey:@"scanWasDirected"];
  v10 = [v9 BOOLValue];

  v11 = [a1 networkName];
  if (v11)
  {
    v12 = [a1 networkName];
    if ([v12 isEqualToString:&stru_2882E4AD8])
    {
      v13 = 1;
    }

    else
    {
      v14 = [a1 networkName];
      v13 = [v14 isEqualToString:@" "];
    }
  }

  else
  {
    v13 = 1;
  }

  return (v4 | v7 | v10 | v13) & 1;
}

- (uint64_t)isSSIDAmbiguous
{
  v1 = [a1 scanRecord];
  v2 = [v1 objectForKey:@"AmbiguousSSIDs"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)supportedEAPTypes
{
  v1 = [a1 scanRecord];
  v2 = [v1 objectForKey:@"AcceptEAPTypes"];

  return v2;
}

- (uint64_t)isSAE
{
  v1 = [a1 scanRecord];
  v2 = [v1 objectForKey:@"RSN_IE"];

  if (v2 && (([v2 objectForKey:@"IE_KEY_RSN_AUTHSELS"], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v2, "objectForKey:", @"IE_KEY_WPA_AUTHSELS"), (v3 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v4 = v3;
    if ([v3 containsObject:&unk_288304C60])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 containsObject:&unk_288304C78];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)requiresPassword
{
  if ([a1 isEAP])
  {
    v2 = [a1 supportedEAPTypes];
    v3 = [v2 containsObject:&unk_288304C90];

    v4 = [a1 supportedEAPTypes];
    if ([v4 containsObject:&unk_288304CA8])
    {
      v5 = 1;
    }

    else
    {
      v7 = [a1 supportedEAPTypes];
      v5 = [v7 containsObject:&unk_288304CC0];
    }

    v6 = (v3 | v5) ^ 1;
    return v6 & 1;
  }

  if ([a1 isPSK])
  {
    v6 = 1;
    return v6 & 1;
  }

  return [a1 isSAE];
}

- (uint64_t)requiresUsername
{
  if (![a1 isEAP])
  {
    return 0;
  }

  v2 = [a1 supportedEAPTypes];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  if ([v2 containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:18];
    v6 = [v2 containsObject:v5];

    v4 = v6 ^ 1u;
  }

  return v4;
}

- (uint64_t)isCarPlay
{
  v2 = [a1 scanRecord];
  v3 = [v2 objectForKey:@"APPLE_DEVICE_IE"];

  if (v3)
  {
    [a1 supportsCarPlay];
  }

  v4 = [a1 scanRecord];
  v5 = [v4 objectForKey:@"CARPLAY_NETWORK"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (uint64_t)phyMode
{
  v1 = [a1 scanRecord];
  v2 = [v1 objectForKey:@"PHY_MODE"];
  v3 = [v2 intValue];

  return v3;
}

- (id)privateAddressConfigDictionary
{
  v1 = [a1 scanRecord];
  v2 = [v1 objectForKey:@"PRIVATE_MAC_ADDRESS"];

  return v2;
}

- (id)privateAddressInfoDictionary
{
  v1 = [a1 scanRecord];
  v2 = [v1 objectForKey:@"PrivateMacInfoDictionary"];

  return v2;
}

- (uint64_t)supportsJoinFailureDiagnostics
{
  if ([a1 isEAP] & 1) != 0 || (objc_msgSend(a1, "isPasspoint"))
  {
    return 0;
  }

  else
  {
    return [a1 isCarPlay] ^ 1;
  }
}

- (id)securityIssue
{
  if ([a1 isOpen] & 1) != 0 || (objc_msgSend(a1, "isOWE"))
  {
    v2 = 8;
LABEL_4:
    v3 = [MEMORY[0x277D7B9C0] issueWithType:v2];
    goto LABEL_5;
  }

  if (([a1 isWEP] & 1) != 0 || objc_msgSend(a1, "WPAMulticastCipher") == 1 || objc_msgSend(a1, "WPAMulticastCipher") == 5)
  {
    if (([a1 isEAP] & 1) == 0)
    {
      v2 = 2;
      goto LABEL_4;
    }
  }

  else if ((([a1 isWPA] & 1) != 0 || objc_msgSend(a1, "isWPA2")) && objc_msgSend(a1, "hasTKIPCipher"))
  {
    v2 = 2048;
    goto LABEL_4;
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (id)configurationIssues
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [a1 securityIssue];

  if (v3)
  {
    v4 = [a1 securityIssue];
    [v2 addObject:v4];
  }

  if ([a1 isSSIDAmbiguous])
  {
    v5 = [MEMORY[0x277D7B9C0] issueWithType:32];
    [v2 addObject:v5];
  }

  if ([a1 phyMode] == 4)
  {
    v6 = [MEMORY[0x277D7B9C0] issueWithType:16];
    [v2 addObject:v6];
  }

  return v2;
}

@end