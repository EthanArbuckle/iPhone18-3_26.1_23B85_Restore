@interface SBBacklightEnvironmentSessionProvider
- (NSSet)currentPresentationBundleIdentifiers;
- (SBBacklightEnvironmentSessionProvider)init;
- (id)_backlightPresentationEntries;
- (id)_buildPresentation;
- (id)createInactiveEnvironmentSession;
- (void)_notifyObserversOfPresentation;
- (void)_rebuildPresentation;
- (void)_setCurrentSession:(id)a3;
- (void)addObserver:(id)a3;
- (void)didEndInactiveEnvironmentSession:(id)a3;
- (void)invalidateBacklightSceneHostEnvironmentsForProvider:(id)a3;
- (void)invalidateBacklightScenesForProvider:(id)a3;
- (void)registerBacklightEnvironmentSceneProvider:(id)a3;
- (void)registerBacklightSceneHostEnvironmentProvider:(id)a3;
- (void)unregisterBacklightEnvironmentSceneProvider:(id)a3;
- (void)unregisterBacklightSceneHostEnvironmentProvider:(id)a3;
@end

@implementation SBBacklightEnvironmentSessionProvider

- (void)_rebuildPresentation
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SBBacklightEnvironmentSessionProvider *)self _currentSession];
  if (v3)
  {
    v4 = [(SBBacklightEnvironmentSessionProvider *)self _buildPresentation];
    v5 = [v3 presentation];
    v6 = [v4 isEqual:v5];
    v7 = [SBApp windowSceneManager];
    v8 = [v7 embeddedDisplayWindowScene];

    v9 = [v8 _FBSScene];
    if (v9)
    {
      v10 = MEMORY[0x277D65DC0];
      v11 = self->_presentationUpdateLiveRenderAssertion;
      v12 = [v10 sharedInstance];
      v13 = [v12 acquireLiveRenderingAssertionForFBSScene:v9 reason:@"updatingPresentation"];
      presentationUpdateLiveRenderAssertion = self->_presentationUpdateLiveRenderAssertion;
      self->_presentationUpdateLiveRenderAssertion = v13;

      [(BSInvalidatable *)v11 invalidate];
    }

    v15 = SBLogBacklight();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Rebuilt inactive environment presentation: %@", &v17, 0xCu);
    }

    [v3 setPresentation:v4];
    [(SBBacklightEnvironmentSessionProvider *)self _notifyObserversOfPresentation];
    if (v6)
    {
      [(BSInvalidatable *)self->_presentationUpdateLiveRenderAssertion invalidate];
      v16 = self->_presentationUpdateLiveRenderAssertion;
      self->_presentationUpdateLiveRenderAssertion = 0;
    }
  }

  else
  {
    v4 = SBLogBacklight();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "No active session so not rebuilding inactive environment presentation", &v17, 2u);
    }
  }
}

- (id)_buildPresentation
{
  if (SBFIsShellSceneKitAvailable())
  {
    v3 = [SBApp displayProfileManager];
    v4 = [v3 rootWindowCAContext];
  }

  else
  {
    v5 = +[SBMainDisplayRootWindowScenePresentationBinder sharedInstance];
    v3 = [v5 rootWindow];

    v6 = [v3 layer];
    v4 = [v6 context];
  }

  v7 = [(SBBacklightEnvironmentSessionProvider *)self _backlightPresentationEntries];
  v8 = [objc_alloc(MEMORY[0x277CF0A20]) initWithCAContext:v4 wantsTransform:0 inverted:0];
  v9 = [objc_alloc(MEMORY[0x277CF0A08]) initWithPresentationEntries:v7 flipbookContext:v8 expirationDate:0];

  return v9;
}

