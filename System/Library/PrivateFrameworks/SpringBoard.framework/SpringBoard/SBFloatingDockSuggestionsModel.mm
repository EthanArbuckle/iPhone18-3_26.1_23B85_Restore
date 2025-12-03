@interface SBFloatingDockSuggestionsModel
- (BOOL)_displayItemContainedInUserDock:(id)dock;
- (BOOL)_shouldProcessAppSuggestion:(id)suggestion;
- (BOOL)dataStore:(id)store shouldRestorePersistedDisplayItem:(id)item;
- (BOOL)recentDisplayItemsController:(id)controller shouldAddItem:(id)item;
- (BOOL)shouldAddItem:(id)item;
- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider;
- (SBFloatingDockSuggestionsModel)initWithMaximumNumberOfSuggestions:(unint64_t)suggestions homeScreenContextProvider:(id)provider recentsController:(id)controller recentsDataStore:(id)store recentsDefaults:(id)defaults floatingDockDefaults:(id)dockDefaults appSuggestionManager:(id)manager applicationController:(id)self0;
- (SBFloatingDockSuggestionsModelDelegate)delegate;
- (SBRecentDisplayItemsController)recentsController;
- (SBRecentDisplayItemsDataStore)recentsDataStore;
- (id)_displayItemForAppSuggestion:(id)suggestion;
- (id)_dockListModelFromContextProvider;
- (id)_filterRecentDisplayItems:(id)items filteredOutItems:(id *)outItems;
- (id)_moveOrAddRecentThenCull:(id)cull;
- (id)persistedDisplayItemsForDataStore:(id)store;
- (unint64_t)_indexForAppSuggestion:(id)suggestion;
- (void)_addStateCaptureHandlers;
- (void)_appSuggestionsChanged:(id)changed;
- (void)_handleNewRecentItem:(id)item;
- (void)_iconModelDidChange:(id)change;
- (void)_iconModelDidLayout:(id)layout;
- (void)_initializeAndObserveDefaults;
- (void)_performAppSuggestionChangedWithNewSuggestion:(id)suggestion;
- (void)_reloadRecentsAndSuggestions;
- (void)_runStressTestWithCompletion:(id)completion;
- (void)_setRecentsEnabled:(BOOL)enabled;
- (void)_updateCurrentDisplayItemsAfterContinuityChange:(BOOL)change notifyDelegate:(BOOL)delegate;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)beginPendingUpdatesForReason:(id)reason;
- (void)dataStore:(id)store persistDisplayItems:(id)items;
- (void)dealloc;
- (void)endPendingUpdatesForReason:(id)reason;
- (void)recentDisplayItemsController:(id)controller didAddItem:(id)item;
- (void)recentDisplayItemsController:(id)controller didAddItem:(id)item andDropItem:(id)dropItem;
- (void)recentDisplayItemsController:(id)controller didMoveItemToFront:(id)front;
- (void)recentDisplayItemsController:(id)controller didRemoveItem:(id)item;
- (void)resetRecentsAndSuggestions;
- (void)setRequestedSuggestedApplication:(id)application;
- (void)setUserDockListModel:(id)model;
@end

@implementation SBFloatingDockSuggestionsModel

