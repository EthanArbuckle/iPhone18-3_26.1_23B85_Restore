@interface PUILockdownModeController
- (PUILockdownModeController)init;
- (id)_2GEnabled:(id)a3;
- (id)lockdownModeOptionsSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dataDidChange;
- (void)didTapEnableLockdownModeButton:(id)a3;
- (void)didTapOnboardingLockdownModeButton;
- (void)getEligibleDevicesWithCompletion:(id)a3;
- (void)init;
- (void)openLearnMorePage;
- (void)presentConfirmationAlert:(id)a3 hasPairedWatch:(BOOL)a4;
- (void)presentErrorAlert;
- (void)presentOnboardingController;
- (void)provideNavigationDonations;
- (void)refreshLinkStatusInParent;
- (void)set2GEnabled:(id)a3 specifier:(id)a4;
- (void)updateSpecifiersForImposedSettings;
@end

@implementation PUILockdownModeController

- (PUILockdownModeController)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PUILockdownModeController;
  v2 = [(PUILockdownModeController *)&v16 init];
  if (v2)
  {
    [(PUILockdownModeController *)v2 setLockdownModeEnabled:+[PUILockdownModeUtilities isLockdownModeEnabled]];
    if ([(PUILockdownModeController *)v2 lockdownModeEnabled])
    {
      v3 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:0];
      [(PUILockdownModeController *)v2 setClient:v3];

      v4 = [(PUILockdownModeController *)v2 client];
      v15 = 0;
      v5 = [v4 get2GSwitchEnabledSync:&v15];
      v6 = v15;
      [(PUILockdownModeController *)v2 setHas2GSupport:v5];

      if (v6)
      {
        v7 = _PUILoggingFacility();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [PUILockdownModeController init];
        }
      }

      if ([(PUILockdownModeController *)v2 has2GSupport])
      {
        v8 = [(PUILockdownModeController *)v2 client];
        v14 = v6;
        v9 = [v8 get2GUserPreferenceSync:&v14];
        v10 = v14;

        [(PUILockdownModeController *)v2 set_2GEnabled:v9];
        if (v10)
        {
          v11 = _PUILoggingFacility();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v18 = v10;
            _os_log_impl(&dword_2657FE000, v11, OS_LOG_TYPE_DEFAULT, "Error getting if 2G is enabled: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v10 = v6;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = PUI_BundleForPrivacySettingsFramework();
  v4 = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"LOCKDOWN_MODE" table:@"LockdownMode" locale:v6 bundleURL:v4];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:v9 bundleURL:v4];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCKDOWN_MODE"];
  [(PUILockdownModeController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.privacy" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)refreshLinkStatusInParent
{
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD08]));
  [WeakRetained reloadSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
}

- (void)dataDidChange
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__PUILockdownModeController_dataDidChange__block_invoke;
  v2[3] = &unk_279BA0B00;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __42__PUILockdownModeController_dataDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)updateSpecifiersForImposedSettings
{
  if ([(PUILockdownModeController *)self lockdownModeEnabled]&& [(PUILockdownModeController *)self indexOfSpecifierID:@"LOCKDOWN_MODE_OPTIONS_GROUP"]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(PUILockdownModeController *)self lockdownModeOptionsSpecifiers];
    [(PUILockdownModeController *)self addSpecifiersFromArray:v3 animated:0];
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = +[PUILockdownModeUtilities getCanSetLockdownMode];
    v7 = [(PUILockdownModeController *)self traitCollection];
    v8 = [v7 pe_isSettingsFeatureDescriptionCellSupported];

    if (v8)
    {
      v9 = MEMORY[0x277D3FAD8];
      v10 = PUI_LocalizedStringForLockdownMode(@"LOCKDOWN_MODE");
      v11 = [v9 preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

      [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
      v12 = MEMORY[0x277CCACA8];
      v13 = PUI_LocalizedStringForLockdownMode(@"ONBOARDING_CELL_DETAIL");
      v14 = getLocalizedDeviceName();
      v15 = [v12 stringWithFormat:v13, v14];

      v16 = PUI_LocalizedStringForLockdownMode(@"ONBOARDING_CELL_LINK");
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ [%@](https://support.apple.com/kb/HT212650)", v15, v16];
      [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277D40160]];
      [v11 setObject:@"com.apple.graphic-icon.privacy" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __39__PUILockdownModeController_specifiers__block_invoke;
      v26[3] = &unk_279BA0B50;
      v26[4] = self;
      [v11 setSettingsFeatureDescriptionURLAction:v26];
      [v5 addObject:v11];
    }

    v18 = [(PUILockdownModeController *)self lockdownModeEnabled];
    v19 = MEMORY[0x277D3FAD8];
    if (v18)
    {
      v20 = PUI_LocalizedStringForLockdownMode(@"STATE_SPECIFIER_TURN_OFF");
      v21 = [v19 deleteButtonSpecifierWithName:v20 target:self action:sel_didTapOnboardingLockdownModeButton];
    }

    else
    {
      v22 = PUI_LocalizedStringForLockdownMode(@"STATE_SPECIFIER_TURN_ON");
      v21 = [v19 preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v21 setObject:&unk_28772B270 forKeyedSubscript:*MEMORY[0x277D3FD78]];
      [v21 setButtonAction:sel_didTapOnboardingLockdownModeButton];
    }

    v23 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    [v21 setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FF38]];

    [v5 addObject:v21];
    v24 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

void __39__PUILockdownModeController_specifiers__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PUILockdownModeController_specifiers__block_invoke_2;
  block[3] = &unk_279BA0B28;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)lockdownModeOptionsSpecifiers
{
  v62[8] = *MEMORY[0x277D85DE8];
  v3 = [(PUILockdownModeController *)self _lockdownModeOptionsSpecifiers];

  if (!v3)
  {
    v48 = objc_opt_new();
    v50 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LOCKDOWN_MODE_OPTIONS_GROUP"];
    [v48 addObject:?];
    v4 = getLocalizedDeviceName();
    v47 = PUI_LocalizedStringForLockdownMode(@"SECTION_MESSAGES_HEADER");
    v61[0] = v47;
    v46 = PUI_LocalizedStringForLockdownMode(@"SECTION_MESSAGES_CONTENT");
    v61[1] = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    v62[0] = v45;
    v44 = PUI_LocalizedStringForLockdownMode(@"SECTION_FACETIME_HEADER");
    v60[0] = v44;
    v43 = PUI_LocalizedStringForLockdownMode(@"SECTION_FACETIME_CONTENT");
    v60[1] = v43;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    v62[1] = v42;
    v41 = PUI_LocalizedStringForLockdownMode(@"SECTION_WEB_HEADER");
    v59[0] = v41;
    v40 = PUI_LocalizedStringForLockdownMode(@"SECTION_WEB_CONTENT");
    v59[1] = v40;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    v62[2] = v39;
    v38 = PUI_LocalizedStringForLockdownMode(@"SECTION_SHARED_ALBUMS_HEADER");
    v58[0] = v38;
    v37 = PUI_LocalizedStringForLockdownMode(@"SECTION_SHARED_ALBUMS_CONTENT");
    v58[1] = v37;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
    v62[3] = v36;
    v35 = PUI_LocalizedStringForLockdownMode(@"SECTION_USB_HEADER");
    v57[0] = v35;
    v5 = MEMORY[0x277CCACA8];
    v34 = PUI_LocalizedStringForLockdownMode(@"SECTION_USB_CONTENT");
    v33 = [v5 stringWithFormat:v34, v4];
    v57[1] = v33;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
    v62[4] = v32;
    v31 = PUI_LocalizedStringForLockdownMode(@"SECTION_WIRELESS_CONNECTIVITY_HEADER");
    v56[0] = v31;
    [(PUILockdownModeController *)self has2GSupport];
    v30 = SFLocalizableWAPIStringKeyForKey();
    v29 = PUI_LocalizedStringForLockdownMode(v30);
    v56[1] = v29;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    v62[5] = v6;
    v7 = PUI_LocalizedStringForLockdownMode(@"SECTION_REMOTE_HEADER");
    v55[0] = v7;
    v8 = MEMORY[0x277CCACA8];
    v9 = PUI_LocalizedStringForLockdownMode(@"SECTION_REMOTE_CONTENT");
    v49 = v4;
    v10 = [v8 stringWithFormat:v9, v4];
    v55[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v62[6] = v11;
    v12 = PUI_LocalizedStringForLockdownMode(@"SECTION_PROFILES_HEADER");
    v54[0] = v12;
    v13 = PUI_LocalizedStringForLockdownMode(@"SECTION_PROFILES_CONTENT");
    v54[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
    v62[7] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:8];

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __58__PUILockdownModeController_lockdownModeOptionsSpecifiers__block_invoke;
    v51[3] = &unk_279BA0B78;
    v51[4] = self;
    v16 = v15;
    v52 = v16;
    v17 = v48;
    v53 = v17;
    [v16 enumerateObjectsUsingBlock:v51];
    v18 = MEMORY[0x277D3FAD8];
    v19 = PUI_LocalizedStringForLockdownMode(@"WEB_CONTENT");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v17 addObject:v20];
    if ([(PUILockdownModeController *)self has2GSupport])
    {
      v21 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:&stru_28771E540];
      v22 = PUI_LocalizedStringForLockdownMode(@"ENABLE_CELLULAR_FOOTER");
      [v21 setProperty:v22 forKey:*MEMORY[0x277D3FF88]];

      [v17 addObject:v21];
      v23 = MEMORY[0x277D3FAD8];
      v24 = PUI_LocalizedStringForLockdownMode(@"ENABLE_CELLULAR");
      v25 = [v23 preferenceSpecifierNamed:v24 target:self set:sel_set2GEnabled_specifier_ get:sel__2GEnabled_ detail:0 cell:6 edit:0];

      [v25 setIdentifier:@"Enable_2G"];
      [v25 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
      [v17 addObject:v25];
    }

    [(PUILockdownModeController *)self set_lockdownModeOptionsSpecifiers:v17];
  }

  v26 = [(PUILockdownModeController *)self _lockdownModeOptionsSpecifiers];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __58__PUILockdownModeController_lockdownModeOptionsSpecifiers__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v8 = [v5 objectAtIndexedSubscript:0];
  v6 = [v5 objectAtIndexedSubscript:1];

  v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:*(a1 + 32) set:0 get:0 detail:0 cell:-1 edit:0];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D40170]];
  [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277D40160]];
  [v7 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
  if ([*(a1 + 40) count] - 1 > a3)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PUITableCellNoSeparator"];
  }

  [*(a1 + 48) addObject:v7];
}

