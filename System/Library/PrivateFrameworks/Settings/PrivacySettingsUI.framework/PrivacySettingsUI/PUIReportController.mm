@interface PUIReportController
+ (BOOL)isRecordActivityEnabled;
- (BOOL)appAccessHasData;
- (BOOL)eitherSourceHasData;
- (BOOL)isRecordActivityEnabled;
- (PUIReportController)init;
- (id)appNetworkActivityGroupSpecifiers;
- (id)dataAccessGroupSpecifiers;
- (id)dataAccessSpecifiers;
- (id)headerSpecifiers;
- (id)isRecordActivityEnabled:(id)a3;
- (id)mostContactedDomainsGroupSpecifiers;
- (id)saveAppActivityFooterText;
- (id)specifiers;
- (id)specifiersForAppPrivacyReport;
- (id)specifiersForRecordAppActivity;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)websiteNetworkActivityGroupSpecifiers;
- (unint64_t)controllerMode;
- (void)dataDidChange;
- (void)dealloc;
- (void)didTapSave;
- (void)presentAboutController;
- (void)provideNavigationDonations;
- (void)reloadAppAccessHasDataWithCompletion:(id)a3;
- (void)reloadAppAndTrackingData;
- (void)reloadAppNetworkActivitySpecifiersWithCompletion:(id)a3;
- (void)reloadMostContactedDomainsSpecifiersWithCompletion:(id)a3;
- (void)reloadWebsiteNetworkActivitySpecifiersWithCompletion:(id)a3;
- (void)setRecordActivityEnabled:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation PUIReportController

- (PUIReportController)init
{
  v11.receiver = self;
  v11.super_class = PUIReportController;
  v2 = [(PUIReportController *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(PUIReportController *)v2 setReportManager:v3];

    v4 = objc_opt_new();
    [(PUIReportController *)v2 setSensorManager:v4];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_didBecomeActive name:*MEMORY[0x277D76648] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_dataDidChange name:@"PSUITrackingReportDataHasChanged" object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel_dataDidChange name:@"PUIReportSensorManagerDataHasChangedNotification" object:0];

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    PUIAnalyticsLogView(v9, 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUIReportController;
  [(PUIReportController *)&v4 dealloc];
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"APP_PRIVACY_REPORT" table:@"Privacy" locale:v6 bundleURL:v4];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:v9 bundleURL:v4];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/PRIVACY_REPORT"];
  [(PUIReportController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.app-privacy-report" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    [(PUIReportController *)self setReportEnabled:[(PUIReportController *)self isRecordActivityEnabled]];
    [(PUIReportController *)self setHasData:[(PUIReportController *)self eitherSourceHasData]];
    if (_os_feature_enabled_impl())
    {
      [(PUIReportController *)self specifiersForAppPrivacyReport];
    }

    else
    {
      [(PUIReportController *)self specifiersForRecordAppActivity];
    }
    v5 = ;
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    [(PUIReportController *)self reloadAppAndTrackingData];
    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)specifiersForRecordAppActivity
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"RECORD_APP_ACTIVITY_GROUP"];
  v5 = PUI_LocalizedStringForTrackers(@"RECORD_APP_ACTIVITY_FOOTER");
  v6 = *MEMORY[0x277D3FF88];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [v3 addObject:v4];
  v7 = MEMORY[0x277D3FAD8];
  v8 = PUI_LocalizedStringForTrackers(@"RECORD_APP_ACTIVITY");
  v9 = [v7 preferenceSpecifierNamed:v8 target:self set:sel_setRecordActivityEnabled_specifier_ get:sel_isRecordActivityEnabled_ detail:0 cell:6 edit:0];

  [v9 setIdentifier:@"RECORD_APP_ACTIVITY"];
  [v3 addObject:v9];
  if ([(PUIReportController *)self reportEnabled])
  {
    v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SAVE_APP_ACTIVITY_GROUP"];
    v11 = [(PUIReportController *)self saveAppActivityFooterText];
    [v10 setObject:v11 forKeyedSubscript:v6];

    [v3 addObject:v10];
    v12 = MEMORY[0x277D3FAD8];
    v13 = PUI_LocalizedStringForTrackers(@"SAVE_APP_ACTIVITY");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v14 setIdentifier:@"SAVE_APP_ACTIVITY"];
    [v14 setButtonAction:sel_didTapSave];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[PUIReportController hasData](self, "hasData")}];
    [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FF38]];

    [v14 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [(PUIReportController *)self setSaveAppActivitySpecifier:v14];
    [v3 addObject:v14];
  }

  return v3;
}

