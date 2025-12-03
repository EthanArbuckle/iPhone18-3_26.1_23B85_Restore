@interface HKSPFeatureAvailabilityStore
- (BOOL)_isCurrentOnboardingVersionCompletedForOnboardingModel:(id)model;
- (BOOL)_updateCachedFeatureSettingsModel:(id)model;
- (BOOL)_updateCachedOnboardingModel:(id)model;
- (HKSPFeatureAvailabilityStore)initWithFeatureIdentifier:(id)identifier sleepStore:(id)store;
- (HKSPFeatureAvailabilityStore)initWithFeatureIdentifier:(id)identifier sleepStore:(id)store pairedDeviceRegistry:(id)registry;
- (id)_defaultRequirements;
- (id)_defaultSleepTrackingRequirements;
- (id)_featureSettingsForOnboardingModel:(id)model featureSettingsModel:(id)settingsModel;
- (id)_featureSettingsModelWithError:(id *)error;
- (id)_onboardSleepTrackingRequirements;
- (id)_onboardingCompletionForOnboardingModel:(id)model;
- (id)_onboardingModelWithError:(id *)error;
- (id)_sleepTrackingRequirements;
- (id)_useSleepTrackingRequirements;
- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error;
- (id)featureAvailabilityRequirementsWithError:(id *)error;
- (id)featureOnboardingRecordWithError:(id *)error;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)error;
- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error;
- (id)pairedFeatureAttributesWithError:(id *)error;
- (int64_t)_onboardedCountrySupportedStateForOnboardingModel:(id)model;
- (unint64_t)_onboardingIneligibilityReasons;
- (void)_notifyObserversForDidUpdateOnboarding;
- (void)_notifyObserversForDidUpdateSettings;
- (void)_onboardingModelWithCompletion:(id)completion;
- (void)_pairedDeviceDidChange;
- (void)_registerForNotifications;
- (void)_withLock:(id)lock;
- (void)dealloc;
- (void)getFeatureOnboardingRecordWithCompletion:(id)completion;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion;
- (void)registerObserver:(id)observer queue:(id)queue;
- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion;
- (void)resetOnboardingWithCompletion:(id)completion;
- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion;
- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion;
- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion;
- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change;
- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change;
@end

@implementation HKSPFeatureAvailabilityStore

