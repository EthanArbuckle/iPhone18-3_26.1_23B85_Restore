@interface PUIProblemReportingController
+ (BOOL)isProblemReportingEnabled;
- (AFSettingsConnection)assistantSettingsConnection;
- (BOOL)shouldShowAppleIdImprovementSpecifiersForAccount:(id)a3;
- (BOOL)shouldShowFitnessPlusSpecifiers;
- (BOOL)shouldShowIdentityVerificationSpecifiers;
- (BOOL)shouldShowiCloudSpecifiersForAccount:(id)a3;
- (CIDVUIIdentityProofingDataSharingFlowManager)identityProofingDataSharingManager;
- (HKHealthStore)healthStore;
- (NSArray)appActivitySpecifiers;
- (NSArray)bankConnectDataSpecifiers;
- (NSArray)baseSpecifiers;
- (NSArray)fitnessPlusDataSpecifiers;
- (NSArray)handwashingDataSpecifiers;
- (NSArray)healthDataSpecifiers;
- (NSArray)healthRecordsDataSpecifiers;
- (NSArray)identityVerificationDataSpecifiers;
- (NSArray)improveARLocationAccuracySpecifiers;
- (NSArray)improveAssistiveVoiceSpecifiers;
- (NSArray)improveSiriSpecifiers;
- (NSArray)safetyDataSpecifiers;
- (NSArray)wheelchairDataSpecifiers;
- (PSSpecifier)filesystemMetadataSnapshotSpecifier;
- (PSSpecifier)spinnerSpecifier;
- (PUIBankConnectAnalyticsConsentCoordinator)bankConnectAnalyticsConsentCoordinator;
- (PUIFitnessPlusAnalyticsConsentCoordinator)fitnessPlusAnalyticsConsentCoordinator;
- (id)analyticsSpecifiersIncludingIndependentSpecifiers:(BOOL)a3 includeDependentSpecifiers:(BOOL)a4;
- (id)appleIdImprovementSpecifiers;
- (id)automatedFeedbackEnabled:(id)a3;
- (id)getCurrentImproveSiriAndDictationValueForSpecifier:(id)a3;
- (id)getImproveAssistiveVoiceValueForSpecifier:(id)a3;
- (id)iCloudSpecifiers;
- (id)improveARLocationAccuracyForSpecifier:(id)a3;
- (id)loadPrivacySettingsBundle;
- (id)problemReportingEnabled:(id)a3;
- (id)shouldShareAppActivityWithAppDevelopers;
- (id)shouldShareBankConnectDataForSpecifier:(id)a3;
- (id)shouldShareFitnessPlusDataForSpecifier:(id)a3;
- (id)shouldShareHandwashingDataForSpecifier:(id)a3;
- (id)shouldShareHealthDataForSpecifier:(id)a3;
- (id)shouldShareHealthRecordsDataForSpecifier:(id)a3;
- (id)shouldShareIdentityVerificationData:(id)a3;
- (id)shouldShareSafetyDataForSpecifier:(id)a3;
- (id)shouldShareWheelchairDataForSpecifier:(id)a3;
- (id)shouldShareiCloudAnalytics:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)automatedFeedbackLinkTapped;
- (void)checkDiagnosticsSessionAvailability;
- (void)launchDiagnosticsSession:(id)a3;
- (void)provideNavigationDonations;
- (void)setAutomatedFeedbackEnabled:(id)a3 specifier:(id)a4;
- (void)setBoolValue:(BOOL)a3 forIdMSConfigKey:(id)a4 completion:(id)a5;
- (void)setImproveARLocationAccuracy:(id)a3 specifier:(id)a4;
- (void)setImproveAssistiveVoiceValue:(id)a3 specifier:(id)a4;
- (void)setImproveSiriAndDictationValue:(id)a3 specifier:(id)a4;
- (void)setProblemReportingEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setShouldShareAppActivityWithAppDevelopers:(id)a3 specifier:(id)a4;
- (void)setShouldShareAppleIdImprovementAnalytics:(id)a3 specifier:(id)a4;
- (void)setShouldShareBankConnectData:(id)a3 specifier:(id)a4;
- (void)setShouldShareFitnessPlusData:(id)a3 specifier:(id)a4;
- (void)setShouldShareHandwashingData:(id)a3 specifier:(id)a4;
- (void)setShouldShareHealthData:(id)a3 specifier:(id)a4;
- (void)setShouldShareHealthRecordsData:(id)a3 specifier:(id)a4;
- (void)setShouldShareIdentityVerificationData:(id)a3 specifier:(id)a4;
- (void)setShouldShareSafetyData:(id)a3 specifier:(id)a4;
- (void)setShouldShareWheelchairData:(id)a3 specifier:(id)a4;
- (void)setShouldShareiCloudAnalytics:(id)a3 specifier:(id)a4;
- (void)showAboutAnalyticsSheet;
- (void)showAboutAppAnalyticsSheet;
- (void)showAboutAppleIdImprovementAnalyticsSheet;
- (void)showAboutBankConnectDataSheet;
- (void)showAboutFitnessPlusDataSheet;
- (void)showAboutHandwashingDataSheet;
- (void)showAboutHealthDataSheet;
- (void)showAboutHealthRecordsDataSheet;
- (void)showAboutIdentityVerificationDataSheet;
- (void)showAboutImproveAssistiveVoiceFeatures;
- (void)showAboutImproveSiriAnalyticsSheet;
- (void)showAboutSafetyDataSheet;
- (void)showAboutSheetWithTitle:(id)a3 content:(id)a4;
- (void)showAboutWheelchairDataSheet;
- (void)showAboutiCloudAnalyticsSheet;
- (void)showImproveARLocationAccuracyDataSheet;
- (void)snapshot:(id)a3;
- (void)updateAppleIdImprovementForSpecifierID:(id)a3;
- (void)updateHealthRecordsPreferenceForSpecifierID:(id)a3;
- (void)updateiCloudAnalyticsForSpecifierID:(id)a3;
@end

@implementation PUIProblemReportingController

