@interface SBCommandTabController
+ (id)keyCommands;
- (BOOL)dataStore:(id)store shouldRestorePersistedDisplayItem:(id)item;
- (BOOL)isVisible;
- (BOOL)recentDisplayItemsController:(id)controller shouldAddItem:(id)item;
- (SBCommandTabController)initWithWindowScene:(id)scene iconController:(id)controller;
- (id)iconController;
- (id)persistedDisplayItemsForDataStore:(id)store;
- (id)selectedDisplayItem;
- (id)windowScene;
- (void)_activateWithForwardDirection:(BOOL)direction;
- (void)_allowAppToAppearWhileHidden:(id)hidden;
- (void)_clearTimer;
- (void)_disallowAppFromAppearingWhileHidden:(id)hidden;
- (void)_effectiveSettingsChangedNotification:(id)notification;
- (void)_emitAnalyticsEventForDisplayItem:(id)item;
- (void)_sceneDidDisconnect:(id)disconnect;
- (void)_showCommandTabBarAfterTimer:(id)timer;
- (void)_showWindow:(BOOL)window;
- (void)activateWithKeyCommand:(id)command;
- (void)dataStore:(id)store persistDisplayItems:(id)items;
- (void)dealloc;
- (void)dismiss;
- (void)launchCurrentSelectedApplication;
- (void)recentDisplayItemsControllerDidUpdateDisplayItems:(id)items;
- (void)removeCurrentSelectedApplication;
- (void)viewController:(id)controller selectedApplicationWithDisplayItem:(id)item;
@end

@implementation SBCommandTabController

+ (id)keyCommands
{
  v10[2] = *MEMORY[0x277D85DE8];
  systemKeyCommandOverlayEnvironment = [MEMORY[0x277D66B00] systemKeyCommandOverlayEnvironment];
  v3 = MEMORY[0x277D75650];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"COMMAND_TAB_DISCOVERABILITY" value:&stru_283094718 table:@"SpringBoard"];
  v6 = [v3 commandWithTitle:v5 image:0 action:sel__handleCommandTab_ input:@"\t" modifierFlags:0x100000 propertyList:0];

  [v6 _setEventDeferringEnvironment:systemKeyCommandOverlayEnvironment];
  v7 = [MEMORY[0x277D75650] commandWithTitle:&stru_283094718 image:0 action:sel__handleShiftCommandTab_ input:@"\t" modifierFlags:1179648 propertyList:&unk_2833709D0];
  [v6 _setEventDeferringEnvironment:systemKeyCommandOverlayEnvironment];
  v10[0] = v6;
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

