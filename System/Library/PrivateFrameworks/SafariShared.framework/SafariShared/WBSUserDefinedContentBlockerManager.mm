@interface WBSUserDefinedContentBlockerManager
- (WBSUserDefinedContentBlockerManager)initWithDataStore:(id)store;
- (id)_identifierStringForContentBlocker:(id)blocker;
- (id)_rulesJsonForContentBlocker:(id)blocker;
- (void)_notifyDidUpdateAllRules;
- (void)_regenerateCachedGlobalContentBlockerActionsFromDatabase;
- (void)_setCachedGlobalContentBlockerActions:(id)actions;
- (void)addActions:(id)actions forContentBlocker:(id)blocker;
- (void)contentBlockerForHost:(id)host createIfNeeded:(BOOL)needed completionHandler:(id)handler;
- (void)deleteActions:(id)actions;
- (void)deleteActionsForContentBlocker:(id)blocker;
- (void)getAllContentBlockerActionsWithType:(id)type excludeHost:(id)host isGlobal:(BOOL)global completion:(id)completion;
- (void)getAllContentBlockerHostsWithCompletionHandler:(id)handler;
- (void)getGlobalContentBlockerWithCompletionHandler:(id)handler;
- (void)getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)handler;
- (void)globalContentBlockerWithCompletionHandler:(id)handler;
- (void)loadContentBlockerIfNeededForHost:(id)host loaderBlock:(id)block;
- (void)resetDatabaseWithCompletionHandler:(id)handler;
@end

@implementation WBSUserDefinedContentBlockerManager

- (WBSUserDefinedContentBlockerManager)initWithDataStore:(id)store
{
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = WBSUserDefinedContentBlockerManager;
  v6 = [(WBSUserDefinedContentBlockerManager *)&v16 init];
  if (v6)
  {
    objc_initWeak(&location, v6);
    objc_storeStrong(&v6->_dataStore, store);
    v7 = [MEMORY[0x1E695DFA8] set];
    hostsWithLoadedPerSiteContentBlockers = v6->_hostsWithLoadedPerSiteContentBlockers;
    v6->_hostsWithLoadedPerSiteContentBlockers = v7;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__WBSUserDefinedContentBlockerManager_initWithDataStore___block_invoke;
    v13[3] = &unk_1E7FC8B10;
    objc_copyWeak(&v14, &location);
    [(WBSUserDefinedContentBlockerManager *)v6 getNumberOfContentBlockersThatContainActionsWithCompletionHandler:v13];
    v11 = v6;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __57__WBSUserDefinedContentBlockerManager_initWithDataStore___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[41] = a2 != 0;
    if (a2)
    {
      v4 = WeakRetained;
      [WeakRetained _notifyDidUpdateAllRules];
      WeakRetained = v4;
    }
  }
}

- (id)_rulesJsonForContentBlocker:(id)blocker
{
  v40 = *MEMORY[0x1E69E9840];
  blockerCopy = blocker;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = blockerCopy;
  actions = [blockerCopy actions];
  v7 = [actions countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(actions);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        typeString = [v11 typeString];
        string = [dictionary objectForKeyedSubscript:typeString];

        if (string)
        {
          [string appendString:{@", "}];
        }

        else
        {
          string = [MEMORY[0x1E696AD60] string];
        }

        selector = [v11 selector];
        [string appendString:selector];

        typeString2 = [v11 typeString];
        [dictionary setObject:string forKeyedSubscript:typeString2];
      }

      v8 = [actions countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  v16 = [@"[" mutableCopy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [dictionary allKeys];
  v18 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    v21 = 1;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v30 + 1) + 8 * j);
        if ((v21 & 1) == 0)
        {
          [v16 appendString:{@", "}];
        }

        host = [v29 host];
        v25 = [dictionary objectForKeyedSubscript:v23];
        v26 = [(WBSUserDefinedContentBlockerManager *)self _jsonStringForActionType:v23 urlFilter:host selectors:v25];
        [v16 appendString:v26];

        v21 = 0;
      }

      v19 = [allKeys countByEnumeratingWithState:&v30 objects:v38 count:16];
      v21 = 0;
    }

    while (v19);
  }

  [v16 appendString:@"]"];
  v27 = [v16 copy];

  return v27;
}

- (id)_identifierStringForContentBlocker:(id)blocker
{
  blockerCopy = blocker;
  type = [blockerCopy type];
  v5 = MEMORY[0x1E696AEC0];
  if (type == 1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.UserGeneratedContentBlockers.%@", @"Global"];
  }

  else
  {
    host = [blockerCopy host];
    v6 = [v5 stringWithFormat:@"com.apple.Safari.UserGeneratedContentBlockers.%@", host];
  }

  return v6;
}

