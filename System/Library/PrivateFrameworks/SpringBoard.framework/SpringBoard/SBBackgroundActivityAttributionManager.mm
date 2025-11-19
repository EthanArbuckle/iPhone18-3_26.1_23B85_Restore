@interface SBBackgroundActivityAttributionManager
+ (id)sharedInstance;
- (BOOL)handleTapForBackgroundActivityWithIdentifier:(id)a3 windowScene:(id)a4;
- (SBBackgroundActivityAttributionManager)init;
- (id)_applicationForBackgroundActivityAttribution:(id)a3;
- (id)_statusStringsByIdentifierForActiveAttributionsByBackgroundActivityIdentifier:(id)a3 inactiveAttributionsByBackgroundActivityIdentifier:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles:(id)a3 withHandler:(id)a4;
- (void)_postStatusStringsByIdentifier:(id)a3;
- (void)_queue_updateWithData:(id)a3 andOverrides:(id)a4;
- (void)_registerHandlerAndHandleExistingState;
- (void)_updateAppSceneSettingsForForegroundAppsAndPostAddedBackgroundActivityIdentifiers:(id)a3 removedBackgroundActivityIdentifiers:(id)a4;
- (void)dealloc;
- (void)statusBarAssertionManager:(id)a3 statusBarSettingsDidChange:(id)a4;
- (void)updateForegroundApplicationSceneHandles:(id)a3 withOptions:(unint64_t)a4 completion:(id)a5;
@end

@implementation SBBackgroundActivityAttributionManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SBBackgroundActivityAttributionManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_19 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_19, block);
  }

  v2 = sharedInstance___sharedBackgroundActivityAssertionManager;

  return v2;
}

void __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_updateWithData:*(a1 + 32) andOverrides:WeakRetained[4]];
    WeakRetained = v3;
  }
}

void __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke_2;
  v6[3] = &unk_2783A9CE8;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

uint64_t __56__SBBackgroundActivityAttributionManager_sharedInstance__block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = objc_alloc_init([*(a1 + 32) _implementationClass]);
  v3 = sharedInstance___sharedBackgroundActivityAssertionManager;
  sharedInstance___sharedBackgroundActivityAssertionManager = v2;

  return kdebug_trace();
}

- (SBBackgroundActivityAttributionManager)init
{
  v35.receiver = self;
  v35.super_class = SBBackgroundActivityAttributionManager;
  v3 = [(SBBackgroundActivityAttributionManager *)&v35 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    attributionsByBackgroundActivityIdentifier = v3->_attributionsByBackgroundActivityIdentifier;
    v3->_attributionsByBackgroundActivityIdentifier = v4;

    v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    suspendedAttributionsByBackgroundActivityIdentifier = v3->_suspendedAttributionsByBackgroundActivityIdentifier;
    v3->_suspendedAttributionsByBackgroundActivityIdentifier = v6;

    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v3->_internalQueue;
    v3->_internalQueue = Serial;

    v10 = objc_alloc(MEMORY[0x277D0AB20]);
    v11 = [v10 initWithName:@"com.apple.springboard.background-activities.eventqueue" onQueue:MEMORY[0x277D85CD0]];
    eventQueue = v3->_eventQueue;
    v3->_eventQueue = v11;

    v13 = [SBApp windowSceneManager];
    v14 = [v13 embeddedDisplayWindowScene];

    v15 = [v14 statusBarManager];
    v16 = [v15 assertionManager];
    appStatusBarAssertionManager = v3->_appStatusBarAssertionManager;
    v3->_appStatusBarAssertionManager = v16;

    [(SBWindowSceneStatusBarAssertionManager *)v3->_appStatusBarAssertionManager addObserver:v3];
    v18 = [MEMORY[0x277CBEB58] set];
    backgroundActivityIdentifiers = v3->_backgroundActivityIdentifiers;
    v3->_backgroundActivityIdentifiers = v18;

    v20 = objc_alloc_init(SBStatusBarTapManager);
    statusBarTapManager = v3->_statusBarTapManager;
    v3->_statusBarTapManager = v20;

    objc_initWeak(&location, v3);
    v32 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v33, &location);
    v22 = BSLogAddStateCaptureBlockWithTitle();
    v23 = [SBApp systemStatusServer];
    if (!v23)
    {
      v31 = [MEMORY[0x277CCA890] currentHandler];
      [v31 handleFailureInMethod:a2 object:v3 file:@"SBBackgroundActivityAttributionManager.m" lineNumber:102 description:@"SBBackgroundActivityAttributionManager is being created before the system status server"];
    }

    v24 = [objc_alloc(MEMORY[0x277D6B8F8]) initWithServerHandle:v23];
    backgroundActivitiesDomain = v3->_backgroundActivitiesDomain;
    v3->_backgroundActivitiesDomain = v24;

    v26 = [objc_alloc(MEMORY[0x277D6BB28]) initWithServerHandle:v23];
    overridesDomain = v3->_overridesDomain;
    v3->_overridesDomain = v26;

    [(SBBackgroundActivityAttributionManager *)v3 _registerHandlerAndHandleExistingState];
    v28 = objc_alloc_init(SBBackgroundActivityAssertionServiceManager);
    assertionServiceManager = v3->_assertionServiceManager;
    v3->_assertionServiceManager = v28;

    [(SBBackgroundActivityAssertionServiceManager *)v3->_assertionServiceManager setDelegate:v3];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __46__SBBackgroundActivityAttributionManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(STBackgroundActivitiesStatusDomain *)self->_backgroundActivitiesDomain invalidate];
  [(STStatusBarOverridesStatusDomain *)self->_overridesDomain invalidate];
  v3.receiver = self;
  v3.super_class = SBBackgroundActivityAttributionManager;
  [(SBBackgroundActivityAttributionManager *)&v3 dealloc];
}

