@interface SBDisplayAppInteractionEventSource
- (BKSTouchDeliveryObservationService)touchDeliveryObservationService;
- (SBApplicationController)applicationController;
- (SBApplicationRestrictionController)applicationRestrictionController;
- (SBFAnalyticsClient)analyticsClient;
- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator;
- (id)_bundleIDsForIcons:(id)icons;
- (id)_initWithAnalyticsClient:(id)client applicationController:(id)controller applicationRestrictionController:(id)restrictionController iconModel:(id)model layoutStateTransitionCoordinator:(id)coordinator displayLayoutPublisher:(id)publisher touchDeliveryObservationService:(id)service;
- (void)_configureEventSourceWithAnalyticsClient:(id)client applicationController:(id)controller applicationRestrictionController:(id)restrictionController iconModel:(id)model layoutStateTransitionCoordinator:(id)coordinator displayLayoutPublisher:(id)publisher touchDeliveryObservationService:(id)service;
- (void)_iconVisibilityDidChange:(id)change;
- (void)_installedAppsDidChange:(id)change;
- (void)_noteTouchForProcess:(int)process context:(unsigned int)context;
- (void)_notifyTransition:(id)transition beginning:(BOOL)beginning;
- (void)_userQuitApplication:(id)application;
- (void)_userRemovedSuggestion:(id)suggestion;
- (void)_webBookmarkUninstalled:(id)uninstalled;
- (void)addObserver:(id)observer;
- (void)applicationRestrictionController:(id)controller didUpdateVisibleTags:(id)tags hiddenTags:(id)hiddenTags;
- (void)dealloc;
- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition;
- (void)windowSceneDidConnect:(id)connect;
@end

@implementation SBDisplayAppInteractionEventSource

- (id)_initWithAnalyticsClient:(id)client applicationController:(id)controller applicationRestrictionController:(id)restrictionController iconModel:(id)model layoutStateTransitionCoordinator:(id)coordinator displayLayoutPublisher:(id)publisher touchDeliveryObservationService:(id)service
{
  clientCopy = client;
  controllerCopy = controller;
  restrictionControllerCopy = restrictionController;
  modelCopy = model;
  coordinatorCopy = coordinator;
  publisherCopy = publisher;
  serviceCopy = service;
  v25.receiver = self;
  v25.super_class = SBDisplayAppInteractionEventSource;
  v22 = [(SBDisplayAppInteractionEventSource *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(SBDisplayAppInteractionEventSource *)v22 _configureEventSourceWithAnalyticsClient:clientCopy applicationController:controllerCopy applicationRestrictionController:restrictionControllerCopy iconModel:modelCopy layoutStateTransitionCoordinator:coordinatorCopy displayLayoutPublisher:publisherCopy touchDeliveryObservationService:serviceCopy];
  }

  return v23;
}

- (void)windowSceneDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = objc_opt_class();
  homeScreenController = [connectCopy homeScreenController];
  iconManager = [homeScreenController iconManager];
  iconModel = [iconManager iconModel];
  v9 = SBSafeCast(v5, iconModel);

  if (self->_displayLayoutPublisher)
  {
    [(SBDisplayAppInteractionEventSource *)a2 windowSceneDidConnect:?];
  }

  mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
  v11 = +[SBApplicationController sharedInstance];
  v12 = +[SBApplicationController sharedInstance];
  restrictionController = [v12 restrictionController];
  layoutStateTransitionCoordinator = [connectCopy layoutStateTransitionCoordinator];
  displayLayoutPublisher = [connectCopy displayLayoutPublisher];
  mEMORY[0x277CF0788] = [MEMORY[0x277CF0788] sharedInstance];
  [(SBDisplayAppInteractionEventSource *)self _configureEventSourceWithAnalyticsClient:mEMORY[0x277D65DD0] applicationController:v11 applicationRestrictionController:restrictionController iconModel:v9 layoutStateTransitionCoordinator:layoutStateTransitionCoordinator displayLayoutPublisher:displayLayoutPublisher touchDeliveryObservationService:mEMORY[0x277CF0788]];
}

