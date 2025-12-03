@interface HKRPOxygenSaturationSettings
+ (id)standardSettings;
- (BOOL)isCompanionAnalysisEnabled;
- (BOOL)overrideIsRemoteDisabled;
- (HKRPOxygenSaturationSettings)initWithUserDefaults:(id)defaults userDefaultsSyncProvider:(id)provider companionAnalysisFeatureStatusManager:(id)manager;
- (NSString)aboutBloodOxygenFooter;
- (NSString)aboutBloodOxygenFooterWithLearnMore;
- (NSString)backgroundRecordingsDetailOptionsFooter;
- (NSString)backgroundRecordingsDetailOptionsTitle;
- (NSString)backgroundRecordingsFooter;
- (NSString)backgroundRecordingsHeader;
- (NSString)backgroundRecordingsTitle;
- (NSString)backgroundRecordingsWithAgeGatingEnabledHeader;
- (NSString)bloodOxygenRecordingsTitle;
- (NSString)featureActiveStatusDescription;
- (NSString)featureActiveStatusTitle;
- (NSString)featureInactiveStatusDescription;
- (NSString)featureInactiveStatusTitle;
- (NSString)howToTakeARecordingEducationTitle;
- (NSString)learnMoreAboutBloodOxygenURL;
- (NSString)recordingInactiveDescription;
- (id)_settingsToObserve;
- (uint64_t)_notifySettingsDidChange;
- (uint64_t)_setBackgroundRecordingsDuringSleepMode:(uint64_t)result;
- (uint64_t)_setBackgroundRecordingsDuringTheaterMode:(uint64_t)result;
- (uint64_t)_setBackgroundRecordingsEnabled:(uint64_t)result;
- (uint64_t)_setOxygenSaturationDisabled:(uint64_t)result;
- (uint64_t)activateDefaultValuesIfNeeded;
- (void)_loadFeatureStatus;
- (void)_startObservingDefaults;
- (void)_stopObservingAllDefaults;
- (void)activateDefaultValuesIfNeeded;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reset;
- (void)setBackgroundRecordingsDuringSleepMode:(BOOL)mode;
- (void)setBackgroundRecordingsDuringTheaterMode:(BOOL)mode;
- (void)setBackgroundRecordingsEnabled:(BOOL)enabled;
- (void)setOxygenSaturationDisabled:(BOOL)disabled;
@end

@implementation HKRPOxygenSaturationSettings

- (HKRPOxygenSaturationSettings)initWithUserDefaults:(id)defaults userDefaultsSyncProvider:(id)provider companionAnalysisFeatureStatusManager:(id)manager
{
  defaultsCopy = defaults;
  providerCopy = provider;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = HKRPOxygenSaturationSettings;
  v12 = [(HKRPOxygenSaturationSettings *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_companionAnalysisFeatureStatusManager, manager);
    objc_storeStrong(&v13->_userDefaults, defaults);
    v15 = objc_alloc(MEMORY[0x277CCD738]);
    v16 = [v15 initWithName:@"HKRPOxygenSaturationSettingsObservers" loggingCategory:*MEMORY[0x277CCC310]];
    observers = v13->_observers;
    v13->_observers = v16;

    objc_storeStrong(&v13->_userDefaultsSyncProvider, provider);
    [(HKRPOxygenSaturationSettings *)v13 _startObservingDefaults];
    [(HKRPOxygenSaturationSettings *)v13 _loadFeatureStatus];
  }

  return v13;
}

- (void)dealloc
{
  [(HKRPOxygenSaturationSettings *)self _stopObservingAllDefaults];
  v3.receiver = self;
  v3.super_class = HKRPOxygenSaturationSettings;
  [(HKRPOxygenSaturationSettings *)&v3 dealloc];
}

+ (id)standardSettings
{
  hkrp_respiratoryDefaults = [MEMORY[0x277CBEBD0] hkrp_respiratoryDefaults];
  v3 = [HKRPUserDefaultsSyncProvider alloc];
  v4 = [(HKRPUserDefaultsSyncProvider *)v3 initWithUserDefaultsDomain:*MEMORY[0x277CCCD20]];
  v5 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v6 = objc_alloc(MEMORY[0x277CCD460]);
  v7 = [v6 initWithFeatureIdentifier:*MEMORY[0x277CCC0B8] healthStore:v5];
  v8 = [[HKRPOxygenSaturationSettings alloc] initWithUserDefaults:hkrp_respiratoryDefaults userDefaultsSyncProvider:v4 companionAnalysisFeatureStatusManager:v7];

  return v8;
}

