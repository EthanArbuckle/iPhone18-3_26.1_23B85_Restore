@interface SpotlightDetailController
- (BOOL)_isApplicationHiddenCheck:(id)a3;
- (BOOL)_isApplicationLockedCheck:(id)a3;
- (id)_appName;
- (id)_bundleId;
- (id)specifiers;
- (id)whileSearchingShowAppEnabled:(id)a3;
- (id)whileSearchingShowContentEnabled:(id)a3;
- (void)_addWhileSearchingSpecifiersToSpecifiers:(id)a3;
- (void)_authenticateForBundleIdentifier:(id)a3 completion:(id)a4;
- (void)_saveWhileSearchingShowAppEnabled:(BOOL)a3;
- (void)_saveWhileSearchingShowContentEnabled:(BOOL)a3;
- (void)setWhileSearchingShowAppEnabled:(id)a3 specifier:(id)a4;
- (void)setWhileSearchingShowContentEnabled:(id)a3 specifier:(id)a4;
@end

@implementation SpotlightDetailController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    if (!self->_disabledSpotlightBundles)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v5 = getSPGetDisabledBundleSetSymbolLoc_ptr_0;
      v22 = getSPGetDisabledBundleSetSymbolLoc_ptr_0;
      if (!getSPGetDisabledBundleSetSymbolLoc_ptr_0)
      {
        v6 = SearchLibrary_0();
        v20[3] = dlsym(v6, "SPGetDisabledBundleSet");
        getSPGetDisabledBundleSetSymbolLoc_ptr_0 = v20[3];
        v5 = v20[3];
      }

      _Block_object_dispose(&v19, 8);
      if (!v5)
      {
        [SpotlightAppClipSettingsController specifiers];
        goto LABEL_17;
      }

      v7 = v5(1);
      disabledSpotlightBundles = self->_disabledSpotlightBundles;
      self->_disabledSpotlightBundles = v7;
    }

    if (self->_disabledSpotlightApps)
    {
LABEL_12:
      v13 = [(SpotlightDetailController *)self _bundleId];
      self->_isApplicationHidden = [(SpotlightDetailController *)self _isApplicationHiddenCheck:v13];

      v14 = [(SpotlightDetailController *)self _bundleId];
      self->_isApplicationLocked = [(SpotlightDetailController *)self _isApplicationLockedCheck:v14];

      v15 = [MEMORY[0x277CBEB18] array];
      [(SpotlightDetailController *)self _addWhileSearchingSpecifiersToSpecifiers:v15];
      v16 = *(&self->super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.isa + v3) = v15;

      v4 = *(&self->super.super.super.super.super.isa + v3);
      goto LABEL_13;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v9 = getSPGetDisabledAppSetSymbolLoc_ptr_0;
    v22 = getSPGetDisabledAppSetSymbolLoc_ptr_0;
    if (!getSPGetDisabledAppSetSymbolLoc_ptr_0)
    {
      v10 = SearchLibrary_0();
      v20[3] = dlsym(v10, "SPGetDisabledAppSet");
      getSPGetDisabledAppSetSymbolLoc_ptr_0 = v20[3];
      v9 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (v9)
    {
      v11 = v9(1);
      disabledSpotlightApps = self->_disabledSpotlightApps;
      self->_disabledSpotlightApps = v11;

      goto LABEL_12;
    }

LABEL_17:
    v18 = [SpotlightAppClipSettingsController specifiers];
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v18);
  }

LABEL_13:

  return v4;
}