- (void)_configureEventSourceWithAnalyticsClient:(id)client applicationController:(id)controller applicationRestrictionController:(id)restrictionController iconModel:(id)model layoutStateTransitionCoordinator:(id)coordinator displayLayoutPublisher:(id)publisher touchDeliveryObservationService:(id)service
{
  publisherCopy = publisher;
  serviceCopy = service;
  coordinatorCopy = coordinator;
  modelCopy = model;
  restrictionControllerCopy = restrictionController;
  controllerCopy = controller;
  objc_storeWeak(&self->_analyticsClient, client);
  objc_storeWeak(&self->_applicationController, controllerCopy);
  [restrictionControllerCopy addObserver:self];
  objc_storeWeak(&self->_applicationRestrictionController, restrictionControllerCopy);

  [coordinatorCopy addObserver:self];
  objc_storeWeak(&self->_layoutStateTransitionCoordinator, coordinatorCopy);

  [publisherCopy addObserver:self];
  displayLayoutPublisher = self->_displayLayoutPublisher;
  self->_displayLayoutPublisher = publisherCopy;
  v22 = publisherCopy;

  [serviceCopy addObserver:self];
  objc_storeWeak(&self->_touchDeliveryObservationService, serviceCopy);

  appLayoutOnStage = self->_appLayoutOnStage;
  self->_appLayoutOnStage = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__installedAppsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:controllerCopy];

  [defaultCenter addObserver:self selector:sel__userQuitApplication_ name:@"SBAppSwitcherQuitAppNotification" object:0];
  [defaultCenter addObserver:self selector:sel__iconVisibilityDidChange_ name:*MEMORY[0x277D666F8] object:modelCopy];

  [defaultCenter addObserver:self selector:sel__userRemovedSuggestion_ name:@"SBFloatingDockSuggestionsDeletedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__webBookmarkUninstalled_ name:*MEMORY[0x277D66750] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  WeakRetained = objc_loadWeakRetained(&self->_touchDeliveryObservationService);
  [WeakRetained removeObserver:self];

  [(FBSDisplayLayoutPublishing *)self->_displayLayoutPublisher removeObserver:self];
  v5 = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);
  [v5 removeObserver:self];

  v6 = objc_loadWeakRetained(&self->_applicationRestrictionController);
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = SBDisplayAppInteractionEventSource;
  [(SBDisplayAppInteractionEventSource *)&v7 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)_noteTouchForProcess:(int)process context:(unsigned int)context
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SBDisplayAppInteractionEventSource__noteTouchForProcess_context___block_invoke;
  v4[3] = &unk_2783A8BC8;
  v4[4] = self;
  processCopy = process;
  contextCopy = context;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __67__SBDisplayAppInteractionEventSource__noteTouchForProcess_context___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v3 = [WeakRetained applicationWithPid:*(a1 + 40)];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(*(a1 + 32) + 24) copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [v3 bundleIdentifier];
        if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v9 eventSource:*(a1 + 32) userTouchedApplication:v10];
        }

        if (objc_opt_respondsToSelector())
        {
          [v9 eventSource:*(a1 + 32) userTouchedApplication:v10 pid:*(a1 + 40) inContext:*(a1 + 44)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)publisher:(id)publisher didUpdateLayout:(id)layout withTransition:(id)transition
{
  v62 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  layoutCopy = layout;
  transitionCopy = transition;
  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v36 = layoutCopy;
  obj = [layoutCopy elements];
  v8 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v8)
  {
    v9 = v8;
    bundleIdentifier = 0;
    v42 = *v49;
    v41 = *MEMORY[0x277D67488];
    v11 = *MEMORY[0x277D67490];
    v40 = *MEMORY[0x277D67480];
    v39 = *MEMORY[0x277D67478];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        if (!bundleIdentifier)
        {
          if ([*(*(&v48 + 1) + 8 * i) hasKeyboardFocus])
          {
            bundleIdentifier = [v13 bundleIdentifier];
            v14 = SBLogDockRecents();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v54 = bundleIdentifier;
              _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, "elementWithFocusBundleID = %@", buf, 0xCu);
            }
          }

          else
          {
            bundleIdentifier = 0;
          }
        }

        v15 = bundleIdentifier;
        v16 = MEMORY[0x277CBEB38];
        v59[0] = v41;
        v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "level", transitionCopy)}];
        v60[0] = v17;
        v59[1] = v11;
        v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isUIApplicationElement")}];
        v60[1] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
        v20 = [v16 dictionaryWithDictionary:v19];

        identifier = [v13 identifier];
        if (identifier)
        {
          [v20 setObject:identifier forKeyedSubscript:v40];
        }

        bundleIdentifier2 = [v13 bundleIdentifier];
        if (bundleIdentifier2)
        {
          [v20 setObject:bundleIdentifier2 forKeyedSubscript:v39];
        }

        [v43 addObject:v20];

        bundleIdentifier = v15;
      }

      v9 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v9);
  }

  else
  {
    bundleIdentifier = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_analyticsClient);
  v57 = *MEMORY[0x277D67498];
  v58 = v43;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  [WeakRetained emitEvent:3 withPayload:v24];

  if (bundleIdentifier && ![(NSString *)self->_currentFocusedBundleID isEqualToString:bundleIdentifier])
  {
    v25 = SBLogDockRecents();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      currentFocusedBundleID = self->_currentFocusedBundleID;
      *buf = 138412546;
      v54 = currentFocusedBundleID;
      v55 = 2112;
      v56 = bundleIdentifier;
      _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_INFO, "elementWithFocusBundleID changed. old: %@; new: %@;", buf, 0x16u);
    }

    v27 = bundleIdentifier;
    [(SBDisplayAppInteractionEventSource *)self setCurrentFocusedBundleID:bundleIdentifier];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v28 = self->_observers;
    v29 = [(NSHashTable *)v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v45;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v44 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v33 eventSource:self keyboardFocusChangedToApplication:self->_currentFocusedBundleID];
          }
        }

        v30 = [(NSHashTable *)v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v30);
    }

    bundleIdentifier = v27;
  }
}