- (void)_registerForNotifications
{
  [(HKSPSleepOnboardingStore *)self->_sleepStore addObserver:self];
  if (self->_pairedDeviceRegistry)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__pairedDeviceDidChange name:*MEMORY[0x277D2BC48] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__pairedDeviceDidChange name:*MEMORY[0x277D2BC68] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__pairedDeviceDidChange name:*MEMORY[0x277D2BC78] object:0];

    self->_deviceCharacteristicChangeNotifyToken = -1;
    p_deviceCharacteristicChangeNotifyToken = &self->_deviceCharacteristicChangeNotifyToken;
    objc_initWeak(&location, self);
    uTF8String = [*MEMORY[0x277D2BC98] UTF8String];
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__HKSPFeatureAvailabilityStore__registerForNotifications__block_invoke;
    v10[3] = &unk_279C74A28;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch(uTF8String, p_deviceCharacteristicChangeNotifyToken, v8, v10);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (unint64_t)_onboardingIneligibilityReasons
{
  if (self->_feature != 1)
  {
    return 0;
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (isAppleWatch)
  {
    return 0;
  }

  getActivePairedDevice = [(HKSPFeatureAvailabilityPairedDeviceRegistry *)self->_pairedDeviceRegistry getActivePairedDevice];
  if (getActivePairedDevice)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C0F3C2C3-0CDE-4DF9-A95A-789AC9A0348B"];
    if ([getActivePairedDevice supportsCapability:v7])
    {
      v5 = 0;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (HKSPFeatureAvailabilityStore)initWithFeatureIdentifier:(id)identifier sleepStore:(id)store
{
  storeCopy = store;
  identifierCopy = identifier;
  v8 = objc_alloc_init(HKSPPairedDeviceRegistryProvider);
  v9 = [(HKSPFeatureAvailabilityStore *)self initWithFeatureIdentifier:identifierCopy sleepStore:storeCopy pairedDeviceRegistry:v8];

  return v9;
}

- (HKSPFeatureAvailabilityStore)initWithFeatureIdentifier:(id)identifier sleepStore:(id)store pairedDeviceRegistry:(id)registry
{
  identifierCopy = identifier;
  storeCopy = store;
  registryCopy = registry;
  v21.receiver = self;
  v21.super_class = HKSPFeatureAvailabilityStore;
  v13 = [(HKSPFeatureAvailabilityStore *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_featureIdentifier, identifier);
    objc_storeStrong(&v14->_sleepStore, store);
    v15 = objc_alloc_init(HKSPObserverSet);
    observers = v14->_observers;
    v14->_observers = v15;

    objc_storeStrong(&v14->_pairedDeviceRegistry, registry);
    v14->_deviceCharacteristicChangeNotifyToken = -1;
    v14->_modelLock._os_unfair_lock_opaque = 0;
    if ([identifierCopy isEqualToString:*MEMORY[0x277CCC0E0]])
    {
      v14->_feature = 0;
    }

    else
    {
      if ([identifierCopy isEqualToString:*MEMORY[0x277CCC0E8]])
      {
        v17 = 1;
      }

      else
      {
        if (![identifierCopy isEqualToString:*MEMORY[0x277CCC0D0]])
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:v14 file:@"HKSPFeatureAvailabilityStore.m" lineNumber:93 description:{@"Unsupported feature identifier %@", identifierCopy}];

          goto LABEL_10;
        }

        v17 = 2;
      }

      v14->_feature = v17;
    }

LABEL_10:
    [(HKSPFeatureAvailabilityStore *)v14 _registerForNotifications];
    v19 = v14;
  }

  return v14;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_modelLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_modelLock);
}

void __57__HKSPFeatureAvailabilityStore__registerForNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pairedDeviceDidChange];
}

- (void)dealloc
{
  deviceCharacteristicChangeNotifyToken = self->_deviceCharacteristicChangeNotifyToken;
  if (deviceCharacteristicChangeNotifyToken != -1)
  {
    notify_cancel(deviceCharacteristicChangeNotifyToken);
    self->_deviceCharacteristicChangeNotifyToken = -1;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D2BC48] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D2BC68] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x277D2BC78] object:0];

  v7.receiver = self;
  v7.super_class = HKSPFeatureAvailabilityStore;
  [(HKSPFeatureAvailabilityStore *)&v7 dealloc];
}

- (int64_t)_onboardedCountrySupportedStateForOnboardingModel:(id)model
{
  if ([(HKSPFeatureAvailabilityStore *)self _isCurrentOnboardingVersionCompletedForOnboardingModel:model])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_isCurrentOnboardingVersionCompletedForOnboardingModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  feature = self->_feature;
  switch(feature)
  {
    case 2:
      isCurrentSleepWindDownShortcutsOnboardingCompleted = [modelCopy isCurrentSleepWindDownShortcutsOnboardingCompleted];
      goto LABEL_7;
    case 1:
      isCurrentSleepWindDownShortcutsOnboardingCompleted = [modelCopy isCurrentSleepTrackingOnboardingCompleted];
      goto LABEL_7;
    case 0:
      isCurrentSleepWindDownShortcutsOnboardingCompleted = [modelCopy isCurrentSleepCoachingOnboardingCompleted];
LABEL_7:
      LOBYTE(self) = isCurrentSleepWindDownShortcutsOnboardingCompleted;
      break;
  }

  return self & 1;
}

- (id)_onboardingCompletionForOnboardingModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  feature = self->_feature;
  if (feature == 2)
  {
    if ([modelCopy isCurrentSleepWindDownShortcutsOnboardingCompleted])
    {
      sleepWindDownShortcutsOnboardingCompletedVersion = [v5 sleepWindDownShortcutsOnboardingCompletedVersion];
      sleepWindDownShortcutsOnboardingFirstCompletedDate = [v5 sleepWindDownShortcutsOnboardingFirstCompletedDate];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (feature == 1)
  {
    if ([modelCopy isCurrentSleepTrackingOnboardingCompleted])
    {
      sleepWindDownShortcutsOnboardingCompletedVersion = [v5 sleepTrackingOnboardingCompletedVersion];
      sleepWindDownShortcutsOnboardingFirstCompletedDate = [v5 sleepTrackingOnboardingFirstCompletedDate];
      goto LABEL_10;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_16;
  }

  if (feature)
  {
    distantPast = 0;
    sleepWindDownShortcutsOnboardingCompletedVersion = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_13;
  }

  if (![modelCopy isCurrentSleepCoachingOnboardingCompleted])
  {
    goto LABEL_11;
  }

  sleepWindDownShortcutsOnboardingCompletedVersion = [v5 sleepCoachingOnboardingCompletedVersion];
  sleepWindDownShortcutsOnboardingFirstCompletedDate = [v5 sleepCoachingOnboardingFirstCompletedDate];
LABEL_10:
  distantPast = sleepWindDownShortcutsOnboardingFirstCompletedDate;
LABEL_13:
  v11 = objc_alloc(MEMORY[0x277CCD740]);
  featureIdentifier = self->_featureIdentifier;
  if (!distantPast)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
  }

  v10 = [v11 initWithFeatureIdentifier:featureIdentifier version:sleepWindDownShortcutsOnboardingCompletedVersion completionDate:distantPast countryCode:0 countryCodeProvenance:0];

LABEL_16:

  return v10;
}

- (id)_featureSettingsForOnboardingModel:(id)model featureSettingsModel:(id)settingsModel
{
  v17[1] = *MEMORY[0x277D85DE8];
  settingsModelCopy = settingsModel;
  v7 = [(HKSPFeatureAvailabilityStore *)self _isCurrentOnboardingVersionCompletedForOnboardingModel:model];
  v8 = 0;
  if (settingsModelCopy)
  {
    if (v7)
    {
      v8 = 0;
      feature = self->_feature;
      if (feature)
      {
        if (feature != 2)
        {
          if (feature == 1)
          {
            sleepTrackingFeatureEnabled = [settingsModelCopy sleepTrackingFeatureEnabled];
          }

          else
          {
            sleepTrackingFeatureEnabled = 0;
          }

          v11 = objc_alloc(MEMORY[0x277CCD450]);
          v16 = *MEMORY[0x277CCC120];
          v12 = [MEMORY[0x277CCABB0] numberWithBool:sleepTrackingFeatureEnabled];
          v17[0] = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
          v8 = [v11 initWithDictionary:v13];
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_defaultSleepTrackingRequirements
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:self->_featureIdentifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:self->_featureIdentifier];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_onboardSleepTrackingRequirements
{
  v10[2] = *MEMORY[0x277D85DE8];
  _defaultSleepTrackingRequirements = [(HKSPFeatureAvailabilityStore *)self _defaultSleepTrackingRequirements];
  v4 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:self->_featureIdentifier];
  v10[0] = v4;
  v5 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE268]];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [_defaultSleepTrackingRequirements arrayByAddingObjectsFromArray:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_useSleepTrackingRequirements
{
  v11[3] = *MEMORY[0x277D85DE8];
  _defaultSleepTrackingRequirements = [(HKSPFeatureAvailabilityStore *)self _defaultSleepTrackingRequirements];
  v4 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:self->_featureIdentifier];
  wristDetectionIsEnabledForActiveWatch = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v11[1] = wristDetectionIsEnabledForActiveWatch;
  v6 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:self->_featureIdentifier isOnIfSettingIsAbsent:0];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v8 = [_defaultSleepTrackingRequirements arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_sleepTrackingRequirements
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCD420]);
  v12[0] = *MEMORY[0x277CCBE88];
  _defaultSleepTrackingRequirements = [(HKSPFeatureAvailabilityStore *)self _defaultSleepTrackingRequirements];
  v13[0] = _defaultSleepTrackingRequirements;
  v12[1] = *MEMORY[0x277CCBE80];
  _onboardSleepTrackingRequirements = [(HKSPFeatureAvailabilityStore *)self _onboardSleepTrackingRequirements];
  v13[1] = _onboardSleepTrackingRequirements;
  v12[2] = *MEMORY[0x277CCBE38];
  _onboardSleepTrackingRequirements2 = [(HKSPFeatureAvailabilityStore *)self _onboardSleepTrackingRequirements];
  v13[2] = _onboardSleepTrackingRequirements2;
  v12[3] = *MEMORY[0x277CCBEA0];
  _useSleepTrackingRequirements = [(HKSPFeatureAvailabilityStore *)self _useSleepTrackingRequirements];
  v13[3] = _useSleepTrackingRequirements;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v9 = [v3 initWithRequirementsByContext:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_defaultRequirements
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCD420]);
  v4 = *MEMORY[0x277CCBE88];
  v14[0] = MEMORY[0x277CBEBF8];
  v5 = *MEMORY[0x277CCBE80];
  v13[0] = v4;
  v13[1] = v5;
  v6 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:self->_featureIdentifier];
  v12 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [v3 initWithRequirementsByContext:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_featureSettingsModelWithError:(id *)error
{
  v4 = [(HKSPSleepOnboardingStore *)self->_sleepStore currentSleepSettingsWithError:error];
  [(HKSPFeatureAvailabilityStore *)self _updateCachedFeatureSettingsModel:v4];

  return v4;
}

- (id)_onboardingModelWithError:(id *)error
{
  v4 = [(HKSPSleepOnboardingStore *)self->_sleepStore currentSleepEventRecordWithError:error];
  [(HKSPFeatureAvailabilityStore *)self _updateCachedOnboardingModel:v4];

  return v4;
}

- (void)_onboardingModelWithCompletion:(id)completion
{
  completionCopy = completion;
  sleepStore = self->_sleepStore;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HKSPFeatureAvailabilityStore__onboardingModelWithCompletion___block_invoke;
  v7[3] = &unk_279C74090;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(HKSPSleepOnboardingStore *)sleepStore currentSleepEventRecordWithCompletion:v7];
}

