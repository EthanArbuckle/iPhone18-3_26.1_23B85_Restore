@interface PUILockdownModeWebController
- (BOOL)shouldShowBundleID:(id)d;
- (PUILockdownModeWebController)init;
- (id)safariSettingsBundle;
- (id)specifiers;
- (void)dataDidChange;
- (void)dealloc;
- (void)didBecomeActive;
- (void)presentAboutController;
- (void)refreshLinkStatusInParent;
- (void)reloadSpecifiers;
- (void)setAppLockdownModeEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)specifiers;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation PUILockdownModeWebController

- (PUILockdownModeWebController)init
{
  v5.receiver = self;
  v5.super_class = PUILockdownModeWebController;
  v2 = [(PUILockdownModeWebController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didBecomeActive name:*MEMORY[0x277D76648] object:0];
  }

  return v2;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PUILockdownModeWebController;
  [(PUILockdownModeWebController *)&v10 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D759F0]) initWithSearchResultsController:0];
  [(PUILockdownModeWebController *)self setSearchController:v3];

  searchController = [(PUILockdownModeWebController *)self searchController];
  [searchController setSearchResultsUpdater:self];

  searchController2 = [(PUILockdownModeWebController *)self searchController];
  [searchController2 setObscuresBackgroundDuringPresentation:0];

  searchController3 = [(PUILockdownModeWebController *)self searchController];
  searchBar = [searchController3 searchBar];
  [searchBar setKeyboardType:0];

  searchController4 = [(PUILockdownModeWebController *)self searchController];
  navigationItem = [(PUILockdownModeWebController *)self navigationItem];
  [navigationItem setSearchController:searchController4];

  [(PUILockdownModeWebController *)self setDefinesPresentationContext:1];
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
  v2[2] = __45__PUILockdownModeWebController_dataDidChange__block_invoke;
  v2[3] = &unk_279BA0B00;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __45__PUILockdownModeWebController_dataDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUILockdownModeWebController;
  [(PUILockdownModeWebController *)&v4 dealloc];
}

- (void)didBecomeActive
{
  [(PUILockdownModeWebController *)self set_allSpecifiers:0];

  [(PUILockdownModeWebController *)self reloadSpecifiers];
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = PUILockdownModeWebController;
  [(PUILockdownModeWebController *)&v3 reloadSpecifiers];
  [(PUILockdownModeWebController *)self updateSearchResultsForSearchController:self->_searchController];
}

