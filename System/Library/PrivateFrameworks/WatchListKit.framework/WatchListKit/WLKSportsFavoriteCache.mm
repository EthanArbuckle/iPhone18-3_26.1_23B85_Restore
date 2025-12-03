@interface WLKSportsFavoriteCache
- (BOOL)hasCache;
- (WLKSportsFavoriteCache)initWithUserDefaults:(id)defaults;
- (id)dictionaryRepresentation;
- (void)addFavorites:(id)favorites completion:(id)completion;
- (void)deleteLegacyCacheWithCompletion:(id)completion;
- (void)getFavoritesWithCompletion:(id)completion;
- (void)hasFavoritesSyncEnabledKey:(id)key;
- (void)invalidate;
- (void)isOptedIn:(id)in;
- (void)removeFavorites:(id)favorites completion:(id)completion;
- (void)setCache:(id)cache overrideLastModifiedDate:(BOOL)date completion:(id)completion;
- (void)setOptInStatus:(BOOL)status overrideLastModifiedDate:(BOOL)date completion:(id)completion;
@end

@implementation WLKSportsFavoriteCache

- (WLKSportsFavoriteCache)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v10.receiver = self;
  v10.super_class = WLKSportsFavoriteCache;
  v6 = [(WLKSportsFavoriteCache *)&v10 init];
  if (v6)
  {
    v7 = dispatch_queue_create("WLKSportsFavoritePersistentCacheQueue", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_userDefaults, defaults);
  }

  return v6;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__WLKSportsFavoriteCache_invalidate__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __36__WLKSportsFavoriteCache_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObjectForKey:@"my-sports-onboarding-status"];
  [*(*(a1 + 32) + 16) removeObjectForKey:@"my-sports-onboarding-status-last-modified-date"];
  [*(*(a1 + 32) + 16) removeObjectForKey:@"my-sports-favorites"];
  v2 = *(*(a1 + 32) + 16);

  return [v2 removeObjectForKey:@"my-sports-favorites-last-modified-date"];
}

- (void)deleteLegacyCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__WLKSportsFavoriteCache_deleteLegacyCacheWithCompletion___block_invoke;
  v7[3] = &unk_279E5EFC0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __58__WLKSportsFavoriteCache_deleteLegacyCacheWithCompletion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [*(*(a1 + 32) + 16) dictionaryRepresentation];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if (([v9 hasPrefix:@"WLKSportsFavoritesCacheKey"] & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"WLKSportsFavoriteCacheLastModifiedKey") & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"WLKSportsFavoriteCacheSyncingAvailableOverride") & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"WLKSportsFavoriteCacheSyncingEnabledKey") & 1) != 0 || (objc_msgSend(v9, "hasPrefix:", @"WLKSportsFavoriteCacheSyncingEnabledLastModifiedKey") & 1) != 0 || objc_msgSend(v9, "hasPrefix:", @"WLKSportsFavoriteCacheSyncingEnabledOverride"))
        {
          [v2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v2;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(a1 + 32) + 16) removeObjectForKey:{*(*(&v17 + 1) + 8 * j), v17}];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__WLKSportsFavoriteCache_hasCache__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __34__WLKSportsFavoriteCache_hasCache__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:@"my-sports-favorites"];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (void)setCache:(id)cache overrideLastModifiedDate:(BOOL)date completion:(id)completion
{
  cacheCopy = cache;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__WLKSportsFavoriteCache_setCache_overrideLastModifiedDate_completion___block_invoke;
  v13[3] = &unk_279E603E0;
  v14 = cacheCopy;
  selfCopy = self;
  dateCopy = date;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = cacheCopy;
  dispatch_async(queue, v13);
}

void __71__WLKSportsFavoriteCache_setCache_overrideLastModifiedDate_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) ID];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 40) + 16) setObject:v2 forKey:@"my-sports-favorites"];
  if (*(a1 + 56) == 1)
  {
    v9 = *(*(a1 + 40) + 16);
    v10 = [MEMORY[0x277CBEAA8] now];
    [v9 setObject:v10 forKey:@"my-sports-favorites-last-modified-date"];
  }

  [*(a1 + 40) getFavoritesWithCompletion:{*(a1 + 48), v12}];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getFavoritesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__WLKSportsFavoriteCache_getFavoritesWithCompletion___block_invoke;
  v7[3] = &unk_279E5EFC0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __53__WLKSportsFavoriteCache_getFavoritesWithCompletion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [*(*(a1 + 32) + 16) stringArrayForKey:@"my-sports-favorites"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [WLKSportsFavoriteFactory favoriteWithID:*(*(&v13 + 1) + 8 * v7)];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }

  v9 = [*(*(a1 + 32) + 16) objectForKey:@"my-sports-favorites-last-modified-date"];
  v10 = WLKSystemLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - cached favorites: %@, lastModified: %@", buf, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v2, v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addFavorites:(id)favorites completion:(id)completion
{
  favoritesCopy = favorites;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WLKSportsFavoriteCache_addFavorites_completion___block_invoke;
  block[3] = &unk_279E606B8;
  block[4] = self;
  v12 = favoritesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = favoritesCopy;
  dispatch_async(queue, block);
}

