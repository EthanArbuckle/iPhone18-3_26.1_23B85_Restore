@interface WBSHistorySessionController
+ (id)sharedSessionController;
- (BOOL)_getKey:(id *)a3 forDate:(double)a4;
- (NSArray)orderedSessions;
- (WBSHistorySessionController)initWithHistory:(id)a3;
- (id)_orderedSessionKeys;
- (id)itemLastVisitedInSession:(id)a3 atIndex:(unint64_t)a4;
- (id)itemsLastVisitedInSession:(id)a3;
- (id)sessionForItem:(id)a3;
- (unint64_t)_insertItem:(id)a3 withSessionKey:(id)a4;
- (unint64_t)numberOfItemsVisitedInSession:(id)a3;
- (unint64_t)numberOfSessions;
- (void)_addItemsToSessionCache:(id)a3 shouldPostChangeNotification:(BOOL)a4;
- (void)_clearSessionCache;
- (void)_dispatchHistorySessionsDidChangeNotification;
- (void)_historyItemsWereAdded:(id)a3;
- (void)_historyItemsWereRemoved:(id)a3;
- (void)_historyWasClearedWithInterval:(id)a3;
- (void)_historyWasSignificantlyChanged:(id)a3;
- (void)_loadSessionCache;
- (void)_removeItemsFromSessionCache:(id)a3;
- (void)_requestSessionKeyForDate:(id)a3 withBlock:(id)a4;
- (void)_timeZoneDidChange:(id)a3;
- (void)enumerateOrderedItemsLastVisitedInSession:(id)a3 usingBlock:(id)a4;
- (void)orderedItemsNewerThanDate:(id)a3 maxCount:(unint64_t)a4 completionHandler:(id)a5;
- (void)orderedSessionsWithCompletionHandler:(id)a3;
@end

@implementation WBSHistorySessionController

+ (id)sharedSessionController
{
  if (+[WBSHistorySessionController sharedSessionController]::onceToken != -1)
  {
    +[WBSHistorySessionController sharedSessionController];
  }

  v3 = +[WBSHistorySessionController sharedSessionController]::shared;

  return v3;
}

void __54__WBSHistorySessionController_sharedSessionController__block_invoke()
{
  v0 = [WBSHistorySessionController alloc];
  v3 = +[WBSHistory existingSharedHistory];
  v1 = [(WBSHistorySessionController *)v0 initWithHistory:?];
  v2 = +[WBSHistorySessionController sharedSessionController]::shared;
  +[WBSHistorySessionController sharedSessionController]::shared = v1;
}

- (WBSHistorySessionController)initWithHistory:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v41.receiver = self;
  v41.super_class = WBSHistorySessionController;
  v6 = [(WBSHistorySessionController *)&v41 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_history, a3);
    v8 = dispatch_queue_create("com.apple.SafariShared.WBSHistorySessionController.sessionCacheAccess", 0);
    sessionCacheAccessQueue = v7->_sessionCacheAccessQueue;
    v7->_sessionCacheAccessQueue = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    itemsBySession = v7->_itemsBySession;
    v7->_itemsBySession = v10;

    v12 = objc_alloc_init(WBSHistorySessionIntervalCache);
    intervalCache = v7->_intervalCache;
    v7->_intervalCache = v12;

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v46[0] = @"WBSHistoryItemsWereAddedNotification";
    v46[1] = @"WBSHistoryItemDidChangeNotification";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v16)
    {
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [v14 addObserver:v7 selector:sel__historyItemsWereAdded_ name:*(*(&v37 + 1) + 8 * i) object:v5];
        }

        v16 = [v15 countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v16);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v44[0] = @"WBSHistoryItemsWereRemovedNotification";
    v44[1] = @"WBSHistoryItemWillChangeNotification";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v20)
    {
      v21 = *v34;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [v14 addObserver:v7 selector:sel__historyItemsWereRemoved_ name:*(*(&v33 + 1) + 8 * j) object:v5];
        }

        v20 = [v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v20);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v42[0] = @"WBSHistoryWasLoadedNotification";
    v42[1] = @"WBSHistoryWasClearedNotification";
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:{2, 0}];
    v24 = [v23 countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v24)
    {
      v25 = *v30;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v23);
          }

          [v14 addObserver:v7 selector:sel__historyWasSignificantlyChanged_ name:*(*(&v29 + 1) + 8 * k) object:v5];
        }

        v24 = [v23 countByEnumeratingWithState:&v29 objects:v43 count:16];
      }

      while (v24);
    }

    [v14 addObserver:v7 selector:sel__historyWasClearedWithInterval_ name:@"WBSHistoryWasClearedWithIntervalNotification" object:v5];
    [v14 addObserver:v7 selector:sel__timeZoneDidChange_ name:*MEMORY[0x1E695DA68] object:0];
    [(WBSHistorySessionController *)v7 _loadSessionCache];
    v27 = v7;
  }

  return v7;
}