- (void)_installedAppsDidChange:(id)change
{
  v20 = *MEMORY[0x277D85DE8];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"SBInstalledApplicationsRemovedBundleIDs"];

  v6 = SBLogDockRecents();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "installedAppsChanged changed. removedBundleIDs: %@;", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 eventSource:self userDeletedApplications:{v5, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_userQuitApplication:(id)application
{
  v20 = *MEMORY[0x277D85DE8];
  userInfo = [application userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"SBAppSwitcherQuitAppBundleIdentifierKey"];

  v6 = SBLogDockRecents();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "userQuitApplication: %@;", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_observers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 eventSource:self userQuitApplicationInSwitcher:{v5, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)applicationRestrictionController:(id)controller didUpdateVisibleTags:(id)tags hiddenTags:(id)hiddenTags
{
  v35 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  hiddenTagsCopy = hiddenTags;
  if ([hiddenTagsCopy count])
  {
    v9 = SBLogDockRecents();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = hiddenTagsCopy;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "hiddenTags: %@;", buf, 0xCu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = self->_observers;
    v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v15 eventSource:self applicationsBecameHidden:hiddenTagsCopy];
          }
        }

        v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }
  }

  if ([tagsCopy count])
  {
    v16 = SBLogDockRecents();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = tagsCopy;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "visibleTags: %@;", buf, 0xCu);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = self->_observers;
    v18 = [(NSHashTable *)v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v23 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v22 eventSource:self applicationsBecameVisible:{tagsCopy, v23}];
          }
        }

        v19 = [(NSHashTable *)v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v19);
    }
  }
}

