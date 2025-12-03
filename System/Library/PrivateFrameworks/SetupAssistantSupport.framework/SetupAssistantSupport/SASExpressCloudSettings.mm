@interface SASExpressCloudSettings
+ (BOOL)_isCloudKitError:(id)error;
+ (id)_displayZoomOption;
+ (id)_iPadMultitaskingMode;
+ (id)_isFindMyEnabled;
+ (id)_isScreenTimeEnabled;
+ (id)_predicateForRecordsModifiedInPastMonth;
+ (id)_queryForSettingsForDeviceID:(id)d;
+ (id)_queryForSettingsFromPastMonth;
+ (id)_queryForSettingsFromPastMonthForDeviceClass:(id)class;
+ (id)_queryForSettingsFromPastMonthForPlatform:(unint64_t)platform;
+ (id)_zoneForSettings;
+ (id)createExpressSettingsWithQueue:(id)queue;
+ (id)privacyBundleForIdentifier:(id)identifier;
+ (int)_appearanceValue;
+ (void)fetchSettingsWithCompletion:(id)completion;
+ (void)updateSettings:(id)settings withCompletion:(id)completion;
- (SASExpressCloudSettings)initWithContainerIdentifier:(id)identifier;
- (id)_createSettingsRecordInZoneID:(id)d forDeviceID:(id)iD;
- (void)_fetchAppropriateSettingsWithCompletion:(id)completion;
- (void)_setupRecordZoneWithName:(id)name completion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
- (void)setXpcActivity:(id)activity;
- (void)updateSettings:(id)settings withCompletion:(id)completion;
@end

@implementation SASExpressCloudSettings