- (void)enumerateOrderedItemsLastVisitedInSession:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__WBSHistorySessionController_enumerateOrderedItemsLastVisitedInSession_usingBlock___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(sessionCacheAccessQueue, block);
}

void __84__WBSHistorySessionController_enumerateOrderedItemsLastVisitedInSession_usingBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) startDate];
  [v3 timeIntervalSinceReferenceDate];
  v4 = [v2 _getKey:&v14 forDate:?];
  v5 = v14;

  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{v5, 0}];
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(a1 + 48) + 16))();
          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)orderedItemsNewerThanDate:(id)a3 maxCount:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  [v8 timeIntervalSinceReferenceDate];
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__WBSHistorySessionController_orderedItemsNewerThanDate_maxCount_completionHandler___block_invoke;
  v13[3] = &unk_1E7FC7538;
  v15 = v11;
  v13[4] = self;
  v14 = v9;
  v16 = a4;
  v12 = v9;
  dispatch_async(sessionCacheAccessQueue, v13);
}

void __84__WBSHistorySessionController_orderedItemsNewerThanDate_maxCount_completionHandler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v16 = [*(a1 + 32) _orderedSessionKeys];
  v2 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v16;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v24;
    v15 = *v24;
    do
    {
      v7 = 0;
      v17 = v4;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{v8, v15}];
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = *v20;
          while (2)
          {
            v12 = 0;
            v18 = v5 + v10;
            do
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v19 + 1) + 8 * v12);
              [v13 lastVisitedTimeInterval];
              if (v14 < *(a1 + 48) || v5 == *(a1 + 56))
              {
                (*(*(a1 + 40) + 16))();

                goto LABEL_19;
              }

              [v2 addObject:v13];
              ++v5;
              ++v12;
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
            v5 = v18;
            v6 = v15;
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        ++v7;
      }

      while (v7 != v17);
      v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 40) + 16))();
LABEL_19:
}

- (id)itemLastVisitedInSession:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__26;
  v19 = __Block_byref_object_dispose__26;
  v20 = 0;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__WBSHistorySessionController_itemLastVisitedInSession_atIndex___block_invoke;
  v11[3] = &unk_1E7FC80D8;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(sessionCacheAccessQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __64__WBSHistorySessionController_itemLastVisitedInSession_atIndex___block_invoke(uint64_t a1)
{
  v10 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) startDate];
  [v3 timeIntervalSinceReferenceDate];
  v4 = [v2 _getKey:&v10 forDate:?];
  v5 = v10;

  if (v4)
  {
    v6 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
    if ([v6 count] <= *(a1 + 56))
    {
      v7 = 0;
    }

    else
    {
      v7 = [v6 objectAtIndexedSubscript:?];
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (unint64_t)numberOfSessions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__WBSHistorySessionController_numberOfSessions__block_invoke;
  v5[3] = &unk_1E7FB8798;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sessionCacheAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __47__WBSHistorySessionController_numberOfSessions__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)numberOfItemsVisitedInSession:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WBSHistorySessionController_numberOfItemsVisitedInSession___block_invoke;
  block[3] = &unk_1E7FC6870;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(sessionCacheAccessQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __61__WBSHistorySessionController_numberOfItemsVisitedInSession___block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) startDate];
  [v3 timeIntervalSinceReferenceDate];
  LOBYTE(v2) = [v2 _getKey:&v6 forDate:?];
  v4 = v6;

  if (v2)
  {
    v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v4];
    *(*(*(a1 + 48) + 8) + 24) = [v5 count];
  }
}