- (void)dataDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PUIReportController_dataDidChange__block_invoke;
  block[3] = &unk_279BA0B28;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __36__PUIReportController_dataDidChange__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) reportEnabled];
  if (v2 != [*(a1 + 32) isRecordActivityEnabled] || (v3 = objc_msgSend(*(a1 + 32), "hasData"), v3 != objc_msgSend(*(a1 + 32), "eitherSourceHasData")))
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[PUIReportController dataDidChange]_block_invoke";
      _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "%s: reloading: state changed", &v11, 0xCu);
    }

    [*(a1 + 32) reloadSpecifiers];
LABEL_6:
    v5 = *MEMORY[0x277D85DE8];
    return;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v8 = _PUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[PUIReportController dataDidChange]_block_invoke";
      _os_log_impl(&dword_2657FE000, v8, OS_LOG_TYPE_DEFAULT, "%s: only reloading time interval footer: state hasn't changed", &v11, 0xCu);
    }

    v9 = [*(a1 + 32) specifierForID:@"SAVE_APP_ACTIVITY_GROUP"];
    v10 = [*(a1 + 32) saveAppActivityFooterText];
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [*(a1 + 32) reloadSpecifier:v9];
    goto LABEL_6;
  }

  v6 = *(a1 + 32);
  v7 = *MEMORY[0x277D85DE8];

  [v6 reloadSensorAndNetworkSpecifiersAnimated:0];
}

void __64__PUIReportController_reloadSensorAndNetworkSpecifiersAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataAccessSpecifiers];
  v3 = [*(a1 + 32) appNetworkActivityRowsAwaitingDisplay];
  v4 = [*(a1 + 32) websiteNetworkActivityRowsAwaitingDisplay];
  v5 = [*(a1 + 32) domainNetworkActivityRowsAwaitingDisplay];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PUIReportController_reloadSensorAndNetworkSpecifiersAnimated___block_invoke_2;
  block[3] = &unk_279BA2038;
  block[4] = *(a1 + 32);
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__PUIReportController_reloadSensorAndNetworkSpecifiersAnimated___block_invoke_2(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) learnMoreHeader];
  v3 = [v2 lastObject];

  v4 = *(a1 + 32);
  v5 = [v4 sensorActivityRows];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) sensorActivityHeader];
  v8 = [v4 pui_replaceRows:v5 withRows:v6 header:v7 insertPoint:v3];

  [*(a1 + 32) setSensorActivityRows:*(a1 + 40)];
  v9 = *(a1 + 32);
  v10 = [v9 appNetworkActivityRows];
  v11 = *(a1 + 48);
  v12 = [*(a1 + 32) appNetworkActivityHeader];
  v13 = [v9 pui_replaceRows:v10 withRows:v11 header:v12 insertPoint:v8];

  [*(a1 + 32) setAppNetworkActivityRows:*(a1 + 48)];
  v14 = *(a1 + 32);
  v15 = [v14 websiteNetworkActivityRows];
  v16 = *(a1 + 56);
  v17 = [*(a1 + 32) websiteNetworkActivityHeader];
  v18 = [v14 pui_replaceRows:v15 withRows:v16 header:v17 insertPoint:v13];

  [*(a1 + 32) setWebsiteNetworkActivityRows:*(a1 + 56)];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v19 = [*(a1 + 32) websiteNetworkActivityRows];
  v20 = [v19 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v54;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v53 + 1) + 8 * i) objectForKeyedSubscript:@"PUITrackerBarShowAppAttributedBadgeKey"];
        v25 = [v24 BOOLValue];

        if (v25)
        {
          v26 = 1;
          goto LABEL_11;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0;
LABEL_11:

  v27 = [*(a1 + 32) websiteNetworkActivityHeader];
  v28 = [v27 firstObject];

  v29 = PUI_LocalizedStringForAppReport(@"WEBSITE_NETWORK_ACTIVITY_FOOTER");
  if (v26)
  {
    v30 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 32)];
    [v28 setObject:v30 forKeyedSubscript:@"PUIAttributedStringTextViewDelegateKey"];

    v31 = MEMORY[0x277CCACA8];
    v32 = PUI_LocalizedStringForAppReport(@"WEBSITE_UNVERIFIED_CONTEXT_FOOTER");
    v52 = v18;
    v33 = [v31 stringWithFormat:v32, @"SF_SYMBOL_APPSTORE"];

    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v29, v33];
    v35 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v34];
    v36 = [MEMORY[0x277D755B8] _systemImageNamed:@"appstore"];
    v37 = [v36 imageWithRenderingMode:2];

    v38 = [PUIAttributedStringFooter string:v35 replacingSubstring:@"SF_SYMBOL_APPSTORE" withImage:v37];
    v39 = objc_alloc(MEMORY[0x277CCAB48]);
    v40 = PUI_LocalizedStringForAppReport(@"WEBSITE_UNVERIFIED_CONTEXT_FOOTER_LINK");
    v41 = [v39 initWithString:v40];

    v42 = *MEMORY[0x277D740E8];
    v43 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28771E540];
    [v41 addAttribute:v42 value:v43 range:{0, objc_msgSend(v41, "length")}];

    v44 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
    [v35 appendAttributedString:v44];

    [v35 appendAttributedString:v41];
    [v28 setObject:v35 forKeyedSubscript:@"PUIAttributedStringFooterStringKey"];
    [*(a1 + 32) reloadSpecifier:v28];

    v18 = v52;
  }

  else
  {
    v45 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v29];
    [v28 setObject:v45 forKeyedSubscript:@"PUIAttributedStringFooterStringKey"];

    [*(a1 + 32) reloadSpecifier:v28];
  }

  v46 = *(a1 + 32);
  v47 = [v46 domainNetworkActivityRows];
  v48 = *(a1 + 64);
  v49 = [*(a1 + 32) domainNetworkActivityHeader];
  v50 = [v46 pui_replaceRows:v47 withRows:v48 header:v49 insertPoint:v18];

  [*(a1 + 32) setDomainNetworkActivityRows:*(a1 + 64)];
  v51 = *MEMORY[0x277D85DE8];
}

