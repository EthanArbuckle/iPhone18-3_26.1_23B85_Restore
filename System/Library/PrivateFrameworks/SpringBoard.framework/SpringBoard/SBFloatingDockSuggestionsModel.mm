@interface SBFloatingDockSuggestionsModel
- (BOOL)_displayItemContainedInUserDock:(id)a3;
- (BOOL)_shouldProcessAppSuggestion:(id)a3;
- (BOOL)dataStore:(id)a3 shouldRestorePersistedDisplayItem:(id)a4;
- (BOOL)recentDisplayItemsController:(id)a3 shouldAddItem:(id)a4;
- (BOOL)shouldAddItem:(id)a3;
- (SBFloatingDockHomeScreenContextProviding)homeScreenContextProvider;
- (SBFloatingDockSuggestionsModel)initWithMaximumNumberOfSuggestions:(unint64_t)a3 homeScreenContextProvider:(id)a4 recentsController:(id)a5 recentsDataStore:(id)a6 recentsDefaults:(id)a7 floatingDockDefaults:(id)a8 appSuggestionManager:(id)a9 applicationController:(id)a10;
- (SBFloatingDockSuggestionsModelDelegate)delegate;
- (SBRecentDisplayItemsController)recentsController;
- (SBRecentDisplayItemsDataStore)recentsDataStore;
- (id)_displayItemForAppSuggestion:(id)a3;
- (id)_dockListModelFromContextProvider;
- (id)_filterRecentDisplayItems:(id)a3 filteredOutItems:(id *)a4;
- (id)_moveOrAddRecentThenCull:(id)a3;
- (id)persistedDisplayItemsForDataStore:(id)a3;
- (unint64_t)_indexForAppSuggestion:(id)a3;
- (void)_addStateCaptureHandlers;
- (void)_appSuggestionsChanged:(id)a3;
- (void)_handleNewRecentItem:(id)a3;
- (void)_iconModelDidChange:(id)a3;
- (void)_iconModelDidLayout:(id)a3;
- (void)_initializeAndObserveDefaults;
- (void)_performAppSuggestionChangedWithNewSuggestion:(id)a3;
- (void)_reloadRecentsAndSuggestions;
- (void)_runStressTestWithCompletion:(id)a3;
- (void)_setRecentsEnabled:(BOOL)a3;
- (void)_updateCurrentDisplayItemsAfterContinuityChange:(BOOL)a3 notifyDelegate:(BOOL)a4;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)beginPendingUpdatesForReason:(id)a3;
- (void)dataStore:(id)a3 persistDisplayItems:(id)a4;
- (void)dealloc;
- (void)endPendingUpdatesForReason:(id)a3;
- (void)recentDisplayItemsController:(id)a3 didAddItem:(id)a4;
- (void)recentDisplayItemsController:(id)a3 didAddItem:(id)a4 andDropItem:(id)a5;
- (void)recentDisplayItemsController:(id)a3 didMoveItemToFront:(id)a4;
- (void)recentDisplayItemsController:(id)a3 didRemoveItem:(id)a4;
- (void)resetRecentsAndSuggestions;
- (void)setRequestedSuggestedApplication:(id)a3;
- (void)setUserDockListModel:(id)a3;
@end

@implementation SBFloatingDockSuggestionsModel