- (SBFloatingDockSuggestionsModel)initWithMaximumNumberOfSuggestions:(unint64_t)suggestions homeScreenContextProvider:(id)provider recentsController:(id)controller recentsDataStore:(id)store recentsDefaults:(id)defaults floatingDockDefaults:(id)dockDefaults appSuggestionManager:(id)manager applicationController:(id)self0
{
  providerCopy = provider;
  controllerCopy = controller;
  storeCopy = store;
  defaultsCopy = defaults;
  dockDefaultsCopy = dockDefaults;
  managerCopy = manager;
  applicationControllerCopy = applicationController;
  v44.receiver = self;
  v44.super_class = SBFloatingDockSuggestionsModel;
  v20 = [(SBFloatingDockSuggestionsModel *)&v44 init];
  v21 = v20;
  if (v20)
  {
    v20->_maxSuggestions = suggestions;
    objc_storeWeak(&v20->_recentsDataStore, storeCopy);
    objc_storeWeak(&v21->_recentsController, controllerCopy);
    objc_storeStrong(&v21->_appSuggestionManager, manager);
    objc_storeWeak(&v21->_homeScreenContextProvider, providerCopy);
    objc_storeStrong(&v21->_applicationController, applicationController);
    objc_storeStrong(&v21->_floatingDockDefaults, dockDefaults);
    [(SBFloatingDockSuggestionsModel *)v21 _setRecentsEnabled:[(SBFloatingDockDefaults *)v21->_floatingDockDefaults recentsEnabled:managerCopy]];
    [storeCopy setPersistenceDelegate:v21];
    objc_storeStrong(&v21->_recentsDefaults, defaults);
    displayItems = [storeCopy displayItems];
    [controllerCopy setRecentDisplayItems:displayItems];

    [(SBFloatingDockSuggestionsModel *)v21 _initializeAndObserveDefaults];
    v23 = objc_alloc_init(MEMORY[0x277CBEB40]);
    currentDisplayItems = v21->_currentDisplayItems;
    v21->_currentDisplayItems = v23;

    _dockListModelFromContextProvider = [(SBFloatingDockSuggestionsModel *)v21 _dockListModelFromContextProvider];
    [(SBFloatingDockSuggestionsModel *)v21 setUserDockListModel:_dockListModelFromContextProvider];

    [(SBFloatingDockSuggestionsModel *)v21 _reloadRecentsAndSuggestions];
    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingSuggestionUpdateReasons = v21->_pendingSuggestionUpdateReasons;
    v21->_pendingSuggestionUpdateReasons = v26;

    [(SBFloatingDockSuggestionsModel *)v21 _addStateCaptureHandlers];
    iconModel = [providerCopy iconModel];
    iconModel = v21->_iconModel;
    v21->_iconModel = iconModel;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel__appSuggestionsChanged_ name:@"SBSuggestedAppChangedNotification" object:v21->_appSuggestionManager];
    [defaultCenter addObserver:v21 selector:sel__iconModelDidLayout_ name:*MEMORY[0x277D666F0] object:v21->_iconModel];
    [defaultCenter addObserver:v21 selector:sel__iconModelDidChange_ name:SBIconControllerIconModelDidChangeNotification object:providerCopy];
    v31 = MEMORY[0x277D43280];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __210__SBFloatingDockSuggestionsModel_initWithMaximumNumberOfSuggestions_homeScreenContextProvider_recentsController_recentsDataStore_recentsDefaults_floatingDockDefaults_appSuggestionManager_applicationController___block_invoke;
    v42[3] = &unk_2783A8C18;
    v32 = v21;
    v43 = v32;
    v33 = [v31 recipeWithTitle:@"Run Dock Suggestions Stress Test" prepareBlock:0 action:v42 cleanupBlock:0];
    stressTestRecipe = v32->_stressTestRecipe;
    v32->_stressTestRecipe = v33;

    [MEMORY[0x277D661A0] registerTestRecipe:v32->_stressTestRecipe];
    subjectMonitorRegistry = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v36 = [subjectMonitorRegistry addMonitor:v32 subjectMask:1 subscriptionOptions:1];
    appProtectionSubscription = v32->_appProtectionSubscription;
    v32->_appProtectionSubscription = v36;
  }

  return v21;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBIconListModel *)self->_userDockListModel removeListObserver:self];
  [(APSubjectMonitorSubscription *)self->_appProtectionSubscription invalidate];
  v4.receiver = self;
  v4.super_class = SBFloatingDockSuggestionsModel;
  [(SBFloatingDockSuggestionsModel *)&v4 dealloc];
}

- (void)beginPendingUpdatesForReason:(id)reason
{
  v8 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  [(NSMutableSet *)self->_pendingSuggestionUpdateReasons addObject:reasonCopy];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Beging pending app suggestions update because %@", &v6, 0xCu);
  }
}

- (void)endPendingUpdatesForReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _isPendingAppSuggestionsUpdate = [(SBFloatingDockSuggestionsModel *)self _isPendingAppSuggestionsUpdate];
  [(NSMutableSet *)self->_pendingSuggestionUpdateReasons removeObject:reasonCopy];
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "End pending app suggestions update because %@", &v9, 0xCu);
  }

  _isPendingAppSuggestionsUpdate2 = [(SBFloatingDockSuggestionsModel *)self _isPendingAppSuggestionsUpdate];
  if (_isPendingAppSuggestionsUpdate && !_isPendingAppSuggestionsUpdate2)
  {
    currentSuggestedApp = [(SBAppSuggestionManager *)self->_appSuggestionManager currentSuggestedApp];
    [(SBFloatingDockSuggestionsModel *)self _performAppSuggestionChangedWithNewSuggestion:currentSuggestedApp];
  }
}

- (void)setRequestedSuggestedApplication:(id)application
{
  applicationCopy = application;
  if (self->_requestedSuggestedApplication != applicationCopy)
  {
    v6 = applicationCopy;
    objc_storeStrong(&self->_requestedSuggestedApplication, application);
    [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:0 notifyDelegate:1];
    applicationCopy = v6;
  }
}

- (void)dataStore:(id)store persistDisplayItems:(id)items
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        plistRepresentation = [*(*(&v13 + 1) + 8 * v11) plistRepresentation];
        [array addObject:plistRepresentation];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(SBRecentDisplayItemsDefaults *)self->_recentsDefaults setDockRecentsPlistRepresentation:array];
}