- (void)presentAboutController
{
  v3 = objc_alloc(MEMORY[0x277D37688]);
  v4 = PUI_LocalizedStringForAppReport(@"LEARN_MORE_TITLE");
  v5 = [v3 initWithTitle:v4 detailText:0 symbolName:0 contentLayout:2];

  v6 = PUI_LocalizedStringForAppReport(@"LEARN_MORE_TEXT");
  [v5 addSectionWithHeader:0 content:v6];

  v7 = objc_alloc(MEMORY[0x277D751E0]);
  v8 = MEMORY[0x277D750C8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__PUIReportController_presentAboutController__block_invoke;
  v14[3] = &unk_279BA0C40;
  v15 = v5;
  v9 = v5;
  v10 = [v8 actionWithHandler:v14];
  v11 = [v7 initWithBarButtonSystemItem:0 primaryAction:v10];

  v12 = [v9 navigationItem];
  [v12 setRightBarButtonItem:v11];

  v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
  [(PUIReportController *)self presentModalViewController:v13 withTransition:3];
}

void __45__PUIReportController_presentAboutController__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (id)specifiersForAppPrivacyReport
{
  v3 = objc_opt_new();
  [(PUIReportController *)self setCurrentControllerMode:[(PUIReportController *)self controllerMode]];
  v4 = [(PUIReportController *)self controllerMode];
  v5 = MEMORY[0x277D3FD78];
  v6 = MEMORY[0x277D3FD80];
  if (!v4)
  {
    v12 = [(PUIReportController *)self navigationItem];
    [v12 setRightBarButtonItem:0];

    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v13 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v11 setObject:v13 forKeyedSubscript:@"PUIOnboardingCellDelegateKey"];

    [v11 setIdentifier:@"ONBOARDING"];
    [v3 addObject:v11];
    v14 = MEMORY[0x277D3FAD8];
    v15 = PUI_LocalizedStringForAppReport(@"ENABLE_REPORT");
    v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v16 setIdentifier:@"ENABLE_REPORT"];
    [v16 setButtonAction:sel_didTapTurnOnAppPrivacyReport];
    [v16 setObject:&unk_28772B420 forKeyedSubscript:*v5];
    [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v6];
    [v3 addObject:v16];
LABEL_7:

    goto LABEL_8;
  }

  if ([(PUIReportController *)self controllerMode]!= 1)
  {
    if ([(PUIReportController *)self controllerMode]!= 2)
    {
      goto LABEL_9;
    }

    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel_didTapSave];
    v17 = [(PUIReportController *)self navigationItem];
    [v17 setRightBarButtonItem:v11];

    v18 = [(PUIReportController *)self headerSpecifiers];
    [(PUIReportController *)self setLearnMoreHeader:v18];

    v19 = [(PUIReportController *)self learnMoreHeader];
    [v3 addObjectsFromArray:v19];

    v20 = [(PUIReportController *)self dataAccessGroupSpecifiers];
    [(PUIReportController *)self setSensorActivityHeader:v20];

    v21 = [(PUIReportController *)self appNetworkActivityGroupSpecifiers];
    [(PUIReportController *)self setAppNetworkActivityHeader:v21];

    v22 = [(PUIReportController *)self websiteNetworkActivityGroupSpecifiers];
    [(PUIReportController *)self setWebsiteNetworkActivityHeader:v22];

    v16 = [(PUIReportController *)self mostContactedDomainsGroupSpecifiers];
    [(PUIReportController *)self setDomainNetworkActivityHeader:v16];
    goto LABEL_7;
  }

  v7 = [(PUIReportController *)self navigationItem];
  [v7 setRightBarButtonItem:0];

  v8 = [(PUIReportController *)self headerSpecifiers];
  [(PUIReportController *)self setLearnMoreHeader:v8];

  v9 = [(PUIReportController *)self learnMoreHeader];
  [v3 addObjectsFromArray:v9];

  v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"NO_DATA_HEADER"];
  [v3 addObject:v10];

  v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  [v11 setIdentifier:@"NO_DATA"];
  [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  [v3 addObject:v11];
LABEL_8:

LABEL_9:
  if ([(PUIReportController *)self controllerMode])
  {
    v23 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DISABLE_REPORT_GROUP"];
    [v3 addObject:v23];
    v24 = MEMORY[0x277D3FAD8];
    v25 = PUI_LocalizedStringForAppReport(@"DISABLE_REPORT");
    v26 = [v24 preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v26 setIdentifier:@"DISABLE_REPORT"];
    [v26 setObject:&unk_28772B420 forKeyedSubscript:*v5];
    [v26 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v6];
    [v26 setButtonAction:sel_didTapTurnOffAppPrivacyReport];
    [v3 addObject:v26];
  }

  return v3;
}