- (void)_userRemovedSuggestion:(id)suggestion
{
  v24 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  userInfo = [suggestionCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"SBFloatingDockSuggestionsDeletedNotificationBundleIdentifierKey"];

  v16 = suggestionCopy;
  userInfo2 = [suggestionCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"SBFloatingDockSuggestionsDeletedNotificationWebAppIdentifierKey"];

  v9 = SBLogDockRecents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "userRemovedSuggestion: %@;", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          if (v6)
          {
            [v15 eventSource:self userRemovedSuggestions:v6];
          }

          if (v8)
          {
            [v15 eventSource:self userRemovedSuggestions:v8];
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)_webBookmarkUninstalled:(id)uninstalled
{
  v23 = *MEMORY[0x277D85DE8];
  uninstalledCopy = uninstalled;
  v5 = objc_opt_class();
  object = [uninstalledCopy object];
  v7 = SBSafeCast(v5, object);

  if (v7)
  {
    v8 = SBLogDockRecents();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [v7 identifier];
      *buf = 138412290;
      v22 = identifier;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "uninstalled bookmark for webClip: %@", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = self->_observers;
    v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 eventSource:self userDeletedWebBookmark:{v7, v16}];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (void)_notifyTransition:(id)transition beginning:(BOOL)beginning
{
  beginningCopy = beginning;
  v135 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  toLayoutState = [transitionCopy toLayoutState];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([transitionCopy isInterrupted] & 1) == 0)
  {
    unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
    v8 = objc_opt_class();
    workspaceTransaction = [transitionCopy workspaceTransaction];
    transitionRequest = [workspaceTransaction transitionRequest];
    v11 = SBSafeCast(v8, transitionRequest);

    v90 = beginningCopy;
    if (v11)
    {
      source = [v11 source];
    }

    else
    {
      source = 0;
    }

    applicationTransitionContext = [transitionCopy applicationTransitionContext];
    requestedActivatingWorkspaceEntity = [applicationTransitionContext requestedActivatingWorkspaceEntity];

    v84 = v11;
    v85 = transitionCopy;
    v15 = toLayoutState;
    v93 = requestedActivatingWorkspaceEntity;
    if (requestedActivatingWorkspaceEntity)
    {
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      elements = [toLayoutState elements];
      v17 = [elements countByEnumeratingWithState:&v111 objects:v134 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v112;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v112 != v19)
            {
              objc_enumerationMutation(elements);
            }

            v21 = *(*(&v111 + 1) + 8 * i);
            workspaceEntity = [v21 workspaceEntity];
            v23 = [v93 isAnalogousToEntity:workspaceEntity];

            if (v23)
            {
              v24 = v21;
              goto LABEL_17;
            }
          }

          v18 = [elements countByEnumeratingWithState:&v111 objects:v134 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }

        v24 = 0;
LABEL_17:
        transitionCopy = v85;
        toLayoutState = v15;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      if (source != 27)
      {
        v24 = 0;
        goto LABEL_35;
      }

      fromLayoutState = [transitionCopy fromLayoutState];
      elements = [fromLayoutState elements];

      [toLayoutState elements];
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v26 = v110 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v107 objects:v133 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v108;
        while (2)
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v108 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v107 + 1) + 8 * j);
            if (([elements containsObject:v31] & 1) == 0)
            {
              v24 = v31;
              goto LABEL_31;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v107 objects:v133 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }

        v24 = 0;
LABEL_31:
        transitionCopy = v85;
      }

      else
      {
        v24 = 0;
      }
    }

LABEL_35:
    elements2 = [toLayoutState elements];
    v33 = [elements2 bs_map:&__block_literal_global_356];

    if (!v33)
    {
      v33 = [MEMORY[0x277CBEB98] set];
    }

    elements3 = [toLayoutState elements];
    v35 = [elements3 bs_map:&__block_literal_global_54_2];

    if (!v35)
    {
      v35 = [MEMORY[0x277CBEB98] set];
    }

    v83 = v33;
    allObjects = [v33 allObjects];
    v89 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

    v82 = v35;
    allObjects2 = [v35 allObjects];
    v88 = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_63_1];

    WeakRetained = objc_loadWeakRetained(&self->_analyticsClient);
    v38 = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);
    windowScene = [v38 windowScene];
    switcherController = [windowScene switcherController];

    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __66__SBDisplayAppInteractionEventSource__notifyTransition_beginning___block_invoke_4;
    v105[3] = &unk_2783BFF38;
    v41 = switcherController;
    v106 = v41;
    v87 = MEMORY[0x223D6F7F0](v105);
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __66__SBDisplayAppInteractionEventSource__notifyTransition_beginning___block_invoke_6;
    v103[3] = &unk_2783AC3E8;
    v81 = v41;
    v104 = v81;
    v86 = MEMORY[0x223D6F7F0](v103);
    appLayout = [toLayoutState appLayout];
    appLayoutOnStage = self->_appLayoutOnStage;
    v91 = appLayout;
    if (appLayout)
    {
      if (!appLayoutOnStage)
      {
        goto LABEL_44;
      }

      if (![(SBAppLayout *)appLayoutOnStage containsAnyItemFromAppLayout:appLayout])
      {
        v44 = self->_appLayoutOnStage;
        self->_appLayoutOnStage = 0;

        v131[0] = *MEMORY[0x277D675A0];
        fromLayoutState2 = [transitionCopy fromLayoutState];
        v46 = (v87)[2](v87, fromLayoutState2);
        v132[0] = v46;
        v131[1] = *MEMORY[0x277D675C8];
        v47 = v86[2]();
        v132[1] = v47;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:2];
        [WeakRetained emitEvent:68 withPayload:v48];
      }

      if (!self->_appLayoutOnStage)
      {
LABEL_44:
        v129[0] = *MEMORY[0x277D675A0];
        v49 = (v87)[2](v87, toLayoutState);
        v130[0] = v49;
        v129[1] = *MEMORY[0x277D675C8];
        v50 = v86[2]();
        v130[1] = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:2];
        [WeakRetained emitEvent:67 withPayload:v51];
      }

      v52 = v91;
      fromLayoutState3 = self->_appLayoutOnStage;
      self->_appLayoutOnStage = v52;
    }

    else
    {
      if (!appLayoutOnStage)
      {
        goto LABEL_49;
      }

      self->_appLayoutOnStage = 0;

      v127[0] = *MEMORY[0x277D675A0];
      fromLayoutState3 = [transitionCopy fromLayoutState];
      v54 = (v87)[2](v87, fromLayoutState3);
      v128[0] = v54;
      v127[1] = *MEMORY[0x277D675C8];
      v55 = v86[2]();
      v128[1] = v55;
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v128 forKeys:v127 count:2];
      [WeakRetained emitEvent:68 withPayload:v56];
    }