- (SBCommandTabController)initWithWindowScene:(id)scene iconController:(id)controller
{
  sceneCopy = scene;
  controllerCopy = controller;
  v37.receiver = self;
  v37.super_class = SBCommandTabController;
  v8 = [(SBCommandTabController *)&v37 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_windowScene, sceneCopy);
    objc_storeWeak(&v9->_iconController, controllerCopy);
    v10 = +[SBSceneManagerCoordinator sharedInstance];
    sceneDeactivationManager = [v10 sceneDeactivationManager];
    v12 = [sceneDeactivationManager newAssertionWithReason:3];
    resignActiveAssertion = v9->_resignActiveAssertion;
    v9->_resignActiveAssertion = v12;

    v14 = BSDispatchQueueCreateWithQualityOfService();
    recentDisplayItemsPersistenceQueue = v9->_recentDisplayItemsPersistenceQueue;
    v9->_recentDisplayItemsPersistenceQueue = v14;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__sceneDidDisconnect_ name:*MEMORY[0x277D76E50] object:0];

    v17 = +[SBDefaults localDefaults];
    recentDisplayItemsDefaults = [v17 recentDisplayItemsDefaults];
    defaults = v9->_defaults;
    v9->_defaults = recentDisplayItemsDefaults;

    v20 = objc_alloc_init(SBRecentDisplayItemsDataStore);
    dataStore = v9->_dataStore;
    v9->_dataStore = v20;

    [(SBRecentDisplayItemsDataStore *)v9->_dataStore setPersistenceDelegate:v9];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__effectiveSettingsChangedNotification_ name:*MEMORY[0x277D25CA0] object:0];

    v23 = [SBRecentDisplayItemsController alloc];
    v24 = +[SBAppInteractionEventSourceManager sharedInstance];
    v25 = +[SBApplicationController sharedInstance];
    v26 = [(SBRecentDisplayItemsController *)v23 initWithRemovalPersonality:7 movePersonality:15 transitionFromSources:0 maxDisplayItems:10 eventSource:v24 applicationController:v25 iconModelProvider:controllerCopy];
    recentDisplayItemsController = v9->_recentDisplayItemsController;
    v9->_recentDisplayItemsController = v26;

    v28 = v9->_recentDisplayItemsController;
    displayItems = [(SBRecentDisplayItemsDataStore *)v9->_dataStore displayItems];
    [(SBRecentDisplayItemsController *)v28 setRecentDisplayItems:displayItems];

    [(SBRecentDisplayItemsController *)v9->_recentDisplayItemsController setDelegate:v9];
    objc_initWeak(&location, v9);
    v30 = MEMORY[0x277D432B0];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __61__SBCommandTabController_initWithWindowScene_iconController___block_invoke;
    v34[3] = &unk_2783AC358;
    objc_copyWeak(&v35, &location);
    v31 = [v30 recipeWithTitle:@"Show Command Tab" prepareBlock:0 toggleAction:v34 cleanupBlock:0];
    testRecipe = v9->_testRecipe;
    v9->_testRecipe = v31;

    [(PTDomain *)SBAppSwitcherDomain registerTestRecipe:v9->_testRecipe];
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __61__SBCommandTabController_initWithWindowScene_iconController___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    if ([WeakRetained isVisible])
    {
      [v4 next];
    }

    else
    {
      [v4 activateWithKeyCommand:0];
    }
  }

  else
  {
    [WeakRetained dismiss];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion relinquish];
  v4.receiver = self;
  v4.super_class = SBCommandTabController;
  [(SBCommandTabController *)&v4 dealloc];
}

- (void)dismiss
{
  if (self->_timer)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "cancelling command-tab present timer for view dismissal", v4, 2u);
    }

    [(SBCommandTabController *)self _clearTimer];
  }

  [(SBCommandTabController *)self _showWindow:0];
}

- (BOOL)isVisible
{
  window = self->_window;
  if (window)
  {
    LOBYTE(window) = [(SBWindow *)window isHidden]^ 1;
  }

  return window;
}

- (void)launchCurrentSelectedApplication
{
  commandTabViewController = self->_commandTabViewController;
  selectedApplicationDisplayItem = [(SBCommandTabViewController *)commandTabViewController selectedApplicationDisplayItem];
  [(SBCommandTabController *)self viewController:commandTabViewController selectedApplicationWithDisplayItem:selectedApplicationDisplayItem];
}

- (void)removeCurrentSelectedApplication
{
  selectedApplicationDisplayItem = [(SBCommandTabViewController *)self->_commandTabViewController selectedApplicationDisplayItem];
  if ([selectedApplicationDisplayItem type] != 1)
  {
    [(SBRecentDisplayItemsController *)self->_recentDisplayItemsController removeDisplayItem:selectedApplicationDisplayItem];
  }
}

- (id)selectedDisplayItem
{
  if ([(SBCommandTabController *)self isVisible])
  {
    selectedApplicationDisplayItem = [(SBCommandTabViewController *)self->_commandTabViewController selectedApplicationDisplayItem];
  }

  else
  {
    selectedApplicationDisplayItem = 0;
  }

  return selectedApplicationDisplayItem;
}