- (id)persistedDisplayItemsForDataStore:(id)store
{
  v26 = *MEMORY[0x277D85DE8];
  dockRecentsPlistRepresentation = [(SBRecentDisplayItemsDefaults *)self->_recentsDefaults dockRecentsPlistRepresentation];
  if (dockRecentsPlistRepresentation)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = dockRecentsPlistRepresentation;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v18 = dockRecentsPlistRepresentation;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [[SBDisplayItem alloc] initWithPlistRepresentation:v11];
          if (!v12)
          {

            v16 = SBLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [(SBFloatingDockSuggestionsModel *)v11 persistedDisplayItemsForDataStore:v16];
            }

            v4 = 0;
            goto LABEL_19;
          }

          v13 = v12;
          bundleIdentifier = [(SBDisplayItem *)v12 bundleIdentifier];
          if (!bundleIdentifier || ([v5 containsObject:bundleIdentifier] & 1) == 0)
          {
            v15 = SBLogCommon();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v24 = v13;
              _os_log_debug_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEBUG, "found persisted dock recent display item: %@", buf, 0xCu);
            }

            [v4 addObject:v13];
            [v5 addObject:bundleIdentifier];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_19:
      dockRecentsPlistRepresentation = v18;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)dataStore:(id)store shouldRestorePersistedDisplayItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  homeScreenContextProvider = [(SBFloatingDockSuggestionsModel *)self homeScreenContextProvider];
  iconModel = [homeScreenContextProvider iconModel];
  if ([itemCopy type])
  {
    v8 = 0;
  }

  else
  {
    bundleIdentifier = [itemCopy bundleIdentifier];
    if (bundleIdentifier)
    {
      v10 = [iconModel applicationIconForBundleIdentifier:bundleIdentifier];
      v11 = [iconModel isIconVisible:v10];
      restrictionController = [(SBApplicationController *)self->_applicationController restrictionController];
      v13 = [restrictionController isApplicationIdentifierRestricted:bundleIdentifier];

      v8 = v11 & (v13 ^ 1);
      v14 = SBLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138413058;
        v17 = itemCopy;
        v18 = 1024;
        v19 = v11 & (v13 ^ 1);
        v20 = 1024;
        v21 = v11;
        v22 = 1024;
        v23 = v13 & 1;
        _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "should restore persisted dock recent display item %@: %{BOOL}u (visible: %{BOOL}u, restricted: %{BOOL}u)", &v16, 0x1Eu);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_moveOrAddRecentThenCull:(id)cull
{
  cullCopy = cull;
  v6 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency sb_indexOfFloatingDockSuggestionDisplayItem:cullCopy];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency removeObjectAtIndex:v6];
  }

  [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency insertObject:cullCopy atIndex:0];
  if (([(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency count]- self->_maxSuggestions) >= 2)
  {
    [(SBFloatingDockSuggestionsModel *)a2 _moveOrAddRecentThenCull:?];
  }

  if ([(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency count]<= self->_maxSuggestions)
  {
    lastObject = 0;
  }

  else
  {
    lastObject = [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency lastObject];
    [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency removeObject:lastObject];
  }

  return lastObject;
}

- (void)_handleNewRecentItem:(id)item
{
  itemCopy = item;
  v4 = [(SBFloatingDockSuggestionsModel *)self shouldAddItem:itemCopy];
  if (v4)
  {
    v5 = [(SBFloatingDockSuggestionsModel *)self _moveOrAddRecentThenCull:itemCopy];
    currentAppSuggestion = self->_currentAppSuggestion;
    if (v5)
    {
      if (!currentAppSuggestion || (v7 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_indexOfFloatingDockSuggestionDisplayItem:v5], [(SBFloatingDockSuggestionsModel *)self _displayItemForAppSuggestion:self->_currentAppSuggestion], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(SBFloatingDockSuggestionsModel *)self _indexForAppSuggestion:v8], v8, v7 != v9))
      {
        [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:[(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_indexOfFloatingDockSuggestionDisplayItem:v5] withObject:itemCopy];
LABEL_12:
        WeakRetained = objc_loadWeakRetained(&self->_recentsDataStore);
        [WeakRetained setDisplayItems:self->_currentRecentDisplayItems];

        [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:0 notifyDelegate:1];
        goto LABEL_13;
      }

      lastObject = [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency lastObject];
      v11 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems indexOfObject:lastObject];
      v12 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems indexOfObject:v5];
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:v11 withObject:itemCopy];
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:v12 withObject:lastObject];
    }

    else
    {
      if (!currentAppSuggestion || [(NSMutableOrderedSet *)self->_currentRecentDisplayItems count]!= self->_maxSuggestions - 1)
      {
        [(NSMutableOrderedSet *)self->_currentRecentDisplayItems insertObject:itemCopy atIndex:0];
        goto LABEL_12;
      }

      lastObject = [(SBFloatingDockSuggestionsModel *)self _oldestRecent];
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:[(NSMutableOrderedSet *)self->_currentRecentDisplayItems indexOfObject:lastObject] withObject:itemCopy];
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems addObject:lastObject];
    }

    goto LABEL_12;
  }

LABEL_13:

  MEMORY[0x2821F9730](v4);
}

- (BOOL)shouldAddItem:(id)item
{
  currentRecentDisplayItems = self->_currentRecentDisplayItems;
  itemCopy = item;
  LODWORD(currentRecentDisplayItems) = [(NSMutableOrderedSet *)currentRecentDisplayItems sb_containsFloatingDockSuggestionDisplayItem:itemCopy];
  v5 = MEMORY[0x277CEBE80];
  bundleIdentifier = [itemCopy bundleIdentifier];

  v7 = [v5 applicationWithBundleIdentifier:bundleIdentifier];
  LODWORD(v5) = [v7 isHidden];

  return ((v5 | currentRecentDisplayItems) & 1) == 0;
}