- (SBFloatingDockSuggestionsModel)initWithMaximumNumberOfSuggestions:(unint64_t)a3 homeScreenContextProvider:(id)a4 recentsController:(id)a5 recentsDataStore:(id)a6 recentsDefaults:(id)a7 floatingDockDefaults:(id)a8 appSuggestionManager:(id)a9 applicationController:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v41 = a7;
  v40 = a8;
  v39 = a9;
  v19 = a10;
  v44.receiver = self;
  v44.super_class = SBFloatingDockSuggestionsModel;
  v20 = [(SBFloatingDockSuggestionsModel *)&v44 init];
  v21 = v20;
  if (v20)
  {
    v20->_maxSuggestions = a3;
    objc_storeWeak(&v20->_recentsDataStore, v18);
    objc_storeWeak(&v21->_recentsController, v17);
    objc_storeStrong(&v21->_appSuggestionManager, a9);
    objc_storeWeak(&v21->_homeScreenContextProvider, v16);
    objc_storeStrong(&v21->_applicationController, a10);
    objc_storeStrong(&v21->_floatingDockDefaults, a8);
    [(SBFloatingDockSuggestionsModel *)v21 _setRecentsEnabled:[(SBFloatingDockDefaults *)v21->_floatingDockDefaults recentsEnabled:v39]];
    [v18 setPersistenceDelegate:v21];
    objc_storeStrong(&v21->_recentsDefaults, a7);
    v22 = [v18 displayItems];
    [v17 setRecentDisplayItems:v22];

    [(SBFloatingDockSuggestionsModel *)v21 _initializeAndObserveDefaults];
    v23 = objc_alloc_init(MEMORY[0x277CBEB40]);
    currentDisplayItems = v21->_currentDisplayItems;
    v21->_currentDisplayItems = v23;

    v25 = [(SBFloatingDockSuggestionsModel *)v21 _dockListModelFromContextProvider];
    [(SBFloatingDockSuggestionsModel *)v21 setUserDockListModel:v25];

    [(SBFloatingDockSuggestionsModel *)v21 _reloadRecentsAndSuggestions];
    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingSuggestionUpdateReasons = v21->_pendingSuggestionUpdateReasons;
    v21->_pendingSuggestionUpdateReasons = v26;

    [(SBFloatingDockSuggestionsModel *)v21 _addStateCaptureHandlers];
    v28 = [v16 iconModel];
    iconModel = v21->_iconModel;
    v21->_iconModel = v28;

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v21 selector:sel__appSuggestionsChanged_ name:@"SBSuggestedAppChangedNotification" object:v21->_appSuggestionManager];
    [v30 addObserver:v21 selector:sel__iconModelDidLayout_ name:*MEMORY[0x277D666F0] object:v21->_iconModel];
    [v30 addObserver:v21 selector:sel__iconModelDidChange_ name:SBIconControllerIconModelDidChangeNotification object:v16];
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
    v35 = [MEMORY[0x277CEBEB8] subjectMonitorRegistry];
    v36 = [v35 addMonitor:v32 subjectMask:1 subscriptionOptions:1];
    appProtectionSubscription = v32->_appProtectionSubscription;
    v32->_appProtectionSubscription = v36;
  }

  return v21;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(SBIconListModel *)self->_userDockListModel removeListObserver:self];
  [(APSubjectMonitorSubscription *)self->_appProtectionSubscription invalidate];
  v4.receiver = self;
  v4.super_class = SBFloatingDockSuggestionsModel;
  [(SBFloatingDockSuggestionsModel *)&v4 dealloc];
}

- (void)beginPendingUpdatesForReason:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableSet *)self->_pendingSuggestionUpdateReasons addObject:v4];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Beging pending app suggestions update because %@", &v6, 0xCu);
  }
}

- (void)endPendingUpdatesForReason:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBFloatingDockSuggestionsModel *)self _isPendingAppSuggestionsUpdate];
  [(NSMutableSet *)self->_pendingSuggestionUpdateReasons removeObject:v4];
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "End pending app suggestions update because %@", &v9, 0xCu);
  }

  v7 = [(SBFloatingDockSuggestionsModel *)self _isPendingAppSuggestionsUpdate];
  if (v5 && !v7)
  {
    v8 = [(SBAppSuggestionManager *)self->_appSuggestionManager currentSuggestedApp];
    [(SBFloatingDockSuggestionsModel *)self _performAppSuggestionChangedWithNewSuggestion:v8];
  }
}

- (void)setRequestedSuggestedApplication:(id)a3
{
  v5 = a3;
  if (self->_requestedSuggestedApplication != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_requestedSuggestedApplication, a3);
    [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:0 notifyDelegate:1];
    v5 = v6;
  }
}

- (void)dataStore:(id)a3 persistDisplayItems:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
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

        v12 = [*(*(&v13 + 1) + 8 * v11) plistRepresentation];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(SBRecentDisplayItemsDefaults *)self->_recentsDefaults setDockRecentsPlistRepresentation:v6];
}

