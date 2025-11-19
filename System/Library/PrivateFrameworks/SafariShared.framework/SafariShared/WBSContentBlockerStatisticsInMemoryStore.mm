@interface WBSContentBlockerStatisticsInMemoryStore
+ (NSArray)allStores;
+ (int64_t)totalBlockedTrackerCount;
- (WBSContentBlockerStatisticsInMemoryStore)init;
- (void)_clearStatisticsPassingTest:(id)a3;
- (void)_clearUnusedDomains;
- (void)blockedThirdPartiesAfter:(id)a3 before:(id)a4 onFirstParty:(id)a5 completionHandler:(id)a6;
- (void)clearAllStatisticsWithCompletionHandler:(id)a3;
- (void)clearStatisticsAfter:(id)a3 before:(id)a4;
- (void)clearStatisticsForDomains:(id)a3;
- (void)dealloc;
- (void)recordThirdPartyResourceBlocked:(id)a3 onFirstParty:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSContentBlockerStatisticsInMemoryStore

+ (NSArray)allStores
{
  v2 = allStores();
  v3 = [v2 allObjects];

  return v3;
}

+ (int64_t)totalBlockedTrackerCount
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] distantPast];
  v3 = [MEMORY[0x1E695DF00] distantFuture];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = +[WBSContentBlockerStatisticsInMemoryStore allStores];
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __68__WBSContentBlockerStatisticsInMemoryStore_totalBlockedTrackerCount__block_invoke;
        v13[3] = &unk_1E7FB6B08;
        v14 = v4;
        [v9 blockedThirdPartiesAfter:v2 before:v3 onFirstParty:0 completionHandler:v13];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = [v4 count];
  return v10;
}

- (WBSContentBlockerStatisticsInMemoryStore)init
{
  v8.receiver = self;
  v8.super_class = WBSContentBlockerStatisticsInMemoryStore;
  v2 = [(WBSContentBlockerStatisticsInMemoryStore *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    firstPartiesByBlockedThirdParty = v2->_firstPartiesByBlockedThirdParty;
    v2->_firstPartiesByBlockedThirdParty = v3;

    v5 = allStores();
    [v5 addObject:v2];

    v6 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = allStores();
  [v3 removeObject:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:WBSContentBlockerStatisticsInMemoryStoreDidCloseNotification object:0];

  v5.receiver = self;
  v5.super_class = WBSContentBlockerStatisticsInMemoryStore;
  [(WBSContentBlockerStatisticsInMemoryStore *)&v5 dealloc];
}

- (void)recordThirdPartyResourceBlocked:(id)a3 onFirstParty:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 host];
  v11 = [v10 safari_highLevelDomainFromHost];

  v12 = [v9 host];

  v13 = [v12 safari_highLevelDomainFromHost];

  if (v11)
  {
    v14 = [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty objectForKeyedSubscript:v11];
    if (v14)
    {
      v15 = v14;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __107__WBSContentBlockerStatisticsInMemoryStore_recordThirdPartyResourceBlocked_onFirstParty_completionHandler___block_invoke;
      v20[3] = &unk_1E7FC47C0;
      v21 = v13;
      [v15 safari_removeObjectsPassingTest:v20];
    }

    else
    {
      v15 = [MEMORY[0x1E695DF70] array];
      [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty setObject:v15 forKeyedSubscript:v11];
    }

    v16 = [MEMORY[0x1E695DF00] now];
    [v16 timeIntervalSince1970];
    v18 = v17;

    v19 = [[WBSContentBlockerStatisticsFirstParty alloc] initWithDomain:v13 lastSeen:v18];
    [v15 addObject:v19];

    if (v8)
    {
      v8[2](v8, 1);
    }
  }

  else if (v8)
  {
    v8[2](v8, 0);
  }
}

uint64_t __107__WBSContentBlockerStatisticsInMemoryStore_recordThirdPartyResourceBlocked_onFirstParty_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 domain];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