- (id)_backlightPresentationEntries
{
  v102 = *MEMORY[0x277D85DE8];
  if (self->_springBoardBootCompleted)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
    if (SBFIsShellSceneKitAvailable())
    {
      v4 = [SBApp windowSceneManager];
      v5 = [v4 embeddedDisplayWindowScene];
      v6 = [v5 _fbsDisplayConfiguration];

      v7 = [MEMORY[0x277D46F48] currentProcess];
      v8 = [SBApp displayProfileManager];
      v9 = [v8 fbScenes];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __70__SBBacklightEnvironmentSessionProvider__backlightPresentationEntries__block_invoke;
      v93[3] = &unk_2783AC480;
      v10 = &v94;
      v11 = &v95;
      v94 = v6;
      v95 = v7;
      v12 = v7;
      v13 = v6;
      v14 = [v9 bs_filter:v93];

      v3 = v9;
    }

    else
    {
      v17 = [MEMORY[0x277D0AA90] mainConfiguration];
      v18 = [MEMORY[0x277D46F48] currentProcess];
      v8 = [MEMORY[0x277D0AAD8] sharedInstance];
      v90[0] = MEMORY[0x277D85DD0];
      v90[1] = 3221225472;
      v90[2] = __70__SBBacklightEnvironmentSessionProvider__backlightPresentationEntries__block_invoke_2;
      v90[3] = &unk_2783C15C0;
      v10 = &v91;
      v11 = &v92;
      v91 = v17;
      v92 = v18;
      v12 = v18;
      v13 = v17;
      v14 = [v8 scenesPassingTest:v90];
    }

    v62 = v14;
    v19 = [v14 allObjects];
    v61 = [v19 bs_map:&__block_literal_global_74];

    v20 = [MEMORY[0x277CBEB18] array];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v60 = self;
    obj = self->_backlightEnvironmentSceneProviders;
    v66 = [(NSHashTable *)obj countByEnumeratingWithState:&v86 objects:v101 count:16];
    if (v66)
    {
      v64 = *v87;
      do
      {
        v21 = 0;
        do
        {
          if (*v87 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v68 = v21;
          v22 = *(*(&v86 + 1) + 8 * v21);
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v23 = [v22 scenesForBacklightSession];
          v24 = [v23 countByEnumeratingWithState:&v82 objects:v100 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v83;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v83 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v82 + 1) + 8 * i);
                v29 = [v28 backlightSceneHostEnvironment];
                v30 = objc_alloc(MEMORY[0x277CF0A38]);
                v31 = [v28 clientHandle];
                v32 = [v31 bundleIdentifier];
                v33 = [v30 initWithEnvironment:v29 userObject:v32];
                [v20 addObject:v33];
              }

              v25 = [v23 countByEnumeratingWithState:&v82 objects:v100 count:16];
            }

            while (v25);
          }

          v21 = v68 + 1;
        }

        while (v68 + 1 != v66);
        v66 = [(NSHashTable *)obj countByEnumeratingWithState:&v86 objects:v101 count:16];
      }

      while (v66);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v65 = v60->_backlightSceneHostEnvironmentProviders;
    v69 = [(NSHashTable *)v65 countByEnumeratingWithState:&v78 objects:v99 count:16];
    if (v69)
    {
      v67 = *v79;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v79 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v35 = *(*(&v78 + 1) + 8 * j);
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v36 = [v35 sceneHostEnvironmentEntriesForBacklightSession];
          v37 = [v36 countByEnumeratingWithState:&v74 objects:v98 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v75;
            do
            {
              for (k = 0; k != v38; ++k)
              {
                if (*v75 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v74 + 1) + 8 * k);
                v42 = objc_alloc(MEMORY[0x277CF0A38]);
                v43 = [v41 environment];
                v44 = [v41 bundleIdentifier];
                v45 = [v42 initWithEnvironment:v43 userObject:v44];
                [v20 addObject:v45];
              }

              v38 = [v36 countByEnumeratingWithState:&v74 objects:v98 count:16];
            }

            while (v38);
          }
        }

        v69 = [(NSHashTable *)v65 countByEnumeratingWithState:&v78 objects:v99 count:16];
      }

      while (v69);
    }

    v46 = [SBApp screenSleepCoordinator];
    v47 = [v46 backlightSceneHostEnvironment];

    if (v47)
    {
      v48 = [objc_alloc(MEMORY[0x277CF0A38]) initWithEnvironment:v47 userObject:0];
      v49 = v61;
      if (v48)
      {
        v50 = v48;
        v51 = [MEMORY[0x277CBEA60] arrayWithObject:v48];
      }

      else
      {
        v51 = MEMORY[0x277CBEBF8];
      }

      v15 = v62;
    }

    else
    {
      v51 = MEMORY[0x277CBEBF8];
      v49 = v61;
      v15 = v62;
    }

    v52 = [v51 arrayByAddingObjectsFromArray:v49];

    v53 = [v52 arrayByAddingObjectsFromArray:v20];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v16 = v53;
    v54 = [v16 countByEnumeratingWithState:&v70 objects:v97 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v71;
      do
      {
        for (m = 0; m != v55; ++m)
        {
          if (*v71 != v56)
          {
            objc_enumerationMutation(v16);
          }

          v58 = [*(*(&v70 + 1) + 8 * m) environment];
          [v58 setAlwaysOnEnabledForEnvironment:{objc_msgSend(v58, "clientSupportsAlwaysOn")}];
        }

        v55 = [v16 countByEnumeratingWithState:&v70 objects:v97 count:16];
      }

      while (v55);
    }
  }

  else
  {
    v15 = SBLogBacklight();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Constructing empty backlight environment presentation while SpringBoard is booting", buf, 2u);
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

BOOL __70__SBBacklightEnvironmentSessionProvider__backlightPresentationEntries__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 settings];
  v5 = [v4 displayConfiguration];
  if ([v5 isEqual:*(a1 + 32)])
  {
    v6 = [v3 clientHandle];
    v7 = [v6 processHandle];
    v8 = [v7 isEqual:*(a1 + 40)];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v3 definition];
  v11 = [v10 specification];
  v12 = [v11 uiSceneSessionRole];
  v13 = [v12 isEqualToString:*MEMORY[0x277D772C8]];

  v14 = [v3 identity];
  v15 = [v14 workspaceIdentifier];

  v16 = 0;
  if ((v9 & 1) == 0 && v13 && !v15)
  {
    v17 = [v3 delegate];
    v16 = v17 != 0;
  }

  return v16;
}

