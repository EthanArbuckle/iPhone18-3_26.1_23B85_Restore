@interface HKSPFeatureAvailabilityStore
- (BOOL)_isCurrentOnboardingVersionCompletedForOnboardingModel:(id)a3;
- (BOOL)_updateCachedFeatureSettingsModel:(id)a3;
- (BOOL)_updateCachedOnboardingModel:(id)a3;
- (HKSPFeatureAvailabilityStore)initWithFeatureIdentifier:(id)a3 sleepStore:(id)a4;
- (HKSPFeatureAvailabilityStore)initWithFeatureIdentifier:(id)a3 sleepStore:(id)a4 pairedDeviceRegistry:(id)a5;
- (id)_defaultRequirements;
- (id)_defaultSleepTrackingRequirements;
- (id)_featureSettingsForOnboardingModel:(id)a3 featureSettingsModel:(id)a4;
- (id)_featureSettingsModelWithError:(id *)a3;
- (id)_onboardSleepTrackingRequirements;
- (id)_onboardingCompletionForOnboardingModel:(id)a3;
- (id)_onboardingModelWithError:(id *)a3;
- (id)_sleepTrackingRequirements;
- (id)_useSleepTrackingRequirements;
- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4;
- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3;
- (id)featureAvailabilityRequirementsWithError:(id *)a3;
- (id)featureOnboardingRecordWithError:(id *)a3;
- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3;
- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)a3;
- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3;
- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4;
- (id)pairedFeatureAttributesWithError:(id *)a3;
- (int64_t)_onboardedCountrySupportedStateForOnboardingModel:(id)a3;
- (unint64_t)_onboardingIneligibilityReasons;
- (void)_notifyObserversForDidUpdateOnboarding;
- (void)_notifyObserversForDidUpdateSettings;
- (void)_onboardingModelWithCompletion:(id)a3;
- (void)_pairedDeviceDidChange;
- (void)_registerForNotifications;
- (void)_withLock:(id)a3;
- (void)dealloc;
- (void)getFeatureOnboardingRecordWithCompletion:(id)a3;
- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3;
- (void)registerObserver:(id)a3 queue:(id)a4;
- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4;
- (void)resetOnboardingWithCompletion:(id)a3;
- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5;
- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7;
- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)sleepStore:(id)a3 sleepEventRecordDidChange:(id)a4;
- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4;
@end

@implementation HKSPFeatureAvailabilityStore

- (void)_registerForNotifications
{
  [(HKSPSleepOnboardingStore *)self->_sleepStore addObserver:self];
  if (self->_pairedDeviceRegistry)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel__pairedDeviceDidChange name:*MEMORY[0x277D2BC48] object:0];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel__pairedDeviceDidChange name:*MEMORY[0x277D2BC68] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__pairedDeviceDidChange name:*MEMORY[0x277D2BC78] object:0];

    self->_deviceCharacteristicChangeNotifyToken = -1;
    p_deviceCharacteristicChangeNotifyToken = &self->_deviceCharacteristicChangeNotifyToken;
    objc_initWeak(&location, self);
    v7 = [*MEMORY[0x277D2BC98] UTF8String];
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__HKSPFeatureAvailabilityStore__registerForNotifications__block_invoke;
    v10[3] = &unk_279C74A28;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch(v7, p_deviceCharacteristicChangeNotifyToken, v8, v10);

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

  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  v4 = [v3 isAppleWatch];

  if (v4)
  {
    return 0;
  }

  v6 = [(HKSPFeatureAvailabilityPairedDeviceRegistry *)self->_pairedDeviceRegistry getActivePairedDevice];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C0F3C2C3-0CDE-4DF9-A95A-789AC9A0348B"];
    if ([v6 supportsCapability:v7])
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

- (HKSPFeatureAvailabilityStore)initWithFeatureIdentifier:(id)a3 sleepStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HKSPPairedDeviceRegistryProvider);
  v9 = [(HKSPFeatureAvailabilityStore *)self initWithFeatureIdentifier:v7 sleepStore:v6 pairedDeviceRegistry:v8];

  return v9;
}

