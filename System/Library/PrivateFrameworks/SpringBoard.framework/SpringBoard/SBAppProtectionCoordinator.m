@interface SBAppProtectionCoordinator
+ (BOOL)isEnabled;
- (SBAppProtectionCoordinator)init;
- (id)assistantForApplication:(id)a3;
- (void)_updateShouldHide;
- (void)appProtectionAssistantShouldHideDidChange:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)applicationsChanged:(id)a3;
- (void)dealloc;
- (void)noteAllScenesDismissedForAssistant:(id)a3;
- (void)noteSceneWillBecomeForegroundVisibleForAssistant:(id)a3;
@end

@implementation SBAppProtectionCoordinator

+ (BOOL)isEnabled
{
  if (APCoreFunctionalityEnabled())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

void __34__SBAppProtectionCoordinator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateShouldHide];
}

- (void)_updateShouldHide
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_bundleIdentifiersToAssistants allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _updateShouldHide];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (SBAppProtectionCoordinator)init
{
  v21.receiver = self;
  v21.super_class = SBAppProtectionCoordinator;
  v2 = [(SBAppProtectionCoordinator *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc_init(_SBAppProtectionPlugin);
    [(_SBAppProtectionPlugin *)v3 set_owningCoordinator:v2];
    v4 = [objc_alloc(MEMORY[0x277CEBEC0]) initWithSystemAppInterface:v3];
    systemAppOutlet = v2->_systemAppOutlet;
    v2->_systemAppOutlet = v4;

    [(APSystemAppOutlet *)v2->_systemAppOutlet resume];
    v6 = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v7 = [v6 addMonitor:v2 subjectMask:2];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v2 selector:sel_applicationsChanged_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];

    objc_initWeak(&location, v2);
    v9 = MEMORY[0x277CF0BD0];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __34__SBAppProtectionCoordinator_init__block_invoke;
    v18 = &unk_2783AD688;
    objc_copyWeak(&v19, &location);
    v10 = [v9 assertionWithIdentifier:@"Suppress hiding hidden apps" stateDidChangeHandler:&v15];
    suppressHidingAssertions = v2->_suppressHidingAssertions;
    v2->_suppressHidingAssertions = v10;

    v12 = v2->_suppressHidingAssertions;
    v13 = SBLogAppProtection();
    [(BSCompoundAssertion *)v12 setLog:v13, v15, v16, v17, v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(APSystemAppOutlet *)self->_systemAppOutlet invalidate];
  v3.receiver = self;
  v3.super_class = SBAppProtectionCoordinator;
  [(SBAppProtectionCoordinator *)&v3 dealloc];
}

- (void)applicationsChanged:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBInstalledApplicationsRemovedBundleIDs"];

  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_bundleIdentifiersToAssistants objectForKey:v11, v13];
          [v12 invalidate];

          [(NSMutableDictionary *)self->_bundleIdentifiersToAssistants removeObjectForKey:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (id)assistantForApplication:(id)a3
{
  v4 = a3;
  bundleIdentifiersToAssistants = self->_bundleIdentifiersToAssistants;
  if (!bundleIdentifiersToAssistants)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = self->_bundleIdentifiersToAssistants;
    self->_bundleIdentifiersToAssistants = v6;

    bundleIdentifiersToAssistants = self->_bundleIdentifiersToAssistants;
  }

  v8 = [v4 bundleIdentifier];
  v9 = [(NSMutableDictionary *)bundleIdentifiersToAssistants objectForKey:v8];

  if (v4 && !v9)
  {
    v9 = [[SBApplicationAppProtectionAssistant alloc] initWithApplication:v4];
    [(SBApplicationAppProtectionAssistant *)v9 setOwningCoordinator:self];
    systemAppOutlet = self->_systemAppOutlet;
    v11 = [(SBApplicationAppProtectionAssistant *)v9 appProtectionApplication];
    [(SBApplicationAppProtectionAssistant *)v9 setShouldShield:[(APSystemAppOutlet *)systemAppOutlet shouldShieldLaunchOfApplication:v11]];

    [(SBApplicationAppProtectionAssistant *)v9 addObserver:self];
    v12 = self->_bundleIdentifiersToAssistants;
    v13 = [v4 bundleIdentifier];
    [(NSMutableDictionary *)v12 setObject:v9 forKey:v13];
  }

  return v9;
}

- (void)noteAllScenesDismissedForAssistant:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogAppProtection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    systemAppOutlet = self->_systemAppOutlet;
    v7 = [v4 appProtectionApplication];
    v10 = 138543618;
    v11 = systemAppOutlet;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Informing %{public}@ that %@ will become background as far as we know", &v10, 0x16u);
  }

  v8 = self->_systemAppOutlet;
  v9 = [v4 appProtectionApplication];
  [(APSystemAppOutlet *)v8 noteAllScenesDismissedForApplication:v9];
}

- (void)noteSceneWillBecomeForegroundVisibleForAssistant:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogAppProtection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    systemAppOutlet = self->_systemAppOutlet;
    v7 = [v4 appProtectionApplication];
    v10 = 138543618;
    v11 = systemAppOutlet;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Informing %{public}@ that %@ will become foreground visible", &v10, 0x16u);
  }

  v8 = self->_systemAppOutlet;
  v9 = [v4 appProtectionApplication];
  [(APSystemAppOutlet *)v8 noteSceneWillBecomeForegroundVisibleForApplication:v9];
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [MEMORY[0x277CEBEB8] hiddenMetaSubject];
        LODWORD(v9) = [v9 isEqual:v10];

        if (v9)
        {
          BSDispatchMain();
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)appProtectionAssistantShouldHideDidChange:(id)a3
{
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [MEMORY[0x277CCAB88] notificationWithName:@"SBAppProtectionCoordinatorHiddenAppsDidChange" object:self];
  [v5 postNotification:v4];
}

@end