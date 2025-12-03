@interface SpotlightAppClipSettingsController
+ (id)bundle;
- (id)learnFromAppClipsEnabled:(id)enabled;
- (id)showInSearchEnabled:(id)enabled;
- (id)specifiers;
- (id)suggestAppClipsEnabled:(id)enabled;
- (uint64_t)specifiers;
- (void)setLearnFromAppClipsEnabled:(id)enabled specifier:(id)specifier;
- (void)setShowInSearchEnabled:(id)enabled specifier:(id)specifier;
- (void)setSuggestAppClipsEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation SpotlightAppClipSettingsController

+ (id)bundle
{
  v2 = bundle_sSpotlightBundle;
  if (!bundle_sSpotlightBundle)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sSpotlightBundle;
    bundle_sSpotlightBundle = v3;

    v2 = bundle_sSpotlightBundle;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SpotlightAppClipSettingsController;
  [(SpotlightAppClipSettingsController *)&v5 viewDidLoad];
  bundle = [objc_opt_class() bundle];
  v4 = [bundle localizedStringForKey:@"APP_CLIPS" value:&stru_287C45188 table:@"SpotlightSettings"];
  [(SpotlightAppClipSettingsController *)self setTitle:v4];
}

- (id)specifiers
{
  v49[5] = *MEMORY[0x277D85DE8];
  if (!self->_disabledSpotlightBundles)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v3 = getSPGetDisabledBundleSetSymbolLoc_ptr;
    v48 = getSPGetDisabledBundleSetSymbolLoc_ptr;
    if (!getSPGetDisabledBundleSetSymbolLoc_ptr)
    {
      v4 = SearchLibrary();
      v46[3] = dlsym(v4, "SPGetDisabledBundleSet");
      getSPGetDisabledBundleSetSymbolLoc_ptr = v46[3];
      v3 = v46[3];
    }

    _Block_object_dispose(&v45, 8);
    if (!v3)
    {
      goto LABEL_12;
    }

    v5 = v3(1);
    disabledSpotlightBundles = self->_disabledSpotlightBundles;
    self->_disabledSpotlightBundles = v5;
  }

  if (!self->_disabledSpotlightApps)
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v7 = getSPGetDisabledAppSetSymbolLoc_ptr;
    v48 = getSPGetDisabledAppSetSymbolLoc_ptr;
    if (!getSPGetDisabledAppSetSymbolLoc_ptr)
    {
      v8 = SearchLibrary();
      v46[3] = dlsym(v8, "SPGetDisabledAppSet");
      getSPGetDisabledAppSetSymbolLoc_ptr = v46[3];
      v7 = v46[3];
    }

    _Block_object_dispose(&v45, 8);
    if (v7)
    {
      v9 = v7(1);
      disabledSpotlightApps = self->_disabledSpotlightApps;
      self->_disabledSpotlightApps = v9;

      goto LABEL_11;
    }

LABEL_12:
    [SpotlightAppClipSettingsController specifiers];
    __break(1u);
  }