- (void)updateForegroundApplicationSceneHandles:(id)a3 withOptions:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBBackgroundActivityAttributionManager updateForegroundApplicationSceneHandles:withOptions:completion:];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __105__SBBackgroundActivityAttributionManager_updateForegroundApplicationSceneHandles_withOptions_completion___block_invoke;
  v12[3] = &unk_2783B5580;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a4;
  v10 = v9;
  v11 = v8;
  [(SBBackgroundActivityAttributionManager *)self _mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles:v11 withHandler:v12];
}

void __105__SBBackgroundActivityAttributionManager_updateForegroundApplicationSceneHandles_withOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  if (v7)
  {
    [*(a1 + 32) _postStatusStringsByIdentifier:v6];
    v7 = *(a1 + 56);
  }

  if ((v7 & 2) != 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) setBackgroundActivitiesToSuppress:{v5, v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

- (BOOL)handleTapForBackgroundActivityWithIdentifier:(id)a3 windowScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBBackgroundActivityAssertionServiceManager *)self->_assertionServiceManager handleTapForBackgroundActivityWithIdentifier:v6 windowScene:v7]|| [(SBStatusBarTapManager *)self->_statusBarTapManager handleTapForBackgroundActivityWithIdentifier:v6 windowScene:v7];

  return v8;
}

- (id)_applicationForBackgroundActivityAttribution:(id)a3
{
  v3 = a3;
  v4 = [v3 activityAttribution];
  v5 = [v4 attributedEntity];
  v6 = [v5 bundleIdentifier];

  v7 = +[SBApplicationController sharedInstance];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 applicationWithBundleIdentifier:v6];
  }

  else
  {
    v10 = [v3 activityAttribution];
    v9 = [v8 applicationWithPid:{objc_msgSend(v10, "pid")}];
  }

  return v9;
}

- (void)_mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles:(id)a3 withHandler:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBBackgroundActivityAttributionManager _mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles:withHandler:];
  }

  v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v28)
  {
    v27 = *v44;
    do
    {
      v7 = 0;
      do
      {
        if (*v44 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v7;
        v31 = *(*(&v43 + 1) + 8 * v7);
        v8 = [v31 application];
        v9 = [v8 backgroundActivityAttributionsByIdentifier];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v40;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v40 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v39 + 1) + 8 * i);
              v16 = [v10 objectForKey:v15];
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v38[2] = __172__SBBackgroundActivityAttributionManager__mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles_withHandler___block_invoke;
              v38[3] = &unk_2783B55A8;
              v38[4] = self;
              v38[5] = v31;
              v17 = [v16 objectsPassingTest:v38];
              v18 = [v6 objectForKey:v15];
              v19 = [v18 mutableCopy];

              if (v19)
              {
                [v19 unionSet:v17];
              }

              else
              {
                [v6 setObject:v17 forKey:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v12);
        }

        v7 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v28);
  }

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__54;
  v36[4] = __Block_byref_object_dispose__54;
  v20 = [(SBWindowSceneStatusBarAssertionManager *)self->_appStatusBarAssertionManager currentStatusBarSettings];
  v21 = [v20 backgroundActivitiesToSuppress];
  v37 = [v21 mutableCopy];

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __172__SBBackgroundActivityAttributionManager__mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles_withHandler___block_invoke_33;
  block[3] = &unk_2783B55F8;
  block[4] = self;
  v33 = v6;
  v34 = v25;
  v35 = v36;
  v23 = v25;
  v24 = v6;
  dispatch_async(internalQueue, block);

  _Block_object_dispose(v36, 8);
}