- (BOOL)recentDisplayItemsController:(id)controller shouldAddItem:(id)item
{
  itemCopy = item;
  v6 = [(SBFloatingDockSuggestionsModel *)self _displayItemContainedInUserDock:itemCopy];
  type = [itemCopy type];
  iconModel = self->_iconModel;
  if (type == 5)
  {
    webClipIdentifier = [itemCopy webClipIdentifier];

    [(SBIconModel *)iconModel bookmarkIconForWebClipIdentifier:webClipIdentifier];
  }

  else
  {
    webClipIdentifier = [itemCopy bundleIdentifier];

    [(SBIconModel *)iconModel applicationIconForBundleIdentifier:webClipIdentifier];
  }
  v10 = ;

  v11 = [(SBIconModel *)self->_iconModel isIconVisible:v10];
  return !v6 && v11;
}

- (void)recentDisplayItemsController:(id)controller didAddItem:(id)item
{
  itemCopy = item;
  BSDispatchQueueAssertMain();
  [(SBFloatingDockSuggestionsModel *)self _handleNewRecentItem:itemCopy];
}

- (void)recentDisplayItemsController:(id)controller didAddItem:(id)item andDropItem:(id)dropItem
{
  itemCopy = item;
  BSDispatchQueueAssertMain();
  [(SBFloatingDockSuggestionsModel *)self _handleNewRecentItem:itemCopy];
}

- (void)recentDisplayItemsController:(id)controller didMoveItemToFront:(id)front
{
  frontCopy = front;
  BSDispatchQueueAssertMain();
  if (![(SBFloatingDockSuggestionsModel *)self _displayItemContainedInUserDock:frontCopy])
  {
    if (([(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_containsFloatingDockSuggestionDisplayItem:frontCopy]& 1) != 0)
    {
      v5 = [(SBFloatingDockSuggestionsModel *)self _moveOrAddRecentThenCull:frontCopy];
      if (v5)
      {
        [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:[(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_indexOfFloatingDockSuggestionDisplayItem:v5] withObject:frontCopy];
        WeakRetained = objc_loadWeakRetained(&self->_recentsDataStore);
        [WeakRetained setDisplayItems:self->_currentRecentDisplayItems];

        [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:0 notifyDelegate:1];
      }
    }

    else
    {
      [(SBFloatingDockSuggestionsModel *)self _handleNewRecentItem:frontCopy];
    }
  }
}

- (void)recentDisplayItemsController:(id)controller didRemoveItem:(id)item
{
  itemCopy = item;
  BSDispatchQueueAssertMain();
  v5 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_indexOfFloatingDockSuggestionDisplayItem:itemCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    if (self->_currentAppSuggestion && ((v7 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems count], maxSuggestions = self->_maxSuggestions, v7 == maxSuggestions) ? (v9 = v6 >= maxSuggestions - 1) : (v9 = 1), !v9 && ([(NSMutableOrderedSet *)self->_currentRecentDisplayItems lastObject], (v10 = objc_claimAutoreleasedReturnValue()) != 0)))
    {
      v11 = v10;
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems removeObject:v10];
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:v6 withObject:v11];
    }

    else
    {
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems removeObjectAtIndex:v6];
    }

    [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency removeObject:itemCopy];
    WeakRetained = objc_loadWeakRetained(&self->_recentsDataStore);
    [WeakRetained setDisplayItems:self->_currentRecentDisplayItems];

    [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:0 notifyDelegate:1];
  }
}

- (void)_updateCurrentDisplayItemsAfterContinuityChange:(BOOL)change notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  changeCopy = change;
  selfCopy = self;
  v42 = *MEMORY[0x277D85DE8];
  currentDisplayItems = [(SBFloatingDockSuggestionsModel *)self currentDisplayItems];
  v6 = [(NSMutableOrderedSet *)selfCopy->_currentRecentDisplayItems mutableCopy];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  }

  requestedSuggestedApplication = [(SBFloatingDockSuggestionsModel *)selfCopy requestedSuggestedApplication];
  v8 = requestedSuggestedApplication;
  if (requestedSuggestedApplication)
  {
    bundleIdentifier = [requestedSuggestedApplication bundleIdentifier];
    v10 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:bundleIdentifier sceneIdentifier:0];

    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_8:
    bundleIdentifier2 = [v10 bundleIdentifier];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __97__SBFloatingDockSuggestionsModel__updateCurrentDisplayItemsAfterContinuityChange_notifyDelegate___block_invoke;
    v39[3] = &unk_2783AF600;
    v40 = bundleIdentifier2;
    v12 = bundleIdentifier2;
    v13 = [v6 indexesOfObjectsPassingTest:v39];
    [v6 removeObjectsAtIndexes:v13];
    [v6 addObject:v10];

    goto LABEL_9;
  }

  if (selfCopy->_currentAppSuggestion)
  {
    v10 = [(SBFloatingDockSuggestionsModel *)selfCopy _displayItemForAppSuggestion:?];
    if (v10)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v14 = [v6 count];
  maxSuggestions = selfCopy->_maxSuggestions;
  v16 = v14 - maxSuggestions;
  if (v14 > maxSuggestions)
  {
    [v6 removeObjectsInRange:{maxSuggestions - ((v8 | selfCopy->_currentAppSuggestion) != 0), v16}];
  }

  if (([v6 isEqualToOrderedSet:{currentDisplayItems, v16}] & 1) == 0)
  {
    if (delegateCopy)
    {
      v31 = v8;
      v17 = selfCopy;
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      v32 = v6;
      v19 = [v6 differenceFromOrderedSet:currentDisplayItems withOptions:4];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v35 + 1) + 8 * i);
            object = [v24 object];
            changeType = [v24 changeType];
            index = [v24 index];
            associatedIndex = [v24 associatedIndex];
            v29 = associatedIndex;
            if (changeType == 1)
            {
              if (associatedIndex == 0x7FFFFFFFFFFFFFFFLL)
              {
                [WeakRetained dockSuggestionsModel:v17 didRemoveItem:object atIndex:index involvesContinuity:changeCopy];
              }
            }

            else if (!changeType)
            {
              if (associatedIndex == 0x7FFFFFFFFFFFFFFFLL)
              {
                [WeakRetained dockSuggestionsModel:v17 didInsertItem:object atIndex:index involvesContinuity:changeCopy];
              }

              else
              {
                v30 = [currentDisplayItems objectAtIndex:associatedIndex];
                [WeakRetained dockSuggestionsModel:v17 didReplaceItem:v30 atIndex:v29 withItem:object atIndex:index involvesContinuity:changeCopy];
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v21);
      }

      selfCopy = v17;
      v8 = v31;
      v6 = v32;
    }

    [(SBFloatingDockSuggestionsModel *)selfCopy setCurrentDisplayItems:v6, v31];
  }
}