- (id)loadPrivacySettingsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v4 = v3 = @"/System/Library/PrivateFrameworks/Settings/PrivacySettingsUI.framework";
  v5 = [v2 bundleWithPath:v4];

  [v5 load];

  return v5;
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = PUI_BundleForPrivacySettingsFramework();
  v4 = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"PROBLEM_REPORTING" table:@"Privacy" locale:v6 bundleURL:v4];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:v9 bundleURL:v4];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/PROBLEM_REPORTING"];
  [(PUIProblemReportingController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.analytics-and-improvements" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)checkDiagnosticsSessionAvailability
{
  v15 = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  if (!iOSDiagnosticsLibraryCore_frameworkLibrary)
  {
    v12[1] = MEMORY[0x277D85DD0];
    v12[2] = 3221225472;
    v12[3] = __iOSDiagnosticsLibraryCore_block_invoke;
    v12[4] = &__block_descriptor_40_e5_v8__0l;
    v12[5] = v12;
    v13 = xmmword_279BA1658;
    v14 = 0;
    iOSDiagnosticsLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v12[0];
    if (iOSDiagnosticsLibraryCore_frameworkLibrary)
    {
      if (!v12[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
  }

LABEL_4:
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.DiagnosticsSessionAvailibility"];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287755D40];
  [v4 setRemoteObjectInterface:v5];

  [v4 resume];
  v6 = [v4 remoteObjectProxy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__PUIProblemReportingController_checkDiagnosticsSessionAvailability__block_invoke;
  v9[3] = &unk_279BA10D8;
  v10 = v4;
  v11 = self;
  v7 = v4;
  [v6 checkAvailabilityWithReply:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __68__PUIProblemReportingController_checkDiagnosticsSessionAvailability__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__PUIProblemReportingController_checkDiagnosticsSessionAvailability__block_invoke_2;
    v6[3] = &unk_279BA10B0;
    v4 = v3;
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __68__PUIProblemReportingController_checkDiagnosticsSessionAvailability__block_invoke_2(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  if ([*(a1 + 32) isEqualToString:@"ENHANCED_LOGGING_STATE"])
  {
    v3 = @"ENHANCED_LOGGING_SESSION_EXPLANATION";
  }

  else
  {
    v3 = @"START_DIAGNOSTICS_WITH_APPLE_SUPPORT_EXPLANATION";
  }

  v4 = PUI_LocalizedStringForProblemReporting(v3);
  [v2 setProperty:v4 forKey:*MEMORY[0x277D3FF88]];

  v5 = MEMORY[0x277D3F9C8];
  v6 = PUI_LocalizedStringForProblemReporting(@"START_DIAGNOSTICS_WITH_APPLE_SUPPORT");
  v7 = [v5 preferenceSpecifierNamed:v6 target:*(a1 + 40) set:0 get:0 detail:0 cell:13 edit:0];

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
  if ([*(a1 + 32) isEqualToString:@"ENHANCED_LOGGING_STATE"])
  {
    v8 = @"VIEW_ENHANCED_LOGGING_SESSION";
  }

  else
  {
    if (![*(a1 + 32) isEqualToString:@"IN_CURRENT_SESSION"])
    {
      goto LABEL_9;
    }

    v8 = @"RESUME_DIAGNOSTICS_WITH_APPLE_SUPPORT";
  }

  v9 = PUI_LocalizedStringForProblemReporting(v8);
  [v7 setName:v9];

LABEL_9:
  [v7 setIdentifier:@"START_DIAGNOSTICS_WITH_APPLE_SUPPORT"];
  if ([*(a1 + 40) indexOfSpecifierID:@"START_DIAGNOSTICS_WITH_APPLE_SUPPORT"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(a1 + 40);
    v13[0] = v2;
    v13[1] = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    [v10 insertContiguousSpecifiers:v11 atEndOfGroup:0 animated:1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)launchDiagnosticsSession:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"diagnostics://"];
  v6 = [v3 URLWithString:v4];

  v5 = [MEMORY[0x277D75128] sharedApplication];
  [v5 openURL:v6 options:MEMORY[0x277CBEC10] completionHandler:0];
}

+ (BOOL)isProblemReportingEnabled
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25E58]] == 1;

  return v3;
}

- (void)showAboutSheetWithTitle:(id)a3 content:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [[ProblemReportingAboutController alloc] initWithTitle:v7 content:v6];

  v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v11];
  [v8 setModalPresentationStyle:2];
  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissAboutSheet_];
  v10 = [(ProblemReportingAboutController *)v11 navigationItem];
  [v10 setRightBarButtonItem:v9];

  [(PUIProblemReportingController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)showAboutAnalyticsSheet
{
  v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.analyticsdevice"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showAboutIdentityVerificationDataSheet
{
  v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.identity"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showAboutImproveSiriAnalyticsSheet
{
  OBPrivacyPresenterClass = getOBPrivacyPresenterClass();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getOBPrivacyImproveSiriIdentifierSymbolLoc_ptr;
  v12 = getOBPrivacyImproveSiriIdentifierSymbolLoc_ptr;
  if (!getOBPrivacyImproveSiriIdentifierSymbolLoc_ptr)
  {
    v5 = OnBoardingKitLibrary();
    v10[3] = dlsym(v5, "OBPrivacyImproveSiriIdentifier");
    getOBPrivacyImproveSiriIdentifierSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v8 = v7;
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = [OBPrivacyPresenterClass presenterForPrivacySplashWithIdentifier:*v4];
  [v6 setPresentingViewController:self];
  [v6 present];
}

- (void)showAboutImproveAssistiveVoiceFeatures
{
  v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improveastvoice"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showAboutiCloudAnalyticsSheet
{
  v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.analyticsicloud"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showAboutAppleIdImprovementAnalyticsSheet
{
  if (_os_feature_enabled_impl())
  {
    v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improveaccountsecurity"];
    [v3 setPresentingViewController:self];
    [v3 present];
  }
}

- (void)showAboutAppAnalyticsSheet
{
  v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.analyticsapp"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showAboutFitnessPlusDataSheet
{
  OBPrivacyPresenterClass = getOBPrivacyPresenterClass();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_ptr_0;
  v12 = getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_ptr_0;
  if (!getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_ptr_0)
  {
    v5 = OnBoardingKitLibrary();
    v10[3] = dlsym(v5, "OBPrivacyImproveFitnessPlusIdentifier");
    getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_ptr_0 = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v8 = v7;
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v6 = [OBPrivacyPresenterClass presenterForPrivacySplashWithIdentifier:*v4];
  [v6 setPresentingViewController:self];
  [v6 present];
}

- (void)showAboutHealthDataSheet
{
  v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improvehealth"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showAboutHealthRecordsDataSheet
{
  v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improvehealthrecords"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showAboutWheelchairDataSheet
{
  v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.wheelchairmode"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showAboutHandwashingDataSheet
{
  v3 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improveHandwashing"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)showAboutSafetyDataSheet
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
  {
    v5 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improveSafetyFeatures"];
    [v5 setPresentingViewController:self];
    [v5 present];
  }
}

- (void)showImproveARLocationAccuracyDataSheet
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v3 = getSFSafariViewControllerClass_softClass_0;
  v21 = getSFSafariViewControllerClass_softClass_0;
  if (!getSFSafariViewControllerClass_softClass_0)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getSFSafariViewControllerClass_block_invoke_0;
    v16 = &unk_279BA0D08;
    v17 = &v18;
    __getSFSafariViewControllerClass_block_invoke_0(&v13);
    v3 = v19[3];
  }

  v4 = v3;
  _Block_object_dispose(&v18, 8);
  v5 = [v3 alloc];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v6 = getGEOVisualLocalizationCrowdsourcingLearnMoreURLSymbolLoc_ptr;
  v21 = getGEOVisualLocalizationCrowdsourcingLearnMoreURLSymbolLoc_ptr;
  if (!getGEOVisualLocalizationCrowdsourcingLearnMoreURLSymbolLoc_ptr)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getGEOVisualLocalizationCrowdsourcingLearnMoreURLSymbolLoc_block_invoke;
    v16 = &unk_279BA0D08;
    v17 = &v18;
    v7 = GeoServicesLibrary();
    v8 = dlsym(v7, "GEOVisualLocalizationCrowdsourcingLearnMoreURL");
    *(v17[1] + 24) = v8;
    getGEOVisualLocalizationCrowdsourcingLearnMoreURLSymbolLoc_ptr = *(v17[1] + 24);
    v6 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v6)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v12 = v11;
    _Block_object_dispose(&v18, 8);
    _Unwind_Resume(v12);
  }

  v9 = v6();
  v10 = [v5 initWithURL:v9];

  [v10 setModalPresentationStyle:2];
  [(PUIProblemReportingController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)setBoolValue:(BOOL)a3 forIdMSConfigKey:(id)a4 completion:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CB8F48] defaultStore];
  v10 = [v9 aa_primaryAppleAccount];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 aa_altDSID];
    v13 = @"0";
    if (v6)
    {
      v13 = @"1";
    }

    v14 = v13;
    v15 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__PUIProblemReportingController_setBoolValue_forIdMSConfigKey_completion___block_invoke;
    v16[3] = &unk_279BA1100;
    v17 = v7;
    v18 = v8;
    [v15 setConfigurationInfo:v14 forIdentifier:v17 forAltDSID:v12 completion:v16];
  }
}

void __74__PUIProblemReportingController_setBoolValue_forIdMSConfigKey_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 sf_isInternalInstall];

    v8 = _PUILoggingFacility();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_11;
      }

      LOWORD(v16) = 0;
      v10 = "Successfully wrote analytics choice to IdMS";
      v11 = v8;
      v12 = 2;
      goto LABEL_10;
    }

    if (!v9)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 32);
    v16 = 138412290;
    v17 = v13;
    v10 = "Successfully wrote analytics choice to IdMS for key %@";
  }

  else
  {
    v8 = _PUILoggingFacility();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = 138412290;
    v17 = v5;
    v10 = "Failed to write analytics choice to IdMS, error: %@";
  }

  v11 = v8;
  v12 = 12;
LABEL_10:
  _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
LABEL_11:

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, a2, v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateAppleIdImprovementForSpecifierID:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [MEMORY[0x277CB8F48] defaultStore];
    v6 = [v5 aa_primaryAppleAccount];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 aa_altDSID];
      v9 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
      objc_initWeak(&location, self);
      v16[0] = @"com.apple.idms.config.privacy.icloud.data";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __72__PUIProblemReportingController_updateAppleIdImprovementForSpecifierID___block_invoke;
      v12[3] = &unk_279BA1150;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      [v9 configurationInfoWithIdentifiers:v10 forAltDSID:v8 completion:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __72__PUIProblemReportingController_updateAppleIdImprovementForSpecifierID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__PUIProblemReportingController_updateAppleIdImprovementForSpecifierID___block_invoke_2;
  v9[3] = &unk_279BA1128;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __72__PUIProblemReportingController_updateAppleIdImprovementForSpecifierID___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained specifierForID:*(a1 + 32)];

  if (*(a1 + 40) || (v5 = *(a1 + 48)) == 0)
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__PUIProblemReportingController_updateAppleIdImprovementForSpecifierID___block_invoke_2_cold_1(v4);
    }
  }

  else
  {
    v4 = [v5 objectForKeyedSubscript:@"com.apple.idms.config.privacy.appleaccount.access"];
    v6 = _PUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "From idms: AppleId Improvement Analytics = %@", &v10, 0xCu);
    }

    v7 = objc_loadWeakRetained((a1 + 56));
    [v7 setPreferenceValue:v4 specifier:v3];
  }

  v8 = objc_loadWeakRetained((a1 + 56));
  [v8 reloadSpecifier:v3 animated:1];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateiCloudAnalyticsForSpecifierID:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CB8F48] defaultStore];
  v6 = [v5 aa_primaryAppleAccount];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 aa_altDSID];
    v9 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
    objc_initWeak(&location, self);
    v16[0] = @"com.apple.idms.config.privacy.icloud.data";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__PUIProblemReportingController_updateiCloudAnalyticsForSpecifierID___block_invoke;
    v12[3] = &unk_279BA1150;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    [v9 configurationInfoWithIdentifiers:v10 forAltDSID:v8 completion:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __69__PUIProblemReportingController_updateiCloudAnalyticsForSpecifierID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__PUIProblemReportingController_updateiCloudAnalyticsForSpecifierID___block_invoke_2;
  v9[3] = &unk_279BA1128;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __69__PUIProblemReportingController_updateiCloudAnalyticsForSpecifierID___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained specifierForID:*(a1 + 32)];

  if (*(a1 + 40) || (v5 = *(a1 + 48)) == 0)
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __69__PUIProblemReportingController_updateiCloudAnalyticsForSpecifierID___block_invoke_2_cold_1(v4);
    }
  }

  else
  {
    v4 = [v5 objectForKeyedSubscript:@"com.apple.idms.config.privacy.icloud.data"];
    v6 = _PUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "From idms: iCloud Analytics = %@", &v10, 0xCu);
    }

    v7 = objc_loadWeakRetained((a1 + 56));
    [v7 setPreferenceValue:v4 specifier:v3];
  }

  v8 = objc_loadWeakRetained((a1 + 56));
  [v8 reloadSpecifier:v3 animated:1];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)problemReportingEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = +[PUIProblemReportingController isProblemReportingEnabled];

  return [v3 numberWithBool:v4];
}

- (void)setProblemReportingEnabled:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  v9 = [MEMORY[0x277D262A0] sharedConnection];
  v10 = [v9 effectiveBoolValueForSetting:*MEMORY[0x277D25E58]];

  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 sf_isInternalInstall];

  if (v12)
  {
    v13 = v10 == 1;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 || (keyExistsAndHasValidFormat = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MCInternalOverrideDiagnosticEnforcement", *MEMORY[0x277CBF008], &keyExistsAndHasValidFormat), (v8 & 1) != 0) || AppBooleanValue)
  {
    v14 = [getNRPairedDeviceRegistryClass() sharedInstance];
    v15 = [v14 isPaired];

    if (v15)
    {
      if (v8)
      {
        v16 = @"DIAGNOSTICS_MIRRORED_ALERT_TITLE_ON";
      }

      else
      {
        v16 = @"DIAGNOSTICS_MIRRORED_ALERT_TITLE_OFF";
      }

      v17 = PUI_LocalizedStringForProblemReporting(v16);
      v18 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:0 preferredStyle:1];
      v19 = MEMORY[0x277D750F8];
      v20 = PUI_LocalizedStringForProblemReporting(@"DIAGNOSTICS_MIRRORED_ALERT_CANCEL");
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __73__PUIProblemReportingController_setProblemReportingEnabled_forSpecifier___block_invoke_2;
      v34[3] = &unk_279BA1178;
      v34[4] = self;
      v35 = v7;
      v21 = [v19 actionWithTitle:v20 style:1 handler:v34];
      [v18 addAction:v21];

      v22 = MEMORY[0x277D750F8];
      v23 = PUI_LocalizedStringForProblemReporting(@"DIAGNOSTICS_MIRRORED_ALERT_OK");
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __73__PUIProblemReportingController_setProblemReportingEnabled_forSpecifier___block_invoke_3;
      v32[3] = &unk_279BA0C68;
      v32[4] = self;
      v33 = v8;
      v24 = [v22 actionWithTitle:v23 style:0 handler:v32];
      [v18 addAction:v24];

      [(PUIProblemReportingController *)self presentViewController:v18 animated:1 completion:0];
    }

    else
    {
      [(PUIProblemReportingController *)self setProblemReportingEnabled:v8];
      if (PUIIsUserParcElisabethEligible() && v8)
      {
        [(PUIProblemReportingController *)self setShouldShareAppActivityWithAppDevelopers:v6 specifier:v7];
      }
    }
  }

  else
  {
    v26 = MEMORY[0x277D75110];
    v27 = PUI_LocalizedStringForProblemReporting(@"INTERNAL_DIAGNOSTICS_REQUIRED");
    v28 = [v26 alertControllerWithTitle:v27 message:0 preferredStyle:1];

    v29 = MEMORY[0x277D750F8];
    v30 = PUI_LocalizedStringForProblemReporting(@"INTERNAL_DIAGNOSTICS_REQUIRED_CONFIRMATION");
    v31 = [v29 actionWithTitle:v30 style:0 handler:0];
    [v28 addAction:v31];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __73__PUIProblemReportingController_setProblemReportingEnabled_forSpecifier___block_invoke;
    v36[3] = &unk_279BA10B0;
    v36[4] = self;
    v37 = v7;
    [(PUIProblemReportingController *)self presentViewController:v28 animated:1 completion:v36];
  }
}

uint64_t __73__PUIProblemReportingController_setProblemReportingEnabled_forSpecifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setProblemReportingEnabled:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

void __60__PUIProblemReportingController_setProblemReportingEnabled___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([*(*(a1 + 32) + *MEMORY[0x277D3FC48]) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) insertSpecifier:v5 atIndex:*(a1 + 40) + a3 animated:1];
  }
}

- (void)snapshot:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v6 = [(PUIProblemReportingController *)self spinnerSpecifier];
  v17 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [(PUIProblemReportingController *)self replaceContiguousSpecifiers:v5 withSpecifiers:v7 animated:1];

  v16[0] = 0;
  if (!DiskSpaceDiagnosticsLibraryCore_frameworkLibrary)
  {
    v16[1] = MEMORY[0x277D85DD0];
    v16[2] = 3221225472;
    v16[3] = __DiskSpaceDiagnosticsLibraryCore_block_invoke;
    v16[4] = &__block_descriptor_40_e5_v8__0l;
    v16[5] = v16;
    v19 = xmmword_279BA16E8;
    v20 = 0;
    DiskSpaceDiagnosticsLibraryCore_frameworkLibrary = _sl_dlopen();
    v8 = v16[0];
    if (DiskSpaceDiagnosticsLibraryCore_frameworkLibrary)
    {
      if (!v16[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v14 = v16[0];
      v8 = abort_report_np();
    }

    free(v8);
  }

LABEL_4:
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:{&unk_287755DA0, v14}];
  v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.FilesystemMetadataSnapshotService"];
  [v10 setRemoteObjectInterface:v9];
  [v10 resume];
  v11 = [v10 remoteObjectProxy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__PUIProblemReportingController_snapshot___block_invoke;
  v15[3] = &unk_279BA11F0;
  v15[4] = self;
  v12 = [v11 generateFilesystemMetadataSnapshotWithOptions:0 reply:v15];

  v13 = *MEMORY[0x277D85DE8];
}

void __42__PUIProblemReportingController_snapshot___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(&cfstr_FailedToSnapsh.isa, a3);
    v4 = @"FILESYSTEM_METADATA_SNAPSHOT_FAIL_MESSAGE";
    v5 = @"FILESYSTEM_METADATA_SNAPSHOT_FAIL_TITLE";
  }

  else
  {
    v4 = @"FILESYSTEM_METADATA_SNAPSHOT_SUCCESS_MESSAGE";
    v5 = @"FILESYSTEM_METADATA_SNAPSHOT_SUCCESS_TITLE";
  }

  v6 = PUI_LocalizedStringForProblemReporting(v5);
  v7 = PUI_LocalizedStringForProblemReporting(v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PUIProblemReportingController_snapshot___block_invoke_2;
  block[3] = &unk_279BA11C8;
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 32);
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__PUIProblemReportingController_snapshot___block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v3 = MEMORY[0x277D750F8];
  v4 = PUI_LocalizedStringForProblemReporting(@"OK");
  v5 = [v3 actionWithTitle:v4 style:0 handler:0];
  [v2 addAction:v5];

  [*(a1 + 48) presentViewController:v2 animated:1 completion:0];
  v6 = *(a1 + 48);
  v7 = [v6 spinnerSpecifier];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v9 = [*(a1 + 48) filesystemMetadataSnapshotSpecifier];
  v12 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [v6 replaceContiguousSpecifiers:v8 withSpecifiers:v10 animated:1];

  v11 = *MEMORY[0x277D85DE8];
}