- (void)openLearnMorePage
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getSFSafariViewControllerClass_softClass;
  v14 = getSFSafariViewControllerClass_softClass;
  if (!getSFSafariViewControllerClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getSFSafariViewControllerClass_block_invoke;
    v10[3] = &unk_279BA0D08;
    v10[4] = &v11;
    __getSFSafariViewControllerClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/kb/HT212650"];
  v7 = [v5 initWithURL:v6];

  v8 = [(PUILockdownModeController *)self presentedViewController];

  if (v8)
  {
    v9 = [(PUILockdownModeController *)self presentedViewController];
    [v9 presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [(PUILockdownModeController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)didTapOnboardingLockdownModeButton
{
  if ([(PUILockdownModeController *)self lockdownModeEnabled])
  {

    [(PUILockdownModeController *)self presentConfirmationAlert:0 hasPairedWatch:0];
  }

  else
  {

    [(PUILockdownModeController *)self presentOnboardingController];
  }
}

- (void)set2GEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 propertyForKey:*MEMORY[0x277D401A8]];
  if (([v6 isEqual:v8] & 1) == 0)
  {
    objc_initWeak(location, self);
    if ([v6 BOOLValue])
    {
      v9 = PUI_LocalizedStringForLockdownMode(@"CELLULAR_ALERT_ENABLE_TITLE");
      v21 = PUI_LocalizedStringForLockdownMode(@"CELLULAR_ALERT_ENABLE_MESSAGE");
      v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v21 preferredStyle:1];
      v11 = MEMORY[0x277D750F8];
      v12 = PUI_LocalizedStringForLockdownMode(@"CELLULAR_ALERT_ENABLE_BUTTON");
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke;
      v30[3] = &unk_279BA0BC8;
      v30[4] = self;
      v13 = v7;
      v31 = v13;
      v14 = v8;
      v32 = v14;
      objc_copyWeak(&v33, location);
      v15 = [v11 actionWithTitle:v12 style:2 handler:v30];
      [v10 addAction:v15];

      v16 = MEMORY[0x277D750F8];
      v17 = PUI_LocalizedStringForLockdownMode(@"CANCEL");
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_148;
      v26[3] = &unk_279BA0BF0;
      v27 = v13;
      v28 = v14;
      objc_copyWeak(&v29, location);
      v18 = [v16 actionWithTitle:v17 style:1 handler:v26];
      [v10 addAction:v18];

      [(PUILockdownModeController *)self presentViewController:v10 animated:1 completion:0];
      objc_destroyWeak(&v29);

      objc_destroyWeak(&v33);
      v19 = v9;
    }

    else
    {
      v20 = [(PUILockdownModeController *)self client];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_149;
      v22[3] = &unk_279BA0BA0;
      v23 = v7;
      v24 = v8;
      objc_copyWeak(&v25, location);
      [v20 set2GUserPreference:0 completion:v22];

      objc_destroyWeak(&v25);
      v19 = v23;
    }

    objc_destroyWeak(location);
  }
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] client];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2;
  v5[3] = &unk_279BA0BA0;
  v6 = a1[5];
  v7 = a1[6];
  objc_copyWeak(&v8, a1 + 7);
  [v4 set2GUserPreference:1 completion:v5];

  objc_destroyWeak(&v8);
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_cold_1();
    }

    [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D401A8]];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
  }
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_148(uint64_t a1)
{
  [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D401A8]];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_149(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_149_cold_1();
    }

    [*(a1 + 32) setProperty:*(a1 + 40) forKey:*MEMORY[0x277D401A8]];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained reloadSpecifier:*(a1 + 32) animated:1];
  }
}