+ (id)createExpressSettingsWithQueue:(id)queue
{
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v4 = objc_alloc_init(SASExpressSettings);
  [(SASExpressSettings *)v4 setVersion:1];
  v5 = +[SASSystemInformation productType];
  [(SASExpressSettings *)v4 setProductType:v5];

  v6 = +[SASSystemInformation deviceClass];
  [(SASExpressSettings *)v4 setDeviceClass:v6];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  -[SASExpressSettings setDeviceAnalyticsOptIn:](v4, "setDeviceAnalyticsOptIn:", [mEMORY[0x277D262A0] userBoolValueForSetting:*MEMORY[0x277D25E58]] == 1);

  v8 = [SASExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.analyticsdevice"];
  [(SASExpressSettings *)v4 setDeviceAnalyticsPrivacyBundle:v8];

  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  -[SASExpressSettings setAppAnalyticsOptIn:](v4, "setAppAnalyticsOptIn:", [mEMORY[0x277D262A0]2 userBoolValueForSetting:*MEMORY[0x277D25D00]] == 1);

  v10 = [SASExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.analyticsapp"];
  [(SASExpressSettings *)v4 setAppAnalyticsPrivacyBundle:v10];

  -[SASExpressSettings setLocationServicesOptIn:](v4, "setLocationServicesOptIn:", [MEMORY[0x277CBFC10] locationServicesEnabled]);
  v11 = [SASExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.locationservices"];
  [(SASExpressSettings *)v4 setLocationServicesPrivacyBundle:v11];

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v12 = getAFPreferencesClass_softClass;
  v51 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __getAFPreferencesClass_block_invoke;
    v46 = &unk_278845EC8;
    v47 = &v48;
    __getAFPreferencesClass_block_invoke(&v43);
    v12 = v49[3];
  }

  v13 = v12;
  _Block_object_dispose(&v48, 8);
  sharedPreferences = [v12 sharedPreferences];
  -[SASExpressSettings setSiriOptIn:](v4, "setSiriOptIn:", [sharedPreferences assistantIsEnabled]);

  v15 = [SASExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.siri"];
  [(SASExpressSettings *)v4 setSiriPrivacyBundle:v15];

  _isFindMyEnabled = [objc_opt_class() _isFindMyEnabled];
  v17 = _isFindMyEnabled;
  if (_isFindMyEnabled)
  {
    -[SASExpressSettings setFindMyOptIn:](v4, "setFindMyOptIn:", [_isFindMyEnabled BOOLValue]);
    v18 = [SASExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.findmy"];
    [(SASExpressSettings *)v4 setFindMyPrivacyBundle:v18];
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v19 = getSUManagerClientClass_softClass;
  v51 = getSUManagerClientClass_softClass;
  if (!getSUManagerClientClass_softClass)
  {
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __getSUManagerClientClass_block_invoke;
    v46 = &unk_278845EC8;
    v47 = &v48;
    __getSUManagerClientClass_block_invoke(&v43);
    v19 = v49[3];
  }

  v20 = v19;
  _Block_object_dispose(&v48, 8);
  v21 = [[v19 alloc] initWithDelegate:0 queue:queueCopy clientType:0];
  -[SASExpressSettings setSoftwareUpdateAutoUpdateEnabled:](v4, "setSoftwareUpdateAutoUpdateEnabled:", [v21 isAutomaticUpdateV2Enabled]);
  -[SASExpressSettings setSoftwareUpdateAutoDownloadEnabled:](v4, "setSoftwareUpdateAutoDownloadEnabled:", [v21 isAutomaticDownloadEnabled]);
  _isScreenTimeEnabled = [objc_opt_class() _isScreenTimeEnabled];
  v23 = _isScreenTimeEnabled;
  if (_isScreenTimeEnabled)
  {
    -[SASExpressSettings setScreenTimeEnabled:](v4, "setScreenTimeEnabled:", [_isScreenTimeEnabled BOOLValue]);
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v24 = getPKPassLibraryClass_softClass;
  v51 = getPKPassLibraryClass_softClass;
  if (!getPKPassLibraryClass_softClass)
  {
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __getPKPassLibraryClass_block_invoke;
    v46 = &unk_278845EC8;
    v47 = &v48;
    __getPKPassLibraryClass_block_invoke(&v43);
    v24 = v49[3];
  }

  v25 = v24;
  _Block_object_dispose(&v48, 8);
  sharedInstance = [v24 sharedInstance];
  backupMetadata = [sharedInstance backupMetadata];
  [(SASExpressSettings *)v4 setWalletData:backupMetadata];

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v28 = getNRMigratorClass_softClass;
  v51 = getNRMigratorClass_softClass;
  if (!getNRMigratorClass_softClass)
  {
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __getNRMigratorClass_block_invoke;
    v46 = &unk_278845EC8;
    v47 = &v48;
    __getNRMigratorClass_block_invoke(&v43);
    v28 = v49[3];
  }

  v29 = v28;
  _Block_object_dispose(&v48, 8);
  sharedMigrator = [v28 sharedMigrator];
  migrationConsentRequestData = [sharedMigrator migrationConsentRequestData];
  [(SASExpressSettings *)v4 setWatchMigrationData:migrationConsentRequestData];

  -[SASExpressSettings setAppearanceMode:](v4, "setAppearanceMode:", [objc_opt_class() _appearanceValue]);
  _displayZoomOption = [objc_opt_class() _displayZoomOption];
  v33 = _displayZoomOption;
  if (_displayZoomOption)
  {
    -[SASExpressSettings setDisplayZoomOption:](v4, "setDisplayZoomOption:", [_displayZoomOption intValue]);
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v34 = getUIDeviceClass_softClass;
  v51 = getUIDeviceClass_softClass;
  if (!getUIDeviceClass_softClass)
  {
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __getUIDeviceClass_block_invoke;
    v46 = &unk_278845EC8;
    v47 = &v48;
    __getUIDeviceClass_block_invoke(&v43);
    v34 = v49[3];
  }

  v35 = v34;
  _Block_object_dispose(&v48, 8);
  currentDevice = [v34 currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    _iPadMultitaskingMode = [objc_opt_class() _iPadMultitaskingMode];
    v39 = _iPadMultitaskingMode;
    if (_iPadMultitaskingMode)
    {
      -[SASExpressSettings setIPadMultitaskingMode:](v4, "setIPadMultitaskingMode:", [_iPadMultitaskingMode intValue]);
    }
  }

  mEMORY[0x277CD47B0] = [MEMORY[0x277CD47B0] sharedInstance];
  -[SASExpressSettings setStolenDeviceProtectionEnabled:](v4, "setStolenDeviceProtectionEnabled:", [mEMORY[0x277CD47B0] isFeatureEnabled]);

  mEMORY[0x277CD47B0]2 = [MEMORY[0x277CD47B0] sharedInstance];
  -[SASExpressSettings setStolenDeviceProtectionStrictModeEnabled:](v4, "setStolenDeviceProtectionStrictModeEnabled:", [mEMORY[0x277CD47B0]2 isFeatureStrictModeEnabled]);

  return v4;
}

+ (void)updateSettings:(id)settings withCompletion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  v7 = objc_alloc_init(SASExpressCloudSettings);
  [(SASExpressCloudSettings *)v7 updateSettings:settingsCopy withCompletion:completionCopy];
}

+ (void)fetchSettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(SASExpressCloudSettings);
  [(SASExpressCloudSettings *)v4 fetchSettingsWithCompletion:completionCopy];
}

- (SASExpressCloudSettings)initWithContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SASExpressCloudSettings;
  v5 = [(SASExpressCloudSettings *)&v11 init];
  if (v5)
  {
    v6 = dispatch_queue_create("Express Settings CloudKit Queue", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = [[SASCloudKitClient alloc] initWithContainerIdentifier:identifierCopy callbackQueue:v5->_queue];
    cloudKitClient = v5->_cloudKitClient;
    v5->_cloudKitClient = v8;
  }

  return v5;
}

- (void)setXpcActivity:(id)activity
{
  activityCopy = activity;
  cloudKitClient = [(SASExpressCloudSettings *)self cloudKitClient];
  [cloudKitClient setXpcActivity:activityCopy];
}

- (void)updateSettings:(id)settings withCompletion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    cloudKitClient = [(SASExpressCloudSettings *)self cloudKitClient];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke;
    v19[3] = &unk_278845DB0;
    v21 = completionCopy;
    v19[4] = self;
    v20 = settingsCopy;
    [cloudKitClient fetchCurrentDeviceIDWithCompletion:v19];
  }

  else
  {
    v11 = +[SASLogging facility];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SASExpressCloudSettings *)v11 updateSettings:v12 withCompletion:v13, v14, v15, v16, v17, v18];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SASLogging facility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_22E4D7000, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch device ID: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_349;
    v13[3] = &unk_278845D88;
    v17 = *(a1 + 48);
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v14 = v9;
    v15 = v10;
    v16 = v11;
    [v8 _setupRecordZoneWithName:@"settings" completion:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_349(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [SASExpressCloudSettings _queryForSettingsForDeviceID:a1[4]];
    v8 = [a1[5] cloudKitClient];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_350;
    v12[3] = &unk_278845D60;
    v9 = v6;
    v10 = a1[5];
    v13 = v9;
    v14 = v10;
    v15 = v5;
    v16 = a1[4];
    v17 = a1[6];
    v18 = a1[7];
    [v8 fetchRecords:v7 inZone:v15 group:0 completion:v12];
  }

  else
  {
    v11 = +[SASLogging facility];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_349_cold_1();
    }

    (*(a1[7] + 2))();
  }
}

void __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_350(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = +[SASLogging facility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_350_cold_1(a1, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = +[SASSystemInformation productVersion];
  if ([v5 count])
  {
    v15 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 48) zoneID];
    v15 = [v16 _createSettingsRecordInZoneID:v17 forDeviceID:*(a1 + 56)];
  }

  v18 = [*(a1 + 64) copy];
  v19 = +[SASSystemInformation productType];
  [v18 setProductType:v19];

  v20 = +[SASSystemInformation deviceClass];
  [v18 setDeviceClass:v20];

  v21 = [v18 data];
  v22 = [v15 encryptedValues];
  [v22 setObject:v21 forKeyedSubscript:@"settings"];

  if (v14)
  {
    [v15 setObject:v14 forKeyedSubscript:@"productBuild"];
  }

  v23 = [*(a1 + 40) cloudKitClient];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_354;
  v24[3] = &unk_278845D38;
  v25 = *(a1 + 72);
  [v23 saveRecord:v15 group:0 completion:v24];
}

void __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_354(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_354_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchSettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SASExpressCloudSettings_fetchSettingsWithCompletion___block_invoke;
    v8[3] = &unk_278845DD8;
    v9 = completionCopy;
    [(SASExpressCloudSettings *)self _fetchAppropriateSettingsWithCompletion:v8];
  }

  else
  {
    v7 = +[SASLogging facility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E4D7000, v7, OS_LOG_TYPE_DEFAULT, "Unable to fetch settings as there's no account", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __55__SASExpressCloudSettings_fetchSettingsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SASLogging facility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__SASExpressCloudSettings_fetchSettingsWithCompletion___block_invoke_cold_1();
    }

LABEL_4:

    (*(*(a1 + 32) + 16))();
    goto LABEL_15;
  }

  if (!v5)
  {
    v7 = +[SASLogging facility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__SASExpressCloudSettings_fetchSettingsWithCompletion___block_invoke_cold_3(v7, v13, v14, v15, v16, v17, v18, v19);
    }

    goto LABEL_4;
  }

  v8 = [v5 encryptedValues];
  v9 = [v8 objectForKeyedSubscript:@"settings"];

  v10 = objc_alloc_init(SASExpressSettings);
  v11 = [objc_alloc(MEMORY[0x277D43170]) initWithData:v9];
  if (SASExpressSettingsReadFrom(v10, v11))
  {
    v12 = *(*(a1 + 32) + 16);
  }

  else
  {
    v20 = +[SASLogging facility];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __55__SASExpressCloudSettings_fetchSettingsWithCompletion___block_invoke_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    v12 = *(*(a1 + 32) + 16);
  }

  v12();

LABEL_15:
}

- (void)_setupRecordZoneWithName:(id)name completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CBC5F8];
  nameCopy = name;
  v9 = [v7 alloc];
  v10 = [v9 initWithZoneName:nameCopy ownerName:*MEMORY[0x277CBBF28]];

  cloudKitClient = [(SASExpressCloudSettings *)self cloudKitClient];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__SASExpressCloudSettings__setupRecordZoneWithName_completion___block_invoke;
  v14[3] = &unk_278845E00;
  v15 = v10;
  selfCopy = self;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = v10;
  [cloudKitClient fetchRecordZone:v13 group:0 completion:v14];
}