- (id)persistedDisplayItemsForDataStore:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(SBRecentDisplayItemsDefaults *)self->_recentsDefaults dockRecentsPlistRepresentation];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v18 = v3;
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
          v14 = [(SBDisplayItem *)v12 bundleIdentifier];
          if (!v14 || ([v5 containsObject:v14] & 1) == 0)
          {
            v15 = SBLogCommon();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v24 = v13;
              _os_log_debug_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEBUG, "found persisted dock recent display item: %@", buf, 0xCu);
            }

            [v4 addObject:v13];
            [v5 addObject:v14];
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
      v3 = v18;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)dataStore:(id)a3 shouldRestorePersistedDisplayItem:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SBFloatingDockSuggestionsModel *)self homeScreenContextProvider];
  v7 = [v6 iconModel];
  if ([v5 type])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v5 bundleIdentifier];
    if (v9)
    {
      v10 = [v7 applicationIconForBundleIdentifier:v9];
      v11 = [v7 isIconVisible:v10];
      v12 = [(SBApplicationController *)self->_applicationController restrictionController];
      v13 = [v12 isApplicationIdentifierRestricted:v9];

      v8 = v11 & (v13 ^ 1);
      v14 = SBLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138413058;
        v17 = v5;
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

- (id)_moveOrAddRecentThenCull:(id)a3
{
  v5 = a3;
  v6 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency sb_indexOfFloatingDockSuggestionDisplayItem:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency removeObjectAtIndex:v6];
  }

  [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency insertObject:v5 atIndex:0];
  if (([(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency count]- self->_maxSuggestions) >= 2)
  {
    [(SBFloatingDockSuggestionsModel *)a2 _moveOrAddRecentThenCull:?];
  }

  if ([(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency count]<= self->_maxSuggestions)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency lastObject];
    [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency removeObject:v7];
  }

  return v7;
}

- (void)_handleNewRecentItem:(id)a3
{
  v14 = a3;
  v4 = [(SBFloatingDockSuggestionsModel *)self shouldAddItem:v14];
  if (v4)
  {
    v5 = [(SBFloatingDockSuggestionsModel *)self _moveOrAddRecentThenCull:v14];
    currentAppSuggestion = self->_currentAppSuggestion;
    if (v5)
    {
      if (!currentAppSuggestion || (v7 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_indexOfFloatingDockSuggestionDisplayItem:v5], [(SBFloatingDockSuggestionsModel *)self _displayItemForAppSuggestion:self->_currentAppSuggestion], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(SBFloatingDockSuggestionsModel *)self _indexForAppSuggestion:v8], v8, v7 != v9))
      {
        [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:[(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_indexOfFloatingDockSuggestionDisplayItem:v5] withObject:v14];
LABEL_12:
        WeakRetained = objc_loadWeakRetained(&self->_recentsDataStore);
        [WeakRetained setDisplayItems:self->_currentRecentDisplayItems];

        [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:0 notifyDelegate:1];
        goto LABEL_13;
      }

      v10 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency lastObject];
      v11 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems indexOfObject:v10];
      v12 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems indexOfObject:v5];
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:v11 withObject:v14];
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:v12 withObject:v10];
    }

    else
    {
      if (!currentAppSuggestion || [(NSMutableOrderedSet *)self->_currentRecentDisplayItems count]!= self->_maxSuggestions - 1)
      {
        [(NSMutableOrderedSet *)self->_currentRecentDisplayItems insertObject:v14 atIndex:0];
        goto LABEL_12;
      }

      v10 = [(SBFloatingDockSuggestionsModel *)self _oldestRecent];
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:[(NSMutableOrderedSet *)self->_currentRecentDisplayItems indexOfObject:v10] withObject:v14];
      [(NSMutableOrderedSet *)self->_currentRecentDisplayItems addObject:v10];
    }

    goto LABEL_12;
  }

LABEL_13:

  MEMORY[0x2821F9730](v4);
}

- (BOOL)shouldAddItem:(id)a3
{
  currentRecentDisplayItems = self->_currentRecentDisplayItems;
  v4 = a3;
  LODWORD(currentRecentDisplayItems) = [(NSMutableOrderedSet *)currentRecentDisplayItems sb_containsFloatingDockSuggestionDisplayItem:v4];
  v5 = MEMORY[0x277CEBE80];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 applicationWithBundleIdentifier:v6];
  LODWORD(v5) = [v7 isHidden];

  return ((v5 | currentRecentDisplayItems) & 1) == 0;
}