- (HKSPFeatureAvailabilityStore)initWithFeatureIdentifier:(id)a3 sleepStore:(id)a4 pairedDeviceRegistry:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = HKSPFeatureAvailabilityStore;
  v13 = [(HKSPFeatureAvailabilityStore *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_featureIdentifier, a3);
    objc_storeStrong(&v14->_sleepStore, a4);
    v15 = objc_alloc_init(HKSPObserverSet);
    observers = v14->_observers;
    v14->_observers = v15;

    objc_storeStrong(&v14->_pairedDeviceRegistry, a5);
    v14->_deviceCharacteristicChangeNotifyToken = -1;
    v14->_modelLock._os_unfair_lock_opaque = 0;
    if ([v10 isEqualToString:*MEMORY[0x277CCC0E0]])
    {
      v14->_feature = 0;
    }

    else
    {
      if ([v10 isEqualToString:*MEMORY[0x277CCC0E8]])
      {
        v17 = 1;
      }

      else
      {
        if (![v10 isEqualToString:*MEMORY[0x277CCC0D0]])
        {
          v18 = [MEMORY[0x277CCA890] currentHandler];
          [v18 handleFailureInMethod:a2 object:v14 file:@"HKSPFeatureAvailabilityStore.m" lineNumber:93 description:{@"Unsupported feature identifier %@", v10}];

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

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_modelLock);
  v4[2](v4);

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

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D2BC48] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D2BC68] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277D2BC78] object:0];

  v7.receiver = self;
  v7.super_class = HKSPFeatureAvailabilityStore;
  [(HKSPFeatureAvailabilityStore *)&v7 dealloc];
}

- (int64_t)_onboardedCountrySupportedStateForOnboardingModel:(id)a3
{
  if ([(HKSPFeatureAvailabilityStore *)self _isCurrentOnboardingVersionCompletedForOnboardingModel:a3])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_isCurrentOnboardingVersionCompletedForOnboardingModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  feature = self->_feature;
  switch(feature)
  {
    case 2:
      v7 = [v4 isCurrentSleepWindDownShortcutsOnboardingCompleted];
      goto LABEL_7;
    case 1:
      v7 = [v4 isCurrentSleepTrackingOnboardingCompleted];
      goto LABEL_7;
    case 0:
      v7 = [v4 isCurrentSleepCoachingOnboardingCompleted];
LABEL_7:
      LOBYTE(self) = v7;
      break;
  }

  return self & 1;
}

- (id)_onboardingCompletionForOnboardingModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  feature = self->_feature;
  if (feature == 2)
  {
    if ([v4 isCurrentSleepWindDownShortcutsOnboardingCompleted])
    {
      v7 = [v5 sleepWindDownShortcutsOnboardingCompletedVersion];
      v8 = [v5 sleepWindDownShortcutsOnboardingFirstCompletedDate];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (feature == 1)
  {
    if ([v4 isCurrentSleepTrackingOnboardingCompleted])
    {
      v7 = [v5 sleepTrackingOnboardingCompletedVersion];
      v8 = [v5 sleepTrackingOnboardingFirstCompletedDate];
      goto LABEL_10;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_16;
  }

  if (feature)
  {
    v9 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_13;
  }

  if (![v4 isCurrentSleepCoachingOnboardingCompleted])
  {
    goto LABEL_11;
  }

  v7 = [v5 sleepCoachingOnboardingCompletedVersion];
  v8 = [v5 sleepCoachingOnboardingFirstCompletedDate];
LABEL_10:
  v9 = v8;
LABEL_13:
  v11 = objc_alloc(MEMORY[0x277CCD740]);
  featureIdentifier = self->_featureIdentifier;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEAA8] distantPast];
  }

  v10 = [v11 initWithFeatureIdentifier:featureIdentifier version:v7 completionDate:v9 countryCode:0 countryCodeProvenance:0];

LABEL_16:

  return v10;
}

- (id)_featureSettingsForOnboardingModel:(id)a3 featureSettingsModel:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HKSPFeatureAvailabilityStore *)self _isCurrentOnboardingVersionCompletedForOnboardingModel:a3];
  v8 = 0;
  if (v6)
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
            v10 = [v6 sleepTrackingFeatureEnabled];
          }

          else
          {
            v10 = 0;
          }

          v11 = objc_alloc(MEMORY[0x277CCD450]);
          v16 = *MEMORY[0x277CCC120];
          v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
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
  v3 = [(HKSPFeatureAvailabilityStore *)self _defaultSleepTrackingRequirements];
  v4 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:self->_featureIdentifier];
  v10[0] = v4;
  v5 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCE268]];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v3 arrayByAddingObjectsFromArray:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_useSleepTrackingRequirements
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = [(HKSPFeatureAvailabilityStore *)self _defaultSleepTrackingRequirements];
  v4 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:self->_featureIdentifier];
  v5 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v11[1] = v5;
  v6 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:self->_featureIdentifier isOnIfSettingIsAbsent:0];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_sleepTrackingRequirements
{
  v13[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCD420]);
  v12[0] = *MEMORY[0x277CCBE88];
  v4 = [(HKSPFeatureAvailabilityStore *)self _defaultSleepTrackingRequirements];
  v13[0] = v4;
  v12[1] = *MEMORY[0x277CCBE80];
  v5 = [(HKSPFeatureAvailabilityStore *)self _onboardSleepTrackingRequirements];
  v13[1] = v5;
  v12[2] = *MEMORY[0x277CCBE38];
  v6 = [(HKSPFeatureAvailabilityStore *)self _onboardSleepTrackingRequirements];
  v13[2] = v6;
  v12[3] = *MEMORY[0x277CCBEA0];
  v7 = [(HKSPFeatureAvailabilityStore *)self _useSleepTrackingRequirements];
  v13[3] = v7;
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