- (void)setOxygenSaturationDisabled:(BOOL)disabled
{
  [HKRPOxygenSaturationSettings _setOxygenSaturationDisabled:?];
  userDefaultsSyncProvider = self->_userDefaultsSyncProvider;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"OxygenSaturationDisabled"];
  [(HKRPUserDefaultsSyncProviding *)userDefaultsSyncProvider synchronizeKeys:v5];
}

- (void)setBackgroundRecordingsEnabled:(BOOL)enabled
{
  [HKRPOxygenSaturationSettings _setBackgroundRecordingsEnabled:?];
  userDefaultsSyncProvider = self->_userDefaultsSyncProvider;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"BackgroundMeasurementsEnabled"];
  [(HKRPUserDefaultsSyncProviding *)userDefaultsSyncProvider synchronizeKeys:v5];
}

- (void)setBackgroundRecordingsDuringSleepMode:(BOOL)mode
{
  [HKRPOxygenSaturationSettings _setBackgroundRecordingsDuringSleepMode:?];
  userDefaultsSyncProvider = self->_userDefaultsSyncProvider;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"BackgroundMeasurementsDuringSleepMode"];
  [(HKRPUserDefaultsSyncProviding *)userDefaultsSyncProvider synchronizeKeys:v5];
}

- (void)setBackgroundRecordingsDuringTheaterMode:(BOOL)mode
{
  [HKRPOxygenSaturationSettings _setBackgroundRecordingsDuringTheaterMode:?];
  userDefaultsSyncProvider = self->_userDefaultsSyncProvider;
  v5 = [MEMORY[0x277CBEB98] setWithObject:@"BackgroundMeasurementsDuringTheaterMode"];
  [(HKRPUserDefaultsSyncProviding *)userDefaultsSyncProvider synchronizeKeys:v5];
}

- (BOOL)isCompanionAnalysisEnabled
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKFeatureStatus *)self->_lock_companionAnalysisFeatureStatus objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  areAllRequirementsSatisfied = [v3 areAllRequirementsSatisfied];

  os_unfair_lock_unlock(&self->_lock);
  return areAllRequirementsSatisfied;
}

- (void)activateDefaultValuesIfNeeded
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"BackgroundMeasurementsEnabled"];

  if (!v3)
  {
    [(HKRPOxygenSaturationSettings *)self activateDefaultValuesIfNeeded];
  }

  v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"BackgroundMeasurementsDuringSleepMode"];

  if (!v4)
  {
    [(HKRPOxygenSaturationSettings *)self activateDefaultValuesIfNeeded];
  }

  v5 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"BackgroundMeasurementsDuringTheaterMode"];

  if (!v5)
  {
    [(HKRPOxygenSaturationSettings *)self activateDefaultValuesIfNeeded];
  }

  [v6 addObject:@"HKRPBloodOxygenSaturationEnabled"];
  [(HKRPUserDefaultsSyncProviding *)self->_userDefaultsSyncProvider synchronizeKeys:v6];
}

- (void)reset
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(NSUserDefaults *)self->_userDefaults persistentDomainForName:*MEMORY[0x277CCCD20]];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 138543618;
    v19 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (([v9 hasPrefix:{@"HKRP", v19}] & 1) == 0)
        {
          [(NSUserDefaults *)self->_userDefaults removeObjectForKey:v9];
          v10 = [(NSUserDefaults *)self->_userDefaults objectForKey:v9];

          _HKInitializeLogging();
          v11 = HKLogRespiratoryCategory();
          v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            if (v12)
            {
              v13 = objc_opt_class();
              *buf = v19;
              v25 = v13;
              v26 = 2114;
              v27 = v9;
              v14 = v13;
              v15 = v11;
              v16 = "[%{public}@] Attempted to remove key %{public}@ but it's still present, maybe it lives in the global domain?";
              goto LABEL_12;
            }
          }

          else if (v12)
          {
            v17 = objc_opt_class();
            *buf = v19;
            v25 = v17;
            v26 = 2114;
            v27 = v9;
            v14 = v17;
            v15 = v11;
            v16 = "[%{public}@] Removed key %{public}@";
LABEL_12:
            _os_log_impl(&dword_262078000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
          }

          continue;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)overrideIsRemoteDisabled
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"OverrideIsRemoteDisabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observers = self->_observers;
  if (queue)
  {
    [(HKObserverSet *)observers registerObserver:observer queue:?];
  }

  else
  {
    [(HKObserverSet *)observers registerObserver:observer];
  }
}

