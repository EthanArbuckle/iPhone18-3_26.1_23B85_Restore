@interface WBSContentBlockerStatisticsInMemoryStore
+ (NSArray)allStores;
+ (int64_t)totalBlockedTrackerCount;
- (WBSContentBlockerStatisticsInMemoryStore)init;
- (void)_clearStatisticsPassingTest:(id)test;
- (void)_clearUnusedDomains;
- (void)blockedThirdPartiesAfter:(id)after before:(id)before onFirstParty:(id)party completionHandler:(id)handler;
- (void)clearAllStatisticsWithCompletionHandler:(id)handler;
- (void)clearStatisticsAfter:(id)after before:(id)before;
- (void)clearStatisticsForDomains:(id)domains;
- (void)dealloc;
- (void)recordThirdPartyResourceBlocked:(id)blocked onFirstParty:(id)party completionHandler:(id)handler;
@end

@implementation WBSContentBlockerStatisticsInMemoryStore

+ (NSArray)allStores
{
  v2 = allStores();
  allObjects = [v2 allObjects];

  return allObjects;
}

+ (int64_t)totalBlockedTrackerCount
{
  v20 = *MEMORY[0x1E69E9840];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
        v14 = dictionary;
        [v9 blockedThirdPartiesAfter:distantPast before:distantFuture onFirstParty:0 completionHandler:v13];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = [dictionary count];
  return v10;
}

- (WBSContentBlockerStatisticsInMemoryStore)init
{
  v8.receiver = self;
  v8.super_class = WBSContentBlockerStatisticsInMemoryStore;
  v2 = [(WBSContentBlockerStatisticsInMemoryStore *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    firstPartiesByBlockedThirdParty = v2->_firstPartiesByBlockedThirdParty;
    v2->_firstPartiesByBlockedThirdParty = dictionary;

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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:WBSContentBlockerStatisticsInMemoryStoreDidCloseNotification object:0];

  v5.receiver = self;
  v5.super_class = WBSContentBlockerStatisticsInMemoryStore;
  [(WBSContentBlockerStatisticsInMemoryStore *)&v5 dealloc];
}

- (void)recordThirdPartyResourceBlocked:(id)blocked onFirstParty:(id)party completionHandler:(id)handler
{
  handlerCopy = handler;
  partyCopy = party;
  host = [blocked host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  host2 = [partyCopy host];

  safari_highLevelDomainFromHost2 = [host2 safari_highLevelDomainFromHost];

  if (safari_highLevelDomainFromHost)
  {
    v14 = [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty objectForKeyedSubscript:safari_highLevelDomainFromHost];
    if (v14)
    {
      array = v14;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __107__WBSContentBlockerStatisticsInMemoryStore_recordThirdPartyResourceBlocked_onFirstParty_completionHandler___block_invoke;
      v20[3] = &unk_1E7FC47C0;
      v21 = safari_highLevelDomainFromHost2;
      [array safari_removeObjectsPassingTest:v20];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty setObject:array forKeyedSubscript:safari_highLevelDomainFromHost];
    }

    v16 = [MEMORY[0x1E695DF00] now];
    [v16 timeIntervalSince1970];
    v18 = v17;

    v19 = [[WBSContentBlockerStatisticsFirstParty alloc] initWithDomain:safari_highLevelDomainFromHost2 lastSeen:v18];
    [array addObject:v19];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
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

- (void)blockedThirdPartiesAfter:(id)after before:(id)before onFirstParty:(id)party completionHandler:(id)handler
{
  partyCopy = party;
  handlerCopy = handler;
  beforeCopy = before;
  [after timeIntervalSince1970];
  v14 = v13;
  [beforeCopy timeIntervalSince1970];
  v16 = v15;

  v17 = [partyCopy length];
  firstPartiesByBlockedThirdParty = self->_firstPartiesByBlockedThirdParty;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __107__WBSContentBlockerStatisticsInMemoryStore_blockedThirdPartiesAfter_before_onFirstParty_completionHandler___block_invoke;
  v21[3] = &unk_1E7FC4810;
  v25 = v17 != 0;
  v22 = partyCopy;
  v23 = v14;
  v24 = v16;
  v19 = partyCopy;
  v20 = [(NSMutableDictionary *)firstPartiesByBlockedThirdParty safari_mapAndFilterKeysAndObjectsUsingBlock:v21];
  handlerCopy[2](handlerCopy, v20);
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

- (void)clearAllStatisticsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty removeAllObjects];
  v4 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v4 = handlerCopy;
  }
}

- (void)clearStatisticsAfter:(id)after before:(id)before
{
  beforeCopy = before;
  [after timeIntervalSince1970];
  v8 = v7;
  [beforeCopy timeIntervalSince1970];
  v10 = v9;

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__WBSContentBlockerStatisticsInMemoryStore_clearStatisticsAfter_before___block_invoke;
  v11[3] = &__block_descriptor_48_e47_B16__0__WBSContentBlockerStatisticsFirstParty_8l;
  v11[4] = v8;
  v11[5] = v10;
  [(WBSContentBlockerStatisticsInMemoryStore *)self _clearStatisticsPassingTest:v11];
}

- (void)clearStatisticsForDomains:(id)domains
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = [domains safari_filterObjectsUsingBlock:&__block_literal_global_28];
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

- (void)_clearStatisticsPassingTest:(id)test
{
  v18 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_firstPartiesByBlockedThirdParty allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __72__WBSContentBlockerStatisticsInMemoryStore__clearStatisticsPassingTest___block_invoke;
        v11[3] = &unk_1E7FC48A0;
        v12 = testCopy;
        [v10 safari_removeObjectsPassingTest:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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