- (id)specifiers
{
  v97 = *MEMORY[0x277D85DE8];
  _allSpecifiers = [(PUILockdownModeWebController *)self _allSpecifiers];

  if (!_allSpecifiers)
  {
    v70 = objc_opt_new();
    v66 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LOCKDOWN_MODE_GROUP"];
    v3 = MEMORY[0x277CCACA8];
    v4 = PUI_LocalizedStringForLockdownMode(@"WEB_CONTENT_FOOTER");
    v5 = getLocalizedDeviceName();
    v6 = [v3 stringWithFormat:v4, v5];
    [v66 setObject:v6 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v70 addObject:v66];
    v73 = objc_opt_new();
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v7 = getSBSCopyDisplayIdentifiersSymbolLoc_ptr;
    v91 = getSBSCopyDisplayIdentifiersSymbolLoc_ptr;
    if (!getSBSCopyDisplayIdentifiersSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke;
      v95 = &unk_279BA0D08;
      v96 = &v88;
      __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke(buf);
      v7 = v89[3];
    }

    _Block_object_dispose(&v88, 8);
    if (!v7)
    {
      [PUILockdownModeController getEligibleDevicesWithCompletion:];
      __break(1u);
    }

    v82 = v7();
    v75 = CFPreferencesCopyApplicationList(*MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    obj = v85 = 0u;
    v8 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
    if (v8)
    {
      v9 = *v85;
      v72 = *MEMORY[0x277D40018];
      v71 = *MEMORY[0x277D401A8];
      v68 = *MEMORY[0x277D40008];
      v69 = *MEMORY[0x277D40020];
      v67 = *MEMORY[0x277D3FFC0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v85 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v84 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          bundleIdentifier = [v11 bundleIdentifier];
          if (![v82 containsObject:bundleIdentifier])
          {
            goto LABEL_27;
          }

          bundleIdentifier2 = [v11 bundleIdentifier];
          v15 = [(PUILockdownModeWebController *)self shouldShowBundleID:bundleIdentifier2];

          if (v15 && ([v11 isWebBrowser] & 1) == 0)
          {
            v16 = MEMORY[0x277D3FAD8];
            localizedName = [v11 localizedName];
            bundleIdentifier = [v16 preferenceSpecifierNamed:localizedName target:self set:sel_setAppLockdownModeEnabled_forSpecifier_ get:sel_isSpecifierEnabled_ detail:0 cell:6 edit:0];

            v18 = MEMORY[0x277CC1E90];
            bundleIdentifier3 = [v11 bundleIdentifier];
            v83 = 0;
            v78 = [v18 bundleRecordWithApplicationIdentifier:bundleIdentifier3 error:&v83];
            v79 = v83;

            if (v79)
            {
              dataContainerURL = _PUILoggingFacility();
              if (os_log_type_enabled(dataContainerURL, OS_LOG_TYPE_ERROR))
              {
                bundleIdentifier4 = [v11 bundleIdentifier];
                v22 = bundleIdentifier4;
                uTF8String = [bundleIdentifier4 UTF8String];
                *buf = 136315394;
                *&buf[4] = "[PUILockdownModeWebController specifiers]";
                *&buf[12] = 2080;
                *&buf[14] = uTF8String;
                _os_log_error_impl(&dword_2657FE000, dataContainerURL, OS_LOG_TYPE_ERROR, "%s - could not get bundle record for %s", buf, 0x16u);
              }
            }

            else
            {
              dataContainerURL = [v78 dataContainerURL];
              if (dataContainerURL)
              {
                v24 = objc_alloc(MEMORY[0x277CBEBD0]);
                bundleIdentifier5 = [v78 bundleIdentifier];
                bundleIdentifier6 = [v78 bundleIdentifier];
                if ([v75 containsObject:bundleIdentifier6])
                {
                  v27 = 0;
                }

                else
                {
                  v27 = dataContainerURL;
                }

                v28 = [v24 _initWithSuiteName:bundleIdentifier5 container:v27];

                if ([v28 BOOLForKey:@"WebKitCaptivePortalModeAlertShown"])
                {
                  path = [dataContainerURL path];
                  [bundleIdentifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v72];
                  [bundleIdentifier setObject:path forKeyedSubscript:@"PUILockdownModeWebContainerPathKey"];
                  v29 = [MEMORY[0x277CCABB0] numberWithInt:{+[PUILockdownModeUtilities isCaptivePortalModeIgnoredForContainerPath:](PUILockdownModeUtilities, "isCaptivePortalModeIgnoredForContainerPath:", path) ^ 1}];
                  [bundleIdentifier setObject:v29 forKeyedSubscript:v71];

                  bundleIdentifier7 = [v11 bundleIdentifier];
                  v31 = [bundleIdentifier7 isEqualToString:@"com.apple.mobilecal"];

                  if (v31)
                  {
                    v32 = objc_alloc(MEMORY[0x277D1B1A8]);
                    date = [MEMORY[0x277CBEAA8] date];
                    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
                    bundleIdentifier8 = [v32 initWithDate:date calendar:currentCalendar format:0];

                    v35 = objc_alloc(MEMORY[0x277D1B1C8]);
                    v36 = PSBlankIconImage();
                    [v36 size];
                    v38 = v37;
                    v40 = v39;
                    mainScreen = [MEMORY[0x277D759A0] mainScreen];
                    [mainScreen scale];
                    v74 = [v35 initWithSize:v38 scale:{v40, v42}];

                    v92 = v74;
                    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
                    [bundleIdentifier8 prepareImagesForImageDescriptors:v43];

                    v44 = [bundleIdentifier8 imageForDescriptor:v74];
                    v45 = MEMORY[0x277D755B8];
                    cGImage = [v44 CGImage];
                    [v44 scale];
                    v47 = [v45 imageWithCGImage:cGImage scale:0 orientation:?];
                    [bundleIdentifier setObject:v47 forKeyedSubscript:v67];
                  }

                  else
                  {
                    [bundleIdentifier setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v69];
                    bundleIdentifier8 = [v11 bundleIdentifier];
                    [bundleIdentifier setObject:bundleIdentifier8 forKeyedSubscript:v68];
                  }

                  [v73 addObject:bundleIdentifier];
                }
              }
            }

LABEL_27:
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
      }

      while (v8);
    }

    safariSettingsBundle = [(PUILockdownModeWebController *)self safariSettingsBundle];
    v49 = safariSettingsBundle;
    if (safariSettingsBundle)
    {
      v50 = [safariSettingsBundle classNamed:@"SafariLockdownModePerSitePreferenceSettingsController"];
      if (v50)
      {
        emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        [v70 addObject:emptyGroupSpecifier];
        v52 = MEMORY[0x277D3FAD8];
        v53 = PUI_LocalizedStringForLockdownMode(@"WEBSITES");
        v54 = [v52 preferenceSpecifierNamed:v53 target:self set:0 get:0 detail:v50 cell:2 edit:0];

        [v70 addObject:v54];
      }

      else
      {
        emptyGroupSpecifier = _PUILoggingFacility();
        if (os_log_type_enabled(emptyGroupSpecifier, OS_LOG_TYPE_FAULT))
        {
          [(PUILockdownModeWebController *)emptyGroupSpecifier specifiers];
        }
      }
    }

    else
    {
      emptyGroupSpecifier = _PUILoggingFacility();
      if (os_log_type_enabled(emptyGroupSpecifier, OS_LOG_TYPE_FAULT))
      {
        [(PUILockdownModeWebController *)emptyGroupSpecifier specifiers];
      }
    }

    if ([v73 count])
    {
      v55 = MEMORY[0x277D3FAD8];
      v56 = PUI_LocalizedStringForLockdownMode(@"APPS_SECTION");
      v57 = [v55 groupSpecifierWithID:@"APPS_GROUP" name:v56];

      [v70 addObject:v57];
      [v73 sortUsingFunction:PUICompareSpecifiersByName context:0];
      [v70 addObjectsFromArray:v73];
    }

    [(PUILockdownModeWebController *)self set_allSpecifiers:v70];
  }

  searchController = [(PUILockdownModeWebController *)self searchController];
  isActive = [searchController isActive];

  if (isActive)
  {
    v60 = *MEMORY[0x277D3FC48];
  }

  else
  {
    _allSpecifiers2 = [(PUILockdownModeWebController *)self _allSpecifiers];
    v60 = *MEMORY[0x277D3FC48];
    v62 = *(&self->super.super.super.super.super.isa + v60);
    *(&self->super.super.super.super.super.isa + v60) = _allSpecifiers2;
  }

  v63 = *(&self->super.super.super.super.super.isa + v60);
  v64 = *MEMORY[0x277D85DE8];

  return v63;
}

- (void)setAppLockdownModeEnabled:(id)enabled forSpecifier:(id)specifier
{
  v17 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  v7 = *MEMORY[0x277D401A8];
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
  if (([enabledCopy isEqual:v8] & 1) == 0)
  {
    bOOLValue = [enabledCopy BOOLValue];
    v10 = _PUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[PUILockdownModeWebController setAppLockdownModeEnabled:forSpecifier:]";
      v15 = 1024;
      v16 = bOOLValue;
      _os_log_impl(&dword_2657FE000, v10, OS_LOG_TYPE_DEFAULT, "%s - enable for app: %d", &v13, 0x12u);
    }

    [specifierCopy setProperty:enabledCopy forKey:v7];
    v11 = [specifierCopy propertyForKey:@"PUILockdownModeWebContainerPathKey"];
    [PUILockdownModeUtilities setCaptivePortalModeIgnoredForContainerPath:v11 ignored:bOOLValue ^ 1u];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)presentAboutController
{
  v3 = objc_alloc(MEMORY[0x277D37688]);
  v4 = PUI_LocalizedStringForLockdownMode(@"WEB_CONTENT");
  v5 = [v3 initWithTitle:v4 detailText:0 symbolName:0 contentLayout:2];

  v6 = PUI_LocalizedStringForLockdownMode(@"LEARN_MORE_TEXT");
  [v5 addSectionWithHeader:0 content:v6];

  v7 = objc_alloc(MEMORY[0x277D751E0]);
  v8 = MEMORY[0x277D750C8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__PUILockdownModeWebController_presentAboutController__block_invoke;
  v14[3] = &unk_279BA0C40;
  v15 = v5;
  v9 = v5;
  v10 = [v8 actionWithHandler:v14];
  v11 = [v7 initWithBarButtonSystemItem:0 primaryAction:v10];

  navigationItem = [v9 navigationItem];
  [navigationItem setRightBarButtonItem:v11];

  v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v9];
  [(PUILockdownModeWebController *)self presentModalViewController:v13 withTransition:3];
}

void __54__PUILockdownModeWebController_presentAboutController__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (id)safariSettingsBundle
{
  if (safariSettingsBundle_onceToken != -1)
  {
    [PUILockdownModeWebController safariSettingsBundle];
  }

  v3 = safariSettingsBundle_bundle;

  return v3;
}

void __52__PUILockdownModeWebController_safariSettingsBundle__block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v4 = v1 = @"/System/Library/PreferenceBundles/MobileSafariSettings.bundle";
  v2 = [v0 bundleWithPath:v4];
  v3 = safariSettingsBundle_bundle;
  safariSettingsBundle_bundle = v2;
}

- (BOOL)shouldShowBundleID:(id)d
{
  v3 = shouldShowBundleID__onceToken;
  dCopy = d;
  if (v3 != -1)
  {
    [PUILockdownModeWebController shouldShowBundleID:];
  }

  v5 = [shouldShowBundleID__bundleIDs containsObject:dCopy];

  return v5 ^ 1;
}

void __51__PUILockdownModeWebController_shouldShowBundleID___block_invoke()
{
  v0 = shouldShowBundleID__bundleIDs;
  shouldShowBundleID__bundleIDs = &unk_28772B5B8;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
  {
    v6 = objc_opt_new();
    _allSpecifiers = [(PUILockdownModeWebController *)self _allSpecifiers];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __71__PUILockdownModeWebController_updateSearchResultsForSearchController___block_invoke;
    v12 = &unk_279BA0E10;
    v13 = text;
    v14 = v6;
    _allSpecifiers2 = v6;
    [_allSpecifiers enumerateObjectsUsingBlock:&v9];

    [(PUILockdownModeWebController *)self setSpecifiers:_allSpecifiers2, v9, v10, v11, v12];
  }

  else
  {
    _allSpecifiers2 = [(PUILockdownModeWebController *)self _allSpecifiers];
    [(PUILockdownModeWebController *)self setSpecifiers:_allSpecifiers2];
  }
}

void __71__PUILockdownModeWebController_updateSearchResultsForSearchController___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 cellType] == 6)
  {
    v3 = [v5 name];
    v4 = [v3 localizedCaseInsensitiveContainsString:*(a1 + 32)];

    if (v4)
    {
      [*(a1 + 40) addObject:v5];
    }
  }
}

- (void)specifiers
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[PUILockdownModeWebController specifiers]";
  _os_log_fault_impl(&dword_2657FE000, log, OS_LOG_TYPE_FAULT, "%s Error getting Safari Settings Bundle", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end