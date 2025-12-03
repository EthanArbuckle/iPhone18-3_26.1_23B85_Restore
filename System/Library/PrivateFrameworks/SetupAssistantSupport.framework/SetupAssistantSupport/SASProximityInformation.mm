@interface SASProximityInformation
- (BOOL)isNetworkTransferrable:(__WiFiNetwork *)transferrable;
- (SASProximityInformation)initWithCoder:(id)coder;
- (id)_getFindMyDeviceOptIn;
- (id)numberFromMCUserBoolSetting:(id)setting;
- (uint64_t)loadInformation;
- (void)_loadTelephonyInformation;
- (void)encodeWithCoder:(id)coder;
- (void)loadInformation;
- (void)wirelessScanComplete:(id)complete error:(int)error;
@end

@implementation SASProximityInformation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  keyboards = [(SASProximityInformation *)self keyboards];
  [coderCopy encodeObject:keyboards forKey:@"keyboards"];

  appleID = [(SASProximityInformation *)self appleID];
  [coderCopy encodeObject:appleID forKey:@"appleID"];

  [coderCopy encodeBool:-[SASProximityInformation usesSameAccountForiTunes](self forKey:{"usesSameAccountForiTunes"), @"usesSameAccountForiTunes"}];
  networks = [(SASProximityInformation *)self networks];
  [coderCopy encodeObject:networks forKey:@"networks"];

  networkPasswords = [(SASProximityInformation *)self networkPasswords];
  [coderCopy encodeObject:networkPasswords forKey:@"networkPasswords"];

  connectedToWiFi = [(SASProximityInformation *)self connectedToWiFi];
  [coderCopy encodeObject:connectedToWiFi forKey:@"connectedToWiFi"];

  localePreferences = [(SASProximityInformation *)self localePreferences];
  [coderCopy encodeObject:localePreferences forKey:@"localePreferences"];

  [coderCopy encodeBool:-[SASProximityInformation automaticTimeZoneEnabled](self forKey:{"automaticTimeZoneEnabled"), @"automaticTimeZoneEnabled"}];
  timeZone = [(SASProximityInformation *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"timeZone"];

  accessibilitySettings = [(SASProximityInformation *)self accessibilitySettings];
  [coderCopy encodeObject:accessibilitySettings forKey:@"accessibilitySettings"];

  grammarInflection = [(SASProximityInformation *)self grammarInflection];
  [coderCopy encodeObject:grammarInflection forKey:@"grammarInflection"];

  firstName = [(SASProximityInformation *)self firstName];
  [coderCopy encodeObject:firstName forKey:@"firstName"];

  fullName = [(SASProximityInformation *)self fullName];
  [coderCopy encodeObject:fullName forKey:@"fullName"];

  deviceModel = [(SASProximityInformation *)self deviceModel];
  [coderCopy encodeObject:deviceModel forKey:@"deviceModel"];

  deviceClass = [(SASProximityInformation *)self deviceClass];
  [coderCopy encodeObject:deviceClass forKey:@"deviceClass"];

  [coderCopy encodeBool:-[SASProximityInformation isRestoring](self forKey:{"isRestoring"), @"restoring"}];
  deviceName = [(SASProximityInformation *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];

  backupUUID = [(SASProximityInformation *)self backupUUID];
  [coderCopy encodeObject:backupUUID forKey:@"backupUUID"];

  [coderCopy encodeBool:-[SASProximityInformation isBackupEnabled](self forKey:{"isBackupEnabled"), @"backupEnabled"}];
  dateOfLastBackup = [(SASProximityInformation *)self dateOfLastBackup];
  [coderCopy encodeObject:dateOfLastBackup forKey:@"dateOfLastBackup"];

  supportsCellularBackup = [(SASProximityInformation *)self supportsCellularBackup];
  [coderCopy encodeObject:supportsCellularBackup forKey:@"supportsCellularBackup"];

  hasMegaBackup = [(SASProximityInformation *)self hasMegaBackup];
  [coderCopy encodeObject:hasMegaBackup forKey:@"hasMegaBackup"];

  expressSettings = [(SASProximityInformation *)self expressSettings];
  [coderCopy encodeObject:expressSettings forKey:@"expressSettingsKey"];

  backupMetadata = [(SASProximityInformation *)self backupMetadata];
  [coderCopy encodeObject:backupMetadata forKey:@"backupMetadataKey"];

  [coderCopy encodeBool:-[SASProximityInformation locationServicesOptIn](self forKey:{"locationServicesOptIn"), @"locationServicesOptIn"}];
  locationServicesData = [(SASProximityInformation *)self locationServicesData];
  [coderCopy encodeObject:locationServicesData forKey:@"locationServicesData"];

  findMyDeviceOptIn = [(SASProximityInformation *)self findMyDeviceOptIn];
  [coderCopy encodeObject:findMyDeviceOptIn forKey:@"findMyDeviceOptIn"];

  deviceAnalyticsOptIn = [(SASProximityInformation *)self deviceAnalyticsOptIn];
  [coderCopy encodeObject:deviceAnalyticsOptIn forKey:@"deviceAnalyticsOptIn"];

  appAnalyticsOptIn = [(SASProximityInformation *)self appAnalyticsOptIn];
  [coderCopy encodeObject:appAnalyticsOptIn forKey:@"appAnalyticsOptIn"];

  siriOptIn = [(SASProximityInformation *)self siriOptIn];
  [coderCopy encodeObject:siriOptIn forKey:@"siriOptIn"];

  siriVoiceProfileAvailabilityMetadata = [(SASProximityInformation *)self siriVoiceProfileAvailabilityMetadata];
  [coderCopy encodeObject:siriVoiceProfileAvailabilityMetadata forKey:@"siriVoiceProfileAvailabilityMetadata"];

  deviceTermsIdentifier = [(SASProximityInformation *)self deviceTermsIdentifier];
  [coderCopy encodeObject:deviceTermsIdentifier forKey:@"deviceTermsIdentifier"];

  productVersion = [(SASProximityInformation *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"productVersion"];

  supportsDeviceToDeviceMigration = [(SASProximityInformation *)self supportsDeviceToDeviceMigration];
  [coderCopy encodeObject:supportsDeviceToDeviceMigration forKey:@"supportsDeviceToDeviceMigration"];

  deviceToDeviceMigrationVersion = [(SASProximityInformation *)self deviceToDeviceMigrationVersion];
  [coderCopy encodeObject:deviceToDeviceMigrationVersion forKey:@"deviceToDeviceMigrationVersion"];

  storageAvailable = [(SASProximityInformation *)self storageAvailable];
  [coderCopy encodeObject:storageAvailable forKey:@"storageAvailable"];

  storageCapacity = [(SASProximityInformation *)self storageCapacity];
  [coderCopy encodeObject:storageCapacity forKey:@"storageCapacity"];

  preventSoftwareUpdateDeviceMigration = [(SASProximityInformation *)self preventSoftwareUpdateDeviceMigration];
  [coderCopy encodeObject:preventSoftwareUpdateDeviceMigration forKey:@"preventSoftwareUpdateDeviceMigration"];

  hasTransferrableTelephonyPlan = [(SASProximityInformation *)self hasTransferrableTelephonyPlan];
  [coderCopy encodeObject:hasTransferrableTelephonyPlan forKey:@"hasTransferrableTelephonyPlan"];

  hasInexpensiveCellularNetwork = [(SASProximityInformation *)self hasInexpensiveCellularNetwork];
  [coderCopy encodeObject:hasInexpensiveCellularNetwork forKey:@"hasInexpensiveCellularNetwork"];

  allowMoreOn5G = [(SASProximityInformation *)self allowMoreOn5G];
  [coderCopy encodeObject:allowMoreOn5G forKey:@"allowMoreOn5G"];

  [coderCopy encodeBool:-[SASProximityInformation hasHomeButton](self forKey:{"hasHomeButton"), @"hasHomeButton"}];
}

- (SASProximityInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v64.receiver = self;
  v64.super_class = SASProximityInformation;
  v5 = [(SASProximityInformation *)&v64 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"keyboards"];
    [(SASProximityInformation *)v5 setKeyboards:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    [(SASProximityInformation *)v5 setAppleID:v10];

    -[SASProximityInformation setUsesSameAccountForiTunes:](v5, "setUsesSameAccountForiTunes:", [coderCopy decodeBoolForKey:@"usesSameAccountForiTunes"]);
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"networks"];
    [(SASProximityInformation *)v5 setNetworks:v18];

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v19 setWithObjects:{v20, v21, v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"networkPasswords"];
    [(SASProximityInformation *)v5 setNetworkPasswords:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectedToWiFi"];
    [(SASProximityInformation *)v5 setConnectedToWiFi:v25];

    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [v26 setWithObjects:{v27, v28, v29, v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"localePreferences"];
    [(SASProximityInformation *)v5 setLocalePreferences:v32];

    -[SASProximityInformation setAutomaticTimeZoneEnabled:](v5, "setAutomaticTimeZoneEnabled:", [coderCopy decodeBoolForKey:@"automaticTimeZoneEnabled"]);
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    [(SASProximityInformation *)v5 setTimeZone:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilitySettings"];
    [(SASProximityInformation *)v5 setAccessibilitySettings:v34];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"grammarInflection"];
    [(SASProximityInformation *)v5 setGrammarInflection:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    [(SASProximityInformation *)v5 setFirstName:v36];

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    [(SASProximityInformation *)v5 setFullName:v37];

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
    [(SASProximityInformation *)v5 setDeviceModel:v38];

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
    [(SASProximityInformation *)v5 setDeviceClass:v39];

    -[SASProximityInformation setRestoring:](v5, "setRestoring:", [coderCopy decodeBoolForKey:@"restoring"]);
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    [(SASProximityInformation *)v5 setDeviceName:v40];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupUUID"];
    [(SASProximityInformation *)v5 setBackupUUID:v41];

    -[SASProximityInformation setBackupEnabled:](v5, "setBackupEnabled:", [coderCopy decodeBoolForKey:@"backupEnabled"]);
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateOfLastBackup"];
    [(SASProximityInformation *)v5 setDateOfLastBackup:v42];

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsCellularBackup"];
    [(SASProximityInformation *)v5 setSupportsCellularBackup:v43];

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasMegaBackup"];
    [(SASProximityInformation *)v5 setHasMegaBackup:v44];

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expressSettingsKey"];
    [(SASProximityInformation *)v5 setExpressSettings:v45];

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupMetadataKey"];
    [(SASProximityInformation *)v5 setBackupMetadata:v46];

    -[SASProximityInformation setLocationServicesOptIn:](v5, "setLocationServicesOptIn:", [coderCopy decodeBoolForKey:@"locationServicesOptIn"]);
    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationServicesData"];
    [(SASProximityInformation *)v5 setLocationServicesData:v47];

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"findMyDeviceOptIn"];
    [(SASProximityInformation *)v5 setFindMyDeviceOptIn:v48];

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceAnalyticsOptIn"];
    [(SASProximityInformation *)v5 setDeviceAnalyticsOptIn:v49];

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appAnalyticsOptIn"];
    [(SASProximityInformation *)v5 setAppAnalyticsOptIn:v50];

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriOptIn"];
    [(SASProximityInformation *)v5 setSiriOptIn:v51];

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriVoiceProfileAvailabilityMetadata"];
    [(SASProximityInformation *)v5 setSiriVoiceProfileAvailabilityMetadata:v52];

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceTermsIdentifier"];
    [(SASProximityInformation *)v5 setDeviceTermsIdentifier:v53];

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    [(SASProximityInformation *)v5 setProductVersion:v54];

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsDeviceToDeviceMigration"];
    [(SASProximityInformation *)v5 setSupportsDeviceToDeviceMigration:v55];

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceToDeviceMigrationVersion"];
    [(SASProximityInformation *)v5 setDeviceToDeviceMigrationVersion:v56];

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storageAvailable"];
    [(SASProximityInformation *)v5 setStorageAvailable:v57];

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storageCapacity"];
    [(SASProximityInformation *)v5 setStorageCapacity:v58];

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preventSoftwareUpdateDeviceMigration"];
    [(SASProximityInformation *)v5 setPreventSoftwareUpdateDeviceMigration:v59];

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasTransferrableTelephonyPlan"];
    [(SASProximityInformation *)v5 setHasTransferrableTelephonyPlan:v60];

    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasInexpensiveCellularNetwork"];
    [(SASProximityInformation *)v5 setHasInexpensiveCellularNetwork:v61];

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowMoreOn5G"];
    [(SASProximityInformation *)v5 setAllowMoreOn5G:v62];

    -[SASProximityInformation setHasHomeButton:](v5, "setHasHomeButton:", [coderCopy decodeBoolForKey:@"hasHomeButton"]);
  }

  return v5;
}

- (id)_getFindMyDeviceOptIn
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v2 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v3 = getFMDFMIPManagerClass_softClass_0;
  v31 = getFMDFMIPManagerClass_softClass_0;
  if (!getFMDFMIPManagerClass_softClass_0)
  {
    *buf = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getFMDFMIPManagerClass_block_invoke_0;
    v26 = &unk_278845EC8;
    v27 = &v28;
    __getFMDFMIPManagerClass_block_invoke_0(buf);
    v3 = v29[3];
  }

  v4 = v3;
  _Block_object_dispose(&v28, 8);
  sharedInstance = [v3 sharedInstance];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __48__SASProximityInformation__getFindMyDeviceOptIn__block_invoke;
  v14 = &unk_278845E78;
  v16 = &v17;
  v6 = v2;
  v15 = v6;
  [sharedInstance fmipStateWithCompletion:&v11];

  v7 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = [SASLogging facility:v11];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E4D7000, v8, OS_LOG_TYPE_DEFAULT, "Timed out fetching Find My Device state", buf, 2u);
    }
  }

  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __48__SASProximityInformation__getFindMyDeviceOptIn__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_22E4D7000, v6, OS_LOG_TYPE_DEFAULT, "Could not determine Find My Device if is enabled: %@", &v11, 0xCu);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:a2 == 1];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v10 = *MEMORY[0x277D85DE8];
}