BOOL __172__SBBackgroundActivityAttributionManager__mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 96);
  v4 = a2;
  v5 = [v4 backgroundActivityIdentifier];
  v6 = [*(a1 + 40) _windowScene];
  LODWORD(v3) = [v3 canHandleTapForBackgroundActivityWithIdentifier:v5 windowScene:v6];

  LODWORD(v6) = [v4 showsWhenForeground];
  return ((v6 | v3) & 1) == 0;
}

void __172__SBBackgroundActivityAttributionManager__mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles_withHandler___block_invoke_33(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(*(a1 + 32) + 48);
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 48) objectForKey:v8];
        v10 = [v9 setRepresentation];
        v11 = [v10 mutableCopy];

        if ([v11 count])
        {
          v12 = [*(a1 + 40) objectForKey:v8];
          [v11 minusSet:v12];

          if ([v11 count])
          {
            [v2 setObject:v11 forKey:v8];
          }

          else
          {
            [*(*(*(a1 + 56) + 8) + 40) addObject:v8];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v13 = *(a1 + 32);
  v14 = [v2 copy];
  v15 = [v13 _statusStringsByIdentifierForActiveAttributionsByBackgroundActivityIdentifier:v14 inactiveAttributionsByBackgroundActivityIdentifier:*(a1 + 40)];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __172__SBBackgroundActivityAttributionManager__mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles_withHandler___block_invoke_2;
  block[3] = &unk_2783B55D0;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v21 = v16;
  v22 = v17;
  v20 = v15;
  v18 = v15;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_statusStringsByIdentifierForActiveAttributionsByBackgroundActivityIdentifier:(id)a3 inactiveAttributionsByBackgroundActivityIdentifier:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v10)
  {
    v11 = v10;
    v56 = *v66;
    v52 = v7;
    v53 = v8;
    v49 = v9;
    do
    {
      v12 = 0;
      v51 = v11;
      do
      {
        if (*v66 != v56)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v65 + 1) + 8 * v12);
        v14 = [v9 objectForKey:v13];
        v15 = [v7 objectForKey:v13];
        v16 = STUIStyleOverrideForBackgroundActivityIdentifier();
        if (v16 == 4)
        {
          goto LABEL_34;
        }

        if (v16 != 2048)
        {
          v30 = [(SBBackgroundActivityAssertionServiceManager *)self->_assertionServiceManager statusStringForBackgroundActivityWithIdentifier:v13 activeAttributions:v14];
          if (v30)
          {
            goto LABEL_40;
          }

LABEL_34:
          if ([v14 count] != 1)
          {
            goto LABEL_39;
          }

          v58 = v13;
          v60 = v15;
          v40 = v12;
          v41 = v14;
          v42 = [v14 anyObject];
          v43 = [(SBBackgroundActivityAttributionManager *)self _applicationForBackgroundActivityAttribution:v42];
          v44 = [v43 displayName];
          if (v44)
          {
            v45 = MEMORY[0x277CCACA8];
            v46 = [MEMORY[0x277CCA8D8] mainBundle];
            v47 = [v46 localizedStringForKey:@"STATUS_BAR_BACKGROUND_ACTIVITY_SINGLE_APP_WITH_NAME_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
            v30 = [v45 stringWithFormat:v47, v44];

            v11 = v51;
          }

          else
          {
            v30 = 0;
          }

          v12 = v40;
          v14 = v41;
          v13 = v58;
          v15 = v60;
          v7 = v52;
          v8 = v53;
          if (!v30)
          {
LABEL_39:
            v30 = [MEMORY[0x277CBEB68] null];
          }

          goto LABEL_40;
        }

        v57 = v13;
        v59 = v15;
        v54 = v12;
        v50 = [v15 count];
        v17 = [MEMORY[0x277CBEB58] set];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v55 = v14;
        v18 = v14;
        v19 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v62;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v62 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v61 + 1) + 8 * i);
              v24 = [v23 activityAttribution];
              v25 = [v24 attributedEntity];
              v26 = [v25 isSystemService];

              if ((v26 & 1) == 0)
              {
                v27 = [(SBBackgroundActivityAttributionManager *)self _applicationForBackgroundActivityAttribution:v23];
                if (v27)
                {
                  [v17 addObject:v27];
                }

                else
                {
                  v28 = SBLogStatusBarish();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412290;
                    v70 = v23;
                    _os_log_fault_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_FAULT, "Could not look up a background locating app for %@", buf, 0xCu);
                  }
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v61 objects:v71 count:16];
          }

          while (v20);
        }

        v29 = [v17 count];
        v30 = v29;
        if (v29)
        {
          if (v29 == 1)
          {
            v31 = [v17 anyObject];
            v32 = [v31 displayName];

            v33 = MEMORY[0x277CCACA8];
            v34 = [MEMORY[0x277CCA8D8] mainBundle];
            v35 = [v34 localizedStringForKey:@"STATUS_BAR_BACKGROUND_LOCATION_SINGLE_APP_WITH_NAME_FORMAT" value:&stru_283094718 table:@"SpringBoard"];
            v30 = [v33 stringWithFormat:v35, v32];

            v36 = v32;
          }

          else
          {
            v37 = MEMORY[0x277CCACA8];
            v38 = [MEMORY[0x277CCA8D8] mainBundle];
            v36 = v38;
            if (v50)
            {
              v39 = @"STATUS_BAR_BACKGROUND_LOCATION_MULTIPLE_OTHER_APPS_WITH_COUNT_FORMAT";
            }

            else
            {
              v39 = @"STATUS_BAR_BACKGROUND_LOCATION_MULTIPLE_APPS_WITH_COUNT_FORMAT";
            }

            v34 = [v38 localizedStringForKey:v39 value:&stru_283094718 table:@"SpringBoardPlurals"];
            v30 = [v37 stringWithFormat:v34, v30];
          }

          v7 = v52;
          v8 = v53;
          v9 = v49;
          v13 = v57;
          v15 = v59;

          v14 = v55;
          v11 = v51;
        }

        else
        {
          v7 = v52;
          v8 = v53;
          v9 = v49;
          v11 = v51;
          v14 = v55;
          v13 = v57;
          v15 = v59;
        }

        v12 = v54;
        if (!v30)
        {
          goto LABEL_34;
        }

