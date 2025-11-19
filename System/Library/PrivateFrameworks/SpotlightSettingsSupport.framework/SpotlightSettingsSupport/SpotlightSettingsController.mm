@interface SpotlightSettingsController
+ (id)bundle;
- (id)isAnonymouslyRecordSearchQueriesEnabled;
- (id)isShowInLookUpEnabled;
- (id)isShowInSpotlightEnabled;
- (id)isShowZKWRecentsEnabled:(id)a3;
- (id)specifiers;
- (void)configureAnonymouslyRecordingQueries:(id)a3;
- (void)configureApplicationListSpecifiersFor:(id)a3;
- (void)configureSafariSearchEngine:(id)a3;
- (void)configureSearchAndLoookupSpecifiersFor:(id)a3;
- (void)refreshSafariSearchEnginePreference:(id)a3;
- (void)saveSpotlightSettings;
- (void)setAnonymouslyRecordSearchQueriesEnabled:(id)a3;
- (void)setShowInLookUpEnabled:(id)a3;
- (void)setShowInSpotlightEnabled:(id)a3;
- (void)setShowZKWRecentsEnabled:(id)a3 forSpecifier:(id)a4;
- (void)showAboutSearchSuggestionsSheet:(id)a3;
- (void)viewDidLoad;
@end

@implementation SpotlightSettingsController

+ (id)bundle
{
  v2 = bundle_sSpotlightBundle_1;
  if (!bundle_sSpotlightBundle_1)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = bundle_sSpotlightBundle_1;
    bundle_sSpotlightBundle_1 = v3;

    v2 = bundle_sSpotlightBundle_1;
  }

  return v2;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SpotlightSettingsController;
  [(SpotlightSettingsController *)&v5 viewDidLoad];
  v3 = +[SpotlightSettingsController bundle];
  v4 = [v3 localizedStringForKey:@"SEARCH" value:&stru_287C45188 table:@"SpotlightSettings"];
  [(SpotlightSettingsController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(SpotlightSettingsController *)self loadSpecifiersFromPlistName:@"SpotlightSettings" target:self];
    [(SpotlightSettingsController *)self configureSearchAndLoookupSpecifiersFor:v5];
    [(SpotlightSettingsController *)self configureSafariSearchEngine:v5];
    [(SpotlightSettingsController *)self configureAnonymouslyRecordingQueries:v5];
    [(SpotlightSettingsController *)self configureApplicationListSpecifiersFor:v5];
    v6 = [v5 copy];
    v7 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)configureSearchAndLoookupSpecifiersFor:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = +[SpotlightSettingsController bundle];
  v7 = [v6 localizedStringForKey:@"SEARCH_AND_LOOKUP_GROUP" value:&stru_287C45188 table:@"SpotlightSettings"];
  v32 = [v4 groupSpecifierWithName:v7];

  v8 = [MEMORY[0x277D37670] linkWithBundleIdentifier:@"com.apple.onboarding.sirisuggestions"];
  v9 = [v8 flow];
  v10 = [v9 localizedButtonTitle];

  v11 = MEMORY[0x277CCACA8];
  v12 = +[SpotlightSettingsController bundle];
  v13 = [v12 localizedStringForKey:@"SEARCH_AND_LOOKUP_FOOTER" value:&stru_287C45188 table:@"SpotlightSettings"];
  v31 = v10;
  v14 = [v11 stringWithFormat:@"%@ %@", v13, v10];

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v32 setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FF48]];

  [v32 setObject:v14 forKeyedSubscript:*MEMORY[0x277D3FF70]];
  v34.location = [v14 rangeOfString:v10];
  v17 = NSStringFromRange(v34);
  [v32 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF58]];

  v18 = self;
  v19 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v32 setObject:v19 forKeyedSubscript:*MEMORY[0x277D3FF68]];

  [v32 setObject:@"showAboutSearchSuggestionsSheet:" forKeyedSubscript:*MEMORY[0x277D3FF50]];
  [v5 addObject:v32];
  v20 = MEMORY[0x277D3FAD8];
  v21 = +[SpotlightSettingsController bundle];
  v22 = [v21 localizedStringForKey:@"SEARCH_AND_LOOKUP_SHOW_RECENTS" value:&stru_287C45188 table:@"SpotlightSettings"];
  v23 = [v20 preferenceSpecifierNamed:v22 target:v18 set:sel_setShowZKWRecentsEnabled_forSpecifier_ get:sel_isShowZKWRecentsEnabled_ detail:0 cell:6 edit:0];

  v24 = *MEMORY[0x277D3FF38];
  v25 = MEMORY[0x277CBEC38];
  [v23 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  v26 = *MEMORY[0x277D3FD80];
  [v23 setProperty:v25 forKey:*MEMORY[0x277D3FD80]];
  [v5 addObject:v23];
  v27 = MEMORY[0x277D3FAD8];
  v28 = +[SpotlightSettingsController bundle];
  v29 = [v28 localizedStringForKey:@"SEARCH_AND_LOOKUP_SHOW_RELATED_CONTENT" value:&stru_287C45188 table:@"SpotlightSettings"];
  v30 = [v27 preferenceSpecifierNamed:v29 target:v18 set:sel_setShowInSpotlightEnabled_ get:sel_isShowInSpotlightEnabled detail:0 cell:6 edit:0];

  [v30 setProperty:v25 forKey:v24];
  [v30 setProperty:v25 forKey:v26];
  [v5 addObject:v30];
}

