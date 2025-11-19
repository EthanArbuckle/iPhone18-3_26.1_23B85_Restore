@interface WFNetworkScanRecord
- (BOOL)_isEqualToHotspotDevice:(id)a3;
- (BOOL)_isEqualToNetwork:(id)a3;
- (BOOL)iOSHotspot;
- (BOOL)isCloudSyncable;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentRecord:(id)a3;
- (BOOL)isNetworkSecurityModeMatch:(int64_t)a3;
- (BOOL)shouldShowInKnownNetworkList;
- (BOOL)shouldShowInMyNetworkList;
- (BOOL)supportsJoinFailureDiagnostics;
- (BOOL)supportsWiFiHealth;
- (NSString)description;
- (WFNetworkScanRecord)init;
- (WFNetworkScanRecord)initWithCoreWiFiProfile:(id)a3;
- (WFNetworkScanRecord)initWithNetworkRef:(__WiFiNetwork *)a3;
- (WFNetworkScanRecord)initWithScanResults:(id)a3;
- (id)configurationIssues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)securityIssue;
- (id)subtitle;
- (id)title;
- (int64_t)carPlayType;
- (int64_t)compare:(id)a3;
- (int64_t)type;
- (unint64_t)hash;
- (unint64_t)signalBars;
- (void)populatePrivateAddressConfig:(id)a3;
@end

@implementation WFNetworkScanRecord

- (WFNetworkScanRecord)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFNetworkScanRecord init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (WFNetworkScanRecord)initWithCoreWiFiProfile:(id)a3
{
  v4 = WiFiNetworkCreateFromCoreWiFiNetworkProfile();
  v5 = v4;

  return [(WFNetworkScanRecord *)self initWithNetworkRef:v4];
}

- (BOOL)iOSHotspot
{
  v3 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  v4 = [v3 NANServiceID];

  return v4 || self->_iOSHotspot;
}