void __56__HKRPOxygenSaturationSettings__notifySettingsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 oxygenSaturationSettingsDidChange:*(a1 + 32)];
  }
}

- (NSString)backgroundRecordingsWithAgeGatingEnabledHeader
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_RECORDINGS_DESCRIPTION_AGE_GATING_ENABLED");
  }

  else
  {
    HKRPLocalizedString(@"RECORDINGS_DESCRIPTION_AGE_GATING_ENABLED");
  }
  v2 = ;

  return v2;
}

- (NSString)backgroundRecordingsHeader
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_RECORDINGS_DESCRIPTION");
  }

  else
  {
    HKRPLocalizedString(@"RECORDINGS_DESCRIPTION");
  }
  v2 = ;

  return v2;
}

- (NSString)bloodOxygenRecordingsTitle
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_BLOOD_OXYGEN_RECORDINGS");
  }

  else
  {
    HKRPLocalizedString(@"BLOOD_OXYGEN_RECORDINGS");
  }
  v2 = ;

  return v2;
}

- (NSString)backgroundRecordingsTitle
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_BLOOD_OXYGEN_RECORDINGS");
  }

  else
  {
    HKRPLocalizedString(@"BLOOD_OXYGEN_RECORDINGS");
  }
  v2 = ;

  return v2;
}

- (NSString)featureActiveStatusTitle
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_OXYGEN_SATURATION_FEATURE_ACTIVE_STATUS");
  }

  else
  {
    HKRPLocalizedString(@"OXYGEN_SATURATION_FEATURE_ACTIVE_STATUS");
  }
  v2 = ;

  return v2;
}

- (NSString)featureActiveStatusDescription
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_OXYGEN_SATURATION_FEATURE_ACTIVE_DESCRIPTION");
  }

  else
  {
    HKRPLocalizedString(@"OXYGEN_SATURATION_FEATURE_ACTIVE_DESCRIPTION");
  }
  v2 = ;

  return v2;
}

- (NSString)featureInactiveStatusTitle
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_OXYGEN_SATURATION_FEATURE_INACTIVE_STATUS");
  }

  else
  {
    HKRPLocalizedString(@"OXYGEN_SATURATION_FEATURE_INACTIVE_STATUS");
  }
  v2 = ;

  return v2;
}

- (NSString)featureInactiveStatusDescription
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_OXYGEN_SATURATION_FEATURE_ACTIVE_DESCRIPTION");
  }

  else
  {
    HKRPLocalizedString(@"OXYGEN_SATURATION_FEATURE_ACTIVE_DESCRIPTION");
  }
  v2 = ;

  return v2;
}

- (NSString)backgroundRecordingsFooter
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_BACKGROUND_RECORDING_DESCRIPTION");
  }

  else
  {
    HKRPLocalizedString(@"BACKGROUND_RECORDING_DESCRIPTION");
  }
  v2 = ;

  return v2;
}

- (NSString)learnMoreAboutBloodOxygenURL
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_LEARN_MORE_ABOUT_BLOOD_OXYGEN_LINK_URL");
  }

  else
  {
    HKRPLocalizedString(@"LEARN_MORE_ABOUT_BLOOD_OXYGEN_LINK_URL");
  }
  v2 = ;

  return v2;
}

- (NSString)aboutBloodOxygenFooter
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_ABOUT_BLOOD_OXYGEN");
  }

  else
  {
    HKRPLocalizedString(@"ABOUT_BLOOD_OXYGEN");
  }
  v2 = ;

  return v2;
}

- (NSString)aboutBloodOxygenFooterWithLearnMore
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_LEARN_MORE_ABOUT_BLOOD_OXYGEN");
  }

  else
  {
    HKRPLocalizedString(@"LEARN_MORE_ABOUT_BLOOD_OXYGEN");
  }
  v2 = ;

  return v2;
}