LABEL_49:
    v57 = 4;
    if (!v90)
    {
      v57 = 5;
    }

    v79 = v57;
    v58 = *MEMORY[0x277D67570];
    v126[0] = v89;
    v59 = *MEMORY[0x277D67578];
    v125[0] = v58;
    v125[1] = v59;
    v80 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(toLayoutState, "interfaceOrientationForLayoutRole:", 1)}];
    v126[1] = v80;
    v125[2] = *MEMORY[0x277D67598];
    v78 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(toLayoutState, "interfaceOrientation")}];
    v126[2] = v78;
    v125[3] = *MEMORY[0x277D675B0];
    v60 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(toLayoutState, "spaceConfiguration")}];
    v126[3] = v60;
    v125[4] = *MEMORY[0x277D67590];
    v61 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(toLayoutState, "floatingConfiguration")}];
    v126[4] = v61;
    v125[5] = *MEMORY[0x277D675C0];
    v62 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(toLayoutState, "unlockedEnvironmentMode")}];
    v126[5] = v62;
    v125[6] = *MEMORY[0x277D675B8];
    v63 = [MEMORY[0x277CCABB0] numberWithInteger:source];
    v125[7] = *MEMORY[0x277D67588];
    v126[6] = v63;
    v126[7] = v88;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:8];
    [WeakRetained emitEvent:v79 withPayload:v64];

    v65 = SBLogDockRecents();
    v66 = os_log_type_enabled(v65, OS_LOG_TYPE_INFO);
    if (v90)
    {
      toLayoutState = v15;
      if (v66)
      {
        *buf = 134218754;
        v118 = unlockedEnvironmentMode;
        v119 = 2112;
        v120 = v15;
        v121 = 2112;
        v122 = v24;
        v123 = 2048;
        v124 = source;
        _os_log_impl(&dword_21ED4E000, v65, OS_LOG_TYPE_INFO, "beginning transition to mode: %ld; layoutState: %@; activatingElement: %@, triggeredBy: %ld", buf, 0x2Au);
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v67 = self->_observers;
      v68 = [(NSHashTable *)v67 countByEnumeratingWithState:&v99 objects:v116 count:16];
      if (!v68)
      {
        goto LABEL_76;
      }

      v69 = v68;
      v70 = *v100;
      do
      {
        for (k = 0; k != v69; ++k)
        {
          if (*v100 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = *(*(&v99 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v72 eventSource:self didBeginTransitionToMode:unlockedEnvironmentMode withLayoutState:v15 activatingElement:v24 triggeredBy:source];
          }
        }

        v69 = [(NSHashTable *)v67 countByEnumeratingWithState:&v99 objects:v116 count:16];
      }

      while (v69);
    }

    else
    {
      toLayoutState = v15;
      if (v66)
      {
        *buf = 134218754;
        v118 = unlockedEnvironmentMode;
        v119 = 2112;
        v120 = v15;
        v121 = 2112;
        v122 = v24;
        v123 = 2048;
        v124 = source;
        _os_log_impl(&dword_21ED4E000, v65, OS_LOG_TYPE_INFO, "ending transition to mode: %ld; layoutState: %@; activatingElement: %@, triggeredBy: %ld", buf, 0x2Au);
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v67 = self->_observers;
      v73 = [(NSHashTable *)v67 countByEnumeratingWithState:&v95 objects:v115 count:16];
      if (!v73)
      {
        goto LABEL_76;
      }

      v74 = v73;
      v75 = *v96;
      do
      {
        for (m = 0; m != v74; ++m)
        {
          if (*v96 != v75)
          {
            objc_enumerationMutation(v67);
          }

          v77 = *(*(&v95 + 1) + 8 * m);
          if (objc_opt_respondsToSelector())
          {
            [v77 eventSource:self didFinishTransitionToMode:unlockedEnvironmentMode withLayoutState:v15 activatingElement:v24 triggeredBy:source];
          }
        }

        v74 = [(NSHashTable *)v67 countByEnumeratingWithState:&v95 objects:v115 count:16];
      }

      while (v74);
    }

    transitionCopy = v85;
    toLayoutState = v15;
LABEL_76:
  }
}

id __66__SBDisplayAppInteractionEventSource__notifyTransition_beginning___block_invoke_2(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [SBDisplayItem displayItemForLayoutElement:v2];
  v4 = v3;
  if (v3)
  {
    v11[0] = *MEMORY[0x277D67568];
    v5 = [v3 bundleIdentifier];
    v6 = v5;
    v7 = @"none";
    if (v5)
    {
      v7 = v5;
    }

    v12[0] = v7;
    v11[1] = *MEMORY[0x277D67580];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "layoutRole")}];
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __66__SBDisplayAppInteractionEventSource__notifyTransition_beginning___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *MEMORY[0x277D67568];
  v5 = a3;
  v6 = [a2 objectForKey:v4];
  v7 = [v5 objectForKey:v4];

  v8 = [v6 localizedCaseInsensitiveCompare:v7];
  return v8;
}