- (id)itemsLastVisitedInSession:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26;
  v16 = __Block_byref_object_dispose__26;
  v17 = 0;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__WBSHistorySessionController_itemsLastVisitedInSession___block_invoke;
  block[3] = &unk_1E7FC6870;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(sessionCacheAccessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__WBSHistorySessionController_itemsLastVisitedInSession___block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) startDate];
  [v3 timeIntervalSinceReferenceDate];
  LOBYTE(v2) = [v2 _getKey:&v9 forDate:?];
  v4 = v9;

  if (v2)
  {
    v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v4];
    v6 = [v5 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (NSArray)orderedSessions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__WBSHistorySessionController_orderedSessions__block_invoke;
  v5[3] = &unk_1E7FB8798;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sessionCacheAccessQueue, v5);
  v3 = [v7[5] safari_mapObjectsUsingBlock:&__block_literal_global_27_2];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__WBSHistorySessionController_orderedSessions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _orderedSessionKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

WBSHistorySession *__46__WBSHistorySessionController_orderedSessions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WBSHistorySession alloc];
  v4 = MEMORY[0x1E695DF00];
  [v2 doubleValue];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v6 = [(WBSHistorySession *)v3 initWithSessionStartDate:v5];

  return v6;
}

- (void)orderedSessionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__WBSHistorySessionController_orderedSessionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(sessionCacheAccessQueue, v7);
}

void __68__WBSHistorySessionController_orderedSessionsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _orderedSessionKeys];
  v3 = [v2 safari_mapObjectsUsingBlock:&__block_literal_global_31];

  (*(*(a1 + 40) + 16))();
}

WBSHistorySession *__68__WBSHistorySessionController_orderedSessionsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WBSHistorySession alloc];
  v4 = MEMORY[0x1E695DF00];
  [v2 doubleValue];
  v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  v6 = [(WBSHistorySession *)v3 initWithSessionStartDate:v5];

  return v6;
}

- (id)sessionForItem:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__26;
  v16 = __Block_byref_object_dispose__26;
  v17 = 0;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__WBSHistorySessionController_sessionForItem___block_invoke;
  block[3] = &unk_1E7FC6870;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(sessionCacheAccessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__WBSHistorySessionController_sessionForItem___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  [*(a1 + 40) lastVisitedTimeInterval];
  [v2 beginningOfSessionContainingTime:?];
  v4 = v3;
  v5 = [WBSHistorySession alloc];
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v4];
  v6 = [(WBSHistorySession *)v5 initWithSessionStartDate:?];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)_orderedSessionKeys
{
  if (![(NSArray *)self->_orderedSessions count]&& [(NSMutableDictionary *)self->_itemsBySession count])
  {
    v3 = [(NSMutableDictionary *)self->_itemsBySession allKeys];
    v4 = [v3 sortedArrayUsingSelector:sel_compare_];
    v5 = [v4 reverseObjectEnumerator];
    v6 = [v5 allObjects];
    orderedSessions = self->_orderedSessions;
    self->_orderedSessions = v6;
  }

  v8 = self->_orderedSessions;

  return v8;
}