void __63__HKSPFeatureAvailabilityStore__onboardingModelWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 _updateCachedOnboardingModel:v7];
  (*(*(a1 + 40) + 16))();
}

- (id)featureOnboardingRecordWithError:(id *)error
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_supportsSleepDaemon = [mEMORY[0x277CCDD30] hksp_supportsSleepDaemon];

  if ((hksp_supportsSleepDaemon & 1) == 0)
  {
    v16 = [objc_alloc(MEMORY[0x277CCD448]) initWithOnboardingState:1 onboardingCompletion:0 featureSettings:0];
    goto LABEL_18;
  }

  v21 = 0;
  v7 = [(HKSPFeatureAvailabilityStore *)self _featureSettingsModelWithError:&v21];
  v8 = v21;
  v9 = v8;
  if (v7)
  {
    v20 = 0;
    v10 = [(HKSPFeatureAvailabilityStore *)self _onboardingModelWithError:&v20];
    v11 = v20;
    v12 = v11;
    if (v10)
    {
      v13 = [(HKSPFeatureAvailabilityStore *)self _onboardedCountrySupportedStateForOnboardingModel:v10];
      v14 = [(HKSPFeatureAvailabilityStore *)self _onboardingCompletionForOnboardingModel:v10];
      v15 = [(HKSPFeatureAvailabilityStore *)self _featureSettingsForOnboardingModel:v10 featureSettingsModel:v7];
      v16 = [objc_alloc(MEMORY[0x277CCD448]) initWithOnboardingState:v13 onboardingCompletion:v14 featureSettings:v15];

LABEL_16:
      goto LABEL_17;
    }

    v14 = v11;
    if (v14)
    {
      if (error)
      {
        v18 = v14;
        v16 = 0;
        *error = v14;
        goto LABEL_16;
      }

      _HKLogDroppedError();
    }

    v16 = 0;
    goto LABEL_16;
  }

  v12 = v8;
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_13:
    v16 = 0;
    goto LABEL_17;
  }

  v17 = v12;
  v16 = 0;
  *error = v12;
