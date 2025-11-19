@interface WBSFrequentlyVisitedSitesBannedURLStore
- (BOOL)containsURLString:(id)a3;
- (WBSFrequentlyVisitedSitesBannedURLStore)initWithStoreURL:(id)a3 history:(id)a4;
- (id)_bannedURLStringsToEntriesMap;
- (id)urlStrings;
- (void)_historyItemsWereRemoved:(id)a3;
- (void)addURLString:(id)a3;
- (void)dealloc;
- (void)removeAllURLStrings;
- (void)removeURLStrings:(id)a3;
@end

@implementation WBSFrequentlyVisitedSitesBannedURLStore

- (id)urlStrings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__15;
  v10 = __Block_byref_object_dispose__15;
  v11 = 0;
  storeQueue = self->_storeQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__WBSFrequentlyVisitedSitesBannedURLStore_urlStrings__block_invoke;
  v5[3] = &unk_1E7FB8798;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(storeQueue, v5);
  v3 = [MEMORY[0x1E695DFD8] setWithArray:v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__WBSFrequentlyVisitedSitesBannedURLStore_urlStrings__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _bannedURLStringsToEntriesMap];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_bannedURLStringsToEntriesMap
{
  v30 = *MEMORY[0x1E69E9840];
  bannedURLStringsToEntriesMap = self->_bannedURLStringsToEntriesMap;
  if (bannedURLStringsToEntriesMap)
  {
    v3 = bannedURLStringsToEntriesMap;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = self->_bannedURLStringsToEntriesMap;
    self->_bannedURLStringsToEntriesMap = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:self->_storeURL];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"BannedURLStrings"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        obj = [v8 objectForKeyedSubscript:@"BannedURLStrings"];
        v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          v12 = *v26;
          while (2)
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v25 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_26;
              }

              v15 = [v14 objectForKeyedSubscript:@"URLString"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_25;
              }

              v16 = [v14 objectForKeyedSubscript:@"DateAdded"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

LABEL_25:
LABEL_26:
                v23 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
                {
                  [(WBSFrequentlyVisitedSitesBannedURLStore *)v23 _bannedURLStringsToEntriesMap];
                }

                v3 = self->_bannedURLStringsToEntriesMap;

                goto LABEL_20;
              }

              v17 = [v14 allKeys];
              v18 = [v17 count] == 2;

              if (!v18)
              {
                goto LABEL_26;
              }

              v19 = self->_bannedURLStringsToEntriesMap;
              v20 = [v14 objectForKeyedSubscript:@"URLString"];
              [(NSMutableDictionary *)v19 setObject:v14 forKeyedSubscript:v20];
            }

            v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v21 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(WBSFrequentlyVisitedSitesBannedURLStore *)v21 _bannedURLStringsToEntriesMap];
        }
      }
    }

    v3 = self->_bannedURLStringsToEntriesMap;
LABEL_20:
  }

  return v3;
}

- (WBSFrequentlyVisitedSitesBannedURLStore)initWithStoreURL:(id)a3 history:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = WBSFrequentlyVisitedSitesBannedURLStore;
  v9 = [(WBSFrequentlyVisitedSitesBannedURLStore *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeURL, a3);
    v11 = dispatch_queue_create("com.apple.SafariShared.FrequentlyVisitedSitesBannedURLStore", 0);
    storeQueue = v10->_storeQueue;
    v10->_storeQueue = v11;

    if (v8)
    {
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 addObserver:v10 selector:sel__historyWasCleared_ name:@"WBSHistoryWasClearedNotification" object:v8];
      [v13 addObserver:v10 selector:sel__historyItemsWereRemoved_ name:@"WBSHistoryItemsWereRemovedNotification" object:v8];
    }

    v14 = v10;
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WBSFrequentlyVisitedSitesBannedURLStore;
  [(WBSFrequentlyVisitedSitesBannedURLStore *)&v4 dealloc];
}

- (BOOL)containsURLString:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_canonicalURLStringForFrequentlyVisitedSites];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  storeQueue = self->_storeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WBSFrequentlyVisitedSitesBannedURLStore_containsURLString___block_invoke;
  block[3] = &unk_1E7FC4D50;
  v10 = v5;
  v11 = &v12;
  block[4] = self;
  v7 = v5;
  dispatch_sync(storeQueue, block);
  LOBYTE(storeQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return storeQueue;
}

void __61__WBSFrequentlyVisitedSitesBannedURLStore_containsURLString___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _bannedURLStringsToEntriesMap];
  v2 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

- (void)addURLString:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_canonicalURLStringForFrequentlyVisitedSites];
  storeQueue = self->_storeQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __56__WBSFrequentlyVisitedSitesBannedURLStore_addURLString___block_invoke;
  v11 = &unk_1E7FB7F10;
  v12 = self;
  v13 = v5;
  v7 = v5;
  dispatch_async(storeQueue, &v8);
  [(WBSFrequentlyVisitedSitesBannedURLStore *)self _writeOutBannedURLStringsAsynchronously:v8];
}

void __56__WBSFrequentlyVisitedSitesBannedURLStore_addURLString___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v6[0] = @"URLString";
  v6[1] = @"DateAdded";
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF00] date];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v5 = [*(a1 + 32) _bannedURLStringsToEntriesMap];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];
}

- (void)removeURLStrings:(id)a3
{
  v4 = a3;
  storeQueue = self->_storeQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __60__WBSFrequentlyVisitedSitesBannedURLStore_removeURLStrings___block_invoke;
  v10 = &unk_1E7FB7F10;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_async(storeQueue, &v7);
  [(WBSFrequentlyVisitedSitesBannedURLStore *)self _writeOutBannedURLStringsAsynchronously:v7];
}

void __60__WBSFrequentlyVisitedSitesBannedURLStore_removeURLStrings___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _bannedURLStringsToEntriesMap];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) safari_canonicalURLStringForFrequentlyVisitedSites];
        [v2 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)removeAllURLStrings
{
  storeQueue = self->_storeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSFrequentlyVisitedSitesBannedURLStore_removeAllURLStrings__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_async(storeQueue, block);
  [(WBSFrequentlyVisitedSitesBannedURLStore *)self _writeOutBannedURLStringsAsynchronously];
}

void __62__WBSFrequentlyVisitedSitesBannedURLStore_removeAllURLStrings__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _bannedURLStringsToEntriesMap];
  [v1 removeAllObjects];
}

- (void)_historyItemsWereRemoved:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKeyedSubscript:@"WBSHistoryItemsKey"];

  v5 = [v6 safari_mapObjectsUsingBlock:&__block_literal_global_55];
  [(WBSFrequentlyVisitedSitesBannedURLStore *)self removeURLStrings:v5];
}

id __68__WBSFrequentlyVisitedSitesBannedURLStore__historyItemsWereRemoved___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 urlString];

  return v2;
}

id **__82__WBSFrequentlyVisitedSitesBannedURLStore__writeOutBannedURLStringsAsynchronously__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) allValues];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 writeToURL:*(*(a1 + 32) + 8) atomically:1];

  return std::unique_ptr<SafariShared::SuddenTerminationDisabler>::~unique_ptr[abi:sn200100](&v5);
}

@end