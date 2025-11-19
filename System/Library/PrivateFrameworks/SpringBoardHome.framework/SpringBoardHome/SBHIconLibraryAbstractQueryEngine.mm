@interface SBHIconLibraryAbstractQueryEngine
+ (id)_leafIdentifiersForBundleIdentifier:(id)a3;
- (APSubjectMonitorSubscription)appPrototectionSubjectMonitorSubscription;
- (BOOL)isShutdown;
- (SBHIconLibraryAbstractQueryEngine)initWithIconModel:(id)a3;
- (void)_addItemsWithBundleIdentifiers:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5;
- (void)_iconModelNeedsIconAdded:(id)a3;
- (void)_iconModelNeedsIconRemoved:(id)a3;
- (void)_iconModelNeedsIconReplaced:(id)a3;
- (void)_iconModelVisibilityDidChange:(id)a3;
- (void)_mapBundleIdentifiersToIcons:(id)a3 completion:(id)a4;
- (void)_processingQueue_addIcons:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5;
- (void)_processingQueue_noteQueryResultsWereUpdated:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5;
- (void)_processingQueue_observerDispatchError:(id)a3 forQuery:(id)a4;
- (void)_processingQueue_observerDispatchQueryResultsWereUpdated:(id)a3;
- (void)_processingQueue_removeItemsWithBundleIdentifiers:(id)a3;
- (void)_processingQueue_removeItemsWithBundleIdentifiers:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5;
- (void)_processingQueue_teardownQueryContext:(id)a3 removeContext:(BOOL)a4;
- (void)_setupNotifications;
- (void)_teardownNotifications;
- (void)addObserver:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)shutdown;
@end

@implementation SBHIconLibraryAbstractQueryEngine

- (SBHIconLibraryAbstractQueryEngine)initWithIconModel:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = SBHIconLibraryAbstractQueryEngine;
  v6 = [(SBHIconLibraryAbstractQueryEngine *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconModel, a3);
    [(SBHIconLibraryAbstractQueryEngine *)v7 _setupNotifications];
    v8 = [MEMORY[0x1E696AC70] hashTableWithOptions:0];
    executingQueryContexts = v7->_executingQueryContexts;
    v7->_executingQueryContexts = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [@"com.apple.processingQueue." stringByAppendingString:v11];
    [v12 UTF8String];
    v13 = BSDispatchQueueCreateWithQualityOfService();
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v13;

    v15 = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
    v16 = [v15 addMonitor:v7 subjectMask:1 subscriptionOptions:1];
    objc_storeWeak(&v7->_appPrototectionSubjectMonitorSubscription, v16);
  }

  return v7;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_appPrototectionSubjectMonitorSubscription);
  [WeakRetained invalidate];

  v4.receiver = self;
  v4.super_class = SBHIconLibraryAbstractQueryEngine;
  [(SBHIconLibraryAbstractQueryEngine *)&v4 dealloc];
}

- (void)_setupNotifications
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SBHIconLibraryAbstractQueryEngine__setupNotifications__block_invoke;
  block[3] = &unk_1E8088C90;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__SBHIconLibraryAbstractQueryEngine__setupNotifications__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  [v4 addObserver:v2 selector:sel__iconModelNeedsIconAdded_ name:@"SBIconModelDidAddIconNotification" object:v3];
  [v4 addObserver:*(a1 + 32) selector:sel__iconModelNeedsIconReplaced_ name:@"SBIconModelDidReplaceIconNotification" object:v3];
  [v4 addObserver:*(a1 + 32) selector:sel__iconModelNeedsIconRemoved_ name:@"SBIconModelWillRemoveIconNotification" object:v3];
  [v4 addObserver:*(a1 + 32) selector:sel__iconModelVisibilityDidChange_ name:@"SBIconModelVisibilityDidChangeNotification" object:v3];
}