- (void)viewController:(id)controller selectedApplicationWithDisplayItem:(id)item
{
  itemCopy = item;
  _sbWindowScene = [controller _sbWindowScene];
  v8 = _sbWindowScene;
  if (_sbWindowScene)
  {
    sceneManager = [_sbWindowScene sceneManager];
    v10 = +[(SBWorkspace *)SBMainWorkspace];
    keyboardFocusController = [v10 keyboardFocusController];

    userFocusRequestGeneration = [keyboardFocusController userFocusRequestGeneration];
    [(SBCommandTabController *)self _emitAnalyticsEventForDisplayItem:itemCopy];
    v13 = [keyboardFocusController bufferEventsForSpringBoardScene:v8 reason:@"SBCommandTabController"];
    if (!itemCopy)
    {
      [(SBCommandTabController *)self dismiss];
    }

    if ([itemCopy type] == 1)
    {
      [(SBCommandTabController *)self dismiss];
      v14 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
LABEL_16:
      if ([(SBWorkspaceEntity *)v14 isApplicationSceneEntity])
      {
        application = [(SBAppClipPlaceholderWorkspaceEntity *)v14 application];
        bundleIdentifier = [application bundleIdentifier];
      }

      [(SBWorkspaceEntity *)v14 setFlag:1 forActivationSetting:49];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke;
      v49[3] = &unk_2783A8C18;
      v50 = v13;
      v30 = v13;
      v31 = MEMORY[0x223D6F7F0](v49);
      v32 = +[SBWorkspace mainWorkspace];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke_2;
      v43[3] = &unk_2783B3D90;
      v44 = v14;
      v45 = v8;
      v47 = v31;
      v48 = userFocusRequestGeneration;
      v46 = itemCopy;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke_78;
      v40[3] = &unk_2783B3CF0;
      v41 = v46;
      v42 = v45;
      v33 = v31;
      v15 = v14;
      [v32 requestTransitionWithOptions:0 builder:v43 validator:v40];

      goto LABEL_19;
    }

    v39 = userFocusRequestGeneration;
    if ([itemCopy type] == 5)
    {
      v16 = +[SBApplicationController sharedInstance];
      webApplication = [v16 webApplication];

      v18 = [SBDeviceApplicationSceneEntity alloc];
      uniqueIdentifier = [itemCopy uniqueIdentifier];
      displayIdentity = [sceneManager displayIdentity];
      v21 = v18;
      v22 = webApplication;
      v23 = uniqueIdentifier;
    }

    else
    {
      webApplication = [itemCopy bundleIdentifier];
      v24 = +[SBApplicationController sharedInstance];
      uniqueIdentifier = [v24 applicationWithBundleIdentifier:webApplication];

      bundleIdentifier2 = [uniqueIdentifier bundleIdentifier];
      v26 = [SBAppClipPlaceholderWorkspaceEntity isAppClipUpdateAvailableForBundleIdentifier:bundleIdentifier2];

      if (!uniqueIdentifier || v26)
      {
        v34 = +[SBApplicationPlaceholderController sharedInstance];
        v35 = [v34 placeholderForDisplayID:webApplication];
        v36 = [v35 isAppClip] | v26;

        if ((v36 & 1) == 0)
        {
          v14 = 0;
          sceneManager = v38;
          goto LABEL_15;
        }

        v37 = [SBAppClipPlaceholderWorkspaceEntity alloc];
        displayIdentity = [itemCopy uniqueIdentifier];
        v14 = [(SBAppClipPlaceholderWorkspaceEntity *)v37 initWithBundleIdentifier:webApplication futureSceneIdentifier:displayIdentity needsUpdate:v26];
        sceneManager = v38;
LABEL_14:

LABEL_15:
        userFocusRequestGeneration = v39;
        goto LABEL_16;
      }

      v27 = [SBDeviceApplicationSceneEntity alloc];
      displayIdentity = [sceneManager displayIdentity];
      v21 = v27;
      v22 = uniqueIdentifier;
      v23 = 0;
    }

    v14 = [(SBDeviceApplicationSceneEntity *)v21 initWithApplication:v22 uniqueIdentifier:v23 sceneHandleProvider:sceneManager displayIdentity:displayIdentity];
    goto LABEL_14;
  }

  v15 = SBLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "rejecting command-tab view controller request to launch app as it isn't associated with a window scene", buf, 2u);
  }

LABEL_19:
}

void __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:16];
  [v3 setEventLabel:@"ActivateAppCommandTab"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke_3;
  v12[3] = &unk_2783B3D40;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  [v3 modifyApplicationContext:v12];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke_4;
  v8[3] = &unk_2783B3D68;
  v4 = *(a1 + 32);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v9 = v4;
  v11 = v5;
  v10 = v6;
  v7 = [v3 addCompletionHandler:v8];
}

void __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 setActivatingEntity:*(a1 + 32)];
  v3 = [*(a1 + 40) switcherController];
  v4 = [v3 switcherCoordinator];
  v6 = [v4 switcherControllerForDisplayItem:*(a1 + 48)];

  v5 = [v6 _currentMainAppLayout];
  if ([v5 containsItem:*(a1 + 48)])
  {
    [*(a1 + 32) setFlag:1 forActivationSetting:11];
  }
}