- (id)headerSpecifiers
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"HEADER_GROUP"];
  v5 = PUI_LocalizedStringForAppReport(@"APP_REPORT_HEADER_TEXT");
  v6 = PUI_LocalizedStringForAppReport(@"APP_REPORT_LINK_TEXT");
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v5, v6];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v4 setProperty:v9 forKey:*MEMORY[0x277D3FF48]];

  [v4 setProperty:v7 forKey:*MEMORY[0x277D3FF70]];
  v14.location = [v7 rangeOfString:v6];
  v10 = NSStringFromRange(v14);
  [v4 setProperty:v10 forKey:*MEMORY[0x277D3FF58]];

  v11 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v4 setProperty:v11 forKey:*MEMORY[0x277D3FF68]];

  [v4 setProperty:@"presentAboutController" forKey:*MEMORY[0x277D3FF50]];
  [v3 addObject:v4];

  return v3;
}

- (id)dataAccessGroupSpecifiers
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277D3FAD8];
  v4 = PUI_LocalizedStringForAppReport(@"DATA_SENSOR_ACCESS");
  v5 = [v3 groupSpecifierWithID:@"DATA_GROUP" name:v4];

  v6 = PUI_LocalizedStringForAppReport(@"DATA_SENSOR_ACCESS_FOOTER");
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [v2 addObject:v5];

  return v2;
}

- (id)dataAccessSpecifiers
{
  v3 = [(PUIReportController *)self sensorManager];
  v4 = [PUIReportSensorListController appSpecifiersFromManager:v3];
  v5 = [v4 mutableCopy];

  v6 = [v5 count];
  v7 = [v5 count];
  if (v7 >= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v5 subarrayWithRange:{0, v8}];
  v10 = [v9 mutableCopy];

  if (v6 >= 6)
  {
    v11 = MEMORY[0x277D3FAD8];
    v12 = PUI_LocalizedStringForAppReport(@"SHOW_ALL");
    v13 = [v11 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v13 setIdentifier:@"SHOW_ALL_SENSOR"];
    v14 = [(PUIReportController *)self sensorManager];
    [v13 setObject:v14 forKeyedSubscript:@"PUIReportSensorManagerKey"];

    [v10 addObject:v13];
  }

  return v10;
}

- (id)appNetworkActivityGroupSpecifiers
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277D3FAD8];
  v4 = PUI_LocalizedStringForAppReport(@"APP_NETWORK_ACTIVITY");
  v5 = [v3 groupSpecifierWithID:@"APP_NETWORK_ACTIVITY_GROUP" name:v4];

  v6 = PUI_LocalizedStringForAppReport(@"APP_NETWORK_ACTIVITY_FOOTER");
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [v2 addObject:v5];

  return v2;
}

- (void)reloadAppNetworkActivitySpecifiersWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__PUIReportController_reloadAppNetworkActivitySpecifiersWithCompletion___block_invoke;
  v6[3] = &unk_279BA2060;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [PUIReportAppListController appSpecifiersWithLimit:6 completion:v6];
}

void __72__PUIReportController_reloadAppNetworkActivitySpecifiersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v4 count];
  v6 = [v4 count];
  if (v6 >= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 subarrayWithRange:{0, v7}];

  v14 = [v8 mutableCopy];
  if (v5 >= 6)
  {
    v9 = MEMORY[0x277D3FAD8];
    v10 = PUI_LocalizedStringForAppReport(@"SHOW_ALL");
    v11 = [v9 preferenceSpecifierNamed:v10 target:*(a1 + 32) set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v11 setIdentifier:@"SHOW_ALL_APP_NETWORK"];
    [v14 addObject:v11];
  }

  v12 = [v14 copy];
  [*(a1 + 32) setAppNetworkActivityRowsAwaitingDisplay:v12];

  [*(a1 + 32) dataDidChange];
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