- (id)_2GEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(PUILockdownModeController *)self _2GEnabled];

  return [v3 numberWithBool:v4];
}

- (void)didTapEnableLockdownModeButton:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__PUILockdownModeController_didTapEnableLockdownModeButton___block_invoke;
  v3[3] = &unk_279BA0C18;
  v3[4] = self;
  [(PUILockdownModeController *)self getEligibleDevicesWithCompletion:v3];
}

- (void)presentOnboardingController
{
  v3 = getLocalizedDeviceName();
  v4 = objc_alloc(MEMORY[0x277D37688]);
  v5 = PUI_LocalizedStringForLockdownMode(@"LOCKDOWN_MODE");
  v6 = MEMORY[0x277CCACA8];
  v7 = PUI_LocalizedStringForLockdownMode(@"ONBOARDING_UI_DETAIL");
  v8 = [v6 stringWithFormat:v7, v3];
  v9 = [v4 initWithTitle:v5 detailText:v8 symbolName:0 contentLayout:2];

  v10 = PUI_LocalizedStringForLockdownMode(@"SECTION_MESSAGES_HEADER");
  v11 = PUI_LocalizedStringForLockdownMode(@"SECTION_MESSAGES_CONTENT");
  [v9 addSectionWithHeader:v10 content:v11];

  v12 = PUI_LocalizedStringForLockdownMode(@"SECTION_FACETIME_HEADER");
  v13 = PUI_LocalizedStringForLockdownMode(@"SECTION_FACETIME_CONTENT");
  [v9 addSectionWithHeader:v12 content:v13];

  v14 = PUI_LocalizedStringForLockdownMode(@"SECTION_WEB_HEADER");
  v15 = PUI_LocalizedStringForLockdownMode(@"SECTION_WEB_CONTENT");
  [v9 addSectionWithHeader:v14 content:v15];

  v16 = PUI_LocalizedStringForLockdownMode(@"SECTION_SHARED_ALBUMS_HEADER");
  v17 = PUI_LocalizedStringForLockdownMode(@"SECTION_SHARED_ALBUMS_CONTENT");
  [v9 addSectionWithHeader:v16 content:v17];

  v18 = PUI_LocalizedStringForLockdownMode(@"SECTION_USB_HEADER");
  v19 = MEMORY[0x277CCACA8];
  v20 = PUI_LocalizedStringForLockdownMode(@"SECTION_USB_CONTENT");
  v21 = [v19 stringWithFormat:v20, v3];
  [v9 addSectionWithHeader:v18 content:v21];

  v22 = PUI_LocalizedStringForLockdownMode(@"SECTION_WIRELESS_CONNECTIVITY_HEADER");
  +[PUILockdownModeCTCapabilities supportsBB2GMitigation];
  v23 = SFLocalizableWAPIStringKeyForKey();
  v24 = PUI_LocalizedStringForLockdownMode(v23);
  [v9 addSectionWithHeader:v22 content:v24];

  v25 = PUI_LocalizedStringForLockdownMode(@"SECTION_REMOTE_HEADER");
  v26 = PUI_LocalizedStringForLockdownMode(@"SECTION_REMOTE_CONTENT");
  [v9 addSectionWithHeader:v25 content:v26];

  v27 = PUI_LocalizedStringForLockdownMode(@"SECTION_PROFILES_HEADER");
  v28 = MEMORY[0x277CCACA8];
  v29 = PUI_LocalizedStringForLockdownMode(@"SECTION_PROFILES_CONTENT");
  v30 = [v28 stringWithFormat:v29, v3];
  [v9 addSectionWithHeader:v27 content:v30];

  v31 = [MEMORY[0x277D37650] linkButton];
  v32 = PUI_LocalizedStringForLockdownMode(@"ENABLE_LOCKDOWN_MODE");
  [v31 setTitle:v32 forState:0];

  [v31 addTarget:self action:sel_didTapEnableLockdownModeButton_ forEvents:0x2000];
  v33 = [v9 buttonTray];
  [v33 addButton:v31];

  v34 = objc_alloc(MEMORY[0x277D751E0]);
  v35 = MEMORY[0x277D750C8];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __56__PUILockdownModeController_presentOnboardingController__block_invoke;
  v41[3] = &unk_279BA0C40;
  v42 = v9;
  v36 = v9;
  v37 = [v35 actionWithHandler:v41];
  v38 = [v34 initWithBarButtonSystemItem:1 primaryAction:v37];

  v39 = [v36 navigationItem];
  [v39 setLeftBarButtonItem:v38];

  v40 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v36];
  [(PUILockdownModeController *)self presentModalViewController:v40 withTransition:3];
}