- (id)_featureSettingsModelWithError:(id *)a3
{
  v4 = [(HKSPSleepOnboardingStore *)self->_sleepStore currentSleepSettingsWithError:a3];
  [(HKSPFeatureAvailabilityStore *)self _updateCachedFeatureSettingsModel:v4];

  return v4;
}

- (id)_onboardingModelWithError:(id *)a3
{
  v4 = [(HKSPSleepOnboardingStore *)self->_sleepStore currentSleepEventRecordWithError:a3];
  [(HKSPFeatureAvailabilityStore *)self _updateCachedOnboardingModel:v4];

  return v4;
}

- (void)_onboardingModelWithCompletion:(id)a3
{
  v4 = a3;
  sleepStore = self->_sleepStore;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HKSPFeatureAvailabilityStore__onboardingModelWithCompletion___block_invoke;
  v7[3] = &unk_279C74090;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (id)featureOnboardingRecordWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 hksp_supportsSleepDaemon];

  if ((v6 & 1) == 0)
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
      if (a3)
      {
        v18 = v14;
        v16 = 0;
        *a3 = v14;
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

  if (!a3)
  {
    _HKLogDroppedError();
LABEL_13:
    v16 = 0;
    goto LABEL_17;
  }

  v17 = v12;
  v16 = 0;
  *a3 = v12;
LABEL_17:

LABEL_18:

  return v16;
}

- (void)getFeatureOnboardingRecordWithCompletion:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(HKSPFeatureAvailabilityStore *)self featureOnboardingRecordWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (id)isCurrentOnboardingVersionCompletedWithError:(id *)a3
{
  v4 = [(HKSPFeatureAvailabilityStore *)self _onboardingModelWithError:a3];
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

- (id)onboardedCountryCodeSupportedStateWithError:(id *)a3
{
  v4 = [(HKSPFeatureAvailabilityStore *)self _onboardingModelWithError:a3];
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

- (void)isCurrentOnboardingVersionCompletedWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HKSPFeatureAvailabilityStore_isCurrentOnboardingVersionCompletedWithCompletion___block_invoke;
  v6[3] = &unk_279C74A50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (id)earliestDateLowestOnboardingVersionCompletedWithError:(id *)a3
{
  v3 = self;
  v4 = [(HKSPFeatureAvailabilityStore *)self _onboardingModelWithError:a3];
  v5 = v4;
  if (v4)
  {
    feature = v3->_feature;
    if (feature == 2)
    {
      v7 = [v4 sleepWindDownShortcutsOnboardingFirstCompletedDate];
    }

    else if (feature == 1)
    {
      v7 = [v4 sleepTrackingOnboardingFirstCompletedDate];
    }

    else
    {
      if (feature)
      {
        goto LABEL_10;
      }

      v7 = [v4 sleepCoachingOnboardingFirstCompletedDate];
    }

    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

LABEL_10:

  return v3;
}

- (id)isFeatureCapabilitySupportedOnActivePairedDeviceWithError:(id *)a3
{
  v3 = [(HKSPFeatureAvailabilityPairedDeviceRegistry *)self->_pairedDeviceRegistry getActivePairedDevice];
  if (v3)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C0F3C2C3-0CDE-4DF9-A95A-789AC9A0348B"];
    v6 = [v4 numberWithBool:{objc_msgSend(v3, "supportsCapability:", v5)}];
  }

  else
  {
    v6 = MEMORY[0x277CBEC28];
  }

  return v6;
}

- (id)canCompleteOnboardingForCountryCode:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HKSPFeatureAvailabilityStore *)self _onboardingIneligibilityReasons:a3]== 0;

  return [v4 numberWithInt:v5];
}

- (id)onboardingEligibilityForCountryCode:(id)a3 error:(id *)a4
{
  v5 = objc_alloc(MEMORY[0x277CCD3F8]);
  v6 = [(HKSPFeatureAvailabilityStore *)self _onboardingIneligibilityReasons];
  v7 = [MEMORY[0x277CCD898] uncheckedAvailability];
  v8 = [v7 version];
  v9 = [v5 initWithIneligibilityReasons:v6 countryAvailabilityVersion:v8];

  return v9;
}