- (BOOL)_getKey:(id *)a3 forDate:(double)a4
{
  v6 = MEMORY[0x1E696AD98];
  [(WBSHistorySessionIntervalCache *)self->_intervalCache beginningOfSessionContainingTime:a4];
  v7 = [v6 numberWithDouble:?];
  *a3 = v7;
  v8 = [(NSMutableDictionary *)self->_itemsBySession objectForKey:v7];
  LOBYTE(a3) = v8 != 0;

  return a3;
}

- (void)_requestSessionKeyForDate:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSHistorySessionController__requestSessionKeyForDate_withBlock___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(sessionCacheAccessQueue, block);
}

void __67__WBSHistorySessionController__requestSessionKeyForDate_withBlock___block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = *(a1 + 32);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  LOBYTE(v2) = [v2 _getKey:&v4 forDate:?];
  v3 = v4;
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (unint64_t)_insertItem:(id)a3 withSessionKey:(id)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_itemsBySession objectForKeyedSubscript:a4];
  if (v7)
  {
    [v6 lastVisitedTimeInterval];
    v9 = v8;
    v10 = [v7 count];
    if (v10 && ([v7 objectAtIndexedSubscript:0], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "lastVisitedTimeInterval"), v13 = v12, v11, v13 >= v9))
    {
      v15 = [v7 lastObject];
      [v15 lastVisitedTimeInterval];
      v17 = v16;

      if (v17 >= v9)
      {
        [v7 addObject:v6];
        v14 = [v7 count] - 1;
      }

      else
      {
        LODWORD(v14) = 0;
        do
        {
          v18 = v14 + ((v10 - v14) >> 1);
          v19 = [v7 objectAtIndexedSubscript:v18];
          [v19 lastVisitedTimeInterval];
          v21 = v20;

          if (v21 >= v9)
          {
            v14 = v18 + 1;
          }

          else
          {
            v14 = v14;
          }

          if (v21 < v9)
          {
            v10 = v18;
          }
        }

        while (v14 < v10);
        [v7 insertObject:v6 atIndex:v14];
      }
    }

    else
    {
      [v7 insertObject:v6 atIndex:0];
      v14 = 0;
    }
  }

  else
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

- (void)_addItemsToSessionCache:(id)a3 shouldPostChangeNotification:(BOOL)a4
{
  v6 = a3;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__WBSHistorySessionController__addItemsToSessionCache_shouldPostChangeNotification___block_invoke;
  block[3] = &unk_1E7FB76A8;
  v12 = a4;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_async(sessionCacheAccessQueue, block);
}