- (NSArray)baseSpecifiers
{
  baseSpecifiers = self->_baseSpecifiers;
  if (baseSpecifiers)
  {
    goto LABEL_21;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  if (PUIIsUserParcElisabethEligible())
  {
    v6 = @"PROBLEM_REPORTING_EXPLANATION_ALT";
  }

  else
  {
    v6 = @"PROBLEM_REPORTING_EXPLANATION";
  }

  v7 = PUI_LocalizedStringForProblemReporting(v6);
  v8 = PUI_LocalizedStringForProblemReporting(@"ABOUT_DIAGNOSTICS_LINK");
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v8];
  [v5 setIdentifier:@"PROBLEM_REPORTING_GROUP"];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v5 setProperty:v11 forKey:*MEMORY[0x277D3FF48]];

  [v5 setProperty:v9 forKey:*MEMORY[0x277D3FF70]];
  v33 = v9;
  v34 = v8;
  v36.location = [v9 rangeOfString:v8];
  v12 = NSStringFromRange(v36);
  [v5 setProperty:v12 forKey:*MEMORY[0x277D3FF58]];

  v13 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v5 setProperty:v13 forKey:*MEMORY[0x277D3FF68]];

  [v5 setProperty:@"showAboutAnalyticsSheet" forKey:*MEMORY[0x277D3FF50]];
  [(NSArray *)v4 addObject:v5];
  v14 = [getNRPairedDeviceRegistryClass() sharedInstance];
  LODWORD(v9) = [v14 isPaired];

  if (v9)
  {
    v15 = @"SHARE_ANALYTICS_WATCH_IPHONE";
  }

  else
  {
    v15 = @"SHARE_ANALYTICS";
  }

  v16 = PUI_LocalizedStringForProblemReporting(v15);
  v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v16 target:self set:sel_setProblemReportingEnabled_forSpecifier_ get:sel_problemReportingEnabled_ detail:0 cell:6 edit:0];
  [(NSArray *)v4 addObject:v17];
  v18 = [MEMORY[0x277D262A0] sharedConnection];
  if ([v18 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25E58]])
  {
    v19 = 0;
  }

  else
  {
    v20 = [MEMORY[0x277D262A0] sharedConnection];
    v19 = [v20 isDiagnosticSubmissionModificationAllowed];
  }

  v21 = [MEMORY[0x277D75418] currentDevice];
  if (([v21 sf_isInternalInstall] & 1) == 0 && !v19)
  {

LABEL_15:
    v23 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v17 setProperty:v23 forKey:*MEMORY[0x277D3FF38]];

    goto LABEL_16;
  }

  v22 = PSIsInEDUMode();

  if (v22)
  {
    goto LABEL_15;
  }

LABEL_16:
  if ((PSIsRunningInAssistant() & 1) == 0)
  {
    v32 = v7;
    v24 = PUI_LocalizedStringForProblemReporting(@"DIAGNOSTIC_USAGE_DATA");
    v25 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v24 target:0 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v25 setIdentifier:@"DIAGNOSTIC_USAGE_DATA"];
    [v25 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D400F8]];
    [(NSArray *)v4 addObject:v25];
    v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v27 = [v26 BOOLForKey:@"FilesystemMetadataSnapshotEnabled"];

    if (v27)
    {
      v28 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      [(NSArray *)v4 addObject:v28];
      v29 = [(PUIProblemReportingController *)self filesystemMetadataSnapshotSpecifier];
      [(NSArray *)v4 addObject:v29];
    }

    v7 = v32;
  }

  v30 = self->_baseSpecifiers;
  self->_baseSpecifiers = v4;

  baseSpecifiers = self->_baseSpecifiers;
LABEL_21:

  return baseSpecifiers;
}

- (PSSpecifier)spinnerSpecifier
{
  spinnerSpecifier = self->_spinnerSpecifier;
  if (!spinnerSpecifier)
  {
    v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_28771E540 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v5 = self->_spinnerSpecifier;
    self->_spinnerSpecifier = v4;

    [(PSSpecifier *)self->_spinnerSpecifier setProperty:@"SPINNER_CELL" forKey:*MEMORY[0x277D3FFB8]];
    spinnerSpecifier = self->_spinnerSpecifier;
  }

  return spinnerSpecifier;
}

- (PSSpecifier)filesystemMetadataSnapshotSpecifier
{
  filesystemMetadataSnapshotSpecifier = self->_filesystemMetadataSnapshotSpecifier;
  if (!filesystemMetadataSnapshotSpecifier)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = PUI_LocalizedStringForProblemReporting(@"FILESYSTEM_METADATA_SNAPSHOT");
    v6 = [v4 preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v7 = self->_filesystemMetadataSnapshotSpecifier;
    self->_filesystemMetadataSnapshotSpecifier = v6;

    [(PSSpecifier *)self->_filesystemMetadataSnapshotSpecifier setButtonAction:sel_snapshot_];
    filesystemMetadataSnapshotSpecifier = self->_filesystemMetadataSnapshotSpecifier;
  }

  return filesystemMetadataSnapshotSpecifier;
}

- (NSArray)appActivitySpecifiers
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (self->_appActivitySpecifiers || (PUIIsUserParcElisabethEligible() & 1) != 0)
  {
    goto LABEL_12;
  }

  if ([(PUIProblemReportingController *)self isAppAndAccessoryAnalyticsAllowedFeatureEnabled])
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    if ([v3 hasAppAndAccessoryAnalyticsAllowedBeenSet])
    {

LABEL_8:
      v6 = @"ABOUT_APP_AND_ACCESSORY_ANALYTICS_LINK";
      v7 = @"APP_AND_ACCESSORY_ANALYTICS_EXPLANATION";
      v8 = @"SHARE_WITH_DEVELOPERS";
      goto LABEL_9;
    }

    v4 = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [v4 isAppAnalyticsAllowed];

    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v6 = @"ABOUT_APP_ANALYTICS_LINK";
  v7 = @"APP_ANALYTICS_EXPLANATION";
  v8 = @"SHARE_WITH_APP_DEVELOPERS";
LABEL_9:
  v9 = PUI_LocalizedStringForProblemReporting(v8);
  v10 = PUI_LocalizedStringForProblemReporting(v7);
  v11 = PUI_LocalizedStringForProblemReporting(v6);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v11];
  v13 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APP_ACTIVITY_GROUP"];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v13 setProperty:v15 forKey:*MEMORY[0x277D3FF48]];

  [v13 setProperty:v12 forKey:*MEMORY[0x277D3FF70]];
  v28.location = [v12 rangeOfString:v11];
  v16 = NSStringFromRange(v28);
  [v13 setProperty:v16 forKey:*MEMORY[0x277D3FF58]];

  v17 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v13 setProperty:v17 forKey:*MEMORY[0x277D3FF68]];

  [v13 setProperty:@"showAboutAppAnalyticsSheet" forKey:*MEMORY[0x277D3FF50]];
  v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:sel_setShouldShareAppActivityWithAppDevelopers_specifier_ get:sel_shouldShareAppActivityWithAppDevelopers detail:0 cell:6 edit:0];
  [v18 setProperty:@"SHARE_WITH_APP_DEVELOPERS" forKey:*MEMORY[0x277D3FFB8]];
  v19 = [MEMORY[0x277D262A0] sharedConnection];
  v20 = [v19 isDiagnosticSubmissionModificationAllowed];

  if ((v20 & 1) == 0)
  {
    [v18 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  v26[0] = v13;
  v26[1] = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  appActivitySpecifiers = self->_appActivitySpecifiers;
  self->_appActivitySpecifiers = v21;

LABEL_12:
  v23 = self->_appActivitySpecifiers;
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (AFSettingsConnection)assistantSettingsConnection
{
  assistantSettingsConnection = self->_assistantSettingsConnection;
  if (!assistantSettingsConnection)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getAFSettingsConnectionClass_softClass;
    v13 = getAFSettingsConnectionClass_softClass;
    if (!getAFSettingsConnectionClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getAFSettingsConnectionClass_block_invoke;
      v9[3] = &unk_279BA0D08;
      v9[4] = &v10;
      __getAFSettingsConnectionClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_assistantSettingsConnection;
    self->_assistantSettingsConnection = v6;

    assistantSettingsConnection = self->_assistantSettingsConnection;
  }

  return assistantSettingsConnection;
}

- (id)getCurrentImproveSiriAndDictationValueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = [v5 isOnDeviceOnlyDictationForced];

  v7 = MEMORY[0x277CBEC28];
  if ((v6 & 1) == 0)
  {
    objc_initWeak(&location, self);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v8 = dispatch_semaphore_create(0);
    v9 = [(PUIProblemReportingController *)self assistantSettingsConnection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__PUIProblemReportingController_getCurrentImproveSiriAndDictationValueForSpecifier___block_invoke;
    v12[3] = &unk_279BA1218;
    objc_copyWeak(&v15, &location);
    v14 = &v16;
    v10 = v8;
    v13 = v10;
    [v9 getSiriDataSharingOptInStatusWithCompletion:v12];

    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (v17[3] == 1)
    {
      v7 = MEMORY[0x277CBEC38];
    }

    objc_destroyWeak(&v15);
    _Block_object_dispose(&v16, 8);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __84__PUIProblemReportingController_getCurrentImproveSiriAndDictationValueForSpecifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = _PUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __84__PUIProblemReportingController_getCurrentImproveSiriAndDictationValueForSpecifier___block_invoke_cold_1(a1, v5, v6);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setImproveSiriAndDictationValue:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 BOOLValue];
  v9 = [(PUIProblemReportingController *)self assistantSettingsConnection];
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__PUIProblemReportingController_setImproveSiriAndDictationValue_specifier___block_invoke;
  v12[3] = &unk_279BA1268;
  objc_copyWeak(&v14, &location);
  v11 = v6;
  v13 = v11;
  [v9 setSiriDataSharingOptInStatus:v10 propagateToHomeAccessories:0 source:7 reason:@"Privacy" completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__PUIProblemReportingController_setImproveSiriAndDictationValue_specifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PUIProblemReportingController_setImproveSiriAndDictationValue_specifier___block_invoke_2;
  block[3] = &unk_279BA1240;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __75__PUIProblemReportingController_setImproveSiriAndDictationValue_specifier___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = _PUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __75__PUIProblemReportingController_setImproveSiriAndDictationValue_specifier___block_invoke_2_cold_1(a1, v2, v3);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifierID:@"IMPROVE_SIRI"];
}

- (void)setImproveAssistiveVoiceValue:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];

  MEMORY[0x2821F01A0](v4);
}

- (id)getImproveAssistiveVoiceValueForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = _AXSAudioDonationSiriImprovementEnabled();

  return [v3 numberWithUnsignedChar:v4];
}

