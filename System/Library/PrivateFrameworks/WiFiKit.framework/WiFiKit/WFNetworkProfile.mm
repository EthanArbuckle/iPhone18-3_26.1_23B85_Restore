@interface WFNetworkProfile
+ (BOOL)networkProfileRepresentSameNetwork:(id)network toNetworkProfile:(id)profile;
- (BOOL)TLSProfileCanJoin;
- (BOOL)canAttemptJoin;
- (BOOL)isEnterprise;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNetwork:(id)network;
- (BOOL)profileContainsCarrierEAPType:(id)type;
- (BOOL)profileContainsEAPAKA:(id)a;
- (BOOL)profileContainsEAPSIM:(id)m;
- (BOOL)requiresTLSIdentityOnly;
- (BOOL)requiresUsernameAndPassword;
- (BOOL)shouldBeRemovedIfApplicationIsNoLongerInstalled;
- (NSDictionary)enterpriseProfile;
- (NSString)password;
- (WFNetworkProfile)initWithCoreWiFiProfile:(id)profile;
- (WFNetworkProfile)initWithNetwork:(id)network;
- (WFNetworkProfile)initWithNetworkRef:(__WiFiNetwork *)ref;
- (__SecIdentity)TLSIdentity;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)networkAttributes;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation WFNetworkProfile

- (id)networkAttributes
{
  selfCopy = self;
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  scanAttributes = [(WFNetworkProfile *)selfCopy scanAttributes];
  v5 = [v3 initWithDictionary:scanAttributes];

  enterpriseProfile = [(WFNetworkProfile *)selfCopy enterpriseProfile];

  if (enterpriseProfile)
  {
    enterpriseProfile2 = [(WFNetworkProfile *)selfCopy enterpriseProfile];
    [v5 setObject:enterpriseProfile2 forKey:*MEMORY[0x277D29850]];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[WFNetworkProfile isHidden](selfCopy, "isHidden")}];
  [v5 setObject:v8 forKey:@"HIDDEN_NETWORK"];

  isCaptive = [(WFNetworkProfile *)selfCopy isCaptive];
  v10 = MEMORY[0x277CBEC38];
  v11 = MEMORY[0x277CBEC28];
  if (isCaptive)
  {
    if ([(WFNetworkProfile *)selfCopy isAutoLoginEnabled])
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    [v5 setObject:v12 forKey:*MEMORY[0x277CF7F20]];
  }

  if ([(WFNetworkProfile *)selfCopy isInSaveDataMode])
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  [v5 setObject:v14 forKey:*MEMORY[0x277D29898]];

  if ([(WFNetworkProfile *)selfCopy isPrivacyProxyEnabled])
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  [v5 setObject:v15 forKey:*MEMORY[0x277D29880]];
  networkQualityDate = [(WFNetworkProfile *)selfCopy networkQualityDate];

  if (networkQualityDate)
  {
    networkQualityDate2 = [(WFNetworkProfile *)selfCopy networkQualityDate];
    [v5 setObject:networkQualityDate2 forKey:*MEMORY[0x277D29860]];

    v18 = MEMORY[0x277CCABB0];
    [(WFNetworkProfile *)selfCopy networkQualityResponsiveness];
    v19 = [v18 numberWithDouble:?];
    [v5 setObject:v19 forKey:*MEMORY[0x277D29868]];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    lastAssociationDate = [(WFNetworkProfile *)selfCopy lastAssociationDate];
    if (lastAssociationDate)
    {
      [v5 setObject:lastAssociationDate forKey:@"lastJoined"];
    }
  }

  originatorBundleIdentifier = [(WFNetworkProfile *)selfCopy originatorBundleIdentifier];

  if (originatorBundleIdentifier)
  {
    originatorBundleIdentifier2 = [(WFNetworkProfile *)selfCopy originatorBundleIdentifier];
    [v5 setObject:originatorBundleIdentifier2 forKey:*MEMORY[0x277D29840]];
  }

  hotspotDeviceIdentifier = [(WFNetworkProfile *)selfCopy hotspotDeviceIdentifier];

  if (hotspotDeviceIdentifier)
  {
    hotspotDeviceIdentifier2 = [(WFNetworkProfile *)selfCopy hotspotDeviceIdentifier];
    [v5 setObject:hotspotDeviceIdentifier2 forKey:@"HotspotDeviceIdentifier"];
  }

  [v5 removeObjectForKey:@"enabled"];
  [v5 removeObjectForKey:*MEMORY[0x277D29848]];
  v25 = objc_opt_new();
  randomMACAddress = [(WFNetworkProfile *)selfCopy randomMACAddress];
  uTF8String = [randomMACAddress UTF8String];

  if (uTF8String)
  {
    v28 = ether_aton(uTF8String);
    v29 = CFDataCreate(0, v28->octet, 6);
    [v25 setObject:v29 forKey:@"PRIVATE_MAC_ADDRESS_VALUE"];
  }

  if ([(WFNetworkProfile *)selfCopy isRandomMACAddressEnabled])
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithInt:v30];
  [v25 setObject:v31 forKey:@"PRIVATE_MAC_ADDRESS_TYPE"];

  [v5 setObject:v25 forKey:@"PRIVATE_MAC_ADDRESS"];

  return v5;
}