- (NSString)backgroundRecordingsDetailOptionsTitle
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_BACKGROUND_RECORDING_OPTION_TITLE");
  }

  else
  {
    HKRPLocalizedString(@"BACKGROUND_RECORDING_OPTION_TITLE");
  }
  v2 = ;

  return v2;
}

- (NSString)backgroundRecordingsDetailOptionsFooter
{
  isWristDetectEnabled = [MEMORY[0x277CCDCF8] isWristDetectEnabled];
  isCompanionAnalysisEnabled = [(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled];
  if (isWristDetectEnabled)
  {
    if (isCompanionAnalysisEnabled)
    {
      HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_BACKGROUND_RECORDING_OPTION_FOOTER");
    }

    else
    {
      HKRPLocalizedString(@"BACKGROUND_RECORDING_OPTION_FOOTER");
    }
    v6 = ;
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    if (isCompanionAnalysisEnabled)
    {
      HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_BACKGROUND_RECORDING_OPTION_FOOTER_WRIST_DETECT_TURNED_OFF_%@");
    }

    else
    {
      HKRPLocalizedString(@"BACKGROUND_RECORDING_OPTION_FOOTER_WRIST_DETECT_TURNED_OFF_%@");
    }
    v7 = ;
    v8 = HKRPLocalizedString(@"PASSCODE_SETTINGS_LINK_TITLE");
    v6 = [v5 localizedStringWithFormat:v7, v8];
  }

  return v6;
}

- (NSString)howToTakeARecordingEducationTitle
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_HOW_TO_MAKE_A_RECORDING");
  }

  else
  {
    HKRPLocalizedString(@"HOW_TO_MAKE_A_RECORDING");
  }
  v2 = ;

  return v2;
}

- (NSString)recordingInactiveDescription
{
  if ([(HKRPOxygenSaturationSettings *)self isCompanionAnalysisEnabled])
  {
    HKRPCompanionAnalysisLocalizedString(@"COMPANION_ANALYSIS_OXYGEN_SATURATION_FEATURE_INACTIVE_DESCRIPTION");
  }

  else
  {
    HKRPLocalizedString(@"OXYGEN_SATURATION_FEATURE_INACTIVE_DESCRIPTION");
  }
  v2 = ;

  return v2;
}