- (BOOL)recentDisplayItemsController:(id)a3 shouldAddItem:(id)a4
{
  v5 = a4;
  v6 = [(SBFloatingDockSuggestionsModel *)self _displayItemContainedInUserDock:v5];
  v7 = [v5 type];
  iconModel = self->_iconModel;
  if (v7 == 5)
  {
    v9 = [v5 webClipIdentifier];

    [(SBIconModel *)iconModel bookmarkIconForWebClipIdentifier:v9];
  }

  else
  {
    v9 = [v5 bundleIdentifier];

    [(SBIconModel *)iconModel applicationIconForBundleIdentifier:v9];
  }
  v10 = ;

  v11 = [(SBIconModel *)self->_iconModel isIconVisible:v10];
  return !v6 && v11;
}

- (void)recentDisplayItemsController:(id)a3 didAddItem:(id)a4
{
  v5 = a4;
  BSDispatchQueueAssertMain();
  [(SBFloatingDockSuggestionsModel *)self _handleNewRecentItem:v5];
}

- (void)recentDisplayItemsController:(id)a3 didAddItem:(id)a4 andDropItem:(id)a5
{
  v6 = a4;
  BSDispatchQueueAssertMain();
  [(SBFloatingDockSuggestionsModel *)self _handleNewRecentItem:v6];
}

- (void)recentDisplayItemsController:(id)a3 didMoveItemToFront:(id)a4
{
  v7 = a4;
  BSDispatchQueueAssertMain();
  if (![(SBFloatingDockSuggestionsModel *)self _displayItemContainedInUserDock:v7])
  {
    if (([(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_containsFloatingDockSuggestionDisplayItem:v7]& 1) != 0)
    {
      v5 = [(SBFloatingDockSuggestionsModel *)self _moveOrAddRecentThenCull:v7];
      if (v5)
      {
        [(NSMutableOrderedSet *)self->_currentRecentDisplayItems replaceObjectAtIndex:[(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_indexOfFloatingDockSuggestionDisplayItem:v5] withObject:v7];
        WeakRetained = objc_loadWeakRetained(&self->_recentsDataStore);
        [WeakRetained setDisplayItems:self->_currentRecentDisplayItems];

        [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:0 notifyDelegate:1];
      }
    }

    else
    {
      [(SBFloatingDockSuggestionsModel *)self _handleNewRecentItem:v7];
    }
  }
}

- (void)recentDisplayItemsController:(id)a3 didRemoveItem:(id)a4
{
  v13 = a4;
  BSDispatchQueueAssertMain();
  v5 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems sb_indexOfFloatingDockSuggestionDisplayItem:v13];
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

    [(NSMutableOrderedSet *)self->_currentRecentDisplayItemsSortedByRecency removeObject:v13];
    WeakRetained = objc_loadWeakRetained(&self->_recentsDataStore);
    [WeakRetained setDisplayItems:self->_currentRecentDisplayItems];

    [(SBFloatingDockSuggestionsModel *)self _updateCurrentDisplayItemsAfterContinuityChange:0 notifyDelegate:1];
  }
}