- (WFNetworkProfile)initWithNetworkRef:(__WiFiNetwork *)ref
{
  v95 = *MEMORY[0x277D85DE8];
  v88.receiver = self;
  v88.super_class = WFNetworkProfile;
  v4 = [(WFNetworkProfile *)&v88 init];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_70;
  }

  if (!ref)
  {
    [(WFNetworkProfile *)&v89 initWithNetworkRef:buf];
LABEL_69:
    v7 = *buf;

    goto LABEL_70;
  }

  v5 = MEMORY[0x277CBEAC0];
  v6 = WiFiNetworkCopyRecord();
  v7 = [v5 dictionaryWithDictionary:v6];

  if (!v7)
  {
LABEL_70:
    v8 = 0;
    goto LABEL_71;
  }

  v8 = [v7 objectForKey:@"SSID_STR"];
  v9 = [v7 objectForKey:@"HotspotDeviceIdentifier"];
  hotspotDeviceIdentifier = v4->_hotspotDeviceIdentifier;
  v4->_hotspotDeviceIdentifier = v9;

  if (!v8 || ![v8 length])
  {
    v11 = [v7 objectForKey:@"SSID"];
    if (!v11)
    {
LABEL_71:

      v20 = 0;
      v38 = 0;
      v73 = 0;
      v4 = 0;
      goto LABEL_65;
    }

    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];

    v8 = v13;
    if (v13)
    {
      goto LABEL_8;
    }

    [(WFNetworkProfile *)v7 initWithNetworkRef:buf];
    goto LABEL_69;
  }

