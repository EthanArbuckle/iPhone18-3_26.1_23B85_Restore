@interface PUINetworkController
- (PUINetworkController)init;
- (id)eligibleApplications;
- (id)isLocalNetworkEnabled:(id)enabled;
- (id)networkConfigurationEnabled:(id)enabled;
- (id)pathRuleForBundleID:(id)d create:(BOOL)create;
- (id)specifiers;
- (void)dnsConfigurationChanged:(id)changed;
- (void)loadConfigurationsForceRefresh:(BOOL)refresh completionHandler:(id)handler;
- (void)provideNavigationDonations;
- (void)saveConfiguration;
- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation PUINetworkController

- (PUINetworkController)init
{
  v15.receiver = self;
  v15.super_class = PUINetworkController;
  v2 = [(PUINetworkController *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_isWaitingForNetworkConfigurationDidChangeInResponseToUserInteractionWithToggle = 0;
    [(PUINetworkController *)v2 setReusesCells:1];
    objc_initWeak(&location, v3);
    mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __28__PUINetworkController_init__block_invoke;
    v12[3] = &unk_279BA1088;
    objc_copyWeak(&v13, &location);
    [mEMORY[0x277CD92B8] setChangedQueue:v5 andHandler:v12];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __28__PUINetworkController_init__block_invoke_3;
    v10[3] = &unk_279BA1E90;
    objc_copyWeak(&v11, &location);
    [(PUINetworkController *)v3 loadConfigurationsForceRefresh:0 completionHandler:v10];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_dnsConfigurationChanged_ name:@"PUINetworkDNSChangedNotification" object:0];

    v8 = v3;
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __28__PUINetworkController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__PUINetworkController_init__block_invoke_2;
  v5[3] = &unk_279BA1E90;
  objc_copyWeak(&v6, (a1 + 32));
  [WeakRetained loadConfigurationsForceRefresh:1 completionHandler:v5];

  objc_destroyWeak(&v6);
}

void __28__PUINetworkController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WeakRetained[1456] == 1)
    {
      WeakRetained[1456] = 0;
    }

    else
    {
      v2 = WeakRetained;
      [WeakRetained reloadSpecifiers];
      WeakRetained = v2;
    }
  }
}

void __28__PUINetworkController_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