void __63__SASExpressCloudSettings__setupRecordZoneWithName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = +[SASLogging facility];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__SASExpressCloudSettings__setupRecordZoneWithName_completion___block_invoke_cold_1();
    }

    if (!+[SASExpressCloudSettings _isCloudKitError:](SASExpressCloudSettings, "_isCloudKitError:", v6) || [v6 code] != 26)
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_10;
    }

    v5 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:*(a1 + 32)];
    v8 = [*(a1 + 40) cloudKitClient];
    [v8 saveRecordZone:v5 group:0 completion:*(a1 + 48)];
  }

LABEL_10:
}

- (id)_createSettingsRecordInZoneID:(id)d forDeviceID:(id)iD
{
  v5 = MEMORY[0x277CBC5A0];
  iDCopy = iD;
  dCopy = d;
  v8 = [[v5 alloc] initWithRecordType:@"Settings" zoneID:dCopy];

  [v8 setObject:iDCopy forKeyedSubscript:@"deviceUUID"];
  v9 = +[SASSystemInformation deviceClass];
  [v8 setObject:v9 forKeyedSubscript:@"deviceClass"];

  [v8 setObject:&unk_2842FCEF8 forKeyedSubscript:@"platform"];

  return v8;
}

- (void)_fetchAppropriateSettingsWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[SASSystemInformation deviceClass];
  v6 = [objc_opt_class() _queryForSettingsFromPastMonthForDeviceClass:v5];
  _zoneForSettings = [objc_opt_class() _zoneForSettings];
  v8 = objc_alloc_init(MEMORY[0x277CBC4F8]);
  defaultConfiguration = [v8 defaultConfiguration];
  [defaultConfiguration setQualityOfService:25];

  v10 = +[SASLogging facility];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&dword_22E4D7000, v10, OS_LOG_TYPE_DEFAULT, "Fetching a settings record for device class %@...", buf, 0xCu);
  }

  cloudKitClient = [(SASExpressCloudSettings *)self cloudKitClient];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__SASExpressCloudSettings__fetchAppropriateSettingsWithCompletion___block_invoke;
  v16[3] = &unk_278845E50;
  v16[4] = self;
  v17 = _zoneForSettings;
  v18 = v8;
  v19 = completionCopy;
  v12 = v8;
  v13 = _zoneForSettings;
  v14 = completionCopy;
  [cloudKitClient fetchRecords:v6 inZone:v13 group:v12 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __67__SASExpressCloudSettings__fetchAppropriateSettingsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = +[SASLogging facility];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 firstObject];
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_22E4D7000, v5, OS_LOG_TYPE_DEFAULT, "Successfully fetched record: %@", buf, 0xCu);
    }

    v7 = *(a1 + 56);
    v8 = [v3 firstObject];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = [objc_opt_class() _queryForSettingsFromPastMonthForPlatform:1];
    v10 = +[SASLogging facility];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E4D7000, v10, OS_LOG_TYPE_DEFAULT, "Fetching a settings record for the current platform...", buf, 2u);
    }

    v11 = [*(a1 + 32) cloudKitClient];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__SASExpressCloudSettings__fetchAppropriateSettingsWithCompletion___block_invoke_378;
    v19[3] = &unk_278845E50;
    v14 = *(a1 + 56);
    v18 = *(a1 + 32);
    v15 = *(&v18 + 1);
    *&v16 = *(a1 + 48);
    *(&v16 + 1) = v14;
    v20 = v18;
    v21 = v16;
    [v11 fetchRecords:v8 inZone:v12 group:v13 completion:v19];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __67__SASExpressCloudSettings__fetchAppropriateSettingsWithCompletion___block_invoke_378(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = +[SASLogging facility];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 firstObject];
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_22E4D7000, v5, OS_LOG_TYPE_DEFAULT, "Successfully fetched record: %@", buf, 0xCu);
    }

    v7 = *(a1 + 56);
    v8 = [v3 firstObject];
    (*(v7 + 16))(v7, v8, 0);
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = [objc_opt_class() _queryForSettingsFromPastMonth];
    v10 = +[SASLogging facility];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E4D7000, v10, OS_LOG_TYPE_DEFAULT, "Fetching a settings record for any platform/device class...", buf, 2u);
    }

    v11 = [*(a1 + 32) cloudKitClient];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__SASExpressCloudSettings__fetchAppropriateSettingsWithCompletion___block_invoke_379;
    v15[3] = &unk_278845E28;
    v16 = *(a1 + 56);
    [v11 fetchRecords:v8 inZone:v12 group:v13 completion:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __67__SASExpressCloudSettings__fetchAppropriateSettingsWithCompletion___block_invoke_379(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];

  v8 = +[SASLogging facility];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 firstObject];
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_22E4D7000, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched record: %@", &v14, 0xCu);
    }

    v11 = *(a1 + 32);
    v12 = [v5 firstObject];
    (*(v11 + 16))(v11, v12, 0);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __67__SASExpressCloudSettings__fetchAppropriateSettingsWithCompletion___block_invoke_379_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isCloudKitError:(id)error
{
  domain = [error domain];
  v4 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  return v4;
}