- (id)websiteNetworkActivityGroupSpecifiers
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277D3FAD8];
  v4 = PUI_LocalizedStringForAppReport(@"WEBSITE_NETWORK_ACTIVITY");
  v5 = [v3 groupSpecifierWithID:@"WEBSITE_NETWORK_ACTIVITY_GROUP" name:v4];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF48]];

  [v2 addObject:v5];

  return v2;
}

- (void)reloadWebsiteNetworkActivitySpecifiersWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__PUIReportController_reloadWebsiteNetworkActivitySpecifiersWithCompletion___block_invoke;
  v6[3] = &unk_279BA2060;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [PUIReportWebsiteListController websiteSpecifiersWithLimit:6 showDetail:0 completion:v6];
}

void __76__PUIReportController_reloadWebsiteNetworkActivitySpecifiersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v4 count];
  v6 = [v4 count];
  if (v6 >= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 subarrayWithRange:{0, v7}];

  v14 = [v8 mutableCopy];
  if (v5 >= 6)
  {
    v9 = MEMORY[0x277D3FAD8];
    v10 = PUI_LocalizedStringForAppReport(@"SHOW_ALL");
    v11 = [v9 preferenceSpecifierNamed:v10 target:*(a1 + 32) set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v11 setIdentifier:@"SHOW_ALL_WEBSITES"];
    [v14 addObject:v11];
  }

  v12 = [v14 copy];
  [*(a1 + 32) setWebsiteNetworkActivityRowsAwaitingDisplay:v12];

  [*(a1 + 32) dataDidChange];
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

- (id)mostContactedDomainsGroupSpecifiers
{
  v2 = objc_opt_new();
  v3 = MEMORY[0x277D3FAD8];
  v4 = PUI_LocalizedStringForAppReport(@"MOST_CONTACTED_DOMAINS");
  v5 = [v3 groupSpecifierWithID:@"DOMAINS_GROUP" name:v4];

  v6 = PUI_LocalizedStringForAppReport(@"MOST_CONTACTED_DOMAINS_FOOTER");
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  [v2 addObject:v5];

  return v2;
}

- (void)reloadMostContactedDomainsSpecifiersWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__PUIReportController_reloadMostContactedDomainsSpecifiersWithCompletion___block_invoke;
  v6[3] = &unk_279BA2060;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [PUIReportDomainListController domainSpecifiersWithLimit:6 showDates:0 showAppAndWebsiteCounts:1 showIPAddresses:0 completion:v6];
}

void __74__PUIReportController_reloadMostContactedDomainsSpecifiersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [v3 count];
  v5 = [v3 count];
  if (v5 >= 5)
  {
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v3 subarrayWithRange:{0, v6}];
  v13 = [v7 mutableCopy];

  if (v4 >= 6)
  {
    v8 = MEMORY[0x277D3FAD8];
    v9 = PUI_LocalizedStringForAppReport(@"SHOW_ALL");
    v10 = [v8 preferenceSpecifierNamed:v9 target:*(a1 + 32) set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v10 setIdentifier:@"SHOW_ALL_DOMAIN"];
    [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PUIReportDomainListShowWebsiteAndAppCounts"];
    [v13 addObject:v10];
  }

  v11 = [v13 copy];
  [*(a1 + 32) setDomainNetworkActivityRowsAwaitingDisplay:v11];

  [*(a1 + 32) dataDidChange];
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))();
  }
}

- (unint64_t)controllerMode
{
  v3 = [(PUIReportController *)self reportManager];
  v4 = [v3 trackingReportEnabled];

  if (!v4)
  {
    return 0;
  }

  if ([(PUIReportController *)self eitherSourceHasData])
  {
    return 2;
  }

  return 1;
}

- (void)reloadAppAndTrackingData
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _PUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[PUIReportController reloadAppAndTrackingData]";
    _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "%s: Starting page load", buf, 0xCu);
  }

  v4 = PUILogForCategory(1uLL);
  v5 = os_signpost_id_make_with_pointer(v4, "PUIReportController.load");

  v6 = PUILogForCategory(1uLL);
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PUIReportController.load", "", buf, 2u);
  }

  v8 = dispatch_group_create();
  v9 = [(PUIReportController *)self reportManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__PUIReportController_reloadAppAndTrackingData__block_invoke;
  v12[3] = &unk_279BA2088;
  v12[4] = self;
  v13 = v8;
  v14 = v5;
  v10 = v8;
  [v9 reloadEnabledWithCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __47__PUIReportController_reloadAppAndTrackingData__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__PUIReportController_reloadAppAndTrackingData__block_invoke_2;
  v5[3] = &unk_279BA2088;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 reloadAppAccessHasDataWithCompletion:v5];
}