void __84__WBSHistorySessionController__addItemsToSessionCache_shouldPostChangeNotification___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  }

  else
  {
    v2 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        if (shouldDisplayItem(v7))
        {
          [(WBSHistoryItem *)v7 lastVisitedTimeInterval];
          v8 = *(a1 + 40);
          v24 = 0;
          v9 = [v8 _getKey:&v24 forDate:?];
          v10 = v24;
          if (v9)
          {
            v11 = [*(a1 + 40) _insertItem:v7 withSessionKey:v10];
          }

          else
          {
            v12 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
            [*(*(a1 + 40) + 16) setObject:v12 forKeyedSubscript:v10];

            v13 = *(a1 + 40);
            v14 = *(v13 + 24);
            *(v13 + 24) = 0;

            v11 = 0;
          }

          if (*(a1 + 48) == 1)
          {
            v15 = [WBSHistorySession alloc];
            v16 = MEMORY[0x1E695DF00];
            [v10 doubleValue];
            v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
            v18 = [(WBSHistorySession *)v15 initWithSessionStartDate:v17];

            v19 = [v2 objectForKey:v18];
            v20 = v19;
            if (v19)
            {
              [v19 addIndex:v11];
            }

            else
            {
              v21 = [MEMORY[0x1E696AD50] indexSetWithIndex:v11];
              [v2 setObject:v21 forKey:v18];
            }
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  if ([v2 count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__WBSHistorySessionController__addItemsToSessionCache_shouldPostChangeNotification___block_invoke_2;
    block[3] = &unk_1E7FB7F10;
    block[4] = *(a1 + 40);
    v23 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __84__WBSHistorySessionController__addItemsToSessionCache_shouldPostChangeNotification___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"WBSHistorySessionsWithAddedItems";
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"WBSHistorySessionsDidChangeNotification" object:v4 userInfo:v5];
}

- (void)_removeItemsFromSessionCache:(id)a3
{
  v4 = a3;
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__WBSHistorySessionController__removeItemsFromSessionCache___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(sessionCacheAccessQueue, v7);
}

void __60__WBSHistorySessionController__removeItemsFromSessionCache___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *v2;
  v3 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v3)
  {
    v26 = *v38;
    *&v4 = 138740227;
    v23 = v4;
    do
    {
      v27 = v3;
      for (i = 0; i != v27; ++i)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        [(WBSHistoryItem *)v6 lastVisitedTimeInterval];
        v7 = *(a1 + 40);
        v36 = 0;
        [v7 _getKey:&v36 forDate:?];
        v28 = v36;
        v8 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:?];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 indexOfObjectIdenticalTo:v6];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_20:
            v21 = [v9 objectAtIndexedSubscript:v10];
            [v25 addObject:v21];

            [v9 removeObjectAtIndex:v10];
            if ([v9 count])
            {
              goto LABEL_23;
            }

            [*(*(a1 + 40) + 16) removeObjectForKey:v28];
            v22 = *(a1 + 40);
            v17 = *(v22 + 24);
            *(v22 + 24) = 0;
            goto LABEL_22;
          }
        }

        v35 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        v11 = *(*(a1 + 40) + 16);
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v45 count:16];
        if (v12)
        {
          v13 = *v33;
          while (2)
          {
            v14 = 0;
            v15 = v9;
            do
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * v14);
              v9 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:v16];

              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v31[2] = __60__WBSHistorySessionController__removeItemsFromSessionCache___block_invoke_2;
              v31[3] = &unk_1E7FC8120;
              v31[4] = v6;
              v10 = [v9 indexOfObjectPassingTest:v31];
              if (v10 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v20 = v16;

                v28 = v20;
                goto LABEL_20;
              }

              ++v14;
              v15 = v9;
            }

            while (v12 != v14);
            v12 = [v11 countByEnumeratingWithState:&v32 objects:v45 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        if (shouldDisplayItem(v6))
        {
          v17 = WBS_LOG_CHANNEL_PREFIXHistory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [(WBSHistoryItem *)v6 urlString];
            v19 = *(a1 + 40);
            *buf = v23;
            v42 = v18;
            v43 = 2112;
            v44 = v19;
            _os_log_impl(&dword_1BB6F3000, v17, OS_LOG_TYPE_INFO, "Item %{sensitive}@ was removed, but couldn't find it in %@", buf, 0x16u);
          }

LABEL_22:
        }

LABEL_23:
      }

      v3 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v3);
  }

  if ([v25 count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__WBSHistorySessionController__removeItemsFromSessionCache___block_invoke_39;
    block[3] = &unk_1E7FB7F10;
    block[4] = *(a1 + 40);
    v30 = v25;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __60__WBSHistorySessionController__removeItemsFromSessionCache___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 urlString];
  v4 = [*(a1 + 32) urlString];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __60__WBSHistorySessionController__removeItemsFromSessionCache___block_invoke_39(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"WBSHistorySessionsRemovedItems";
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"WBSHistorySessionsDidChangeNotification" object:v4 userInfo:v5];
}

- (void)_clearSessionCache
{
  sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WBSHistorySessionController__clearSessionCache__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(sessionCacheAccessQueue, block);
}

void __49__WBSHistorySessionController__clearSessionCache__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)_loadSessionCache
{
  v3 = [(WBSHistory *)self->_history allItems];
  [WBSHistorySessionController _addItemsToSessionCache:"_addItemsToSessionCache:shouldPostChangeNotification:" shouldPostChangeNotification:?];
}

