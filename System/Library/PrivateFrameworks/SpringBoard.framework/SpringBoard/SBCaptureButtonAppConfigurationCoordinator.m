@interface SBCaptureButtonAppConfigurationCoordinator
- (SBCaptureButtonAppConfigurationCoordinator)init;
- (void)_notifyObserversOfConfigurationUpdates;
- (void)_reevaluateCurrentAssociatedApp;
- (void)_setAssociatedAppBundleIdentifier:(id)a3 shouldPersistToDefaults:(BOOL)a4;
- (void)_setAssociatedAppBundleIdentifierFromDefaults;
- (void)_setEligibleApps:(id)a3;
- (void)_updateLaunchActionsAssertionForAssociatedAppBundleIdentifier:(id)a3;
- (void)addObserver:(id)a3;
- (void)captureApplicationCenter:(id)a3 didUpdateKnownApplications:(id)a4;
- (void)captureButtonAppConfigurationServer:(id)a3 setCurrentAssociatedAppUsingBundleIdentifier:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation SBCaptureButtonAppConfigurationCoordinator

- (SBCaptureButtonAppConfigurationCoordinator)init
{
  v32.receiver = self;
  v32.super_class = SBCaptureButtonAppConfigurationCoordinator;
  v2 = [(SBCaptureButtonAppConfigurationCoordinator *)&v32 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = +[SBDefaults localDefaults];
    v6 = [v5 captureButtonDefaults];
    captureButtonDefaults = v2->_captureButtonDefaults;
    v2->_captureButtonDefaults = v6;

    objc_initWeak(&location, v2);
    v8 = v2->_captureButtonDefaults;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"captureButtonAssociatedAppBundleIdentifier"];
    v10 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __50__SBCaptureButtonAppConfigurationCoordinator_init__block_invoke;
    v29 = &unk_2783A8C68;
    objc_copyWeak(&v30, &location);
    v12 = [(SBCaptureButtonDefaults *)v8 observeDefault:v9 onQueue:v10 withBlock:&v26];

    v13 = [(SBCaptureButtonDefaults *)v2->_captureButtonDefaults captureButtonAssociatedAppBundleIdentifier:v26];
    LODWORD(v8) = [v13 isEqualToString:@"none"];

    if (v8)
    {
      associatedAppBundleIdentifier = v2->_associatedAppBundleIdentifier;
      v2->_associatedAppBundleIdentifier = 0;

      v15 = objc_alloc_init(MEMORY[0x277CBEB98]);
      eligibleApps = v2->_eligibleApps;
      v2->_eligibleApps = v15;
    }

    else
    {
      v17 = [(SBCaptureButtonDefaults *)v2->_captureButtonDefaults captureButtonAssociatedAppBundleIdentifier];
      v18 = v2->_associatedAppBundleIdentifier;
      v2->_associatedAppBundleIdentifier = v17;

      v19 = MEMORY[0x277CBEB98];
      eligibleApps = [objc_alloc(MEMORY[0x277D66A30]) initWithBundleIdentifier:v2->_associatedAppBundleIdentifier cameraTCCIsAuthorized:1];
      v20 = [v19 setWithObject:eligibleApps];
      v21 = v2->_eligibleApps;
      v2->_eligibleApps = v20;
    }

    v22 = [objc_alloc(MEMORY[0x277D66A28]) initWithAssociatedAppBundleIdentifier:v2->_associatedAppBundleIdentifier eligibleApps:v2->_eligibleApps delegate:v2];
    server = v2->_server;
    v2->_server = v22;

    [(SBSCaptureButtonAppConfigurationServer *)v2->_server startServer];
    v24 = +[SBCaptureApplicationCenter sharedInstance];
    [v24 addObserver:v2];

    [(SBCaptureButtonAppConfigurationCoordinator *)v2 _updateLaunchActionsAssertionForAssociatedAppBundleIdentifier:v2->_associatedAppBundleIdentifier];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __50__SBCaptureButtonAppConfigurationCoordinator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setAssociatedAppBundleIdentifierFromDefaults];
    WeakRetained = v2;
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v6;
    if (!v5)
    {
      [(NSHashTable *)self->_observers addObject:v6];
      v4 = v6;
    }
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)captureButtonAppConfigurationServer:(id)a3 setCurrentAssociatedAppUsingBundleIdentifier:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v11 = self;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Coordinator %p set current associated app to %{public}@ from server %{public}@", buf, 0x20u);
  }

  v9 = v7;
  BSDispatchMain();
}

- (void)captureApplicationCenter:(id)a3 didUpdateKnownApplications:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277D66A30]);
        v15 = [v13 bundleIdentifier];
        v16 = [v13 attributes];
        v17 = [v14 initWithBundleIdentifier:v15 cameraTCCIsAuthorized:{objc_msgSend(v16, "cameraTCCStatus") == 4}];

        [v7 addObject:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v10);
  }

  v18 = [v7 copy];
  v19 = [v18 bs_map:&__block_literal_global_112];
  v20 = [v19 allObjects];

  v21 = SBLogCameraCaptureAppConfiguration();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v28 = self;
    v29 = 2114;
    v30 = v20;
    v31 = 2114;
    v32 = v22;
    _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Coordinator %p received updated eligible apps bundle identifiers %{public}@ according to source %{public}@", buf, 0x20u);
  }

  [(SBCaptureButtonAppConfigurationCoordinator *)self _setEligibleApps:v7];
  [(SBCaptureButtonAppConfigurationCoordinator *)self _reevaluateCurrentAssociatedApp];
}