id __66__SBDisplayAppInteractionEventSource__notifyTransition_beginning___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = [v3 dictionary];
  v6 = [v4 layoutAttributesMap];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SBDisplayAppInteractionEventSource__notifyTransition_beginning___block_invoke_5;
  v11[3] = &unk_2783B9FA8;
  v12 = *(a1 + 32);
  v7 = v5;
  v13 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v7;

  return v7;
}

void __66__SBDisplayAppInteractionEventSource__notifyTransition_beginning___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _isDisplayItemFullScreen:v6 preferredAttributes:a3];
  v12 = *MEMORY[0x277D675A8];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = *(a1 + 40);
  v11 = [v6 uniqueIdentifier];

  [v10 setObject:v9 forKey:v11];
}

id __66__SBDisplayAppInteractionEventSource__notifyTransition_beginning___block_invoke_6(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) windowManagementContext];
  v5 = *MEMORY[0x277D675D0];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "telemetryMultitaskingMode")}];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)_iconVisibilityDidChange:(id)change
{
  v39 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D66870]];

  v26 = v6;
  v7 = [(SBDisplayAppInteractionEventSource *)self _bundleIDsForIcons:v6];
  if ([v7 count])
  {
    v8 = SBLogDockRecents();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "applications became hidden: %@", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = self->_observers;
    v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v14 eventSource:self applicationsBecameHidden:v7];
          }
        }

        v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }
  }

  userInfo2 = [changeCopy userInfo];
  v16 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D66878]];

  v17 = [(SBDisplayAppInteractionEventSource *)self _bundleIDsForIcons:v16];
  if ([v17 count])
  {
    v25 = v16;
    v18 = SBLogDockRecents();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v17;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "applications became unhidden: %@", buf, 0xCu);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = self->_observers;
    v20 = [(NSHashTable *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v27 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v24 eventSource:self applicationsBecameVisible:v17];
          }
        }

        v21 = [(NSHashTable *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }

    v16 = v25;
  }
}

- (id)_bundleIDsForIcons:(id)icons
{
  v19 = *MEMORY[0x277D85DE8];
  iconsCopy = icons;
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = iconsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 isLeafIcon])
        {
          applicationBundleID = [v10 applicationBundleID];
          if (applicationBundleID)
          {
            v12 = applicationBundleID;
            [v4 addObject:applicationBundleID];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BKSTouchDeliveryObservationService)touchDeliveryObservationService
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDeliveryObservationService);

  return WeakRetained;
}

- (SBApplicationController)applicationController
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationController);

  return WeakRetained;
}

- (SBApplicationRestrictionController)applicationRestrictionController
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationRestrictionController);

  return WeakRetained;
}

- (SBFAnalyticsClient)analyticsClient
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsClient);

  return WeakRetained;
}

- (SBLayoutStateTransitionCoordinator)layoutStateTransitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutStateTransitionCoordinator);

  return WeakRetained;
}

- (void)windowSceneDidConnect:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDisplayAppInteractionEventSource.m" lineNumber:75 description:@"An event source cannot have multiple window scene connections."];
}

@end