- (id)analyticsSpecifiersIncludingIndependentSpecifiers:(BOOL)a3 includeDependentSpecifiers:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  if (MGGetBoolAnswer())
  {
    v8 = MGGetBoolAnswer();
  }

  else
  {
    v8 = 0;
  }

  v9 = MGGetBoolAnswer();
  if (v5)
  {
    v10 = [(PUIProblemReportingController *)self iCloudSpecifiers];
    [v7 addObjectsFromArray:v10];

    if (_os_feature_enabled_impl())
    {
      v11 = [(PUIProblemReportingController *)self appleIdImprovementSpecifiers];
      [v7 addObjectsFromArray:v11];
    }
  }

  if (v4)
  {
    v12 = [MEMORY[0x277D262A0] sharedConnection];
    v13 = [v12 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D00]];

    if ((v13 & 1) == 0 && (PUIIsUserParcElisabethEligible() & 1) == 0)
    {
      v14 = [(PUIProblemReportingController *)self appActivitySpecifiers];
      [v7 addObjectsFromArray:v14];
    }

    v15 = [(PUIProblemReportingController *)self automatedFeedbackSpecifiers];
    [v7 addObjectsFromArray:v15];
  }

  if (v5)
  {
    v16 = [(PUIProblemReportingController *)self bankConnectDataSpecifiers];
    [v7 addObjectsFromArray:v16];

    v17 = [(PUIProblemReportingController *)self fitnessPlusDataSpecifiers];
    [v7 addObjectsFromArray:v17];
  }

  v18 = v4 & v8;
  if ((v4 & v8) == 1)
  {
    v19 = [(PUIProblemReportingController *)self handwashingDataSpecifiers];
    [v7 addObjectsFromArray:v19];
  }

  if ((v4 & v9) == 1)
  {
    v20 = [(PUIProblemReportingController *)self healthDataSpecifiers];
    [v7 addObjectsFromArray:v20];
  }

  if (v4)
  {
    v21 = [(PUIProblemReportingController *)self identityVerificationDataSpecifiers];
    [v7 addObjectsFromArray:v21];

    v22 = [MEMORY[0x277D75418] currentDevice];
    v23 = [v22 userInterfaceIdiom];

    if (v23 != 1)
    {
      v24 = [(PUIProblemReportingController *)self safetyDataSpecifiers];
      [v7 addObjectsFromArray:v24];
    }
  }

  if (v5)
  {
    v25 = [(PUIProblemReportingController *)self improveSiriSpecifiers];
    [v7 addObjectsFromArray:v25];

    v26 = [(PUIProblemReportingController *)self improveAssistiveVoiceSpecifiers];
    [v7 addObjectsFromArray:v26];
  }

  if (v18)
  {
    v27 = [(PUIProblemReportingController *)self wheelchairDataSpecifiers];
    [v7 addObjectsFromArray:v27];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v28 = getGEOVisualLocalizationCrowdsourcingIsSupportedSymbolLoc_ptr;
  v37 = getGEOVisualLocalizationCrowdsourcingIsSupportedSymbolLoc_ptr;
  if (!getGEOVisualLocalizationCrowdsourcingIsSupportedSymbolLoc_ptr)
  {
    v29 = GeoServicesLibrary();
    v35[3] = dlsym(v29, "GEOVisualLocalizationCrowdsourcingIsSupported");
    getGEOVisualLocalizationCrowdsourcingIsSupportedSymbolLoc_ptr = v35[3];
    v28 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v28)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v33 = v32;
    _Block_object_dispose(&v34, 8);
    _Unwind_Resume(v33);
  }

  if (v28())
  {
    v30 = [(PUIProblemReportingController *)self improveARLocationAccuracySpecifiers];
    [v7 addObjectsFromArray:v30];
  }

  return v7;
}

- (id)shouldShareiCloudAnalytics:(id)a3
{
  v3 = [(PUIProblemReportingController *)self readPreferenceValue:a3];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "BOOLValue")}];

  return v4;
}

- (void)setShouldShareiCloudAnalytics:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [v6 BOOLValue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__PUIProblemReportingController_setShouldShareiCloudAnalytics_specifier___block_invoke;
  v11[3] = &unk_279BA1290;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [(PUIProblemReportingController *)self setBoolValue:v8 forIdMSConfigKey:@"com.apple.idms.config.privacy.icloud.data" completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __73__PUIProblemReportingController_setShouldShareiCloudAnalytics_specifier___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained setPreferenceValue:*(a1 + 32) specifier:*(a1 + 40)];
  }

  else
  {
    [WeakRetained reloadSpecifier:*(a1 + 40) animated:1];
  }
}

- (BOOL)shouldShowiCloudSpecifiersForAccount:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 objectForKey:@"shouldShowiCloudSpecifiers"];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  if (v4)
  {
    v8 = [v4 aa_altDSID];
    getAKAppleIDAuthenticationControllerClass();
    v9 = objc_opt_new();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__PUIProblemReportingController_shouldShowiCloudSpecifiersForAccount___block_invoke;
    v11[3] = &unk_279BA12B8;
    v13 = self;
    v14 = v16;
    v15 = v7;
    v12 = @"shouldShowiCloudSpecifiers";
    [v9 fetchUserInformationForAltDSID:v8 completion:v11];
  }

  _Block_object_dispose(v16, 8);

  return v7;
}

void __70__PUIProblemReportingController_shouldShowiCloudSpecifiersForAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v7 = getAKAuthenticationSecurityLevelKeySymbolLoc_ptr;
  v34 = getAKAuthenticationSecurityLevelKeySymbolLoc_ptr;
  if (!getAKAuthenticationSecurityLevelKeySymbolLoc_ptr)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __getAKAuthenticationSecurityLevelKeySymbolLoc_block_invoke;
    v29 = &unk_279BA0D08;
    v30 = &v31;
    v8 = AuthKitLibrary_0();
    v32[3] = dlsym(v8, "AKAuthenticationSecurityLevelKey");
    getAKAuthenticationSecurityLevelKeySymbolLoc_ptr = *(v30[1] + 24);
    v7 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v7)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
LABEL_22:
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    goto LABEL_23;
  }

  v9 = [v5 objectForKey:*v7];
  v10 = [v9 integerValue];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v11 = getAKAuthenticationIsUnderageKeySymbolLoc_ptr;
  v34 = getAKAuthenticationIsUnderageKeySymbolLoc_ptr;
  if (!getAKAuthenticationIsUnderageKeySymbolLoc_ptr)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __getAKAuthenticationIsUnderageKeySymbolLoc_block_invoke;
    v29 = &unk_279BA0D08;
    v30 = &v31;
    v12 = AuthKitLibrary_0();
    v32[3] = dlsym(v12, "AKAuthenticationIsUnderageKey");
    getAKAuthenticationIsUnderageKeySymbolLoc_ptr = *(v30[1] + 24);
    v11 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v11)
  {
    goto LABEL_22;
  }

  v13 = [v5 objectForKey:*v11];
  v14 = [v13 BOOLValue];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v15 = getAKAuthenticationIsLegacyStudentKeySymbolLoc_ptr;
  v34 = getAKAuthenticationIsLegacyStudentKeySymbolLoc_ptr;
  if (!getAKAuthenticationIsLegacyStudentKeySymbolLoc_ptr)
  {
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __getAKAuthenticationIsLegacyStudentKeySymbolLoc_block_invoke;
    v29 = &unk_279BA0D08;
    v30 = &v31;
    v16 = AuthKitLibrary_0();
    v32[3] = dlsym(v16, "AKAuthenticationIsLegacyStudentKey");
    getAKAuthenticationIsLegacyStudentKeySymbolLoc_ptr = *(v30[1] + 24);
    v15 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v15)
  {
LABEL_23:
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v24 = v23;
    _Block_object_dispose(&v31, 8);
    _Unwind_Resume(v24);
  }

  v17 = v10 == 5;
  v18 = [v5 objectForKey:*v15];
  v19 = [v18 BOOLValue];

  v20 = 0;
  if (((v17 | v14) & 1) == 0 && (v19 & 1) == 0)
  {
    if (v5)
    {
      v21 = v6 == 0;
    }

    else
    {
      v21 = 0;
    }

    v20 = v21;
  }

  *(*(*(a1 + 48) + 8) + 24) = v20;
  v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v22 setBool:*(*(*(a1 + 48) + 8) + 24) forKey:*(a1 + 32)];

  if (*(*(*(a1 + 48) + 8) + 24) != *(a1 + 56))
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__PUIProblemReportingController_shouldShowiCloudSpecifiersForAccount___block_invoke_2;
    v25[3] = &unk_279BA0B28;
    v25[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v25);
  }
}

- (void)setShouldShareAppleIdImprovementAnalytics:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    objc_initWeak(&location, self);
    v8 = [v6 BOOLValue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __85__PUIProblemReportingController_setShouldShareAppleIdImprovementAnalytics_specifier___block_invoke;
    v9[3] = &unk_279BA1290;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    [(PUIProblemReportingController *)self setBoolValue:v8 forIdMSConfigKey:@"com.apple.idms.config.privacy.appleaccount.access" completion:v9];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __85__PUIProblemReportingController_setShouldShareAppleIdImprovementAnalytics_specifier___block_invoke(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (a2)
  {
    [WeakRetained setPreferenceValue:*(a1 + 32) specifier:*(a1 + 40)];

    v8 = [MEMORY[0x277CB8F48] defaultStore];
    v9 = [v8 aa_primaryAppleAccount];
    if (v9)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2050000000;
      v10 = getAKAccountManagerClass_softClass_0;
      v22 = getAKAccountManagerClass_softClass_0;
      if (!getAKAccountManagerClass_softClass_0)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getAKAccountManagerClass_block_invoke_0;
        v24 = &unk_279BA0D08;
        v25 = &v19;
        __getAKAccountManagerClass_block_invoke_0(buf);
        v10 = v20[3];
      }

      v11 = v10;
      _Block_object_dispose(&v19, 8);
      v12 = [v10 sharedInstance];
      v13 = [*(a1 + 32) BOOLValue];
      v18 = 0;
      v14 = [v12 setAccountImprovementOptIn:v13 forAccount:v9 error:&v18];
      v15 = v18;

      if ((v14 & 1) == 0)
      {
        v16 = _PUILoggingFacility();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v15;
          *&buf[12] = 2112;
          *&buf[14] = @"com.apple.idms.config.privacy.appleaccount.access";
          _os_log_impl(&dword_2657FE000, v16, OS_LOG_TYPE_DEFAULT, "Error %@ saving %@ to account", buf, 0x16u);
        }
      }
    }

    else
    {
      v15 = _PUILoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.idms.config.privacy.appleaccount.access";
        _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "Primary account not available to save %@ to account", buf, 0xCu);
      }
    }
  }

  else
  {
    [WeakRetained reloadSpecifier:*(a1 + 40) animated:1];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowAppleIdImprovementSpecifiersForAccount:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v5 objectForKey:@"shouldShowAppleIdImprovementSpecifiers"];

    if (v6)
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 1;
    }

    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    if (v4)
    {
      v8 = [v4 aa_altDSID];
      getAKAppleIDAuthenticationControllerClass();
      v9 = objc_opt_new();
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __82__PUIProblemReportingController_shouldShowAppleIdImprovementSpecifiersForAccount___block_invoke;
      v11[3] = &unk_279BA12E0;
      v13 = self;
      v14 = v16;
      v15 = v7;
      v12 = @"shouldShowAppleIdImprovementSpecifiers";
      [v9 getUserInformationForAltDSID:v8 completion:v11];
    }

    _Block_object_dispose(v16, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __82__PUIProblemReportingController_shouldShowAppleIdImprovementSpecifiersForAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  *(*(*(a1 + 48) + 8) + 24) = v9;
  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v10 setBool:*(*(*(a1 + 48) + 8) + 24) forKey:*(a1 + 32)];

  if (*(*(*(a1 + 48) + 8) + 24) != *(a1 + 56))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__PUIProblemReportingController_shouldShowAppleIdImprovementSpecifiersForAccount___block_invoke_2;
    block[3] = &unk_279BA0B28;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (NSArray)improveSiriSpecifiers
{
  v21[2] = *MEMORY[0x277D85DE8];
  improveSiriSpecifiers = self->_improveSiriSpecifiers;
  if (!improveSiriSpecifiers)
  {
    v4 = PUI_LocalizedStringForProblemReporting(@"IMPROVE_SIRI_EXPLANATION");
    v5 = PUI_LocalizedStringForProblemReporting(@"ABOUT_IMPROVE_SIRI");
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, v5];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"IMPROVE_SIRI_GROUP"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF70]];
    v23.location = [v6 rangeOfString:v5];
    v10 = NSStringFromRange(v23);
    [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

    v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

    v12 = NSStringFromSelector(sel_showAboutImproveSiriAnalyticsSheet);
    [v7 setProperty:v12 forKey:*MEMORY[0x277D3FF50]];

    v13 = MEMORY[0x277D3FAD8];
    v14 = PUI_LocalizedStringForProblemReporting(@"IMPROVE_SIRI");
    v15 = [v13 preferenceSpecifierNamed:v14 target:self set:sel_setImproveSiriAndDictationValue_specifier_ get:sel_getCurrentImproveSiriAndDictationValueForSpecifier_ detail:0 cell:6 edit:0];

    [v15 setIdentifier:@"IMPROVE_SIRI"];
    v16 = [MEMORY[0x277D262A0] sharedConnection];
    LODWORD(v14) = [v16 isOnDeviceOnlyDictationForced];

    if (v14)
    {
      [v15 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    v21[0] = v7;
    v21[1] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v18 = self->_improveSiriSpecifiers;
    self->_improveSiriSpecifiers = v17;

    improveSiriSpecifiers = self->_improveSiriSpecifiers;
  }

  v19 = *MEMORY[0x277D85DE8];

  return improveSiriSpecifiers;
}

- (NSArray)improveAssistiveVoiceSpecifiers
{
  v20[2] = *MEMORY[0x277D85DE8];
  improveAssistiveVoiceSpecifiers = self->_improveAssistiveVoiceSpecifiers;
  if (!improveAssistiveVoiceSpecifiers)
  {
    v4 = PUI_LocalizedStringForProblemReporting(@"IMPROVE_ASSISTIVE_VOICE_EXPLANATION");
    v5 = PUI_LocalizedStringForProblemReporting(@"ABOUT_IMPROVE_ASSISTIVE_VOICE");
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, v5];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"IMPROVE_SIRI_GROUP"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF70]];
    v22.location = [v6 rangeOfString:v5];
    v10 = NSStringFromRange(v22);
    [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

    v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

    v12 = NSStringFromSelector(sel_showAboutImproveAssistiveVoiceFeatures);
    [v7 setProperty:v12 forKey:*MEMORY[0x277D3FF50]];

    v13 = MEMORY[0x277D3FAD8];
    v14 = PUI_LocalizedStringForProblemReporting(@"IMPROVE_ASSISTIVE_VOICE");
    v15 = [v13 preferenceSpecifierNamed:v14 target:self set:sel_setImproveAssistiveVoiceValue_specifier_ get:sel_getImproveAssistiveVoiceValueForSpecifier_ detail:0 cell:6 edit:0];

    [v15 setIdentifier:@"IMPROVE_ASSISTIVE_VOICE"];
    v20[0] = v7;
    v20[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v17 = self->_improveAssistiveVoiceSpecifiers;
    self->_improveAssistiveVoiceSpecifiers = v16;

    improveAssistiveVoiceSpecifiers = self->_improveAssistiveVoiceSpecifiers;
  }

  v18 = *MEMORY[0x277D85DE8];

  return improveAssistiveVoiceSpecifiers;
}