uint64_t __97__SBFloatingDockSuggestionsModel__updateCurrentDisplayItemsAfterContinuityChange_notifyDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)_displayItemContainedInUserDock:(id)dock
{
  dockCopy = dock;
  type = [dockCopy type];
  if (type == 5)
  {
    webClipIdentifier = [dockCopy webClipIdentifier];
    v8 = [(SBIconListModel *)self->_userDockListModel directlyContainsLeafIconWithIdentifier:webClipIdentifier];
  }

  else
  {
    if (type)
    {
      v8 = 0;
      goto LABEL_7;
    }

    webClipIdentifier = [dockCopy bundleIdentifier];
    v7 = [(SBIconListModel *)self->_userDockListModel lastDirectlyContainedLeafIconWithApplicationBundleIdentifier:webClipIdentifier];
    v8 = v7 != 0;
  }

LABEL_7:
  return v8;
}

- (id)_filterRecentDisplayItems:(id)items filteredOutItems:(id *)outItems
{
  v32 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v24 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if (outItems)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB40]);
    *outItems = v23;
  }

  else
  {
    v23 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    *&v9 = 138412290;
    v22 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = MEMORY[0x277CEBE80];
        bundleIdentifier = [v13 bundleIdentifier];
        v16 = [v14 applicationWithBundleIdentifier:bundleIdentifier];
        isHidden = [v16 isHidden];

        if (isHidden)
        {
          v18 = SBLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier2 = [v13 bundleIdentifier];
            *buf = v22;
            v30 = bundleIdentifier2;
            _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Removing %@ because it's hidden by AppProtection", buf, 0xCu);
          }
        }

        else
        {
          if ([(SBFloatingDockSuggestionsModel *)self _displayItemContainedInUserDock:v13])
          {
            v20 = v23;
LABEL_17:
            [v20 addObject:v13];
            continue;
          }

          if ([v24 count] < self->_maxSuggestions)
          {
            v20 = v24;
            goto LABEL_17;
          }

          if ([v24 count] >= self->_maxSuggestions)
          {
            goto LABEL_21;
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

LABEL_21:

  return v24;
}

- (BOOL)_shouldProcessAppSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = suggestionCopy;
  if (suggestionCopy && ([suggestionCopy bundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if ([v5 isHandoff])
    {
      if (self->_currentAppSuggestion)
      {
        uniqueIdentifier = [v5 uniqueIdentifier];
        uniqueIdentifier2 = [(SBBestAppSuggestion *)self->_currentAppSuggestion uniqueIdentifier];
        v9 = [uniqueIdentifier isEqual:uniqueIdentifier2] ^ 1;
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    userDockListModel = self->_userDockListModel;
    bundleIdentifier = [v5 bundleIdentifier];
    LOBYTE(userDockListModel) = [(SBIconListModel *)userDockListModel directlyContainsLeafIconWithIdentifier:bundleIdentifier];

    currentRecentDisplayItems = self->_currentRecentDisplayItems;
    v14 = [(SBFloatingDockSuggestionsModel *)self _displayItemForAppSuggestion:v5];
    displayItemForFloatingDockSuggestionsComparison = [v14 displayItemForFloatingDockSuggestionsComparison];
    LOBYTE(currentRecentDisplayItems) = [(NSMutableOrderedSet *)currentRecentDisplayItems sb_containsFloatingDockSuggestionDisplayItem:displayItemForFloatingDockSuggestionsComparison];

    v10 = v9 | (userDockListModel | currentRecentDisplayItems) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SBFloatingDockSuggestionsModel_appProtectionSubjectsChanged_forSubscription___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (unint64_t)_indexForAppSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems count];
  currentRecentDisplayItems = self->_currentRecentDisplayItems;
  if (v5 >= self->_maxSuggestions)
  {
    v8 = [(NSMutableOrderedSet *)currentRecentDisplayItems count]- 1;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)currentRecentDisplayItems sb_containsFloatingDockSuggestionDisplayItem:suggestionCopy];
    v8 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems count]- v7;
  }

  return v8;
}

- (void)_appSuggestionsChanged:(id)changed
{
  v11 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if ([(SBFloatingDockSuggestionsModel *)self _isPendingAppSuggestionsUpdate])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      pendingSuggestionUpdateReasons = self->_pendingSuggestionUpdateReasons;
      v9 = 138412290;
      v10 = pendingSuggestionUpdateReasons;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring app suggestions changed because %@", &v9, 0xCu);
    }
  }

  else
  {
    userInfo = [changedCopy userInfo];
    v8 = [userInfo objectForKey:@"SBNewSuggestedAppKey"];

    [(SBFloatingDockSuggestionsModel *)self _performAppSuggestionChangedWithNewSuggestion:v8];
  }
}

- (void)_performAppSuggestionChangedWithNewSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  BSDispatchQueueAssertMain();
  currentAppSuggestion = self->_currentAppSuggestion;
  self->_currentAppSuggestion = suggestionCopy;

  [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:1 notifyDelegate:1];
}

- (void)_initializeAndObserveDefaults
{
  objc_initWeak(&location, self);
  floatingDockDefaults = self->_floatingDockDefaults;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"recentsEnabled"];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __63__SBFloatingDockSuggestionsModel__initializeAndObserveDefaults__block_invoke;
  v11 = &unk_2783A8C68;
  objc_copyWeak(&v12, &location);
  v7 = [(SBFloatingDockDefaults *)floatingDockDefaults observeDefault:v4 onQueue:v5 withBlock:&v8];

  [(SBFloatingDockSuggestionsModel *)self _setRecentsEnabled:[(SBFloatingDockDefaults *)self->_floatingDockDefaults recentsEnabled:v8]];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __63__SBFloatingDockSuggestionsModel__initializeAndObserveDefaults__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setRecentsEnabled:{objc_msgSend(WeakRetained[15], "recentsEnabled")}];
    WeakRetained = v2;
  }
}

- (void)_setRecentsEnabled:(BOOL)enabled
{
  if (self->_recentsEnabled != enabled)
  {
    recentsController = [(SBFloatingDockSuggestionsModel *)self recentsController];
    v6 = recentsController;
    if (self->_recentsEnabled)
    {
      self->_recentsEnabled = 0;
      [recentsController setDelegate:0];
      [(SBFloatingDockSuggestionsModel *)self resetRecentsAndSuggestions];
    }

    else
    {
      self->_recentsEnabled = 1;
      [recentsController setDelegate:self];
      [(SBFloatingDockSuggestionsModel *)self _reloadRecentsAndSuggestions];
    }
  }
}

- (id)_displayItemForAppSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v4 = suggestionCopy;
  if (!suggestionCopy)
  {
    goto LABEL_5;
  }

  bundleIdentifier = [suggestionCopy bundleIdentifier];
  if (!bundleIdentifier)
  {
    goto LABEL_6;
  }

  uniqueIdentifier = [v4 uniqueIdentifier];

  if (uniqueIdentifier)
  {
    bundleIdentifier2 = [v4 bundleIdentifier];
    bundleIdentifier = [SBContinuityDisplayItem continuityAppDisplayItemWithBundleIdentifier:bundleIdentifier2 appSuggestion:v4];
  }

  else
  {
LABEL_5:
    bundleIdentifier = 0;
  }

LABEL_6:

  return bundleIdentifier;
}

- (void)_addStateCaptureHandlers
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v8[1] = MEMORY[0x277D85DD0];
  v8[2] = 3221225472;
  v8[3] = __58__SBFloatingDockSuggestionsModel__addStateCaptureHandlers__block_invoke;
  v8[4] = &unk_2783AB940;
  objc_copyWeak(&v9, &location);
  v4 = BSLogAddStateCaptureBlockWithTitle();

  v7[1] = MEMORY[0x277D85DD0];
  v7[2] = 3221225472;
  v7[3] = __58__SBFloatingDockSuggestionsModel__addStateCaptureHandlers__block_invoke_2;
  v7[4] = &unk_2783AB940;
  objc_copyWeak(v8, &location);
  v5 = BSLogAddStateCaptureBlockWithTitle();

  objc_copyWeak(v7, &location);
  v6 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(v7);
  objc_destroyWeak(v8);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

__CFString *__58__SBFloatingDockSuggestionsModel__addStateCaptureHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained[17] description];
  }

  else
  {
    v3 = &stru_283094718;
  }

  return v3;
}

__CFString *__58__SBFloatingDockSuggestionsModel__addStateCaptureHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  v3 = &stru_283094718;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] bundleIdentifier];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = &stru_283094718;
    }

    v3 = v6;
  }

  return v3;
}

