@interface SPDiscoveredAccessoryProductInformation
- (SPDiscoveredAccessoryProductInformation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPDiscoveredAccessoryProductInformation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setBeaconGroupVersion:{-[SPDiscoveredAccessoryProductInformation beaconGroupVersion](self, "beaconGroupVersion")}];
  [v4 setEligibleForPairing:{-[SPDiscoveredAccessoryProductInformation eligibleForPairing](self, "eligibleForPairing")}];
  [v4 setHidden:{-[SPDiscoveredAccessoryProductInformation hidden](self, "hidden")}];
  [v4 setIsHELEAccessory:{-[SPDiscoveredAccessoryProductInformation isHELEAccessory](self, "isHELEAccessory")}];
  [v4 setIsManagedAccessory:{-[SPDiscoveredAccessoryProductInformation isManagedAccessory](self, "isManagedAccessory")}];
  [v4 setSupportBeaconGroupInfo:{-[SPDiscoveredAccessoryProductInformation supportBeaconGroupInfo](self, "supportBeaconGroupInfo")}];
  v5 = [(SPDiscoveredAccessoryProductInformation *)self findmyProductId];
  v6 = [v5 copy];
  [v4 setFindmyProductId:v6];

  v7 = [(SPDiscoveredAccessoryProductInformation *)self modelName];
  v8 = [v7 copy];
  [v4 setModelName:v8];

  v9 = [(SPDiscoveredAccessoryProductInformation *)self manufacturerName];
  v10 = [v9 copy];
  [v4 setManufacturerName:v10];

  v11 = [(SPDiscoveredAccessoryProductInformation *)self defaultRole];
  v12 = [v11 copy];
  [v4 setDefaultRole:v12];

  v13 = [(SPDiscoveredAccessoryProductInformation *)self appBundleIdentifier];
  v14 = [v13 copy];
  [v4 setAppBundleIdentifier:v14];

  v15 = [(SPDiscoveredAccessoryProductInformation *)self lowBatteryInfoURL];
  v16 = [v15 copy];
  [v4 setLowBatteryInfoURL:v16];

  v17 = [(SPDiscoveredAccessoryProductInformation *)self disableURL];
  v18 = [v17 copy];
  [v4 setDisableURL:v18];

  v19 = [(SPDiscoveredAccessoryProductInformation *)self version];
  v20 = [v19 copy];
  [v4 setVersion:v20];

  v21 = [(SPDiscoveredAccessoryProductInformation *)self encryptionKeyE1];
  v22 = [v21 copy];
  [v4 setEncryptionKeyE1:v22];

  v23 = [(SPDiscoveredAccessoryProductInformation *)self encryptionKeyE2];
  v24 = [v23 copy];
  [v4 setEncryptionKeyE2:v24];

  v25 = [(SPDiscoveredAccessoryProductInformation *)self verificationKeyS2];
  v26 = [v25 copy];
  [v4 setVerificationKeyS2:v26];

  [(SPDiscoveredAccessoryProductInformation *)self txPower];
  [v4 setTxPower:?];
  [(SPDiscoveredAccessoryProductInformation *)self rangeDistanceInMeters];
  [v4 setRangeDistanceInMeters:?];
  [v4 setIsAirTag:{-[SPDiscoveredAccessoryProductInformation isAirTag](self, "isAirTag")}];
  [v4 setIsAppleAudioAccessory:{-[SPDiscoveredAccessoryProductInformation isAppleAudioAccessory](self, "isAppleAudioAccessory")}];
  [v4 setCapabilities:{-[SPDiscoveredAccessoryProductInformation capabilities](self, "capabilities")}];
  v27 = [(SPDiscoveredAccessoryProductInformation *)self layoutTemplate];
  v28 = [v27 copy];
  [v4 setLayoutTemplate:v28];

  v29 = [(SPDiscoveredAccessoryProductInformation *)self defaultHeroIcon];
  v30 = [v29 copy];
  [v4 setDefaultHeroIcon:v30];

  v31 = [(SPDiscoveredAccessoryProductInformation *)self defaultListIcon];
  v32 = [v31 copy];
  [v4 setDefaultListIcon:v32];

  v33 = [(SPDiscoveredAccessoryProductInformation *)self defaultHeroIcon2x];
  v34 = [v33 copy];
  [v4 setDefaultHeroIcon2x:v34];

  v35 = [(SPDiscoveredAccessoryProductInformation *)self defaultListIcon2x];
  v36 = [v35 copy];
  [v4 setDefaultListIcon2x:v36];

  v37 = [(SPDiscoveredAccessoryProductInformation *)self defaultHeroIcon3x];
  v38 = [v37 copy];
  [v4 setDefaultHeroIcon3x:v38];

  v39 = [(SPDiscoveredAccessoryProductInformation *)self defaultListIcon3x];
  v40 = [v39 copy];
  [v4 setDefaultListIcon3x:v40];

  v41 = [(SPDiscoveredAccessoryProductInformation *)self learnModeMetadata];
  v42 = [v41 copy];
  [v4 setLearnModeMetadata:v42];

  v43 = [(SPDiscoveredAccessoryProductInformation *)self disableMetadata];
  v44 = [v43 copy];
  [v4 setDisableMetadata:v44];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  beaconGroupVersion = self->_beaconGroupVersion;
  v6 = a3;
  [v6 encodeInteger:beaconGroupVersion forKey:@"beaconGroupVersion"];
  [v6 encodeBool:self->_eligibleForPairing forKey:@"eligibleForPairing"];
  [v6 encodeBool:self->_hidden forKey:@"hidden"];
  [v6 encodeBool:self->_isHELEAccessory forKey:@"isHELEAccessory"];
  [v6 encodeBool:self->_isManagedAccessory forKey:@"isManagedAccessory"];
  [v6 encodeBool:self->_supportBeaconGroupInfo forKey:@"supportBeaconGroupInfo"];
  [v6 encodeObject:self->_findmyProductId forKey:@"findmyProductId"];
  [v6 encodeObject:self->_modelName forKey:@"modelName"];
  [v6 encodeObject:self->_manufacturerName forKey:@"manufacturerName"];
  [v6 encodeObject:self->_defaultRole forKey:@"defaultRole"];
  [v6 encodeObject:self->_appBundleIdentifier forKey:@"appBundleIdentifier"];
  [v6 encodeObject:self->_lowBatteryInfoURL forKey:@"lowBatteryInfoURL"];
  [v6 encodeObject:self->_disableURL forKey:@"disableURL"];
  [v6 encodeObject:self->_version forKey:@"version"];
  [v6 encodeObject:self->_encryptionKeyE1 forKey:@"encryptionKeyE1"];
  [v6 encodeObject:self->_encryptionKeyE2 forKey:@"encryptionKeyE2"];
  [v6 encodeObject:self->_verificationKeyS2 forKey:@"verificationKeyS2"];
  [v6 encodeDouble:@"txPower" forKey:self->_txPower];
  [v6 encodeDouble:@"rangeDistanceInMeters" forKey:self->_rangeDistanceInMeters];
  [v6 encodeBool:self->_isAirTag forKey:@"isAirTag"];
  [v6 encodeBool:self->_isAppleAudioAccessory forKey:@"isAppleAudioAccessory"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_capabilities];
  [v6 encodeObject:v5 forKey:@"capabilities"];

  [v6 encodeObject:self->_layoutTemplate forKey:@"layoutTemplate"];
  [v6 encodeObject:self->_defaultHeroIcon forKey:@"defaultHeroIcon"];
  [v6 encodeObject:self->_defaultListIcon forKey:@"defaultListIcon"];
  [v6 encodeObject:self->_defaultHeroIcon2x forKey:@"defaultHeroIcon2x"];
  [v6 encodeObject:self->_defaultListIcon2x forKey:@"defaultListIcon2x"];
  [v6 encodeObject:self->_defaultHeroIcon3x forKey:@"defaultHeroIcon3x"];
  [v6 encodeObject:self->_defaultListIcon3x forKey:@"defaultListIcon3x"];
  [v6 encodeObject:self->_learnModeMetadata forKey:@"learnModeMetadata"];
  [v6 encodeObject:self->_disableMetadata forKey:@"disableMetadata"];
}