- (void)_updateCurrentDisplayItemsAfterContinuityChange:(BOOL)a3 notifyDelegate:(BOOL)a4
{
  v4 = a4;
  v34 = a3;
  v5 = self;
  v42 = *MEMORY[0x277D85DE8];
  v33 = [(SBFloatingDockSuggestionsModel *)self currentDisplayItems];
  v6 = [(NSMutableOrderedSet *)v5->_currentRecentDisplayItems mutableCopy];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  }

  v7 = [(SBFloatingDockSuggestionsModel *)v5 requestedSuggestedApplication];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 bundleIdentifier];
    v10 = [SBDisplayItem applicationDisplayItemWithBundleIdentifier:v9 sceneIdentifier:0];

    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_8:
    v11 = [v10 bundleIdentifier];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __97__SBFloatingDockSuggestionsModel__updateCurrentDisplayItemsAfterContinuityChange_notifyDelegate___block_invoke;
    v39[3] = &unk_2783AF600;
    v40 = v11;
    v12 = v11;
    v13 = [v6 indexesOfObjectsPassingTest:v39];
    [v6 removeObjectsAtIndexes:v13];
    [v6 addObject:v10];

    goto LABEL_9;
  }

  if (v5->_currentAppSuggestion)
  {
    v10 = [(SBFloatingDockSuggestionsModel *)v5 _displayItemForAppSuggestion:?];
    if (v10)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  v14 = [v6 count];
  maxSuggestions = v5->_maxSuggestions;
  v16 = v14 - maxSuggestions;
  if (v14 > maxSuggestions)
  {
    [v6 removeObjectsInRange:{maxSuggestions - ((v8 | v5->_currentAppSuggestion) != 0), v16}];
  }

  if (([v6 isEqualToOrderedSet:{v33, v16}] & 1) == 0)
  {
    if (v4)
    {
      v31 = v8;
      v17 = v5;
      WeakRetained = objc_loadWeakRetained(&v5->_delegate);
      v32 = v6;
      v19 = [v6 differenceFromOrderedSet:v33 withOptions:4];
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
            v25 = [v24 object];
            v26 = [v24 changeType];
            v27 = [v24 index];
            v28 = [v24 associatedIndex];
            v29 = v28;
            if (v26 == 1)
            {
              if (v28 == 0x7FFFFFFFFFFFFFFFLL)
              {
                [WeakRetained dockSuggestionsModel:v17 didRemoveItem:v25 atIndex:v27 involvesContinuity:v34];
              }
            }

            else if (!v26)
            {
              if (v28 == 0x7FFFFFFFFFFFFFFFLL)
              {
                [WeakRetained dockSuggestionsModel:v17 didInsertItem:v25 atIndex:v27 involvesContinuity:v34];
              }

              else
              {
                v30 = [v33 objectAtIndex:v28];
                [WeakRetained dockSuggestionsModel:v17 didReplaceItem:v30 atIndex:v29 withItem:v25 atIndex:v27 involvesContinuity:v34];
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v21);
      }

      v5 = v17;
      v8 = v31;
      v6 = v32;
    }

    [(SBFloatingDockSuggestionsModel *)v5 setCurrentDisplayItems:v6, v31];
  }
}

uint64_t __97__SBFloatingDockSuggestionsModel__updateCurrentDisplayItemsAfterContinuityChange_notifyDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)_displayItemContainedInUserDock:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 5)
  {
    v6 = [v4 webClipIdentifier];
    v8 = [(SBIconListModel *)self->_userDockListModel directlyContainsLeafIconWithIdentifier:v6];
  }

  else
  {
    if (v5)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v6 = [v4 bundleIdentifier];
    v7 = [(SBIconListModel *)self->_userDockListModel lastDirectlyContainedLeafIconWithApplicationBundleIdentifier:v6];
    v8 = v7 != 0;
  }

LABEL_7:
  return v8;
}

- (id)_filterRecentDisplayItems:(id)a3 filteredOutItems:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if (a4)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB40]);
    *a4 = v23;
  }

  else
  {
    v23 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v6;
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
        v15 = [v13 bundleIdentifier];
        v16 = [v14 applicationWithBundleIdentifier:v15];
        v17 = [v16 isHidden];

        if (v17)
        {
          v18 = SBLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v13 bundleIdentifier];
            *buf = v22;
            v30 = v19;
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

- (BOOL)_shouldProcessAppSuggestion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 bundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    if ([v5 isHandoff])
    {
      if (self->_currentAppSuggestion)
      {
        v7 = [v5 uniqueIdentifier];
        v8 = [(SBBestAppSuggestion *)self->_currentAppSuggestion uniqueIdentifier];
        v9 = [v7 isEqual:v8] ^ 1;
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
    v12 = [v5 bundleIdentifier];
    LOBYTE(userDockListModel) = [(SBIconListModel *)userDockListModel directlyContainsLeafIconWithIdentifier:v12];

    currentRecentDisplayItems = self->_currentRecentDisplayItems;
    v14 = [(SBFloatingDockSuggestionsModel *)self _displayItemForAppSuggestion:v5];
    v15 = [v14 displayItemForFloatingDockSuggestionsComparison];
    LOBYTE(currentRecentDisplayItems) = [(NSMutableOrderedSet *)currentRecentDisplayItems sb_containsFloatingDockSuggestionDisplayItem:v15];

    v10 = v9 | (userDockListModel | currentRecentDisplayItems) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SBFloatingDockSuggestionsModel_appProtectionSubjectsChanged_forSubscription___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (unint64_t)_indexForAppSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems count];
  currentRecentDisplayItems = self->_currentRecentDisplayItems;
  if (v5 >= self->_maxSuggestions)
  {
    v8 = [(NSMutableOrderedSet *)currentRecentDisplayItems count]- 1;
  }

  else
  {
    v7 = [(NSMutableOrderedSet *)currentRecentDisplayItems sb_containsFloatingDockSuggestionDisplayItem:v4];
    v8 = [(NSMutableOrderedSet *)self->_currentRecentDisplayItems count]- v7;
  }

  return v8;
}

- (void)_appSuggestionsChanged:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:@"SBNewSuggestedAppKey"];

    [(SBFloatingDockSuggestionsModel *)self _performAppSuggestionChangedWithNewSuggestion:v8];
  }
}