id __58__SBFloatingDockSuggestionsModel__addStateCaptureHandlers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained currentDisplayItems];
  v3 = [v2 description];

  return v3;
}

- (void)resetRecentsAndSuggestions
{
  recentsController = [(SBFloatingDockSuggestionsModel *)self recentsController];
  [recentsController reset];
  [(SBFloatingDockSuggestionsModel *)self _reloadRecentsAndSuggestions];
}

- (void)_reloadRecentsAndSuggestions
{
  v23 = *MEMORY[0x277D85DE8];
  currentDisplayItems = [(SBFloatingDockSuggestionsModel *)self currentDisplayItems];
  if (self->_recentsEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_recentsController);
    recentDisplayItems = [WeakRetained recentDisplayItems];
    v6 = [(SBFloatingDockSuggestionsModel *)self _filterRecentDisplayItems:recentDisplayItems filteredOutItems:0];
    currentRecentDisplayItems = self->_currentRecentDisplayItems;
    self->_currentRecentDisplayItems = v6;

    v8 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{-[NSMutableOrderedSet count](self->_currentRecentDisplayItems, "count")}];
    currentRecentDisplayItemsSortedByRecency = self->_currentRecentDisplayItemsSortedByRecency;
    self->_currentRecentDisplayItemsSortedByRecency = v8;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = self->_currentRecentDisplayItems;
    v11 = [(NSMutableOrderedSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency addObject:*(*(&v18 + 1) + 8 * v14++), v18];
        }

        while (v12 != v14);
        v12 = [(NSMutableOrderedSet *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    currentAppSuggestion = self->_currentAppSuggestion;
    self->_currentAppSuggestion = 0;
  }

  else
  {
    [(NSMutableOrderedSet *)self->_currentRecentDisplayItems removeAllObjects];
    [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency removeAllObjects];
  }

  [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:0 notifyDelegate:0, v18];
  currentDisplayItems2 = [(SBFloatingDockSuggestionsModel *)self currentDisplayItems];
  v17 = objc_loadWeakRetained(&self->_delegate);
  [v17 dockSuggestionsModel:self didReloadItems:currentDisplayItems withItems:currentDisplayItems2];
}

- (id)_dockListModelFromContextProvider
{
  homeScreenContextProvider = [(SBFloatingDockSuggestionsModel *)self homeScreenContextProvider];
  iconModel = [homeScreenContextProvider iconModel];
  rootFolder = [iconModel rootFolder];
  dock = [rootFolder dock];

  return dock;
}

- (void)setUserDockListModel:(id)model
{
  modelCopy = model;
  userDockListModel = self->_userDockListModel;
  if (userDockListModel != modelCopy)
  {
    v7 = modelCopy;
    [(SBIconListModel *)userDockListModel removeListObserver:self];
    objc_storeStrong(&self->_userDockListModel, model);
    [(SBIconListModel *)self->_userDockListModel addListObserver:self];
    modelCopy = v7;
  }
}

- (void)_iconModelDidLayout:(id)layout
{
  _dockListModelFromContextProvider = [(SBFloatingDockSuggestionsModel *)self _dockListModelFromContextProvider];
  [(SBFloatingDockSuggestionsModel *)self setUserDockListModel:_dockListModelFromContextProvider];

  [(SBFloatingDockSuggestionsModel *)self _reloadRecentsAndSuggestions];
}

- (void)_iconModelDidChange:(id)change
{
  _dockListModelFromContextProvider = [(SBFloatingDockSuggestionsModel *)self _dockListModelFromContextProvider];
  if (self->_userDockListModel != _dockListModelFromContextProvider)
  {
    v10 = _dockListModelFromContextProvider;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D666F0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D666F0] object:self->_iconModel];
    homeScreenContextProvider = [(SBFloatingDockSuggestionsModel *)self homeScreenContextProvider];
    iconModel = [homeScreenContextProvider iconModel];
    iconModel = self->_iconModel;
    self->_iconModel = iconModel;

    [(SBFloatingDockSuggestionsModel *)self setUserDockListModel:v10];
    [defaultCenter addObserver:self selector:sel__iconModelDidLayout_ name:v6 object:self->_iconModel];
    [(SBFloatingDockSuggestionsModel *)self _reloadRecentsAndSuggestions];

    _dockListModelFromContextProvider = v10;
  }
}

- (void)_runStressTestWithCompletion:(id)completion
{
  completionCopy = completion;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v5 = MEMORY[0x277CBEBB8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SBFloatingDockSuggestionsModel__runStressTestWithCompletion___block_invoke;
  v8[3] = &unk_2783C4020;
  v10 = v13;
  v11 = v12;
  v8[4] = self;
  v6 = completionCopy;
  v9 = v6;
  v7 = [v5 scheduledTimerWithTimeInterval:1 repeats:v8 block:0.05];

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);
}