void __56__PUILockdownModeController_presentOnboardingController__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentConfirmationAlert:(id)a3 hasPairedWatch:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUILockdownModeController *)self lockdownModeEnabled];
  v34 = !v7;
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 sf_isiPhone];

  v10 = getLocalizedDeviceName();
  if (v7)
  {
    v11 = @"CONFIRM_ALERT_DISABLE_TITLE";
  }

  else
  {
    v11 = @"CONFIRM_ALERT_ENABLE_TITLE";
  }

  v12 = PUI_LocalizedStringForLockdownMode(v11);
  if (v6 && [v6 count])
  {
    v13 = v4 & v9;
    v14 = @"CONFIRM_ALERT_ENABLE_ALL_DEVICES_MESSAGE";
    v15 = MEMORY[0x277CCACA8];
    v16 = !v7;
    v17 = @"CONFIRM_ALERT_ENABLE_ALL_DEVICES_WITH_WATCH_MESSAGE";
    if (v7)
    {
      v14 = @"CONFIRM_ALERT_DISABLE_ALL_DEVICES_MESSAGE";
    }

    v18 = @"CONFIRM_ALERT_DISABLE_ALL_DEVICES_WITH_WATCH_MESSAGE";
  }

  else
  {
    v13 = v4 & v9;
    v14 = @"CONFIRM_ALERT_ENABLE_MESSAGE";
    v15 = MEMORY[0x277CCACA8];
    v16 = !v7;
    v17 = @"CONFIRM_ALERT_ENABLE_WITH_WATCH_MESSAGE";
    if (v7)
    {
      v14 = @"CONFIRM_ALERT_DISABLE_MESSAGE";
    }

    v18 = @"CONFIRM_ALERT_DISABLE_WITH_WATCH_MESSAGE";
  }

  if (v16)
  {
    v18 = v17;
  }

  if (v13 == 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  v20 = PUI_LocalizedStringForLockdownMode(v19);
  v21 = [v15 stringWithFormat:v20, v10];

  v22 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v21 preferredStyle:1];
  if (v7)
  {
    v23 = @"CONFIRM_ALERT_DISABLE_BUTTON";
  }

  else
  {
    v23 = @"CONFIRM_ALERT_ENABLE_BUTTON";
  }

  if (v7)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  v25 = PUI_LocalizedStringForLockdownMode(v23);
  v26 = MEMORY[0x277D750F8];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:v25, v10];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __69__PUILockdownModeController_presentConfirmationAlert_hasPairedWatch___block_invoke;
  v35[3] = &unk_279BA0C68;
  v35[4] = self;
  v36 = v34;
  v28 = [v26 actionWithTitle:v27 style:v24 handler:v35];
  [v22 addAction:v28];

  v29 = MEMORY[0x277D750F8];
  v30 = PUI_LocalizedStringForLockdownMode(@"CANCEL");
  v31 = [v29 actionWithTitle:v30 style:1 handler:0];
  [v22 addAction:v31];

  v32 = [(PUILockdownModeController *)self presentedViewController];

  if (v32)
  {
    v33 = [(PUILockdownModeController *)self presentedViewController];
    [v33 presentViewController:v22 animated:1 completion:0];
  }

  else
  {
    [(PUILockdownModeController *)self presentViewController:v22 animated:1 completion:0];
  }
}