LABEL_40:
        [v8 setObject:v30 forKey:v13];

        ++v12;
      }

      while (v12 != v11);
      v11 = [v9 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)_updateAppSceneSettingsForForegroundAppsAndPostAddedBackgroundActivityIdentifiers:(id)a3 removedBackgroundActivityIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __161__SBBackgroundActivityAttributionManager__updateAppSceneSettingsForForegroundAppsAndPostAddedBackgroundActivityIdentifiers_removedBackgroundActivityIdentifiers___block_invoke;
  block[3] = &unk_2783A8ED8;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __161__SBBackgroundActivityAttributionManager__updateAppSceneSettingsForForegroundAppsAndPostAddedBackgroundActivityIdentifiers_removedBackgroundActivityIdentifiers___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"%@-%@", v4, @"UpdateSuppressionSettings"];

  v6 = MEMORY[0x277D0AB18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __161__SBBackgroundActivityAttributionManager__updateAppSceneSettingsForForegroundAppsAndPostAddedBackgroundActivityIdentifiers_removedBackgroundActivityIdentifiers___block_invoke_2;
  v10[3] = &unk_2783A9BD8;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = *(a1 + 48);
  v8 = v5;
  v9 = [v6 eventWithName:v8 handler:v10];
  [*(*(a1 + 32) + 72) executeOrAppendEvent:v9];
}