- (id)iCloudSpecifiers
{
  v24[2] = *MEMORY[0x277D85DE8];
  iCloudSpecifiers = self->_iCloudSpecifiers;
  if (iCloudSpecifiers)
  {
LABEL_2:
    v3 = iCloudSpecifiers;
    goto LABEL_10;
  }

  v5 = [MEMORY[0x277CB8F48] defaultStore];
  v6 = [v5 aa_primaryAppleAccount];
  if (v6 && (PSUsedByManagedAccount() & 1) == 0 && [(PUIProblemReportingController *)self shouldShowiCloudSpecifiersForAccount:v6])
  {
    v7 = PUI_LocalizedStringForProblemReporting(@"ICLOUD_ANALYTICS_EXPLANATION");
    v8 = PUI_LocalizedStringForProblemReporting(@"ABOUT_ICLOUD_ANALYTICS_LINK");
    v23 = v7;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v8];
    v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ICLOUD_GROUP"];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 setProperty:v12 forKey:*MEMORY[0x277D3FF48]];

    [v10 setProperty:v9 forKey:*MEMORY[0x277D3FF70]];
    v26.location = [v9 rangeOfString:v8];
    v13 = NSStringFromRange(v26);
    [v10 setProperty:v13 forKey:*MEMORY[0x277D3FF58]];

    v14 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v10 setProperty:v14 forKey:*MEMORY[0x277D3FF68]];

    [v10 setProperty:@"showAboutiCloudAnalyticsSheet" forKey:*MEMORY[0x277D3FF50]];
    v15 = MEMORY[0x277D3FAD8];
    v16 = PUI_LocalizedStringForProblemReporting(@"SHARE_ICLOUD_ANALYTICS");
    v17 = [v15 preferenceSpecifierNamed:v16 target:self set:sel_setShouldShareiCloudAnalytics_specifier_ get:sel_shouldShareiCloudAnalytics_ detail:0 cell:6 edit:0];

    [v17 setProperty:@"SHARE_ICLOUD_ANALYTICS" forKey:*MEMORY[0x277D3FFB8]];
    [v17 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEF0]];
    [v17 setProperty:@"com.apple.Preferences" forKey:*MEMORY[0x277D3FEF8]];
    [v17 setProperty:@"AllowiCloudAnalytics" forKey:*MEMORY[0x277D3FFF0]];
    v18 = [MEMORY[0x277D262A0] sharedConnection];
    LOBYTE(v16) = [v18 isDiagnosticSubmissionModificationAllowed];

    if ((v16 & 1) == 0)
    {
      [v17 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v24[0] = v10;
    v24[1] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v20 = self->_iCloudSpecifiers;
    self->_iCloudSpecifiers = v19;

    iCloudSpecifiers = self->_iCloudSpecifiers;
    goto LABEL_2;
  }

  v3 = 0;
LABEL_10:
  v21 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)appleIdImprovementSpecifiers
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (self->_appleIdImprovementSpecifiers || !_os_feature_enabled_impl())
  {
LABEL_9:
    v19 = self->_appleIdImprovementSpecifiers;
    goto LABEL_10;
  }

  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [v3 aa_primaryAppleAccount];
  if (v4 && (PSUsedByManagedAccount() & 1) == 0 && [(PUIProblemReportingController *)self shouldShowAppleIdImprovementSpecifiersForAccount:v4])
  {
    v5 = PUI_LocalizedStringForProblemReporting(@"APPLEID_ANALYTICS_EXPLANATION");
    v6 = PUI_LocalizedStringForProblemReporting(@"ABOUT_APPLEID_ANALYTICS_LINK");
    v22 = v5;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:v5, v6];
    v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"APPLEID_GROUP"];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 setProperty:v10 forKey:*MEMORY[0x277D3FF48]];

    [v8 setProperty:v7 forKey:*MEMORY[0x277D3FF70]];
    v25.location = [v7 rangeOfString:v6];
    v11 = NSStringFromRange(v25);
    [v8 setProperty:v11 forKey:*MEMORY[0x277D3FF58]];

    v12 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v8 setProperty:v12 forKey:*MEMORY[0x277D3FF68]];

    [v8 setProperty:@"showAboutAppleIdImprovementAnalyticsSheet" forKey:*MEMORY[0x277D3FF50]];
    v13 = MEMORY[0x277D3FAD8];
    v14 = PUI_LocalizedStringForProblemReporting(@"SHARE_APPLEID_ANALYTICS");
    v15 = [v13 preferenceSpecifierNamed:v14 target:self set:sel_setShouldShareAppleIdImprovementAnalytics_specifier_ get:sel_shouldShareAppleIdImprovementAnalytics_ detail:0 cell:6 edit:0];

    [v15 setProperty:@"SHARE_APPLEID_ANALYTICS" forKey:*MEMORY[0x277D3FFB8]];
    [v15 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEF0]];
    [v15 setProperty:@"com.apple.Preferences" forKey:*MEMORY[0x277D3FEF8]];
    [v15 setProperty:@"AllowAppleIdImprovementAnalytics" forKey:*MEMORY[0x277D3FFF0]];
    v16 = [MEMORY[0x277D262A0] sharedConnection];
    LOBYTE(v14) = [v16 isDiagnosticSubmissionModificationAllowed];

    if ((v14 & 1) == 0)
    {
      [v15 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v23[0] = v8;
    v23[1] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    appleIdImprovementSpecifiers = self->_appleIdImprovementSpecifiers;
    self->_appleIdImprovementSpecifiers = v17;

    goto LABEL_9;
  }

  v19 = 0;
LABEL_10:
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)automatedFeedbackLinkTapped
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com/legal/privacy"];
  [v3 openURL:v2 configuration:0 completionHandler:0];
}

- (id)automatedFeedbackEnabled:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd-diag"];
  v4 = [v3 valueForKey:@"autoFeedbackAssistantEnable"];

  return v4;
}

- (void)setAutomatedFeedbackEnabled:(id)a3 specifier:(id)a4
{
  v4 = MEMORY[0x277CBEBD0];
  v5 = a3;
  v7 = [[v4 alloc] initWithSuiteName:@"com.apple.symptomsd-diag"];
  v6 = [v5 BOOLValue];

  [v7 setBool:v6 forKey:@"autoFeedbackAssistantEnable"];
}

- (NSArray)fitnessPlusDataSpecifiers
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([(PUIProblemReportingController *)self shouldShowFitnessPlusSpecifiers])
  {
    fitnessPlusDataSpecifiers = self->_fitnessPlusDataSpecifiers;
    if (!fitnessPlusDataSpecifiers)
    {
      v4 = PUI_LocalizedStringForProblemReporting(@"FITNESS_PLUS_DATA_EXPLANATION");
      v5 = PUI_LocalizedStringForProblemReporting(@"FITNESS_PLUS_DATA_LINK");
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, v5];
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"FITNESS_PLUS_DATA_GROUP"];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

      [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF70]];
      v22.location = [v6 rangeOfString:v5];
      v10 = NSStringFromRange(v22);
      [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

      v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

      [v7 setProperty:@"showAboutFitnessPlusDataSheet" forKey:*MEMORY[0x277D3FF50]];
      v12 = MEMORY[0x277D3FAD8];
      v13 = PUI_LocalizedStringForProblemReporting(@"SHARE_FITNESS_PLUS_DATA");
      v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel_setShouldShareFitnessPlusData_specifier_ get:sel_shouldShareFitnessPlusDataForSpecifier_ detail:0 cell:6 edit:0];

      [v14 setProperty:@"SHARE_FITNESS_PLUS_DATA" forKey:*MEMORY[0x277D3FFB8]];
      v20[0] = v7;
      v20[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      v16 = self->_fitnessPlusDataSpecifiers;
      self->_fitnessPlusDataSpecifiers = v15;

      fitnessPlusDataSpecifiers = self->_fitnessPlusDataSpecifiers;
    }

    v17 = fitnessPlusDataSpecifiers;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (CIDVUIIdentityProofingDataSharingFlowManager)identityProofingDataSharingManager
{
  identityProofingDataSharingManager = self->_identityProofingDataSharingManager;
  if (!identityProofingDataSharingManager)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getCIDVUIIdentityProofingDataSharingFlowManagerClass_softClass;
    v13 = getCIDVUIIdentityProofingDataSharingFlowManagerClass_softClass;
    if (!getCIDVUIIdentityProofingDataSharingFlowManagerClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getCIDVUIIdentityProofingDataSharingFlowManagerClass_block_invoke;
      v9[3] = &unk_279BA0D08;
      v9[4] = &v10;
      __getCIDVUIIdentityProofingDataSharingFlowManagerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_identityProofingDataSharingManager;
    self->_identityProofingDataSharingManager = v6;

    identityProofingDataSharingManager = self->_identityProofingDataSharingManager;
  }

  return identityProofingDataSharingManager;
}

- (id)shouldShareIdentityVerificationData:(id)a3
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"shouldShareIdentityVerificationData"];

  v6 = [(PUIProblemReportingController *)self identityProofingDataSharingManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__PUIProblemReportingController_shouldShareIdentityVerificationData___block_invoke;
  v9[3] = &unk_279BA1308;
  v12 = v5;
  v10 = @"shouldShareIdentityVerificationData";
  v11 = self;
  [v6 fetchUserConsent:v9];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];

  return v7;
}

void __69__PUIProblemReportingController_shouldShareIdentityVerificationData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v6 setBool:0 forKey:*(a1 + 32)];
  }

  else if (*(a1 + 48) != (a2 == 0))
  {
    v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v7 setBool:a2 == 0 forKey:*(a1 + 32)];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__PUIProblemReportingController_shouldShareIdentityVerificationData___block_invoke_2;
    block[3] = &unk_279BA0B28;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (BOOL)shouldShowIdentityVerificationSpecifiers
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"shouldShowIdentityVerificationSpecifiers"];

  v5 = [(PUIProblemReportingController *)self identityProofingDataSharingManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__PUIProblemReportingController_shouldShowIdentityVerificationSpecifiers__block_invoke;
  v7[3] = &unk_279BA1330;
  v10 = v4;
  v8 = @"shouldShowIdentityVerificationSpecifiers";
  v9 = self;
  [v5 checkUserConsent:v7];

  return v4;
}

