@interface HKSPSleepHealthDataSource
- (HKFeatureAvailabilityHealthDataSource)healthDataSource;
- (HKFeatureAvailabilityHealthDataSource)weakHealthDataSource;
- (HKProfileIdentifier)profileIdentifier;
- (HKSPSleepHealthDataSource)initWithSleepStore:(id)a3 healthDataSource:(id)a4;
- (HKSPSleepHealthDataSource)initWithSleepStore:(id)a3 healthDataSource:(id)a4 pairedDeviceRegistry:(id)a5;
- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)a3;
- (id)healthDataRequirementEvaluationProvider;
- (id)requirementSatisfactionOverridesDataSource;
- (id)sharedRequirementEvaluationDataSource;
- (id)userCharacteristicForDataType:(id)a3 error:(id *)a4;
- (id)watchLowPowerModeDataSource;
- (id)wristDetectionSettingManager;
@end

@implementation HKSPSleepHealthDataSource

- (HKSPSleepHealthDataSource)initWithSleepStore:(id)a3 healthDataSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HKSPPairedDeviceRegistryProvider);
  v9 = [(HKSPSleepHealthDataSource *)self initWithSleepStore:v7 healthDataSource:v6 pairedDeviceRegistry:v8];

  return v9;
}

- (HKSPSleepHealthDataSource)initWithSleepStore:(id)a3 healthDataSource:(id)a4 pairedDeviceRegistry:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HKSPSleepHealthDataSource;
  v12 = [(HKSPSleepHealthDataSource *)&v19 init];
  if (v12)
  {
    v13 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_269A84000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    objc_storeStrong(&v12->_sleepStore, a3);
    objc_storeStrong(&v12->_pairedDeviceRegistry, a5);
    if ([v10 requiresWeakRetention])
    {
      objc_storeWeak(&v12->_weakHealthDataSource, v10);
      v14 = 0;
    }

    else
    {
      objc_storeWeak(&v12->_weakHealthDataSource, 0);
      v14 = v10;
    }

    strongHealthDataSource = v12->_strongHealthDataSource;
    v12->_strongHealthDataSource = v14;

    v16 = v12;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HKFeatureAvailabilityHealthDataSource)healthDataSource
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_weakHealthDataSource);
  strongHealthDataSource = WeakRetained;
  if (WeakRetained || (strongHealthDataSource = self->_strongHealthDataSource) != 0)
  {
    v5 = strongHealthDataSource;
  }

  else
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = self;
      _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "%{public}@ health data source is nil", &v9, 0xCu);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HKProfileIdentifier)profileIdentifier
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning profile identifier", &v8, 0xCu);
  }

  v4 = [(HKSPSleepHealthDataSource *)self healthDataSource];
  v5 = [v4 profileIdentifier];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)featureAvailabilityProvidingForFeatureIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  IsProvidedBySleepDaemon = HKFeatureIdentifierIsProvidedBySleepDaemon();
  v6 = HKSPLogForCategory(1uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (IsProvidedBySleepDaemon)
  {
    if (v7)
    {
      v14 = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ returning sleep feature availability store for featureIdentifier: %{public}@", &v14, 0x16u);
    }

    v8 = [HKSPFeatureAvailabilityStore alloc];
    v9 = [(HKSPSleepHealthDataSource *)self sleepStore];
    v10 = [(HKSPSleepHealthDataSource *)self pairedDeviceRegistry];
    v11 = [(HKSPFeatureAvailabilityStore *)v8 initWithFeatureIdentifier:v4 sleepStore:v9 pairedDeviceRegistry:v10];
  }

  else
  {
    if (v7)
    {
      v14 = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ returning health feature availability store for featureIdentifier: %{public}@", &v14, 0x16u);
    }

    v9 = [(HKSPSleepHealthDataSource *)self healthDataSource];
    v11 = [v9 featureAvailabilityProvidingForFeatureIdentifier:v4];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)sharedRequirementEvaluationDataSource
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ shared requirement evaluation data source", &v8, 0xCu);
  }

  v4 = [(HKSPSleepHealthDataSource *)self healthDataSource];
  v5 = [v4 sharedRequirementEvaluationDataSource];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)healthDataRequirementEvaluationProvider
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning health data requirement evaluation provider", &v8, 0xCu);
  }

  v4 = [(HKSPSleepHealthDataSource *)self healthDataSource];
  v5 = [v4 healthDataRequirementEvaluationProvider];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)requirementSatisfactionOverridesDataSource
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning requirement satisfaction overrides data source", &v8, 0xCu);
  }

  v4 = [(HKSPSleepHealthDataSource *)self healthDataSource];
  v5 = [v4 requirementSatisfactionOverridesDataSource];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)watchLowPowerModeDataSource
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning watch low power mode data source", &v8, 0xCu);
  }

  v4 = [(HKSPSleepHealthDataSource *)self healthDataSource];
  v5 = [v4 watchLowPowerModeDataSource];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)wristDetectionSettingManager
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ returning wrist detection manager", &v8, 0xCu);
  }

  v4 = [(HKSPSleepHealthDataSource *)self healthDataSource];
  v5 = [v4 wristDetectionSettingManager];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)userCharacteristicForDataType:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HKSPLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = self;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ returning user characteristics for datatype: %{public}@", &v12, 0x16u);
  }

  v8 = [(HKSPSleepHealthDataSource *)self healthDataSource];
  v9 = [v8 userCharacteristicForDataType:v6 error:a4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HKFeatureAvailabilityHealthDataSource)weakHealthDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakHealthDataSource);

  return WeakRetained;
}

@end