- (void)presentErrorAlert
{
  v3 = [(PUILockdownModeController *)self lockdownModeEnabled];
  v4 = !v3;
  if (v3)
  {
    v5 = @"ERROR_ALERT_DISABLE_TITLE";
  }

  else
  {
    v5 = @"ERROR_ALERT_ENABLE_TITLE";
  }

  if (v4)
  {
    v6 = @"ERROR_ALERT_ENABLE_MESSAGE";
  }

  else
  {
    v6 = @"ERROR_ALERT_DISABLE_MESSAGE";
  }

  v17 = PUI_LocalizedStringForLockdownMode(v5);
  v7 = MEMORY[0x277CCACA8];
  v8 = PUI_LocalizedStringForLockdownMode(v6);
  v9 = getLocalizedDeviceName();
  v10 = [v7 stringWithFormat:v8, v9];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v17 message:v10 preferredStyle:1];
  v12 = MEMORY[0x277D750F8];
  v13 = PUI_LocalizedStringForLockdownMode(@"OK");
  v14 = [v12 actionWithTitle:v13 style:1 handler:0];
  [v11 addAction:v14];

  v15 = [(PUILockdownModeController *)self presentedViewController];

  if (v15)
  {
    v16 = [(PUILockdownModeController *)self presentedViewController];
    [v16 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    [(PUILockdownModeController *)self presentViewController:v11 animated:1 completion:0];
  }
}