- (void)_teardownNotifications
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SBHIconLibraryAbstractQueryEngine__teardownNotifications__block_invoke;
  block[3] = &unk_1E8088C90;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__SBHIconLibraryAbstractQueryEngine__teardownNotifications__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SBHIconLibraryAbstractQueryEngine_addObserver___block_invoke;
  block[3] = &unk_1E808C628;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(processingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__SBHIconLibraryAbstractQueryEngine_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[4];
    if (!v3)
    {
      v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v5 = v6[4];
      v6[4] = v4;

      v3 = v6[4];
    }

    [v3 addObject:*(a1 + 32)];
    WeakRetained = v6;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SBHIconLibraryAbstractQueryEngine_removeObserver___block_invoke;
  block[3] = &unk_1E808C628;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(processingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__SBHIconLibraryAbstractQueryEngine_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[4] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)shutdown
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __45__SBHIconLibraryAbstractQueryEngine_shutdown__block_invoke;
  v7 = &unk_1E808C278;
  objc_copyWeak(&v8, &location);
  dispatch_async(processingQueue, &v4);
  [(SBHIconLibraryAbstractQueryEngine *)self _teardownNotifications:v4];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __45__SBHIconLibraryAbstractQueryEngine_shutdown__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[4];
    WeakRetained[4] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
    *(v3 + 40) = 1;
  }
}

- (BOOL)isShutdown
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SBHIconLibraryAbstractQueryEngine_isShutdown__block_invoke;
  v5[3] = &unk_1E8088FD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_processingQueue_observerDispatchQueryResultsWereUpdated:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) engine:self queryResultsWereUpdated:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_processingQueue_observerDispatchError:(id)a3 forQuery:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) engine:self failedToExecuteQuery:v7 withError:v6];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_addItemsWithBundleIdentifiers:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __107__SBHIconLibraryAbstractQueryEngine__addItemsWithBundleIdentifiers_iconLibraryQueryContext_notifyDelegate___block_invoke;
    v10[3] = &unk_1E8090C70;
    objc_copyWeak(&v12, &location);
    v11 = v9;
    v13 = a5;
    [(SBHIconLibraryAbstractQueryEngine *)self _mapBundleIdentifiersToIcons:v8 completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __107__SBHIconLibraryAbstractQueryEngine__addItemsWithBundleIdentifiers_iconLibraryQueryContext_notifyDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __107__SBHIconLibraryAbstractQueryEngine__addItemsWithBundleIdentifiers_iconLibraryQueryContext_notifyDelegate___block_invoke_2;
    v7[3] = &unk_1E8090C48;
    objc_copyWeak(&v10, (a1 + 40));
    v8 = v3;
    v9 = *(a1 + 32);
    v11 = *(a1 + 48);
    dispatch_async(v6, v7);

    objc_destroyWeak(&v10);
  }
}

void __107__SBHIconLibraryAbstractQueryEngine__addItemsWithBundleIdentifiers_iconLibraryQueryContext_notifyDelegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _processingQueue_addIcons:*(a1 + 32) iconLibraryQueryContext:*(a1 + 40) notifyDelegate:*(a1 + 56)];
    WeakRetained = v3;
  }
}

- (void)_processingQueue_addIcons:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v18 = a4;
  v8 = a3;
  v9 = [v18 objectForKeyedSubscript:@"kLastQueryResultKey"];
  v10 = [v9 icons];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  [v14 unionSet:v8];
  if (([v10 isEqualToSet:v14] & 1) == 0)
  {
    v15 = [(SBHIconLibraryAbstractQueryEngine *)self _processingQueue_sortComperatorForQueryContext:v18];
    v16 = [v18 query];
    v17 = [[SBHIconLibraryQueryResult alloc] initWithQuery:v16 icons:v14 sortComparator:v15];
    [(SBHIconLibraryAbstractQueryEngine *)self _processingQueue_noteQueryResultsWereUpdated:v17 iconLibraryQueryContext:v18 notifyDelegate:v5];
  }
}

- (void)_processingQueue_noteQueryResultsWereUpdated:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [a4 setObject:? forKeyedSubscript:?];
  if (v5)
  {
    [(SBHIconLibraryAbstractQueryEngine *)self _processingQueue_observerDispatchQueryResultsWereUpdated:v8];
  }
}