void __73__PUIProblemReportingController_shouldShowIdentityVerificationSpecifiers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v6 setBool:0 forKey:*(a1 + 32)];

    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "Received an error while requesting identity proofing data sharing user consent %@", buf, 0xCu);
    }
  }

  else if (*(a1 + 48) != a2)
  {
    v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v8 setBool:a2 forKey:*(a1 + 32)];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PUIProblemReportingController_shouldShowIdentityVerificationSpecifiers__block_invoke_896;
    block[3] = &unk_279BA0B28;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setShouldShareIdentityVerificationData:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PUIProblemReportingController *)self identityProofingDataSharingManager];
  v9 = [v6 BOOLValue] ^ 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__PUIProblemReportingController_setShouldShareIdentityVerificationData_specifier___block_invoke;
  v12[3] = &unk_279BA1380;
  objc_copyWeak(&v15, &location);
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [v8 didChangeUserConsent:v9 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __82__PUIProblemReportingController_setShouldShareIdentityVerificationData_specifier___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__PUIProblemReportingController_setShouldShareIdentityVerificationData_specifier___block_invoke_2;
  v5[3] = &unk_279BA1358;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v9, a1 + 6);
  v7 = a1[4];
  v8 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __82__PUIProblemReportingController_setShouldShareIdentityVerificationData_specifier___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = _PUILoggingFacility();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2657FE000, v1, OS_LOG_TYPE_DEFAULT, "Error when updating the user's consent for ID Verification data", buf, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
    [WeakRetained setPreferenceValue:v3 specifier:*(a1 + 48)];
  }
}

- (NSArray)identityVerificationDataSpecifiers
{
  v20[2] = *MEMORY[0x277D85DE8];
  if ([(PUIProblemReportingController *)self shouldShowIdentityVerificationSpecifiers])
  {
    identityVerificationDataSpecifiers = self->_identityVerificationDataSpecifiers;
    if (!identityVerificationDataSpecifiers)
    {
      v4 = PUI_LocalizedStringForProblemReporting(@"ID_VERIFICATION_DATA_EXPLANATION");
      v5 = PUI_LocalizedStringForProblemReporting(@"ID_VERIFICATION_DATA_LINK");
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, v5];
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ID_VERIFICATION_DATA_GROUP"];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

      [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF70]];
      v22.location = [v6 rangeOfString:v5];
      v10 = NSStringFromRange(v22);
      [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

      v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

      [v7 setProperty:@"showAboutIdentityVerificationDataSheet" forKey:*MEMORY[0x277D3FF50]];
      v12 = MEMORY[0x277D3FAD8];
      v13 = PUI_LocalizedStringForProblemReporting(@"ID_VERIFICATION_DATA");
      v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel_setShouldShareIdentityVerificationData_specifier_ get:sel_shouldShareIdentityVerificationData_ detail:0 cell:6 edit:0];

      [v14 setProperty:@"ID_VERIFICATION_DATA" forKey:*MEMORY[0x277D3FFB8]];
      v20[0] = v7;
      v20[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      v16 = self->_identityVerificationDataSpecifiers;
      self->_identityVerificationDataSpecifiers = v15;

      identityVerificationDataSpecifiers = self->_identityVerificationDataSpecifiers;
    }

    v17 = identityVerificationDataSpecifiers;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (NSArray)healthDataSpecifiers
{
  v20[2] = *MEMORY[0x277D85DE8];
  healthDataSpecifiers = self->_healthDataSpecifiers;
  if (!healthDataSpecifiers)
  {
    v4 = PUI_LocalizedStringForProblemReportingCinnamon(@"HEALTH_DATA_EXPLANATION_CINNAMON");
    v5 = PUI_LocalizedStringForProblemReporting(@"HEALTH_DATA_LINK");
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, v5];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEALTH_DATA_GROUP"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF70]];
    v22.location = [v6 rangeOfString:v5];
    v10 = NSStringFromRange(v22);
    [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

    v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

    [v7 setProperty:@"showAboutHealthDataSheet" forKey:*MEMORY[0x277D3FF50]];
    v12 = MEMORY[0x277D3FAD8];
    v13 = PUI_LocalizedStringForProblemReporting(@"SHARE_HEALTH_DATA");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel_setShouldShareHealthData_specifier_ get:sel_shouldShareHealthDataForSpecifier_ detail:0 cell:6 edit:0];

    [v14 setProperty:@"SHARE_HEALTH_DATA" forKey:*MEMORY[0x277D3FFB8]];
    v15 = [MEMORY[0x277D262A0] sharedConnection];
    LOBYTE(v13) = [v15 isDiagnosticSubmissionModificationAllowed];

    if ((v13 & 1) == 0)
    {
      [v14 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v20[0] = v7;
    v20[1] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v17 = self->_healthDataSpecifiers;
    self->_healthDataSpecifiers = v16;

    healthDataSpecifiers = self->_healthDataSpecifiers;
  }

  v18 = *MEMORY[0x277D85DE8];

  return healthDataSpecifiers;
}

- (void)showAboutBankConnectDataSheet
{
  v3 = [(PUIProblemReportingController *)self bankConnectAnalyticsConsentCoordinator];
  v5 = [v3 privacyBundleIdentifier];

  v4 = [getOBPrivacyPresenterClass() presenterForPrivacySplashWithIdentifier:v5];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (PUIBankConnectAnalyticsConsentCoordinator)bankConnectAnalyticsConsentCoordinator
{
  bankConnectAnalyticsConsentCoordinator = self->_bankConnectAnalyticsConsentCoordinator;
  if (!bankConnectAnalyticsConsentCoordinator)
  {
    v4 = objc_alloc_init(PUIBankConnectAnalyticsConsentCoordinator);
    v5 = self->_bankConnectAnalyticsConsentCoordinator;
    self->_bankConnectAnalyticsConsentCoordinator = v4;

    bankConnectAnalyticsConsentCoordinator = self->_bankConnectAnalyticsConsentCoordinator;
  }

  return bankConnectAnalyticsConsentCoordinator;
}

- (NSArray)bankConnectDataSpecifiers
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (!self->_bankConnectDataSpecifiers)
  {
    v3 = PUI_LocalizedStringForProblemReportingBankConnect(@"PRIVACY_OFFLINE_LAB_DATA_EXPLANATION");
    v4 = PUI_LocalizedStringForProblemReportingBankConnect(@"PRIVACY_OFFLINE_LAB_DATA_LINK");
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:v3, v4];
    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BANK_CONNECT_DATA_GROUP"];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 setProperty:v8 forKey:*MEMORY[0x277D3FF48]];

    [v6 setProperty:v5 forKey:*MEMORY[0x277D3FF70]];
    v27.location = [v5 rangeOfString:v4];
    v9 = NSStringFromRange(v27);
    [v6 setProperty:v9 forKey:*MEMORY[0x277D3FF58]];

    v10 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v6 setProperty:v10 forKey:*MEMORY[0x277D3FF68]];

    [v6 setProperty:@"showAboutBankConnectDataSheet" forKey:*MEMORY[0x277D3FF50]];
    v11 = MEMORY[0x277D3FAD8];
    v12 = PUI_LocalizedStringForProblemReportingBankConnect(@"PRIVACY_OFFLINE_LAB_DATA_SHARE");
    v13 = [v11 preferenceSpecifierNamed:v12 target:self set:sel_setShouldShareBankConnectData_specifier_ get:sel_shouldShareBankConnectDataForSpecifier_ detail:0 cell:6 edit:0];

    [v13 setProperty:@"SHARE_BANKCONNECT_OFFLINELAB_DATA" forKey:*MEMORY[0x277D3FFB8]];
    v26[0] = v6;
    v26[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    bankConnectDataSpecifiers = self->_bankConnectDataSpecifiers;
    self->_bankConnectDataSpecifiers = v14;

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PUIProblemReportingController_bankConnectDataSpecifiers__block_invoke;
    aBlock[3] = &unk_279BA13A8;
    objc_copyWeak(&v24, &location);
    v16 = _Block_copy(aBlock);
    v17 = [(PUIProblemReportingController *)self bankConnectAnalyticsConsentCoordinator];
    [v17 registerForUpdatesWithHandler:v16];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  v18 = [(PUIProblemReportingController *)self bankConnectAnalyticsConsentCoordinator];
  if ([v18 showPreference])
  {
    v19 = self->_bankConnectDataSpecifiers;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

void __58__PUIProblemReportingController_bankConnectDataSpecifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained reloadSpecifiers];
  }

  else
  {
    if (a2)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained reloadSpecifierID:@"SHARE_BANKCONNECT_OFFLINELAB_DATA" animated:1];
  }
}

- (id)shouldShareBankConnectDataForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(PUIProblemReportingController *)self bankConnectAnalyticsConsentCoordinator];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "shouldShare")}];

  return v5;
}

- (void)setShouldShareBankConnectData:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  objc_initWeak(&location, self);
  v9 = [(PUIProblemReportingController *)self bankConnectAnalyticsConsentCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__PUIProblemReportingController_setShouldShareBankConnectData_specifier___block_invoke;
  v11[3] = &unk_279BA13F8;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [v9 setAnalyticsConsent:v8 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __73__PUIProblemReportingController_setShouldShareBankConnectData_specifier___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__PUIProblemReportingController_setShouldShareBankConnectData_specifier___block_invoke_2;
  block[3] = &unk_279BA13D0;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __73__PUIProblemReportingController_setShouldShareBankConnectData_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);

    if ((v3 & 1) == 0)
    {
      v4 = MEMORY[0x277D75110];
      v5 = PUI_LocalizedStringForProblemReportingBankConnect(@"PRIVACY_OFFLINE_LAB_SYNC_ALERT_TITLE");
      v6 = PUI_LocalizedStringForProblemReportingBankConnect(@"PRIVACY_OFFLINE_LAB_SYNC_ALERT_MESSAGE");
      v7 = [v4 alertControllerWithTitle:v5 message:v6 preferredStyle:1];

      v8 = MEMORY[0x277D750F8];
      v9 = PUI_LocalizedStringForProblemReportingBankConnect(@"PRIVACY_OFFLINE_LAB_SYNC_ALERT_DEFAULT_BUTTON");
      v10 = [v8 actionWithTitle:v9 style:0 handler:0];
      [v7 addAction:v10];

      v11 = objc_loadWeakRetained((a1 + 40));
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __73__PUIProblemReportingController_setShouldShareBankConnectData_specifier___block_invoke_3;
      v12[3] = &unk_279BA1060;
      objc_copyWeak(&v14, (a1 + 40));
      v13 = *(a1 + 32);
      [v11 presentViewController:v7 animated:1 completion:v12];

      objc_destroyWeak(&v14);
    }
  }
}

void __73__PUIProblemReportingController_setShouldShareBankConnectData_specifier___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
}

- (PUIFitnessPlusAnalyticsConsentCoordinator)fitnessPlusAnalyticsConsentCoordinator
{
  fitnessPlusAnalyticsConsentCoordinator = self->_fitnessPlusAnalyticsConsentCoordinator;
  if (!fitnessPlusAnalyticsConsentCoordinator)
  {
    v4 = objc_alloc_init(PUIFitnessPlusAnalyticsConsentCoordinator);
    v5 = self->_fitnessPlusAnalyticsConsentCoordinator;
    self->_fitnessPlusAnalyticsConsentCoordinator = v4;

    fitnessPlusAnalyticsConsentCoordinator = self->_fitnessPlusAnalyticsConsentCoordinator;
  }

  return fitnessPlusAnalyticsConsentCoordinator;
}

- (id)shouldShareFitnessPlusDataForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(PUIProblemReportingController *)self fitnessPlusAnalyticsConsentCoordinator];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "fetchAnalyticsConsent")}];

  return v5;
}

- (void)setShouldShareFitnessPlusData:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  objc_initWeak(&location, self);
  v9 = [(PUIProblemReportingController *)self fitnessPlusAnalyticsConsentCoordinator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__PUIProblemReportingController_setShouldShareFitnessPlusData_specifier___block_invoke;
  v11[3] = &unk_279BA1448;
  objc_copyWeak(&v13, &location);
  v14 = v8;
  v10 = v7;
  v12 = v10;
  [v9 setAnalyticsConsent:v8 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __73__PUIProblemReportingController_setShouldShareFitnessPlusData_specifier___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__PUIProblemReportingController_setShouldShareFitnessPlusData_specifier___block_invoke_2;
  block[3] = &unk_279BA1420;
  v6 = a2;
  objc_copyWeak(&v5, (a1 + 40));
  v7 = *(a1 + 48);
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __73__PUIProblemReportingController_setShouldShareFitnessPlusData_specifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v2 == 1)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
    [WeakRetained setPreferenceValue:v3 specifier:*(a1 + 32)];
  }

  else
  {
    [WeakRetained reloadSpecifiers];
  }
}

