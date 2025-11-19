@interface BYExpressCloudSettings
+ (id)_displayZoomOption;
+ (id)_iPadMultitaskingMode;
+ (id)_isFindMyEnabled;
+ (id)_isScreenTimeEnabled;
+ (id)createExpressSettingsWithQueue:(id)a3;
+ (id)privacyBundleForIdentifier:(id)a3;
+ (int)_appearanceValue;
+ (void)fetchSettingsWithCompletion:(id)a3;
+ (void)updateSettings:(id)a3 withCompletion:(id)a4;
@end

@implementation BYExpressCloudSettings

+ (id)createExpressSettingsWithQueue:(id)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(v3);
  v4 = objc_alloc_init(MEMORY[0x1E69CA9D8]);
  [v4 setVersion:1];
  v5 = [MEMORY[0x1E69CA9E8] productType];
  [v4 setProductType:v5];

  v6 = [MEMORY[0x1E69CA9E8] deviceClass];
  [v4 setDeviceClass:v6];

  v7 = [MEMORY[0x1E69CA9E8] productVersion];
  [v4 setProductVersion:v7];

  v8 = [MEMORY[0x1E69ADFB8] sharedConnection];
  [v4 setDeviceAnalyticsOptIn:{objc_msgSend(v8, "userBoolValueForSetting:", *MEMORY[0x1E69ADE40]) == 1}];

  v9 = [BYExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.analyticsdevice"];
  [v4 setDeviceAnalyticsPrivacyBundle:v9];

  v10 = [MEMORY[0x1E69ADFB8] sharedConnection];
  [v4 setAppAnalyticsOptIn:{objc_msgSend(v10, "userBoolValueForSetting:", *MEMORY[0x1E69ADD88]) == 1}];

  v11 = [BYExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.analyticsapp"];
  [v4 setAppAnalyticsPrivacyBundle:v11];

  [v4 setLocationServicesOptIn:{objc_msgSend(MEMORY[0x1E695FBE8], "locationServicesEnabled")}];
  v12 = [BYExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.locationservices"];
  [v4 setLocationServicesPrivacyBundle:v12];

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v13 = getAFPreferencesClass_softClass_3;
  v51 = getAFPreferencesClass_softClass_3;
  if (!getAFPreferencesClass_softClass_3)
  {
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __getAFPreferencesClass_block_invoke_3;
    v46 = &unk_1E7D02730;
    v47 = &v48;
    __getAFPreferencesClass_block_invoke_3(&v43);
    v13 = v49[3];
  }

  v14 = v13;
  _Block_object_dispose(&v48, 8);
  v15 = [v13 sharedPreferences];
  [v4 setSiriOptIn:{objc_msgSend(v15, "assistantIsEnabled")}];

  v16 = [BYExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.siri"];
  [v4 setSiriPrivacyBundle:v16];

  [v4 setSiriVoiceTriggerEnabled:{+[BYSiriUtilities isVoiceTriggerEnabled](BYSiriUtilities, "isVoiceTriggerEnabled")}];
  v17 = [objc_opt_class() _isFindMyEnabled];
  v18 = v17;
  if (v17)
  {
    [v4 setFindMyOptIn:{objc_msgSend(v17, "BOOLValue")}];
    v19 = [BYExpressCloudSettings privacyBundleForIdentifier:@"com.apple.onboarding.findmy"];
    [v4 setFindMyPrivacyBundle:v19];
  }

  v20 = [BYSUManagerClient createWithQueue:v3 clientType:0];
  [v4 setSoftwareUpdateAutoUpdateEnabled:{objc_msgSend(v20, "isAutomaticUpdateV2Enabled")}];
  [v4 setSoftwareUpdateAutoDownloadEnabled:{objc_msgSend(v20, "isAutomaticDownloadEnabled")}];
  v21 = [objc_opt_class() _isScreenTimeEnabled];
  v22 = v21;
  if (v21)
  {
    [v4 setScreenTimeEnabled:{objc_msgSend(v21, "BOOLValue")}];
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v23 = getPKPassLibraryClass_softClass_1;
  v51 = getPKPassLibraryClass_softClass_1;
  if (!getPKPassLibraryClass_softClass_1)
  {
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __getPKPassLibraryClass_block_invoke_1;
    v46 = &unk_1E7D02730;
    v47 = &v48;
    __getPKPassLibraryClass_block_invoke_1(&v43);
    v23 = v49[3];
  }

  v24 = v23;
  _Block_object_dispose(&v48, 8);
  v25 = [v23 sharedInstance];
  v26 = [v25 backupMetadata];
  [v4 setWalletData:v26];

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v27 = getNRMigratorClass_softClass_1;
  v51 = getNRMigratorClass_softClass_1;
  if (!getNRMigratorClass_softClass_1)
  {
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __getNRMigratorClass_block_invoke_1;
    v46 = &unk_1E7D02730;
    v47 = &v48;
    __getNRMigratorClass_block_invoke_1(&v43);
    v27 = v49[3];
  }

  v28 = v27;
  _Block_object_dispose(&v48, 8);
  v29 = [v27 sharedMigrator];
  v30 = [v29 migrationConsentRequestData];
  [v4 setWatchMigrationData:v30];

  [v4 setAppearanceMode:{objc_msgSend(objc_opt_class(), "_appearanceValue")}];
  v31 = [objc_opt_class() _displayZoomOption];
  v32 = v31;
  if (v31)
  {
    [v4 setDisplayZoomOption:{objc_msgSend(v31, "intValue")}];
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v33 = getUIDeviceClass_softClass_0;
  v51 = getUIDeviceClass_softClass_0;
  if (!getUIDeviceClass_softClass_0)
  {
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __getUIDeviceClass_block_invoke_0;
    v46 = &unk_1E7D02730;
    v47 = &v48;
    __getUIDeviceClass_block_invoke_0(&v43);
    v33 = v49[3];
  }

  v34 = v33;
  _Block_object_dispose(&v48, 8);
  v35 = [v33 currentDevice];
  v36 = [v35 userInterfaceIdiom];

  if (v36 == 1)
  {
    v37 = [objc_opt_class() _iPadMultitaskingMode];
    v38 = v37;
    if (v37)
    {
      [v4 setIPadMultitaskingMode:{objc_msgSend(v37, "intValue")}];
    }
  }

  v39 = [MEMORY[0x1E696EE70] sharedInstance];
  [v4 setStolenDeviceProtectionEnabled:{objc_msgSend(v39, "isFeatureEnabled")}];

  v40 = [MEMORY[0x1E696EE70] sharedInstance];
  [v4 setStolenDeviceProtectionStrictModeEnabled:{objc_msgSend(v40, "isFeatureStrictModeEnabled")}];

  v41 = _BYLoggingFacility();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    [(BYExpressCloudSettings *)v4 createExpressSettingsWithQueue:v41];
  }

  return v4;
}

+ (void)updateSettings:(id)a3 withCompletion:(id)a4
{
  v5 = MEMORY[0x1E69CA9D0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 updateSettings:v7 withCompletion:v6];
}

+ (void)fetchSettingsWithCompletion:(id)a3
{
  v3 = MEMORY[0x1E69CA9D0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 fetchSettingsWithCompletion:v4];
}

+ (id)privacyBundleForIdentifier:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getOBBundleClass_softClass;
  v14 = getOBBundleClass_softClass;
  if (!getOBBundleClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getOBBundleClass_block_invoke;
    v10[3] = &unk_1E7D02730;
    v10[4] = &v11;
    __getOBBundleClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 bundleWithIdentifier:v3];
  v7 = [v6 privacyFlow];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69CA9E0]);
    [v8 setIdentifier:v3];
    [v8 setContentVersion:{objc_msgSend(v7, "contentVersion")}];
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
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = getFMDFMIPManagerClass_softClass_1;
  v22 = getFMDFMIPManagerClass_softClass_1;
  if (!getFMDFMIPManagerClass_softClass_1)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getFMDFMIPManagerClass_block_invoke_1;
    v18[3] = &unk_1E7D02730;
    v18[4] = &v19;
    __getFMDFMIPManagerClass_block_invoke_1(v18);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v5 = [v3 sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__BYExpressCloudSettings__isFindMyEnabled__block_invoke;
  v9[3] = &unk_1E7D028F0;
  v11 = &v12;
  v6 = v2;
  v10 = v6;
  [v5 fmipStateWithCompletion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __42__BYExpressCloudSettings__isFindMyEnabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__BYExpressCloudSettings__isFindMyEnabled__block_invoke_cold_1(v5);
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:a2 == 1];
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
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = getSTManagementStateClass_softClass_1;
  v22 = getSTManagementStateClass_softClass_1;
  if (!getSTManagementStateClass_softClass_1)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getSTManagementStateClass_block_invoke_1;
    v18[3] = &unk_1E7D02730;
    v18[4] = &v19;
    __getSTManagementStateClass_block_invoke_1(v18);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__BYExpressCloudSettings__isScreenTimeEnabled__block_invoke;
  v9[3] = &unk_1E7D037B8;
  v11 = &v12;
  v6 = v2;
  v10 = v6;
  [v5 screenTimeStateWithCompletionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__BYExpressCloudSettings__isScreenTimeEnabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__BYExpressCloudSettings__isScreenTimeEnabled__block_invoke_cold_1(v5);
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:a2 == 2];
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
  v2 = getUISUserInterfaceStyleModeClass_softClass_1;
  v13 = getUISUserInterfaceStyleModeClass_softClass_1;
  if (!getUISUserInterfaceStyleModeClass_softClass_1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getUISUserInterfaceStyleModeClass_block_invoke_1;
    v9[3] = &unk_1E7D02730;
    v9[4] = &v10;
    __getUISUserInterfaceStyleModeClass_block_invoke_1(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [[v2 alloc] initWithDelegate:0];
  v5 = [v4 modeValue];
  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  if (v5 == 2)
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
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __getCADisplayClass_block_invoke;
      v24[3] = &unk_1E7D02730;
      v24[4] = &v25;
      __getCADisplayClass_block_invoke(v24);
      v17 = v26[3];
    }

    v18 = v17;
    _Block_object_dispose(&v25, 8);
    v19 = [v17 mainDisplay];
    v20 = [v19 currentMode];

    v21 = [v20 height];
    v22 = v13 * v16;
    if (v22 == v21 && v7 * v10 == [v20 width])
    {
      v4 = &unk_1F30A7808;
    }

    else
    {
      v4 = &unk_1F30A7820;
    }
  }

  return v4;
}

+ (id)_iPadMultitaskingMode
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v2 = getSBSBuddyMultitaskingFlowClass_softClass_0;
  v12 = getSBSBuddyMultitaskingFlowClass_softClass_0;
  if (!getSBSBuddyMultitaskingFlowClass_softClass_0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __getSBSBuddyMultitaskingFlowClass_block_invoke_0;
    v8[3] = &unk_1E7D02730;
    v8[4] = &v9;
    __getSBSBuddyMultitaskingFlowClass_block_invoke_0(v8);
    v2 = v10[3];
  }

  v3 = v2;
  _Block_object_dispose(&v9, 8);
  v4 = objc_alloc_init(v2);
  v5 = [v4 currentMultitaskingOption];

  v6 = &unk_1F30A7838;
  if (v5)
  {
    v6 = 0;
  }

  if (v5 == 1)
  {
    return &unk_1F30A7820;
  }

  else
  {
    return v6;
  }
}

+ (void)createExpressSettingsWithQueue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B862F000, a2, OS_LOG_TYPE_DEBUG, "Created express settings %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __42__BYExpressCloudSettings__isFindMyEnabled__block_invoke_cold_1(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = _BYIsInternalInstall();
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    v1 = [a1 domain];
    v12 = v1;
    v13 = [a1 code];
    a1 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>"];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v3, v4, "Failed to retrieve Find My state: %{public}@", v5, v6, v7, v8, v12, v13, 2u);
  if (!v9)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __46__BYExpressCloudSettings__isScreenTimeEnabled__block_invoke_cold_1(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = _BYIsInternalInstall();
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    v1 = [a1 domain];
    v12 = v1;
    v13 = [a1 code];
    a1 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>"];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v3, v4, "Failed to retrieve Screen Time state: %{public}@", v5, v6, v7, v8, v12, v13, 2u);
  if (!v9)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end