- (void)blockedThirdPartiesAfter:(id)a3 before:(id)a4 onFirstParty:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  [a3 timeIntervalSince1970];
  v14 = v13;
  [v12 timeIntervalSince1970];
  v16 = v15;

  v17 = [v10 length];
  firstPartiesByBlockedThirdParty = self->_firstPartiesByBlockedThirdParty;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __107__WBSContentBlockerStatisticsInMemoryStore_blockedThirdPartiesAfter_before_onFirstParty_completionHandler___block_invoke;
  v21[3] = &unk_1E7FC4810;
  v25 = v17 != 0;
  v22 = v10;
  v23 = v14;
  v24 = v16;
  v19 = v10;
  v20 = [(NSMutableDictionary *)firstPartiesByBlockedThirdParty safari_mapAndFilterKeysAndObjectsUsingBlock:v21];
  v11[2](v11, v20);
}

id __107__WBSContentBlockerStatisticsInMemoryStore_blockedThirdPartiesAfter_before_onFirstParty_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __107__WBSContentBlockerStatisticsInMemoryStore_blockedThirdPartiesAfter_before_onFirstParty_completionHandler___block_invoke_2;
  v11 = &unk_1E7FC47E8;
  v14 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v5 = [a3 safari_filterObjectsUsingBlock:&v8];
  if ([v5 count])
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __107__WBSContentBlockerStatisticsInMemoryStore_blockedThirdPartiesAfter_before_onFirstParty_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = (*(a1 + 56) != 1 || ([v3 domain], v5 = v4 = v3;

  return v8;
}

- (void)clearAllStatisticsWithCompletionHandler:(id)a3
{
  v5 = a3;
  [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty removeAllObjects];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

- (void)clearStatisticsAfter:(id)a3 before:(id)a4
{
  v6 = a4;
  [a3 timeIntervalSince1970];
  v8 = v7;
  [v6 timeIntervalSince1970];
  v10 = v9;

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__WBSContentBlockerStatisticsInMemoryStore_clearStatisticsAfter_before___block_invoke;
  v11[3] = &__block_descriptor_48_e47_B16__0__WBSContentBlockerStatisticsFirstParty_8l;
  v11[4] = v8;
  v11[5] = v10;
  [(WBSContentBlockerStatisticsInMemoryStore *)self _clearStatisticsPassingTest:v11];
}

- (void)clearStatisticsForDomains:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = [a3 safari_filterObjectsUsingBlock:&__block_literal_global_28];
  v6 = [v4 setWithArray:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__WBSContentBlockerStatisticsInMemoryStore_clearStatisticsForDomains___block_invoke_14;
  v8[3] = &unk_1E7FC4878;
  v9 = v6;
  v7 = v6;
  [(WBSContentBlockerStatisticsInMemoryStore *)self _clearStatisticsPassingTest:v8];
}

uint64_t __70__WBSContentBlockerStatisticsInMemoryStore_clearStatisticsForDomains___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 safari_highLevelDomainFromHost];
  v4 = [v2 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXContentBlockers();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __70__WBSContentBlockerStatisticsInMemoryStore_clearStatisticsForDomains___block_invoke_cold_1(v2, v5);
    }
  }

  return v4;
}

uint64_t __70__WBSContentBlockerStatisticsInMemoryStore_clearStatisticsForDomains___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 domain];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)_clearStatisticsPassingTest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __72__WBSContentBlockerStatisticsInMemoryStore__clearStatisticsPassingTest___block_invoke;
        v11[3] = &unk_1E7FC48A0;
        v12 = v4;
        [v10 safari_removeObjectsPassingTest:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(WBSContentBlockerStatisticsInMemoryStore *)self _clearUnusedDomains];
}

- (void)_clearUnusedDomains
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_firstPartiesByBlockedThirdParty;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty objectForKeyedSubscript:v8, v11];
        v10 = [v9 count];

        if (!v10)
        {
          [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty setObject:0 forKeyedSubscript:v8];
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void __70__WBSContentBlockerStatisticsInMemoryStore_clearStatisticsForDomains___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Could not remove content blocker statistics for non high-level domain %{private}@", &v2, 0xCu);
}

@end