@interface WBReusableTabManager
+ (WBReusableTabManager)sharedManager;
- (BOOL)isTabSuspended:(id)a3;
- (NSSet)allGroupsTabsUUIDs;
- (WBReusableTabManager)init;
- (id)referenceToTabWithUUID:(id)a3;
- (id)reuseTabForUUID:(id)a3;
- (void)_addTabUUIDsFromGroup:(id)a3 toSet:(id)a4;
- (void)_cleanUp;
- (void)_scheduleCleanup;
- (void)addReusableTab:(id)a3;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)enumerateReusableTabs:(id)a3;
- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4;
@end

@implementation WBReusableTabManager

+ (WBReusableTabManager)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__WBReusableTabManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[WBReusableTabManager sharedManager]::onceToken != -1)
  {
    dispatch_once(&+[WBReusableTabManager sharedManager]::onceToken, block);
  }

  v2 = +[WBReusableTabManager sharedManager]::sharedManager;

  return v2;
}

uint64_t __37__WBReusableTabManager_sharedManager__block_invoke(uint64_t a1)
{
  +[WBReusableTabManager sharedManager]::sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (WBReusableTabManager)init
{
  v8.receiver = self;
  v8.super_class = WBReusableTabManager;
  v2 = [(WBReusableTabManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    uuidToTabCache = v2->_uuidToTabCache;
    v2->_uuidToTabCache = v3;

    [(NSCache *)v2->_uuidToTabCache setCountLimit:100];
    [(NSCache *)v2->_uuidToTabCache setDelegate:v2];
    v5 = [(WBReusableTabManager *)v2 tabGroupManager];
    [v5 addTabGroupObserver:v2];
    v6 = v2;
  }

  return v2;
}

- (void)addReusableTab:(id)a3
{
  v7 = a3;
  v4 = [[WBReusableTabEntry alloc] initWithReusableTab:v7];
  uuidToTabCache = self->_uuidToTabCache;
  v6 = [v7 uuid];
  [(NSCache *)uuidToTabCache setObject:v4 forKey:v6];

  [(WBReusableTabManager *)self _scheduleCleanup];
}

- (id)reuseTabForUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_uuidToTabCache objectForKey:v4];
  v6 = [v5 reusableTab];

  self->_reusing = 1;
  [(NSCache *)self->_uuidToTabCache removeObjectForKey:v4];
  self->_reusing = 0;

  return v6;
}

- (id)referenceToTabWithUUID:(id)a3
{
  v3 = [(NSCache *)self->_uuidToTabCache objectForKey:a3];
  v4 = [v3 reusableTab];

  return v4;
}

- (BOOL)isTabSuspended:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    uuidToTabCache = self->_uuidToTabCache;
    v7 = [v4 uuid];
    v8 = [(NSCache *)uuidToTabCache objectForKey:v7];
    v9 = [v8 reusableTab];
    v10 = v9 == v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_scheduleCleanup
{
  if (self->_cleanupTimer)
  {
    self->_pendingCleanup = 1;
  }

  else
  {
    v3 = MEMORY[0x277CBEBB8];
    v4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v4 floatForKey:@"reusableTabManagerCleanupDelaySeconds"];
    if (v5 == 0.0)
    {
      v6 = 600.0;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v3 scheduledTimerWithTimeInterval:self target:sel__cleanUp selector:0 userInfo:0 repeats:v6];
    cleanupTimer = self->_cleanupTimer;
    self->_cleanupTimer = v7;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_cleanUp
{
  v31 = *MEMORY[0x277D85DE8];
  cleanupTimer = self->_cleanupTimer;
  self->_cleanupTimer = 0;

  v24 = self;
  v4 = [(WBReusableTabManager *)self allGroupsTabsUUIDs];
  v5 = [(NSCache *)v24->_uuidToTabCache allObjects];
  v6 = [v5 copy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 reusableTab];
        v12 = [v11 uuid];
        v13 = [v4 containsObject:v12];

        v14 = [v10 dateCreated];
        [v14 timeIntervalSinceNow];
        v16 = v15;
        v17 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
        [v17 floatForKey:@"reusableTabManagerMaxAgeSeconds"];
        if (v18 == 0.0)
        {
          v19 = 3600.0;
        }

        else
        {
          v19 = v18;
        }

        if (((v19 >= -v16) & v13) == 0)
        {
          uuidToTabCache = v24->_uuidToTabCache;
          v21 = [v10 reusableTab];
          v22 = [v21 uuid];
          [(NSCache *)uuidToTabCache removeObjectForKey:v22];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  if (v24->_pendingCleanup)
  {
    v24->_pendingCleanup = 0;
    [(WBReusableTabManager *)v24 _scheduleCleanup];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (NSSet)allGroupsTabsUUIDs
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(WBReusableTabManager *)self tabGroupManager];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 allNamedTabGroupsUnsorted];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(WBReusableTabManager *)self _addTabUUIDsFromGroup:*(*(&v21 + 1) + 8 * i) toSet:v3];
      }

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(WBReusableTabManager *)self windowStates];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v17 + 1) + 8 * j) localTabGroup];
        [(WBReusableTabManager *)self _addTabUUIDsFromGroup:v13 toSet:v3];
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = [v3 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_addTabUUIDsFromGroup:(id)a3 toSet:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 tabs];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_alloc(MEMORY[0x277CCAD78]);
        v12 = [v10 uuid];
        v13 = [v11 initWithUUIDString:v12];
        [v5 addObject:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)enumerateReusableTabs:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_uuidToTabCache allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__WBReusableTabManager_enumerateReusableTabs___block_invoke;
  v7[3] = &unk_279E77328;
  v6 = v4;
  v8 = v6;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __46__WBReusableTabManager_enumerateReusableTabs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 reusableTab];
  (*(v2 + 16))(v2);
}

- (void)tabGroupManager:(id)a3 didRemoveTabGroupWithUUID:(id)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WBReusableTabManager_tabGroupManager_didRemoveTabGroupWithUUID___block_invoke;
  block[3] = &unk_279E757C8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __66__WBReusableTabManager_tabGroupManager_didRemoveTabGroupWithUUID___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _cleanUp];
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_reusing && [MEMORY[0x277CCACC8] isMainThread])
  {
    [v7 setReusableTab:0];
  }

  else
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3032000000;
    v9[3] = __Block_byref_object_copy__6;
    v9[4] = __Block_byref_object_dispose__6;
    v10 = [v7 reusableTab];
    [v7 setReusableTab:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__WBReusableTabManager_cache_willEvictObject___block_invoke;
    block[3] = &unk_279E77350;
    block[4] = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
    _Block_object_dispose(v9, 8);
  }
}

void __46__WBReusableTabManager_cache_willEvictObject___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) evictFromTabReuse];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end