- (void)loadContentBlockerIfNeededForHost:(id)host loaderBlock:(id)block
{
  hostCopy = host;
  blockCopy = block;
  if (self->_hasContentBlockerWithActions && [hostCopy length] && (-[NSMutableSet containsObject:](self->_hostsWithLoadedPerSiteContentBlockers, "containsObject:", hostCopy) & 1) == 0)
  {
    [(NSMutableSet *)self->_hostsWithLoadedPerSiteContentBlockers addObject:hostCopy];
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __85__WBSUserDefinedContentBlockerManager_loadContentBlockerIfNeededForHost_loaderBlock___block_invoke;
    v8[3] = &unk_1E7FC8B60;
    objc_copyWeak(&v11, &location);
    v10 = blockCopy;
    v9 = hostCopy;
    [(WBSUserDefinedContentBlockerManager *)self contentBlockerForHost:v9 createIfNeeded:0 completionHandler:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __85__WBSUserDefinedContentBlockerManager_loadContentBlockerIfNeededForHost_loaderBlock___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__WBSUserDefinedContentBlockerManager_loadContentBlockerIfNeededForHost_loaderBlock___block_invoke_2;
  v5[3] = &unk_1E7FC8B38;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v8 = a1[5];
  v7 = a1[4];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __85__WBSUserDefinedContentBlockerManager_loadContentBlockerIfNeededForHost_loaderBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v6 = WeakRetained;
      v4 = [v3 databaseID];
      WeakRetained = v6;
      if (v4)
      {
        v5 = (*(*(a1 + 48) + 16))();
        WeakRetained = v6;
        if (v5 == 1)
        {
          [v6[2] removeObject:*(a1 + 40)];
          WeakRetained = v6;
        }
      }
    }
  }
}

- (void)contentBlockerForHost:(id)host createIfNeeded:(BOOL)needed completionHandler:(id)handler
{
  neededCopy = needed;
  hostCopy = host;
  handlerCopy = handler;
  if ([hostCopy length])
  {
    dataStore = self->_dataStore;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __94__WBSUserDefinedContentBlockerManager_contentBlockerForHost_createIfNeeded_completionHandler___block_invoke;
    v11[3] = &unk_1E7FC8B88;
    v12 = handlerCopy;
    [(WBSUserDefinedContentBlockerSQLiteStore *)dataStore getPerSiteContentBlockerForHost:hostCopy createIfNeeded:neededCopy completionHandler:v11];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __94__WBSUserDefinedContentBlockerManager_contentBlockerForHost_createIfNeeded_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __94__WBSUserDefinedContentBlockerManager_contentBlockerForHost_createIfNeeded_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7FB83F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)globalContentBlockerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dataStore = self->_dataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__WBSUserDefinedContentBlockerManager_globalContentBlockerWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FC8B88;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WBSUserDefinedContentBlockerSQLiteStore *)dataStore getGlobalContentBlockerWithCompletionHandler:v7];
}

void __81__WBSUserDefinedContentBlockerManager_globalContentBlockerWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__WBSUserDefinedContentBlockerManager_globalContentBlockerWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7FB83F8;
    v4 = &v8;
    v8 = *(a1 + 32);
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__WBSUserDefinedContentBlockerManager_globalContentBlockerWithCompletionHandler___block_invoke_cold_1();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __81__WBSUserDefinedContentBlockerManager_globalContentBlockerWithCompletionHandler___block_invoke_26;
    v9[3] = &unk_1E7FB7350;
    v4 = &v10;
    v10 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

- (void)getAllContentBlockerHostsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dataStore = self->_dataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__WBSUserDefinedContentBlockerManager_getAllContentBlockerHostsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB71F8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WBSUserDefinedContentBlockerSQLiteStore *)dataStore getAllContentBlockerHostsWithCompletionHandler:v7];
}

void __86__WBSUserDefinedContentBlockerManager_getAllContentBlockerHostsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__WBSUserDefinedContentBlockerManager_getAllContentBlockerHostsWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E7FB83F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)getNumberOfContentBlockersThatContainActionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dataStore = self->_dataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __105__WBSUserDefinedContentBlockerManager_getNumberOfContentBlockersThatContainActionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FC8BD8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WBSUserDefinedContentBlockerSQLiteStore *)dataStore getNumberOfContentBlockersThatContainActionsWithCompletionHandler:v7];
}

void __105__WBSUserDefinedContentBlockerManager_getNumberOfContentBlockersThatContainActionsWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __105__WBSUserDefinedContentBlockerManager_getNumberOfContentBlockersThatContainActionsWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_1E7FC8BB0;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)addActions:(id)actions forContentBlocker:(id)blocker
{
  actionsCopy = actions;
  blockerCopy = blocker;
  if ([blockerCopy databaseID])
  {
    if ([actionsCopy count])
    {
      -[WBSUserDefinedContentBlockerSQLiteStore insertActions:forContentBlockerID:](self->_dataStore, "insertActions:forContentBlockerID:", actionsCopy, [blockerCopy databaseID]);
      self->_hasContentBlockerWithActions = 1;
      if ([blockerCopy databaseID] == 1)
      {
        [(WBSUserDefinedContentBlockerManager *)self _regenerateCachedGlobalContentBlockerActionsFromDatabase];
      }
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSUserDefinedContentBlockerManager addActions:forContentBlocker:];
    }
  }
}