- (void)_performAppSuggestionChangedWithNewSuggestion:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  currentAppSuggestion = self->_currentAppSuggestion;
  self->_currentAppSuggestion = v4;

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

- (void)_setRecentsEnabled:(BOOL)a3
{
  if (self->_recentsEnabled != a3)
  {
    v5 = [(SBFloatingDockSuggestionsModel *)self recentsController];
    v6 = v5;
    if (self->_recentsEnabled)
    {
      self->_recentsEnabled = 0;
      [v5 setDelegate:0];
      [(SBFloatingDockSuggestionsModel *)self resetRecentsAndSuggestions];
    }

    else
    {
      self->_recentsEnabled = 1;
      [v5 setDelegate:self];
      [(SBFloatingDockSuggestionsModel *)self _reloadRecentsAndSuggestions];
    }
  }
}

- (id)_displayItemForAppSuggestion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [v3 bundleIdentifier];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 uniqueIdentifier];

  if (v6)
  {
    v7 = [v4 bundleIdentifier];
    v5 = [SBContinuityDisplayItem continuityAppDisplayItemWithBundleIdentifier:v7 appSuggestion:v4];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_6:

  return v5;
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
  v3 = [(SBFloatingDockSuggestionsModel *)self recentsController];
  [v3 reset];
  [(SBFloatingDockSuggestionsModel *)self _reloadRecentsAndSuggestions];
}

- (void)_reloadRecentsAndSuggestions
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(SBFloatingDockSuggestionsModel *)self currentDisplayItems];
  if (self->_recentsEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_recentsController);
    v5 = [WeakRetained recentDisplayItems];
    v6 = [(SBFloatingDockSuggestionsModel *)self _filterRecentDisplayItems:v5 filteredOutItems:0];
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
  v16 = [(SBFloatingDockSuggestionsModel *)self currentDisplayItems];
  v17 = objc_loadWeakRetained(&self->_delegate);
  [v17 dockSuggestionsModel:self didReloadItems:v3 withItems:v16];
}

- (id)_dockListModelFromContextProvider
{
  v2 = [(SBFloatingDockSuggestionsModel *)self homeScreenContextProvider];
  v3 = [v2 iconModel];
  v4 = [v3 rootFolder];
  v5 = [v4 dock];

  return v5;
}

- (void)setUserDockListModel:(id)a3
{
  v5 = a3;
  userDockListModel = self->_userDockListModel;
  if (userDockListModel != v5)
  {
    v7 = v5;
    [(SBIconListModel *)userDockListModel removeListObserver:self];
    objc_storeStrong(&self->_userDockListModel, a3);
    [(SBIconListModel *)self->_userDockListModel addListObserver:self];
    v5 = v7;
  }
}

- (void)_iconModelDidLayout:(id)a3
{
  v4 = [(SBFloatingDockSuggestionsModel *)self _dockListModelFromContextProvider];
  [(SBFloatingDockSuggestionsModel *)self setUserDockListModel:v4];

  [(SBFloatingDockSuggestionsModel *)self _reloadRecentsAndSuggestions];
}

- (void)_iconModelDidChange:(id)a3
{
  v4 = [(SBFloatingDockSuggestionsModel *)self _dockListModelFromContextProvider];
  if (self->_userDockListModel != v4)
  {
    v10 = v4;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D666F0];
    [v5 removeObserver:self name:*MEMORY[0x277D666F0] object:self->_iconModel];
    v7 = [(SBFloatingDockSuggestionsModel *)self homeScreenContextProvider];
    v8 = [v7 iconModel];
    iconModel = self->_iconModel;
    self->_iconModel = v8;

    [(SBFloatingDockSuggestionsModel *)self setUserDockListModel:v10];
    [v5 addObserver:self selector:sel__iconModelDidLayout_ name:v6 object:self->_iconModel];
    [(SBFloatingDockSuggestionsModel *)self _reloadRecentsAndSuggestions];

    v4 = v10;
  }
}

- (void)_runStressTestWithCompletion:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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