id __70__SBBacklightEnvironmentSessionProvider__backlightPresentationEntries__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 backlightSceneHostEnvironment];
  v4 = objc_alloc(MEMORY[0x277CF0A38]);
  v5 = [v2 clientHandle];

  v6 = [v5 bundleIdentifier];
  v7 = [v4 initWithEnvironment:v3 userObject:v6];

  return v7;
}

- (void)_notifyObserversOfPresentation
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SBBacklightEnvironmentSessionProvider *)self _currentSession];
  v4 = [v3 presentation];

  v5 = [(SBBacklightEnvironmentSessionProvider *)self currentPresentationBundleIdentifiers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) backlightEnvironmentSessionsProvider:self didUpdatePresentation:v4 withBundleIdentifiers:{v5, v11}];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (NSSet)currentPresentationBundleIdentifiers
{
  v2 = [(SBBacklightEnvironmentSessionProvider *)self _currentSession];
  v3 = [v2 presentation];

  v4 = [v3 presentationEntries];
  v5 = [v4 bs_compactMap:&__block_literal_global_390];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:v6];

  return v7;
}

id __77__SBBacklightEnvironmentSessionProvider_currentPresentationBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBBacklightEnvironmentSessionProvider)init
{
  v21.receiver = self;
  v21.super_class = SBBacklightEnvironmentSessionProvider;
  v2 = [(SBBacklightEnvironmentSessionProvider *)&v21 init];
  v3 = v2;
  if (v2)
  {
    v2->_springBoardBootCompleted = 0;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(&location, v4);

    objc_initWeak(&from, v3);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__121;
    v17 = __Block_byref_object_dispose__121;
    v18 = 0;
    v5 = objc_loadWeakRetained(&location);
    v6 = [MEMORY[0x277CCABD8] mainQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__SBBacklightEnvironmentSessionProvider_init__block_invoke;
    v10[3] = &unk_2783ABBE8;
    objc_copyWeak(&v11, &from);
    objc_copyWeak(&v12, &location);
    v10[4] = &v13;
    v7 = [v5 addObserverForName:@"SBBootCompleteNotification" object:0 queue:v6 usingBlock:v10];
    v8 = v14[5];
    v14[5] = v7;

    _Block_object_dispose(&v13, 8);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __45__SBBacklightEnvironmentSessionProvider_init__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SBBacklightEnvironmentSessionProvider_init__block_invoke_2;
  block[3] = &unk_2783C1578;
  objc_copyWeak(&v3, (a1 + 40));
  objc_copyWeak(&v4, (a1 + 48));
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v3);
}

void __45__SBBacklightEnvironmentSessionProvider_init__block_invoke_2(uint64_t a1)
{
  v2 = SBLogBacklight();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Invalidating backlight environment presentation at end of SpringBoard boot", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[48] = 1;
    [WeakRetained _rebuildPresentation];
  }

  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 removeObserver:*(*(*(a1 + 32) + 8) + 40)];
}

- (void)registerBacklightEnvironmentSceneProvider:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  backlightEnvironmentSceneProviders = self->_backlightEnvironmentSceneProviders;
  if (!backlightEnvironmentSceneProviders)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_backlightEnvironmentSceneProviders;
    self->_backlightEnvironmentSceneProviders = v6;

    backlightEnvironmentSceneProviders = self->_backlightEnvironmentSceneProviders;
  }

  [(NSHashTable *)backlightEnvironmentSceneProviders addObject:v4];
  v8 = SBLogBacklight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 succinctDescription];
    }

    else
    {
      [v4 description];
    }
    v9 = ;
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating backlight environment presentation after adding scene provider %@", &v10, 0xCu);
  }

  [(SBBacklightEnvironmentSessionProvider *)self _rebuildPresentation];
}