void __63__SBFloatingDockSuggestionsModel__runStressTestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = v5 + 1;
  v23 = v3;
  switch(v5)
  {
    case 0:
      v9 = *(a1 + 32);
      v10 = [SBDisplayItem alloc];
      v11 = SBMapsBundleIdentifier;
      goto LABEL_26;
    case 1:
      v9 = *(a1 + 32);
      v10 = [SBDisplayItem alloc];
      v11 = SBMusicBundleIdentifier;
      goto LABEL_26;
    case 2:
      v9 = *(a1 + 32);
      v10 = [SBDisplayItem alloc];
      v11 = SBMessagesBundleIdentifier;
      goto LABEL_26;
    case 3:
    case 4:
      v6 = *(a1 + 32);
      v7 = [SBDisplayItem alloc];
      v8 = SBMusicBundleIdentifier;
      goto LABEL_11;
    case 5:
      v16 = *(a1 + 32);
      v17 = [[SBDisplayItem alloc] initWithType:0 bundleIdentifier:@"com.apple.Maps" uniqueIdentifier:0];
      [v16 recentDisplayItemsController:0 didRemoveItem:v17];
      goto LABEL_29;
    case 6:
      v6 = *(a1 + 32);
      v7 = [SBDisplayItem alloc];
      v8 = SBMessagesBundleIdentifier;
LABEL_11:
      v18 = *v8;
      goto LABEL_21;
    case 7:
      v9 = *(a1 + 32);
      v10 = [SBDisplayItem alloc];
      v11 = SBNotesBundleIdentifier;
      goto LABEL_26;
    case 8:
      v12 = *(a1 + 32);
      v13 = [SBPPTFakeAppSuggestion alloc];
      v15 = SBNotesBundleIdentifier;
      goto LABEL_14;
    case 9:
      v12 = *(a1 + 32);
      v13 = [SBPPTFakeAppSuggestion alloc];
      v15 = SBMessagesBundleIdentifier;
      goto LABEL_14;
    case 10:
      v12 = *(a1 + 32);
      v13 = [SBPPTFakeAppSuggestion alloc];
      v15 = SBFilesBundleIdentifier;
LABEL_14:
      v14 = *v15;
      goto LABEL_15;
    case 11:
      v12 = *(a1 + 32);
      v13 = [SBPPTFakeAppSuggestion alloc];
      v14 = @"com.apple.not-found";
LABEL_15:
      v17 = [(SBPPTFakeAppSuggestion *)v13 initWithBundleIdentifier:v14];
      [v12 _performAppSuggestionChangedWithNewSuggestion:v17];
      goto LABEL_29;
    case 12:
      [*(a1 + 32) _performAppSuggestionChangedWithNewSuggestion:0];
      goto LABEL_30;
    case 13:
      v9 = *(a1 + 32);
      v10 = [SBDisplayItem alloc];
      v11 = SBFacetimeBundleIdentifier;
      goto LABEL_26;
    case 14:
    case 19:
      v9 = *(a1 + 32);
      v10 = [SBDisplayItem alloc];
      v11 = SBClockBundleIdentifier;
      goto LABEL_26;
    case 15:
      v9 = *(a1 + 32);
      v10 = [SBDisplayItem alloc];
      v11 = SBCalendarBundleIdentifier;
LABEL_26:
      v19 = *v11;
      goto LABEL_27;
    case 16:
      v9 = *(a1 + 32);
      v10 = [SBDisplayItem alloc];
      v19 = @"com.apple.not-found";
LABEL_27:
      v21 = 0;
      goto LABEL_28;
    case 17:
      v6 = *(a1 + 32);
      v7 = [SBDisplayItem alloc];
      v18 = @"com.apple.not-found";
LABEL_21:
      v17 = [(SBDisplayItem *)v7 initWithType:0 bundleIdentifier:v18 uniqueIdentifier:0];
      [v6 recentDisplayItemsController:0 didMoveItemToFront:v17];
      goto LABEL_29;
    case 18:
      v9 = *(a1 + 32);
      v10 = [SBDisplayItem alloc];
      v19 = @"com.apple.mobiletimer";
      v21 = @"scene";
LABEL_28:
      v17 = [(SBDisplayItem *)v10 initWithType:0 bundleIdentifier:v19 uniqueIdentifier:v21];
      [v9 _handleNewRecentItem:v17];
LABEL_29:

      goto LABEL_30;
    default:
      v20 = v3;
      if (++*(*(*(a1 + 56) + 8) + 24) > 9uLL)
      {
        [v3 invalidate];
        v20 = v23;
        v22 = *(a1 + 40);
        if (v22)
        {
          (*(v22 + 16))(v22, v23);
LABEL_30:
          v20 = v23;
        }
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }

      return;
  }
}

- (SBFloatingDockSuggestionsModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBRecentDisplayItemsController)recentsController
{
  WeakRetained = objc_loadWeakRetained(&self->_recentsController);

  return WeakRetained;
}

- (SBRecentDisplayItemsDataStore)recentsDataStore
{
  WeakRetained = objc_loadWeakRetained(&self->_recentsDataStore);

  return WeakRetained;
}

- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_homeScreenContextProvider);

  return WeakRetained;
}

- (void)persistedDisplayItemsForDataStore:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "failed to create display item from dock plist rep -- aborting loading of items. failed plist rep: %@", &v2, 0xCu);
}

- (void)_moveOrAddRecentThenCull:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFloatingDockSuggestionsModel.m" lineNumber:238 description:@"shouldn't be getting updates that are adding more than 1 item at a time"];
}

@end