void __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) applicationSceneEntity];
    v4 = [v3 sceneHandle];
    v5 = [v4 sceneIfExists];

    if (v5)
    {
      v6 = +[(SBWorkspace *)SBMainWorkspace];
      v7 = [v6 keyboardFocusController];

      v8 = *(a1 + 48);
      if (v8 == [v7 userFocusRequestGeneration])
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke_5;
        v12[3] = &unk_2783A9C70;
        v13 = *(a1 + 40);
        [v7 userFocusRequestForScene:v5 reason:@"commandTab" completion:v12];
      }

      else
      {
        v10 = SBLogKeyboardFocus();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "CommandTab: not invoking userFocusRequestForScene: -- someone else requested a focus change since transition began", v11, 2u);
        }

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);

    v9();
  }
}

uint64_t __76__SBCommandTabController_viewController_selectedApplicationWithDisplayItem___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v5 = [v4 switcherControllerForDisplayItem:*(a1 + 32)];

  v6 = [v5 windowScene];
  v7 = v6;
  if (!v6)
  {
    v6 = *(a1 + 40);
  }

  v8 = [v6 _fbsDisplayConfiguration];
  [v3 setDisplayConfiguration:v8];

  return 1;
}

- (void)recentDisplayItemsControllerDidUpdateDisplayItems:(id)items
{
  dataStore = self->_dataStore;
  recentDisplayItems = [(SBRecentDisplayItemsController *)self->_recentDisplayItemsController recentDisplayItems];
  [(SBRecentDisplayItemsDataStore *)dataStore setDisplayItems:recentDisplayItems];
}

- (id)persistedDisplayItemsForDataStore:(id)store
{
  v30 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  if (self->_dataStore == storeCopy)
  {
    persistedRecentDisplayItems = self->_persistedRecentDisplayItems;
    if (persistedRecentDisplayItems)
    {
      v5 = [(NSOrderedSet *)persistedRecentDisplayItems mutableCopy];
    }

    else
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__43;
      v27 = __Block_byref_object_dispose__43;
      v28 = 0;
      recentDisplayItemsPersistenceQueue = self->_recentDisplayItemsPersistenceQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__SBCommandTabController_persistedDisplayItemsForDataStore___block_invoke;
      block[3] = &unk_2783A8CE0;
      block[4] = self;
      block[5] = &v23;
      dispatch_sync(recentDisplayItemsPersistenceQueue, block);
      if (v24[5])
      {
        v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = v24[5];
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v29 count:16];
        if (v9)
        {
          v10 = *v19;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v18 + 1) + 8 * i);
              v13 = [SBDisplayItem alloc];
              v14 = [(SBDisplayItem *)v13 initWithPlistRepresentation:v12, v18];
              if (!v14)
              {

                v15 = SBLogCommon();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  [(SBCommandTabController *)v12 persistedDisplayItemsForDataStore:v15];
                }

                v5 = 0;
                goto LABEL_18;
              }

              [v5 addObject:v14];
            }

            v9 = [v8 countByEnumeratingWithState:&v18 objects:v29 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      else
      {
        v5 = 0;
      }

      _Block_object_dispose(&v23, 8);
    }

    v16 = +[SBDisplayItem homeScreenDisplayItem];
    [v5 addObject:v16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __60__SBCommandTabController_persistedDisplayItemsForDataStore___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) commandTabPlistRepresentation];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dataStore:(id)store persistDisplayItems:(id)items
{
  itemsCopy = items;
  if (self->_dataStore == store && ([(NSOrderedSet *)self->_persistedRecentDisplayItems isEqual:itemsCopy]& 1) == 0)
  {
    v7 = [itemsCopy copy];
    persistedRecentDisplayItems = self->_persistedRecentDisplayItems;
    self->_persistedRecentDisplayItems = v7;

    objc_initWeak(&location, self->_defaults);
    recentDisplayItemsPersistenceQueue = self->_recentDisplayItemsPersistenceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SBCommandTabController_dataStore_persistDisplayItems___block_invoke;
    block[3] = &unk_2783A9CE8;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    v10 = v7;
    dispatch_async(recentDisplayItemsPersistenceQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __56__SBCommandTabController_dataStore_persistDisplayItems___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x277CBEB18] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) plistRepresentation];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [WeakRetained setCommandTabPlistRepresentation:v3];
}

