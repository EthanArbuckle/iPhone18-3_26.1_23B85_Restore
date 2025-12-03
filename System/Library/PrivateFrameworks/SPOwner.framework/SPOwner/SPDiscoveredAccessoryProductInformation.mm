@interface SPDiscoveredAccessoryProductInformation
- (SPDiscoveredAccessoryProductInformation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPDiscoveredAccessoryProductInformation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setBeaconGroupVersion:{-[SPDiscoveredAccessoryProductInformation beaconGroupVersion](self, "beaconGroupVersion")}];
  [v4 setEligibleForPairing:{-[SPDiscoveredAccessoryProductInformation eligibleForPairing](self, "eligibleForPairing")}];
  [v4 setHidden:{-[SPDiscoveredAccessoryProductInformation hidden](self, "hidden")}];
  [v4 setIsHELEAccessory:{-[SPDiscoveredAccessoryProductInformation isHELEAccessory](self, "isHELEAccessory")}];
  [v4 setIsManagedAccessory:{-[SPDiscoveredAccessoryProductInformation isManagedAccessory](self, "isManagedAccessory")}];
  [v4 setSupportBeaconGroupInfo:{-[SPDiscoveredAccessoryProductInformation supportBeaconGroupInfo](self, "supportBeaconGroupInfo")}];
  findmyProductId = [(SPDiscoveredAccessoryProductInformation *)self findmyProductId];
  v6 = [findmyProductId copy];
  [v4 setFindmyProductId:v6];

  modelName = [(SPDiscoveredAccessoryProductInformation *)self modelName];
  v8 = [modelName copy];
  [v4 setModelName:v8];

  manufacturerName = [(SPDiscoveredAccessoryProductInformation *)self manufacturerName];
  v10 = [manufacturerName copy];
  [v4 setManufacturerName:v10];

  defaultRole = [(SPDiscoveredAccessoryProductInformation *)self defaultRole];
  v12 = [defaultRole copy];
  [v4 setDefaultRole:v12];

  appBundleIdentifier = [(SPDiscoveredAccessoryProductInformation *)self appBundleIdentifier];
  v14 = [appBundleIdentifier copy];
  [v4 setAppBundleIdentifier:v14];

  lowBatteryInfoURL = [(SPDiscoveredAccessoryProductInformation *)self lowBatteryInfoURL];
  v16 = [lowBatteryInfoURL copy];
  [v4 setLowBatteryInfoURL:v16];

  disableURL = [(SPDiscoveredAccessoryProductInformation *)self disableURL];
  v18 = [disableURL copy];
  [v4 setDisableURL:v18];

  version = [(SPDiscoveredAccessoryProductInformation *)self version];
  v20 = [version copy];
  [v4 setVersion:v20];

  encryptionKeyE1 = [(SPDiscoveredAccessoryProductInformation *)self encryptionKeyE1];
  v22 = [encryptionKeyE1 copy];
  [v4 setEncryptionKeyE1:v22];

  encryptionKeyE2 = [(SPDiscoveredAccessoryProductInformation *)self encryptionKeyE2];
  v24 = [encryptionKeyE2 copy];
  [v4 setEncryptionKeyE2:v24];

  verificationKeyS2 = [(SPDiscoveredAccessoryProductInformation *)self verificationKeyS2];
  v26 = [verificationKeyS2 copy];
  [v4 setVerificationKeyS2:v26];

  [(SPDiscoveredAccessoryProductInformation *)self txPower];
  [v4 setTxPower:?];
  [(SPDiscoveredAccessoryProductInformation *)self rangeDistanceInMeters];
  [v4 setRangeDistanceInMeters:?];
  [v4 setIsAirTag:{-[SPDiscoveredAccessoryProductInformation isAirTag](self, "isAirTag")}];
  [v4 setIsAppleAudioAccessory:{-[SPDiscoveredAccessoryProductInformation isAppleAudioAccessory](self, "isAppleAudioAccessory")}];
  [v4 setCapabilities:{-[SPDiscoveredAccessoryProductInformation capabilities](self, "capabilities")}];
  layoutTemplate = [(SPDiscoveredAccessoryProductInformation *)self layoutTemplate];
  v28 = [layoutTemplate copy];
  [v4 setLayoutTemplate:v28];

  defaultHeroIcon = [(SPDiscoveredAccessoryProductInformation *)self defaultHeroIcon];
  v30 = [defaultHeroIcon copy];
  [v4 setDefaultHeroIcon:v30];

  defaultListIcon = [(SPDiscoveredAccessoryProductInformation *)self defaultListIcon];
  v32 = [defaultListIcon copy];
  [v4 setDefaultListIcon:v32];

  defaultHeroIcon2x = [(SPDiscoveredAccessoryProductInformation *)self defaultHeroIcon2x];
  v34 = [defaultHeroIcon2x copy];
  [v4 setDefaultHeroIcon2x:v34];

  defaultListIcon2x = [(SPDiscoveredAccessoryProductInformation *)self defaultListIcon2x];
  v36 = [defaultListIcon2x copy];
  [v4 setDefaultListIcon2x:v36];

  defaultHeroIcon3x = [(SPDiscoveredAccessoryProductInformation *)self defaultHeroIcon3x];
  v38 = [defaultHeroIcon3x copy];
  [v4 setDefaultHeroIcon3x:v38];

  defaultListIcon3x = [(SPDiscoveredAccessoryProductInformation *)self defaultListIcon3x];
  v40 = [defaultListIcon3x copy];
  [v4 setDefaultListIcon3x:v40];

  learnModeMetadata = [(SPDiscoveredAccessoryProductInformation *)self learnModeMetadata];
  v42 = [learnModeMetadata copy];
  [v4 setLearnModeMetadata:v42];

  disableMetadata = [(SPDiscoveredAccessoryProductInformation *)self disableMetadata];
  v44 = [disableMetadata copy];
  [v4 setDisableMetadata:v44];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  beaconGroupVersion = self->_beaconGroupVersion;
  coderCopy = coder;
  [coderCopy encodeInteger:beaconGroupVersion forKey:@"beaconGroupVersion"];
  [coderCopy encodeBool:self->_eligibleForPairing forKey:@"eligibleForPairing"];
  [coderCopy encodeBool:self->_hidden forKey:@"hidden"];
  [coderCopy encodeBool:self->_isHELEAccessory forKey:@"isHELEAccessory"];
  [coderCopy encodeBool:self->_isManagedAccessory forKey:@"isManagedAccessory"];
  [coderCopy encodeBool:self->_supportBeaconGroupInfo forKey:@"supportBeaconGroupInfo"];
  [coderCopy encodeObject:self->_findmyProductId forKey:@"findmyProductId"];
  [coderCopy encodeObject:self->_modelName forKey:@"modelName"];
  [coderCopy encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [coderCopy encodeObject:self->_defaultRole forKey:@"defaultRole"];
  [coderCopy encodeObject:self->_appBundleIdentifier forKey:@"appBundleIdentifier"];
  [coderCopy encodeObject:self->_lowBatteryInfoURL forKey:@"lowBatteryInfoURL"];
  [coderCopy encodeObject:self->_disableURL forKey:@"disableURL"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
  [coderCopy encodeObject:self->_encryptionKeyE1 forKey:@"encryptionKeyE1"];
  [coderCopy encodeObject:self->_encryptionKeyE2 forKey:@"encryptionKeyE2"];
  [coderCopy encodeObject:self->_verificationKeyS2 forKey:@"verificationKeyS2"];
  [coderCopy encodeDouble:@"txPower" forKey:self->_txPower];
  [coderCopy encodeDouble:@"rangeDistanceInMeters" forKey:self->_rangeDistanceInMeters];
  [coderCopy encodeBool:self->_isAirTag forKey:@"isAirTag"];
  [coderCopy encodeBool:self->_isAppleAudioAccessory forKey:@"isAppleAudioAccessory"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_capabilities];
  [coderCopy encodeObject:v5 forKey:@"capabilities"];

  [coderCopy encodeObject:self->_layoutTemplate forKey:@"layoutTemplate"];
  [coderCopy encodeObject:self->_defaultHeroIcon forKey:@"defaultHeroIcon"];
  [coderCopy encodeObject:self->_defaultListIcon forKey:@"defaultListIcon"];
  [coderCopy encodeObject:self->_defaultHeroIcon2x forKey:@"defaultHeroIcon2x"];
  [coderCopy encodeObject:self->_defaultListIcon2x forKey:@"defaultListIcon2x"];
  [coderCopy encodeObject:self->_defaultHeroIcon3x forKey:@"defaultHeroIcon3x"];
  [coderCopy encodeObject:self->_defaultListIcon3x forKey:@"defaultListIcon3x"];
  [coderCopy encodeObject:self->_learnModeMetadata forKey:@"learnModeMetadata"];
  [coderCopy encodeObject:self->_disableMetadata forKey:@"disableMetadata"];
}

- (SPDiscoveredAccessoryProductInformation)initWithCoder:(id)coder
{
  v53[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  self->_beaconGroupVersion = [coderCopy decodeIntegerForKey:@"beaconGroupVersion"];
  self->_eligibleForPairing = [coderCopy decodeBoolForKey:@"eligibleForPairing"];
  self->_hidden = [coderCopy decodeBoolForKey:@"hidden"];
  self->_isHELEAccessory = [coderCopy decodeBoolForKey:@"isHELEAccessory"];
  self->_isManagedAccessory = [coderCopy decodeBoolForKey:@"isManagedAccessory"];
  self->_supportBeaconGroupInfo = [coderCopy decodeBoolForKey:@"supportBeaconGroupInfo"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"findmyProductId"];
  findmyProductId = self->_findmyProductId;
  self->_findmyProductId = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
  modelName = self->_modelName;
  self->_modelName = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerName"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultRole"];
  defaultRole = self->_defaultRole;
  self->_defaultRole = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
  appBundleIdentifier = self->_appBundleIdentifier;
  self->_appBundleIdentifier = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lowBatteryInfoURL"];
  lowBatteryInfoURL = self->_lowBatteryInfoURL;
  self->_lowBatteryInfoURL = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disableURL"];
  disableURL = self->_disableURL;
  self->_disableURL = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  version = self->_version;
  self->_version = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionKeyE1"];
  encryptionKeyE1 = self->_encryptionKeyE1;
  self->_encryptionKeyE1 = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionKeyE2"];
  encryptionKeyE2 = self->_encryptionKeyE2;
  self->_encryptionKeyE2 = v23;

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verificationKeyS2"];
  verificationKeyS2 = self->_verificationKeyS2;
  self->_verificationKeyS2 = v25;

  [coderCopy decodeDoubleForKey:@"txPower"];
  self->_txPower = v27;
  [coderCopy decodeDoubleForKey:@"rangeDistanceInMeters"];
  self->_rangeDistanceInMeters = v28;
  self->_isAirTag = [coderCopy decodeBoolForKey:@"isAirTag"];
  self->_isAppleAudioAccessory = [coderCopy decodeBoolForKey:@"isAppleAudioAccessory"];
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
  self->_capabilities = [v29 unsignedIntegerValue];

  v30 = MEMORY[0x277CBEB98];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v32 = [v30 setWithArray:v31];
  v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"layoutTemplate"];
  layoutTemplate = self->_layoutTemplate;
  self->_layoutTemplate = v33;

  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultHeroIcon"];
  defaultHeroIcon = self->_defaultHeroIcon;
  self->_defaultHeroIcon = v35;

  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultListIcon"];
  defaultListIcon = self->_defaultListIcon;
  self->_defaultListIcon = v37;

  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultHeroIcon2x"];
  defaultHeroIcon2x = self->_defaultHeroIcon2x;
  self->_defaultHeroIcon2x = v39;

  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultListIcon2x"];
  defaultListIcon2x = self->_defaultListIcon2x;
  self->_defaultListIcon2x = v41;

  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultHeroIcon3x"];
  defaultHeroIcon3x = self->_defaultHeroIcon3x;
  self->_defaultHeroIcon3x = v43;

  v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultListIcon3x"];
  defaultListIcon3x = self->_defaultListIcon3x;
  self->_defaultListIcon3x = v45;

  v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"learnModeMetadata"];
  learnModeMetadata = self->_learnModeMetadata;
  self->_learnModeMetadata = v47;

  v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disableMetadata"];

  disableMetadata = self->_disableMetadata;
  self->_disableMetadata = v49;

  v51 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  manufacturerName = [(SPDiscoveredAccessoryProductInformation *)self manufacturerName];
  modelName = [(SPDiscoveredAccessoryProductInformation *)self modelName];
  findmyProductId = [(SPDiscoveredAccessoryProductInformation *)self findmyProductId];
  v8 = [v3 stringWithFormat:@"<%@: %p manufacturer: %@ model: %@ productId: %@ isAirTag: %d isAppleAudioAccessory: %d>", v4, self, manufacturerName, modelName, findmyProductId, -[SPDiscoveredAccessoryProductInformation isAirTag](self, "isAirTag"), -[SPDiscoveredAccessoryProductInformation isAppleAudioAccessory](self, "isAppleAudioAccessory")];

  return v8;
}

@end