LABEL_8:
  objc_storeStrong(&v4->_ssid, v8);
  v14 = WiFiNetworkGetProperty();
  bssid = v4->_bssid;
  v4->_bssid = v14;

  v4->_securityMode = WFSecurityModeFromScanDictionary(v7, &v4->_securityModeExt);
  v16 = *MEMORY[0x277D29850];
  v17 = WiFiNetworkGetProperty();
  enterpriseProfile = v4->_enterpriseProfile;
  v4->_enterpriseProfile = v17;

  v19 = [(NSDictionary *)v4->_enterpriseProfile objectForKey:@"EAPClientConfiguration"];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 objectForKey:@"TLSUserTrustProceedCertificateChain"];

    if (v21)
    {
      v22 = [v20 objectForKey:@"TLSUserTrustProceedCertificateChain"];
      certificateChain = v4->_certificateChain;
      v4->_certificateChain = v22;
    }
  }

  v4->_hidden = WiFiNetworkGetDirectedState() != 0;
  objc_storeStrong(&v4->_scanAttributes, v7);
  v24 = WFUserNameFromEnterpriseProfile(v4->_enterpriseProfile);
  username = v4->_username;
  v4->_username = v24;

  if (WiFiNetworkGetProperty())
  {
    v4->_managed = 1;
  }

  v26 = *MEMORY[0x277CF7F30];
  Property = WiFiNetworkGetProperty();
  if (Property)
  {
    v28 = Property;
    v29 = CFGetTypeID(Property);
    if (v29 == CFBooleanGetTypeID())
    {
      v4->_captive = CFBooleanGetValue(v28) != 0;
    }
  }

  v4->_adhoc = WiFiNetworkIsAdHoc() != 0;
  IsHotspot20 = WiFiNetworkIsHotspot20();
  if (IsHotspot20)
  {
    v4->_HS20NetworkProvisioned = WiFiNetworkIsProvisionedHS20Network() != 0;
    v31 = *MEMORY[0x277D297E0];
    v32 = WiFiNetworkGetProperty();
    v33 = v32;
    if (v32)
    {
      v34 = [v32 copy];
      HS20OperatorName = v4->_HS20OperatorName;
      v4->_HS20OperatorName = v34;
    }
  }

  v4->_HS20Network = IsHotspot20 != 0;
  v4->_autoJoinEnabled = WiFiNetworkIsEnabled() != 0;
  v36 = *MEMORY[0x277D29848];
  v37 = WiFiNetworkGetProperty();
  v38 = v37;
  if (!v4->_autoJoinEnabled && v37)
  {
    v39 = WFLogForCategory(0);
    v40 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v39 && os_log_type_enabled(v39, v40))
    {
      ssid = v4->_ssid;
      *buf = 136315650;
      *&buf[4] = "[WFNetworkProfile initWithNetworkRef:]";
      v91 = 2112;
      v92 = ssid;
      v93 = 2112;
      v94 = v38;
      _os_log_impl(&dword_273ECD000, v39, v40, "%s: %@ autojoin temporarily disabled until %@, overriding UI switch to show enabled", buf, 0x20u);
    }

    v4->_autoJoinEnabled = 1;
  }

  IsCarPlay = WiFiNetworkIsCarPlay();
  v4->_carPlay = IsCarPlay != 0;
  if (IsCarPlay)
  {
    Type = WiFiNetworkGetType();
    v44 = 1;
    if (Type != 1)
    {
      v44 = 2;
    }

    v4->_carPlayType = v44;
  }

  v45 = WiFiNetworkGetProperty();
  carPlayUUID = v4->_carPlayUUID;
  v4->_carPlayUUID = v45;

  v47 = WiFiNetworkGetProperty();
  policyUUID = v4->_policyUUID;
  v4->_policyUUID = v47;

  v49 = *MEMORY[0x277CF7F20];
  v50 = WiFiNetworkGetProperty();
  if (v50 && (v51 = v50, v52 = CFGetTypeID(v50), v52 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(v51);
    v4->_autoLoginEnabled = Value == 0;
    if (Value)
    {
      v54 = WFLogForCategory(0);
      v55 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v54 && os_log_type_enabled(v54, v55))
      {
        *buf = 138412290;
        *&buf[4] = ref;
        _os_log_impl(&dword_273ECD000, v54, v55, "Autologin disabled due to captive bypass for network %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4->_autoLoginEnabled = 1;
  }

  v4->_isInSaveDataMode = WiFiNetworkIsInSaveDataMode() != 0;
  v4->_isPrivacyProxyEnabled = WiFiNetworkGetPrivacyProxyEnabled() != 0;
  WiFiNetworkGetNetworkQualityResponsiveness();
  v4->_networkQualityResponsiveness = v56;
  v57 = WiFiNetworkGetNetworkQualityDate();
  networkQualityDate = v4->_networkQualityDate;
  v4->_networkQualityDate = v57;

  v4->_carrierBased = WiFiNetworkIsCarrierBundleBased() != 0;
  v4->_lastAutoJoinDate = WiFiNetworkGetAssociationDate();
  v4->_addedDate = WiFiNetworkGetAssociationDate();
  v59 = WiFiNetworkGetBundleIdentifier();
  originatorBundleIdentifier = v4->_originatorBundleIdentifier;
  v4->_originatorBundleIdentifier = v59;

  v61 = *MEMORY[0x277D29870];
  v62 = WiFiNetworkGetProperty();
  originatorName = v4->_originatorName;
  v4->_originatorName = v62;

  v64 = WiFiNetworkGetProperty();
  HS20AccountName = v4->_HS20AccountName;
  v4->_HS20AccountName = v64;

  v66 = WiFiNetworkGetHS2NetworkBadge();
  HS20Badge = v4->_HS20Badge;
  v4->_HS20Badge = v66;

  v4->_canExposeIMSI = WiFiNetworkCanExposeIMSI() != 0;
  v4->_requiresPassword = WiFiNetworkRequiresPassword() != 0;
  v4->_personalHotspot = WiFiNetworkIsApplePersonalHotspot() != 0;
  intValue = [WiFiNetworkGetProperty() intValue];
  if (intValue == 17)
  {
    v69 = 21;
  }

  else
  {
    if (intValue != 11)
    {
      goto LABEL_45;
    }

    v69 = 22;
  }

  *(&v4->super.isa + v69) = 1;
LABEL_45:
  Originator = WiFiNetworkGetOriginator();
  if (v4->_carrierBased)
  {
    v71 = 2;
LABEL_52:
    v4->_originator = v71;
    goto LABEL_53;
  }

  if (v4->_managed)
  {
    v71 = 3;
    goto LABEL_52;
  }

  if (!Originator)
  {
    v71 = 1;
    goto LABEL_52;
  }

  v4->_originator = 0;
LABEL_53:
  v72 = [v7 objectForKey:@"PRIVATE_MAC_ADDRESS"];
  v73 = v72;
  if (v72)
  {
    v74 = [v72 objectForKey:@"PRIVATE_MAC_ADDRESS_VALUE"];
    if (v74)
    {
      v75 = WFConvertEthernetNetworkAddressToString(v74);
      randomMACAddress = v4->_randomMACAddress;
      v4->_randomMACAddress = v75;
    }

    v77 = [v73 objectForKey:@"PRIVATE_MAC_ADDRESS_TYPE"];
    v4->_randomMACAddressEnabled = ([v77 intValue] & 0xFFFFFFFE) == 2;
    v78 = WFLogForCategory(0);
    v79 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v78 && os_log_type_enabled(v78, v79))
    {
      v80 = v4->_ssid;
      randomMACAddressEnabled = v4->_randomMACAddressEnabled;
      *buf = 136315650;
      *&buf[4] = "[WFNetworkProfile initWithNetworkRef:]";
      v91 = 2112;
      v92 = v80;
      v93 = 1024;
      LODWORD(v94) = randomMACAddressEnabled;
      _os_log_impl(&dword_273ECD000, v78, v79, "%s: %@ _randomMACAddressEnabled: %d", buf, 0x1Cu);
    }
  }

  else
  {
    v4->_randomMACAddressEnabled = 1;
  }

  v82 = WiFiNetworkGetProperty();
  if (v82)
  {
    v83 = v82;
    v84 = CFGetTypeID(v82);
    if (v84 == CFBooleanGetTypeID())
    {
      v4->_DNSHeuristicsFiltered = CFBooleanGetValue(v83) != 0;
    }
  }

LABEL_65:
  v85 = v4;

  v86 = *MEMORY[0x277D85DE8];
  return v85;
}

- (WFNetworkProfile)initWithNetwork:(id)network
{
  networkCopy = network;
  attributes = [networkCopy attributes];

  if (!attributes)
  {
    goto LABEL_5;
  }

  [networkCopy attributes];
  v6 = WiFiNetworkCreate();
  self = [(WFNetworkProfile *)self initWithNetworkRef:v6];
  if (v6)
  {
    CFRelease(v6);
  }

  if (!self)
  {
LABEL_5:

    self = 0;
  }

  return self;
}

- (WFNetworkProfile)initWithCoreWiFiProfile:(id)profile
{
  v4 = WiFiNetworkCreateFromCoreWiFiNetworkProfile();
  v5 = v4;

  return [(WFNetworkProfile *)self initWithNetworkRef:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(WFMutableNetworkProfile);
  ssid = [(WFNetworkProfile *)self ssid];
  v7 = [ssid copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setSsid:v7];

  bssid = [(WFNetworkProfile *)self bssid];
  v9 = [bssid copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setBssid:v9];

  username = [(WFNetworkProfile *)self username];
  v11 = [username copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setUsername:v11];

  password = [(WFNetworkProfile *)self password];
  v13 = [password copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setPassword:v13];

  [(WFMutableNetworkProfile *)v5 setSecurityMode:[(WFNetworkProfile *)self securityMode]];
  [(WFMutableNetworkProfile *)v5 setSecurityModeExt:[(WFNetworkProfile *)self securityModeExt]];
  enterpriseProfile = [(WFNetworkProfile *)self enterpriseProfile];
  v15 = [enterpriseProfile copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setEnterpriseProfile:v15];

  certificateChain = [(WFNetworkProfile *)self certificateChain];
  v17 = [certificateChain copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setCertificateChain:v17];

  scanAttributes = [(WFNetworkProfile *)self scanAttributes];
  v19 = [scanAttributes copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setScanAttributes:v19];

  enterpriseProfile2 = [(WFNetworkProfile *)self enterpriseProfile];
  v21 = [enterpriseProfile2 copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setEnterpriseProfile:v21];

  enterpriseProfile3 = [(WFNetworkProfile *)self enterpriseProfile];
  v23 = WFUserNameFromEnterpriseProfile(enterpriseProfile3);
  [(WFMutableNetworkProfile *)v5 setUsername:v23];

  username2 = [(WFMutableNetworkProfile *)v5 username];

  if (!username2)
  {
    username3 = [(WFNetworkProfile *)self username];
    v26 = [username3 copyWithZone:zone];
    [(WFMutableNetworkProfile *)v5 setUsername:v26];
  }

  password2 = [(WFNetworkProfile *)self password];
  v28 = [password2 copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setPassword:v28];

  [(WFMutableNetworkProfile *)v5 setManaged:[(WFNetworkProfile *)self isManaged]];
  [(WFMutableNetworkProfile *)v5 setCaptive:[(WFNetworkProfile *)self isCaptive]];
  [(WFNetworkProfile *)v5 setAdhoc:[(WFNetworkProfile *)self isAdhoc]];
  [(WFMutableNetworkProfile *)v5 setAutoJoinEnabled:[(WFNetworkProfile *)self isAutoJoinEnabled]];
  [(WFMutableNetworkProfile *)v5 setAutoLoginEnabled:[(WFNetworkProfile *)self isAutoLoginEnabled]];
  [(WFMutableNetworkProfile *)v5 setIsInSaveDataMode:[(WFNetworkProfile *)self isInSaveDataMode]];
  [(WFMutableNetworkProfile *)v5 setIsPrivacyProxyEnabled:[(WFNetworkProfile *)self isPrivacyProxyEnabled]];
  [(WFNetworkProfile *)self networkQualityResponsiveness];
  [(WFMutableNetworkProfile *)v5 setNetworkQualityResponsiveness:?];
  networkQualityDate = [(WFNetworkProfile *)self networkQualityDate];
  v30 = [networkQualityDate copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setNetworkQualityDate:v30];

  [(WFMutableNetworkProfile *)v5 setHidden:[(WFNetworkProfile *)self isHidden]];
  policyUUID = [(WFNetworkProfile *)self policyUUID];
  [(WFNetworkProfile *)v5 setPolicyUUID:policyUUID];

  carPlayUUID = [(WFNetworkProfile *)self carPlayUUID];
  [(WFNetworkProfile *)v5 setCarPlayUUID:carPlayUUID];

  [(WFNetworkProfile *)v5 setCarPlay:[(WFNetworkProfile *)self isCarPlay]];
  [(WFNetworkProfile *)v5 setCarPlayType:[(WFNetworkProfile *)self carPlayType]];
  [(WFMutableNetworkProfile *)v5 setTLSIdentity:[(WFNetworkProfile *)self TLSIdentity]];
  policyUUID2 = [(WFNetworkProfile *)self policyUUID];
  [(WFNetworkProfile *)v5 setPolicyUUID:policyUUID2];

  originatorBundleIdentifier = [(WFNetworkProfile *)self originatorBundleIdentifier];
  [(WFMutableNetworkProfile *)v5 setOriginatorBundleIdentifier:originatorBundleIdentifier];

  originatorName = [(WFNetworkProfile *)self originatorName];
  [(WFMutableNetworkProfile *)v5 setOriginatorName:originatorName];

  [(WFMutableNetworkProfile *)v5 setHS20Network:[(WFNetworkProfile *)self isHS20Network]];
  [(WFMutableNetworkProfile *)v5 setHS20NetworkProvisioned:[(WFNetworkProfile *)self isHS20NetworkProvisioned]];
  [(WFNetworkProfile *)v5 setCarrierBased:[(WFNetworkProfile *)self isCarrierBased]];
  [(WFNetworkProfile *)v5 setProfileBased:[(WFNetworkProfile *)self isProfileBased]];
  [(WFMutableNetworkProfile *)v5 setAddedFromWiFiPasswordSharing:[(WFNetworkProfile *)self wasAddedFromWiFiPasswordSharing]];
  hS20AccountName = [(WFNetworkProfile *)self HS20AccountName];
  v37 = [hS20AccountName copyWithZone:zone];
  [(WFNetworkProfile *)v5 setHS20AccountName:v37];

  hS20Badge = [(WFNetworkProfile *)self HS20Badge];
  v39 = [hS20Badge copyWithZone:zone];
  [(WFNetworkProfile *)v5 setHS20Badge:v39];

  [(WFNetworkProfile *)v5 setCanExposeIMSI:[(WFNetworkProfile *)self canExposeIMSI]];
  [(WFNetworkProfile *)v5 setRequiresPassword:[(WFNetworkProfile *)self requiresPassword]];
  [(WFNetworkProfile *)v5 setFetchedPassword:0];
  [(WFMutableNetworkProfile *)v5 setUserProvidedPassword:[(WFNetworkProfile *)self userProvidedPassword]];
  [(WFNetworkProfile *)v5 setPersonalHotspot:[(WFNetworkProfile *)self isPersonalHotspot]];
  [(WFMutableNetworkProfile *)v5 setInstantHotspotJoin:[(WFNetworkProfile *)self isInstantHotspotJoin]];
  hotspotDeviceIdentifier = [(WFNetworkProfile *)self hotspotDeviceIdentifier];
  [(WFMutableNetworkProfile *)v5 setHotspotDeviceIdentifier:hotspotDeviceIdentifier];

  [(WFMutableNetworkProfile *)v5 setRandomMACAddressEnabled:[(WFNetworkProfile *)self isRandomMACAddressEnabled]];
  randomMACAddress = [(WFNetworkProfile *)self randomMACAddress];
  v42 = [randomMACAddress copyWithZone:zone];
  [(WFMutableNetworkProfile *)v5 setRandomMACAddress:v42];

  [(WFNetworkProfile *)v5 setDNSHeuristicsFiltered:[(WFNetworkProfile *)self isDNSHeuristicsFiltered]];
  hS20OperatorName = [(WFNetworkProfile *)self HS20OperatorName];
  v44 = [hS20OperatorName copyWithZone:zone];
  [(WFNetworkProfile *)v5 setHS20OperatorName:v44];

  return v5;
}

- (void)dealloc
{
  TLSIdentity = self->_TLSIdentity;
  if (TLSIdentity)
  {
    CFRelease(TLSIdentity);
    self->_TLSIdentity = 0;
  }

  v4.receiver = self;
  v4.super_class = WFNetworkProfile;
  [(WFNetworkProfile *)&v4 dealloc];
}

- (BOOL)requiresUsernameAndPassword
{
  isEnterprise = [(WFNetworkProfile *)self isEnterprise];
  if (isEnterprise)
  {
    LOBYTE(isEnterprise) = ![(WFNetworkProfile *)self requiresTLSIdentityOnly];
  }

  return isEnterprise;
}

- (BOOL)TLSProfileCanJoin
{
  if (![(WFNetworkProfile *)self requiresTLSIdentityOnly])
  {
    return 0;
  }

  if ([(WFNetworkProfile *)self TLSIdentity])
  {
    return 1;
  }

  enterpriseProfile = [(WFNetworkProfile *)self enterpriseProfile];
  v5 = [enterpriseProfile objectForKey:@"EAPClientConfiguration"];
  v6 = [v5 objectForKey:@"TLSIdentityHandle"];
  v3 = v6 != 0;

  return v3;
}

- (BOOL)requiresTLSIdentityOnly
{
  enterpriseProfile = [(WFNetworkProfile *)self enterpriseProfile];
  v3 = [enterpriseProfile objectForKey:@"EAPClientConfiguration"];
  v4 = [v3 objectForKey:@"AcceptEAPTypes"];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:13];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (NSDictionary)enterpriseProfile
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(WFNetworkProfile *)self isEnterprise]|| [(WFNetworkProfile *)self isHS20Network])
  {
    if (self->_enterpriseProfile)
    {
      [dictionary addEntriesFromDictionary:?];
    }

    v4 = [dictionary objectForKey:@"EAPClientConfiguration"];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v6 = dictionary2;
    if (v4)
    {
      [dictionary2 addEntriesFromDictionary:v4];
    }

    v7 = [v6 objectForKey:@"AcceptEAPTypes"];

    if (!v7)
    {
      if (self->_TLSIdentity)
      {
        v8 = &unk_288304F48;
      }

      else
      {
        v8 = &unk_288304F60;
      }

      [v6 setObject:v8 forKey:@"AcceptEAPTypes"];
    }

    username = [(WFNetworkProfile *)self username];
    v10 = [username length];

    if (v10)
    {
      username2 = [(WFNetworkProfile *)self username];
      [v6 setObject:username2 forKey:@"UserName"];
    }

    password = [(WFNetworkProfile *)self password];
    v13 = [password length];

    if (v13)
    {
      password2 = [(WFNetworkProfile *)self password];
      [v6 setObject:password2 forKey:@"UserPassword"];
    }

    certificateChain = [(WFNetworkProfile *)self certificateChain];

    if (certificateChain)
    {
      certificateChain2 = [(WFNetworkProfile *)self certificateChain];
      [v6 setObject:certificateChain2 forKey:@"TLSUserTrustProceedCertificateChain"];

      [v6 setObject:MEMORY[0x277CBEC38] forKey:@"TLSSaveTrustExceptions"];
    }

    [dictionary setObject:v6 forKey:@"EAPClientConfiguration"];
    [dictionary setObject:MEMORY[0x277CBEC28] forKey:@"EnableUserInterface"];
    v17 = dictionary;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)isEnterprise
{
  v3 = self->_enterpriseProfile;
  if ([(WFNetworkProfile *)self isHS20Network])
  {
    v4 = ![(WFNetworkProfile *)self isHS20NetworkProvisioned];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if ([(WFNetworkProfile *)self isHS20Network]&& [(WFNetworkProfile *)self isHS20NetworkProvisioned])
  {
    v5 = 0;
  }

  else
  {
    if (v3)
    {
      v6 = [(WFNetworkProfile *)self profileContainsCarrierEAPType:v3];
    }

    else
    {
      v6 = 0;
    }

    if (WFSecurityModeIsEnterprise([(WFNetworkProfile *)self securityMode]))
    {
      v5 = 1;
    }

    else
    {
      v5 = v6 | v4;
    }
  }

  return v5 & 1;
}

- (BOOL)profileContainsEAPSIM:(id)m
{
  v3 = [m objectForKey:@"EAPClientConfiguration"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"AcceptEAPTypes"];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)profileContainsEAPAKA:(id)a
{
  v3 = [a objectForKey:@"EAPClientConfiguration"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"AcceptEAPTypes"];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:23];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)profileContainsCarrierEAPType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v5 = [(WFNetworkProfile *)self profileContainsEAPSIM:typeCopy]|| [(WFNetworkProfile *)self profileContainsEAPAKA:typeCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canAttemptJoin
{
  v32 = *MEMORY[0x277D85DE8];
  securityMode = [(WFNetworkProfile *)self securityMode];
  enterpriseProfile = [(WFNetworkProfile *)self enterpriseProfile];
  password = [(WFNetworkProfile *)self password];
  v6 = WFValidPasswordForSecurityMode(securityMode, password);

  v7 = WFSecurityModeRequiresPasswordOnly(securityMode);
  requiresUsernameAndPassword = [(WFNetworkProfile *)self requiresUsernameAndPassword];
  if ([(WFNetworkProfile *)self requiresTLSIdentityOnly])
  {
    if ([(WFNetworkProfile *)self TLSIdentity])
    {
      v9 = 1;
    }

    else
    {
      v10 = [enterpriseProfile objectForKey:@"EAPClientConfiguration"];
      v11 = [v10 objectForKey:@"TLSIdentityHandle"];
      v9 = v11 != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = [(WFNetworkProfile *)self profileContainsCarrierEAPType:enterpriseProfile];
  if ([(WFNetworkProfile *)self isHS20Network])
  {
    isHS20NetworkProvisioned = [(WFNetworkProfile *)self isHS20NetworkProvisioned];
  }

  else
  {
    isHS20NetworkProvisioned = 0;
  }

  v14 = v7 & v6;
  v15 = requiresUsernameAndPassword & v6;
  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v16 && os_log_type_enabled(v16, v17))
  {
    v20 = 136316418;
    v21 = "[WFNetworkProfile canAttemptJoin]";
    v22 = 1024;
    v23 = v9;
    v24 = 1024;
    v25 = v15;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = isHS20NetworkProvisioned;
    _os_log_impl(&dword_273ECD000, v16, v17, "%s: tlsProfileCanJoin %d, automaticProfileCanJoin %d, passwordOnlyCanJoin %d, isEAPSimOrAKA %d, isHS20Provisioned %d", &v20, 0x2Au);
  }

  v18 = *MEMORY[0x277D85DE8];
  return (securityMode == 0) | v14 & 1 | (v15 | v9) & 1 | (v12 || isHS20NetworkProvisioned);
}

- (NSString)password
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_fetchedPassword)
  {
    goto LABEL_25;
  }

  if (!self->_requiresPassword)
  {
LABEL_24:
    self->_fetchedPassword = 1;
LABEL_25:
    p_password = &self->_password;
    goto LABEL_26;
  }

  if (![(WFNetworkProfile *)self userProvidedPassword]|| (p_password = &self->_password, !self->_password))
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, v7))
      {
        ssid = [(WFNetworkProfile *)self ssid];
        v20 = 136315394;
        v21 = "[WFNetworkProfile password]";
        v22 = 2112;
        v23 = ssid;
        _os_log_impl(&dword_273ECD000, v8, v7, "%s: fetching password from keychain for %@", &v20, 0x16u);
      }
    }

    [(WFNetworkProfile *)self scanAttributes];
    v10 = WiFiNetworkCreate();
    v11 = WiFiNetworkCopyPassword();
    password = self->_password;
    self->_password = v11;

    if (!self->_password)
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v13)
      {
        v15 = v13;
        if (os_log_type_enabled(v15, v14))
        {
          ssid2 = [(WFNetworkProfile *)self ssid];
          v20 = 136315394;
          v21 = "[WFNetworkProfile password]";
          v22 = 2114;
          v23 = ssid2;
          _os_log_impl(&dword_273ECD000, v15, v14, "%s: password is nil for %{public}@", &v20, 0x16u);
        }
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }

    goto LABEL_24;
  }

  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    v20 = 136315138;
    v21 = "[WFNetworkProfile password]";
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: user provided password marking password as fetched", &v20, 0xCu);
  }

  self->_fetchedPassword = 1;
