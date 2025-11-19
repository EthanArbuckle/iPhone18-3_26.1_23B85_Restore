uint64_t HKRPShouldSkipHardwareCheck()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"HKRPSkipHardwareCheck"];

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v9 = va_arg(va1, void);
  v4 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

BOOL OUTLINED_FUNCTION_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_7()
{

  return _HKInitializeLogging();
}

id HKRPOxygenSaturationFeatureAvailabilityRequirements()
{
  v43[10] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC0B0];
  v30 = objc_alloc(MEMORY[0x277CCD420]);
  v41[0] = *MEMORY[0x277CCBE00];
  v37 = [MEMORY[0x277CCD428] notInStoreDemoMode];
  v40[0] = v37;
  v36 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v40[1] = v36;
  v1 = *MEMORY[0x277CCC230];
  v35 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC230]];
  v40[2] = v35;
  v34 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v0];
  v40[3] = v34;
  v33 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0];
  v40[4] = v33;
  v32 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0 isSupportedIfCountryListMissing:0];
  v40[5] = v32;
  v31 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v40[6] = v31;
  v29 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v40[7] = v29;
  v28 = [MEMORY[0x277CCD428] activeWatchIsNotUnderInternalDevelopmentImportExclusionForFeatureWithIdentifier:v0];
  v40[8] = v28;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:9];
  v42[0] = v27;
  v41[1] = *MEMORY[0x277CCBE08];
  v26 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v0 supportedOnLocalDevice:MGGetBoolAnswer()];
  v39[0] = v26;
  v25 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v39[1] = v25;
  v2 = *MEMORY[0x277CCC0B8];
  v24 = [MEMORY[0x277CCD428] mutuallyExclusiveFeatureIsOffWithIdentifier:*MEMORY[0x277CCC0B8]];
  v39[2] = v24;
  v23 = [MEMORY[0x277CCD428] currentCountryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v39[3] = v23;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  v42[1] = v22;
  v41[2] = *MEMORY[0x277CCBE78];
  v21 = HKRPUsageRequirementsForFeatureIdentifier(v0);
  v38[0] = v21;
  v20 = [MEMORY[0x277CCD428] mutuallyExclusiveFeatureIsOffWithIdentifier:v2];
  v38[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v42[2] = v19;
  v41[3] = *MEMORY[0x277CCBEA0];
  v18 = HKRPUsageRequirementsForFeatureIdentifier(v0);
  v42[3] = v18;
  v41[4] = *MEMORY[0x277CCBDF8];
  v17 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v43[0] = v17;
  v16 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v43[1] = v16;
  v3 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v43[2] = v3;
  v4 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v0];
  v43[3] = v4;
  v5 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0];
  v43[4] = v5;
  v6 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0 isSupportedIfCountryListMissing:0];
  v43[5] = v6;
  v7 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v0];
  v43[6] = v7;
  v8 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v1];
  v43[7] = v8;
  v9 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v43[8] = v9;
  v10 = [MEMORY[0x277CCD428] bloodOxygenRecordingsAreEnabled];
  v43[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:10];

  v42[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:5];
  v13 = [v30 initWithRequirementsByContext:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id HKRPUsageRequirementsForFeatureIdentifier(void *a1)
{
  v17[11] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCD428];
  v2 = a1;
  v16 = [v1 profileIsNotFamilySetupPairingProfile];
  v17[0] = v16;
  v15 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC230]];
  v17[1] = v15;
  v3 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v2];
  v17[2] = v3;
  v4 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v2 supportedOnLocalDevice:MGGetBoolAnswer()];
  v17[3] = v4;
  v5 = [MEMORY[0x277CCD428] bloodOxygenRecordingsAreEnabled];
  v17[4] = v5;
  v6 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v2];
  v17[5] = v6;
  v7 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v2 isSupportedIfCountryListMissing:0];
  v17[6] = v7;
  v8 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v2];
  v17[7] = v8;
  v9 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v2];
  v17[8] = v9;
  v10 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v17[9] = v10;
  v11 = [MEMORY[0x277CCD428] activeWatchIsNotUnderInternalDevelopmentImportExclusionForFeatureWithIdentifier:v2];

  v17[10] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id HKRPOxygenSaturationRecordingCompanionAnalysisFeatureAvailabilityRequirements()
{
  v14[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCC0B8];
  v1 = objc_alloc(MEMORY[0x277CCD420]);
  v2 = *MEMORY[0x277CCBEA0];
  v13[0] = *MEMORY[0x277CCBE20];
  v13[1] = v2;
  v14[0] = MEMORY[0x277CBEBF8];
  v3 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v0];
  v12[0] = v3;
  v4 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v0];
  v12[1] = v4;
  v5 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v0];
  v12[2] = v5;
  v6 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v0];
  v12[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = [v1 initWithRequirementsByContext:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_26207BF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_1_0(id a1)
{

  return a1;
}

id HKRPLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_28749AF10 table:0];

  return v4;
}

id HKRPCompanionAnalysisLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_28749AF10 table:@"Localizable-Windbreaker"];

  return v4;
}

__CFString *HKRPStringFromHKRPOxygenSaturationSessionEndReason(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Completed";
  }

  else
  {
    return off_279B0D5E0[a1 - 1];
  }
}

uint64_t HKRPShouldSkipRegionCheck()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"HKRPSkipRegionCheck"];

  return v1;
}

uint64_t HKRPShouldSkipOnboardingCompletedCheck()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"HKRPSkipOnboardingCompletedCheck"];

  return v1;
}

uint64_t HKRPShouldInstallOxygenSaturationWatchAppOnPairedWatch(void *a1)
{
  v1 = a1;
  v2 = [[HKRPWatchAppInstallability alloc] initWithDevice:v1];

  v3 = [(HKRPWatchAppInstallability *)v2 shouldInstallWatchApp];
  return v3;
}

uint64_t sub_26207E37C()
{
  v0 = sub_26207F5B0();
  __swift_allocate_value_buffer(v0, qword_27FF08378);
  __swift_project_value_buffer(v0, qword_27FF08378);
  return sub_26207F5A0();
}

uint64_t static Logger.bloodOxygen.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF08370 != -1)
  {
    swift_once();
  }

  v2 = sub_26207F5B0();
  v3 = __swift_project_value_buffer(v2, qword_27FF08378);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}