- (void)_reevaluateCurrentAssociatedApp
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [SBApp authenticationController];
  v4 = [v3 hasAuthenticatedAtLeastOnceSinceBoot];

  if (v4)
  {
    *buf = 0;
    v12 = buf;
    v13 = 0x2020000000;
    v14 = 0;
    eligibleApps = self->_eligibleApps;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__SBCaptureButtonAppConfigurationCoordinator__reevaluateCurrentAssociatedApp__block_invoke;
    v10[3] = &unk_2783B2D80;
    v10[4] = self;
    v10[5] = buf;
    [(NSSet *)eligibleApps enumerateObjectsUsingBlock:v10];
    if (v12[24])
    {
      v6 = [(SBCaptureButtonDefaults *)self->_captureButtonDefaults captureButtonAssociatedAppBundleIdentifier];
      [(SBCaptureButtonAppConfigurationCoordinator *)self _setAssociatedAppBundleIdentifier:v6 shouldPersistToDefaults:0];
    }

    else
    {
      [(SBCaptureButtonAppConfigurationCoordinator *)self _setAssociatedAppBundleIdentifier:0 shouldPersistToDefaults:0];
    }

    v8 = SBLogCameraCaptureAppConfiguration();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      associatedAppBundleIdentifier = self->_associatedAppBundleIdentifier;
      *v15 = 134218242;
      v16 = self;
      v17 = 2114;
      v18 = associatedAppBundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Coordinator %p reevaluated current associated app to %{public}@", v15, 0x16u);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = SBLogCameraCaptureAppConfiguration();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Before first unlock, we should always use the user's selection(stored in defaults) to attempt to launch.", buf, 2u);
    }
  }
}

void __77__SBCaptureButtonAppConfigurationCoordinator__reevaluateCurrentAssociatedApp__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleIdentifier];
  v4 = [*(*(a1 + 32) + 16) captureButtonAssociatedAppBundleIdentifier];
  if (BSEqualStrings())
  {
    v5 = [v6 cameraTCCIsAuthorized];

    if (v5)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
  }
}

- (void)_setAssociatedAppBundleIdentifierFromDefaults
{
  associatedAppBundleIdentifier = self->_associatedAppBundleIdentifier;
  if (!associatedAppBundleIdentifier)
  {
    associatedAppBundleIdentifier = @"none";
  }

  v8 = associatedAppBundleIdentifier;
  v4 = [(SBCaptureButtonDefaults *)self->_captureButtonDefaults captureButtonAssociatedAppBundleIdentifier];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    v6 = [(SBCaptureButtonDefaults *)self->_captureButtonDefaults captureButtonAssociatedAppBundleIdentifier];
    v7 = self->_associatedAppBundleIdentifier;
    self->_associatedAppBundleIdentifier = v6;

    [(SBCaptureButtonAppConfigurationCoordinator *)self _notifyObserversOfConfigurationUpdates];
    [(SBSCaptureButtonAppConfigurationServer *)self->_server setAssociatedAppBundleIdentifier:self->_associatedAppBundleIdentifier];
  }

  [(SBCaptureButtonAppConfigurationCoordinator *)self _updateLaunchActionsAssertionForAssociatedAppBundleIdentifier:v8];
}

- (void)_setAssociatedAppBundleIdentifier:(id)a3 shouldPersistToDefaults:(BOOL)a4
{
  v4 = a4;
  p_associatedAppBundleIdentifier = &self->_associatedAppBundleIdentifier;
  v10 = a3;
  if ((BSEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_associatedAppBundleIdentifier, a3);
    v8 = *p_associatedAppBundleIdentifier;
    if (!*p_associatedAppBundleIdentifier)
    {
      v8 = @"none";
    }

    v9 = v8;
    if (v4)
    {
      [(SBCaptureButtonDefaults *)self->_captureButtonDefaults setCaptureButtonAssociatedAppBundleIdentifier:v9];
    }

    [(SBCaptureButtonAppConfigurationCoordinator *)self _notifyObserversOfConfigurationUpdates];
    [(SBSCaptureButtonAppConfigurationServer *)self->_server setAssociatedAppBundleIdentifier:v10];
  }

  [(SBCaptureButtonAppConfigurationCoordinator *)self _updateLaunchActionsAssertionForAssociatedAppBundleIdentifier:v10];
}

- (void)_setEligibleApps:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_eligibleApps, a3);
    [(SBCaptureButtonAppConfigurationCoordinator *)self _notifyObserversOfConfigurationUpdates];
    [(SBSCaptureButtonAppConfigurationServer *)self->_server setEligibleApps:v5];
  }
}

- (void)_notifyObserversOfConfigurationUpdates
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) captureButtonAppConfigurationUpdated:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateLaunchActionsAssertionForAssociatedAppBundleIdentifier:(id)a3
{
  v12 = a3;
  [(BSInvalidatable *)self->_captureApplicationLaunchActionsAssertion invalidate];
  if (v12)
  {
    v4 = +[SBCaptureApplicationCenter sharedInstance];
    v5 = [v4 captureApplicationForBundleIdentifier:v12];

    v6 = objc_opt_class();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [(BSInvalidatable *)v9 acquireLaunchPrewarmAssertionForReason:@"associated to capture button"];

    captureApplicationLaunchActionsAssertion = self->_captureApplicationLaunchActionsAssertion;
    self->_captureApplicationLaunchActionsAssertion = v10;
  }

  else
  {
    v7 = self->_captureApplicationLaunchActionsAssertion;
    self->_captureApplicationLaunchActionsAssertion = 0;
  }
}

@end