LABEL_11:
  v11 = MEMORY[0x277D3FAD8];
  bundle = [objc_opt_class() bundle];
  v13 = [bundle localizedStringForKey:@"APP_CLIPS_IN_APP_CLIPS_HEADER" value:&stru_287C45188 table:@"SpotlightSettings"];
  v14 = [v11 groupSpecifierWithName:v13];

  bundle2 = [objc_opt_class() bundle];
  v16 = [bundle2 localizedStringForKey:@"APP_CLIPS_IN_APP_CLIPS_FOOTER" value:&stru_287C45188 table:@"SpotlightSettings"];
  v17 = *MEMORY[0x277D3FF88];
  [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FF88]];

  v18 = MEMORY[0x277D3FAD8];
  bundle3 = [objc_opt_class() bundle];
  v20 = [bundle3 localizedStringForKey:@"APP_CLIPS_LEARN_FROM_APP_CLIPS" value:&stru_287C45188 table:@"SpotlightSettings"];
  v21 = [v18 preferenceSpecifierNamed:v20 target:self set:sel_setLearnFromAppClipsEnabled_specifier_ get:sel_learnFromAppClipsEnabled_ detail:0 cell:6 edit:0];

  v22 = *MEMORY[0x277D3FD80];
  [v21 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v23 = *MEMORY[0x277D3FF38];
  [v21 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  v24 = MEMORY[0x277D3FAD8];
  bundle4 = [objc_opt_class() bundle];
  v26 = [bundle4 localizedStringForKey:@"SEARCH_PERAPP_ONHOMESCREEN_HEADER" value:&stru_287C45188 table:@"SpotlightSettings"];
  v27 = [v24 groupSpecifierWithName:v26];

  bundle5 = [objc_opt_class() bundle];
  v29 = [bundle5 localizedStringForKey:@"APP_CLIPS_IN_SEARCH_FOOTER" value:&stru_287C45188 table:@"SpotlightSettings"];
  [v27 setObject:v29 forKeyedSubscript:v17];

  v30 = MEMORY[0x277D3FAD8];
  bundle6 = [objc_opt_class() bundle];
  v32 = [bundle6 localizedStringForKey:@"APP_CLIPS_SHOW_IN_SEARCH" value:&stru_287C45188 table:@"SpotlightSettings"];
  v33 = [v30 preferenceSpecifierNamed:v32 target:self set:sel_setShowInSearchEnabled_specifier_ get:sel_showInSearchEnabled_ detail:0 cell:6 edit:0];

  [v33 setProperty:MEMORY[0x277CBEC38] forKey:v22];
  [v33 setProperty:MEMORY[0x277CBEC38] forKey:v23];
  v34 = MEMORY[0x277D3FAD8];
  bundle7 = [objc_opt_class() bundle];
  v36 = [bundle7 localizedStringForKey:@"APP_CLIPS_SUGGEST_APP_CLIPS" value:&stru_287C45188 table:@"SpotlightSettings"];
  v37 = [v34 preferenceSpecifierNamed:v36 target:self set:sel_setSuggestAppClipsEnabled_specifier_ get:sel_suggestAppClipsEnabled_ detail:0 cell:6 edit:0];

  [v37 setProperty:MEMORY[0x277CBEC38] forKey:v22];
  [v37 setProperty:MEMORY[0x277CBEC38] forKey:v23];
  v49[0] = v14;
  v49[1] = v21;
  v49[2] = v27;
  v49[3] = v33;
  v49[4] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:5];
  v39 = *MEMORY[0x277D3FC48];
  v40 = *(&self->super.super.super.super.super.isa + v39);
  *(&self->super.super.super.super.super.isa + v39) = v38;

  v41 = *(&self->super.super.super.super.super.isa + v39);
  v42 = v41;

  v43 = *MEMORY[0x277D85DE8];
  return v41;
}

- (void)setLearnFromAppClipsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  CFPreferencesSetAppValue(@"SuggestionsLearnFromAppClips", [MEMORY[0x277CCABB0] numberWithBool:bOOLValue], @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (id)learnFromAppClipsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = CFPreferencesCopyAppValue(@"SuggestionsLearnFromAppClips", @"com.apple.suggestions");
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return [v3 numberWithBool:bOOLValue];
}

- (void)setShowInSearchEnabled:(id)enabled specifier:(id)specifier
{
  v9[2] = *MEMORY[0x277D85DE8];
  bOOLValue = [enabled BOOLValue];
  disabledSpotlightBundles = self->_disabledSpotlightBundles;
  if (bOOLValue)
  {
    [(NSMutableSet *)disabledSpotlightBundles removeObject:@"com.apple.app-clips"];
    [(NSMutableSet *)self->_disabledSpotlightApps removeObject:@"com.apple.app-clips"];
  }

  else
  {
    [(NSMutableSet *)disabledSpotlightBundles addObject:@"com.apple.app-clips"];
    [(NSMutableSet *)self->_disabledSpotlightApps addObject:@"com.apple.app-clips"];
  }

  CFPreferencesSetAppValue(@"SBSearchDisabledBundles", [(NSMutableSet *)self->_disabledSpotlightBundles allObjects], @"com.apple.spotlightui");
  CFPreferencesSetAppValue(@"SBSearchDisabledApps", [(NSMutableSet *)self->_disabledSpotlightApps allObjects], @"com.apple.spotlightui");
  v9[0] = @"SBSearchDisabledBundles";
  v9[1] = @"SBSearchDisabledApps";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [SpotlightSettingsUtilities updateSearchPreferencesModificationForKeys:v7];

  CFPreferencesSynchronize(@"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  notify_post("com.apple.spotlightui.prefschanged");
  v8 = *MEMORY[0x277D85DE8];
}

- (id)showInSearchEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(NSMutableSet *)self->_disabledSpotlightBundles containsObject:@"com.apple.app-clips"]^ 1;

  return [v3 numberWithInt:v4];
}

- (void)setSuggestAppClipsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  CFPreferencesSetAppValue(@"SuggestionsSuggestAppClips", [MEMORY[0x277CCABB0] numberWithBool:bOOLValue], @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (id)suggestAppClipsEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = CFPreferencesCopyAppValue(@"SuggestionsSuggestAppClips", @"com.apple.suggestions");
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return [v3 numberWithBool:bOOLValue];
}

- (uint64_t)specifiers
{
  dlerror();
  v0 = abort_report_np();
  return SpotlightSettingsInitLogging_cold_1(v0);
}

@end