- (BOOL)_isApplicationHiddenCheck:(id)a3
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:a3];
  v4 = [MEMORY[0x277CEBE80] hiddenApplications];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (BOOL)_isApplicationLockedCheck:(id)a3
{
  v3 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:a3];
  v4 = [MEMORY[0x277CEBE80] lockedApplications];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)_addWhileSearchingSpecifiersToSpecifiers:(id)a3
{
  v29 = a3;
  v4 = MEMORY[0x277D3FAD8];
  v5 = +[SpotlightSettingsController bundle];
  v6 = [v5 localizedStringForKey:@"SEARCH_PERAPP_WHILESEARCHING_HEADER" value:&stru_287C45188 table:@"SpotlightSettings"];
  v7 = [v4 groupSpecifierWithName:v6];
  whileSearchingGroup = self->_whileSearchingGroup;
  self->_whileSearchingGroup = v7;

  [v29 addObject:self->_whileSearchingGroup];
  v9 = MEMORY[0x277D3FAD8];
  v10 = +[SpotlightSettingsController bundle];
  v11 = [v10 localizedStringForKey:@"SEARCH_PERAPP_WHILESEARCHING_SHOWAPP_TOGGLE" value:&stru_287C45188 table:@"SpotlightSettings"];
  v12 = [v9 preferenceSpecifierNamed:v11 target:self set:sel_setWhileSearchingShowAppEnabled_specifier_ get:sel_whileSearchingShowAppEnabled_ detail:0 cell:6 edit:0];
  whileSearchingShowAppSpecifier = self->_whileSearchingShowAppSpecifier;
  self->_whileSearchingShowAppSpecifier = v12;

  v14 = *MEMORY[0x277D3FD80];
  [(PSSpecifier *)self->_whileSearchingShowAppSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  if (self->_isApplicationHidden)
  {
    [(PSSpecifier *)self->_whileSearchingShowAppSpecifier setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  v15 = MEMORY[0x277D3FAD8];
  v16 = +[SpotlightSettingsController bundle];
  v17 = [v16 localizedStringForKey:@"SEARCH_PERAPP_WHILESEARCHING_SHOWCONTENT_TOGGLE" value:&stru_287C45188 table:@"SpotlightSettings"];
  v18 = [v15 preferenceSpecifierNamed:v17 target:self set:sel_setWhileSearchingShowContentEnabled_specifier_ get:sel_whileSearchingShowContentEnabled_ detail:0 cell:6 edit:0];
  whileSearchingShowContentSpecifier = self->_whileSearchingShowContentSpecifier;
  self->_whileSearchingShowContentSpecifier = v18;

  [(PSSpecifier *)self->_whileSearchingShowContentSpecifier setProperty:MEMORY[0x277CBEC38] forKey:v14];
  if (self->_isApplicationHidden)
  {
    [(PSSpecifier *)self->_whileSearchingShowContentSpecifier setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  [v29 addObject:self->_whileSearchingShowAppSpecifier];
  v20 = [(SpotlightDetailController *)self whileSearchingShowAppEnabled:0];
  v21 = [v20 BOOLValue];

  if (v21)
  {
    [v29 addObject:self->_whileSearchingShowContentSpecifier];
  }

  v22 = self->_whileSearchingGroup;
  v23 = MEMORY[0x277CCACA8];
  v24 = +[SpotlightSettingsController bundle];
  v25 = [v24 localizedStringForKey:@"SEARCH_PERAPP_WHILESEARCHING_FOOTER" value:&stru_287C45188 table:@"SpotlightSettings"];
  v26 = [(SpotlightDetailController *)self _appName];
  v27 = [(SpotlightDetailController *)self _appName];
  v28 = [v23 stringWithFormat:v25, v26, v27];
  [(PSSpecifier *)v22 setProperty:v28 forKey:*MEMORY[0x277D3FF88]];
}

- (id)whileSearchingShowAppEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  disabledSpotlightApps = self->_disabledSpotlightApps;
  v5 = [(SpotlightDetailController *)self _bundleId];
  v6 = [v3 numberWithInt:{-[NSMutableSet containsObject:](disabledSpotlightApps, "containsObject:", v5) ^ 1}];

  return v6;
}

- (void)_authenticateForBundleIdentifier:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_isApplicationLocked)
  {
    v9 = spotlightSettingsLogHandles;
    if (!spotlightSettingsLogHandles)
    {
      SpotlightSettingsInitLogging();
      v9 = spotlightSettingsLogHandles;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_26B81B000, v9, OS_LOG_TYPE_DEFAULT, "Authenticating via APGuard for locked bundleIdentifier=%@", buf, 0xCu);
    }

    v10 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v6];
    v11 = [MEMORY[0x277CEBE98] sharedGuard];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__SpotlightDetailController__authenticateForBundleIdentifier_completion___block_invoke;
    v13[3] = &unk_279D04A08;
    v14 = v8;
    [v11 authenticateForSubject:v10 relayingAuditToken:1 completion:v13];
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __73__SpotlightDetailController__authenticateForBundleIdentifier_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = spotlightSettingsLogHandles;
  if (!spotlightSettingsLogHandles)
  {
    SpotlightSettingsInitLogging();
    v6 = spotlightSettingsLogHandles;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_26B81B000, v6, OS_LOG_TYPE_DEFAULT, "SNLOG success: %d, error: %@", v8, 0x12u);
  }

  (*(*(a1 + 32) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setWhileSearchingShowAppEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__SpotlightDetailController_setWhileSearchingShowAppEnabled_specifier___block_invoke;
  v19[3] = &unk_279D04A30;
  objc_copyWeak(&v21, &location);
  v8 = v6;
  v20 = v8;
  v9 = MEMORY[0x26D6824D0](v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SpotlightDetailController_setWhileSearchingShowAppEnabled_specifier___block_invoke_2;
  v17[3] = &unk_279D04A58;
  objc_copyWeak(&v18, &location);
  v10 = MEMORY[0x26D6824D0](v17);
  v11 = [(SpotlightDetailController *)self _bundleId];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__SpotlightDetailController_setWhileSearchingShowAppEnabled_specifier___block_invoke_3;
  v14[3] = &unk_279D04A80;
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [(SpotlightDetailController *)self _authenticateForBundleIdentifier:v11 completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __71__SpotlightDetailController_setWhileSearchingShowAppEnabled_specifier___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) BOOLValue];
    [WeakRetained _saveWhileSearchingShowAppEnabled:v3];
    if (v3)
    {
      v7[0] = WeakRetained[190];
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
      [WeakRetained insertContiguousSpecifiers:v4 afterSpecifier:WeakRetained[189] animated:1];
    }

    else
    {
      [WeakRetained _saveWhileSearchingShowContentEnabled:0];
      v6 = WeakRetained[190];
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:1];
      [WeakRetained removeContiguousSpecifiers:v4 animated:1];
    }

    notify_post("com.apple.spotlightui.prefschanged");
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __71__SpotlightDetailController_setWhileSearchingShowAppEnabled_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __71__SpotlightDetailController_setWhileSearchingShowAppEnabled_specifier___block_invoke_3(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  dispatch_async(MEMORY[0x277D85CD0], *(a1 + v2));
}

- (void)_saveWhileSearchingShowAppEnabled:(BOOL)a3
{
  v3 = a3;
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [(SpotlightDetailController *)self _bundleId];
  disabledSpotlightApps = self->_disabledSpotlightApps;
  if (v3)
  {
    [(NSMutableSet *)disabledSpotlightApps removeObject:v5];
  }

  else
  {
    [(NSMutableSet *)disabledSpotlightApps addObject:v5];
  }

  CFPreferencesSetAppValue(@"SBSearchDisabledApps", [(NSMutableSet *)self->_disabledSpotlightApps allObjects], @"com.apple.spotlightui");
  v9[0] = @"SBSearchDisabledApps";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [SpotlightSettingsUtilities updateSearchPreferencesModificationForKeys:v7];

  CFPreferencesSynchronize(@"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)whileSearchingShowContentEnabled:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  disabledSpotlightBundles = self->_disabledSpotlightBundles;
  v5 = [(SpotlightDetailController *)self _bundleId];
  v6 = [v3 numberWithInt:{-[NSMutableSet containsObject:](disabledSpotlightBundles, "containsObject:", v5) ^ 1}];

  return v6;
}

- (void)setWhileSearchingShowContentEnabled:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__SpotlightDetailController_setWhileSearchingShowContentEnabled_specifier___block_invoke;
  v19[3] = &unk_279D04A30;
  objc_copyWeak(&v21, &location);
  v8 = v6;
  v20 = v8;
  v9 = MEMORY[0x26D6824D0](v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__SpotlightDetailController_setWhileSearchingShowContentEnabled_specifier___block_invoke_2;
  v17[3] = &unk_279D04A58;
  objc_copyWeak(&v18, &location);
  v10 = MEMORY[0x26D6824D0](v17);
  v11 = [(SpotlightDetailController *)self _bundleId];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SpotlightDetailController_setWhileSearchingShowContentEnabled_specifier___block_invoke_3;
  v14[3] = &unk_279D04A80;
  v12 = v9;
  v15 = v12;
  v13 = v10;
  v16 = v13;
  [(SpotlightDetailController *)self _authenticateForBundleIdentifier:v11 completion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __75__SpotlightDetailController_setWhileSearchingShowContentEnabled_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _saveWhileSearchingShowContentEnabled:{objc_msgSend(*(a1 + 32), "BOOLValue")}];
  notify_post("com.apple.spotlightui.prefschanged");
}

void __75__SpotlightDetailController_setWhileSearchingShowContentEnabled_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __75__SpotlightDetailController_setWhileSearchingShowContentEnabled_specifier___block_invoke_3(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  dispatch_async(MEMORY[0x277D85CD0], *(a1 + v2));
}

- (void)_saveWhileSearchingShowContentEnabled:(BOOL)a3
{
  v3 = a3;
  v9[1] = *MEMORY[0x277D85DE8];
  v5 = [(SpotlightDetailController *)self _bundleId];
  disabledSpotlightBundles = self->_disabledSpotlightBundles;
  if (v3)
  {
    [(NSMutableSet *)disabledSpotlightBundles removeObject:v5];
  }

  else
  {
    [(NSMutableSet *)disabledSpotlightBundles addObject:v5];
  }

  CFPreferencesSetAppValue(@"SBSearchDisabledBundles", [(NSMutableSet *)self->_disabledSpotlightBundles allObjects], @"com.apple.spotlightui");
  v9[0] = @"SBSearchDisabledBundles";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [SpotlightSettingsUtilities updateSearchPreferencesModificationForKeys:v7];

  CFPreferencesSynchronize(@"com.apple.spotlightui", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_bundleId
{
  v2 = [(SpotlightDetailController *)self specifier];
  v3 = [v2 propertyForKey:@"BUNDLE_ID"];

  return v3;
}

- (id)_appName
{
  v2 = [(SpotlightDetailController *)self specifier];
  v3 = [v2 propertyForKey:@"APP_NAME"];

  return v3;
}

@end