- (void)_sceneDidDisconnect:(id)disconnect
{
  object = [disconnect object];
  _sbWindowScene = [(UIWindow *)self->_window _sbWindowScene];

  if (object == _sbWindowScene)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Dismissing command-tab because its scene has disconnected", v7, 2u);
    }

    [(SBCommandTabController *)self dismiss];
  }
}

- (void)_effectiveSettingsChangedNotification:(id)notification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SBCommandTabController__effectiveSettingsChangedNotification___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__SBCommandTabController__effectiveSettingsChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isCommandTabAllowed];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 dismiss];
  }
}

- (void)_emitAnalyticsEventForDisplayItem:(id)item
{
  v13[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v12[0] = *MEMORY[0x277D67670];
  v5 = +[SBDisplayItem homeScreenDisplayItem];
  v6 = [(SBDisplayItem *)itemCopy isEqualToItem:v5];
  if (v6)
  {
    v7 = &unk_2833709E8;
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBCommandTabViewController indexOfDisplayItem:](self->_commandTabViewController, "indexOfDisplayItem:", itemCopy)}];
  }

  v12[1] = *MEMORY[0x277D67678];
  v13[0] = v7;
  v13[1] = &unk_283370A00;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if ((v6 & 1) == 0)
  {
  }

  v9 = MEMORY[0x277D65DD0];
  v10 = v8;
  sharedInstance = [v9 sharedInstance];
  [sharedInstance emitEvent:14 withPayload:v10];
}

- (void)_activateWithForwardDirection:(BOOL)direction
{
  directionCopy = direction;
  if (!self->_window)
  {
    [(SBCommandTabController *)self _showWindow:1];
  }

  if (self->_timer)
  {
    [(SBCommandTabController *)self _clearTimer];
  }

  if (self->_window)
  {
    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__showCommandTabBarAfterTimer_ selector:0 userInfo:0 repeats:0.1];
    objc_storeStrong(&self->_timer, v6);
    if (directionCopy)
    {
      if ((SBWorkspaceSpringBoardIsActive() & 1) == 0)
      {
        [(SBCommandTabViewController *)self->_commandTabViewController next];
      }
    }

    else
    {
      [(SBCommandTabViewController *)self->_commandTabViewController previous];
    }
  }

  else
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Failed to create command-tab window while attempting to activate", buf, 2u);
    }
  }
}

- (void)_showCommandTabBarAfterTimer:(id)timer
{
  [(SBCommandTabController *)self _clearTimer];
  commandTabViewController = self->_commandTabViewController;

  [(SBCommandTabViewController *)commandTabViewController showCommandTabBar];
}

- (void)_clearTimer
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)_allowAppToAppearWhileHidden:(id)hidden
{
  hiddenCopy = hidden;
  appsAllowedWhileHidden = self->_appsAllowedWhileHidden;
  v8 = hiddenCopy;
  if (!appsAllowedWhileHidden)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = self->_appsAllowedWhileHidden;
    self->_appsAllowedWhileHidden = v6;

    hiddenCopy = v8;
    appsAllowedWhileHidden = self->_appsAllowedWhileHidden;
  }

  [(NSMutableSet *)appsAllowedWhileHidden addObject:hiddenCopy];
  [(SBRecentDisplayItemsController *)self->_recentDisplayItemsController _allowAppToAppearWhileHidden:v8];
}

- (void)_disallowAppFromAppearingWhileHidden:(id)hidden
{
  hiddenCopy = hidden;
  [(NSMutableSet *)self->_appsAllowedWhileHidden removeObject:?];
  if (![(NSMutableSet *)self->_appsAllowedWhileHidden count])
  {
    appsAllowedWhileHidden = self->_appsAllowedWhileHidden;
    self->_appsAllowedWhileHidden = 0;
  }

  [(SBRecentDisplayItemsController *)self->_recentDisplayItemsController _disallowAppFromAppearingWhileHidden:hiddenCopy];
}

