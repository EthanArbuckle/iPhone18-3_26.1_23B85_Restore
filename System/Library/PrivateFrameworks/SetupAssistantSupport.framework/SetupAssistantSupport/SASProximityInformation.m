@interface SASProximityInformation
- (BOOL)isNetworkTransferrable:(__WiFiNetwork *)a3;
- (SASProximityInformation)initWithCoder:(id)a3;
- (id)_getFindMyDeviceOptIn;
- (id)numberFromMCUserBoolSetting:(id)a3;
- (uint64_t)loadInformation;
- (void)_loadTelephonyInformation;
- (void)encodeWithCoder:(id)a3;
- (void)loadInformation;
- (void)wirelessScanComplete:(id)a3 error:(int)a4;
@end

@implementation SASProximityInformation

- (void)encodeWithCoder:(id)a3
{
  v40 = a3;
  v4 = [(SASProximityInformation *)self keyboards];
  [v40 encodeObject:v4 forKey:@"keyboards"];

  v5 = [(SASProximityInformation *)self appleID];
  [v40 encodeObject:v5 forKey:@"appleID"];

  [v40 encodeBool:-[SASProximityInformation usesSameAccountForiTunes](self forKey:{"usesSameAccountForiTunes"), @"usesSameAccountForiTunes"}];
  v6 = [(SASProximityInformation *)self networks];
  [v40 encodeObject:v6 forKey:@"networks"];

  v7 = [(SASProximityInformation *)self networkPasswords];
  [v40 encodeObject:v7 forKey:@"networkPasswords"];

  v8 = [(SASProximityInformation *)self connectedToWiFi];
  [v40 encodeObject:v8 forKey:@"connectedToWiFi"];

  v9 = [(SASProximityInformation *)self localePreferences];
  [v40 encodeObject:v9 forKey:@"localePreferences"];

  [v40 encodeBool:-[SASProximityInformation automaticTimeZoneEnabled](self forKey:{"automaticTimeZoneEnabled"), @"automaticTimeZoneEnabled"}];
  v10 = [(SASProximityInformation *)self timeZone];
  [v40 encodeObject:v10 forKey:@"timeZone"];

  v11 = [(SASProximityInformation *)self accessibilitySettings];
  [v40 encodeObject:v11 forKey:@"accessibilitySettings"];

  v12 = [(SASProximityInformation *)self grammarInflection];
  [v40 encodeObject:v12 forKey:@"grammarInflection"];

  v13 = [(SASProximityInformation *)self firstName];
  [v40 encodeObject:v13 forKey:@"firstName"];

  v14 = [(SASProximityInformation *)self fullName];
  [v40 encodeObject:v14 forKey:@"fullName"];

  v15 = [(SASProximityInformation *)self deviceModel];
  [v40 encodeObject:v15 forKey:@"deviceModel"];

  v16 = [(SASProximityInformation *)self deviceClass];
  [v40 encodeObject:v16 forKey:@"deviceClass"];

  [v40 encodeBool:-[SASProximityInformation isRestoring](self forKey:{"isRestoring"), @"restoring"}];
  v17 = [(SASProximityInformation *)self deviceName];
  [v40 encodeObject:v17 forKey:@"deviceName"];

  v18 = [(SASProximityInformation *)self backupUUID];
  [v40 encodeObject:v18 forKey:@"backupUUID"];

  [v40 encodeBool:-[SASProximityInformation isBackupEnabled](self forKey:{"isBackupEnabled"), @"backupEnabled"}];
  v19 = [(SASProximityInformation *)self dateOfLastBackup];
  [v40 encodeObject:v19 forKey:@"dateOfLastBackup"];

  v20 = [(SASProximityInformation *)self supportsCellularBackup];
  [v40 encodeObject:v20 forKey:@"supportsCellularBackup"];

  v21 = [(SASProximityInformation *)self hasMegaBackup];
  [v40 encodeObject:v21 forKey:@"hasMegaBackup"];

  v22 = [(SASProximityInformation *)self expressSettings];
  [v40 encodeObject:v22 forKey:@"expressSettingsKey"];

  v23 = [(SASProximityInformation *)self backupMetadata];
  [v40 encodeObject:v23 forKey:@"backupMetadataKey"];

  [v40 encodeBool:-[SASProximityInformation locationServicesOptIn](self forKey:{"locationServicesOptIn"), @"locationServicesOptIn"}];
  v24 = [(SASProximityInformation *)self locationServicesData];
  [v40 encodeObject:v24 forKey:@"locationServicesData"];

  v25 = [(SASProximityInformation *)self findMyDeviceOptIn];
  [v40 encodeObject:v25 forKey:@"findMyDeviceOptIn"];

  v26 = [(SASProximityInformation *)self deviceAnalyticsOptIn];
  [v40 encodeObject:v26 forKey:@"deviceAnalyticsOptIn"];

  v27 = [(SASProximityInformation *)self appAnalyticsOptIn];
  [v40 encodeObject:v27 forKey:@"appAnalyticsOptIn"];

  v28 = [(SASProximityInformation *)self siriOptIn];
  [v40 encodeObject:v28 forKey:@"siriOptIn"];

  v29 = [(SASProximityInformation *)self siriVoiceProfileAvailabilityMetadata];
  [v40 encodeObject:v29 forKey:@"siriVoiceProfileAvailabilityMetadata"];

  v30 = [(SASProximityInformation *)self deviceTermsIdentifier];
  [v40 encodeObject:v30 forKey:@"deviceTermsIdentifier"];

  v31 = [(SASProximityInformation *)self productVersion];
  [v40 encodeObject:v31 forKey:@"productVersion"];

  v32 = [(SASProximityInformation *)self supportsDeviceToDeviceMigration];
  [v40 encodeObject:v32 forKey:@"supportsDeviceToDeviceMigration"];

  v33 = [(SASProximityInformation *)self deviceToDeviceMigrationVersion];
  [v40 encodeObject:v33 forKey:@"deviceToDeviceMigrationVersion"];

  v34 = [(SASProximityInformation *)self storageAvailable];
  [v40 encodeObject:v34 forKey:@"storageAvailable"];

  v35 = [(SASProximityInformation *)self storageCapacity];
  [v40 encodeObject:v35 forKey:@"storageCapacity"];

  v36 = [(SASProximityInformation *)self preventSoftwareUpdateDeviceMigration];
  [v40 encodeObject:v36 forKey:@"preventSoftwareUpdateDeviceMigration"];

  v37 = [(SASProximityInformation *)self hasTransferrableTelephonyPlan];
  [v40 encodeObject:v37 forKey:@"hasTransferrableTelephonyPlan"];

  v38 = [(SASProximityInformation *)self hasInexpensiveCellularNetwork];
  [v40 encodeObject:v38 forKey:@"hasInexpensiveCellularNetwork"];

  v39 = [(SASProximityInformation *)self allowMoreOn5G];
  [v40 encodeObject:v39 forKey:@"allowMoreOn5G"];

  [v40 encodeBool:-[SASProximityInformation hasHomeButton](self forKey:{"hasHomeButton"), @"hasHomeButton"}];
}