void __161__SBBackgroundActivityAttributionManager__updateAppSceneSettingsForForegroundAppsAndPostAddedBackgroundActivityIdentifiers_removedBackgroundActivityIdentifiers___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 72) acquireLockForReason:*(a1 + 40)];
  if ([*(a1 + 48) count])
  {
    v3 = [MEMORY[0x277D6B920] sharedInstance];
    [v3 removeActiveBackgroundActivities:*(a1 + 48)];

    [MEMORY[0x277D75A98] removeStyleOverrides:STUIStyleOverridesForBackgroundActivityIdentifiers()];
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = STBackgroundActivityIdentifiersDescription();
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Removed background activities: %{public}@", buf, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v7 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __161__SBBackgroundActivityAttributionManager__updateAppSceneSettingsForForegroundAppsAndPostAddedBackgroundActivityIdentifiers_removedBackgroundActivityIdentifiers___block_invoke_66;
  v11[3] = &unk_2783A8ED8;
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  v14 = v2;
  v10 = v2;
  [v6 updateForegroundApplicationSceneHandles:v7 withOptions:-1 completion:v11];
}

uint64_t __161__SBBackgroundActivityAttributionManager__updateAppSceneSettingsForForegroundAppsAndPostAddedBackgroundActivityIdentifiers_removedBackgroundActivityIdentifiers___block_invoke_66(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [MEMORY[0x277D6B920] sharedInstance];
    [v2 addActiveBackgroundActivities:*(a1 + 32)];

    [MEMORY[0x277D75A98] addStyleOverrides:STUIStyleOverridesForBackgroundActivityIdentifiers()];
    v3 = SBLogStatusBarish();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = STBackgroundActivityIdentifiersDescription();
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Added background activities: %{public}@", &v6, 0xCu);
    }
  }

  return [*(*(a1 + 40) + 72) relinquishLock:*(a1 + 48)];
}

- (void)_postStatusStringsByIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];
        v10 = [MEMORY[0x277CBEB68] null];
        if (v9 == v10)
        {
          v11 = &stru_283094718;
        }

        else
        {
          v11 = v9;
        }

        v12 = v11;

        v13 = [MEMORY[0x277D75A98] stui_getDoubleHeightStatusStringBackgroundActivityWithIdentifier:v8];
        if (([(__CFString *)v12 isEqualToString:v13]& 1) == 0)
        {
          [MEMORY[0x277D75A98] stui_postDoubleHeightStatusString:v12 forBackgroundActivityWithIdentifier:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_registerHandlerAndHandleExistingState
{
  objc_initWeak(&location, self);
  backgroundActivitiesDomain = self->_backgroundActivitiesDomain;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke;
  v10[3] = &unk_2783B5620;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [(STBackgroundActivitiesStatusDomain *)backgroundActivitiesDomain observeDataWithBlock:v10];
  overridesDomain = self->_overridesDomain;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke_3;
  v8[3] = &unk_2783B5648;
  v8[4] = self;
  objc_copyWeak(&v9, &location);
  [(STStatusBarOverridesStatusDomain *)overridesDomain observeDataWithBlock:v8];
  internalQueue = self->_internalQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke_5;
  v6[3] = &unk_2783A8C68;
  objc_copyWeak(&v7, &location);
  dispatch_async(internalQueue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 64);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke_4;
  v6[3] = &unk_2783A9CE8;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_updateWithData:WeakRetained[2] andOverrides:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __80__SBBackgroundActivityAttributionManager__registerHandlerAndHandleExistingState__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[1] data];
    v3 = [v4[3] data];
    [v4 _queue_updateWithData:v2 andOverrides:v3];

    WeakRetained = v4;
  }
}