void __47__PUIReportController_reloadAppAndTrackingData__block_invoke_2(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__PUIReportController_reloadAppAndTrackingData__block_invoke_3;
  v14[3] = &unk_279BA0B28;
  v2 = *(a1 + 40);
  v15 = *(a1 + 32);
  [v2 reloadAppNetworkActivitySpecifiersWithCompletion:v14];
  dispatch_group_enter(*(a1 + 32));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__PUIReportController_reloadAppAndTrackingData__block_invoke_4;
  v12[3] = &unk_279BA0B28;
  v3 = *(a1 + 40);
  v13 = *(a1 + 32);
  [v3 reloadWebsiteNetworkActivitySpecifiersWithCompletion:v12];
  dispatch_group_enter(*(a1 + 32));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__PUIReportController_reloadAppAndTrackingData__block_invoke_5;
  v10[3] = &unk_279BA0B28;
  v4 = *(a1 + 40);
  v11 = *(a1 + 32);
  [v4 reloadMostContactedDomainsSpecifiersWithCompletion:v10];
  dispatch_group_enter(*(a1 + 32));
  v5 = [*(a1 + 40) sensorManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__PUIReportController_reloadAppAndTrackingData__block_invoke_6;
  v8[3] = &unk_279BA0B28;
  v9 = *(a1 + 32);
  [v5 reloadDataWithCompletion:v8];

  v6 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PUIReportController_reloadAppAndTrackingData__block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 48);
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
}

void __47__PUIReportController_reloadAppAndTrackingData__block_invoke_7(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PUILogForCategory(1uLL);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_2657FE000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PUIReportController.load", "", &v7, 2u);
  }

  v5 = _PUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[PUIReportController reloadAppAndTrackingData]_block_invoke";
    _os_log_impl(&dword_2657FE000, v5, OS_LOG_TYPE_DEFAULT, "%s: Finished page load", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)saveAppActivityFooterText
{
  if (![(PUIReportController *)self hasData])
  {
    v9 = @"SAVE_APP_ACTIVITY_NO_DATA_FOOTER";
    goto LABEL_6;
  }

  v3 = [(PUIReportController *)self reportManager];
  v4 = [v3 enabledDate];

  if (v4)
  {
    v5 = [(PUIReportController *)self reportManager];
    v6 = [v5 enabledDate];
    [v6 timeIntervalSinceNow];
    v8 = fabs(v7);

    if (v8 > 604800.0)
    {
      v9 = @"SAVE_APP_ACTIVITY_FOOTER_7_DAYS";
LABEL_6:
      v10 = PUI_LocalizedStringForTrackers(v9);
      goto LABEL_9;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = PUI_LocalizedStringForTrackers(@"SAVE_APP_ACTIVITY_FOOTER");
    v10 = [v11 localizedStringWithFormat:v12, (v8 / 86400.0)];
  }

  else
  {
    v10 = &stru_28771E540;
  }

LABEL_9:

  return v10;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PUIReportController;
  [(PUIReportController *)&v4 viewDidLoad];
  v3 = PUI_LocalizedStringForPrivacy(@"APP_PRIVACY_REPORT");
  [(PUIReportController *)self setTitle:v3];
}

- (BOOL)eitherSourceHasData
{
  v3 = [(PUIReportController *)self reportManager];
  v4 = ([v3 hadDataInLastQuery] & 1) != 0 || -[PUIReportController appAccessHasData](self, "appAccessHasData");

  return v4;
}

- (BOOL)appAccessHasData
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PUIReportAppAccessHasData"];

  return v3;
}

- (void)reloadAppAccessHasDataWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PUIReportController_reloadAppAccessHasDataWithCompletion___block_invoke;
  block[3] = &unk_279BA1038;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __60__PUIReportController_reloadAppAccessHasDataWithCompletion___block_invoke(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v2 = [getPAAccessReaderClass() sharedInstance];
  v3 = [v2 publisherForAll];

  v4 = [MEMORY[0x277D41268] accessPublisherWithoutHiddenOrMissingApps:v3];
  v5 = [MEMORY[0x277D41268] accessPublisherWithoutUnknownCategoryAccesses:v4];

  v6 = [MEMORY[0x277D41268] accessPublisherWithoutOutOfProcessPickerAccesses:v5];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__PUIReportController_reloadAppAccessHasDataWithCompletion___block_invoke_3;
  v11[3] = &unk_279BA20D0;
  v11[4] = v12;
  v7 = [v6 sinkWithCompletion:&__block_literal_global_15 shouldContinue:v11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PUIReportController_reloadAppAccessHasDataWithCompletion___block_invoke_4;
  block[3] = &unk_279BA20F8;
  v10 = v12;
  v9 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v12, 8);
}