- (void)activateWithKeyCommand:(id)command
{
  v30 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  }

  else
  {
    WeakRetained = 0;
  }

  sceneManager = [WeakRetained sceneManager];
  policyAggregator = [sceneManager policyAggregator];
  v25 = 0;
  v8 = [policyAggregator allowsCapability:20 explanation:&v25];
  v9 = v25;

  if (v8)
  {
    assistantController = [WeakRetained assistantController];
    [assistantController dismissAssistantViewIfNecessary];

    v11 = +[SBVoiceControlController sharedInstance];
    [v11 dismissTransientOverlay];

    v12 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    recentAppLayouts = [v12 recentAppLayouts];
    if ([recentAppLayouts count])
    {
      recentDisplayItems = [(SBRecentDisplayItemsController *)self->_recentDisplayItemsController recentDisplayItems];
      v15 = [SBCommandTabViewController canActivateWithRecentDisplayItems:recentDisplayItems];

      if (v15)
      {
        if (([commandCopy modifierFlags] & 0x20000) != 0)
        {
          selfCopy2 = self;
          v17 = 0;
        }

        else
        {
          selfCopy2 = self;
          v17 = 1;
        }

        [(SBCommandTabController *)selfCopy2 _activateWithForwardDirection:v17];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = +[SBMainSwitcherControllerCoordinator sharedInstance];
      recentAppLayouts2 = [v20 recentAppLayouts];
      v22 = [recentAppLayouts2 count];
      recentDisplayItems2 = [(SBRecentDisplayItemsController *)self->_recentDisplayItemsController recentDisplayItems];
      v24 = [recentDisplayItems2 count];
      *buf = 134218240;
      v27 = v22;
      v28 = 2048;
      v29 = v24;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Can't activate command-tab (numRecentAppLayouts: %lu, numRecentDisplayItems: %lu)", buf, 0x16u);
    }
  }

  else if (v9)
  {
    v18 = SBLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v9;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Can't activate command-tab: %{public}@", buf, 0xCu);
    }
  }

LABEL_18:
}

- (id)windowScene
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 14);
    v1 = vars8;
  }

  return WeakRetained;
}