- (void)configureSafariSearchEngine:(id)a3
{
  v54[10] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
  [v5 setIdentifier:@"SEARCH_ENGINE_SETTING_GROUP"];
  v53[0] = *MEMORY[0x277D40170];
  v6 = +[SpotlightSettingsController bundle];
  v7 = [v6 localizedStringForKey:@"SAFARI_SEARCH_ENGINE" value:&stru_287C45188 table:@"SpotlightSettings"];
  v8 = *MEMORY[0x277D3FFB8];
  v54[0] = v7;
  v54[1] = @"SEARCH_ENGINE_SETTING";
  v9 = *MEMORY[0x277D3FDF8];
  v53[1] = v8;
  v53[2] = v9;
  v10 = *MEMORY[0x277D40138];
  v54[2] = MEMORY[0x277CBEC38];
  v54[3] = @"PSLinkListCell";
  v11 = *MEMORY[0x277D3FEF8];
  v53[3] = v10;
  v53[4] = v11;
  v12 = *MEMORY[0x277D3FFF0];
  v13 = *MEMORY[0x277D29290];
  v54[4] = @"com.apple.mobilesafarishared";
  v54[5] = v13;
  v14 = *MEMORY[0x277D3FF08];
  v53[5] = v12;
  v53[6] = v14;
  v54[6] = @"SearchEngineSettingsController";
  v54[7] = @"SearchEngine";
  v15 = *MEMORY[0x277D3FE00];
  v53[7] = @"SettingsPaneRecipeContentIdentifier";
  v53[8] = v15;
  v53[9] = *MEMORY[0x277D3FE08];
  v54[8] = MEMORY[0x277CBEC38];
  v54[9] = @"MobileSafariSettings";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:10];

  v50 = v16;
  v51 = @"items";
  v40 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v52 = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v19 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]);
  v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.mobilesafari.settings"];
  v41 = self;
  v21 = SpecifiersFromPlist();

  v42 = v5;
  v49 = v5;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:{1, 0}];
  [v4 addObjectsFromArray:v22];

  v43 = v4;
  [v4 addObjectsFromArray:v21];
  [MEMORY[0x277CDB8A8] loadSystemLanguageProperties];
  v23 = [MEMORY[0x277CDB8A8] sharedInstance];
  v24 = [MEMORY[0x277CBEB18] array];
  v25 = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = [v23 enginesAvailableForUnifiedFieldSearching];
  v27 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v45;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v44 + 1) + 8 * i);
        v32 = [v31 shortName];
        [v24 addObject:v32];

        v33 = [v31 displayName];
        [v25 addObject:v33];
      }

      v28 = [v26 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v28);
  }

  v34 = [v21 firstObject];
  v35 = [v24 copy];
  v36 = [v25 copy];
  v37 = [v25 copy];
  [v34 setValues:v35 titles:v36 shortTitles:v37];

  v38 = [MEMORY[0x277CCAB98] defaultCenter];
  [v38 addObserver:v41 selector:sel_refreshSafariSearchEnginePreference_ name:@"SAFARI_SEARCH_ENGINE_PREFERENCE_CHANGED" object:0];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)configureAnonymouslyRecordingQueries:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = [v4 groupSpecifierWithName:0];
  v7 = [MEMORY[0x277D37670] linkWithBundleIdentifier:@"com.apple.onboarding.sirisuggestions"];
  v8 = [v7 flow];
  v9 = [v8 localizedButtonTitle];

  v10 = MEMORY[0x277CCACA8];
  v11 = +[SpotlightSettingsController bundle];
  v12 = [v11 localizedStringForKey:@"SEARCH_ALLOW_ANONYMOUS_RECORDS_FOOTER" value:&stru_287C45188 table:@"SpotlightSettings"];
  v13 = [v10 stringWithFormat:@"%@ %@", v12, v9];

  [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D3FF70]];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FF48]];

  v25.location = [v13 rangeOfString:v9];
  v16 = NSStringFromRange(v25);
  [v6 setObject:v16 forKeyedSubscript:*MEMORY[0x277D3FF58]];

  v17 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v6 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF68]];

  [v6 setObject:@"showAboutSearchSuggestionsSheet:" forKeyedSubscript:*MEMORY[0x277D3FF50]];
  v18 = MEMORY[0x277D3FAD8];
  v19 = +[SpotlightSettingsController bundle];
  v20 = [v19 localizedStringForKey:@"SEARCH_ALLOW_ANONYMOUS_RECORDS" value:&stru_287C45188 table:@"SpotlightSettings"];
  v21 = [v18 preferenceSpecifierNamed:v20 target:self set:sel_setAnonymouslyRecordSearchQueriesEnabled_ get:sel_isAnonymouslyRecordSearchQueriesEnabled detail:0 cell:6 edit:0];

  [v21 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  v24[0] = v6;
  v24[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  [v5 addObjectsFromArray:v22];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)configureApplicationListSpecifiersFor:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v41 = self;
  if (!self->_disabledSpotlightBundles)
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v4 = getSPGetDisabledBundleSetSymbolLoc_ptr_1;
    v61 = getSPGetDisabledBundleSetSymbolLoc_ptr_1;
    if (!getSPGetDisabledBundleSetSymbolLoc_ptr_1)
    {
      v53 = MEMORY[0x277D85DD0];
      v54 = 3221225472;
      v55 = __getSPGetDisabledBundleSetSymbolLoc_block_invoke_1;
      v56 = &unk_279D049A8;
      v57 = &v58;
      v5 = SearchLibrary_1();
      v59[3] = dlsym(v5, "SPGetDisabledBundleSet");
      getSPGetDisabledBundleSetSymbolLoc_ptr_1 = *(v57[1] + 24);
      v4 = v59[3];
    }

    _Block_object_dispose(&v58, 8);
    if (!v4)
    {
      goto LABEL_34;
    }

    v6 = v4(1);
    disabledSpotlightBundles = self->_disabledSpotlightBundles;
    self->_disabledSpotlightBundles = v6;
  }

  if (self->_disabledSpotlightDomains)
  {
    goto LABEL_11;
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v8 = getSPGetDisabledDomainSetSymbolLoc_ptr;
  v61 = getSPGetDisabledDomainSetSymbolLoc_ptr;
  if (!getSPGetDisabledDomainSetSymbolLoc_ptr)
  {
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __getSPGetDisabledDomainSetSymbolLoc_block_invoke;
    v56 = &unk_279D049A8;
    v57 = &v58;
    v9 = SearchLibrary_1();
    v59[3] = dlsym(v9, "SPGetDisabledDomainSet");
    getSPGetDisabledDomainSetSymbolLoc_ptr = *(v57[1] + 24);
    v8 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v8)
  {
LABEL_34:
    [SpotlightAppClipSettingsController specifiers];
LABEL_35:
    __break(1u);
  }

  v10 = v8(1);
  disabledSpotlightDomains = self->_disabledSpotlightDomains;
  self->_disabledSpotlightDomains = v10;

LABEL_11:
  v12 = [MEMORY[0x277CEBE80] hiddenApplications];
  v13 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v14)
  {
    v15 = *v50;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = [*(*(&v49 + 1) + 8 * i) bundleIdentifier];
        [v13 addObject:v17];
      }

      v14 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
    }

    while (v14);
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v18 = getSBSCopyDisplayIdentifiersSymbolLoc_ptr;
  v61 = getSBSCopyDisplayIdentifiersSymbolLoc_ptr;
  if (!getSBSCopyDisplayIdentifiersSymbolLoc_ptr)
  {
    v53 = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke;
    v56 = &unk_279D049A8;
    v57 = &v58;
    __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke(&v53);
    v18 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v18)
  {
    [SpotlightAppClipSettingsController specifiers];
    goto LABEL_35;
  }

  v38 = v18();
  v40 = [v38 mutableCopy];
  v19 = [MEMORY[0x277CBEB98] setWithArray:v13];
  [v40 minusSet:v19];

  if (([(NSSet *)v41->_installedBundleIDs isEqual:v40]& 1) == 0)
  {
    objc_storeStrong(&v41->_installedBundleIDs, v40);
    v20 = [v40 mutableCopy];
    [v20 addObject:@"com.apple.iCloudDriveApp"];
    v43 = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = v20;
    v21 = [v42 countByEnumeratingWithState:&v45 objects:v62 count:16];
    if (v21)
    {
      v22 = *v46;
      v23 = *MEMORY[0x277D3FE58];
      v24 = *MEMORY[0x277D3FF08];
      v25 = *MEMORY[0x277D3FF38];
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v46 != v22)
          {
            objc_enumerationMutation(v42);
          }

          v27 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:*(*(&v45 + 1) + 8 * j)];
          v28 = PSApplicationSpecifierForAssistantSection();
          if (v28)
          {
            [v28 setProperty:objc_opt_class() forKey:v23];
            [v28 setProperty:objc_opt_class() forKey:v24];
            [v28 setDetailControllerClass:objc_opt_class()];
            [v28 setProperty:MEMORY[0x277CBEC38] forKey:v25];
            [v43 addObject:v28];
          }
        }

        v21 = [v42 countByEnumeratingWithState:&v45 objects:v62 count:16];
      }

      while (v21);
    }

    v29 = [MEMORY[0x277CBEA60] arrayWithArray:v43];
    allAppsSpecifiers = v41->_allAppsSpecifiers;
    v41->_allAppsSpecifiers = v29;
  }

  v31 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:0];
  [v39 addObject:v31];
  v32 = [(NSArray *)v41->_allAppsSpecifiers sortedArrayUsingComparator:&__block_literal_global];
  v33 = MEMORY[0x277D3FAD8];
  v34 = +[SpotlightSettingsController bundle];
  v35 = [v34 localizedStringForKey:@"APP_CLIPS" value:&stru_287C45188 table:@"SpotlightSettings"];
  v36 = [v33 preferenceSpecifierNamed:v35 target:0 set:0 get:0 detail:0 cell:1 edit:0];

  [v36 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v36 setDetailControllerClass:objc_opt_class()];
  [v36 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  [v36 setProperty:@"com.apple.graphic-icon.app-clips" forKey:*MEMORY[0x277D3FFD8]];
  [v39 addObject:v36];
  [v39 addObjectsFromArray:v32];

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __69__SpotlightSettingsController_configureApplicationListSpecifiersFor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)showAboutSearchSuggestionsSheet:(id)a3
{
  v4 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.sirisuggestions"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (id)isShowZKWRecentsEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWRecentsEnabled", @"com.apple.suggestions");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return [v3 numberWithBool:v6];
}