uint64_t __60__PUIReportController_reloadAppAccessHasDataWithCompletion___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = _PUILoggingFacility();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v10 = 136315138;
    v11 = "[PUIReportController reloadAppAccessHasDataWithCompletion:]_block_invoke_4";
    v5 = "%s: PAAccessReader has data";
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v10 = 136315138;
    v11 = "[PUIReportController reloadAppAccessHasDataWithCompletion:]_block_invoke";
    v5 = "%s: PAAccessReader has no data";
  }

  _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, v5, &v10, 0xCu);
LABEL_7:

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 setBool:*(*(*(a1 + 40) + 8) + 24) forKey:@"PUIReportAppAccessHasData"];

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, v7);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)isRecordActivityEnabled
{
  v2 = objc_opt_new();
  if ([v2 trackingReportEnabled])
  {
    v3 = [getPAAccessReaderClass() sharedInstance];
    v4 = [v3 loggingEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isRecordActivityEnabled
{
  v2 = [(PUIReportController *)self reportManager];
  if ([v2 trackingReportEnabled])
  {
    v3 = [getPAAccessReaderClass() sharedInstance];
    v4 = [v3 loggingEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)isRecordActivityEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(PUIReportController *)self isRecordActivityEnabled];

  return [v3 numberWithBool:v4];
}

- (void)setRecordActivityEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PUIReportController_setRecordActivityEnabled_specifier___block_invoke;
  aBlock[3] = &unk_279BA1878;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  if ([v6 BOOLValue])
  {
    v8[2](v8, [v6 BOOLValue]);
  }

  else
  {
    v9 = MEMORY[0x277D75110];
    v10 = PUI_LocalizedStringForTrackers(@"STOP_RECORDING_ALERT_TITLE");
    v11 = PUI_LocalizedStringForTrackers(@"STOP_RECORDING_ALERT_MESSAGE");
    v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

    v13 = MEMORY[0x277D750F8];
    v14 = PUI_LocalizedStringForTrackers(@"STOP_RECORDING_ALERT_CANCEL");
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__PUIReportController_setRecordActivityEnabled_specifier___block_invoke_2;
    v22[3] = &unk_279BA1178;
    v22[4] = self;
    v23 = v7;
    v15 = [v13 actionWithTitle:v14 style:1 handler:v22];
    [v12 addAction:v15];

    v16 = MEMORY[0x277D750F8];
    v17 = PUI_LocalizedStringForTrackers(@"STOP_RECORDING_ALERT_OK");
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__PUIReportController_setRecordActivityEnabled_specifier___block_invoke_3;
    v19[3] = &unk_279BA2120;
    v21 = v8;
    v20 = v6;
    v18 = [v16 actionWithTitle:v17 style:0 handler:v19];
    [v12 addAction:v18];

    [(PUIReportController *)self presentViewController:v12 animated:1 completion:0];
  }
}

void __58__PUIReportController_setRecordActivityEnabled_specifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) reportManager];
  [v4 setTrackingReportEnabled:a2];

  v5 = [getPAAccessReaderClass() sharedInstance];
  [v5 setLoggingEnabled:a2];

  if ((a2 & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v6 removeObjectForKey:@"PUIReportAppAccessHasData"];
  }

  [*(a1 + 32) reloadAppAndTrackingData];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"PUIReportActivityEnabledChanged" object:0];
}

uint64_t __58__PUIReportController_setRecordActivityEnabled_specifier___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)didTapSave
{
  [MEMORY[0x277D4D8F0] trackingAppActivitySaved];
  v3 = [(PUIReportController *)self saveAppActivitySpecifier];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PUIActivityButtonCellIsActive"];

  v4 = PUI_LocalizedStringForTrackers(@"SAVING");
  v5 = [(PUIReportController *)self saveAppActivitySpecifier];
  [v5 setName:v4];

  v6 = [(PUIReportController *)self saveAppActivitySpecifier];
  [(PUIReportController *)self reloadSpecifier:v6];

  v7 = [(PUIReportController *)self reportManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__PUIReportController_didTapSave__block_invoke;
  v8[3] = &unk_279BA0B28;
  v8[4] = self;
  [v7 reloadDataWithCompletion:v8];
}

void __33__PUIReportController_didTapSave__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _PUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[PUIReportController didTapSave]_block_invoke";
    _os_log_impl(&dword_2657FE000, v2, OS_LOG_TYPE_DEFAULT, "%s: trackingReportManager export started", buf, 0xCu);
  }

  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PUIReportController_didTapSave__block_invoke_294;
  block[3] = &unk_279BA0B28;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);

  v4 = *MEMORY[0x277D85DE8];
}