LABEL_17:

LABEL_18:

  return v16;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)completion
{
  v7 = 0;
  completionCopy = completion;
  v5 = [(HKSPFeatureAvailabilityStore *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)error
{
  v4 = [(HKSPFeatureAvailabilityStore *)self _onboardingModelWithError:error];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPFeatureAvailabilityStore _isCurrentOnboardingVersionCompletedForOnboardingModel:](self, "_isCurrentOnboardingVersionCompletedForOnboardingModel:", v4)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)onboardedCountryCodeSupportedStateWithError:(id *)error
{
  v4 = [(HKSPFeatureAvailabilityStore *)self _onboardingModelWithError:error];
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HKSPFeatureAvailabilityStore _onboardedCountrySupportedStateForOnboardingModel:](self, "_onboardedCountrySupportedStateForOnboardingModel:", v4)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HKSPFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke;
  v6[3] = &unk_279C74A50;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HKSPFeatureAvailabilityStore *)self _onboardingModelWithCompletion:v6];
}

void __82__HKSPFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v8 = [v4 numberWithBool:{objc_msgSend(v6, "_isCurrentOnboardingVersionCompletedForOnboardingModel:", a2)}];
  (*(v5 + 16))(v5, v8, v7);
}

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)error
{
  selfCopy = self;
  v4 = [(HKSPFeatureAvailabilityStore *)self _onboardingModelWithError:error];
  v5 = v4;
  if (v4)
  {
    feature = selfCopy->_feature;
    if (feature == 2)
    {
      sleepWindDownShortcutsOnboardingFirstCompletedDate = [v4 sleepWindDownShortcutsOnboardingFirstCompletedDate];
    }

    else if (feature == 1)
    {
      sleepWindDownShortcutsOnboardingFirstCompletedDate = [v4 sleepTrackingOnboardingFirstCompletedDate];
    }

    else
    {
      if (feature)
      {
        goto LABEL_10;
      }

      sleepWindDownShortcutsOnboardingFirstCompletedDate = [v4 sleepCoachingOnboardingFirstCompletedDate];
    }

    selfCopy = sleepWindDownShortcutsOnboardingFirstCompletedDate;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_10:

  return selfCopy;
}

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)error
{
  getActivePairedDevice = [(HKSPFeatureAvailabilityPairedDeviceRegistry *)self->_pairedDeviceRegistry getActivePairedDevice];
  if (getActivePairedDevice)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C0F3C2C3-0CDE-4DF9-A95A-789AC9A0348B"];
    v6 = [v4 numberWithBool:{objc_msgSend(getActivePairedDevice, "supportsCapability:", v5)}];
  }

  else
  {
    v6 = MEMORY[0x277CBEC28];
  }

  return v6;
}

- (id)canCompleteOnboardingForCountryCode:(id)code error:(id *)error
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HKSPFeatureAvailabilityStore *)self _onboardingIneligibilityReasons:code]== 0;

  return [v4 numberWithInt:v5];
}

- (id)onboardingEligibilityForCountryCode:(id)code error:(id *)error
{
  v5 = objc_alloc(MEMORY[0x277CCD3F8]);
  _onboardingIneligibilityReasons = [(HKSPFeatureAvailabilityStore *)self _onboardingIneligibilityReasons];
  uncheckedAvailability = [MEMORY[0x277CCD898] uncheckedAvailability];
  version = [uncheckedAvailability version];
  v9 = [v5 initWithIneligibilityReasons:_onboardingIneligibilityReasons countryAvailabilityVersion:version];

  return v9;
}