void __66__PUILockdownModeController_setLockdownModeEnabled_forAllDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__PUILockdownModeController_setLockdownModeEnabled_forAllDevices___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__PUILockdownModeController_setLockdownModeEnabled_forAllDevices___block_invoke_218;
    block[3] = &unk_279BA0B28;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)getEligibleDevicesWithCompletion:(id)a3
{
  v69[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CB8F48] defaultStore];
  v5 = [v4 aa_primaryAppleAccount];
  v6 = PUIGetActivePairedDevice();
  v7 = v6;
  v8 = v6 != 0;
  if (v5)
  {
    v9 = [v5 aa_altDSID];
    v10 = [v4 aa_authKitAccountForAltDSID:v9];
    if ([v10 aa_needsToVerifyTerms])
    {
      goto LABEL_14;
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x2050000000;
    v11 = getAKAccountManagerClass_softClass;
    v68 = getAKAccountManagerClass_softClass;
    if (!getAKAccountManagerClass_softClass)
    {
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = __getAKAccountManagerClass_block_invoke;
      v63 = &unk_279BA0D08;
      v64 = &v65;
      __getAKAccountManagerClass_block_invoke(&v60);
      v11 = v66[3];
    }

    v12 = v11;
    _Block_object_dispose(&v65, 8);
    v13 = [v11 sharedInstance];
    v14 = [v13 securityLevelForAccount:v10] == 4;

    if (!v14)
    {
LABEL_14:
      v3[2](v3, 0, v7 != 0);
    }

    else
    {
      v65 = 0;
      v66 = &v65;
      v67 = 0x2050000000;
      v15 = getAKDeviceListRequestContextClass_softClass;
      v68 = getAKDeviceListRequestContextClass_softClass;
      if (!getAKDeviceListRequestContextClass_softClass)
      {
        v60 = MEMORY[0x277D85DD0];
        v61 = 3221225472;
        v62 = __getAKDeviceListRequestContextClass_block_invoke;
        v63 = &unk_279BA0D08;
        v64 = &v65;
        __getAKDeviceListRequestContextClass_block_invoke(&v60);
        v15 = v66[3];
      }

      v16 = v15;
      _Block_object_dispose(&v65, 8);
      v47 = objc_alloc_init(v15);
      [v47 setAltDSID:v9];
      [v47 setIncludeFamilyDevices:0];
      [v47 setIncludeUntrustedDevices:0];
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v17 = getAKServiceNameiCloudSymbolLoc_ptr;
      v68 = getAKServiceNameiCloudSymbolLoc_ptr;
      if (!getAKServiceNameiCloudSymbolLoc_ptr)
      {
        v60 = MEMORY[0x277D85DD0];
        v61 = 3221225472;
        v62 = __getAKServiceNameiCloudSymbolLoc_block_invoke;
        v63 = &unk_279BA0D08;
        v64 = &v65;
        v18 = AuthKitLibrary();
        v19 = dlsym(v18, "AKServiceNameiCloud");
        *(v64[1] + 24) = v19;
        getAKServiceNameiCloudSymbolLoc_ptr = *(v64[1] + 24);
        v17 = v66[3];
      }

      _Block_object_dispose(&v65, 8);
      if (!v17)
      {
        [PUILockdownModeController getEligibleDevicesWithCompletion:];
        __break(1u);
      }

      v69[0] = *v17;
      v20 = MEMORY[0x277CBEA60];
      v21 = v69[0];
      v22 = [v20 arrayWithObjects:v69 count:1];

      [v47 setServices:v22];
      [v47 setOperatingSystems:&unk_28772B5A0];
      v23 = MGCopyAnswer();
      v46 = v8;
      v58[0] = 0;
      v58[1] = v58;
      v58[2] = 0x2020000000;
      v59 = 0;
      v24 = [MEMORY[0x277CBEB18] array];
      v45 = v9;
      v32 = dispatch_semaphore_create(0);
      v65 = 0;
      v66 = &v65;
      v67 = 0x2050000000;
      v33 = getAKAppleIDAuthenticationControllerClass_softClass;
      v68 = getAKAppleIDAuthenticationControllerClass_softClass;
      if (!getAKAppleIDAuthenticationControllerClass_softClass)
      {
        v60 = MEMORY[0x277D85DD0];
        v61 = 3221225472;
        v62 = __getAKAppleIDAuthenticationControllerClass_block_invoke;
        v63 = &unk_279BA0D08;
        v64 = &v65;
        __getAKAppleIDAuthenticationControllerClass_block_invoke(&v60, v25, v26, v27, v28, v29, v30, v31, v43);
        v33 = v66[3];
      }

      v34 = v24;
      v35 = v23;
      v36 = v33;
      _Block_object_dispose(&v65, 8);
      v37 = objc_alloc_init(v33);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke;
      v53[3] = &unk_279BA0CB8;
      v38 = v32;
      v54 = v38;
      v44 = v35;
      v55 = v44;
      v39 = v34;
      v56 = v39;
      v57 = v58;
      [v37 fetchDeviceListWithContext:v47 completion:v53];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_237;
      block[3] = &unk_279BA0CE0;
      v49 = v38;
      v50 = v39;
      v51 = v3;
      v52 = v46;
      v40 = v39;
      v41 = v38;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v9 = v45;
      _Block_object_dispose(v58, 8);
    }
  }

  else
  {
    v3[2](v3, 0, v6 != 0);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_cold_1();
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v45 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v52 objects:v57 count:16];
    v46 = v8;
    if (v10)
    {
      v11 = v10;
      v12 = *v53;
      do
      {
        v13 = 0;
        v47 = v11;
        do
        {
          if (*v53 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v52 + 1) + 8 * v13);
          v15 = [v14 serialNumber];
          v16 = v15;
          if (v15 && ([v15 isEqualToString:*(a1 + 40)] & 1) == 0)
          {
            v17 = [v8 objectForKeyedSubscript:*(a1 + 40)];
            if (!v17)
            {
              goto LABEL_14;
            }

            v18 = [v14 lastUpdatedDate];
            [v17 lastUpdatedDate];
            v19 = v12;
            v20 = a1;
            v22 = v21 = v9;
            v23 = [v18 compare:v22];

            v9 = v21;
            a1 = v20;
            v12 = v19;
            v11 = v47;

            v8 = v46;
            if (v23 == 1)
            {
LABEL_14:
              [v8 setObject:v14 forKeyedSubscript:v16];
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v11);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v24 = [v8 allValues];
    v25 = [v24 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v49;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v48 + 1) + 8 * i);
          v30 = [v29 lastUpdatedDate];
          [v30 timeIntervalSinceNow];
          v32 = v31 / 86400.0;

          if (v32 <= 7.0)
          {
            v33 = [v29 operatingSystemVersion];
            v34 = [v33 componentsSeparatedByString:@"."];

            v35 = [v34 firstObject];
            v36 = [v35 integerValue];

            v37 = [v29 operatingSystemName];
            v38 = [v37 isEqualToString:@"iOS"];

            if (v38)
            {
              v39 = v36 < 17;
            }

            else
            {
              v39 = 1;
            }

            if (!v39)
            {
              [*(a1 + 48) addObject:v29];
            }

            v40 = [v29 operatingSystemName];
            v41 = [v40 isEqualToString:@"macOS"];

            if (v41 && v36 >= 14)
            {
              [*(a1 + 48) addObject:v29];
            }

            v42 = [v29 operatingSystemName];
            if ([v42 isEqualToString:@"watchOS"] && v36 >= 10)
            {
              v43 = *(*(*(a1 + 56) + 8) + 24);

              if ((v43 & 1) == 0)
              {
                [*(a1 + 48) addObject:v29];
                *(*(*(a1 + 56) + 8) + 24) = 1;
              }
            }

            else
            {
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v26);
    }

    dispatch_semaphore_signal(*(a1 + 32));
    v6 = 0;
    v5 = v45;
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_237(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(*(a1 + 32), v2))
  {
    v3 = _PUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_237_cold_1(v3);
    }
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return (*(*(a1 + 48) + 16))();
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = PUILockdownModeController;
  v6 = a4;
  v7 = [(PUILockdownModeController *)&v13 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(PUILockdownModeController *)self specifierAtIndexPath:v6, v13.receiver, v13.super_class];

  v9 = [v8 propertyForKey:*MEMORY[0x277D3FE58]];
  LODWORD(v6) = [v9 isEqual:objc_opt_class()];

  if (v6)
  {
    v10 = [v7 detailTextLabel];
    [v10 setNumberOfLines:0];
  }

  v11 = [v8 propertyForKey:@"PUITableCellNoSeparator"];

  if (v11)
  {
    [v7 setSeparatorInset:{0.0, 0.0, 0.0, 1.79769313e308}];
  }

  return v7;
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2657FE000, v0, v1, "Error getting if 2G is supported: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2657FE000, v0, v1, "Error enabling 2G: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__PUILockdownModeController_set2GEnabled_specifier___block_invoke_2_149_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2657FE000, v0, v1, "Error disabling 2G: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__PUILockdownModeController_setLockdownModeEnabled_forAllDevices___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2657FE000, v0, v1, "Error setting Lockdown Mode state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getEligibleDevicesWithCompletion:.cold.1()
{
  dlerror();
  abort_report_np();
  __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_cold_1();
}

void __62__PUILockdownModeController_getEligibleDevicesWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2657FE000, v0, v1, "Error fetching device list: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end