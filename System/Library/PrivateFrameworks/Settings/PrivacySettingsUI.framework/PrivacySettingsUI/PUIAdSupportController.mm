@interface PUIAdSupportController
- (BOOL)personalizedAdsAvailable;
- (BOOL)personalizedAdsConsented;
- (id)personalizedAdsEnabled:(id)a3;
- (id)personalizedAdsSwitchEnabled;
- (id)specifiers;
- (void)provideNavigationDonations;
- (void)setPersonalizedAdsEnabled:(id)a3 specifier:(id)a4;
- (void)userDidTapAdPreferences:(id)a3;
- (void)userDidTapLearnMoreLink:(id)a3;
- (void)userTransparencyViewControllerDidLoad:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation PUIAdSupportController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(PUIAdSupportController *)self adTrackingTransparency];

    if (!v5)
    {
      v6 = objc_opt_new();
      [(PUIAdSupportController *)self setAdTrackingTransparency:v6];
    }

    v7 = objc_opt_new();
    v8 = [(PUIAdSupportController *)self personalizedAdsAvailable];
    v9 = MEMORY[0x277D3FF50];
    if (v8)
    {
      v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"AD_PRIVACY_HEADER"];
      v11 = PUI_LocalizedStringForAdSupport(@"AD_PRIVACY_FOOTER_LINK");
      v12 = MEMORY[0x277CCACA8];
      v13 = PUI_LocalizedStringForAdSupport(@"AD_PRIVACY_FOOTER");
      v47 = v11;
      v48 = [v12 stringWithFormat:v13, v11];

      v14 = MEMORY[0x277CCACA8];
      v15 = PUI_LocalizedStringForAdSupport(@"APPLE_DELIVERED_ADVERTISING");
      [v15 localizedUppercaseString];
      v16 = v49 = v3;
      v17 = [v14 stringWithFormat:@"%@\n\n%@", v16, v48];

      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v10 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF48]];

      [v10 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF70]];
      v51.location = [v17 rangeOfString:v11];
      v20 = NSStringFromRange(v51);
      [v10 setObject:v20 forKeyedSubscript:*MEMORY[0x277D3FF58]];

      v21 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v10 setObject:v21 forKeyedSubscript:*MEMORY[0x277D3FF68]];

      [v10 setObject:@"userDidTapLearnMoreLink:" forKeyedSubscript:*v9];
      [v7 addObject:v10];
      v22 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"VIEW_AD_TARGETING_INFORMATION_GROUP"];
      v23 = PUI_LocalizedStringForAdSupport(@"VIEW_AD_TARGETING_INFORMATION_FOOTER");
      [v22 setObject:v23 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      [v7 addObject:v22];
      v24 = MEMORY[0x277D3FAD8];
      PUI_LocalizedStringForAdSupport(@"VIEW_AD_TARGETING_INFORMATION");
      v26 = v25 = v9;
      v27 = [v24 preferenceSpecifierNamed:v26 target:self set:0 get:0 detail:0 cell:13 edit:0];

      v9 = v25;
      [v27 setIdentifier:@"VIEW_AD_TARGETING_INFORMATION"];
      [v27 setButtonAction:sel_userDidTapAdPreferences_];
      [v27 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
      [v7 addObject:v27];

      v3 = v49;
    }

    v28 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PERSONALIZED_ADS_GROUP"];
    v29 = [(PUIAdSupportController *)self adTrackingTransparency];
    v30 = [v29 shouldShowPersonalizedAdsToggle];

    if ([(PUIAdSupportController *)self personalizedAdsAvailable])
    {
      if (!v30)
      {
        v44 = PUI_LocalizedStringForAdSupport(@"PERSONALIZED_ADS_NO_CONSENT");
        [v28 setObject:v44 forKeyedSubscript:*MEMORY[0x277D3FF88]];

        [v7 addObject:v28];
        goto LABEL_12;
      }

      v31 = PUI_LocalizedStringForAdSupport(@"PERSONALIZED_ADS_FOOTER");
      [v28 setObject:v31 forKeyedSubscript:*MEMORY[0x277D3FF88]];

      [v7 addObject:v28];
    }

    else
    {
      v32 = PUI_LocalizedStringForAdSupport(@"PERSONALIZED_ADS_UNAVAILABLE_LINK");
      v33 = MEMORY[0x277CCACA8];
      v34 = PUI_LocalizedStringForAdSupport(@"PERSONALIZED_ADS_UNAVAILABLE_FOOTER");
      v35 = [v33 stringWithFormat:v34, v32];

      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      [v28 setObject:v37 forKeyedSubscript:*MEMORY[0x277D3FF48]];

      [v28 setObject:v35 forKeyedSubscript:*MEMORY[0x277D3FF70]];
      v52.location = [v35 rangeOfString:v32];
      v38 = NSStringFromRange(v52);
      [v28 setObject:v38 forKeyedSubscript:*MEMORY[0x277D3FF58]];

      v39 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v28 setObject:v39 forKeyedSubscript:*MEMORY[0x277D3FF68]];

      [v28 setObject:@"userDidTapLearnMoreLink:" forKeyedSubscript:*v9];
      [v7 addObject:v28];
      if (!v30)
      {
LABEL_12:
        v45 = *(&self->super.super.super.super.super.isa + v3);
        *(&self->super.super.super.super.super.isa + v3) = v7;

        v4 = *(&self->super.super.super.super.super.isa + v3);
        goto LABEL_13;
      }
    }

    v40 = MEMORY[0x277D3FAD8];
    v41 = PUI_LocalizedStringForAdSupport(@"PERSONALIZED_ADS");
    v42 = [v40 preferenceSpecifierNamed:v41 target:self set:sel_setPersonalizedAdsEnabled_specifier_ get:sel_personalizedAdsEnabled_ detail:0 cell:6 edit:0];

    [v42 setIdentifier:@"PERSONALIZED_ADS"];
    v43 = [(PUIAdSupportController *)self personalizedAdsSwitchEnabled];
    [v42 setObject:v43 forKeyedSubscript:*MEMORY[0x277D3FF38]];

    [v7 addObject:v42];
    goto LABEL_12;
  }