- (void)deleteActionsForContentBlocker:(id)blocker
{
  blockerCopy = blocker;
  if ([blockerCopy databaseID])
  {
    -[WBSUserDefinedContentBlockerSQLiteStore deleteActionsForContentBlockerID:](self->_dataStore, "deleteActionsForContentBlockerID:", [blockerCopy databaseID]);
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXUserDefinedContentBlocker();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WBSUserDefinedContentBlockerManager deleteActionsForContentBlocker:];
    }
  }
}

- (void)getAllContentBlockerActionsWithType:(id)type excludeHost:(id)host isGlobal:(BOOL)global completion:(id)completion
{
  globalCopy = global;
  completionCopy = completion;
  dataStore = self->_dataStore;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __107__WBSUserDefinedContentBlockerManager_getAllContentBlockerActionsWithType_excludeHost_isGlobal_completion___block_invoke;
  v13[3] = &unk_1E7FB71F8;
  v14 = completionCopy;
  v12 = completionCopy;
  [(WBSUserDefinedContentBlockerSQLiteStore *)dataStore getAllContentBlockerActionsWithType:type excludeHost:host isGlobal:globalCopy completion:v13];
}

void __107__WBSUserDefinedContentBlockerManager_getAllContentBlockerActionsWithType_excludeHost_isGlobal_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107__WBSUserDefinedContentBlockerManager_getAllContentBlockerActionsWithType_excludeHost_isGlobal_completion___block_invoke_2;
  v6[3] = &unk_1E7FB83F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_setCachedGlobalContentBlockerActions:(id)actions
{
  v4 = [actions copy];
  cachedGlobalContentBlockerActions = self->_cachedGlobalContentBlockerActions;
  self->_cachedGlobalContentBlockerActions = v4;

  self->_didLoadGlobalContentBlockerActions = 1;
}

- (void)_regenerateCachedGlobalContentBlockerActionsFromDatabase
{
  cachedGlobalContentBlockerActions = self->_cachedGlobalContentBlockerActions;
  self->_cachedGlobalContentBlockerActions = 0;

  self->_didLoadGlobalContentBlockerActions = 0;
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __95__WBSUserDefinedContentBlockerManager__regenerateCachedGlobalContentBlockerActionsFromDatabase__block_invoke;
  v4[3] = &unk_1E7FC8C00;
  objc_copyWeak(&v5, &location);
  [(WBSUserDefinedContentBlockerManager *)self getGlobalContentBlockerWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __95__WBSUserDefinedContentBlockerManager__regenerateCachedGlobalContentBlockerActionsFromDatabase__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

- (void)getGlobalContentBlockerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dataStore = self->_dataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__WBSUserDefinedContentBlockerManager_getGlobalContentBlockerWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FC8C28;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WBSUserDefinedContentBlockerSQLiteStore *)dataStore getGlobalContentBlockerWithCompletionHandler:v7];
}

void __84__WBSUserDefinedContentBlockerManager_getGlobalContentBlockerWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__WBSUserDefinedContentBlockerManager_getGlobalContentBlockerWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7FB6E08;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __84__WBSUserDefinedContentBlockerManager_getGlobalContentBlockerWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) actions];
  [v2 _setCachedGlobalContentBlockerActions:v3];

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)deleteActions:(id)actions
{
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    [(WBSUserDefinedContentBlockerSQLiteStore *)self->_dataStore deleteActions:actionsCopy];
    if ([actionsCopy safari_containsObjectPassingTest:&__block_literal_global_82])
    {
      [(WBSUserDefinedContentBlockerManager *)self _regenerateCachedGlobalContentBlockerActionsFromDatabase];
    }
  }
}

- (void)resetDatabaseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  dataStore = self->_dataStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__WBSUserDefinedContentBlockerManager_resetDatabaseWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FC8C98;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [(WBSUserDefinedContentBlockerSQLiteStore *)dataStore resetDatabaseWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __74__WBSUserDefinedContentBlockerManager_resetDatabaseWithCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WBSUserDefinedContentBlockerManager_resetDatabaseWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7FC8C70;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

void __74__WBSUserDefinedContentBlockerManager_resetDatabaseWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[2] removeAllObjects];
    v2 = WeakRetained[3];
    WeakRetained[3] = MEMORY[0x1E695E0F0];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_notifyDidUpdateAllRules
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v7++) userDefinedContentBlockerManagerDidUpdateAllRules:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end