- (void)setShowZKWRecentsEnabled:(id)a3 forSpecifier:(id)a4
{
  v4 = [a3 BOOLValue];
  CFPreferencesSetAppValue(@"SuggestionsSpotlightZKWRecentsEnabled", [MEMORY[0x277CCABB0] numberWithBool:v4], @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (void)saveSpotlightSettings
{
  v4[1] = *MEMORY[0x277D85DE8];
  CFPreferencesSetAppValue(@"SBSearchDisabledDomains", [(NSMutableSet *)self->_disabledSpotlightDomains allObjects], @"com.apple.spotlightui");
  v4[0] = @"SBSearchDisabledDomains";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [SpotlightSettingsUtilities updateSearchPreferencesModificationForKeys:v2];

  CFPreferencesSynchronize(@"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  notify_post("com.apple.spotlightui.prefschanged");
  v3 = *MEMORY[0x277D85DE8];
}

- (id)isShowInLookUpEnabled
{
  v2 = CFPreferencesCopyAppValue(@"ShowInLookupEnabled", @"com.apple.spotlightui");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  v5 = v4;

  return v4;
}

- (void)setShowInLookUpEnabled:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  CFPreferencesSetAppValue(@"ShowInLookupEnabled", a3, @"com.apple.spotlightui");
  v5[0] = @"ShowInLookupEnabled";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [SpotlightSettingsUtilities updateSearchPreferencesModificationForKeys:v3];

  CFPreferencesSynchronize(@"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  notify_post("com.apple.spotlightui.prefschanged");
  v4 = *MEMORY[0x277D85DE8];
}

- (id)isShowInSpotlightEnabled
{
  if (([(NSMutableSet *)self->_disabledSpotlightDomains containsObject:@"DOMAIN_ZKWS"]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableSet *)self->_disabledSpotlightDomains containsObject:@"DOMAIN_PARSEC"]^ 1;
  }

  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithBool:v3];
}

- (void)setShowInSpotlightEnabled:(id)a3
{
  v4 = [a3 intValue];
  disabledSpotlightDomains = self->_disabledSpotlightDomains;
  if (v4)
  {
    [(NSMutableSet *)disabledSpotlightDomains removeObject:@"DOMAIN_ZKWS"];
    [(NSMutableSet *)self->_disabledSpotlightDomains removeObject:@"DOMAIN_PARSEC"];
  }

  else
  {
    [(NSMutableSet *)disabledSpotlightDomains addObject:@"DOMAIN_ZKWS"];
    [(NSMutableSet *)self->_disabledSpotlightDomains addObject:@"DOMAIN_PARSEC"];
  }

  [(SpotlightSettingsController *)self saveSpotlightSettings];
}

- (void)refreshSafariSearchEnginePreference:(id)a3
{
  v4 = [(SpotlightSettingsController *)self specifierForID:@"SEARCH_ENGINE_SETTING_GROUP"];
  [(SpotlightSettingsController *)self reloadSpecifier:v4 animated:1];
}

- (id)isAnonymouslyRecordSearchQueriesEnabled
{
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  v3 = [v2 getSearchQueriesDataSharingStatus];

  v4 = MEMORY[0x277CCABB0];

  return [v4 numberWithInt:v3 < 2];
}

- (void)setAnonymouslyRecordSearchQueriesEnabled:(id)a3
{
  if ([a3 BOOLValue])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  [v4 setSearchQueriesDataSharingStatus:v3 completion:&__block_literal_global_197];
}

@end