+ (id)_queryForSettingsForDeviceID:(id)d
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deviceUUID == %@", d];
  v4 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"Settings" predicate:v3];

  return v4;
}

+ (id)_queryForSettingsFromPastMonthForPlatform:(unint64_t)platform
{
  v14[2] = *MEMORY[0x277D85DE8];
  platform = [MEMORY[0x277CCAC30] predicateWithFormat:@"platform == %ld", platform];
  v4 = MEMORY[0x277CCA920];
  v14[0] = platform;
  v5 = +[SASExpressCloudSettings _predicateForRecordsModifiedInPastMonth];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  v8 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"Settings" predicate:v7];
  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"modificationDate" ascending:0];
  v13 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v8 setSortDescriptors:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_queryForSettingsFromPastMonthForDeviceClass:(id)class
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deviceClass == %@", class];
  v4 = MEMORY[0x277CCA920];
  v14[0] = v3;
  v5 = +[SASExpressCloudSettings _predicateForRecordsModifiedInPastMonth];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  v8 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"Settings" predicate:v7];
  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"modificationDate" ascending:0];
  v13 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v8 setSortDescriptors:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_queryForSettingsFromPastMonth
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBC578]);
  v3 = +[SASExpressCloudSettings _predicateForRecordsModifiedInPastMonth];
  v4 = [v2 initWithRecordType:@"Settings" predicate:v3];

  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"modificationDate" ascending:0];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v4 setSortDescriptors:v6];

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_predicateForRecordsModifiedInPastMonth
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v3 setMonth:-1];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [currentCalendar dateByAddingComponents:v3 toDate:date options:0];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modificationDate >= %@", v5];

  return v6;
}

