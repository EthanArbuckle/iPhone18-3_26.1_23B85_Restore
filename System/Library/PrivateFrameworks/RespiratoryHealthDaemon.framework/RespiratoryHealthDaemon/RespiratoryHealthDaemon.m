id OUTLINED_FUNCTION_0(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_0_0(id a1)
{

  return a1;
}

void sub_26208B25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  __destructor_8_s24_s32_s40_s48(va);
  _Unwind_Resume(a1);
}

void sub_26208B6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Block_object_dispose((v49 - 208), 8);
  _Block_object_dispose((v49 - 176), 8);
  _Unwind_Resume(a1);
}

void __move_assignment_8_8_t0w24_s24_s32_s40_s48(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;

  v7 = *(a2 + 4);
  *(a2 + 4) = 0;
  v8 = *(a1 + 32);
  *(a1 + 32) = v7;

  v9 = *(a2 + 5);
  *(a2 + 5) = 0;
  v10 = *(a1 + 40);
  *(a1 + 40) = v9;

  v11 = *(a2 + 6);
  *(a2 + 6) = 0;
  v12 = *(a1 + 48);
  *(a1 + 48) = v11;
}

id __copy_constructor_8_8_t0w24_s24_s32_s40_s48(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 5);
  result = *(a2 + 6);
  *(a1 + 48) = result;
  return result;
}

void __destructor_8_s24_s32_s40_s48(uint64_t a1)
{
  v2 = *(a1 + 48);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __destructor_8_s0_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void OUTLINED_FUNCTION_2_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{

  [(HDRPOxygenSaturationAnalyzer *)v8 _postNotificationWithTitle:v9 body:v10 categoryIdentifier:a4 subtitle:0 domain:14 url:v11 completion:a8];
}

id OUTLINED_FUNCTION_3(uint64_t a1, void *a2)
{

  return a2;
}

id HDRPOxygenSaturationRecordingFeatureAvailabilityProvider(void *a1)
{
  v1 = *MEMORY[0x277CCC0B0];
  v2 = MEMORY[0x277CCDD30];
  v3 = a1;
  v4 = [v2 sharedBehavior];
  v5 = [v4 isAppleWatch];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"BD3A4341-7090-4622-9694-2AC0F536C478"];
  }

  v7 = objc_alloc(MEMORY[0x277D10728]);
  v8 = [MEMORY[0x277D46B98] allowedCountrySet];
  v9 = [v3 daemon];
  v28 = [v7 initWithFeatureIdentifier:v1 defaultCountrySet:v8 healthDaemon:v9];

  v10 = objc_alloc(MEMORY[0x277D107D8]);
  v11 = HKRPOxygenSaturationLocalFeatureAttributes();
  v12 = [v10 initWithFeatureIdentifier:v1 localFeatureAttributes:v11 localCountrySetAvailabilityProvider:v28];

  [v12 synchronizeLocalProperties];
  v13 = objc_alloc(MEMORY[0x277D105A0]);
  v14 = [v3 daemon];
  v15 = HKLogRespiratoryCategory();
  v16 = [v13 initWithDaemon:v14 allowedCountriesDataSource:v12 loggingCategory:v15];

  v17 = objc_alloc(MEMORY[0x277D10968]);
  v18 = HKLogRespiratoryCategory();
  v19 = [v17 initWithAllowedCountriesDataSource:v16 profile:v3 featureCapability:v6 loggingCategory:v18];

  v20 = objc_alloc(MEMORY[0x277D107C0]);
  v21 = [v3 daemon];
  v22 = [v20 initWithDaemon:v21 featureIdentifier:v1];

  v23 = objc_alloc(MEMORY[0x277D106D8]);
  v24 = HKRPOxygenSaturationFeatureAvailabilityRequirements();
  v25 = HKLogRespiratoryCategory();
  v26 = [v23 initWithProfile:v3 featureIdentifier:v1 availabilityRequirements:v24 currentOnboardingVersion:1 pairedDeviceCapability:v6 regionAvailabilityProvider:v19 disableAndExpiryProvider:v22 loggingCategory:v25];

  return v26;
}

id HDRPOxygenSaturationRecordingCompanionAnalysisPairedFeaturePropertiesSyncManager(void *a1)
{
  v1 = MEMORY[0x277D10728];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = *MEMORY[0x277CCC0B8];
  v5 = [MEMORY[0x277CCD260] emptyCountrySet];
  v6 = [v2 daemon];

  v7 = [v3 initWithFeatureIdentifier:v4 defaultCountrySet:v5 healthDaemon:v6];
  v8 = objc_alloc(MEMORY[0x277D107D8]);
  v9 = HKRPOxygenSaturationCompanionAnalysisLocalFeatureAttributes();
  v10 = [v8 initWithFeatureIdentifier:v4 localFeatureAttributes:v9 localCountrySetAvailabilityProvider:v7];

  return v10;
}

id HDRPOxygenSaturationRecordingCompanionAnalysisFeatureAvailabilityProvider(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277CCC0B8];
  v3 = objc_alloc(MEMORY[0x277D107C0]);
  v4 = [v1 daemon];
  v5 = [v3 initWithDaemon:v4 featureIdentifier:v2];

  v6 = HDRPOxygenSaturationRecordingCompanionAnalysisPairedFeaturePropertiesSyncManager(v1);
  [v6 synchronizeLocalProperties];
  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 isAppleWatch];

  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  if (v8)
  {
    v10 = @"198711C2-6CC8-43B9-A882-6670CC787272";
  }

  else
  {
    v10 = @"2D6D2220-64DB-408A-89ED-ED05391073E8";
  }

  v11 = [v9 initWithUUIDString:v10];
  v12 = objc_alloc(MEMORY[0x277D106D8]);
  v13 = HKRPOxygenSaturationRecordingCompanionAnalysisFeatureAvailabilityRequirements();
  v14 = [MEMORY[0x277D10828] uncheckedAvailability];
  v15 = HKLogRespiratoryCategory();
  v16 = [v12 initWithProfile:v1 featureIdentifier:v2 availabilityRequirements:v13 currentOnboardingVersion:0 pairedDeviceCapability:v11 pairedFeatureAttributesProvider:v6 regionAvailabilityProvider:v14 disableAndExpiryProvider:v5 loggingCategory:v15];

  return v16;
}

id HKRPOxygenSaturationDataTypeRoomLink()
{
  v0 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBE8]];
  v1 = _HKCreateURLForSampleType();

  return v1;
}

id HKRPOxygenSaturationUnsuccessfulAnalysisEventSampleDetailsLink(uint64_t a1)
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-apple-health://RespiratoryHealthAppPlugin.healthplugin/%@/%@", *MEMORY[0x277D46B80], a1];
  v3 = [v1 URLWithString:v2];

  return v3;
}

id HKRPOxygenSaturationShowAllDataRoomLink()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-apple-health://RespiratoryHealthAppPlugin.healthplugin/%@", *MEMORY[0x277D46B78]];
  v2 = [v0 URLWithString:v1];

  return v2;
}