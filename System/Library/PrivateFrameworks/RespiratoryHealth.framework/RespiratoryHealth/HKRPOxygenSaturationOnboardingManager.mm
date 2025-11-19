@interface HKRPOxygenSaturationOnboardingManager
- (BOOL)_currentDeviceHasCapability;
- (BOOL)_isAlternateDevice;
- (BOOL)ageIsAppropriate;
- (BOOL)bloodOxygenFeatureEnabled;
- (BOOL)bloodOxygenRemoteDisabled;
- (BOOL)onboardingComplete;
- (BOOL)onboardingDuringPairingShouldAppear;
- (BOOL)onboardingShouldAppear;
- (BOOL)pairedDeviceIsAppropriate;
- (BOOL)settingsShouldAppear;
- (BOOL)shouldAdvertise;
- (HKRPOxygenSaturationOnboardingManager)init;
- (HKRPOxygenSaturationOnboardingManager)initWithDataSource:(id)a3;
- (HKRPOxygenSaturationOnboardingManager)initWithDevice:(id)a3;
- (void)_currentDeviceHasCapability;
- (void)bloodOxygenRemoteDisabled;
- (void)cacheCompletedOnboardingStateIfNeeded;
- (void)onboardWithCompletion:(id)a3;
- (void)onboardingComplete;
@end

@implementation HKRPOxygenSaturationOnboardingManager

- (HKRPOxygenSaturationOnboardingManager)init
{
  v3 = objc_alloc_init(_HKRPOxygenSaturationOnboardingManagerDataSource);
  v4 = [(HKRPOxygenSaturationOnboardingManager *)self initWithDataSource:v3];

  return v4;
}

- (HKRPOxygenSaturationOnboardingManager)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = [[_HKRPOxygenSaturationOnboardingManagerStaticDeviceDataSource alloc] initWithDevice:v4];

  v6 = [(HKRPOxygenSaturationOnboardingManager *)self initWithDataSource:v5];
  return v6;
}

- (HKRPOxygenSaturationOnboardingManager)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKRPOxygenSaturationOnboardingManager;
  v6 = [(HKRPOxygenSaturationOnboardingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (BOOL)settingsShouldAppear
{
  if (![(HKRPOxygenSaturationOnboardingManager *)self bloodOxygenFeatureEnabled]|| ![(HKRPOxygenSaturationOnboardingManager *)self pairedDeviceIsAppropriate])
  {
    return 0;
  }

  return [(HKRPOxygenSaturationOnboardingManager *)self ageIsAppropriate];
}

- (BOOL)bloodOxygenFeatureEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource isBloodOxygenSaturationEnabled];
  _HKInitializeLogging();
  v3 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 1024;
    v10 = v2;
    v4 = v8;
    _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Feature is enabled: %d", &v7, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)pairedDeviceIsAppropriate
{
  if ([(HKRPOxygenSaturationOnboardingManager *)self _isAlternateDevice])
  {
    return 0;
  }

  return [(HKRPOxygenSaturationOnboardingManager *)self _currentDeviceHasCapability];
}

- (BOOL)_currentDeviceHasCapability
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource skipHardwareCheck])
  {
    _HKInitializeLogging();
    v3 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      v4 = v16;
      _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device check override is in place", buf, 0xCu);
    }

    v5 = 1;
  }

  else
  {
    v6 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource featureAvailabilityProvider];
    v14 = 0;
    v7 = [v6 isFeatureCapabilitySupportedOnActivePairedDeviceWithError:&v14];
    v3 = v14;

    _HKInitializeLogging();
    v8 = HKLogRespiratoryCategory();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        *buf = 138543618;
        v16 = v10;
        v17 = 2114;
        v18 = v7;
        v11 = v10;
        _os_log_impl(&dword_262078000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device check result: %{public}@", buf, 0x16u);
      }

      v5 = [v7 BOOLValue];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [HKRPOxygenSaturationOnboardingManager _currentDeviceHasCapability];
      }

      v5 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_isAlternateDevice
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource device];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 valueForProperty:*MEMORY[0x277D2BB28]];
    v5 = [v4 BOOLValue];

    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 1024;
      v14 = v5;
      v7 = v12;
      _os_log_impl(&dword_262078000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Alternate device check: alternate device flag: %d", &v11, 0x12u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&dword_262078000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Alternate device check: active device is nil", &v11, 0xCu);
    }

    LOBYTE(v5) = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)ageIsAppropriate
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource isAgeGated];
  _HKInitializeLogging();
  v3 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = MEMORY[0x277CCABB0];
    v6 = v4;
    v7 = [v5 numberWithBool:v2 ^ 1u];
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Age is appropriate for oxygen saturation: %{public}@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2 ^ 1;
}