- (id)pairedFeatureAttributesWithError:(id *)error
{
  v4 = [MEMORY[0x277CCA9B8] hk_error:11 format:@"Feature attributes not applicable"];
  if (v4)
  {
    if (error)
    {
      v5 = v4;
      *error = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

- (id)featureAvailabilityRequirementsWithError:(id *)error
{
  feature = self->_feature;
  if (feature != 2)
  {
    if (feature == 1)
    {
      _sleepTrackingRequirements = [(HKSPFeatureAvailabilityStore *)self _sleepTrackingRequirements];
      goto LABEL_6;
    }

    if (feature)
    {
      goto LABEL_7;
    }
  }

  _sleepTrackingRequirements = [(HKSPFeatureAvailabilityStore *)self _defaultRequirements];
LABEL_6:
  a2 = _sleepTrackingRequirements;
LABEL_7:

  return a2;
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)code countryCodeProvenance:(int64_t)provenance date:(id)date settings:(id)settings completion:(id)completion
{
  codeCopy = code;
  dateCopy = date;
  settingsCopy = settings;
  completionCopy = completion;
  if (dateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPFeatureAvailabilityStore.m" lineNumber:451 description:@"Specifying onboarded date is not supported for Sleep feature."];
  }

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __130__HKSPFeatureAvailabilityStore_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke;
  v23 = &unk_279C74A78;
  selfCopy = self;
  v16 = completionCopy;
  v25 = v16;
  v17 = MEMORY[0x26D64AA30](&v20);
  feature = self->_feature;
  switch(feature)
  {
    case 2:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepWindDownShortcutsOnboardingCompletedVersion:2 completion:v17, v20, v21, v22, v23, selfCopy];
      break;
    case 1:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepTrackingOnboardingCompletedVersion:3 completion:v17, v20, v21, v22, v23, selfCopy];
      break;
    case 0:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepCoachingOnboardingCompletedVersion:3 completion:v17, v20, v21, v22, v23, selfCopy];
      break;
  }
}

void __130__HKSPFeatureAvailabilityStore_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _onboardingModelWithError:0];
  (*(*(a1 + 40) + 16))();

  if (a2)
  {
    v8 = *(a1 + 32);

    [v8 _notifyObserversForDidUpdateOnboarding];
  }
}

- (void)saveOnboardingCompletion:(id)completion settings:(id)settings completion:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] HKOnboardingCompletion is not implemented for Sleep.", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"HKOnboardingCompletion is not implemented for Sleep."];
  v6[2](v6, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingData:(id)data forKey:(id)key completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Feature settings is not implemented for Sleep.", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Sleep."];
  completionCopy[2](completionCopy, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingString:(id)string forKey:(id)key completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Feature settings is not implemented for Sleep.", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Sleep."];
  completionCopy[2](completionCopy, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:(id)number forKey:(id)key completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Feature settings is not implemented for Sleep.", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Sleep."];
  completionCopy[2](completionCopy, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeFeatureSettingValueForKey:(id)key completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Feature settings is not implemented for Sleep.", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Sleep."];
  completionCopy[2](completionCopy, 0, v7);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetOnboardingWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62__HKSPFeatureAvailabilityStore_resetOnboardingWithCompletion___block_invoke;
  v11 = &unk_279C74A78;
  selfCopy = self;
  v5 = completionCopy;
  v13 = v5;
  v6 = MEMORY[0x26D64AA30](&v8);
  feature = self->_feature;
  switch(feature)
  {
    case 2:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepWindDownShortcutsOnboardingCompletedVersion:0 completion:v6, v8, v9, v10, v11, selfCopy];
      break;
    case 1:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepTrackingOnboardingCompletedVersion:0 completion:v6, v8, v9, v10, v11, selfCopy];
      break;
    case 0:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepCoachingOnboardingCompletedVersion:0 completion:v6, v8, v9, v10, v11, selfCopy];
      break;
  }
}