- (void)_queue_updateWithData:(id)a3 andOverrides:(id)a4
{
  v120 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  BSDispatchQueueAssert();
  v9 = [(STBackgroundActivitiesStatusDomainData *)self->_queue_processedData attributions];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CBEA60] array];
  }

  v12 = v11;

  v13 = [v7 attributions];
  v14 = v13;
  v80 = v7;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CBEA60] array];
  }

  v16 = v15;

  v17 = [v16 bs_differenceWithArray:v12];
  v18 = [v12 bs_differenceWithArray:v16];
  objc_storeStrong(&self->_queue_processedData, a3);
  v19 = [MEMORY[0x277CBEB58] set];
  v84 = [MEMORY[0x277CBEB58] set];
  v20 = [(STStatusBarOverridesStatusDomainData *)self->_queue_processedOverrides suppressedBackgroundActivityIdentifiers];
  v21 = v20;
  v78 = v12;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [MEMORY[0x277CBEB98] set];
  }

  v83 = v22;

  v23 = [v8 suppressedBackgroundActivityIdentifiers];
  v24 = v23;
  v79 = v8;
  v77 = v16;
  v85 = v19;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = [MEMORY[0x277CBEB98] set];
  }

  v26 = v25;

  v28 = __77__SBBackgroundActivityAttributionManager__queue_updateWithData_andOverrides___block_invoke(v27, v26, v83);
  v82 = v26;
  v75 = __77__SBBackgroundActivityAttributionManager__queue_updateWithData_andOverrides___block_invoke(v28, v83, v26);
  objc_storeStrong(&self->_queue_processedOverrides, a4);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v29 = v18;
  v30 = [v29 countByEnumeratingWithState:&v110 objects:v119 count:16];
  v31 = v29;
  if (v30)
  {
    v32 = v30;
    v33 = *v111;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v111 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v110 + 1) + 8 * i);
        v36 = [v35 backgroundActivityIdentifier];
        if ([v83 containsObject:v36])
        {
          SBRemoveBackgroundActivityAttributionByIdentifier(v35, self->_suspendedAttributionsByBackgroundActivityIdentifier);
        }

        else if (SBRemoveBackgroundActivityAttributionByIdentifier(v35, self->_attributionsByBackgroundActivityIdentifier))
        {
          [v84 addObject:v36];
        }
      }

      v29 = v31;
      v32 = [v31 countByEnumeratingWithState:&v110 objects:v119 count:16];
    }

    while (v32);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v37 = v17;
  v38 = [v37 countByEnumeratingWithState:&v106 objects:v118 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v107;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v107 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v106 + 1) + 8 * j);
        v43 = [v42 backgroundActivityIdentifier];
        if ([v82 containsObject:v43])
        {
          SBAddBackgroundActivityAttributionByIdentifier(v42, self->_suspendedAttributionsByBackgroundActivityIdentifier);
        }

        else if (SBAddBackgroundActivityAttributionByIdentifier(v42, self->_attributionsByBackgroundActivityIdentifier))
        {
          [v85 addObject:v43];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v106 objects:v118 count:16];
    }

    while (v39);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v28;
  v44 = [obj countByEnumeratingWithState:&v102 objects:v117 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v103;
    do
    {
      v47 = 0;
      v48 = v31;
      do
      {
        if (*v103 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v49 = *(*(&v102 + 1) + 8 * v47);
        v50 = [(NSMapTable *)self->_attributionsByBackgroundActivityIdentifier objectForKey:v49, v75];
        v51 = [v50 allObjects];

        [(NSMapTable *)self->_attributionsByBackgroundActivityIdentifier removeObjectForKey:v49];
        v31 = [v48 arrayByAddingObjectsFromArray:v51];

        if ([v51 count])
        {
          [v85 removeObject:v49];
          [v84 addObject:v49];
        }

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v52 = v51;
        v53 = [v52 countByEnumeratingWithState:&v98 objects:v116 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v99;
          do
          {
            for (k = 0; k != v54; ++k)
            {
              if (*v99 != v55)
              {
                objc_enumerationMutation(v52);
              }

              SBAddBackgroundActivityAttributionByIdentifier(*(*(&v98 + 1) + 8 * k), self->_suspendedAttributionsByBackgroundActivityIdentifier);
            }

            v54 = [v52 countByEnumeratingWithState:&v98 objects:v116 count:16];
          }

          while (v54);
        }

        ++v47;
        v48 = v31;
      }

      while (v47 != v45);
      v45 = [obj countByEnumeratingWithState:&v102 objects:v117 count:16];
    }

    while (v45);
  }

  v76 = v31;

  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v94 = 0u;
  v57 = v75;
  v58 = [v57 countByEnumeratingWithState:&v94 objects:v115 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v95;
    do
    {
      v61 = 0;
      v62 = v37;
      do
      {
        if (*v95 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v63 = *(*(&v94 + 1) + 8 * v61);
        v64 = [(NSMapTable *)self->_suspendedAttributionsByBackgroundActivityIdentifier objectForKey:v63, v75];
        v65 = [v64 allObjects];

        [(NSMapTable *)self->_suspendedAttributionsByBackgroundActivityIdentifier removeObjectForKey:v63];
        v37 = [v62 arrayByAddingObjectsFromArray:v65];

        if ([v65 count])
        {
          [v84 removeObject:v63];
          [v85 addObject:v63];
        }

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v66 = v65;
        v67 = [v66 countByEnumeratingWithState:&v90 objects:v114 count:16];
        if (v67)
        {
          v68 = v67;
          v69 = *v91;
          do
          {
            for (m = 0; m != v68; ++m)
            {
              if (*v91 != v69)
              {
                objc_enumerationMutation(v66);
              }

              SBAddBackgroundActivityAttributionByIdentifier(*(*(&v90 + 1) + 8 * m), self->_attributionsByBackgroundActivityIdentifier);
            }

            v68 = [v66 countByEnumeratingWithState:&v90 objects:v114 count:16];
          }

          while (v68);
        }

        ++v61;
        v62 = v37;
      }

      while (v61 != v59);
      v59 = [v57 countByEnumeratingWithState:&v94 objects:v115 count:16];
    }

    while (v59);
  }

  [(NSMutableSet *)self->_backgroundActivityIdentifiers minusSet:v84];
  [(NSMutableSet *)self->_backgroundActivityIdentifiers unionSet:v85];
  v71 = [v82 mutableCopy];
  suspendedBackgroundActivityIdentifiers = self->_suspendedBackgroundActivityIdentifiers;
  self->_suspendedBackgroundActivityIdentifiers = v71;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SBBackgroundActivityAttributionManager__queue_updateWithData_andOverrides___block_invoke_2;
  block[3] = &unk_2783A8ED8;
  v87 = v76;
  v88 = self;
  v89 = v37;
  v73 = v37;
  v74 = v76;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if ([v85 count] || objc_msgSend(v84, "count"))
  {
    [(SBBackgroundActivityAttributionManager *)self _updateAppSceneSettingsForForegroundAppsAndPostAddedBackgroundActivityIdentifiers:v85 removedBackgroundActivityIdentifiers:v84, v75];
  }
}

id __77__SBBackgroundActivityAttributionManager__queue_updateWithData_andOverrides___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mutableCopy];
  [v5 minusSet:v4];

  return v5;
}