- (int64_t)carPlayType
{
  if (![(WFNetworkScanRecord *)self isCarPlay])
  {
    return 0;
  }

  v3 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  v4 = [v3 lastJoinedByUserAt];
  if (v4)
  {

    return 2;
  }

  v6 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  v7 = [v6 payloadUUID];

  if (v7)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFNetworkScanRecord *)self _isEqualToHotspotDevice:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(WFNetworkScanRecord *)self _isEqualToNetwork:v4];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (BOOL)_isEqualToHotspotDevice:(id)a3
{
  v4 = a3;
  v5 = [(WFNetworkScanRecord *)self ssid];
  v6 = [v4 ssid];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (BOOL)_isEqualToNetwork:(id)a3
{
  v4 = a3;
  v5 = [(WFNetworkScanRecord *)self ssid];
  v6 = [v4 ssid];
  if (![v5 isEqualToString:v6] || !-[WFNetworkScanRecord isNetworkSecurityModeMatch:](self, "isNetworkSecurityModeMatch:", objc_msgSend(v4, "securityModeExt")))
  {

    goto LABEL_9;
  }

  v7 = [v4 isCarPlay];
  v8 = [(WFNetworkScanRecord *)self isCarPlay];

  if (v7 != v8)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v9 = [(WFNetworkScanRecord *)self randomMACAddress];
  if (v9 || ([v4 randomMACAddress], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = [(WFNetworkScanRecord *)self randomMACAddress];
    v11 = [v4 randomMACAddress];
    v12 = [v10 isEqualToString:v11];

    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 1;
  }

LABEL_13:
  v15 = [(WFNetworkScanRecord *)self privateAddressMode];
  if (v15 == [v4 privateAddressMode])
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
  v3 = [(WFNetworkScanRecord *)self ssid];
  v4 = [v3 hash];
  v5 = [(WFNetworkScanRecord *)self securityMode];

  return v5 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFNetworkScanRecord *)self ssid];
  v7 = [(WFNetworkScanRecord *)self bssid];
  v8 = [(WFNetworkScanRecord *)self rssi];
  v9 = [(WFNetworkScanRecord *)self isSecure];
  v10 = [(WFNetworkScanRecord *)self isEnterprise];
  v11 = WFStringFromWFSecurityMode([(WFNetworkScanRecord *)self securityMode]);
  v12 = WFStringFromWFSecurityModeExt([(WFNetworkScanRecord *)self securityModeExt]);
  v13 = [v3 stringWithFormat:@"<%@ : %p ssid='%@' bssid='%@' rssi='%ld' secured=%d eap=%d mode='%@' modeExt=[%@]", v5, self, v6, v7, v8, v9, v10, v11, v12];

  if ([(WFNetworkScanRecord *)self obsoleteNetworkCipherType])
  {
    [v13 appendFormat:@" cipher=%d", -[WFNetworkScanRecord obsoleteNetworkCipherType](self, "obsoleteNetworkCipherType")];
  }

  [v13 appendFormat:@" hidden=%d", -[WFNetworkScanRecord isHidden](self, "isHidden")];
  [v13 appendFormat:@" HS20=%d", -[WFNetworkScanRecord isHotspot20](self, "isHotspot20")];
  if ([(WFNetworkScanRecord *)self isCarPlay])
  {
    v14 = [(WFNetworkScanRecord *)self carPlayType];
    v15 = @"CarPlayUserConfigured";
    if (v14 == 1)
    {
      v15 = @"CarPlayOnly";
    }

    [v13 appendFormat:@" carPlay='%@'", v15];
  }

  if ([(WFNetworkScanRecord *)self isUnconfiguredAccessory])
  {
    v16 = [(WFNetworkScanRecord *)self unconfiguredAccessoryType];
    v17 = [(WFNetworkScanRecord *)self unconfiguredDeviceName];
    [v13 appendFormat:@" MFIType=%d MFIName='%@'", v16, v17];
  }

  if ([(WFNetworkScanRecord *)self iOSHotspot])
  {
    [v13 appendFormat:@" iOSHotspot=%d", -[WFNetworkScanRecord iOSHotspot](self, "iOSHotspot")];
  }

  [v13 appendFormat:@" popular=%d", -[WFNetworkScanRecord isPopular](self, "isPopular")];
  [v13 appendFormat:@" known=%d", -[WFNetworkScanRecord isKnown](self, "isKnown")];
  [v13 appendFormat:@" privateAddressState=%d", -[WFNetworkScanRecord isRandomMACAddressEnabled](self, "isRandomMACAddressEnabled")];
  v18 = [(WFNetworkScanRecord *)self randomMACAddress];

  if (v18)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = [(WFNetworkScanRecord *)self randomMACAddress];
    v21 = [v19 stringWithFormat:@" privateAddress='%@'", v20];
    [v13 appendString:v21];
  }

  v22 = [(WFNetworkScanRecord *)self privateAddressConfig];

  if (v22)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = [(WFNetworkScanRecord *)self privateAddressConfig];
    v25 = WFPrivateAddressConfigDisableReasonToString([v24 disabledReason]);
    v26 = [v23 stringWithFormat:@" privateAddressDisabled='%@'", v25];
    [v13 appendString:v26];
  }

  v27 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];

  if (v27)
  {
    v28 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    [v13 appendFormat:@" matchedProfile=[%@]", v28];
  }

  [v13 appendString:@">"];

  return v13;
}