void __62__HKSPFeatureAvailabilityStore_resetOnboardingWithCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _onboardingModelWithError:0];
  (*(*(a1 + 40) + 16))();

  if (a2)
  {
    v8 = *(a1 + 32);

    [v8 _notifyObserversForDidUpdateOnboarding];
  }
}

- (void)registerObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  observers = self->_observers;
  v8 = queueCopy;
  if (!queueCopy)
  {
    v8 = HKCreateSerialDispatchQueue();
  }

  v9 = HKSPQueueBackedScheduler(v8);
  [(HKSPObserverSet *)observers addObserver:observerCopy callbackScheduler:v9];

  if (!queueCopy)
  {
  }
}

- (void)_pairedDeviceDidChange
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notifying observers of paired device changes", buf, 0xCu);
  }

  observers = self->_observers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HKSPFeatureAvailabilityStore__pairedDeviceDidChange__block_invoke;
  v6[3] = &unk_279C74AA0;
  v6[4] = self;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

void __54__HKSPFeatureAvailabilityStore__pairedDeviceDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityProvidingDidUpdatePairedDeviceCapability:*(a1 + 32)];
  }
}

- (void)sleepStore:(id)store sleepEventRecordDidChange:(id)change
{
  if ([(HKSPFeatureAvailabilityStore *)self _updateCachedOnboardingModel:change])
  {

    [(HKSPFeatureAvailabilityStore *)self _notifyObserversForDidUpdateOnboarding];
  }
}

- (BOOL)_updateCachedOnboardingModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (modelCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__HKSPFeatureAvailabilityStore__updateCachedOnboardingModel___block_invoke;
    v8[3] = &unk_279C74230;
    v10 = &v11;
    v8[4] = self;
    v9 = modelCopy;
    [(HKSPFeatureAvailabilityStore *)self _withLock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __61__HKSPFeatureAvailabilityStore__updateCachedOnboardingModel___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = [v2 isEqualToOnboardingModel:*(a1 + 40)] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  v4 = [*(a1 + 40) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  *(v5 + 48) = v4;

  return MEMORY[0x2821F96F8]();
}

- (void)sleepStore:(id)store sleepSettingsDidChange:(id)change
{
  if ([(HKSPFeatureAvailabilityStore *)self _updateCachedFeatureSettingsModel:change])
  {

    [(HKSPFeatureAvailabilityStore *)self _notifyObserversForDidUpdateSettings];
  }
}

- (BOOL)_updateCachedFeatureSettingsModel:(id)model
{
  modelCopy = model;
  v5 = modelCopy;
  if (modelCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__HKSPFeatureAvailabilityStore__updateCachedFeatureSettingsModel___block_invoke;
    v8[3] = &unk_279C74230;
    v10 = &v11;
    v8[4] = self;
    v9 = modelCopy;
    [(HKSPFeatureAvailabilityStore *)self _withLock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __66__HKSPFeatureAvailabilityStore__updateCachedFeatureSettingsModel___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = [v2 isEqualToFeatureSettingsModel:*(a1 + 40)] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  v4 = [*(a1 + 40) copy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  return MEMORY[0x2821F96F8]();
}

- (void)_notifyObserversForDidUpdateOnboarding
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _notifyObserversForDidUpdateOnboarding", buf, 0xCu);
  }

  observers = self->_observers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HKSPFeatureAvailabilityStore__notifyObserversForDidUpdateOnboarding__block_invoke;
  v6[3] = &unk_279C74AA0;
  v6[4] = self;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversForDidUpdateSettings
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _notifyObserversForDidUpdateSettings", buf, 0xCu);
  }

  observers = self->_observers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HKSPFeatureAvailabilityStore__notifyObserversForDidUpdateSettings__block_invoke;
  v6[3] = &unk_279C74AA0;
  v6[4] = self;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v6];
  v5 = *MEMORY[0x277D85DE8];
}

void __68__HKSPFeatureAvailabilityStore__notifyObserversForDidUpdateSettings__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 featureAvailabilityProvidingDidUpdateSettings:*(a1 + 32)];
  }
}

@end