- (BOOL)shouldShowFitnessPlusSpecifiers
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"shouldShowFitnessPlusSpecifiers"];

  v5 = [(PUIProblemReportingController *)self fitnessPlusAnalyticsConsentCoordinator];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PUIProblemReportingController_shouldShowFitnessPlusSpecifiers__block_invoke;
  v7[3] = &unk_279BA1470;
  v10 = v4;
  v8 = @"shouldShowFitnessPlusSpecifiers";
  v9 = self;
  [v5 fetchSubscriptionStatusWithCompletion:v7];

  return v4;
}

void __64__PUIProblemReportingController_shouldShowFitnessPlusSpecifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != a2)
  {
    block[9] = v2;
    block[10] = v3;
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v6 setBool:a2 forKey:*(a1 + 32)];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__PUIProblemReportingController_shouldShowFitnessPlusSpecifiers__block_invoke_2;
    block[3] = &unk_279BA0B28;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)shouldShareHealthDataForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "effectiveBoolValueForSetting:", *MEMORY[0x277D25F18]) == 1}];

  return v5;
}

- (void)setShouldShareHealthData:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  HealthAppAnalyticsStoreClass = getHealthAppAnalyticsStoreClass();
  v8 = [v5 BOOLValue];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v9 = getHealthAppAnalyticsAgreementImproveHealthAndAnalyticsSymbolLoc_ptr;
  v16 = getHealthAppAnalyticsAgreementImproveHealthAndAnalyticsSymbolLoc_ptr;
  if (!getHealthAppAnalyticsAgreementImproveHealthAndAnalyticsSymbolLoc_ptr)
  {
    v10 = HealthAppServicesLibrary();
    v14[3] = dlsym(v10, "HealthAppAnalyticsAgreementImproveHealthAndAnalytics");
    getHealthAppAnalyticsAgreementImproveHealthAndAnalyticsSymbolLoc_ptr = v14[3];
    v9 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v9)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v12 = v11;
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  [HealthAppAnalyticsStoreClass setUserDidAccept:v8 currentAgreement:*v9 completion:&__block_literal_global_965];
}

void __68__PUIProblemReportingController_setShouldShareHealthData_specifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = _PUILoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_2657FE000, v5, OS_LOG_TYPE_DEFAULT, "Failed to update user agreement state: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSArray)healthRecordsDataSpecifiers
{
  v20[2] = *MEMORY[0x277D85DE8];
  healthRecordsDataSpecifiers = self->_healthRecordsDataSpecifiers;
  if (!healthRecordsDataSpecifiers)
  {
    v4 = PUI_LocalizedStringForProblemReporting(@"HEALTH_RECORDS_DATA_EXPLANATION");
    v5 = PUI_LocalizedStringForProblemReporting(@"HEALTH_RECORDS_DATA_LINK");
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, v5];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEALTH_RECORDS_DATA_GROUP"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF70]];
    v22.location = [v6 rangeOfString:v5];
    v10 = NSStringFromRange(v22);
    [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

    v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

    [v7 setProperty:@"showAboutHealthRecordsDataSheet" forKey:*MEMORY[0x277D3FF50]];
    v12 = MEMORY[0x277D3FAD8];
    v13 = PUI_LocalizedStringForProblemReporting(@"SHARE_HEALTH_RECORDS_DATA");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel_setShouldShareHealthRecordsData_specifier_ get:sel_shouldShareHealthRecordsDataForSpecifier_ detail:0 cell:6 edit:0];

    [v14 setProperty:@"SHARE_HEALTH_RECORDS_DATA" forKey:*MEMORY[0x277D3FFB8]];
    v15 = [MEMORY[0x277D262A0] sharedConnection];
    LOBYTE(v13) = [v15 isDiagnosticSubmissionModificationAllowed];

    if ((v13 & 1) == 0)
    {
      [v14 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v20[0] = v7;
    v20[1] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v17 = self->_healthRecordsDataSpecifiers;
    self->_healthRecordsDataSpecifiers = v16;

    healthRecordsDataSpecifiers = self->_healthRecordsDataSpecifiers;
  }

  v18 = *MEMORY[0x277D85DE8];

  return healthRecordsDataSpecifiers;
}

- (HKHealthStore)healthStore
{
  healthStore = self->_healthStore;
  if (!healthStore)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getHKHealthStoreClass_softClass;
    v13 = getHKHealthStoreClass_softClass;
    if (!getHKHealthStoreClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getHKHealthStoreClass_block_invoke;
      v9[3] = &unk_279BA0D08;
      v9[4] = &v10;
      __getHKHealthStoreClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_healthStore;
    self->_healthStore = v6;

    healthStore = self->_healthStore;
  }

  return healthStore;
}

- (void)updateHealthRecordsPreferenceForSpecifierID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v5 = getHKHealthRecordsStoreClass_softClass;
  v21 = getHKHealthRecordsStoreClass_softClass;
  if (!getHKHealthRecordsStoreClass_softClass)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __getHKHealthRecordsStoreClass_block_invoke;
    v17[3] = &unk_279BA0D08;
    v17[4] = &v18;
    __getHKHealthRecordsStoreClass_block_invoke(v17);
    v5 = v19[3];
  }

  v6 = v5;
  _Block_object_dispose(&v18, 8);
  v7 = [v5 alloc];
  v8 = [(PUIProblemReportingController *)self healthStore];
  v9 = [v7 initWithHealthStore:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__PUIProblemReportingController_updateHealthRecordsPreferenceForSpecifierID___block_invoke;
  v12[3] = &unk_279BA14E0;
  objc_copyWeak(&v15, &location);
  v12[4] = self;
  v10 = v9;
  v13 = v10;
  v11 = v4;
  v14 = v11;
  [v10 fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __77__PUIProblemReportingController_updateHealthRecordsPreferenceForSpecifierID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "Error fetching health records visibility status: %@", buf, 0xCu);
    }
  }

  v8 = _PUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "Health records visibility status: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = [WeakRetained specifierForID:@"SHARE_HEALTH_RECORDS_DATA"];
  if (v10)
  {
  }

  else
  {
    v11 = [v5 BOOLValue];

    if (v11)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __77__PUIProblemReportingController_updateHealthRecordsPreferenceForSpecifierID___block_invoke_982;
      v14[3] = &unk_279BA1128;
      objc_copyWeak(&v17, (a1 + 56));
      v12 = *(a1 + 40);
      v14[4] = *(a1 + 32);
      v15 = v12;
      v16 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], v14);

      objc_destroyWeak(&v17);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __77__PUIProblemReportingController_updateHealthRecordsPreferenceForSpecifierID___block_invoke_982(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) healthRecordsDataSpecifiers];
  [WeakRetained insertContiguousSpecifiers:v3 afterSpecifierID:@"SHARE_HEALTH_DATA"];

  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__PUIProblemReportingController_updateHealthRecordsPreferenceForSpecifierID___block_invoke_2;
  v5[3] = &unk_279BA14B8;
  objc_copyWeak(&v7, (a1 + 56));
  v6 = *(a1 + 48);
  [v4 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion:v5];

  objc_destroyWeak(&v7);
}

void __77__PUIProblemReportingController_updateHealthRecordsPreferenceForSpecifierID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "Error fetching health records opt in status: %@", buf, 0xCu);
    }
  }

  v8 = _PUILoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "Health records opt in status: %@", buf, 0xCu);
  }

  v9 = [v5 BOOLValue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__PUIProblemReportingController_updateHealthRecordsPreferenceForSpecifierID___block_invoke_983;
  block[3] = &unk_279BA13D0;
  objc_copyWeak(&v13, (a1 + 40));
  v14 = v9;
  v12 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v13);
  v10 = *MEMORY[0x277D85DE8];
}

void __77__PUIProblemReportingController_updateHealthRecordsPreferenceForSpecifierID___block_invoke_983(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShouldShareHealthRecordsData:*(a1 + 48)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 reloadSpecifierID:*(a1 + 32) animated:1];
}

- (id)shouldShareHealthRecordsDataForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(PUIProblemReportingController *)self shouldShareHealthRecordsData];

  return [v3 numberWithBool:v4];
}

- (void)setShouldShareHealthRecordsData:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(location, self);
  HealthAppAnalyticsStoreClass = getHealthAppAnalyticsStoreClass();
  v9 = [v6 BOOLValue];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v10 = getHealthAppAnalyticsAgreementImproveHealthRecordsSymbolLoc_ptr;
  v25 = getHealthAppAnalyticsAgreementImproveHealthRecordsSymbolLoc_ptr;
  if (!getHealthAppAnalyticsAgreementImproveHealthRecordsSymbolLoc_ptr)
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __getHealthAppAnalyticsAgreementImproveHealthRecordsSymbolLoc_block_invoke;
    location[4] = &unk_279BA0D08;
    v21 = &v22;
    v11 = HealthAppServicesLibrary();
    v12 = dlsym(v11, "HealthAppAnalyticsAgreementImproveHealthRecords");
    *(v21[1] + 24) = v12;
    getHealthAppAnalyticsAgreementImproveHealthRecordsSymbolLoc_ptr = *(v21[1] + 24);
    v10 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (v10)
  {
    v13 = *v10;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__PUIProblemReportingController_setShouldShareHealthRecordsData_specifier___block_invoke;
    v16[3] = &unk_279BA1530;
    v14 = v6;
    v17 = v14;
    objc_copyWeak(&v19, location);
    v15 = v7;
    v18 = v15;
    [HealthAppAnalyticsStoreClass setUserDidAccept:v9 currentAgreement:v13 completion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

void __75__PUIProblemReportingController_setShouldShareHealthRecordsData_specifier___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PUIProblemReportingController_setShouldShareHealthRecordsData_specifier___block_invoke_2;
  block[3] = &unk_279BA1508;
  v12 = a2;
  v8 = a1[4];
  objc_copyWeak(&v11, a1 + 6);
  v9 = v5;
  v10 = a1[5];
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v11);
}

void __75__PUIProblemReportingController_setShouldShareHealthRecordsData_specifier___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = _PUILoggingFacility();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "Successfully saved opt in status %@", &v10, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setShouldShareHealthRecordsData:{objc_msgSend(*(a1 + 32), "BOOLValue")}];
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "Error saving opt in status %@: %@", &v10, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained reloadSpecifier:*(a1 + 48) animated:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSArray)wheelchairDataSpecifiers
{
  v20[2] = *MEMORY[0x277D85DE8];
  wheelchairDataSpecifiers = self->_wheelchairDataSpecifiers;
  if (!wheelchairDataSpecifiers)
  {
    v4 = PUI_LocalizedStringForProblemReporting(@"WHEELCHAIR_DATA_EXPLANATION");
    v5 = PUI_LocalizedStringForProblemReporting(@"WHEELCHAIR_DATA_LINK");
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, v5];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"WHEELCHAIR_DATA_GROUP"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF70]];
    v22.location = [v6 rangeOfString:v5];
    v10 = NSStringFromRange(v22);
    [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

    v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

    [v7 setProperty:@"showAboutWheelchairDataSheet" forKey:*MEMORY[0x277D3FF50]];
    v12 = MEMORY[0x277D3FAD8];
    v13 = PUI_LocalizedStringForProblemReporting(@"SHARE_WHEELCHAIR_DATA");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel_setShouldShareWheelchairData_specifier_ get:sel_shouldShareWheelchairDataForSpecifier_ detail:0 cell:6 edit:0];

    [v14 setProperty:@"SHARE_WHEELCHAIR_DATA" forKey:*MEMORY[0x277D3FFB8]];
    v15 = [MEMORY[0x277D262A0] sharedConnection];
    LOBYTE(v13) = [v15 isDiagnosticSubmissionModificationAllowed];

    if ((v13 & 1) == 0)
    {
      [v14 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v20[0] = v7;
    v20[1] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v17 = self->_wheelchairDataSpecifiers;
    self->_wheelchairDataSpecifiers = v16;

    wheelchairDataSpecifiers = self->_wheelchairDataSpecifiers;
  }

  v18 = *MEMORY[0x277D85DE8];

  return wheelchairDataSpecifiers;
}

- (id)shouldShareWheelchairDataForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "effectiveBoolValueForSetting:", *MEMORY[0x277D260F8]) == 1}];

  return v5;
}

- (void)setShouldShareWheelchairData:(id)a3 specifier:(id)a4
{
  v4 = MEMORY[0x277D262A0];
  v5 = a3;
  v7 = [v4 sharedConnection];
  v6 = [v5 BOOLValue];

  [v7 setBoolValue:v6 forSetting:*MEMORY[0x277D260F8]];
}

