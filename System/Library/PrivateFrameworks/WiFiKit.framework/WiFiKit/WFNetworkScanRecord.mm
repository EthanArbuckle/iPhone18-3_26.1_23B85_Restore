@interface WFNetworkScanRecord
- (BOOL)_isEqualToHotspotDevice:(id)device;
- (BOOL)_isEqualToNetwork:(id)network;
- (BOOL)iOSHotspot;
- (BOOL)isCloudSyncable;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentRecord:(id)record;
- (BOOL)isNetworkSecurityModeMatch:(int64_t)match;
- (BOOL)shouldShowInKnownNetworkList;
- (BOOL)shouldShowInMyNetworkList;
- (BOOL)supportsJoinFailureDiagnostics;
- (BOOL)supportsWiFiHealth;
- (NSString)description;
- (WFNetworkScanRecord)init;
- (WFNetworkScanRecord)initWithCoreWiFiProfile:(id)profile;
- (WFNetworkScanRecord)initWithNetworkRef:(__WiFiNetwork *)ref;
- (WFNetworkScanRecord)initWithScanResults:(id)results;
- (id)configurationIssues;
- (id)copyWithZone:(_NSZone *)zone;
- (id)securityIssue;
- (id)subtitle;
- (id)title;
- (int64_t)carPlayType;
- (int64_t)compare:(id)compare;
- (int64_t)type;
- (unint64_t)hash;
- (unint64_t)signalBars;
- (void)populatePrivateAddressConfig:(id)config;
@end

@implementation WFNetworkScanRecord

- (WFNetworkScanRecord)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFNetworkScanRecord init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (WFNetworkScanRecord)initWithCoreWiFiProfile:(id)profile
{
  v4 = WiFiNetworkCreateFromCoreWiFiNetworkProfile();
  v5 = v4;

  return [(WFNetworkScanRecord *)self initWithNetworkRef:v4];
}

- (BOOL)iOSHotspot
{
  matchingKnownNetworkProfile = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  nANServiceID = [matchingKnownNetworkProfile NANServiceID];

  return nANServiceID || self->_iOSHotspot;
}

- (int64_t)carPlayType
{
  if (![(WFNetworkScanRecord *)self isCarPlay])
  {
    return 0;
  }

  matchingKnownNetworkProfile = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  lastJoinedByUserAt = [matchingKnownNetworkProfile lastJoinedByUserAt];
  if (lastJoinedByUserAt)
  {

    return 2;
  }

  matchingKnownNetworkProfile2 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  payloadUUID = [matchingKnownNetworkProfile2 payloadUUID];

  if (payloadUUID)
  {
    return 2;
  }

  return 1;
}

- (int64_t)type
{
  if (self->_iOSHotspot)
  {
    return 2;
  }

  if (self->_adhoc)
  {
    return 0;
  }

  if (self->_unconfiguredAccessory)
  {
    return 3;
  }

  return 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFNetworkScanRecord *)self _isEqualToHotspotDevice:equalCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(WFNetworkScanRecord *)self _isEqualToNetwork:equalCopy];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (BOOL)_isEqualToHotspotDevice:(id)device
{
  deviceCopy = device;
  ssid = [(WFNetworkScanRecord *)self ssid];
  ssid2 = [deviceCopy ssid];

  LOBYTE(deviceCopy) = [ssid isEqualToString:ssid2];
  return deviceCopy;
}