LABEL_26:
  v17 = *p_password;
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ssid = [(WFNetworkProfile *)self ssid];
  bssid = [(WFNetworkProfile *)self bssid];
  v8 = WFStringFromWFSecurityMode([(WFNetworkProfile *)self securityMode]);
  v9 = WFStringFromWFSecurityModeExt([(WFNetworkProfile *)self securityModeExt]);
  v10 = [v3 stringWithFormat:@"<%@ : %p SSID:%@ BSSID:%@ security:%@ securityExt %@", v5, self, ssid, bssid, v8, v9];

  if ([(WFNetworkProfile *)self requiresPassword])
  {
    v11 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @" pwd:(");
    [v11 appendFormat:@"fetched=%d", -[WFNetworkProfile fetchedPassword](self, "fetchedPassword")];
    if ([(WFNetworkProfile *)self fetchedPassword])
    {
      password = [(WFNetworkProfile *)self password];
      [v11 appendFormat:@", valid=%d", password != 0];
    }

    if ([(WFNetworkProfile *)self userProvidedPassword])
    {
      [v11 appendFormat:@", userProvided=1"];
    }

    [v11 appendString:@""]);
    [v10 appendString:v11];
  }

  [v10 appendFormat:@" auto-join=%d, auto-login=%d, data-saver=%d, privacy-proxy=%d", -[WFNetworkProfile isAutoJoinEnabled](self, "isAutoJoinEnabled"), -[WFNetworkProfile isAutoLoginEnabled](self, "isAutoLoginEnabled"), -[WFNetworkProfile isInSaveDataMode](self, "isInSaveDataMode"), -[WFNetworkProfile isPrivacyProxyEnabled](self, "isPrivacyProxyEnabled")];
  [(WFNetworkProfile *)self networkQualityResponsiveness];
  v14 = v13;
  networkQualityDate = [(WFNetworkProfile *)self networkQualityDate];
  [v10 appendFormat:@" responsiveness=%.3f (%@)", v14, networkQualityDate];

  if ([(WFNetworkProfile *)self isHidden])
  {
    [v10 appendString:{@", hidden"}];
  }

  if ([(WFNetworkProfile *)self isManaged])
  {
    [v10 appendString:{@", managed"}];
  }

  if ([(WFNetworkProfile *)self isCaptive])
  {
    [v10 appendString:{@", isCaptive"}];
  }

  if ([(WFNetworkProfile *)self isAdhoc])
  {
    [v10 appendString:{@", adhoc"}];
  }

  if ([(WFNetworkProfile *)self isHS20Network])
  {
    [v10 appendFormat:@", hs20(provisioned=%d)", -[WFNetworkProfile isHS20NetworkProvisioned](self, "isHS20NetworkProvisioned")];
  }

  if ([(WFNetworkProfile *)self isCarPlay])
  {
    carPlayType = [(WFNetworkProfile *)self carPlayType];
    v17 = @",CarPlayUserConfigured";
    if (carPlayType == 1)
    {
      v17 = @",CarPlayOnly";
    }

    [v10 appendFormat:@", %@", v17];
  }

  originatorBundleIdentifier = [(WFNetworkProfile *)self originatorBundleIdentifier];

  if (originatorBundleIdentifier)
  {
    originatorBundleIdentifier2 = [(WFNetworkProfile *)self originatorBundleIdentifier];
    [v10 appendFormat:@", originatorBundle:%@", originatorBundleIdentifier2];
  }

  originatorName = [(WFNetworkProfile *)self originatorName];

  if (originatorName)
  {
    originatorName2 = [(WFNetworkProfile *)self originatorName];
    [v10 appendFormat:@", originatorName:%@", originatorName2];
  }

  if ([(WFNetworkProfile *)self isDNSHeuristicsFiltered])
  {
    [v10 appendString:{@", dnsFiltered"}];
  }

  if ([(WFNetworkProfile *)self isRandomMACAddressEnabled])
  {
    v22 = @" RandomMAC enabled!";
  }

  else
  {
    v22 = @" RandomMAC disabled!";
  }

  [v10 appendString:v22];
  randomMACAddress = [(WFNetworkProfile *)self randomMACAddress];

  if (randomMACAddress)
  {
    v24 = MEMORY[0x277CCACA8];
    randomMACAddress2 = [(WFNetworkProfile *)self randomMACAddress];
    v26 = [v24 stringWithFormat:@" Random MAC: %@", randomMACAddress2];
    [v10 appendString:v26];
  }

  [v10 appendString:@">"];

  return v10;
}