- (SASProximityInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v64.receiver = self;
  v64.super_class = SASProximityInformation;
  v5 = [(SASProximityInformation *)&v64 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"keyboards"];
    [(SASProximityInformation *)v5 setKeyboards:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    [(SASProximityInformation *)v5 setAppleID:v10];

    -[SASProximityInformation setUsesSameAccountForiTunes:](v5, "setUsesSameAccountForiTunes:", [v4 decodeBoolForKey:@"usesSameAccountForiTunes"]);
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v11 setWithObjects:{v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"networks"];
    [(SASProximityInformation *)v5 setNetworks:v18];

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v19 setWithObjects:{v20, v21, v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"networkPasswords"];
    [(SASProximityInformation *)v5 setNetworkPasswords:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectedToWiFi"];
    [(SASProximityInformation *)v5 setConnectedToWiFi:v25];

    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [v26 setWithObjects:{v27, v28, v29, v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"localePreferences"];
    [(SASProximityInformation *)v5 setLocalePreferences:v32];

    -[SASProximityInformation setAutomaticTimeZoneEnabled:](v5, "setAutomaticTimeZoneEnabled:", [v4 decodeBoolForKey:@"automaticTimeZoneEnabled"]);
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    [(SASProximityInformation *)v5 setTimeZone:v33];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilitySettings"];
    [(SASProximityInformation *)v5 setAccessibilitySettings:v34];

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"grammarInflection"];
    [(SASProximityInformation *)v5 setGrammarInflection:v35];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    [(SASProximityInformation *)v5 setFirstName:v36];

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullName"];
    [(SASProximityInformation *)v5 setFullName:v37];

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceModel"];
    [(SASProximityInformation *)v5 setDeviceModel:v38];

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
    [(SASProximityInformation *)v5 setDeviceClass:v39];

    -[SASProximityInformation setRestoring:](v5, "setRestoring:", [v4 decodeBoolForKey:@"restoring"]);
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    [(SASProximityInformation *)v5 setDeviceName:v40];

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupUUID"];
    [(SASProximityInformation *)v5 setBackupUUID:v41];

    -[SASProximityInformation setBackupEnabled:](v5, "setBackupEnabled:", [v4 decodeBoolForKey:@"backupEnabled"]);
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateOfLastBackup"];
    [(SASProximityInformation *)v5 setDateOfLastBackup:v42];

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsCellularBackup"];
    [(SASProximityInformation *)v5 setSupportsCellularBackup:v43];

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasMegaBackup"];
    [(SASProximityInformation *)v5 setHasMegaBackup:v44];

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expressSettingsKey"];
    [(SASProximityInformation *)v5 setExpressSettings:v45];

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupMetadataKey"];
    [(SASProximityInformation *)v5 setBackupMetadata:v46];

    -[SASProximityInformation setLocationServicesOptIn:](v5, "setLocationServicesOptIn:", [v4 decodeBoolForKey:@"locationServicesOptIn"]);
    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationServicesData"];
    [(SASProximityInformation *)v5 setLocationServicesData:v47];

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"findMyDeviceOptIn"];
    [(SASProximityInformation *)v5 setFindMyDeviceOptIn:v48];

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceAnalyticsOptIn"];
    [(SASProximityInformation *)v5 setDeviceAnalyticsOptIn:v49];

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appAnalyticsOptIn"];
    [(SASProximityInformation *)v5 setAppAnalyticsOptIn:v50];

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriOptIn"];
    [(SASProximityInformation *)v5 setSiriOptIn:v51];

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriVoiceProfileAvailabilityMetadata"];
    [(SASProximityInformation *)v5 setSiriVoiceProfileAvailabilityMetadata:v52];

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceTermsIdentifier"];
    [(SASProximityInformation *)v5 setDeviceTermsIdentifier:v53];

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    [(SASProximityInformation *)v5 setProductVersion:v54];

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsDeviceToDeviceMigration"];
    [(SASProximityInformation *)v5 setSupportsDeviceToDeviceMigration:v55];

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceToDeviceMigrationVersion"];
    [(SASProximityInformation *)v5 setDeviceToDeviceMigrationVersion:v56];

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storageAvailable"];
    [(SASProximityInformation *)v5 setStorageAvailable:v57];

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storageCapacity"];
    [(SASProximityInformation *)v5 setStorageCapacity:v58];

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preventSoftwareUpdateDeviceMigration"];
    [(SASProximityInformation *)v5 setPreventSoftwareUpdateDeviceMigration:v59];

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasTransferrableTelephonyPlan"];
    [(SASProximityInformation *)v5 setHasTransferrableTelephonyPlan:v60];

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasInexpensiveCellularNetwork"];
    [(SASProximityInformation *)v5 setHasInexpensiveCellularNetwork:v61];

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowMoreOn5G"];
    [(SASProximityInformation *)v5 setAllowMoreOn5G:v62];

    -[SASProximityInformation setHasHomeButton:](v5, "setHasHomeButton:", [v4 decodeBoolForKey:@"hasHomeButton"]);
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
  v5 = [v3 sharedInstance];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __48__SASProximityInformation__getFindMyDeviceOptIn__block_invoke;
  v14 = &unk_278845E78;
  v16 = &v17;
  v6 = v2;
  v15 = v6;
  [v5 fmipStateWithCompletion:&v11];

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

- (BOOL)isNetworkTransferrable:(__WiFiNetwork *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (WiFiNetworkIsEAP() || WiFiNetworkIsProfileBased() || WiFiNetworkIsExpirable() || WiFiNetworkIsCaptive())
  {
    return 0;
  }

  return WiFiNetworkGetType() != 1;
}

- (void)wirelessScanComplete:(id)a3 error:(int)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SASProximityInformation *)self nearbyNetworks];

  if (!v7)
  {
    if (a4)
    {
      v8 = +[SASLogging facility];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12[0] = 67109120;
        v12[1] = a4;
        _os_log_impl(&dword_22E4D7000, v8, OS_LOG_TYPE_DEFAULT, "Failed to perform Wi-Fi scan to get nearby networks: %d", v12, 8u);
      }
    }

    v9 = [MEMORY[0x277CBEB98] setWithArray:v6];
    [(SASProximityInformation *)self setNearbyNetworks:v9];

    v10 = [(SASProximityInformation *)self nearbyNetworksSemaphore];
    dispatch_semaphore_signal(v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)numberFromMCUserBoolSetting:(id)a3
{
  v3 = a3;
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
  v6 = [v4 sharedConnection];
  v7 = [v6 userBoolValueForSetting:v3];

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