void __50__WLKSportsFavoriteCache_addFavorites_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) stringArrayForKey:@"my-sports-favorites"];
  v3 = v2;
  v4 = MEMORY[0x277CBEBF8];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [MEMORY[0x277CBEB70] orderedSetWithArray:v5];
  v7 = [v6 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:{*(*(&v17 + 1) + 8 * v12++), v17}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v13 = [v7 array];
  [*(*(a1 + 32) + 16) setObject:v13 forKey:@"my-sports-favorites"];
  v14 = *(*(a1 + 32) + 16);
  v15 = [MEMORY[0x277CBEAA8] now];
  [v14 setObject:v15 forKey:@"my-sports-favorites-last-modified-date"];

  [*(a1 + 32) getFavoritesWithCompletion:*(a1 + 48)];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeFavorites:(id)favorites completion:(id)completion
{
  favoritesCopy = favorites;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__WLKSportsFavoriteCache_removeFavorites_completion___block_invoke;
  block[3] = &unk_279E606B8;
  block[4] = self;
  v12 = favoritesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = favoritesCopy;
  dispatch_async(queue, block);
}

void __53__WLKSportsFavoriteCache_removeFavorites_completion___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) stringArrayForKey:@"my-sports-favorites"];
  v3 = v2;
  v4 = MEMORY[0x277CBEBF8];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [MEMORY[0x277CBEB70] orderedSetWithArray:v5];
  v7 = [v6 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 removeObject:{*(*(&v17 + 1) + 8 * v12++), v17}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v13 = [v7 array];
  [*(*(a1 + 32) + 16) setObject:v13 forKey:@"my-sports-favorites"];
  v14 = *(*(a1 + 32) + 16);
  v15 = [MEMORY[0x277CBEAA8] now];
  [v14 setObject:v15 forKey:@"my-sports-favorites-last-modified-date"];

  [*(a1 + 32) getFavoritesWithCompletion:*(a1 + 48)];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)hasFavoritesSyncEnabledKey:(id)key
{
  keyCopy = key;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__WLKSportsFavoriteCache_hasFavoritesSyncEnabledKey___block_invoke;
  v7[3] = &unk_279E5EFC0;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(queue, v7);
}

uint64_t __53__WLKSportsFavoriteCache_hasFavoritesSyncEnabledKey___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) objectForKey:@"my-sports-onboarding-status"];

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)isOptedIn:(id)in
{
  inCopy = in;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__WLKSportsFavoriteCache_isOptedIn___block_invoke;
  v7[3] = &unk_279E5EFC0;
  v7[4] = self;
  v8 = inCopy;
  v6 = inCopy;
  dispatch_async(queue, v7);
}

void __36__WLKSportsFavoriteCache_isOptedIn___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) BOOLForKey:@"my-sports-onboarding-status"];
  v3 = [*(*(a1 + 32) + 16) objectForKey:@"my-sports-onboarding-status-last-modified-date"];
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 debugDescription];
    v7[0] = 67109378;
    v7[1] = v2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - cached onboarding state: %d, lastModified: %@", v7, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setOptInStatus:(BOOL)status overrideLastModifiedDate:(BOOL)date completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__WLKSportsFavoriteCache_setOptInStatus_overrideLastModifiedDate_completion___block_invoke;
  block[3] = &unk_279E606E0;
  statusCopy = status;
  dateCopy = date;
  block[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

uint64_t __77__WLKSportsFavoriteCache_setOptInStatus_overrideLastModifiedDate_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WLKSystemLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v10[0] = 67109120;
    v10[1] = v3;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKSportsFavorites - setting cache for onboarding state: %d", v10, 8u);
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [v4 setObject:v5 forKey:@"my-sports-onboarding-status"];

  if (*(a1 + 49) == 1)
  {
    v6 = *(*(a1 + 32) + 16);
    v7 = [MEMORY[0x277CBEAA8] now];
    [v6 setObject:v7 forKey:@"my-sports-onboarding-status-last-modified-date"];
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WLKSportsFavoriteCache_dictionaryRepresentation__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_sync(queue, block);

  return v3;
}

void __50__WLKSportsFavoriteCache_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 16);
  v5[0] = @"my-sports-onboarding-status";
  v5[1] = @"my-sports-onboarding-status-last-modified-date";
  v5[2] = @"my-sports-favorites";
  v5[3] = @"my-sports-favorites-last-modified-date";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = [v1 dictionaryWithValuesForKeys:v2];

  v4 = *MEMORY[0x277D85DE8];
}

@end