- (BOOL)isEqualToNetwork:(id)network
{
  networkCopy = network;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ssid = [(WFNetworkProfile *)self ssid];
    ssid2 = [networkCopy ssid];
    if ([ssid isEqualToString:ssid2])
    {
      securityMode = [(WFNetworkProfile *)self securityMode];
      v8 = securityMode == [networkCopy securityMode];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  randomMACAddress = [(WFNetworkProfile *)self randomMACAddress];
  if (!randomMACAddress)
  {
    randomMACAddress2 = [equalCopy randomMACAddress];
    if (!randomMACAddress2)
    {
      v9 = 1;
LABEL_7:

      goto LABEL_8;
    }
  }

  randomMACAddress3 = [(WFNetworkProfile *)self randomMACAddress];
  randomMACAddress4 = [equalCopy randomMACAddress];
  v9 = [randomMACAddress3 isEqualToString:randomMACAddress4];

  if (!randomMACAddress)
  {
    goto LABEL_7;
  }

LABEL_8:

  ssid = [(WFNetworkProfile *)self ssid];
  ssid2 = [equalCopy ssid];
  if (![ssid isEqualToString:ssid2])
  {
    goto LABEL_20;
  }

  securityMode = [(WFNetworkProfile *)self securityMode];
  if (securityMode != [equalCopy securityMode])
  {
    goto LABEL_20;
  }

  isAutoJoinEnabled = [(WFNetworkProfile *)self isAutoJoinEnabled];
  if (isAutoJoinEnabled != [equalCopy isAutoJoinEnabled])
  {
    goto LABEL_20;
  }

  isAutoLoginEnabled = [(WFNetworkProfile *)self isAutoLoginEnabled];
  if (isAutoLoginEnabled != [equalCopy isAutoLoginEnabled])
  {
    goto LABEL_20;
  }

  isInSaveDataMode = [(WFNetworkProfile *)self isInSaveDataMode];
  if (isInSaveDataMode != [equalCopy isInSaveDataMode])
  {
    goto LABEL_20;
  }

  isPrivacyProxyEnabled = [(WFNetworkProfile *)self isPrivacyProxyEnabled];
  if (isPrivacyProxyEnabled == [equalCopy isPrivacyProxyEnabled] && (v17 = -[WFNetworkProfile isHidden](self, "isHidden"), v17 == objc_msgSend(equalCopy, "isHidden")) && (v18 = -[WFNetworkProfile carPlayType](self, "carPlayType"), v18 == objc_msgSend(equalCopy, "carPlayType")) && (v19 = -[WFNetworkProfile isManaged](self, "isManaged"), v19 == objc_msgSend(equalCopy, "isManaged")) && (v20 = -[WFNetworkProfile isHS20Network](self, "isHS20Network"), v20 == objc_msgSend(equalCopy, "isHS20Network")) && (v21 = -[WFNetworkProfile isCaptive](self, "isCaptive"), v21 == objc_msgSend(equalCopy, "isCaptive")) && (v22 = -[WFNetworkProfile isRandomMACAddressEnabled](self, "isRandomMACAddressEnabled"), v22 == objc_msgSend(equalCopy, "isRandomMACAddressEnabled")))
  {

    if (v9)
    {
      v23 = 1;
      goto LABEL_22;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v23 = 0;
LABEL_22:

  return v23;
}

- (unint64_t)hash
{
  ssid = [(WFNetworkProfile *)self ssid];
  v4 = [ssid hash];
  v5 = [(WFNetworkProfile *)self securityMode]^ v4;
  v6 = v5 ^ [(WFNetworkProfile *)self isAutoJoinEnabled];
  isAutoLoginEnabled = [(WFNetworkProfile *)self isAutoLoginEnabled];
  v8 = v6 ^ isAutoLoginEnabled ^ [(WFNetworkProfile *)self isInSaveDataMode];
  isPrivacyProxyEnabled = [(WFNetworkProfile *)self isPrivacyProxyEnabled];
  v10 = isPrivacyProxyEnabled ^ [(WFNetworkProfile *)self isHidden];
  v11 = v8 ^ v10 ^ [(WFNetworkProfile *)self carPlayType];
  isManaged = [(WFNetworkProfile *)self isManaged];
  v13 = isManaged ^ [(WFNetworkProfile *)self isHS20Network];
  v14 = v13 ^ [(WFNetworkProfile *)self isCaptive];
  v15 = v11 ^ v14 ^ [(WFNetworkProfile *)self isRandomMACAddressEnabled];
  randomMACAddress = [(WFNetworkProfile *)self randomMACAddress];
  v17 = [randomMACAddress hash];

  return v15 ^ v17;
}

+ (BOOL)networkProfileRepresentSameNetwork:(id)network toNetworkProfile:(id)profile
{
  networkCopy = network;
  profileCopy = profile;
  ssid = [networkCopy ssid];
  ssid2 = [profileCopy ssid];
  if ([ssid isEqualToString:ssid2])
  {
    if (WFIsSecurityModeMatch([networkCopy securityModeExt], objc_msgSend(profileCopy, "securityModeExt")))
    {
      IsEquivalentWPA = 1;
    }

    else
    {
      IsEquivalentWPA = WFSecurityModeIsEquivalentWPA([networkCopy securityMode], objc_msgSend(profileCopy, "securityMode"));
    }
  }

  else
  {
    IsEquivalentWPA = 0;
  }

  return IsEquivalentWPA;
}

- (__SecIdentity)TLSIdentity
{
  v19 = *MEMORY[0x277D85DE8];
  TLSIdentity = self->_TLSIdentity;
  if (TLSIdentity)
  {
    v7 = 0;
    v5 = 0;
  }

  else
  {
    enterpriseProfile = [(WFNetworkProfile *)self enterpriseProfile];
    v5 = enterpriseProfile;
    if (enterpriseProfile)
    {
      v6 = [enterpriseProfile objectForKey:@"EAPClientConfiguration"];
      v7 = v6;
      if (v6 && [v6 objectForKey:@"TLSIdentityHandle"])
      {
        SecIdentity = EAPSecIdentityHandleCreateSecIdentity();
        v11 = WFLogForCategory(0);
        v12 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v12))
        {
          *buf = 136315650;
          v14 = "[WFNetworkProfile TLSIdentity]";
          v15 = 1024;
          v16 = SecIdentity;
          v17 = 2112;
          selfCopy = self;
          _os_log_impl(&dword_273ECD000, v11, v12, "%s: failed to create TLS identity (err %d) %@", buf, 0x1Cu);
        }

        TLSIdentity = 0;
      }

      else
      {
        TLSIdentity = 0;
      }
    }

    else
    {
      TLSIdentity = 0;
      v7 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return TLSIdentity;
}

- (void)initWithNetworkRef:(void *)a3 .cold.1(uint64_t a1, NSObject **a2, void *a3)
{
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
  {
    *v8 = 0;
    _os_log_impl(&dword_273ECD000, v6, v7, "Missing ssid for network profile", v8, 2u);
  }

  *a3 = a1;
  *a2 = v6;
}

- (void)initWithNetworkRef:(NSObject *)a1 .cold.2(NSObject **a1, void *a2)
{
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    *v6 = 0;
    _os_log_impl(&dword_273ECD000, v4, v5, "nil networkRef for network profile", v6, 2u);
  }

  *a2 = 0;
  *a1 = v4;
}

- (BOOL)shouldBeRemovedIfApplicationIsNoLongerInstalled
{
  v20 = *MEMORY[0x277D85DE8];
  originatorBundleIdentifier = [(WFNetworkProfile *)self originatorBundleIdentifier];

  if (!originatorBundleIdentifier)
  {
    goto LABEL_16;
  }

  originatorBundleIdentifier2 = [(WFNetworkProfile *)self originatorBundleIdentifier];
  v5 = [originatorBundleIdentifier2 rangeOfString:@"com.apple" options:1];

  if (!v5)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
    {
      *v17 = 136315394;
      OUTLINED_FUNCTION_0_9();
      _os_log_impl(&dword_273ECD000, v11, v12, "%s: application based network (%@) is configured by first party app", v17, 0x16u);
    }

    goto LABEL_15;
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  originatorBundleIdentifier3 = [(WFNetworkProfile *)self originatorBundleIdentifier];
  v8 = [defaultWorkspace applicationIsInstalled:originatorBundleIdentifier3];

  if (v8)
  {
    v11 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v11)
    {
      v11 = v11;
      if (os_log_type_enabled(v11, v13))
      {
        originatorBundleIdentifier4 = [(WFNetworkProfile *)self originatorBundleIdentifier];
        *v17 = 136315650;
        OUTLINED_FUNCTION_0_9();
        v18 = v15;
        v19 = v16;
        _os_log_impl(&dword_273ECD000, v11, v13, "%s: application based network (%@) with identifier %@ is not installed", v17, 0x20u);
      }
    }

LABEL_15:

LABEL_16:
    result = 0;
    goto LABEL_5;
  }

  result = 1;
LABEL_5:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

@end