- (SPDiscoveredAccessoryProductInformation)initWithCoder:(id)a3
{
  v53[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_beaconGroupVersion = [v4 decodeIntegerForKey:@"beaconGroupVersion"];
  self->_eligibleForPairing = [v4 decodeBoolForKey:@"eligibleForPairing"];
  self->_hidden = [v4 decodeBoolForKey:@"hidden"];
  self->_isHELEAccessory = [v4 decodeBoolForKey:@"isHELEAccessory"];
  self->_isManagedAccessory = [v4 decodeBoolForKey:@"isManagedAccessory"];
  self->_supportBeaconGroupInfo = [v4 decodeBoolForKey:@"supportBeaconGroupInfo"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"findmyProductId"];
  findmyProductId = self->_findmyProductId;
  self->_findmyProductId = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
  modelName = self->_modelName;
  self->_modelName = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerName"];
  manufacturerName = self->_manufacturerName;
  self->_manufacturerName = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultRole"];
  defaultRole = self->_defaultRole;
  self->_defaultRole = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
  appBundleIdentifier = self->_appBundleIdentifier;
  self->_appBundleIdentifier = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lowBatteryInfoURL"];
  lowBatteryInfoURL = self->_lowBatteryInfoURL;
  self->_lowBatteryInfoURL = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disableURL"];
  disableURL = self->_disableURL;
  self->_disableURL = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
  version = self->_version;
  self->_version = v19;

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionKeyE1"];
  encryptionKeyE1 = self->_encryptionKeyE1;
  self->_encryptionKeyE1 = v21;

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionKeyE2"];
  encryptionKeyE2 = self->_encryptionKeyE2;
  self->_encryptionKeyE2 = v23;

  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"verificationKeyS2"];
  verificationKeyS2 = self->_verificationKeyS2;
  self->_verificationKeyS2 = v25;

  [v4 decodeDoubleForKey:@"txPower"];
  self->_txPower = v27;
  [v4 decodeDoubleForKey:@"rangeDistanceInMeters"];
  self->_rangeDistanceInMeters = v28;
  self->_isAirTag = [v4 decodeBoolForKey:@"isAirTag"];
  self->_isAppleAudioAccessory = [v4 decodeBoolForKey:@"isAppleAudioAccessory"];
  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
  self->_capabilities = [v29 unsignedIntegerValue];

  v30 = MEMORY[0x277CBEB98];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v32 = [v30 setWithArray:v31];
  v33 = [v4 decodeObjectOfClasses:v32 forKey:@"layoutTemplate"];
  layoutTemplate = self->_layoutTemplate;
  self->_layoutTemplate = v33;

  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultHeroIcon"];
  defaultHeroIcon = self->_defaultHeroIcon;
  self->_defaultHeroIcon = v35;

  v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultListIcon"];
  defaultListIcon = self->_defaultListIcon;
  self->_defaultListIcon = v37;

  v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultHeroIcon2x"];
  defaultHeroIcon2x = self->_defaultHeroIcon2x;
  self->_defaultHeroIcon2x = v39;

  v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultListIcon2x"];
  defaultListIcon2x = self->_defaultListIcon2x;
  self->_defaultListIcon2x = v41;

  v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultHeroIcon3x"];
  defaultHeroIcon3x = self->_defaultHeroIcon3x;
  self->_defaultHeroIcon3x = v43;

  v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultListIcon3x"];
  defaultListIcon3x = self->_defaultListIcon3x;
  self->_defaultListIcon3x = v45;

  v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"learnModeMetadata"];
  learnModeMetadata = self->_learnModeMetadata;
  self->_learnModeMetadata = v47;

  v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disableMetadata"];

  disableMetadata = self->_disableMetadata;
  self->_disableMetadata = v49;

  v51 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPDiscoveredAccessoryProductInformation *)self manufacturerName];
  v6 = [(SPDiscoveredAccessoryProductInformation *)self modelName];
  v7 = [(SPDiscoveredAccessoryProductInformation *)self findmyProductId];
  v8 = [v3 stringWithFormat:@"<%@: %p manufacturer: %@ model: %@ productId: %@ isAirTag: %d isAppleAudioAccessory: %d>", v4, self, v5, v6, v7, -[SPDiscoveredAccessoryProductInformation isAirTag](self, "isAirTag"), -[SPDiscoveredAccessoryProductInformation isAppleAudioAccessory](self, "isAppleAudioAccessory")];

  return v8;
}

@end