+ (id)_zoneForSettings
{
  v2 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneName:@"settings"];

  return v2;
}

+ (id)privacyBundleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getOBBundleClass_softClass;
  v14 = getOBBundleClass_softClass;
  if (!getOBBundleClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getOBBundleClass_block_invoke;
    v10[3] = &unk_278845EC8;
    v10[4] = &v11;
    __getOBBundleClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 bundleWithIdentifier:identifierCopy];
  privacyFlow = [v6 privacyFlow];
  if (privacyFlow)
  {
    v8 = objc_alloc_init(SASExpressSettingsPrivacyBundle);
    [(SASExpressSettingsPrivacyBundle *)v8 setIdentifier:identifierCopy];
    -[SASExpressSettingsPrivacyBundle setContentVersion:](v8, "setContentVersion:", [privacyFlow contentVersion]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_isFindMyEnabled
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = getFMDFMIPManagerClass_softClass;
  v22 = getFMDFMIPManagerClass_softClass;
  if (!getFMDFMIPManagerClass_softClass)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getFMDFMIPManagerClass_block_invoke;
    v18[3] = &unk_278845EC8;
    v18[4] = &v19;
    __getFMDFMIPManagerClass_block_invoke(v18);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  sharedInstance = [v3 sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SASExpressCloudSettings__isFindMyEnabled__block_invoke;
  v9[3] = &unk_278845E78;
  v11 = &v12;
  v6 = v2;
  v10 = v6;
  [sharedInstance fmipStateWithCompletion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__SASExpressCloudSettings__isFindMyEnabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __43__SASExpressCloudSettings__isFindMyEnabled__block_invoke_cold_1();
    }
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInt:a2 == 1];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_isScreenTimeEnabled
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = getSTManagementStateClass_softClass;
  v22 = getSTManagementStateClass_softClass;
  if (!getSTManagementStateClass_softClass)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __getSTManagementStateClass_block_invoke;
    v18[3] = &unk_278845EC8;
    v18[4] = &v19;
    __getSTManagementStateClass_block_invoke(v18);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SASExpressCloudSettings__isScreenTimeEnabled__block_invoke;
  v9[3] = &unk_278845EA0;
  v11 = &v12;
  v6 = v2;
  v10 = v6;
  [v5 screenTimeStateWithCompletionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__SASExpressCloudSettings__isScreenTimeEnabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[SASLogging facility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __47__SASExpressCloudSettings__isScreenTimeEnabled__block_invoke_cold_1();
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:a2 == 2];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (int)_appearanceValue
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getUISUserInterfaceStyleModeClass_softClass;
  v13 = getUISUserInterfaceStyleModeClass_softClass;
  if (!getUISUserInterfaceStyleModeClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getUISUserInterfaceStyleModeClass_block_invoke;
    v9[3] = &unk_278845EC8;
    v9[4] = &v10;
    __getUISUserInterfaceStyleModeClass_block_invoke(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [[v2 alloc] initWithDelegate:0];
  modeValue = [v4 modeValue];
  if (modeValue == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  if (modeValue == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

+ (id)_displayZoomOption
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKeyedSubscript:@"zoomed"];
  v4 = 0;
  if ([v3 count] == 4)
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    [v5 floatValue];
    v7 = v6;

    v8 = [v3 objectAtIndexedSubscript:1];
    [v8 floatValue];
    v10 = v9;

    v11 = [v3 objectAtIndexedSubscript:2];
    [v11 floatValue];
    v13 = v12;

    v14 = [v3 objectAtIndexedSubscript:3];
    [v14 floatValue];
    v16 = v15;

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v17 = getCADisplayClass_softClass;
    v28 = getCADisplayClass_softClass;
    if (!getCADisplayClass_softClass)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __getCADisplayClass_block_invoke;
      v24[3] = &unk_278845EC8;
      v24[4] = &v25;
      __getCADisplayClass_block_invoke(v24);
      v17 = v26[3];
    }

    v18 = v17;
    _Block_object_dispose(&v25, 8);
    mainDisplay = [v17 mainDisplay];
    currentMode = [mainDisplay currentMode];

    height = [currentMode height];
    v22 = v13 * v16;
    if (v22 == height && v7 * v10 == [currentMode width])
    {
      v4 = &unk_2842FCF10;
    }

    else
    {
      v4 = &unk_2842FCF28;
    }
  }

  return v4;
}

+ (id)_iPadMultitaskingMode
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getSBSBuddyMultitaskingFlowClass_softClass;
  v12 = getSBSBuddyMultitaskingFlowClass_softClass;
  if (!getSBSBuddyMultitaskingFlowClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getSBSBuddyMultitaskingFlowClass_block_invoke;
    v8[3] = &unk_278845EC8;
    v8[4] = &v9;
    __getSBSBuddyMultitaskingFlowClass_block_invoke(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = objc_alloc_init(v2);
  currentMultitaskingOption = [v4 currentMultitaskingOption];

  v6 = &unk_2842FCF40;
  if (currentMultitaskingOption)
  {
    v6 = 0;
  }

  if (currentMultitaskingOption == 1)
  {
    return &unk_2842FCF28;
  }

  else
  {
    return v6;
  }
}

void __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_349_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22E4D7000, v0, v1, "Error setting up record zone: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_350_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0(&dword_22E4D7000, a2, a3, "Error fetching records: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__SASExpressCloudSettings_updateSettings_withCompletion___block_invoke_354_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22E4D7000, v0, v1, "Failed to save record: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__SASExpressCloudSettings_fetchSettingsWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22E4D7000, v0, v1, "Unable to fetch settings: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__SASExpressCloudSettings__setupRecordZoneWithName_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22E4D7000, v0, v1, "Failed to fetching record zone: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__SASExpressCloudSettings__fetchAppropriateSettingsWithCompletion___block_invoke_379_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22E4D7000, v0, v1, "Failed to fetch records: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __43__SASExpressCloudSettings__isFindMyEnabled__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22E4D7000, v0, v1, "Failed to retrieve Find My state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__SASExpressCloudSettings__isScreenTimeEnabled__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22E4D7000, v0, v1, "Failed to retrieve Screen Time state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end