- (BOOL)isNetworkSecurityModeMatch:(int64_t)a3
{
  if (a3 == 512)
  {
    return [(WFNetworkScanRecord *)self securityModeExt]== a3;
  }

  if (a3)
  {
    if ([(WFNetworkScanRecord *)self securityModeExt]!= 512)
    {
      return ([(WFNetworkScanRecord *)self securityModeExt]& a3) != 0;
    }

    return [(WFNetworkScanRecord *)self securityModeExt]== a3;
  }

  if (![(WFNetworkScanRecord *)self securityModeExt])
  {
    return 1;
  }

  return [(WFNetworkScanRecord *)self securityModeExt]== 2048;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_25;
  }

  if (!_os_feature_enabled_impl())
  {
LABEL_17:
    if ([v4 isPopular] && !-[WFNetworkScanRecord isPopular](self, "isPopular"))
    {
      goto LABEL_22;
    }

    if (([v4 isPopular] & 1) != 0 || !-[WFNetworkScanRecord isPopular](self, "isPopular"))
    {
      v29 = [v4 rssi];
      if (v29 > [(WFNetworkScanRecord *)self rssi])
      {
        goto LABEL_22;
      }

      v31 = [v4 rssi];
      if (v31 > [(WFNetworkScanRecord *)self rssi])
      {
        v30 = [v4 isEqual:self] ^ 1;
        goto LABEL_26;
      }
    }

LABEL_25:
    v30 = 1;
    goto LABEL_26;
  }

  v5 = [v4 scanResult];
  v6 = [v5 channel];
  if ([v6 is6GHz])
  {

    goto LABEL_6;
  }

  v7 = [(WFNetworkScanRecord *)self scanResult];
  v8 = [v7 channel];
  v9 = [v8 is6GHz];

  if ((v9 & 1) == 0)
  {
LABEL_6:
    v10 = [v4 scanResult];
    v11 = [v10 BSSID];
    if (v11)
    {
      v12 = v11;
      v13 = [(WFNetworkScanRecord *)self scanResult];
      v14 = [v13 BSSID];
      if (v14)
      {
        v15 = v14;
        v16 = [v4 scanResult];
        v17 = [v16 BSSID];
        v18 = [(WFNetworkScanRecord *)self scanResult];
        v19 = [v18 BSSID];
        if ([v17 isEqual:v19])
        {
          v53 = v18;
          v20 = v17;
          v21 = v16;
          v55 = [v4 scanResult];
          v22 = [v55 SSID];
          v52 = [(WFNetworkScanRecord *)self scanResult];
          v56 = [v52 SSID];
          v57 = v22;
          if (v22 == v56)
          {
            v48 = v20;
            v49 = v21;
          }

          else
          {
            v50 = [v4 scanResult];
            v23 = [v50 SSID];
            if (!v23)
            {
              LOBYTE(v51) = 0;
              v25 = v21;
              v28 = v20;
              v33 = v53;
LABEL_43:

              goto LABEL_44;
            }

            v47 = v23;
            v46 = [(WFNetworkScanRecord *)self scanResult];
            v24 = [v46 SSID];
            v25 = v21;
            if (!v24)
            {
              LOBYTE(v51) = 0;
              v28 = v20;
              v33 = v53;
LABEL_42:

              goto LABEL_43;
            }

            v45 = v24;
            v44 = [v4 scanResult];
            v26 = [v44 SSID];
            v42 = [(WFNetworkScanRecord *)self scanResult];
            [v42 SSID];
            v41 = v43 = v26;
            v27 = [v26 isEqual:?];
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
          v34 = [v4 scanResult];
          v35 = [v34 channel];
          if ([v35 is6GHz])
          {
            v40 = v35;
            v54 = v34;
            v36 = [(WFNetworkScanRecord *)self scanResult];
            v37 = [v36 channel];
            if ([v37 is6GHz])
            {
              v39 = [v4 scanResult];
              if ([v39 hasNon6GHzRNRChannel])
              {
                v38 = [(WFNetworkScanRecord *)self scanResult];
                v51 = [v38 hasNon6GHzRNRChannel] ^ 1;
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
          if (v57 == v56)
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

- (void)populatePrivateAddressConfig:(id)a3
{
  v15 = a3;
  v4 = [v15 objectForKey:*MEMORY[0x277D298B8]];
  self->_supervised = [v4 BOOLValue];

  v5 = [v15 objectForKey:*MEMORY[0x277D298E8]];
  self->_privateMACDisabledByProfile = [v5 BOOLValue];

  v6 = [v15 objectForKey:@"PRIVATE_MAC_ADDRESS"];
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
    v12 = [v11 intValue];
    self->_privateAddressMode = v12;
    self->_randomMACAddressEnabled = (v12 & 0xFFFFFFFE) == 2;
  }

  else
  {
    self->_randomMACAddressEnabled = 0;
  }

  v13 = [[WFPrivateAddressConfig alloc] initWithPrivateAddressConfigDictionary:v15 ssid:self->_ssid];
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
  v4 = [(WFNetworkScanRecord *)self securityIssue];

  if (v4)
  {
    v5 = [(WFNetworkScanRecord *)self securityIssue];
    [v3 addObject:v5];
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
  v3 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  v4 = [v3 displayFriendlyName];

  if (v4)
  {
    v5 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    v6 = [v5 displayFriendlyName];
  }

  else if (![(WFNetworkScanRecord *)self isUnconfiguredAccessory]|| ([(WFNetworkScanRecord *)self unconfiguredDeviceName], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(WFNetworkScanRecord *)self ssid];
  }

  return v6;
}

- (id)subtitle
{
  v3 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  if (v3)
  {
    v4 = v3;
    v5 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    v6 = [v5 displayedOperatorName];

    if (v6)
    {
      v7 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
      v8 = [v7 displayedOperatorName];

      goto LABEL_9;
    }
  }

  v9 = [(WFNetworkScanRecord *)self hotspot20Name];

  if (v9)
  {
    v10 = [(WFNetworkScanRecord *)self hotspot20Name];
LABEL_8:
    v8 = v10;
    goto LABEL_9;
  }

  v11 = [(WFNetworkScanRecord *)self hotspotPluginLabel];

  if (v11)
  {
    v10 = [(WFNetworkScanRecord *)self hotspotPluginLabel];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (unint64_t)signalBars
{
  [(WFNetworkScanRecord *)self scaledRSSI];

  return WFSignalBarsFromScaledRSSI();
}

- (BOOL)isEquivalentRecord:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(WFNetworkScanRecord *)self ssid];
    v7 = [v5 ssid];
    if ([v6 isEqualToString:v7])
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
  v3 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  if (v3)
  {
    v4 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    v5 = [v4 shouldShowInMyNetworkList];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowInKnownNetworkList
{
  v3 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
  if (v3)
  {
    v4 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    v5 = [v4 shouldShowInKnownNetworkList];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WFNetworkScanRecord)initWithScanResults:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v67.receiver = self;
  v67.super_class = WFNetworkScanRecord;
  v9 = [(WFNetworkScanRecord *)&v67 init];
  if (!v9)
  {
    OUTLINED_FUNCTION_7_1();
    goto LABEL_43;
  }

  if (!v8)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 136315138;
      v69 = "[WFNetworkScanRecord initWithScanResults:]";
      _os_log_impl(&dword_273ECD000, v3, v4, "%s: nil scan result", buf, 0xCu);
    }

    WFErrorLogCurrentCallStackThread(0, 3);
    goto LABEL_58;
  }

  v10 = [v8 copy];
  scanResult = v9->_scanResult;
  v9->_scanResult = v10;

  v12 = [v8 networkName];
  ssid = v9->_ssid;
  v9->_ssid = v12;

  if (!v9->_ssid)
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 136315394;
      v69 = "[WFNetworkScanRecord initWithScanResults:]";
      v70 = 2112;
      v71 = v8;
      _os_log_impl(&dword_273ECD000, v3, v4, "%s: nil SSID for %@", buf, 0x16u);
    }

LABEL_58:
    OUTLINED_FUNCTION_7_1();
    v9 = 0;
    goto LABEL_43;
  }

  v9->_hidden = [v8 isHidden];
  v14 = [v8 BSSID];
  bssid = v9->_bssid;
  v9->_bssid = v14;

  v9->_requiresPassword = [v8 requiresPassword];
  v9->_requiresUsername = [v8 requiresUsername];
  v9->_iOSHotspot = [v8 isPersonalHotspot];
  v9->_carPlay = [v8 isCarPlay];
  v9->_adhoc = [v8 isIBSS];
  v9->_enterprise = [v8 isEAP];
  v9->_phyMode = [v8 phyMode];
  v9->_ambiguousSSID = [v8 isSSIDAmbiguous];
  v16 = MEMORY[0x277CCABB0];
  v17 = [v8 channel];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "channel")}];
  channel = v9->_channel;
  v9->_channel = v18;

  v20 = MEMORY[0x277CCABB0];
  v21 = [v8 channel];
  v22 = [v20 numberWithUnsignedInt:{objc_msgSend(v21, "width")}];
  channelWidth = v9->_channelWidth;
  v9->_channelWidth = v22;

  v9->_hotspot20 = [v8 isPasspoint];
  v3 = [v8 scanRecord];
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
  v5 = [v8 privateAddressConfigDictionary];
  v31 = [v8 privateAddressInfoDictionary];
  v4 = v31;
  if (v31)
  {
    v32 = [v31 objectForKey:*MEMORY[0x277D298B8]];
    v9->_supervised = [v32 BOOLValue];

    v33 = [v4 objectForKey:*MEMORY[0x277D298E8]];
    v9->_privateMACDisabledByProfile = [v33 BOOLValue];
  }

  if (v5)
  {
    v34 = [v5 objectForKey:@"PRIVATE_MAC_ADDRESS_VALUE"];
    if (v34)
    {
      v35 = WFConvertEthernetNetworkAddressToString(v34);
      randomMACAddress = v9->_randomMACAddress;
      v9->_randomMACAddress = v35;
    }

    v37 = [objc_msgSend(v5 objectForKey:{@"PRIVATE_MAC_ADDRESS_TYPE", "intValue"}];
    v9->_privateAddressMode = v37;
    v9->_randomMACAddressEnabled = v37 == 2;
  }

  else
  {
    v9->_randomMACAddressEnabled = 0;
  }

  v9->_rssi = [v8 RSSI];
  v38 = [v3 objectForKey:@"ScaledRSSI"];

  if (v38)
  {
    v39 = [v3 objectForKey:@"ScaledRSSI"];
    [v39 floatValue];
    v9->_scaledRSSI = v40;
  }

  else
  {
    v9->_scaledRSSI = WFScaleRSSI(v9->_rssi);
  }

  v41 = WFSecurityModeFromScanDictionary(v3, &v9->_securityModeExt);
  v9->_securityMode = v41;
  v42 = (v41 | 0x800) != 0x800 || [v8 WAPISubtype] == 2 || objc_msgSend(v8, "WAPISubtype") == 1;
  v9->_secure = v9->_iOSHotspot || v42;
  v9->_obsoleteNetworkCipherType = WFDetermineNetworkCipherTypeObsolete(v3);
  v9->_airPortBaseStation = [v8 airPortBaseStationModel] != 0;
  v9->_prominentDisplay = 1;
  objc_storeStrong(&v9->_attributes, v3);
  v43 = [v8 OSSpecificAttributes];
  v44 = [v43 objectForKey:*MEMORY[0x277D29838]];
  v45 = [v44 intValue];

  if (v45)
  {
    v46 = v45;
    v47 = WFLogForCategory(0);
    v48 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v47)
    {
      v49 = v47;
      if (os_log_type_enabled(v49, v48))
      {
        v50 = [v8 networkName];
        *buf = 138412546;
        v69 = v50;
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

  v53 = [v8 OSSpecificAttributes];
  v54 = [v53 objectForKey:*MEMORY[0x277D29828]];
  if ([v54 BOOLValue])
  {
    v9->_known = 1;
  }

  else
  {
    v55 = [v8 matchingKnownNetworkProfile];
    v9->_known = v55 != 0;
  }

  v56 = [v8 OSSpecificAttributes];
  v57 = [v56 objectForKey:*MEMORY[0x277D29830]];
  v9->_popular = [v57 BOOLValue];

  if (v9->_popular && v9->_enterprise)
  {
    v9->_popular = 0;
  }

  v58 = [[WFPrivateAddressConfig alloc] initWithPrivateAddressConfigDictionary:v4 ssid:v9->_ssid];
  privateAddressConfig = v9->_privateAddressConfig;
  v9->_privateAddressConfig = v58;

  v6 = [v8 matchingKnownNetworkProfile];
  v60 = [v6 copy];
  matchingKnownNetworkProfile = v9->_matchingKnownNetworkProfile;
  v9->_matchingKnownNetworkProfile = v60;

LABEL_43:
  v62 = v9;

  v63 = *MEMORY[0x277D85DE8];
  return v62;
}

- (WFNetworkScanRecord)initWithNetworkRef:(__WiFiNetwork *)a3
{
  v64.receiver = self;
  v64.super_class = WFNetworkScanRecord;
  v4 = [(WFNetworkScanRecord *)&v64 init];
  if (!v4 || !a3)
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

- (id)copyWithZone:(_NSZone *)a3
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
    v8 = [(WFNetworkScanRecord *)self ssid];
    OUTLINED_FUNCTION_6_1(v8, v9);
    [OUTLINED_FUNCTION_0_4() setSsid:?];

    v10 = [(WFNetworkScanRecord *)self bssid];
    OUTLINED_FUNCTION_6_1(v10, v11);
    [OUTLINED_FUNCTION_0_4() setBssid:?];

    v12 = [(WFNetworkScanRecord *)self channel];
    OUTLINED_FUNCTION_6_1(v12, v13);
    [OUTLINED_FUNCTION_0_4() setChannel:?];

    v14 = [(WFNetworkScanRecord *)self eapProfile];
    OUTLINED_FUNCTION_6_1(v14, v15);
    [OUTLINED_FUNCTION_0_4() setEapProfile:?];

    v16 = [(WFNetworkScanRecord *)self attributes];
    OUTLINED_FUNCTION_6_1(v16, v17);
    [OUTLINED_FUNCTION_0_4() setAttributes:?];

    v18 = [(WFNetworkScanRecord *)self unconfiguredDeviceName];
    OUTLINED_FUNCTION_6_1(v18, v19);
    [OUTLINED_FUNCTION_0_4() setUnconfiguredDeviceName:?];

    v20 = [(WFNetworkScanRecord *)self unconfiguredDeviceID];
    OUTLINED_FUNCTION_6_1(v20, v21);
    [OUTLINED_FUNCTION_0_4() setUnconfiguredDeviceID:?];

    v22 = [(WFNetworkScanRecord *)self hotspotPluginLabel];
    OUTLINED_FUNCTION_6_1(v22, v23);
    [OUTLINED_FUNCTION_0_4() setHotspotPluginLabel:?];

    v24 = [(WFNetworkScanRecord *)self hotspot20Name];
    OUTLINED_FUNCTION_6_1(v24, v25);
    [OUTLINED_FUNCTION_0_4() setHotspot20Name:?];

    [(WFNetworkScanRecord *)self securityModeExt];
    [OUTLINED_FUNCTION_1_3() setSecurityModeExt:?];
    v26 = [(WFNetworkScanRecord *)self randomMACAddress];
    OUTLINED_FUNCTION_6_1(v26, v27);
    [OUTLINED_FUNCTION_0_4() setRandomMACAddress:?];

    [(WFNetworkScanRecord *)self privateAddressMode];
    [OUTLINED_FUNCTION_1_3() setPrivateAddressMode:?];
    [(WFNetworkScanRecord *)self isRandomMACAddressEnabled];
    [OUTLINED_FUNCTION_1_3() setRandomMACAddressEnabled:?];
    v28 = [(WFNetworkScanRecord *)self privateAddressConfig];
    OUTLINED_FUNCTION_6_1(v28, v29);
    [OUTLINED_FUNCTION_0_4() setPrivateAddressConfig:?];

    v30 = [(WFNetworkScanRecord *)self matchingKnownNetworkProfile];
    v31 = [v30 copyWithZone:a3];
    [v7 setMatchingKnownNetworkProfile:v31];
  }

  return v7;
}

@end