- (NSArray)handwashingDataSpecifiers
{
  v21[2] = *MEMORY[0x277D85DE8];
  handwashingDataSpecifiers = self->_handwashingDataSpecifiers;
  if (!handwashingDataSpecifiers)
  {
    v4 = PUI_LocalizedStringForProblemReporting(@"HANDWASHING_DATA_EXPLANATION");
    v5 = PUI_LocalizedStringForProblemReporting(@"HANDWASHING_DATA_LINK");
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4, v5];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HANDWASHING_DATA_GROUP"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

    [v7 setProperty:v6 forKey:*MEMORY[0x277D3FF70]];
    v23.location = [v6 rangeOfString:v5];
    v10 = NSStringFromRange(v23);
    [v7 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

    v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v7 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

    [v7 setProperty:@"showAboutHandwashingDataSheet" forKey:*MEMORY[0x277D3FF50]];
    v12 = MEMORY[0x277D3FAD8];
    v13 = PUI_LocalizedStringForProblemReporting(@"SHARE_HANDWASHING_DATA");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:sel_setShouldShareHandwashingData_specifier_ get:sel_shouldShareHandwashingDataForSpecifier_ detail:0 cell:6 edit:0];

    [v14 setProperty:@"SHARE_WHEELCHAIR_DATA" forKey:*MEMORY[0x277D3FFB8]];
    v15 = [MEMORY[0x277D262A0] sharedConnection];
    v16 = [v15 isDiagnosticSubmissionModificationAllowed];

    if ((v16 & 1) == 0)
    {
      [v14 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    v21[0] = v7;
    v21[1] = v14;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v18 = self->_handwashingDataSpecifiers;
    self->_handwashingDataSpecifiers = v17;

    handwashingDataSpecifiers = self->_handwashingDataSpecifiers;
  }

  v19 = *MEMORY[0x277D85DE8];

  return handwashingDataSpecifiers;
}

- (id)shouldShareHandwashingDataForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "effectiveBoolValueForSetting:", @"allowHandWashingDataSubmission"}];

  return v5;
}

- (void)setShouldShareHandwashingData:(id)a3 specifier:(id)a4
{
  v4 = MEMORY[0x277D262A0];
  v5 = a3;
  v7 = [v4 sharedConnection];
  v6 = [v5 BOOLValue];

  [v7 setBoolValue:v6 forSetting:@"allowHandWashingDataSubmission"];
}

- (NSArray)safetyDataSpecifiers
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (!self->_safetyDataSpecifiers)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 != 1)
    {
      v5 = PUI_LocalizedStringForProblemReporting(@"SAFETY_DATA_EXPLANATION");
      v6 = PUI_LocalizedStringForProblemReporting(@"SAFETY_DATA_LINK");
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:v5, v6];
      v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SAFETY_DATA_GROUP"];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [v8 setProperty:v10 forKey:*MEMORY[0x277D3FF48]];

      [v8 setProperty:v7 forKey:*MEMORY[0x277D3FF70]];
      v24.location = [v7 rangeOfString:v6];
      v11 = NSStringFromRange(v24);
      [v8 setProperty:v11 forKey:*MEMORY[0x277D3FF58]];

      v12 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v8 setProperty:v12 forKey:*MEMORY[0x277D3FF68]];

      [v8 setProperty:@"showAboutSafetyDataSheet" forKey:*MEMORY[0x277D3FF50]];
      v13 = MEMORY[0x277D3FAD8];
      v14 = PUI_LocalizedStringForProblemReporting(@"SHARE_SAFETY_DATA");
      v15 = [v13 preferenceSpecifierNamed:v14 target:self set:sel_setShouldShareSafetyData_specifier_ get:sel_shouldShareSafetyDataForSpecifier_ detail:0 cell:6 edit:0];

      [v15 setProperty:@"SHARE_SAFETY_DATA" forKey:*MEMORY[0x277D3FFB8]];
      v16 = [MEMORY[0x277D262A0] sharedConnection];
      LOBYTE(v14) = [v16 isDiagnosticSubmissionModificationAllowed];

      if ((v14 & 1) == 0)
      {
        [v15 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      }

      v22[0] = v8;
      v22[1] = v15;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      safetyDataSpecifiers = self->_safetyDataSpecifiers;
      self->_safetyDataSpecifiers = v17;
    }
  }

  v19 = self->_safetyDataSpecifiers;
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)shouldShareSafetyDataForSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "effectiveBoolValueForSetting:", @"allowSafetyDataSubmission"}];

  return v5;
}

- (void)setShouldShareSafetyData:(id)a3 specifier:(id)a4
{
  v4 = MEMORY[0x277D262A0];
  v5 = a3;
  v7 = [v4 sharedConnection];
  v6 = [v5 BOOLValue];

  [v7 setBoolValue:v6 forSetting:@"allowSafetyDataSubmission"];
}

- (NSArray)improveARLocationAccuracySpecifiers
{
  v23[2] = *MEMORY[0x277D85DE8];
  improveARLocationAccuracySpecifiers = self->_improveARLocationAccuracySpecifiers;
  if (!improveARLocationAccuracySpecifiers)
  {
    v4 = PUI_RebrandedKeyForAppleID(@"IMPROVE_AR_LOCATION_ACCURACY_FOOTER");
    v5 = PUI_LocalizedStringForProblemReporting(v4);

    v6 = PUI_LocalizedStringForProblemReporting(@"IMPROVE_AR_LOCATION_ACCURACY_LINK");
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:v5, v6];
    v8 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"IMPROVE_AR_LOCATION_ACCURACY_GROUP"];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 setProperty:v10 forKey:*MEMORY[0x277D3FF48]];

    [v8 setProperty:v7 forKey:*MEMORY[0x277D3FF70]];
    v25.location = [v7 rangeOfString:v6];
    v11 = NSStringFromRange(v25);
    [v8 setProperty:v11 forKey:*MEMORY[0x277D3FF58]];

    v12 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v8 setProperty:v12 forKey:*MEMORY[0x277D3FF68]];

    [v8 setProperty:@"showImproveARLocationAccuracyDataSheet" forKey:*MEMORY[0x277D3FF50]];
    v13 = MEMORY[0x277D3FAD8];
    v14 = PUI_LocalizedStringForProblemReporting(@"IMPROVE_AR_LOCATION_ACCURACY");
    v15 = [v13 preferenceSpecifierNamed:v14 target:self set:sel_setImproveARLocationAccuracy_specifier_ get:sel_improveARLocationAccuracyForSpecifier_ detail:0 cell:6 edit:0];

    [v15 setProperty:@"IMPROVE_AR_LOCATION_ACCURACY_DATA" forKey:*MEMORY[0x277D3FFB8]];
    if (PSGEOVisualLocalizationCrowdsourcingIsAllowed())
    {
      v16 = 1;
    }

    else
    {
      v17 = [(PUIProblemReportingController *)self improveARLocationAccuracyForSpecifier:v15];
      v16 = [v17 BOOLValue];
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    [v15 setProperty:v18 forKey:*MEMORY[0x277D3FF38]];

    v23[0] = v8;
    v23[1] = v15;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v20 = self->_improveARLocationAccuracySpecifiers;
    self->_improveARLocationAccuracySpecifiers = v19;

    improveARLocationAccuracySpecifiers = self->_improveARLocationAccuracySpecifiers;
  }

  v21 = *MEMORY[0x277D85DE8];

  return improveARLocationAccuracySpecifiers;
}

- (void)setImproveARLocationAccuracy:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 BOOLValue] && (PSGEOVisualLocalizationCrowdsourcingIsAllowed() & 1) == 0)
  {
    [v7 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    v11 = [v7 identifier];
    [(PUIProblemReportingController *)self reloadSpecifierID:v11];
  }

  else
  {
    v8 = [v6 BOOLValue];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v9 = getGEOVisualLocalizationCrowdsourcingSetEnabledSymbolLoc_ptr;
    v17 = getGEOVisualLocalizationCrowdsourcingSetEnabledSymbolLoc_ptr;
    if (!getGEOVisualLocalizationCrowdsourcingSetEnabledSymbolLoc_ptr)
    {
      v10 = GeoServicesLibrary();
      v15[3] = dlsym(v10, "GEOVisualLocalizationCrowdsourcingSetEnabled");
      getGEOVisualLocalizationCrowdsourcingSetEnabledSymbolLoc_ptr = v15[3];
      v9 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v9)
    {
      [PUILockdownModeController getEligibleDevicesWithCompletion:];
      v13 = v12;
      _Block_object_dispose(&v14, 8);
      _Unwind_Resume(v13);
    }

    v9(v8);
  }
}

- (id)improveARLocationAccuracyForSpecifier:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CCABB0];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = getGEOVisualLocalizationCrowdsourcingIsEnabledSymbolLoc_ptr;
  v14 = getGEOVisualLocalizationCrowdsourcingIsEnabledSymbolLoc_ptr;
  if (!getGEOVisualLocalizationCrowdsourcingIsEnabledSymbolLoc_ptr)
  {
    v6 = GeoServicesLibrary();
    v12[3] = dlsym(v6, "GEOVisualLocalizationCrowdsourcingIsEnabled");
    getGEOVisualLocalizationCrowdsourcingIsEnabledSymbolLoc_ptr = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v5)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v10 = v9;
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v10);
  }

  v7 = [v4 numberWithBool:v5()];

  return v7;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = +[PUIProblemReportingController isProblemReportingEnabled];
    v6 = [(PUIProblemReportingController *)self baseSpecifiers];
    v7 = [(PUIProblemReportingController *)self analyticsSpecifiersIncludingIndependentSpecifiers:1 includeDependentSpecifiers:v5];
    v8 = [v6 arrayByAddingObjectsFromArray:v7];

    v9 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v8;

    [(PUIProblemReportingController *)self checkDiagnosticsSessionAvailability];
    [(PUIProblemReportingController *)self updateiCloudAnalyticsForSpecifierID:@"SHARE_ICLOUD_ANALYTICS"];
    if (_os_feature_enabled_impl())
    {
      [(PUIProblemReportingController *)self updateAppleIdImprovementForSpecifierID:@"SHARE_APPLEID_ANALYTICS"];
    }

    [(PUIProblemReportingController *)self updateHealthRecordsPreferenceForSpecifierID:@"SHARE_HEALTH_RECORDS_DATA"];
    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)shouldShareAppActivityWithAppDevelopers
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 hasAppAndAccessoryAnalyticsAllowedBeenSet];

  v4 = MEMORY[0x277CCABB0];
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = v5;
  if (v3)
  {
    [v4 numberWithBool:{objc_msgSend(v5, "isAppAndAccessoryAnalyticsAllowed")}];
  }

  else
  {
    [v4 numberWithInt:{objc_msgSend(v5, "effectiveBoolValueForSetting:", *MEMORY[0x277D25D00]) == 1}];
  }
  v7 = ;

  return v7;
}

- (void)setShouldShareAppActivityWithAppDevelopers:(id)a3 specifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = [MEMORY[0x277D262A0] sharedConnection];
  [v6 setBoolValue:v5 forSetting:*MEMORY[0x277D25D00]];

  if ([(PUIProblemReportingController *)self isAppAndAccessoryAnalyticsAllowedFeatureEnabled])
  {
    v7 = [MEMORY[0x277D262A0] sharedConnection];
    v8 = [v7 hasAppAndAccessoryAnalyticsAllowedBeenSet];

    v9 = [MEMORY[0x277D262A0] sharedConnection];
    [v9 setBoolValue:v5 forSetting:*MEMORY[0x277D25D08]];

    if ((v8 & 1) == 0)
    {
      appActivitySpecifiers = self->_appActivitySpecifiers;
      self->_appActivitySpecifiers = 0;

      [(PUIProblemReportingController *)self reloadSpecifiers];
    }
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PUIProblemReportingController *)self specifierAtIndex:[(PUIProblemReportingController *)self indexForIndexPath:v5]];
  v7 = [v6 identifier];

  if ([v7 isEqualToString:@"START_DIAGNOSTICS_WITH_APPLE_SUPPORT"])
  {
    v8 = [(PUIProblemReportingController *)self specifierAtIndex:[(PUIProblemReportingController *)self indexForIndexPath:v5]];
    [(PUIProblemReportingController *)self launchDiagnosticsSession:v8];

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

void __84__PUIProblemReportingController_getCurrentImproveSiriAndDictationValueForSpecifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138412546;
  v10 = v7;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_2657FE000, a3, OS_LOG_TYPE_ERROR, "%@: Encountered error while getting current Siri Analytics Status: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __75__PUIProblemReportingController_setImproveSiriAndDictationValue_specifier___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *(a1 + 40);
  v10 = *a2;
  v12 = 138412802;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  v16 = 2112;
  v17 = v10;
  _os_log_error_impl(&dword_2657FE000, a3, OS_LOG_TYPE_ERROR, "%@: Encountered error while setting Siri Analytics Status to '%@': %@", &v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end