- (BOOL)_isEqualToNetwork:(id)network
{
  networkCopy = network;
  ssid = [(WFNetworkScanRecord *)self ssid];
  ssid2 = [networkCopy ssid];
  if (![ssid isEqualToString:ssid2] || !-[WFNetworkScanRecord isNetworkSecurityModeMatch:](self, "isNetworkSecurityModeMatch:", objc_msgSend(networkCopy, "securityModeExt")))
  {

    goto LABEL_9;
  }

  isCarPlay = [networkCopy isCarPlay];
  isCarPlay2 = [(WFNetworkScanRecord *)self isCarPlay];

  if (isCarPlay != isCarPlay2)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  randomMACAddress = [(WFNetworkScanRecord *)self randomMACAddress];
  if (randomMACAddress || ([networkCopy randomMACAddress], (ssid2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    randomMACAddress2 = [(WFNetworkScanRecord *)self randomMACAddress];
    randomMACAddress3 = [networkCopy randomMACAddress];
    v12 = [randomMACAddress2 isEqualToString:randomMACAddress3];

    if (randomMACAddress)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_13:
  privateAddressMode = [(WFNetworkScanRecord *)self privateAddressMode];
  if (privateAddressMode == [networkCopy privateAddressMode])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_10:

  return v13;
}

- (unint64_t)hash
{
  ssid = [(WFNetworkScanRecord *)self ssid];
  v4 = [ssid hash];
  securityMode = [(WFNetworkScanRecord *)self securityMode];

  return securityMode ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ssid = [(WFNetworkScanRecord *)self ssid];
  bssid = [(WFNetworkScanRecord *)self bssid];
  rssi = [(WFNetworkScanRecord *)self rssi];
  isSecure = [(WFNetworkScanRecord *)self isSecure];
  isEnterprise = [(WFNetworkScanRecord *)self isEnterprise];
  v11 = WFStringFromWFSecurityMode([(WFNetworkScanRecord *)self securityMode]);
  v12 = WFStringFromWFSecurityModeExt([(WFNetworkScanRecord *)self securityModeExt]);
  v13 = [v3 stringWithFormat:@"<%@ : %p ssid='%@' bssid='%@' rssi='%ld' secured=%d eap=%d mode='%@' modeExt=[%@]", v5, self, ssid, bssid, rssi, isSecure, isEnterprise, v11, v12];

  if ([(WFNetworkScanRecord *)self obsoleteNetworkCipherType])
  {
    [v13 appendFormat:@" cipher=%d", -[WFNetworkScanRecord obsoleteNetworkCipherType](self, "obsoleteNetworkCipherType")];
  }

  [v13 appendFormat:@" hidden=%d", -[WFNetworkScanRecord isHidden](self, "isHidden")];
  [v13 appendFormat:@" HS20=%d", -[WFNetworkScanRecord isHotspot20](self, "isHotspot20")];
  if ([(WFNetworkScanRecord *)self isCarPlay])
  {
    carPlayType = [(WFNetworkScanRecord *)self carPlayType];
    v15 = @"CarPlayUserConfigured";
    if (carPlayType == 1)
    {
      v15 = @"CarPlayOnly";
    }

    [v13 appendFormat:@" carPlay='%@'", v15];
  }

  if ([(WFNetworkScanRecord *)self isUnconfiguredAccessory])
  {
    unconfiguredAccessoryType = [(WFNetworkScanRecord *)self unconfiguredAccessoryType];
    unconfiguredDeviceName = [(WFNetworkScanRecord *)self unconfiguredDeviceName];
    [v13 appendFormat:@" MFIType=%d MFIName='%@'", unconfiguredAccessoryType, unconfiguredDeviceName];
  }

  if ([(WFNetworkScanRecord *)self iOSHotspot])
  {
    [v13 appendFormat:@" iOSHotspot=%d", -[WFNetworkScanRecord iOSHotspot](self, "iOSHotspot")];
  }

  [v13 appendFormat:@" popular=%d", -[WFNetworkScanRecord isPopular](self, "isPopular")];
  [v13 appendFormat:@" known=%d", -[WFNetworkScanRecord isKnown](self, "isKnown")];
  [v13 appendFormat:@" privateAddressState=%d", -[WFNetworkScanRecord isRandomMACAddressEnabled](self, "isRandomMACAddressEnabled")];
  randomMACAddress = [(WFNetworkScanRecord *)self randomMACAddress];

  if (randomMACAddress)
  {
    v19 = MEMORY[0x277CCACA8];
    randomMACAddress2 = [(WFNetworkScanRecord *)self randomMACAddress];
    v21 = [v19 stringWithFormat:@" privateAddress='%@'", randomMACAddress2];
    [v13 appendString:v21];
  }

  privateAddressConfig = [(WFNetworkScanRecord *)self privateAddressConfig];

  if (privateAddressConfig)
  {
    v23 = MEMORY[0x277CCACA8];
    privateAddressConfig2 = [(WFNetworkScanRecord *)self privateAddressConfig];
    v25 = WFPrivateAddressConfigDisableReasonToString([privateAddressConfig2 disabledReason]);
    v26 = [v23 stringWithFormat:@" privateAddressDisabled='%@'", v25];
    [v13 appendString:v26];
  }

  matchingKnownNetworkProfile = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];

  if (matchingKnownNetworkProfile)
  {
    matchingKnownNetworkProfile2 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    [v13 appendFormat:@" matchedProfile=[%@]", matchingKnownNetworkProfile2];
  }

  [v13 appendString:@">"];

  return v13;
}

- (BOOL)isNetworkSecurityModeMatch:(int64_t)match
{
  if (match == 512)
  {
    return [(WFNetworkScanRecord *)self securityModeExt]== match;
  }

  if (match)
  {
    if ([(WFNetworkScanRecord *)self securityModeExt]!= 512)
    {
      return ([(WFNetworkScanRecord *)self securityModeExt]& match) != 0;
    }

    return [(WFNetworkScanRecord *)self securityModeExt]== match;
  }

  if (![(WFNetworkScanRecord *)self securityModeExt])
  {
    return 1;
  }

  return [(WFNetworkScanRecord *)self securityModeExt]== 2048;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (!compareCopy)
  {
    goto LABEL_25;
  }

  if (!_os_feature_enabled_impl())
  {
LABEL_17:
    if ([compareCopy isPopular] && !-[WFNetworkScanRecord isPopular](self, "isPopular"))
    {
      goto LABEL_22;
    }

    if (([compareCopy isPopular] & 1) != 0 || !-[WFNetworkScanRecord isPopular](self, "isPopular"))
    {
      rssi = [compareCopy rssi];
      if (rssi > [(WFNetworkScanRecord *)self rssi])
      {
        goto LABEL_22;
      }

      rssi2 = [compareCopy rssi];
      if (rssi2 > [(WFNetworkScanRecord *)self rssi])
      {
        v30 = [compareCopy isEqual:self] ^ 1;
        goto LABEL_26;
      }
    }

LABEL_25:
    v30 = 1;
    goto LABEL_26;
  }

  scanResult = [compareCopy scanResult];
  channel = [scanResult channel];
  if ([channel is6GHz])
  {

    goto LABEL_6;
  }

  scanResult2 = [(WFNetworkScanRecord *)self scanResult];
  channel2 = [scanResult2 channel];
  is6GHz = [channel2 is6GHz];

  if ((is6GHz & 1) == 0)
  {
LABEL_6:
    scanResult3 = [compareCopy scanResult];
    bSSID = [scanResult3 BSSID];
    if (bSSID)
    {
      v12 = bSSID;
      scanResult4 = [(WFNetworkScanRecord *)self scanResult];
      bSSID2 = [scanResult4 BSSID];
      if (bSSID2)
      {
        v15 = bSSID2;
        scanResult5 = [compareCopy scanResult];
        bSSID3 = [scanResult5 BSSID];
        scanResult6 = [(WFNetworkScanRecord *)self scanResult];
        bSSID4 = [scanResult6 BSSID];
        if ([bSSID3 isEqual:bSSID4])
        {
          v53 = scanResult6;
          v20 = bSSID3;
          v21 = scanResult5;
          scanResult7 = [compareCopy scanResult];
          sSID = [scanResult7 SSID];
          scanResult8 = [(WFNetworkScanRecord *)self scanResult];
          sSID2 = [scanResult8 SSID];
          v57 = sSID;
          if (sSID == sSID2)
          {
            v48 = v20;
            v49 = v21;
          }

          else
          {
            scanResult9 = [compareCopy scanResult];
            sSID3 = [scanResult9 SSID];
            if (!sSID3)
            {
              LOBYTE(v51) = 0;
              v25 = v21;
              v28 = v20;
              v33 = v53;
LABEL_43:

              goto LABEL_44;
            }

            v47 = sSID3;
            scanResult10 = [(WFNetworkScanRecord *)self scanResult];
            sSID4 = [scanResult10 SSID];
            v25 = v21;
            if (!sSID4)
            {
              LOBYTE(v51) = 0;
              v28 = v20;
              v33 = v53;
LABEL_42:

              goto LABEL_43;
            }

            v45 = sSID4;
            scanResult11 = [compareCopy scanResult];
            sSID5 = [scanResult11 SSID];
            scanResult12 = [(WFNetworkScanRecord *)self scanResult];
            [scanResult12 SSID];
            v41 = v43 = sSID5;
            v27 = [sSID5 isEqual:?];
            v28 = v20;
            if (!v27)
            {
              LOBYTE(v51) = 0;
              v33 = v53;
LABEL_41:

              goto LABEL_42;
            }

            v48 = v20;
            v49 = v25;
          }

          v33 = v53;
          scanResult13 = [compareCopy scanResult];
          channel3 = [scanResult13 channel];
          if ([channel3 is6GHz])
          {
            v40 = channel3;
            v54 = scanResult13;
            scanResult14 = [(WFNetworkScanRecord *)self scanResult];
            channel4 = [scanResult14 channel];
            if ([channel4 is6GHz])
            {
              scanResult15 = [compareCopy scanResult];
              if ([scanResult15 hasNon6GHzRNRChannel])
              {
                scanResult16 = [(WFNetworkScanRecord *)self scanResult];
                v51 = [scanResult16 hasNon6GHzRNRChannel] ^ 1;
              }

              else
              {
                LOBYTE(v51) = 0;
              }
            }

            else
            {
              LOBYTE(v51) = 0;
            }
          }

          else
          {

            LOBYTE(v51) = 0;
          }

          v28 = v48;
          v25 = v49;
          if (v57 == sSID2)
          {
LABEL_44:

            if (v51)
            {
              goto LABEL_22;
            }

            goto LABEL_17;
          }

          goto LABEL_41;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_22:
  v30 = -1;
LABEL_26:

  return v30;
}

- (void)populatePrivateAddressConfig:(id)config
{
  configCopy = config;
  v4 = [configCopy objectForKey:*MEMORY[0x277D298B8]];
  self->_supervised = [v4 BOOLValue];

  v5 = [configCopy objectForKey:*MEMORY[0x277D298E8]];
  self->_privateMACDisabledByProfile = [v5 BOOLValue];

  v6 = [configCopy objectForKey:@"PRIVATE_MAC_ADDRESS"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKey:@"PRIVATE_MAC_ADDRESS_VALUE"];
    if (v8)
    {
      v9 = WFConvertEthernetNetworkAddressToString(v8);
      randomMACAddress = self->_randomMACAddress;
      self->_randomMACAddress = v9;
    }

    v11 = [v7 objectForKey:@"PRIVATE_MAC_ADDRESS_TYPE"];
    intValue = [v11 intValue];
    self->_privateAddressMode = intValue;
    self->_randomMACAddressEnabled = (intValue & 0xFFFFFFFE) == 2;
  }

  else
  {
    self->_randomMACAddressEnabled = 0;
  }

  v13 = [[WFPrivateAddressConfig alloc] initWithPrivateAddressConfigDictionary:configCopy ssid:self->_ssid];
  privateAddressConfig = self->_privateAddressConfig;
  self->_privateAddressConfig = v13;
}

- (BOOL)isCloudSyncable
{
  if ([(WFNetworkScanRecord *)self isEnterprise]|| [(WFNetworkScanRecord *)self isAdhoc])
  {
    return 0;
  }

  return [(WFNetworkScanRecord *)self isSecure];
}

- (id)configurationIssues
{
  v3 = [MEMORY[0x277CBEB58] set];
  securityIssue = [(WFNetworkScanRecord *)self securityIssue];

  if (securityIssue)
  {
    securityIssue2 = [(WFNetworkScanRecord *)self securityIssue];
    [v3 addObject:securityIssue2];
  }

  if ([(WFNetworkScanRecord *)self isAmbiguousSSID])
  {
    v6 = [MEMORY[0x277D7B9C0] issueWithType:32];
    [v3 addObject:v6];
  }

  if ([(WFNetworkScanRecord *)self phyMode]== 4)
  {
    v7 = [MEMORY[0x277D7B9C0] issueWithType:16];
    [v3 addObject:v7];
  }

  return v3;
}

- (id)securityIssue
{
  if (![(WFNetworkScanRecord *)self securityMode]|| [(WFNetworkScanRecord *)self securityMode]== 2048)
  {
    v3 = 8;
LABEL_7:
    v4 = [MEMORY[0x277D7B9C0] issueWithType:v3];
    goto LABEL_8;
  }

  if ([(WFNetworkScanRecord *)self securityMode]== 1 || [(WFNetworkScanRecord *)self obsoleteNetworkCipherType]== 1)
  {
    v3 = 2;
    goto LABEL_7;
  }

  if ([(WFNetworkScanRecord *)self securityMode]== 4)
  {
    v3 = 4;
    goto LABEL_7;
  }

  if ([(WFNetworkScanRecord *)self obsoleteNetworkCipherType]== 2)
  {
    v3 = 2048;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (BOOL)supportsWiFiHealth
{
  if ([(WFNetworkScanRecord *)self carPlayType]== 1)
  {
    return 0;
  }

  else
  {
    return ![(WFNetworkScanRecord *)self iOSHotspot];
  }
}

- (BOOL)supportsJoinFailureDiagnostics
{
  if ([(WFNetworkScanRecord *)self isHotspot20]|| [(WFNetworkScanRecord *)self isEnterprise])
  {
    return 0;
  }

  else
  {
    return ![(WFNetworkScanRecord *)self isCarPlay];
  }
}

- (id)title
{
  matchingKnownNetworkProfile = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  displayFriendlyName = [matchingKnownNetworkProfile displayFriendlyName];

  if (displayFriendlyName)
  {
    matchingKnownNetworkProfile2 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    displayFriendlyName2 = [matchingKnownNetworkProfile2 displayFriendlyName];
  }

  else if (![(WFNetworkScanRecord *)self isUnconfiguredAccessory]|| ([(WFNetworkScanRecord *)self unconfiguredDeviceName], (displayFriendlyName2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    displayFriendlyName2 = [(WFNetworkScanRecord *)self ssid];
  }

  return displayFriendlyName2;
}

- (id)subtitle
{
  matchingKnownNetworkProfile = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  if (matchingKnownNetworkProfile)
  {
    v4 = matchingKnownNetworkProfile;
    matchingKnownNetworkProfile2 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    displayedOperatorName = [matchingKnownNetworkProfile2 displayedOperatorName];

    if (displayedOperatorName)
    {
      matchingKnownNetworkProfile3 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
      displayedOperatorName2 = [matchingKnownNetworkProfile3 displayedOperatorName];

      goto LABEL_9;
    }
  }

  hotspot20Name = [(WFNetworkScanRecord *)self hotspot20Name];

  if (hotspot20Name)
  {
    hotspot20Name2 = [(WFNetworkScanRecord *)self hotspot20Name];
LABEL_8:
    displayedOperatorName2 = hotspot20Name2;
    goto LABEL_9;
  }

  hotspotPluginLabel = [(WFNetworkScanRecord *)self hotspotPluginLabel];

  if (hotspotPluginLabel)
  {
    hotspot20Name2 = [(WFNetworkScanRecord *)self hotspotPluginLabel];
    goto LABEL_8;
  }

  displayedOperatorName2 = 0;
LABEL_9:

  return displayedOperatorName2;
}

- (unint64_t)signalBars
{
  [(WFNetworkScanRecord *)self scaledRSSI];

  return WFSignalBarsFromScaledRSSI();
}

- (BOOL)isEquivalentRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = recordCopy;
    ssid = [(WFNetworkScanRecord *)self ssid];
    ssid2 = [v5 ssid];
    if ([ssid isEqualToString:ssid2])
    {
      v8 = -[WFNetworkScanRecord isNetworkSecurityModeMatch:](self, "isNetworkSecurityModeMatch:", [v5 securityModeExt]);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldShowInMyNetworkList
{
  matchingKnownNetworkProfile = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  if (matchingKnownNetworkProfile)
  {
    matchingKnownNetworkProfile2 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    shouldShowInMyNetworkList = [matchingKnownNetworkProfile2 shouldShowInMyNetworkList];
  }

  else
  {
    shouldShowInMyNetworkList = 0;
  }

  return shouldShowInMyNetworkList;
}

- (BOOL)shouldShowInKnownNetworkList
{
  matchingKnownNetworkProfile = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  if (matchingKnownNetworkProfile)
  {
    matchingKnownNetworkProfile2 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    shouldShowInKnownNetworkList = [matchingKnownNetworkProfile2 shouldShowInKnownNetworkList];
  }

  else
  {
    shouldShowInKnownNetworkList = 0;
  }

  return shouldShowInKnownNetworkList;
}

- (WFNetworkScanRecord)initWithScanResults:(id)results
{
  v72 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v67.receiver = self;
  v67.super_class = WFNetworkScanRecord;
  v9 = [(WFNetworkScanRecord *)&v67 init];
  if (!v9)
  {
    OUTLINED_FUNCTION_7_1();
    goto LABEL_43;
  }

  if (!resultsCopy)
  {
    scanRecord = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && scanRecord && os_log_type_enabled(scanRecord, v4))
    {
      *buf = 136315138;
      v69 = "[WFNetworkScanRecord initWithScanResults:]";
      _os_log_impl(&dword_273ECD000, scanRecord, v4, "%s: nil scan result", buf, 0xCu);
    }

    WFErrorLogCurrentCallStackThread(0, 3);
    goto LABEL_58;
  }

  v10 = [resultsCopy copy];
  scanResult = v9->_scanResult;
  v9->_scanResult = v10;

  networkName = [resultsCopy networkName];
  ssid = v9->_ssid;
  v9->_ssid = networkName;

  if (!v9->_ssid)
  {
    scanRecord = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && scanRecord && os_log_type_enabled(scanRecord, v4))
    {
      *buf = 136315394;
      v69 = "[WFNetworkScanRecord initWithScanResults:]";
      v70 = 2112;
      v71 = resultsCopy;
      _os_log_impl(&dword_273ECD000, scanRecord, v4, "%s: nil SSID for %@", buf, 0x16u);
    }

LABEL_58:
    OUTLINED_FUNCTION_7_1();
    v9 = 0;
    goto LABEL_43;
  }

  v9->_hidden = [resultsCopy isHidden];
  bSSID = [resultsCopy BSSID];
  bssid = v9->_bssid;
  v9->_bssid = bSSID;

  v9->_requiresPassword = [resultsCopy requiresPassword];
  v9->_requiresUsername = [resultsCopy requiresUsername];
  v9->_iOSHotspot = [resultsCopy isPersonalHotspot];
  v9->_carPlay = [resultsCopy isCarPlay];
  v9->_adhoc = [resultsCopy isIBSS];
  v9->_enterprise = [resultsCopy isEAP];
  v9->_phyMode = [resultsCopy phyMode];
  v9->_ambiguousSSID = [resultsCopy isSSIDAmbiguous];
  v16 = MEMORY[0x277CCABB0];
  channel = [resultsCopy channel];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(channel, "channel")}];
  channel = v9->_channel;
  v9->_channel = v18;

  v20 = MEMORY[0x277CCABB0];
  channel2 = [resultsCopy channel];
  v22 = [v20 numberWithUnsignedInt:{objc_msgSend(channel2, "width")}];
  channelWidth = v9->_channelWidth;
  v9->_channelWidth = v22;

  v9->_hotspot20 = [resultsCopy isPasspoint];
  scanRecord = [resultsCopy scanRecord];
  v24 = [OUTLINED_FUNCTION_3_0() isUnconfiguredDevice:?];
  v9->_unconfiguredAccessory = v24;
  if (v24)
  {
    v25 = [OUTLINED_FUNCTION_3_0() unconfiguredDeviceName:?];
    p_unconfiguredDeviceName = &v9->_unconfiguredDeviceName;
    unconfiguredDeviceName = v9->_unconfiguredDeviceName;
    v9->_unconfiguredDeviceName = v25;

    if ([OUTLINED_FUNCTION_3_0() isHomeKitSecureWACDevice:?])
    {
      v9->_unconfiguredAccessoryType = 4;
      objc_storeStrong(&v9->_unconfiguredDeviceName, v9->_ssid);
    }

    else
    {
      if ([OUTLINED_FUNCTION_3_0() isAirPlayDevice:?])
      {
        v28 = 2;
      }

      else
      {
        if (![OUTLINED_FUNCTION_3_0() isGenericMFiAccessory:?])
        {
          v9->_unconfiguredAccessoryType = 1;
          if (v9->_unconfiguredDeviceName && v9->_bssid)
          {
            v65 = [MEMORY[0x277CEA3A8] uniqueBaseStationName:? withBssid:?];
            v66 = *p_unconfiguredDeviceName;
            *p_unconfiguredDeviceName = v65;
          }

          goto LABEL_13;
        }

        v28 = 3;
      }

      v9->_unconfiguredAccessoryType = v28;
    }

LABEL_13:
    v9->_unconfiguredAccessorySTAOnly = [OUTLINED_FUNCTION_3_0() isSTAOnlyDevice:?];
    v29 = [OUTLINED_FUNCTION_3_0() unconfiguredDeviceID:?];
    unconfiguredDeviceID = v9->_unconfiguredDeviceID;
    v9->_unconfiguredDeviceID = v29;

    goto LABEL_14;
  }

  v9->_unconfiguredAccessoryType = 0;
LABEL_14:
  privateAddressConfigDictionary = [resultsCopy privateAddressConfigDictionary];
  privateAddressInfoDictionary = [resultsCopy privateAddressInfoDictionary];
  v4 = privateAddressInfoDictionary;
  if (privateAddressInfoDictionary)
  {
    v32 = [privateAddressInfoDictionary objectForKey:*MEMORY[0x277D298B8]];
    v9->_supervised = [v32 BOOLValue];

    v33 = [v4 objectForKey:*MEMORY[0x277D298E8]];
    v9->_privateMACDisabledByProfile = [v33 BOOLValue];
  }

  if (privateAddressConfigDictionary)
  {
    v34 = [privateAddressConfigDictionary objectForKey:@"PRIVATE_MAC_ADDRESS_VALUE"];
    if (v34)
    {
      v35 = WFConvertEthernetNetworkAddressToString(v34);
      randomMACAddress = v9->_randomMACAddress;
      v9->_randomMACAddress = v35;
    }

    v37 = [objc_msgSend(privateAddressConfigDictionary objectForKey:{@"PRIVATE_MAC_ADDRESS_TYPE", "intValue"}];
    v9->_privateAddressMode = v37;
    v9->_randomMACAddressEnabled = v37 == 2;
  }

  else
  {
    v9->_randomMACAddressEnabled = 0;
  }

  v9->_rssi = [resultsCopy RSSI];
  v38 = [scanRecord objectForKey:@"ScaledRSSI"];

  if (v38)
  {
    v39 = [scanRecord objectForKey:@"ScaledRSSI"];
    [v39 floatValue];
    v9->_scaledRSSI = v40;
  }

  else
  {
    v9->_scaledRSSI = WFScaleRSSI(v9->_rssi);
  }

  v41 = WFSecurityModeFromScanDictionary(scanRecord, &v9->_securityModeExt);
  v9->_securityMode = v41;
  v42 = (v41 | 0x800) != 0x800 || [resultsCopy WAPISubtype] == 2 || objc_msgSend(resultsCopy, "WAPISubtype") == 1;
  v9->_secure = v9->_iOSHotspot || v42;
  v9->_obsoleteNetworkCipherType = WFDetermineNetworkCipherTypeObsolete(scanRecord);
  v9->_airPortBaseStation = [resultsCopy airPortBaseStationModel] != 0;
  v9->_prominentDisplay = 1;
  objc_storeStrong(&v9->_attributes, scanRecord);
  oSSpecificAttributes = [resultsCopy OSSpecificAttributes];
  v44 = [oSSpecificAttributes objectForKey:*MEMORY[0x277D29838]];
  intValue = [v44 intValue];

  if (intValue)
  {
    v46 = intValue;
    v47 = WFLogForCategory(0);
    v48 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v47)
    {
      v49 = v47;
      if (os_log_type_enabled(v49, v48))
      {
        networkName2 = [resultsCopy networkName];
        *buf = 138412546;
        v69 = networkName2;
        v70 = 2048;
        v71 = v46;
        _os_log_impl(&dword_273ECD000, v49, v48, "Popularity for network: %@ is %lu", buf, 0x16u);
      }
    }

    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Score %lu", v46];
  }

  else
  {
    v51 = &stru_2882E4AD8;
  }

  crowdsourceDescription = v9->_crowdsourceDescription;
  v9->_crowdsourceDescription = &v51->isa;

  oSSpecificAttributes2 = [resultsCopy OSSpecificAttributes];
  v54 = [oSSpecificAttributes2 objectForKey:*MEMORY[0x277D29828]];
  if ([v54 BOOLValue])
  {
    v9->_known = 1;
  }

  else
  {
    matchingKnownNetworkProfile = [resultsCopy matchingKnownNetworkProfile];
    v9->_known = matchingKnownNetworkProfile != 0;
  }

  oSSpecificAttributes3 = [resultsCopy OSSpecificAttributes];
  v57 = [oSSpecificAttributes3 objectForKey:*MEMORY[0x277D29830]];
  v9->_popular = [v57 BOOLValue];

  if (v9->_popular && v9->_enterprise)
  {
    v9->_popular = 0;
  }

  v58 = [[WFPrivateAddressConfig alloc] initWithPrivateAddressConfigDictionary:v4 ssid:v9->_ssid];
  privateAddressConfig = v9->_privateAddressConfig;
  v9->_privateAddressConfig = v58;

  matchingKnownNetworkProfile2 = [resultsCopy matchingKnownNetworkProfile];
  v60 = [matchingKnownNetworkProfile2 copy];
  matchingKnownNetworkProfile = v9->_matchingKnownNetworkProfile;
  v9->_matchingKnownNetworkProfile = v60;

LABEL_43:
  v62 = v9;

  v63 = *MEMORY[0x277D85DE8];
  return v62;
}

- (WFNetworkScanRecord)initWithNetworkRef:(__WiFiNetwork *)ref
{
  v64.receiver = self;
  v64.super_class = WFNetworkScanRecord;
  v4 = [(WFNetworkScanRecord *)&v64 init];
  if (!v4 || !ref)
  {
    return v4;
  }

  WiFiNetworkGetDirectedState();
  OUTLINED_FUNCTION_2_2();
  v4->_hidden = v5;
  v6 = WiFiNetworkGetSSID();
  ssid = v4->_ssid;
  v4->_ssid = v6;

  v8 = WiFiNetworkGetProperty();
  bssid = v4->_bssid;
  v4->_bssid = v8;

  WiFiNetworkRequiresPassword();
  OUTLINED_FUNCTION_2_2();
  v4->_requiresPassword = v10;
  WiFiNetworkRequiresUsername();
  OUTLINED_FUNCTION_2_2();
  v4->_requiresUsername = v11;
  WiFiNetworkIsApplePersonalHotspot();
  OUTLINED_FUNCTION_2_2();
  v4->_iOSHotspot = v12;
  WiFiNetworkIsCarPlay();
  OUTLINED_FUNCTION_2_2();
  v4->_carPlay = v13;
  Type = WiFiNetworkGetType();
  if (v4->_carPlay && (Type - 1) <= 1)
  {
    v16 = 1;
    if (Type == 2)
    {
      v16 = 2;
    }

    v4->_carPlayType = v16;
  }

  v17 = *MEMORY[0x277D29850];
  v18 = WiFiNetworkGetProperty();
  if (v18)
  {
    objc_storeStrong(&v4->_eapProfile, v18);
  }

  WiFiNetworkIsAdHoc();
  OUTLINED_FUNCTION_2_2();
  v4->_adhoc = v19;
  v4->_enterprise = WFWiFiNetworkRefIsEnterprise();
  v4->_phyMode = WiFiNetworkGetPhyMode();
  WiFiNetworkIsSSIDAmbiguous();
  OUTLINED_FUNCTION_2_2();
  v4->_ambiguousSSID = v20;
  v21 = WiFiNetworkGetChannel();
  channel = v4->_channel;
  v4->_channel = v21;

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WiFiNetworkGetChannelWidthInMHz()];
  channelWidth = v4->_channelWidth;
  v4->_channelWidth = v23;

  WiFiNetworkIsHotspot20();
  OUTLINED_FUNCTION_2_2();
  v4->_hotspot20 = v25;
  v26 = WiFiNetworkCopyRecord();
  v27 = [OUTLINED_FUNCTION_4_2() isUnconfiguredDevice:?];
  v4->_unconfiguredAccessory = v27;
  if (v27)
  {
    v28 = [OUTLINED_FUNCTION_4_2() unconfiguredDeviceName:?];
    p_unconfiguredDeviceName = &v4->_unconfiguredDeviceName;
    unconfiguredDeviceName = v4->_unconfiguredDeviceName;
    v4->_unconfiguredDeviceName = v28;

    if ([OUTLINED_FUNCTION_4_2() isHomeKitSecureWACDevice:?])
    {
      v4->_unconfiguredAccessoryType = 4;
      objc_storeStrong(&v4->_unconfiguredDeviceName, v4->_ssid);
    }

    else
    {
      if ([OUTLINED_FUNCTION_4_2() isAirPlayDevice:?])
      {
        v31 = 2;
      }

      else
      {
        if (![OUTLINED_FUNCTION_4_2() isGenericMFiAccessory:?])
        {
          v4->_unconfiguredAccessoryType = 1;
          if (v4->_bssid)
          {
            v60 = WiFiNetworkGetProperty();
            v61 = v60;
            if (*p_unconfiguredDeviceName && v60)
            {
              v62 = [MEMORY[0x277CEA3A8] uniqueBaseStationName:? withBssid:?];
              v63 = *p_unconfiguredDeviceName;
              *p_unconfiguredDeviceName = v62;
            }
          }

          goto LABEL_21;
        }

        v31 = 3;
      }

      v4->_unconfiguredAccessoryType = v31;
    }

LABEL_21:
    v4->_unconfiguredAccessorySTAOnly = [OUTLINED_FUNCTION_4_2() isSTAOnlyDevice:?];
    v32 = [OUTLINED_FUNCTION_4_2() unconfiguredDeviceID:?];
    unconfiguredDeviceID = v4->_unconfiguredDeviceID;
    v4->_unconfiguredDeviceID = v32;

    goto LABEL_22;
  }

  v4->_unconfiguredAccessoryType = 0;
LABEL_22:
  v34 = *MEMORY[0x277D298D8];
  v35 = WiFiNetworkGetProperty();
  v36 = [v35 objectForKey:*MEMORY[0x277D298B8]];
  v4->_supervised = [v36 BOOLValue];

  v37 = [v35 objectForKey:*MEMORY[0x277D298E8]];
  v4->_privateMACDisabledByProfile = [v37 BOOLValue];

  v38 = [v26 objectForKey:@"PRIVATE_MAC_ADDRESS"];
  v39 = v38;
  if (v38)
  {
    v40 = [v38 objectForKey:@"PRIVATE_MAC_ADDRESS_VALUE"];
    if (v40)
    {
      v41 = WFConvertEthernetNetworkAddressToString(v40);
      randomMACAddress = v4->_randomMACAddress;
      v4->_randomMACAddress = v41;
    }

    v43 = [objc_msgSend(v35 objectForKey:{@"PRIVATE_MAC_ADDRESS_TYPE", "intValue"}];
    v4->_privateAddressMode = v43;
    v4->_randomMACAddressEnabled = v43 == 2;
  }

  else
  {
    v4->_randomMACAddressEnabled = 0;
  }

  v44 = [v26 objectForKey:@"RSSI"];
  v4->_rssi = [v44 integerValue];

  v45 = [v26 objectForKey:@"ScaledRSSI"];

  if (v45)
  {
    v46 = [v26 objectForKey:@"ScaledRSSI"];
    [v46 floatValue];
    v4->_scaledRSSI = v47;
  }

  else
  {
    v4->_scaledRSSI = WFScaleRSSI(v4->_rssi);
  }

  v48 = WFSecurityModeFromScanDictionary(v26, &v4->_securityModeExt);
  v4->_securityMode = v48;
  v49 = (v48 | 0x800) != 0x800 || WiFiNetworkIsWAPICERT() || WiFiNetworkIsWAPIPSK() != 0;
  v4->_secure = v49;
  v4->_obsoleteNetworkCipherType = WFDetermineNetworkCipherTypeObsolete(v26);
  v50 = [v26 objectForKey:@"APPLE_IE"];

  if (v50)
  {
    v4->_airPortBaseStation = 1;
  }

  v4->_prominentDisplay = 1;
  objc_storeStrong(&v4->_attributes, v26);
  v51 = *MEMORY[0x277D29828];
  v4->_known = WiFiNetworkGetProperty() != 0;
  v52 = *MEMORY[0x277D29838];
  if (WiFiNetworkGetProperty())
  {
    v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Score %lu", WiFiNetworkGetIntProperty()];
    crowdsourceDescription = v4->_crowdsourceDescription;
    v4->_crowdsourceDescription = v53;
  }

  v55 = *MEMORY[0x277D29830];
  v56 = WiFiNetworkGetProperty() == *MEMORY[0x277CBED28];
  v4->_popular = v56;
  if (v56 && v4->_enterprise)
  {
    v4->_popular = 0;
  }

  v57 = [[WFPrivateAddressConfig alloc] initWithPrivateAddressConfigDictionary:v35 ssid:v4->_ssid];
  privateAddressConfig = v4->_privateAddressConfig;
  v4->_privateAddressConfig = v57;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = [objc_alloc(objc_opt_class()) initWithNetworkRef:0];
  if (v7)
  {
    [(WFNetworkScanRecord *)self isHidden];
    [OUTLINED_FUNCTION_1_3() setHidden:?];
    [(WFNetworkScanRecord *)self isSecure];
    [OUTLINED_FUNCTION_1_3() setSecure:?];
    [(WFNetworkScanRecord *)self isCarPlay];
    [OUTLINED_FUNCTION_1_3() setCarPlay:?];
    [(WFNetworkScanRecord *)self iOSHotspot];
    [OUTLINED_FUNCTION_1_3() setIOSHotspot:?];
    [(WFNetworkScanRecord *)self requiresPassword];
    [OUTLINED_FUNCTION_1_3() setRequiresPassword:?];
    [(WFNetworkScanRecord *)self requiresUsername];
    [OUTLINED_FUNCTION_1_3() setRequiresUsername:?];
    [(WFNetworkScanRecord *)self isAdhoc];
    [OUTLINED_FUNCTION_1_3() setAdhoc:?];
    [(WFNetworkScanRecord *)self isEnterprise];
    [OUTLINED_FUNCTION_1_3() setEnterprise:?];
    [(WFNetworkScanRecord *)self isUnconfiguredAccessory];
    [OUTLINED_FUNCTION_1_3() setUnconfiguredAccessory:?];
    [(WFNetworkScanRecord *)self isHotspot20];
    [OUTLINED_FUNCTION_1_3() setHotspot20:?];
    [(WFNetworkScanRecord *)self isAmbiguousSSID];
    [OUTLINED_FUNCTION_1_3() setAmbiguousSSID:?];
    [(WFNetworkScanRecord *)self isAirPortBaseStation];
    [OUTLINED_FUNCTION_1_3() setAirPortBaseStation:?];
    [(WFNetworkScanRecord *)self carPlayType];
    [OUTLINED_FUNCTION_1_3() setCarPlayType:?];
    [(WFNetworkScanRecord *)self unconfiguredAccessoryType];
    [OUTLINED_FUNCTION_1_3() setUnconfiguredAccessoryType:?];
    [(WFNetworkScanRecord *)self isUnconfiguredAccessorySTAOnly];
    [OUTLINED_FUNCTION_1_3() setUnconfiguredAccessorySTAOnly:?];
    [(WFNetworkScanRecord *)self rssi];
    [OUTLINED_FUNCTION_1_3() setRssi:?];
    [(WFNetworkScanRecord *)self securityMode];
    [OUTLINED_FUNCTION_1_3() setSecurityMode:?];
    [(WFNetworkScanRecord *)self scaledRSSI];
    [v7 setScaledRSSI:?];
    [(WFNetworkScanRecord *)self phyMode];
    [OUTLINED_FUNCTION_1_3() setPhyMode:?];
    ssid = [(WFNetworkScanRecord *)self ssid];
    OUTLINED_FUNCTION_6_1(ssid, v9);
    [OUTLINED_FUNCTION_0_4() setSsid:?];

    bssid = [(WFNetworkScanRecord *)self bssid];
    OUTLINED_FUNCTION_6_1(bssid, v11);
    [OUTLINED_FUNCTION_0_4() setBssid:?];

    channel = [(WFNetworkScanRecord *)self channel];
    OUTLINED_FUNCTION_6_1(channel, v13);
    [OUTLINED_FUNCTION_0_4() setChannel:?];

    eapProfile = [(WFNetworkScanRecord *)self eapProfile];
    OUTLINED_FUNCTION_6_1(eapProfile, v15);
    [OUTLINED_FUNCTION_0_4() setEapProfile:?];

    attributes = [(WFNetworkScanRecord *)self attributes];
    OUTLINED_FUNCTION_6_1(attributes, v17);
    [OUTLINED_FUNCTION_0_4() setAttributes:?];

    unconfiguredDeviceName = [(WFNetworkScanRecord *)self unconfiguredDeviceName];
    OUTLINED_FUNCTION_6_1(unconfiguredDeviceName, v19);
    [OUTLINED_FUNCTION_0_4() setUnconfiguredDeviceName:?];

    unconfiguredDeviceID = [(WFNetworkScanRecord *)self unconfiguredDeviceID];
    OUTLINED_FUNCTION_6_1(unconfiguredDeviceID, v21);
    [OUTLINED_FUNCTION_0_4() setUnconfiguredDeviceID:?];

    hotspotPluginLabel = [(WFNetworkScanRecord *)self hotspotPluginLabel];
    OUTLINED_FUNCTION_6_1(hotspotPluginLabel, v23);
    [OUTLINED_FUNCTION_0_4() setHotspotPluginLabel:?];

    hotspot20Name = [(WFNetworkScanRecord *)self hotspot20Name];
    OUTLINED_FUNCTION_6_1(hotspot20Name, v25);
    [OUTLINED_FUNCTION_0_4() setHotspot20Name:?];

    [(WFNetworkScanRecord *)self securityModeExt];
    [OUTLINED_FUNCTION_1_3() setSecurityModeExt:?];
    randomMACAddress = [(WFNetworkScanRecord *)self randomMACAddress];
    OUTLINED_FUNCTION_6_1(randomMACAddress, v27);
    [OUTLINED_FUNCTION_0_4() setRandomMACAddress:?];

    [(WFNetworkScanRecord *)self privateAddressMode];
    [OUTLINED_FUNCTION_1_3() setPrivateAddressMode:?];
    [(WFNetworkScanRecord *)self isRandomMACAddressEnabled];
    [OUTLINED_FUNCTION_1_3() setRandomMACAddressEnabled:?];
    privateAddressConfig = [(WFNetworkScanRecord *)self privateAddressConfig];
    OUTLINED_FUNCTION_6_1(privateAddressConfig, v29);
    [OUTLINED_FUNCTION_0_4() setPrivateAddressConfig:?];

    matchingKnownNetworkProfile = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    v31 = [matchingKnownNetworkProfile copyWithZone:zone];
    [v7 setMatchingKnownNetworkProfile:v31];
  }

  return v7;
}

@end