void __33__PUIReportController_didTapSave__block_invoke_294(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [getPAAccessReaderClass() fileNameForExport];
  v3 = MEMORY[0x277CBEBC0];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSTemporaryDirectory();
  v6 = [v4 stringWithFormat:@"%@/%@", v5, v2];
  v7 = [v3 fileURLWithPath:v6];

  v8 = [MEMORY[0x277CBEB78] outputStreamWithURL:v7 append:0];
  [v8 open];
  v9 = [getPAAccessReaderClass() sharedInstance];
  v10 = [v9 publisherForAll];

  v11 = [MEMORY[0x277D41268] accessPublisherWithoutHiddenOrMissingApps:v10];
  v12 = [MEMORY[0x277D41268] accessPublisherWithoutUnknownCategoryAccesses:v11];

  v26 = 0;
  [getPAAccessReaderClass() exportFromPublisher:v12 toStream:v8 error:&v26];
  v13 = v26;
  if (v13)
  {
    v14 = _PUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __33__PUIReportController_didTapSave__block_invoke_294_cold_1();
    }
  }

  v15 = [*(a1 + 32) reportManager];
  v25 = 0;
  [v15 exportToStream:v8 error:&v25];
  v16 = v25;

  v17 = _PUILoggingFacility();
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __33__PUIReportController_didTapSave__block_invoke_294_cold_2();
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[PUIReportController didTapSave]_block_invoke";
    _os_log_impl(&dword_2657FE000, v18, OS_LOG_TYPE_DEFAULT, "%s: trackingReportManager export completed", buf, 0xCu);
  }

  [v8 close];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__PUIReportController_didTapSave__block_invoke_299;
  block[3] = &unk_279BA10B0;
  v19 = *(a1 + 32);
  v23 = v7;
  v24 = v19;
  v20 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v21 = *MEMORY[0x277D85DE8];
}

void __33__PUIReportController_didTapSave__block_invoke_299(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D546D8]);
  v22[0] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v4 = [v2 initWithActivityItems:v3 applicationActivities:0];

  v5 = [*(a1 + 40) navigationItem];
  v6 = [v5 rightBarButtonItem];

  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = [v7 navigationItem];
    v9 = [v8 rightBarButtonItem];
    v10 = [v4 popoverPresentationController];
    [v10 setBarButtonItem:v9];
  }

  else
  {
    v11 = [v7 specifierForID:@"SAVE_APP_ACTIVITY"];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D40148]];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [*(a1 + 40) view];
    }

    v8 = v14;

    v9 = [v4 popoverPresentationController];
    [v9 setSourceView:v8];
  }

  v15 = *MEMORY[0x277D54740];
  v21[0] = *MEMORY[0x277D54718];
  v21[1] = v15;
  v16 = *MEMORY[0x277D54780];
  v21[2] = *MEMORY[0x277D54708];
  v21[3] = v16;
  v21[4] = *MEMORY[0x277D54778];
  v21[5] = @"com.apple.reminders.RemindersEditorExtension";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:6];
  [v4 setExcludedActivityTypes:v17];

  v18 = *(a1 + 40);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __33__PUIReportController_didTapSave__block_invoke_2;
  v20[3] = &unk_279BA0B28;
  v20[4] = v18;
  [v18 presentViewController:v4 animated:1 completion:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __33__PUIReportController_didTapSave__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) saveAppActivitySpecifier];
  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"PUIActivityButtonCellIsActive"];

  v3 = PUI_LocalizedStringForTrackers(@"SAVE_APP_ACTIVITY");
  v4 = [*(a1 + 32) saveAppActivitySpecifier];
  [v4 setName:v3];

  v5 = *(a1 + 32);
  v6 = [v5 saveAppActivitySpecifier];
  [v5 reloadSpecifier:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v20.receiver = self;
  v20.super_class = PUIReportController;
  v6 = a4;
  v7 = [(PUIReportController *)&v20 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(PUIReportController *)self specifierAtIndexPath:v6, v20.receiver, v20.super_class];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = *MEMORY[0x277D3FFB8];
  if (isKindOfClass)
  {
    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277D3FFB8]];
    v12 = [v11 isEqualToString:@"DISABLE_REPORT"];

    if (v12)
    {
      v13 = v7;
      if ([v13 type] == 13)
      {
        v14 = [MEMORY[0x277D75348] systemRedColor];
        v15 = [v13 textLabel];
        [v15 setTextColor:v14];

        goto LABEL_9;
      }
    }
  }

  v16 = [v8 objectForKeyedSubscript:v10];
  v17 = [v16 isEqualToString:@"ONBOARDING"];

  if (v17)
  {
    [v7 setSeparatorInset:{0.0, 0.0, 0.0, 0.0}];
  }

  v18 = v7;
LABEL_9:

  return v7;
}

void __33__PUIReportController_didTapSave__block_invoke_294_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_2657FE000, v0, OS_LOG_TYPE_ERROR, "%s: PAAccessReader error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __33__PUIReportController_didTapSave__block_invoke_294_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_2657FE000, v0, OS_LOG_TYPE_ERROR, "%s: trackingReportManager export error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end