- (BOOL)recentDisplayItemsController:(id)controller shouldAddItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_iconController);
  }

  else
  {
    WeakRetained = 0;
  }

  iconModel = [WeakRetained iconModel];

  if ([itemCopy type] == 5)
  {
    [itemCopy webClipIdentifier];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_24() bookmarkIconForWebClipIdentifier:?];
  }

  else
  {
    [itemCopy bundleIdentifier];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_0_24() applicationIconForBundleIdentifier:?];
  }
  v11 = ;

  if ([iconModel isIconVisible:v11] & 1) != 0 || (appsAllowedWhileHidden = self->_appsAllowedWhileHidden, objc_msgSend(itemCopy, "bundleIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), LOBYTE(appsAllowedWhileHidden) = -[NSMutableSet containsObject:](appsAllowedWhileHidden, "containsObject:", v13), v13, (appsAllowedWhileHidden))
  {
    v14 = 1;
  }

  else if ([v11 isLeafIcon])
  {
    applicationBundleID = [v11 applicationBundleID];
    v14 = 0;
    if (applicationBundleID)
    {
      v17 = +[SBApplicationController sharedInstance];
      v18 = [v17 applicationWithBundleIdentifier:applicationBundleID];
      info = [v18 info];
      isAppClip = [info isAppClip];

      if ((isAppClip & 1) != 0 || (+[SBApplicationPlaceholderController sharedInstance](SBApplicationPlaceholderController, "sharedInstance"), v21 = objc_claimAutoreleasedReturnValue(), [v21 placeholderForDisplayID:applicationBundleID], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isAppClip"), v22, v21, v23))
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)iconController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 15);
    v1 = vars8;
  }

  return WeakRetained;
}

- (BOOL)dataStore:(id)store shouldRestorePersistedDisplayItem:(id)item
{
  storeCopy = store;
  itemCopy = item;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_iconController);
  }

  else
  {
    WeakRetained = 0;
  }

  iconModel = [WeakRetained iconModel];

  if ([itemCopy type])
  {
    v11 = [itemCopy type] == 1;
  }

  else
  {
    bundleIdentifier = [itemCopy bundleIdentifier];
    if (bundleIdentifier)
    {
      [iconModel applicationIconForBundleIdentifier:bundleIdentifier];
      objc_claimAutoreleasedReturnValue();
      v13 = [OUTLINED_FUNCTION_0_24() isIconVisible:?];
      v14 = +[SBApplicationController sharedInstance];
      restrictionController = [v14 restrictionController];
      v16 = [restrictionController isApplicationIdentifierRestricted:bundleIdentifier];

      v11 = v13 & (v16 ^ 1);
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)_showWindow:(BOOL)window
{
  windowCopy = window;
  v32 = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  }

  else
  {
    WeakRetained = 0;
  }

  switcherController = [WeakRetained switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  window = self->_window;
  if (windowCopy)
  {
    if (window)
    {
      v10 = SBLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        isHidden = [(SBWindow *)self->_window isHidden];
        v31[0] = 67109120;
        v31[1] = isHidden;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Not creating command-tab window because one already exists, isHidden: %d", v31, 8u);
      }
    }

    else
    {
      if ((isChamoisOrFlexibleWindowing & 1) == 0)
      {
        resignActiveAssertion = self->_resignActiveAssertion;
        _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
        [(UIApplicationSceneDeactivationAssertion *)resignActiveAssertion sb_acquireForDisplayIdentity:_fbsDisplayIdentity];
      }

      v18 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"CommandTab"];
      deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
      self->_deferOrientationUpdatesAssertion = v18;

      v20 = [(SBWindow *)[SBCommandTabWindow alloc] initWithWindowScene:WeakRetained role:@"SBTraitsParticipantRoleCommandTab" debugName:@"Command Tab Window"];
      v21 = self->_window;
      self->_window = &v20->super;

      v22 = [SBCommandTabViewController alloc];
      recentDisplayItems = [(SBRecentDisplayItemsController *)self->_recentDisplayItemsController recentDisplayItems];
      v24 = objc_loadWeakRetained(&self->_iconController);
      v25 = [(SBCommandTabViewController *)v22 initWithRecentDisplayItems:recentDisplayItems iconController:v24];
      commandTabViewController = self->_commandTabViewController;
      self->_commandTabViewController = v25;

      [(SBCommandTabViewController *)self->_commandTabViewController setDelegate:self];
      [(SBWindow *)self->_window setRootViewController:self->_commandTabViewController];
      [(SBWindow *)self->_window setWindowLevel:*MEMORY[0x277D76EE8] + 45.0];
      if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCommandTab") & 1) == 0)
      {
        -[SBWindow _legacySetRotatableViewOrientation:updateStatusBar:duration:force:](self->_window, "_legacySetRotatableViewOrientation:updateStatusBar:duration:force:", [SBApp activeInterfaceOrientation], 0, 0, 0.0);
      }

      [(SBWindow *)self->_window setHidden:0];
      [(SBFWindow *)self->_window makeKeyWindow];
      [(SBCommandTabViewController *)self->_commandTabViewController becomeFirstResponder];
      v10 = +[SBMainWorkspace sharedInstance];
      keyboardFocusController = [v10 keyboardFocusController];
      v28 = +[SBKeyboardFocusLockReason commandTab];
      v29 = [keyboardFocusController focusLockSpringBoardWindowScene:WeakRetained forReason:v28];
      keyboardFocusAssertion = self->_keyboardFocusAssertion;
      self->_keyboardFocusAssertion = v29;
    }
  }

  else if (window)
  {
    if ((isChamoisOrFlexibleWindowing & 1) == 0)
    {
      [(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion relinquish];
    }

    [(BSInvalidatable *)self->_deferOrientationUpdatesAssertion invalidate];
    v12 = self->_deferOrientationUpdatesAssertion;
    self->_deferOrientationUpdatesAssertion = 0;

    [(SBCommandTabViewController *)self->_commandTabViewController resignFirstResponder];
    v13 = self->_commandTabViewController;
    self->_commandTabViewController = 0;

    [(SBFWindow *)self->_window resignAsKeyWindow];
    [(SBWindow *)self->_window setHidden:1];
    v14 = self->_window;
    self->_window = 0;

    [(BSInvalidatable *)self->_keyboardFocusAssertion invalidate];
    v15 = self->_keyboardFocusAssertion;
    self->_keyboardFocusAssertion = 0;
  }
}

- (void)persistedDisplayItemsForDataStore:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "failed to create display item from cmdtab plist rep -- aborting loading of items. failed plist rep: %@", &v2, 0xCu);
}

@end