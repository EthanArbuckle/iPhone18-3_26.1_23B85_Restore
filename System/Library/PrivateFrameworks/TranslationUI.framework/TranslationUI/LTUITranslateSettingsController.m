@interface LTUITranslateSettingsController
- (BOOL)isOnDeviceOnlyTranslationForced;
- (id)appGroupUserDefaultForSpecifier:(id)a3;
- (id)specifiers;
- (void)handleDownloadedLanguagesTapOnSpecifier:(id)a3;
- (void)openAppToLanguages:(id)a3;
- (void)setAppGroupUserDefaultsEnabled:(id)a3 specifier:(id)a4;
- (void)showTranslatePrivacy;
- (void)viewDidLoad;
@end

@implementation LTUITranslateSettingsController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = LTUITranslateSettingsController;
  [(LTUITranslateSettingsController *)&v4 viewDidLoad];
  v3 = _LTSettingsLocalizedString(@"TRANSLATE");
  [(LTUITranslateSettingsController *)self setTitle:v3];
}

- (id)specifiers
{
  v51[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CEC670]) initWithApplicationBundleIdentifier:@"com.apple.Translate"];
    v6 = [MEMORY[0x277CBEB18] array];
    v50 = v5;
    v49 = [v5 specifiers];
    [v6 addObjectsFromArray:?];
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Languages"];
    v8 = _LTSettingsLocalizedString(@"ON_DEVICE_LANGUAGES_DESCRIPTION");
    v9 = *MEMORY[0x277D3FF88];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v48 = v7;
    [v6 addObject:v7];
    v10 = MEMORY[0x277D3FAD8];
    v11 = _LTSettingsLocalizedString(@"LANGUAGES");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:1 edit:0];

    [v12 setButtonAction:sel_handleDownloadedLanguagesTapOnSpecifier_];
    v13 = *MEMORY[0x277D3FFF0];
    [v12 setObject:@"DOWNLOADED_LANGUAGES_SPECIFIER" forKeyedSubscript:*MEMORY[0x277D3FFF0]];
    v14 = *MEMORY[0x277D3FF38];
    v15 = MEMORY[0x277CBEC38];
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    v47 = v12;
    [v6 addObject:v12];
    v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"OnDeviceOnlyGroup"];
    onDeviceOnlyGroup = self->onDeviceOnlyGroup;
    self->onDeviceOnlyGroup = v16;

    v18 = [(LTUITranslateSettingsController *)self onDeviceOnlyFooterString];
    [(PSSpecifier *)self->onDeviceOnlyGroup setObject:v18 forKeyedSubscript:v9];

    [v6 addObject:self->onDeviceOnlyGroup];
    v19 = MEMORY[0x277D3FAD8];
    v20 = _LTSettingsLocalizedString(@"ON_DEVICE_PREF_NAME");
    v21 = [v19 preferenceSpecifierNamed:v20 target:self set:sel_setAppGroupUserDefaultsEnabled_specifier_ get:sel_appGroupUserDefaultForSpecifier_ detail:0 cell:6 edit:0];

    [v21 setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FD80]];
    v22 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = [v22 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.private.translation"];

    [v21 setObject:@"OnDeviceOnly" forKeyedSubscript:v13];
    if ([(LTUITranslateSettingsController *)self isOnDeviceOnlyTranslationForced])
    {
      [v21 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v14];
      v24 = MEMORY[0x277D3FEF0];
      v25 = MEMORY[0x277CBEC38];
      v26 = MEMORY[0x277D401A8];
      v27 = MEMORY[0x277CBEC38];
    }

    else
    {
      [v21 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FEF0]];
      v25 = @"group.com.apple.private.translation";
      [v21 setObject:@"group.com.apple.private.translation" forKeyedSubscript:*MEMORY[0x277D3FD88]];
      v27 = @"group.com.apple.private.translation.globalprefschanged";
      v24 = MEMORY[0x277D401A0];
      v26 = MEMORY[0x277D3FEA0];
    }

    [v21 setObject:v25 forKeyedSubscript:*v26];
    [v21 setObject:v27 forKeyedSubscript:*v24];
    [v6 addObject:v21];
    v28 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PrivacyLink"];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"PRIVACY_LINK" value:&stru_287F82B50 table:0];

    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    [v28 setProperty:v32 forKey:*MEMORY[0x277D3FF48]];

    [v28 setProperty:v30 forKey:*MEMORY[0x277D3FF70]];
    v53.length = [v30 length];
    v53.location = 0;
    v33 = NSStringFromRange(v53);
    [v28 setProperty:v33 forKey:*MEMORY[0x277D3FF58]];

    v34 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v28 setProperty:v34 forKey:*MEMORY[0x277D3FF68]];

    [v28 setProperty:@"showTranslatePrivacy" forKey:*MEMORY[0x277D3FF50]];
    [v6 addObject:v28];
    if (_LTIsInternalInstall())
    {
      v35 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
      v36 = [v35 BOOLForKey:*MEMORY[0x277CE1C88]];

      if (v36)
      {
        v37 = MEMORY[0x274391570]();
        v51[0] = v37;
        v51[1] = @"AppleInternal";
        v51[2] = @"Library";
        v51[3] = @"PreferenceBundles";
        v51[4] = @"TranslationSettings.bundle";
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:5];

        v39 = MEMORY[0x277CCA8D8];
        v40 = [MEMORY[0x277CBEBC0] fileURLWithPathComponents:v38];
        v41 = [v39 bundleWithURL:v40];

        if (v41)
        {
          v42 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"Translation Internal" target:0 set:0 get:0 detail:objc_msgSend(v41 cell:"principalClass") edit:{1, 0}];
          [v42 setProperty:@"TRANSLATION_INTERNAL" forKey:*MEMORY[0x277D3FFB8]];
          v43 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"InternalSettings"];
          [v6 addObject:v43];
          [v6 addObject:v42];
        }
      }
    }

    v44 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)handleDownloadedLanguagesTapOnSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(LTUITranslateSettingsController *)self traitCollection];
  [LTUIHostedDownloadViewBridge presentLanguageDownloadViewInSettingContextWithTraitCollection:v5 specifier:v4];
}

- (void)showTranslatePrivacy
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.translate"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)setAppGroupUserDefaultsEnabled:(id)a3 specifier:(id)a4
{
  v6 = *MEMORY[0x277D3FFF0];
  v7 = a3;
  v11 = [a4 objectForKeyedSubscript:v6];
  v8 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  [v8 setValue:v7 forKey:v11];

  v9 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  [v9 synchronize];

  if ([v11 isEqualToString:*MEMORY[0x277CE1C90]])
  {
    v10 = [(LTUITranslateSettingsController *)self onDeviceOnlyFooterString];
    [(PSSpecifier *)self->onDeviceOnlyGroup setObject:v10 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [(LTUITranslateSettingsController *)self reloadSpecifier:self->onDeviceOnlyGroup animated:1];
  }
}

- (BOOL)isOnDeviceOnlyTranslationForced
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isOnDeviceOnlyTranslationForced];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)appGroupUserDefaultForSpecifier:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277D3FFF0]];
  v5 = [MEMORY[0x277CBEBD0] lt_appGroupDefaults];
  v6 = [v5 valueForKey:v4];

  if ([v4 isEqualToString:*MEMORY[0x277CE1C90]] && -[LTUITranslateSettingsController isOnDeviceOnlyTranslationForced](self, "isOnDeviceOnlyTranslationForced"))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];

    v6 = v7;
  }

  return v6;
}

- (void)openAppToLanguages:(id)a3
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 openApplicationWithBundleID:@"com.apple.Translate"];
}

@end