LABEL_13:

  return v4;
}

- (void)viewDidAppear:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _PUILoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[PUIAdSupportController viewDidAppear:]";
    _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "%s: started querying ad support state.", buf, 0xCu);
  }

  v5 = [(PUIAdSupportController *)self adTrackingTransparency];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__PUIAdSupportController_viewDidAppear___block_invoke;
  v12[3] = &unk_279BA1878;
  v12[4] = self;
  [v5 personalizedAdsAvailable:v12];

  v6 = _PUILoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[PUIAdSupportController viewDidAppear:]";
    _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "%s: checking if we have a PA consent related change.", buf, 0xCu);
  }

  v7 = [(PUIAdSupportController *)self adTrackingTransparency];
  v8 = [v7 shouldShowPersonalizedAdsToggle];

  if (v8 != [(PUIAdSupportController *)self personalizedAdsConsented])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PUIAdSupportController_viewDidAppear___block_invoke_63;
    block[3] = &unk_279BA1850;
    v11 = v8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  [(PUIAdSupportController *)self provideNavigationDonations];
  v9 = *MEMORY[0x277D85DE8];
}

void __40__PUIAdSupportController_viewDidAppear___block_invoke(uint64_t a1, int a2)
{
  v2 = a2;
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) personalizedAdsAvailable] != a2)
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
      *buf = 136315394;
      v10 = "[PUIAdSupportController viewDidAppear:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "%s: reloading: ad support state changed to: %@", buf, 0x16u);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__PUIAdSupportController_viewDidAppear___block_invoke_59;
    v7[3] = &unk_279BA1850;
    v8 = v2;
    v7[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __40__PUIAdSupportController_viewDidAppear___block_invoke_59(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setBool:*(a1 + 40) forKey:@"PUIPersonalizedAdsSupported"];

  v3 = *(a1 + 32);

  return [v3 reloadSpecifiers];
}

uint64_t __40__PUIAdSupportController_viewDidAppear___block_invoke_63(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setBool:*(a1 + 40) forKey:@"PUIPersonalizedAdsConsented"];

  v3 = *(a1 + 32);

  return [v3 reloadSpecifiers];
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"ADVERTISING" table:@"Privacy" locale:v6 bundleURL:v4];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:v9 bundleURL:v4];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/ADVERTISING"];
  [(PUIAdSupportController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.apple-advertising" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)personalizedAdsAvailable
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PUIPersonalizedAdsSupported"];

  return v3;
}

- (BOOL)personalizedAdsConsented
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PUIPersonalizedAdsConsented"];

  return v3;
}

- (id)personalizedAdsSwitchEnabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(PUIAdSupportController *)self adTrackingTransparency];
  if ([v4 personalizedAdsSwitchEnabled])
  {
    v5 = [(PUIAdSupportController *)self personalizedAdsAvailable];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 numberWithInt:v5];

  return v6;
}

- (id)personalizedAdsEnabled:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = [(PUIAdSupportController *)self adTrackingTransparency];
  if ([v5 personalizedAds])
  {
    v6 = [(PUIAdSupportController *)self personalizedAdsAvailable];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 numberWithInt:v6];

  return v7;
}

- (void)setPersonalizedAdsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  [v5 BOOLValue];
  ADClientSetValueForScalarKey();
  v6 = [v5 BOOLValue];

  v7 = [(PUIAdSupportController *)self adTrackingTransparency];
  [v7 setPersonalizedAds:v6];
}

- (void)userDidTapLearnMoreLink:(id)a3
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.advertising"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)userDidTapAdPreferences:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277D73640]) initWithUserTransparencyDetails:0];
  [(PUIAdSupportController *)self setUserTransparencyController:v4];

  v5 = [(PUIAdSupportController *)self userTransparencyController];
  [v5 setDelegate:self];
}

- (void)userTransparencyViewControllerDidLoad:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PUIAdSupportController_userTransparencyViewControllerDidLoad___block_invoke;
  v6[3] = &unk_279BA10B0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

@end