void __77__SBBackgroundActivityAttributionManager__queue_updateWithData_andOverrides___block_invoke_2(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [a1[5] _applicationForBackgroundActivityAttribution:v7];
        [v8 releaseBackgroundActivityAttribution:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = a1[6];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * j);
        v15 = [a1[5] _applicationForBackgroundActivityAttribution:{v14, v16}];
        [v15 takeBackgroundActivityAttribution:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)statusBarAssertionManager:(id)a3 statusBarSettingsDidChange:(id)a4
{
  v5 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  [(SBBackgroundActivityAttributionManager *)self updateForegroundApplicationSceneHandles:v5 withOptions:2 completion:0];
}

- (id)succinctDescription
{
  v2 = [(SBBackgroundActivityAttributionManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBBackgroundActivityAttributionManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBBackgroundActivityAttributionManager *)self succinctDescriptionBuilder];
  [v5 setActiveMultilinePrefix:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__SBBackgroundActivityAttributionManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __80__SBBackgroundActivityAttributionManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) dictionaryRepresentation];
  v3 = *(a1 + 40);
  v4 = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__SBBackgroundActivityAttributionManager_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v7[3] = &unk_2783B5670;
  v8 = v2;
  v5 = v2;
  [v3 appendDictionarySection:v5 withName:@"attributionsByBackgroundActivityIdentifier" multilinePrefix:v4 skipIfEmpty:1 objectTransformer:v7];

  v6 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 104) withName:@"assertionServiceManager"];
}

id __80__SBBackgroundActivityAttributionManager_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 allObjects];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

void __97__SBBackgroundActivityAttributionManager_assertionServiceDidChangeStatusStringsForAForegroundApp__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  [v1 updateForegroundApplicationSceneHandles:v2 withOptions:1 completion:0];
}

- (void)updateForegroundApplicationSceneHandles:withOptions:completion:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBBackgroundActivityAttributionManager updateForegroundApplicationSceneHandles:withOptions:completion:]"];
  [v1 handleFailureInFunction:v0 file:@"SBBackgroundActivityAttributionManager.m" lineNumber:132 description:@"this call must be made on the main thread"];
}

- (void)_mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles:withHandler:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBBackgroundActivityAttributionManager _mainQueue_getBackgroundActivityIdentifiersToSuppressAndStatusStringsByIdentifierForForegroundApplicationSceneHandles:withHandler:]"];
  [v1 handleFailureInFunction:v0 file:@"SBBackgroundActivityAttributionManager.m" lineNumber:183 description:@"this call must be made on the main thread"];
}

@end