- (void)_processingQueue_removeItemsWithBundleIdentifiers:(id)a3 iconLibraryQueryContext:(id)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v10 = [v8 objectForKeyedSubscript:@"kLastQueryResultKey"];
  v11 = [v10 icons];
  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;

  v16 = MEMORY[0x1E696AE18];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __126__SBHIconLibraryAbstractQueryEngine__processingQueue_removeItemsWithBundleIdentifiers_iconLibraryQueryContext_notifyDelegate___block_invoke;
  v22[3] = &unk_1E8090C98;
  v17 = v9;
  v23 = v17;
  v18 = [v16 predicateWithBlock:v22];
  [v15 filterUsingPredicate:v18];

  if (([v11 isEqualToSet:v15] & 1) == 0)
  {
    v19 = [(SBHIconLibraryAbstractQueryEngine *)self _processingQueue_sortComperatorForQueryContext:v8];
    v20 = [v8 query];
    v21 = [[SBHIconLibraryQueryResult alloc] initWithQuery:v20 icons:v15 sortComparator:v19];
    [(SBHIconLibraryAbstractQueryEngine *)self _processingQueue_noteQueryResultsWereUpdated:v21 iconLibraryQueryContext:v8 notifyDelegate:v5];
  }
}

uint64_t __126__SBHIconLibraryAbstractQueryEngine__processingQueue_removeItemsWithBundleIdentifiers_iconLibraryQueryContext_notifyDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 leafIdentifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

+ (id)_leafIdentifiersForBundleIdentifier:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a3;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v7 count:1];

  return v5;
}

- (void)_mapBundleIdentifiersToIcons:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__SBHIconLibraryAbstractQueryEngine__mapBundleIdentifiersToIcons_completion___block_invoke;
  v10[3] = &unk_1E8090CC0;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __77__SBHIconLibraryAbstractQueryEngine__mapBundleIdentifiersToIcons_completion___block_invoke(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = a1[4];
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(WeakRetained + 2) leafIconForIdentifier:*(*(&v18 + 1) + 8 * i)];
          if ([*(WeakRetained + 2) isIconVisible:v9] && _SBIconIsLeafIconAndNotWidgetIcon(v9))
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v10 = *(WeakRetained + 6);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__SBHIconLibraryAbstractQueryEngine__mapBundleIdentifiersToIcons_completion___block_invoke_2;
    v15[3] = &unk_1E80898D8;
    v11 = a1[5];
    v16 = v3;
    v17 = v11;
    v12 = v3;
    dispatch_async(v10, v15);
  }

  else
  {
    v13 = a1[5];
    v14 = [MEMORY[0x1E695DFD8] set];
    v13[2](v13, v14);
  }
}

- (void)_processingQueue_teardownQueryContext:(id)a3 removeContext:(BOOL)a4
{
  if (a4)
  {
    [(NSHashTable *)self->_executingQueryContexts removeObject:a3];
  }
}

- (void)_iconModelNeedsIconAdded:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SBHIconLibraryAbstractQueryEngine__iconModelNeedsIconAdded___block_invoke;
  block[3] = &unk_1E808C628;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(processingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__SBHIconLibraryAbstractQueryEngine__iconModelNeedsIconAdded___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    if ([v4 count])
    {
      v5 = [*(a1 + 32) userInfo];
      v6 = [v5 objectForKey:@"icon"];

      if (v6 && _SBIconIsLeafIconAndNotWidgetIcon(v6))
      {
        v7 = objc_opt_class();
        v20 = v6;
        v8 = [v6 leafIdentifier];
        v23 = [v7 _leafIdentifiersForBundleIdentifier:v8];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        obj = [v4 allObjects];
        v9 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v22 = *v29;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v29 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v28 + 1) + 8 * i);
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v13 = v23;
              v14 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v25;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v25 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v24 + 1) + 8 * j);
                    if ([v3 _processingQueue_isBundleIdentifierValid:v18 iconLibraryQueryContext:v12])
                    {
                      v32 = v18;
                      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
                      [v3 _addItemsWithBundleIdentifiers:v19 iconLibraryQueryContext:v12 notifyDelegate:1];
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
                }

                while (v15);
              }
            }

            v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
          }

          while (v10);
        }

        v6 = v20;
      }
    }
  }
}

