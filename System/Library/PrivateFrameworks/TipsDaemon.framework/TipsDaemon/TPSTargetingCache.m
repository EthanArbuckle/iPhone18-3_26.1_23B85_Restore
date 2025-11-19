@interface TPSTargetingCache
- (TPSTargetingCache)init;
- (int64_t)cacheResultForIdentifier:(id)a3;
- (void)addCacheResult:(int64_t)a3 forIdentifier:(id)a4;
- (void)reset;
@end

@implementation TPSTargetingCache

- (TPSTargetingCache)init
{
  v9.receiver = self;
  v9.super_class = TPSTargetingCache;
  v2 = [(TPSTargetingCache *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cacheResultDictionary = v2->_cacheResultDictionary;
    v2->_cacheResultDictionary = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.tips.targetingCache.sync", v5);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v6;
  }

  return v2;
}

- (void)addCacheResult:(int64_t)a3 forIdentifier:(id)a4
{
  v6 = a4;
  if ([v6 length])
  {
    v7 = [(TPSTargetingCache *)self syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__TPSTargetingCache_addCacheResult_forIdentifier___block_invoke;
    block[3] = &unk_2789B0E88;
    v10 = self;
    v11 = a3;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

void __50__TPSTargetingCache_addCacheResult_forIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__TPSTargetingCache_addCacheResult_forIdentifier___block_invoke_cold_1(a1, v2);
  }

  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v4 = [*(a1 + 40) cacheResultDictionary];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 32)];
}

- (int64_t)cacheResultForIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([v4 length])
  {
    v5 = [(TPSTargetingCache *)self syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__TPSTargetingCache_cacheResultForIdentifier___block_invoke;
    block[3] = &unk_2789B0E60;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(v5, block);
  }

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __46__TPSTargetingCache_cacheResultForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cacheResultDictionary];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3 && [v3 integerValue] != -1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v3 integerValue];
  }
}

- (void)reset
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__TPSTargetingCache_reset__block_invoke;
  block[3] = &unk_2789AFAB0;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

void __26__TPSTargetingCache_reset__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __26__TPSTargetingCache_reset__block_invoke_cold_1(v2);
  }

  v3 = [*(a1 + 32) cacheResultDictionary];
  [v3 removeAllObjects];
}

void __50__TPSTargetingCache_addCacheResult_forIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v5 = 138412546;
  v6 = v2;
  v7 = 2048;
  v8 = v3;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Adding targeting result to cache for precondition (%@): %ld", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end