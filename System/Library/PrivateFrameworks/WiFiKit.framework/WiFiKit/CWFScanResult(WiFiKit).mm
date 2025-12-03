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
  if (![self isCarPlay])
  {
    return 0;
  }

  matchingKnownNetworkProfile = [self matchingKnownNetworkProfile];
  lastJoinedByUserAt = [matchingKnownNetworkProfile lastJoinedByUserAt];
  if (lastJoinedByUserAt)
  {

    return 2;
  }

  matchingKnownNetworkProfile2 = [self matchingKnownNetworkProfile];
  payloadUUID = [matchingKnownNetworkProfile2 payloadUUID];

  if (payloadUUID)
  {
    return 2;
  }

  return 1;
}

- (id)ieDictionary
{
  scanRecord = [self scanRecord];
  v2 = [scanRecord objectForKey:@"APPLE_DEVICE_IE"];

  return v2;
}

- (uint64_t)isHidden
{
  scanRecord = [self scanRecord];
  v3 = [scanRecord objectForKey:@"UserDirected"];
  bOOLValue = [v3 BOOLValue];

  scanRecord2 = [self scanRecord];
  v6 = [scanRecord2 objectForKey:@"HIDDEN_NETWORK"];
  bOOLValue2 = [v6 BOOLValue];

  scanRecord3 = [self scanRecord];
  v9 = [scanRecord3 objectForKey:@"scanWasDirected"];
  bOOLValue3 = [v9 BOOLValue];

  networkName = [self networkName];
  if (networkName)
  {
    networkName2 = [self networkName];
    if ([networkName2 isEqualToString:&stru_2882E4AD8])
    {
      v13 = 1;
    }

    else
    {
      networkName3 = [self networkName];
      v13 = [networkName3 isEqualToString:@" "];
    }
  }

  else
  {
    v13 = 1;
  }

  return (bOOLValue | bOOLValue2 | bOOLValue3 | v13) & 1;
}

- (uint64_t)isSSIDAmbiguous
{
  scanRecord = [self scanRecord];
  v2 = [scanRecord objectForKey:@"AmbiguousSSIDs"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)supportedEAPTypes
{
  scanRecord = [self scanRecord];
  v2 = [scanRecord objectForKey:@"AcceptEAPTypes"];

  return v2;
}

- (uint64_t)isSAE
{
  scanRecord = [self scanRecord];
  v2 = [scanRecord objectForKey:@"RSN_IE"];

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
  if ([self isEAP])
  {
    supportedEAPTypes = [self supportedEAPTypes];
    v3 = [supportedEAPTypes containsObject:&unk_288304C90];

    supportedEAPTypes2 = [self supportedEAPTypes];
    if ([supportedEAPTypes2 containsObject:&unk_288304CA8])
    {
      v5 = 1;
    }

    else
    {
      supportedEAPTypes3 = [self supportedEAPTypes];
      v5 = [supportedEAPTypes3 containsObject:&unk_288304CC0];
    }

    v6 = (v3 | v5) ^ 1;
    return v6 & 1;
  }

  if ([self isPSK])
  {
    v6 = 1;
    return v6 & 1;
  }

  return [self isSAE];
}

- (uint64_t)requiresUsername
{
  if (![self isEAP])
  {
    return 0;
  }

  supportedEAPTypes = [self supportedEAPTypes];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:13];
  if ([supportedEAPTypes containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:18];
    v6 = [supportedEAPTypes containsObject:v5];

    v4 = v6 ^ 1u;
  }

  return v4;
}

- (uint64_t)isCarPlay
{
  scanRecord = [self scanRecord];
  v3 = [scanRecord objectForKey:@"APPLE_DEVICE_IE"];

  if (v3)
  {
    [self supportsCarPlay];
  }

  scanRecord2 = [self scanRecord];
  v5 = [scanRecord2 objectForKey:@"CARPLAY_NETWORK"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (uint64_t)phyMode
{
  scanRecord = [self scanRecord];
  v2 = [scanRecord objectForKey:@"PHY_MODE"];
  intValue = [v2 intValue];

  return intValue;
}

- (id)privateAddressConfigDictionary
{
  scanRecord = [self scanRecord];
  v2 = [scanRecord objectForKey:@"PRIVATE_MAC_ADDRESS"];

  return v2;
}

- (id)privateAddressInfoDictionary
{
  scanRecord = [self scanRecord];
  v2 = [scanRecord objectForKey:@"PrivateMacInfoDictionary"];

  return v2;
}

- (uint64_t)supportsJoinFailureDiagnostics
{
  if ([self isEAP] & 1) != 0 || (objc_msgSend(self, "isPasspoint"))
  {
    return 0;
  }

  else
  {
    return [self isCarPlay] ^ 1;
  }
}

- (id)securityIssue
{
  if ([self isOpen] & 1) != 0 || (objc_msgSend(self, "isOWE"))
  {
    v2 = 8;
LABEL_4:
    v3 = [MEMORY[0x277D7B9C0] issueWithType:v2];
    goto LABEL_5;
  }

  if (([self isWEP] & 1) != 0 || objc_msgSend(self, "WPAMulticastCipher") == 1 || objc_msgSend(self, "WPAMulticastCipher") == 5)
  {
    if (([self isEAP] & 1) == 0)
    {
      v2 = 2;
      goto LABEL_4;
    }
  }

  else if ((([self isWPA] & 1) != 0 || objc_msgSend(self, "isWPA2")) && objc_msgSend(self, "hasTKIPCipher"))
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
  securityIssue = [self securityIssue];

  if (securityIssue)
  {
    securityIssue2 = [self securityIssue];
    [v2 addObject:securityIssue2];
  }

  if ([self isSSIDAmbiguous])
  {
    v5 = [MEMORY[0x277D7B9C0] issueWithType:32];
    [v2 addObject:v5];
  }

  if ([self phyMode] == 4)
  {
    v6 = [MEMORY[0x277D7B9C0] issueWithType:16];
    [v2 addObject:v6];
  }

  return v2;
}

@end