- (void)unregisterBacklightEnvironmentSceneProvider:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSHashTable *)self->_backlightEnvironmentSceneProviders removeObject:v4];
  v5 = SBLogBacklight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 succinctDescription];
    }

    else
    {
      [v4 description];
    }
    v6 = ;
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating backlight environment presentation after removing scene provider %@", &v7, 0xCu);
  }

  [(SBBacklightEnvironmentSessionProvider *)self _rebuildPresentation];
}

- (void)registerBacklightSceneHostEnvironmentProvider:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  backlightSceneHostEnvironmentProviders = self->_backlightSceneHostEnvironmentProviders;
  if (!backlightSceneHostEnvironmentProviders)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_backlightSceneHostEnvironmentProviders;
    self->_backlightSceneHostEnvironmentProviders = v6;

    backlightSceneHostEnvironmentProviders = self->_backlightSceneHostEnvironmentProviders;
  }

  [(NSHashTable *)backlightSceneHostEnvironmentProviders addObject:v4];
  v8 = SBLogBacklight();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 succinctDescription];
    }

    else
    {
      [v4 description];
    }
    v9 = ;
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating backlight environment presentation after adding environment provider %@", &v10, 0xCu);
  }

  [(SBBacklightEnvironmentSessionProvider *)self _rebuildPresentation];
}

- (void)unregisterBacklightSceneHostEnvironmentProvider:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSHashTable *)self->_backlightSceneHostEnvironmentProviders removeObject:v4];
  v5 = SBLogBacklight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 succinctDescription];
    }

    else
    {
      [v4 description];
    }
    v6 = ;
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating backlight environment presentation after removing environment provider %@", &v7, 0xCu);
  }

  [(SBBacklightEnvironmentSessionProvider *)self _rebuildPresentation];
}

- (void)invalidateBacklightScenesForProvider:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogBacklight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 succinctDescription];
    }

    else
    {
      [v4 description];
    }
    v6 = ;
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating backlight environment presentation for scene provider %@", &v7, 0xCu);
  }

  [(SBBacklightEnvironmentSessionProvider *)self _rebuildPresentation];
}

- (void)invalidateBacklightSceneHostEnvironmentsForProvider:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogBacklight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (objc_opt_respondsToSelector())
    {
      [v4 succinctDescription];
    }

    else
    {
      [v4 description];
    }
    v6 = ;
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating backlight environment presentation for environment provider %@", &v7, 0xCu);
  }

  [(SBBacklightEnvironmentSessionProvider *)self _rebuildPresentation];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

BOOL __70__SBBacklightEnvironmentSessionProvider__backlightPresentationEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 settings];
  v5 = [v4 displayConfiguration];
  if ([v5 isEqual:*(a1 + 32)])
  {
    v6 = [v3 clientHandle];
    v7 = [v6 processHandle];
    v8 = [v7 isEqual:*(a1 + 40)];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v3 definition];
  v11 = [v10 specification];
  v12 = [v11 uiSceneSessionRole];
  v13 = [v12 isEqualToString:*MEMORY[0x277D772C8]];

  v14 = [v3 identity];
  v15 = [v14 workspaceIdentifier];

  v16 = 0;
  if ((v9 & 1) == 0 && v13 && !v15)
  {
    v17 = [v3 delegate];
    v16 = v17 != 0;
  }

  return v16;
}

- (void)_setCurrentSession:(id)a3
{
  v5 = a3;
  currentSession = self->_currentSession;
  if (currentSession != v5)
  {
    v7 = v5;
    [(BLSHBacklightInactiveEnvironmentSession *)currentSession removeObserver:self];
    objc_storeStrong(&self->_currentSession, a3);
    [(BLSHBacklightInactiveEnvironmentSession *)self->_currentSession addObserver:self];
    [(SBBacklightEnvironmentSessionProvider *)self _notifyObserversOfPresentation];
    v5 = v7;
  }
}

void __92__SBBacklightEnvironmentSessionProvider_inactiveEnvironmentSession_didUpdateToPresentation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)didEndInactiveEnvironmentSession:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __74__SBBacklightEnvironmentSessionProvider_didEndInactiveEnvironmentSession___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _currentSession];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _setCurrentSession:0];
  }
}

- (id)createInactiveEnvironmentSession
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(SBBacklightEnvironmentSessionProvider *)self _buildPresentation];
  v4 = SBLogBacklight();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "New inactive environment presentation: %@", &v7, 0xCu);
  }

  v5 = [MEMORY[0x277CF0A18] sessionWithPresentation:v3];
  [v5 addObserver:self];
  [(SBBacklightEnvironmentSessionProvider *)self _setCurrentSession:v5];

  return v5;
}

@end