- (void)_startObservingDefaults
{
  v26 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _settingsToObserve = [(HKRPOxygenSaturationSettings *)self _settingsToObserve];
    v4 = OUTLINED_FUNCTION_3(_settingsToObserve, v3);
    if (v4)
    {
      v12 = v4;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v1);
          }

          v4 = [OUTLINED_FUNCTION_4(v4 v5];
          ++v14;
        }

        while (v12 != v14);
        v4 = OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
        v12 = v4;
      }

      while (v4);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_loadFeatureStatus
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    v2 = *(self + 40);
    v9 = 0;
    v3 = [v2 featureStatusWithError:&v9];
    v4 = v9;
    v5 = *(self + 48);
    *(self + 48) = v3;

    if (!*(self + 48))
    {
      _HKInitializeLogging();
      v6 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v4 localizedDescription];
        *buf = 138543618;
        selfCopy = self;
        v12 = 2114;
        v13 = localizedDescription;
        _os_log_error_impl(&dword_262078000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to load feature status with error: %{public}@", buf, 0x16u);
      }
    }

    os_unfair_lock_unlock((self + 32));
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingAllDefaults
{
  v26 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _settingsToObserve = [(HKRPOxygenSaturationSettings *)self _settingsToObserve];
    v4 = OUTLINED_FUNCTION_3(_settingsToObserve, v3);
    if (v4)
    {
      v12 = v4;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v1);
          }

          v4 = [OUTLINED_FUNCTION_4(v4 v5];
          ++v14;
        }

        while (v12 != v14);
        v4 = OUTLINED_FUNCTION_5(v4, v5, v6, v7, v8, v9, v10, v11, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
        v12 = v4;
      }

      while (v4);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_setOxygenSaturationDisabled:(uint64_t)result
{
  v16 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_7();
    v5 = HKLogRespiratoryCategory();
    if (OUTLINED_FUNCTION_6(v5))
    {
      v6 = objc_opt_class();
      v7 = [OUTLINED_FUNCTION_2() numberWithBool:?];
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_262078000, v8, v9, "[%{public}@] Setting oxygen saturation sensor disabled: %{public}@", v10, v11, v12, v13, v15);
    }

    result = [*(v2 + 16) setBool:v1 forKey:@"OxygenSaturationDisabled"];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)_setBackgroundRecordingsEnabled:(uint64_t)result
{
  v16 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_7();
    v5 = HKLogRespiratoryCategory();
    if (OUTLINED_FUNCTION_6(v5))
    {
      v6 = objc_opt_class();
      v7 = [OUTLINED_FUNCTION_2() numberWithBool:?];
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_262078000, v8, v9, "[%{public}@] Setting background recordings enabled: %{public}@", v10, v11, v12, v13, v15);
    }

    result = [*(v2 + 16) setBool:v1 forKey:@"BackgroundMeasurementsEnabled"];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)_setBackgroundRecordingsDuringSleepMode:(uint64_t)result
{
  v16 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_7();
    v5 = HKLogRespiratoryCategory();
    if (OUTLINED_FUNCTION_6(v5))
    {
      v6 = objc_opt_class();
      v7 = [OUTLINED_FUNCTION_2() numberWithBool:?];
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_262078000, v8, v9, "[%{public}@] Setting background recordings during sleep mode: %{public}@", v10, v11, v12, v13, v15);
    }

    result = [*(v2 + 16) setBool:v1 forKey:@"BackgroundMeasurementsDuringSleepMode"];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)_setBackgroundRecordingsDuringTheaterMode:(uint64_t)result
{
  v16 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_7();
    v5 = HKLogRespiratoryCategory();
    if (OUTLINED_FUNCTION_6(v5))
    {
      v6 = objc_opt_class();
      v7 = [OUTLINED_FUNCTION_2() numberWithBool:?];
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_262078000, v8, v9, "[%{public}@] Setting background recordings during theater mode: %{public}@", v10, v11, v12, v13, v15);
    }

    result = [*(v2 + 16) setBool:v1 forKey:@"BackgroundMeasurementsDuringTheaterMode"];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)_notifySettingsDidChange
{
  if (result)
  {
    v1 = *(result + 8);
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __56__HKRPOxygenSaturationSettings__notifySettingsDidChange__block_invoke;
    v2[3] = &unk_279B0D4C8;
    v2[4] = result;
    return [v1 notifyObservers:v2];
  }

  return result;
}

- (id)_settingsToObserve
{
  v3[5] = *MEMORY[0x277D85DE8];
  if (self)
  {
    v3[0] = @"OxygenSaturationDisabled";
    v3[1] = @"BackgroundMeasurementsEnabled";
    v3[2] = @"BackgroundMeasurementsDuringSleepMode";
    v3[3] = @"BackgroundMeasurementsDuringTheaterMode";
    v3[4] = @"OverrideIsRemoteDisabled";
    self = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  }

  v1 = *MEMORY[0x277D85DE8];

  return self;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v31 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  _HKInitializeLogging();
  v13 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = *MEMORY[0x277CCA300];
    v16 = v14;
    v17 = [changeCopy objectForKeyedSubscript:v15];
    v18 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    *buf = 138544130;
    v24 = v14;
    v25 = 2114;
    v26 = pathCopy;
    v27 = 2114;
    v28 = v17;
    v29 = 2114;
    v30 = v18;
    _os_log_impl(&dword_262078000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ change to: %{public}@ -> %{public}@", buf, 0x2Au);
  }

  _settingsToObserve = [(HKRPOxygenSaturationSettings *)self _settingsToObserve];
  v20 = [_settingsToObserve containsObject:pathCopy];

  if (v20)
  {
    [(HKRPOxygenSaturationSettings *)self _notifySettingsDidChange];
  }

  else
  {
    v22.receiver = self;
    v22.super_class = HKRPOxygenSaturationSettings;
    [(HKRPOxygenSaturationSettings *)&v22 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (uint64_t)activateDefaultValuesIfNeeded
{
  [HKRPOxygenSaturationSettings _setBackgroundRecordingsDuringTheaterMode:self];

  return [a2 addObject:@"BackgroundMeasurementsDuringTheaterMode"];
}

@end