- (void)_dispatchHistorySessionsDidChangeNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"WBSHistorySessionsDidChangeNotification" object:self];
}

- (void)_historyItemsWereAdded:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 safari_arrayForKey:@"WBSHistoryItemsKey"];

  if ([v5 count])
  {
    [(WBSHistorySessionController *)self _addItemsToSessionCache:v5 shouldPostChangeNotification:1];
  }
}

- (void)_historyWasClearedWithInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 safari_dateForKey:@"WBSHistoryClearStartDateKey"];

  v7 = [v4 userInfo];
  v8 = [v7 safari_dateForKey:@"WBSHistoryClearEndDateKey"];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    intervalCache = self->_intervalCache;
    [v6 timeIntervalSinceReferenceDate];
    [(WBSHistorySessionIntervalCache *)intervalCache beginningOfSessionContainingTime:?];
    v12 = v11;
    v13 = self->_intervalCache;
    [v8 timeIntervalSinceReferenceDate];
    [(WBSHistorySessionIntervalCache *)v13 beginningOfSessionContainingTime:?];
    sessionCacheAccessQueue = self->_sessionCacheAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__WBSHistorySessionController__historyWasClearedWithInterval___block_invoke;
    block[3] = &unk_1E7FC8190;
    block[4] = self;
    v19 = v12;
    v20 = v15;
    v17 = v6;
    v18 = v8;
    dispatch_async(sessionCacheAccessQueue, block);
  }
}

void __62__WBSHistorySessionController__historyWasClearedWithInterval___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__WBSHistorySessionController__historyWasClearedWithInterval___block_invoke_2;
  v19[3] = &__block_descriptor_48_e41_B32__0__NSNumber_8__NSMutableArray_16_B24l;
  v20 = *(a1 + 56);
  [v2 keysOfEntriesPassingTest:v19];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v7];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __62__WBSHistorySessionController__historyWasClearedWithInterval___block_invoke_3;
        v12[3] = &unk_1E7FC8168;
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        [v8 safari_removeObjectsPassingTest:v12];
        if (![v8 count])
        {
          [*(*(a1 + 32) + 16) removeObjectForKey:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  *(v9 + 24) = 0;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSHistorySessionController__historyWasClearedWithInterval___block_invoke_4;
  block[3] = &unk_1E7FB6F80;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

BOOL __62__WBSHistorySessionController__historyWasClearedWithInterval___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 lastVisitedTimeInterval];
  v5 = v4;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v5 >= v6)
  {
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    v7 = v5 <= v8;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_historyWasSignificantlyChanged:(id)a3
{
  [(WBSHistorySessionController *)self _clearSessionCache];
  [(WBSHistorySessionController *)self _loadSessionCache];

  [(WBSHistorySessionController *)self _dispatchHistorySessionsDidChangeNotification];
}

- (void)_historyItemsWereRemoved:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 safari_arrayForKey:@"WBSHistoryItemsKey"];
    if ([v5 count])
    {
      [(WBSHistorySessionController *)self _removeItemsFromSessionCache:v5];
    }

    v4 = v6;
  }
}

- (void)_timeZoneDidChange:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSHistorySessionController__timeZoneDidChange___block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(v4, block);
}

void __50__WBSHistorySessionController__timeZoneDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSHistorySessionController__timeZoneDidChange___block_invoke_2;
  block[3] = &unk_1E7FB6F80;
  block[4] = v2;
  dispatch_sync(v3, block);
  [*(a1 + 32) _clearSessionCache];
  [*(a1 + 32) _loadSessionCache];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__WBSHistorySessionController__timeZoneDidChange___block_invoke_3;
  v4[3] = &unk_1E7FB6F80;
  v4[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __50__WBSHistorySessionController__timeZoneDidChange___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(WBSHistorySessionIntervalCache);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

@end