@interface RELocationAuthorizationStatusCache
- (id)_init;
- (int)_cachedStatusForBundleIdentifier:(id)a3;
- (int)cachedAuthorizationStatusForBundleIdentifier:(id)a3 invalidationUpdateQueue:(id)a4 withCallback:(id)a5;
- (void)_q_queue_queryStatusFromCLForBundleIdentifier:(id)a3;
- (void)_s_queue_addCallbackInfo:(id)a3 forBundleIdentifier:(id)a4;
- (void)_s_queue_scheduleUpdatedStatusForBundleIdentifier:(id)a3;
@end

@implementation RELocationAuthorizationStatusCache

- (id)_init
{
  v16.receiver = self;
  v16.super_class = RELocationAuthorizationStatusCache;
  v2 = [(RESingleton *)&v16 _init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = v2[1];
    v2[1] = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = v2[2];
    v2[2] = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    v8 = v2[3];
    v2[3] = v7;

    v9 = dispatch_queue_create("com.apple.relevanceengine.scheduleCLAuth", 0);
    v10 = v2[4];
    v2[4] = v9;

    v11 = dispatch_queue_create("com.apple.relevanceengine.queryCLAuth", 0);
    v12 = v2[5];
    v2[5] = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v14 = v2[6];
    v2[6] = v13;
  }

  return v2;
}

- (int)cachedAuthorizationStatusForBundleIdentifier:(id)a3 invalidationUpdateQueue:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(RELocationAuthorizationStatusCache *)self _cachedStatusForBundleIdentifier:v8];
  v12 = objc_alloc_init(_RECallbackAndPreviousStatus);
  [(_RECallbackAndPreviousStatus *)v12 setStatus:v11];
  [(_RECallbackAndPreviousStatus *)v12 setInvalidationCallback:v9];

  [(_RECallbackAndPreviousStatus *)v12 setQueue:v10];
  schedulingQueue = self->_schedulingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__RELocationAuthorizationStatusCache_cachedAuthorizationStatusForBundleIdentifier_invalidationUpdateQueue_withCallback___block_invoke;
  block[3] = &unk_2785FB070;
  block[4] = self;
  v18 = v12;
  v19 = v8;
  v14 = v8;
  v15 = v12;
  dispatch_async(schedulingQueue, block);

  return v11;
}

uint64_t __120__RELocationAuthorizationStatusCache_cachedAuthorizationStatusForBundleIdentifier_invalidationUpdateQueue_withCallback___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _s_queue_addCallbackInfo:*(a1 + 40) forBundleIdentifier:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _s_queue_scheduleUpdatedStatusForBundleIdentifier:v3];
}

- (int)_cachedStatusForBundleIdentifier:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_bundleToStatusCacheLock lock];
  v5 = [(NSMutableDictionary *)self->_bundleToStatusCache objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 intValue];
  }

  else
  {
    [(NSMutableDictionary *)self->_bundleToStatusCache setObject:&unk_283BBD638 forKeyedSubscript:v4];
    v7 = 0;
  }

  [(NSLock *)self->_bundleToStatusCacheLock unlock];

  return v7;
}

- (void)_s_queue_addCallbackInfo:(id)a3 forBundleIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_bundleToCallbackBlocks objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    [(NSMutableDictionary *)self->_bundleToCallbackBlocks setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

- (void)_s_queue_scheduleUpdatedStatusForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_bundlesAwaitingQuery containsObject:v4]& 1) == 0)
  {
    v5 = dispatch_time(0, 1000000000);
    queryQueue = self->_queryQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __88__RELocationAuthorizationStatusCache__s_queue_scheduleUpdatedStatusForBundleIdentifier___block_invoke;
    v7[3] = &unk_2785F9AE0;
    v7[4] = self;
    v8 = v4;
    dispatch_after(v5, queryQueue, v7);
  }
}

- (void)_q_queue_queryStatusFromCLForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBFC10] authorizationStatusForBundleIdentifier:v4];
  schedulingQueue = self->_schedulingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__RELocationAuthorizationStatusCache__q_queue_queryStatusFromCLForBundleIdentifier___block_invoke;
  block[3] = &unk_2785FC560;
  v10 = v5;
  block[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(schedulingQueue, block);
}

void __95__RELocationAuthorizationStatusCache__s_queue_updateCacheFromCLWithStatus_forBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) invalidationCallback];
  v2[2](v2, *(a1 + 40));
}

@end