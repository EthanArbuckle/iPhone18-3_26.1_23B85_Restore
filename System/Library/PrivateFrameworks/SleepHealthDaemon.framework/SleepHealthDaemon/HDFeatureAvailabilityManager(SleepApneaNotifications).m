@interface HDFeatureAvailabilityManager(SleepApneaNotifications)
+ (id)hdsh_sleepApneaNotificationsAvailabilityManagerWithProfile:()SleepApneaNotifications;
@end

@implementation HDFeatureAvailabilityManager(SleepApneaNotifications)

+ (id)hdsh_sleepApneaNotificationsAvailabilityManagerWithProfile:()SleepApneaNotifications
{
  v87[5] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CCC0D8];
  v5 = MEMORY[0x277CCDD30];
  v6 = a3;
  v7 = [v5 sharedBehavior];
  LODWORD(v5) = [v7 isAppleWatch];

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  if (v5)
  {
    v9 = @"46F59960-D16A-4E76-B7D1-A1B0BBC73923";
  }

  else
  {
    v9 = @"D6770323-EBBB-4867-A1A7-99F207C64094";
  }

  v76 = [v8 initWithUUIDString:v9];
  v10 = objc_alloc(MEMORY[0x277D10728]);
  v11 = [MEMORY[0x277CCD260] localAvailabilityForSleepApneaNotifications];
  v12 = [v6 daemon];
  v78 = [v10 initWithFeatureIdentifier:v4 defaultCountrySet:v11 healthDaemon:v12];

  v13 = objc_alloc(MEMORY[0x277D107D8]);
  v14 = [MEMORY[0x277CCD3D8] featureAttributesDerivedFromOSBuildAndFeatureVersion:*MEMORY[0x277CCCDB0] watchDeviceIdentifier:*MEMORY[0x277CCCDC0] phoneDeviceIdentifier:*MEMORY[0x277CCCDB8]];
  v15 = [v13 initWithFeatureIdentifier:v4 localFeatureAttributes:v14 localCountrySetAvailabilityProvider:v78];

  v77 = v15;
  [v15 synchronizeLocalProperties];
  v16 = objc_alloc(MEMORY[0x277D10968]);
  v74 = v6;
  v75 = [v16 initWithAllowedCountriesDataSource:v15 profile:v6 featureCapability:v76 loggingCategory:*MEMORY[0x277CCC320]];
  v17 = objc_alloc(MEMORY[0x277D107C0]);
  v18 = [v6 daemon];
  v73 = [v17 initWithDaemon:v18 featureIdentifier:v4];

  v72 = objc_alloc(MEMORY[0x277D106D8]);
  v58 = objc_alloc(MEMORY[0x277CCD420]);
  v86[0] = *MEMORY[0x277CCBE38];
  v71 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:v4];
  v85[0] = v71;
  v70 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
  v85[1] = v70;
  v69 = [MEMORY[0x277CCD428] someRegionIsSupportedForFeatureWithIdentifier:v4];
  v85[2] = v69;
  v68 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v85[3] = v68;
  v19 = *MEMORY[0x277CCC248];
  v67 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:*MEMORY[0x277CCC248]];
  v85[4] = v67;
  v66 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v85[5] = v66;
  v20 = MEMORY[0x277CCD428];
  v21 = objc_alloc(MEMORY[0x277CCD408]);
  v22 = *MEMORY[0x277CCC0E8];
  v65 = [v21 initWithFeatureIdentifier:*MEMORY[0x277CCC0E8] isOnWhenSettingIsAbsent:0];
  v84 = v65;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
  v63 = [v20 prerequisiteFeaturesAreOnWithFeatureSettings:v64];
  v85[6] = v63;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:7];
  v87[0] = v62;
  v86[1] = *MEMORY[0x277CCBE50];
  v61 = [MEMORY[0x277CCD428] onboardingRecordIsNotPresentForFeatureWithIdentifier:v4];
  v83[0] = v61;
  v60 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v19];
  v83[1] = v60;
  v57 = [MEMORY[0x277CCD428] defaultOnboardingEligibilityRequirementsForFeatureIdentifier:v4];
  v83[2] = v57;
  v56 = [MEMORY[0x277CCD428] someRegionIsSupportedForFeatureWithIdentifier:v4];
  v83[3] = v56;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
  v87[1] = v55;
  v86[2] = *MEMORY[0x277CCBEA0];
  v54 = [MEMORY[0x277CCD428] profileIsNotFamilySetupPairingProfile];
  v82[0] = v54;
  v53 = [MEMORY[0x277CCD428] onboardingRecordIsPresentForFeatureWithIdentifier:v4];
  v82[1] = v53;
  v52 = [MEMORY[0x277CCD428] activeRemoteDeviceIsPresentWhenRequiredForRegionAvailabilityOrDeviceCapabilityForFeatureWithIdentifier:v4];
  v82[2] = v52;
  v51 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v4 supportedOnLocalDevice:MGGetBoolAnswer()];
  v82[3] = v51;
  v50 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v82[4] = v50;
  v49 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v4];
  v82[5] = v49;
  v48 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
  v82[6] = v48;
  v47 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
  v82[7] = v47;
  v46 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v19];
  v82[8] = v46;
  v45 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v82[9] = v45;
  v44 = [MEMORY[0x277CCD428] wristDetectionIsEnabledForActiveWatch];
  v82[10] = v44;
  v23 = MEMORY[0x277CCD428];
  v43 = [objc_alloc(MEMORY[0x277CCD408]) initWithFeatureIdentifier:v22 isOnWhenSettingIsAbsent:0];
  v81 = v43;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  v41 = [v23 prerequisiteFeaturesAreOnWithFeatureSettings:v42];
  v82[11] = v41;
  v40 = [MEMORY[0x277CCD428] featureIsOnWithIdentifier:v4 isOnIfSettingIsAbsent:0];
  v82[12] = v40;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:13];
  v87[2] = v39;
  v86[3] = *MEMORY[0x277CCBE70];
  v38 = [MEMORY[0x277CCD428] someRegionIsSupportedForFeatureWithIdentifier:v4];
  v80[0] = v38;
  v37 = [MEMORY[0x277CCD428] capabilityIsSupportedOnActiveWatchForFeatureWithIdentifier:v4 supportedOnLocalDevice:MGGetBoolAnswer()];
  v80[1] = v37;
  v36 = [MEMORY[0x277CCD428] healthAppIsNotHidden];
  v80[2] = v36;
  v24 = [MEMORY[0x277CCD428] notAgeGatedForUserDefaultsKey:v19];
  v80[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:4];
  v87[3] = v25;
  v86[4] = *MEMORY[0x277CCBE68];
  v26 = [MEMORY[0x277CCD428] featureIsNotRemotelyDisabledWithIdentifier:v4];
  v79[0] = v26;
  v27 = [MEMORY[0x277CCD428] seedIsNotExpiredForFeatureWithIdentifier:v4];
  v79[1] = v27;
  v28 = [MEMORY[0x277CCD428] countryIsSupportedOnLocalDeviceForFeatureWithIdentifier:v4];
  v79[2] = v28;
  v29 = [MEMORY[0x277CCD428] countryIsSupportedOnActiveRemoteDeviceForFeatureWithIdentifier:v4 isSupportedIfCountryListMissing:1];
  v79[3] = v29;
  v30 = [MEMORY[0x277CCD428] someRegionIsSupportedForFeatureWithIdentifier:v4];
  v79[4] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:5];
  v87[4] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:5];
  v59 = [v58 initWithRequirementsByContext:v32];

  v33 = [v72 initWithProfile:v74 featureIdentifier:v4 availabilityRequirements:v59 currentOnboardingVersion:1 pairedDeviceCapability:v76 pairedFeatureAttributesProvider:v77 regionAvailabilityProvider:v75 disableAndExpiryProvider:v73 loggingCategory:*MEMORY[0x277CCC320]];
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

@end