- (id)pairedFeatureAttributesWithError:(id *)a3
{
  v4 = [MEMORY[0x277CCA9B8] hk_error:11 format:@"Feature attributes not applicable"];
  if (v4)
  {
    if (a3)
    {
      v5 = v4;
      *a3 = v4;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return 0;
}

- (id)featureAvailabilityRequirementsWithError:(id *)a3
{
  feature = self->_feature;
  if (feature != 2)
  {
    if (feature == 1)
    {
      v4 = [(HKSPFeatureAvailabilityStore *)self _sleepTrackingRequirements];
      goto LABEL_6;
    }

    if (feature)
    {
      goto LABEL_7;
    }
  }

  v4 = [(HKSPFeatureAvailabilityStore *)self _defaultRequirements];
LABEL_6:
  a2 = v4;
LABEL_7:

  return a2;
}

- (void)setCurrentOnboardingVersionCompletedForCountryCode:(id)a3 countryCodeProvenance:(int64_t)a4 date:(id)a5 settings:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v13)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HKSPFeatureAvailabilityStore.m" lineNumber:451 description:@"Specifying onboarded date is not supported for Sleep feature."];
  }

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __130__HKSPFeatureAvailabilityStore_setCurrentOnboardingVersionCompletedForCountryCode_countryCodeProvenance_date_settings_completion___block_invoke;
  v23 = &unk_279C74A78;
  v24 = self;
  v16 = v15;
  v25 = v16;
  v17 = MEMORY[0x26D64AA30](&v20);
  feature = self->_feature;
  switch(feature)
  {
    case 2:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepWindDownShortcutsOnboardingCompletedVersion:2 completion:v17, v20, v21, v22, v23, v24];
      break;
    case 1:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepTrackingOnboardingCompletedVersion:3 completion:v17, v20, v21, v22, v23, v24];
      break;
    case 0:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepCoachingOnboardingCompletedVersion:3 completion:v17, v20, v21, v22, v23, v24];
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

- (void)saveOnboardingCompletion:(id)a3 settings:(id)a4 completion:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] HKOnboardingCompletion is not implemented for Sleep.", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"HKOnboardingCompletion is not implemented for Sleep."];
  v6[2](v6, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingData:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Feature settings is not implemented for Sleep.", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Sleep."];
  v6[2](v6, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Feature settings is not implemented for Sleep.", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Sleep."];
  v6[2](v6, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setFeatureSettingNumber:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Feature settings is not implemented for Sleep.", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Sleep."];
  v6[2](v6, 0, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeFeatureSettingValueForKey:(id)a3 completion:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Feature settings is not implemented for Sleep.", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature settings is not implemented for Sleep."];
  v5[2](v5, 0, v7);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetOnboardingWithCompletion:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62__HKSPFeatureAvailabilityStore_resetOnboardingWithCompletion___block_invoke;
  v11 = &unk_279C74A78;
  v12 = self;
  v5 = v4;
  v13 = v5;
  v6 = MEMORY[0x26D64AA30](&v8);
  feature = self->_feature;
  switch(feature)
  {
    case 2:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepWindDownShortcutsOnboardingCompletedVersion:0 completion:v6, v8, v9, v10, v11, v12];
      break;
    case 1:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepTrackingOnboardingCompletedVersion:0 completion:v6, v8, v9, v10, v11, v12];
      break;
    case 0:
      [(HKSPSleepOnboardingStore *)self->_sleepStore setSleepCoachingOnboardingCompletedVersion:0 completion:v6, v8, v9, v10, v11, v12];
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

- (void)registerObserver:(id)a3 queue:(id)a4
{
  v10 = a3;
  v6 = a4;
  observers = self->_observers;
  v8 = v6;
  if (!v6)
  {
    v8 = HKCreateSerialDispatchQueue();
  }

  v9 = HKSPQueueBackedScheduler(v8);
  [(HKSPObserverSet *)observers addObserver:v10 callbackScheduler:v9];

  if (!v6)
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
    v8 = self;
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

- (void)sleepStore:(id)a3 sleepEventRecordDidChange:(id)a4
{
  if ([(HKSPFeatureAvailabilityStore *)self _updateCachedOnboardingModel:a4])
  {

    [(HKSPFeatureAvailabilityStore *)self _notifyObserversForDidUpdateOnboarding];
  }
}

- (BOOL)_updateCachedOnboardingModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
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
    v9 = v4;
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

- (void)sleepStore:(id)a3 sleepSettingsDidChange:(id)a4
{
  if ([(HKSPFeatureAvailabilityStore *)self _updateCachedFeatureSettingsModel:a4])
  {

    [(HKSPFeatureAvailabilityStore *)self _notifyObserversForDidUpdateSettings];
  }
}

- (BOOL)_updateCachedFeatureSettingsModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
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
    v9 = v4;
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
    v8 = self;
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
    v8 = self;
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