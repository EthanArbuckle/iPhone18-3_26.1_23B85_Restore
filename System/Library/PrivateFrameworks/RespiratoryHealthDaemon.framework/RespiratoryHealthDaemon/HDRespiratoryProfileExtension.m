@interface HDRespiratoryProfileExtension
- (HDProfile)profile;
- (HDRespiratoryProfileExtension)initWithProfile:(id)a3;
- (HDRespiratoryProfileExtension)initWithProfile:(id)a3 featureAvailabilityManager:(id)a4 companionAnalysisAvailabilityManager:(id)a5 ageGatingDefaults:(id)a6;
- (id)diagnosticDescription;
- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3;
- (id)oxygenSaturationSessionWithDelegate:(id)a3 queue:(id)a4;
- (void)_setupOrResetSettingsIfNeededWithFeatureAvailabilityManager:(id)a3;
- (void)_setupSettingsWithProfile:(id)a3;
- (void)_updateBackgroundRecordingSettings;
- (void)dealloc;
- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)a3;
- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)a3;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)profileDidBecomeReady:(id)a3;
@end

@implementation HDRespiratoryProfileExtension

- (HDRespiratoryProfileExtension)initWithProfile:(id)a3
{
  v4 = a3;
  v5 = HDRPOxygenSaturationRecordingFeatureAvailabilityProvider(v4);
  v6 = HDRPOxygenSaturationRecordingCompanionAnalysisFeatureAvailabilityProvider(v4);
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = [v7 initWithSuiteName:*MEMORY[0x277CCE228]];
  v9 = [(HDRespiratoryProfileExtension *)self initWithProfile:v4 featureAvailabilityManager:v5 companionAnalysisAvailabilityManager:v6 ageGatingDefaults:v8];

  return v9;
}

- (HDRespiratoryProfileExtension)initWithProfile:(id)a3 featureAvailabilityManager:(id)a4 companionAnalysisAvailabilityManager:(id)a5 ageGatingDefaults:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v38.receiver = self;
  v38.super_class = HDRespiratoryProfileExtension;
  v14 = [(HDRespiratoryProfileExtension *)&v38 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, v10);
    objc_storeStrong(&v15->_featureAvailabilityManager, a4);
    objc_storeStrong(&v15->_companionAnalysisFeatureAvailabilityManager, a5);
    v16 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v15->_companionAnalysisFeatureAvailabilityManager healthDataSource:v10];
    companionAnalysisFeatureStatusManager = v15->_companionAnalysisFeatureStatusManager;
    v15->_companionAnalysisFeatureStatusManager = v16;

    v18 = HKCreateSerialDispatchQueue();
    queue = v15->_queue;
    v15->_queue = v18;

    _HKInitializeLogging();
    v20 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      *buf = 138543362;
      v40 = v21;
      v22 = v21;
      _os_log_impl(&dword_262086000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Plugin loaded", buf, 0xCu);
    }

    objc_storeStrong(&v15->_ageGatingDefaults, a6);
    v23 = [MEMORY[0x277CCDD30] sharedBehavior];
    v24 = [v23 isCompanionCapable];

    if (v24)
    {
      v25 = objc_alloc(MEMORY[0x277D105D8]);
      v26 = HKLogRespiratoryCategory();
      v27 = [v25 initWithProfile:v10 featureAvailabilityExtension:v11 loggingCategory:v26];
      featureDeliveryManager = v15->_featureDeliveryManager;
      v15->_featureDeliveryManager = v27;

      v29 = [[HDRPRespiratoryDailyAnalytics alloc] initWithProfile:v10 featureAvailabilityProvider:v15->_featureAvailabilityManager];
      dailyAnalytics = v15->_dailyAnalytics;
      v15->_dailyAnalytics = v29;

      v31 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:v15->_featureAvailabilityManager healthDataSource:v10];
      v32 = [[HDRPOxygenSaturationAnalyzer alloc] initWithProfile:v10 oxygenSaturationFeatureStatusProvider:v31 oxygenSaturationCompanionAnalysisFeatureStatusProvider:v15->_companionAnalysisFeatureStatusManager];
      oxygenSaturationAnalyzer = v15->_oxygenSaturationAnalyzer;
      v15->_oxygenSaturationAnalyzer = v32;
    }

    WeakRetained = objc_loadWeakRetained(&v15->_profile);
    [WeakRetained registerProfileReadyObserver:v15 queue:0];

    v35 = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [v35 addObject:v15];
  }

  v36 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  [(NSUserDefaults *)self->_ageGatingDefaults removeObserver:self forKeyPath:*MEMORY[0x277CCE250]];
  v3.receiver = self;
  v3.super_class = HDRespiratoryProfileExtension;
  [(HDRespiratoryProfileExtension *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:*MEMORY[0x277CCE250]])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HDRespiratoryProfileExtension_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279B0E2F8;
    block[4] = self;
    v16 = v10;
    v17 = v12;
    dispatch_async(queue, block);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = HDRespiratoryProfileExtension;
    [(HDRespiratoryProfileExtension *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

uint64_t __80__HDRespiratoryProfileExtension_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *MEMORY[0x277CCA300];
    v8 = v4;
    v9 = [v5 objectForKeyedSubscript:v7];
    v10 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v13 = 138544130;
    v14 = v4;
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_262086000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ changed: %{public}@ -> %{public}@", &v13, 0x2Au);
  }

  result = [*(a1 + 32) _updateBackgroundRecordingSettings];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)oxygenSaturationSessionWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDRespiratoryProfileExtension *)self unitTesting_healthLiteSessionWithDelegateHandler];
  v9 = v8;
  if (v8)
  {
    v10 = (*(v8 + 16))(v8, v6, v7);
  }

  else
  {
    v10 = [[HLOxygenSaturationSession alloc] initWithDelegate:v6 onQueue:v7];
  }

  v11 = v10;

  return v11;
}