- (void)loadInformation
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22E4D7000, v0, v1, "Failed to get location services information: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__SASProximityInformation_loadInformation__block_invoke(uint64_t a1)
{
  v2 = [SASExpressCloudSettings createExpressSettingsWithQueue:*(a1 + 40)];
  [*(a1 + 32) setExpressSettings:v2];
}

- (void)_loadTelephonyInformation
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22E4D7000, v0, v1, "Failed to get interface cost for subscription context: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isNetworkTransferrable:(__WiFiNetwork *)transferrable
{
  if (!transferrable)
  {
    return 0;
  }

  if (WiFiNetworkIsEAP() || WiFiNetworkIsProfileBased() || WiFiNetworkIsExpirable() || WiFiNetworkIsCaptive())
  {
    return 0;
  }

  return WiFiNetworkGetType() != 1;
}

- (void)wirelessScanComplete:(id)complete error:(int)error
{
  v13 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  nearbyNetworks = [(SASProximityInformation *)self nearbyNetworks];

  if (!nearbyNetworks)
  {
    if (error)
    {
      v8 = +[SASLogging facility];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109120;
        v12[1] = error;
        _os_log_impl(&dword_22E4D7000, v8, OS_LOG_TYPE_DEFAULT, "Failed to perform Wi-Fi scan to get nearby networks: %d", v12, 8u);
      }
    }

    v9 = [MEMORY[0x277CBEB98] setWithArray:completeCopy];
    [(SASProximityInformation *)self setNearbyNetworks:v9];

    nearbyNetworksSemaphore = [(SASProximityInformation *)self nearbyNetworksSemaphore];
    dispatch_semaphore_signal(nearbyNetworksSemaphore);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)numberFromMCUserBoolSetting:(id)setting
{
  settingCopy = setting;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getMCProfileConnectionClass_softClass;
  v15 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getMCProfileConnectionClass_block_invoke;
    v11[3] = &unk_278845EC8;
    v11[4] = &v12;
    __getMCProfileConnectionClass_block_invoke(v11);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  sharedConnection = [v4 sharedConnection];
  v7 = [sharedConnection userBoolValueForSetting:settingCopy];

  v8 = MEMORY[0x277CBEC28];
  if (v7 != 2)
  {
    v8 = 0;
  }

  if (v7 == 1)
  {
    v9 = MEMORY[0x277CBEC38];
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (uint64_t)loadInformation
{
  dlerror();
  v0 = abort_report_np();
  return [(SASProximityInformation *)v0 _loadTelephonyInformation];
}

@end