- (void)_iconModelNeedsIconReplaced:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SBHIconLibraryAbstractQueryEngine__iconModelNeedsIconReplaced___block_invoke;
  block[3] = &unk_1E808C628;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(processingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__SBHIconLibraryAbstractQueryEngine__iconModelNeedsIconReplaced___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    if ([v4 count])
    {
      v5 = [*(a1 + 32) userInfo];
      v6 = [v5 objectForKey:@"icon"];

      if (v6 && _SBIconIsLeafIconAndNotWidgetIcon(v6))
      {
        v7 = objc_opt_class();
        v8 = [v6 leafIdentifier];
        v18 = [v7 _leafIdentifiersForBundleIdentifier:v8];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        obj = [v4 allObjects];
        v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v19)
        {
          v17 = *v26;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v25 + 1) + 8 * i);
              [v3 _processingQueue_removeItemsWithBundleIdentifiers:v18 iconLibraryQueryContext:v10 notifyDelegate:0];
              v23 = 0u;
              v24 = 0u;
              v21 = 0u;
              v22 = 0u;
              v11 = v18;
              v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v22;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v22 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    if ([v3 _processingQueue_isBundleIdentifierValid:*(*(&v21 + 1) + 8 * j) iconLibraryQueryContext:v10])
                    {
                      v20[0] = MEMORY[0x1E69E9820];
                      v20[1] = 3221225472;
                      v20[2] = __65__SBHIconLibraryAbstractQueryEngine__iconModelNeedsIconReplaced___block_invoke_2;
                      v20[3] = &unk_1E8090CE8;
                      v20[4] = v3;
                      v20[5] = v10;
                      [v3 _mapBundleIdentifiersToIcons:v11 completion:v20];
                    }
                  }

                  v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
                }

                while (v13);
              }
            }

            v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v19);
        }
      }
    }
  }
}

- (void)_iconModelNeedsIconRemoved:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SBHIconLibraryAbstractQueryEngine__iconModelNeedsIconRemoved___block_invoke;
  block[3] = &unk_1E808C628;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(processingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__SBHIconLibraryAbstractQueryEngine__iconModelNeedsIconRemoved___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) userInfo];
    v4 = [v3 objectForKey:@"icon"];

    if (v4 && _SBIconIsLeafIconAndNotWidgetIcon(v4))
    {
      v5 = [v4 leafIdentifier];
      v7[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      [WeakRetained _processingQueue_removeItemsWithBundleIdentifiers:v6];
    }
  }
}

- (void)_iconModelVisibilityDidChange:(id)a3
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__SBHIconLibraryAbstractQueryEngine__iconModelVisibilityDidChange___block_invoke;
  v5[3] = &unk_1E808C278;
  objc_copyWeak(&v6, &location);
  dispatch_async(processingQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__SBHIconLibraryAbstractQueryEngine__iconModelVisibilityDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 allObjects];
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
          [v2 _processingQueue_teardownQueryContext:v9 removeContext:1];
          v10 = [v9 query];
          [v2 executeQuery:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = objc_opt_class();
        v14 = v12;
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        v17 = [v16 bundleIdentifier];
        [v6 addObject:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__SBHIconLibraryAbstractQueryEngine_appProtectionSubjectsChanged_forSubscription___block_invoke;
  block[3] = &unk_1E808C628;
  objc_copyWeak(&v22, &location);
  v21 = v6;
  v19 = v6;
  dispatch_async(processingQueue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __82__SBHIconLibraryAbstractQueryEngine_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _processingQueue_removeItemsWithBundleIdentifiers:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_processingQueue_removeItemsWithBundleIdentifiers:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_executingQueryContexts;
  if ([(NSHashTable *)v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [objc_opt_class() _leafIdentifiersForBundleIdentifier:*(*(&v22 + 1) + 8 * v11)];
          [v6 addObjectsFromArray:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [(NSHashTable *)v5 allObjects];
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(SBHIconLibraryAbstractQueryEngine *)self _processingQueue_removeItemsWithBundleIdentifiers:v6 iconLibraryQueryContext:*(*(&v18 + 1) + 8 * v17++) notifyDelegate:1];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v15);
    }
  }
}

- (APSubjectMonitorSubscription)appPrototectionSubjectMonitorSubscription
{
  WeakRetained = objc_loadWeakRetained(&self->_appPrototectionSubjectMonitorSubscription);

  return WeakRetained;
}

@end