- (void)provideNavigationDonations
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"LOCAL_NETWORK" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCAL_NETWORK"];
  [(PUINetworkController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.internet-sharing" title:v7 localizedNavigationComponents:v11 deepLink:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dnsConfigurationChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PUINetworkController_dnsConfigurationChanged___block_invoke;
  v5[3] = &unk_279BA1E90;
  objc_copyWeak(&v6, &location);
  [(PUINetworkController *)self loadConfigurationsForceRefresh:1 completionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __48__PUINetworkController_dnsConfigurationChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

- (void)saveConfiguration
{
  pathControllerConfiguration = [(PUINetworkController *)self pathControllerConfiguration];
  mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__PUINetworkController_saveConfiguration__block_invoke;
  v6[3] = &unk_279BA0C90;
  v7 = pathControllerConfiguration;
  v4 = pathControllerConfiguration;
  [mEMORY[0x277CD92B8] saveConfiguration:v4 withCompletionQueue:MEMORY[0x277D85CD0] handler:v6];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.PrivacySettingsUI.NetworkConfigChanged" object:0];
}

void __41__PUINetworkController_saveConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _PUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 136446722;
      v8 = "[PUINetworkController saveConfiguration]_block_invoke";
      v9 = 2114;
      v10 = v3;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_2657FE000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Save error %{public}@ for %{public}@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadConfigurationsForceRefresh:(BOOL)refresh completionHandler:(id)handler
{
  refreshCopy = refresh;
  handlerCopy = handler;
  pathControllerConfiguration = [(PUINetworkController *)self pathControllerConfiguration];

  if (!pathControllerConfiguration || refreshCopy)
  {
    mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__PUINetworkController_loadConfigurationsForceRefresh_completionHandler___block_invoke;
    v14[3] = &unk_279BA1EB8;
    v14[4] = self;
    v15 = handlerCopy;
    v11 = handlerCopy;
    [mEMORY[0x277CD92B8] loadConfigurationsWithCompletionQueue:MEMORY[0x277D85CD0] handler:v14];

    v9 = v15;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__PUINetworkController_loadConfigurationsForceRefresh_completionHandler___block_invoke_37;
    block[3] = &unk_279BA1038;
    v13 = handlerCopy;
    v8 = handlerCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v9 = v13;
  }
}

void __73__PUINetworkController_loadConfigurationsForceRefresh_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _PUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v31 = "[PUINetworkController loadConfigurationsForceRefresh:completionHandler:]_block_invoke";
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_2657FE000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Failed to load with error %{public}@", buf, 0x16u);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [*(a1 + 32) setDnsConfigurations:v8];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 name];
        if ([v15 isEqualToString:@"com.apple.preferences.networkprivacy"])
        {
          v16 = [v14 pathController];

          if (v16)
          {
            [*(a1 + 32) setPathControllerConfiguration:v14];
            continue;
          }
        }

        else
        {
        }

        v17 = [v14 dnsSettings];
        if (v17)
        {
          v18 = v17;
          v19 = [v14 grade];

          if (v19 == 2)
          {
            v20 = [*(a1 + 32) dnsConfigurations];
            [v20 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v21 = [*(a1 + 32) dnsConfigurations];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [*(a1 + 32) dnsConfigurations];
    [v23 sortUsingFunction:compareConfigurationNames context:0];
  }

  (*(*(a1 + 40) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

- (id)eligibleApplications
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pathControllerConfiguration = [(PUINetworkController *)self pathControllerConfiguration];
  pathController = [pathControllerConfiguration pathController];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  pathRules = [pathController pathRules];
  v8 = [pathRules countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(pathRules);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if ([v12 multicastPreferenceSet])
        {
          matchSigningIdentifier = [v12 matchSigningIdentifier];
          [v4 addObject:matchSigningIdentifier];
        }
      }

      v9 = [pathRules countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  if ([v4 count])
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __44__PUINetworkController_eligibleApplications__block_invoke;
    v23 = &unk_279BA1EE0;
    v24 = v4;
    v14 = v3;
    v25 = v14;
    v15 = _Block_copy(&v20);
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace enumerateApplicationsOfType:0 block:v15];
    [defaultWorkspace enumerateApplicationsOfType:1 block:v15];
    if ([v14 count])
    {
      [v14 sortUsingFunction:compareAppNames context:0];
    }

    v17 = v14;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

void __44__PUINetworkController_eligibleApplications__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    v6 = [v7 bundleIdentifier];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      [*(a1 + 40) addObject:v7];
    }
  }

  *a3 = 0;
}

- (id)networkConfigurationEnabled:(id)enabled
{
  v3 = [enabled propertyForKey:@"PUINetworkConfigurationKey"];
  dnsSettings = [v3 dnsSettings];
  if ([dnsSettings isEnabled])
  {
    v5 = @"On";
  }

  else
  {
    v5 = @"Off";
  }

  v6 = PUI_LocalizedStringForPrivacy(v5);

  return v6;
}

- (id)specifiers
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v23 = *MEMORY[0x277D3FC48];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v6 = PUI_LocalizedStringForPrivacy(@"LOCAL_NETWORK_FOOTER");
    [emptyGroupSpecifier setProperty:v6 forKey:*MEMORY[0x277D3FF88]];

    v25 = v4;
    v22 = emptyGroupSpecifier;
    [v4 addObject:emptyGroupSpecifier];
    selfCopy = self;
    [(PUINetworkController *)self eligibleApplications];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      v10 = *MEMORY[0x277D40020];
      v11 = *MEMORY[0x277D40008];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          bundleIdentifier = [v13 bundleIdentifier];
          v15 = MEMORY[0x277D3FAD8];
          localizedName = [v13 localizedName];
          v17 = [v15 preferenceSpecifierNamed:localizedName target:selfCopy set:sel_setLocalNetworkEnabled_specifier_ get:sel_isLocalNetworkEnabled_ detail:objc_opt_class() cell:6 edit:0];

          v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v17 setProperty:v18 forKey:v10];

          [v17 setProperty:bundleIdentifier forKey:v11];
          [v17 setProperty:bundleIdentifier forKey:@"PUINetworkApplicationKey"];
          [v25 addObject:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    v19 = *(&selfCopy->super.super.super.super.super.isa + v23);
    *(&selfCopy->super.super.super.super.super.isa + v23) = v25;

    v3 = *(&selfCopy->super.super.super.super.super.isa + v23);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)pathRuleForBundleID:(id)d create:(BOOL)create
{
  createCopy = create;
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathControllerConfiguration = [(PUINetworkController *)self pathControllerConfiguration];
  pathController = [pathControllerConfiguration pathController];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  pathRules = [pathController pathRules];
  v10 = [pathRules countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(pathRules);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        matchSigningIdentifier = [v14 matchSigningIdentifier];
        v16 = [matchSigningIdentifier isEqualToString:dCopy];

        if (v16)
        {
          v17 = v14;
          goto LABEL_13;
        }
      }

      v11 = [pathRules countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (createCopy)
  {
    v17 = [objc_alloc(MEMORY[0x277CD92D0]) initWithSigningIdentifier:dCopy];
    pathRules2 = [pathController pathRules];

    if (pathRules2)
    {
      pathRules = [pathController pathRules];
      v19 = [pathRules arrayByAddingObject:v17];
      [pathController setPathRules:v19];
    }

    else
    {
      v26 = v17;
      pathRules = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [pathController setPathRules:pathRules];
    }

LABEL_13:
  }

  else
  {
    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v9 = [specifier propertyForKey:@"PUINetworkApplicationKey"];
  v7 = [(PUINetworkController *)self pathRuleForBundleID:v9 create:1];
  bOOLValue = [enabledCopy BOOLValue];

  [v7 setDenyMulticast:bOOLValue ^ 1u];
  [v7 setMulticastPreferenceSet:1];
  [(PUINetworkController *)self saveConfiguration];
  self->_isWaitingForNetworkConfigurationDidChangeInResponseToUserInteractionWithToggle = 1;
}

- (id)isLocalNetworkEnabled:(id)enabled
{
  v4 = [enabled propertyForKey:@"PUINetworkApplicationKey"];
  v5 = [(PUINetworkController *)self pathRuleForBundleID:v4 create:0];
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{objc_msgSend(v5, "denyMulticast") ^ 1}];

  return v6;
}

@end