- (void)profileDidBecomeReady:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277CCDD30] sharedBehavior];
  v5 = [v4 isCompanionCapable];

  if (v5)
  {
    [(HDRespiratoryProfileExtension *)self _setupSettingsWithProfile:v6];
    [(HDRespiratoryProfileExtension *)self _updateBackgroundRecordingSettings];
  }

  [(HDFeatureAvailabilityExtension *)self->_featureAvailabilityManager registerObserver:self queue:self->_queue];
  [(HDRespiratoryProfileExtension *)self startObservingAgeGatingDefaults];
}

- (id)featureAvailabilityExtensionForFeatureIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277CCC0B0]])
  {
    v5 = 8;
LABEL_5:
    v6 = *(&self->super.isa + v5);
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x277CCC0B8]])
  {
    v5 = 48;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_262086000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notice of onboarding completion change", &v7, 0xCu);
  }

  [(HDRespiratoryProfileExtension *)self _updateBackgroundRecordingSettings];
  [(HDRespiratoryProfileExtension *)self _setupOrResetSettingsIfNeededWithFeatureAvailabilityManager:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityExtensionOnboardingCompletionDataDidBecomeAvailable:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_262086000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notice of onboarding completion data becoming available", &v6, 0xCu);
  }

  [(HDRespiratoryProfileExtension *)self _updateBackgroundRecordingSettings];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)featureAvailabilityExtensionDidUpdateRegionAvailability:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_262086000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received notice of region list change", &v6, 0xCu);
  }

  [(HDRespiratoryProfileExtension *)self _updateBackgroundRecordingSettings];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setupSettingsWithProfile:(id)a3
{
  v8 = [MEMORY[0x277CBEBD0] hkrp_respiratoryDefaults];
  v4 = objc_alloc(MEMORY[0x277D46BB0]);
  v5 = [v4 initWithUserDefaultsDomain:*MEMORY[0x277CCCD20]];
  v6 = [objc_alloc(MEMORY[0x277D46BA8]) initWithUserDefaults:v8 userDefaultsSyncProvider:v5 companionAnalysisFeatureStatusManager:self->_companionAnalysisFeatureStatusManager];
  settings = self->_settings;
  self->_settings = v6;
}

- (void)_setupOrResetSettingsIfNeededWithFeatureAvailabilityManager:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v4 = [a3 featureOnboardingRecordWithError:&v17];
  v5 = v17;
  if (!v4)
  {
    _HKInitializeLogging();
    v11 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HDRespiratoryProfileExtension _setupOrResetSettingsIfNeededWithFeatureAvailabilityManager:];
    }

    goto LABEL_15;
  }

  v6 = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([v6 isAppleInternalInstall])
  {
    v7 = [v4 onboardingState];

    if (v7 == 1)
    {
      _HKInitializeLogging();
      v8 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        *buf = 138543362;
        v19 = v9;
        v10 = v9;
        _os_log_impl(&dword_262086000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing user defaults settings", buf, 0xCu);
      }

      [(HKRPOxygenSaturationSettings *)self->_settings reset];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v11 = [MEMORY[0x277CCDD30] sharedBehavior];
  if (![v11 isCompanionCapable])
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = [v4 onboardingState];

  if (v12 == 2)
  {
    _HKInitializeLogging();
    v13 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138543362;
      v19 = v14;
      v15 = v14;
      _os_log_impl(&dword_262086000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initializing defaults settings", buf, 0xCu);
    }

    [(HKRPOxygenSaturationSettings *)self->_settings activateDefaultValuesIfNeeded];
  }

LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateBackgroundRecordingSettings
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Failed to check if Blood Oxygen is supported with error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKRPOxygenSaturationSettings oxygenSaturationDisabled](self->_settings, "oxygenSaturationDisabled")}];
  [v3 appendFormat:@"oxygenSaturationDisabled: %@\n", v4];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKRPOxygenSaturationSettings backgroundRecordingsEnabled](self->_settings, "backgroundRecordingsEnabled")}];
  [v3 appendFormat:@"backgroundRecordingsEnabled: %@\n", v5];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKRPOxygenSaturationSettings backgroundRecordingsDuringSleepMode](self->_settings, "backgroundRecordingsDuringSleepMode")}];
  [v3 appendFormat:@"backgroundRecordingsDuringSleepMode: %@\n", v6];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKRPOxygenSaturationSettings backgroundRecordingsDuringTheaterMode](self->_settings, "backgroundRecordingsDuringTheaterMode")}];
  [v3 appendFormat:@"backgroundRecordingsDuringTheaterMode: %@\n", v7];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKRPOxygenSaturationSettings overrideIsRemoteDisabled](self->_settings, "overrideIsRemoteDisabled")}];
  [v3 appendFormat:@"overrideIsRemoteDisabled: %@\n", v8];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKRPOxygenSaturationSettings isCompanionAnalysisEnabled](self->_settings, "isCompanionAnalysisEnabled")}];
  [v3 appendFormat:@"isCompanionAnalysisEnabled: %@\n", v9];

  v10 = [v3 copy];

  return v10;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)_setupOrResetSettingsIfNeededWithFeatureAvailabilityManager:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_0(v0);
  OUTLINED_FUNCTION_1(&dword_262086000, v2, v3, "[%{public}@] Failed to remove user defaults settings with error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end