- (BOOL)shouldAdvertise
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource shouldAdvertise];
  _HKInitializeLogging();
  v3 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = MEMORY[0x277CCABB0];
    v6 = v4;
    v7 = [v5 numberWithBool:v2];
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Should advertise onboarding of feature: %{public}@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

- (BOOL)onboardingShouldAppear
{
  v3 = [(HKRPOxygenSaturationOnboardingManager *)self settingsShouldAppear];
  if (v3)
  {
    LOBYTE(v3) = ![(HKRPOxygenSaturationOnboardingManager *)self onboardingComplete];
  }

  return v3;
}

- (BOOL)onboardingDuringPairingShouldAppear
{
  if (![(HKRPOxygenSaturationOnboardingManager *)self onboardingShouldAppear]|| [(HKRPOxygenSaturationOnboardingManager *)self bloodOxygenRemoteDisabled])
  {
    return 0;
  }

  return [(HKRPOxygenSaturationOnboardingManager *)self shouldAdvertise];
}

- (BOOL)onboardingComplete
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource featureAvailabilityProvider];
  v14 = 0;
  v3 = [v2 onboardedCountryCodeSupportedStateWithError:&v14];
  v4 = v14;

  if (v3)
  {
    v5 = [v3 integerValue];
    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = NSStringFromHKFeatureAvailabilityOnboardedCountrySupportedState();
      *buf = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_262078000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completed state: %{public}@", buf, 0x16u);
    }

    if (v5 <= 5)
    {
      v10 = 5u >> v5;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HKRPOxygenSaturationOnboardingManager onboardingComplete];
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)bloodOxygenRemoteDisabled
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource featureAvailabilityProvider];
  v20 = 0;
  v4 = [v3 onboardedCountryCodeSupportedStateWithError:&v20];
  v5 = v20;

  if (!v4)
  {
    _HKInitializeLogging();
    v15 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [HKRPOxygenSaturationOnboardingManager bloodOxygenRemoteDisabled];
    }

    goto LABEL_14;
  }

  v6 = [v4 integerValue];
  _HKInitializeLogging();
  v7 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKFeatureAvailabilityOnboardedCountrySupportedState();
    *buf = 138543618;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_262078000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Onboarding completed state: %{public}@", buf, 0x16u);
  }

  if ((v6 - 2) < 2 || v6 == 5)
  {
LABEL_14:
    LOBYTE(v14) = 0;
    goto LABEL_15;
  }

  if (v6 == 1)
  {

    v12 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource featureAvailabilityProvider];
    v19 = 0;
    v13 = [v12 onboardingEligibilityForCountryCode:0 error:&v19];
    v5 = v19;

    if (v13)
    {
      v14 = ([v13 ineligibilityReasons] >> 6) & 1;
    }

    else
    {
      _HKInitializeLogging();
      v18 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [HKRPOxygenSaturationOnboardingManager bloodOxygenRemoteDisabled];
      }

      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 1;
  }

LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)onboardWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  _HKInitializeLogging();
  v6 = HKLogRespiratoryCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_262078000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Attempting to onboard feature, checking country code...", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7 = [(HKRPOxygenSaturationOnboardingManagerDataSource *)self->_dataSource mobileCountryCodeManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke;
  v10[3] = &unk_279B0D568;
  v12[1] = v5;
  v8 = v4;
  v10[4] = self;
  v11 = v8;
  objc_copyWeak(v12, buf);
  [v7 fetchMobileCountryCodeFromCellularWithCompletion:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = HKLogRespiratoryCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = [v5 ISOCode];
      *buf = 138543618;
      v35 = v9;
      v36 = 2114;
      v37 = v10;
      _os_log_impl(&dword_262078000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting current onboarding version completed for %{public}@...", buf, 0x16u);
    }

    v11 = [*(*(a1 + 32) + 8) featureAvailabilityProvider];
    v12 = [v5 ISOCode];
    v30 = 0;
    v13 = [v11 canCompleteOnboardingForCountryCode:v12 error:&v30];
    v14 = v30;

    if (v13)
    {
      if ([v13 BOOLValue])
      {
        v15 = [*(*(a1 + 32) + 8) featureAvailabilityProvider];
        v16 = [v5 ISOCode];
        v17 = [v5 provenance];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3;
        v22[3] = &unk_279B0D540;
        v25[1] = *(a1 + 56);
        v23 = v5;
        objc_copyWeak(v25, (a1 + 48));
        v24 = *(a1 + 40);
        [v15 setCurrentOnboardingVersionCompletedForCountryCode:v16 countryCodeProvenance:v17 date:0 settings:0 completion:v22];

        objc_destroyWeak(v25);
        v18 = &v23;
LABEL_15:

        goto LABEL_16;
      }

      v20 = v26;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_2;
      v26[3] = &unk_279B0D4F0;
      v26[4] = v5;
      v27 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v26);
    }

    else
    {
      _HKInitializeLogging();
      v19 = HKLogRespiratoryCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_cold_1(a1, v5);
      }

      v20 = v28;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_300;
      v28[3] = &unk_279B0D4F0;
      v28[4] = v5;
      v29 = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], v28);
    }

    v18 = (v20 + 4);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_cold_2(a1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_294;
  block[3] = &unk_279B0D4F0;
  v32 = v6;
  v33 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v14 = v32;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_294(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hk_error:109 description:@"country code not found" underlyingError:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_300(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) ISOCode];
  v5 = [v2 stringWithFormat:@"Feature unavailable for country code %@ (error)", v3];

  v4 = [MEMORY[0x277CCA9B8] hk_error:110 description:v5];
  (*(*(a1 + 40) + 16))();
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) ISOCode];
  v5 = [v2 stringWithFormat:@"Feature unavailable for country code %@", v3];

  v4 = [MEMORY[0x277CCA9B8] hk_error:110 description:v5];
  (*(*(a1 + 40) + 16))();
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v8 = [v5 domain];
    v9 = *MEMORY[0x277CCBDB0];
    if ([v8 isEqualToString:*MEMORY[0x277CCBDB0]])
    {
      v10 = [v6 code];

      if (v10 == 115)
      {
        _HKInitializeLogging();
        v11 = HKLogRespiratoryCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 56);
          *buf = 138543362;
          v26 = v12;
          _os_log_impl(&dword_262078000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] The user has previously onboarded this feature, ignoring feature availability store error", buf, 0xCu);
        }

        v13 = 0;
        v7 = 1;
LABEL_18:

        v6 = v13;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v14 = v6;
    v15 = [v14 domain];
    if ([v15 isEqualToString:v9])
    {
      v16 = [v14 code];

      if (v16 == 3)
      {
        v13 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Feature unavailable" underlyingError:v14];

        _HKInitializeLogging();
        v6 = HKLogRespiratoryCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3_cold_2(a1);
        }

        v7 = 0;
        goto LABEL_18;
      }
    }

    else
    {
    }

    _HKInitializeLogging();
    v6 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3_cold_1();
    }

    v7 = 0;
    v13 = v14;
    goto LABEL_18;
  }

  v7 = 1;
LABEL_19:
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_311;
  v20[3] = &unk_279B0D518;
  objc_copyWeak(&v23, (a1 + 48));
  v17 = *(a1 + 40);
  v24 = v7;
  v21 = v6;
  v22 = v17;
  v18 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v20);

  objc_destroyWeak(&v23);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_311(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained cacheCompletedOnboardingStateIfNeeded];

  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)cacheCompletedOnboardingStateIfNeeded
{
  OUTLINED_FUNCTION_3_0();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_currentDeviceHasCapability
{
  OUTLINED_FUNCTION_3_0();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)onboardingComplete
{
  OUTLINED_FUNCTION_3_0();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)bloodOxygenRemoteDisabled
{
  OUTLINED_FUNCTION_3_0();
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_0(v0);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = [a2 ISOCode];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  v5 = 138543618;
  v6 = v1;
  OUTLINED_FUNCTION_2_0();
  v7 = v2;
  _os_log_error_impl(&dword_262078000, v3, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to onboard feature: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = [*(v0 + 32) ISOCode];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __63__HKRPOxygenSaturationOnboardingManager_onboardWithCompletion___block_invoke_3_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) ISOCode];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end