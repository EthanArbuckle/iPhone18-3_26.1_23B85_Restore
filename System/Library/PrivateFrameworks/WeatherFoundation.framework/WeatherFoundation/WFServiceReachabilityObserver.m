@interface WFServiceReachabilityObserver
+ (id)sharedObserver;
- (BOOL)removeBlockObserverWithHandle:(id)a3;
- (BOOL)removeObserver:(id)a3;
- (OS_dispatch_queue)callbackQueue;
- (id)_init;
- (id)addBlockObserver:(id)a3;
- (int64_t)reachability;
- (void)_deliverReachabilityUpdate:(int64_t)a3;
- (void)_setupReachability;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeAllObservers;
@end

@implementation WFServiceReachabilityObserver

+ (id)sharedObserver
{
  if (sharedObserver_onceToken_0 != -1)
  {
    +[WFServiceReachabilityObserver sharedObserver];
  }

  v3 = sharedObserver_defaultObserver_0;

  return v3;
}

uint64_t __47__WFServiceReachabilityObserver_sharedObserver__block_invoke()
{
  sharedObserver_defaultObserver_0 = [[WFServiceReachabilityObserver alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = WFServiceReachabilityObserver;
  v2 = [(WFServiceReachabilityObserver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WeatherFoundation.reachability.observerQueue", MEMORY[0x277D85CD8]);
    [(WFServiceReachabilityObserver *)v2 setObserverQueue:v3];

    v4 = objc_opt_new();
    [(WFServiceReachabilityObserver *)v2 setBlockObserversForUUID:v4];

    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(WFServiceReachabilityObserver *)v2 setObserverObjects:v5];

    [(WFServiceReachabilityObserver *)v2 _setupReachability];
  }

  return v2;
}

- (void)dealloc
{
  [(WFServiceReachabilityObserver *)self removeAllObservers];
  v3 = [(WFServiceReachabilityObserver *)self observerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WFServiceReachabilityObserver_dealloc__block_invoke;
  block[3] = &unk_279E6D9A8;
  block[4] = self;
  dispatch_barrier_sync(v3, block);

  v4.receiver = self;
  v4.super_class = WFServiceReachabilityObserver;
  [(WFServiceReachabilityObserver *)&v4 dealloc];
}

void __40__WFServiceReachabilityObserver_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceReachabilityEvaluator];
  [v2 removeObserver:*(a1 + 32) forKeyPath:@"path.status"];
}

- (OS_dispatch_queue)callbackQueue
{
  p_callbackQueue = &self->_callbackQueue;
  callbackQueue = self->_callbackQueue;
  if (!callbackQueue)
  {
    objc_storeStrong(p_callbackQueue, MEMORY[0x277D85CD0]);
    callbackQueue = *p_callbackQueue;
  }

  return callbackQueue;
}

- (int64_t)reachability
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(WFServiceReachabilityObserver *)self observerQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__WFServiceReachabilityObserver_reachability__block_invoke;
  v6[3] = &unk_279E6DB60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = [(WFServiceReachabilityObserver *)self observerObjects];
    v6 = [(WFServiceReachabilityObserver *)self observerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__WFServiceReachabilityObserver_addObserver___block_invoke;
    block[3] = &unk_279E6E920;
    v9 = v5;
    v7 = v5;
    objc_copyWeak(&v10, &location);
    dispatch_barrier_async(v6, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __45__WFServiceReachabilityObserver_addObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 addObject:WeakRetained];
}

- (BOOL)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = [(WFServiceReachabilityObserver *)self observerObjects];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v6 = [(WFServiceReachabilityObserver *)self observerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__WFServiceReachabilityObserver_removeObserver___block_invoke;
    block[3] = &unk_279E6EB60;
    v16 = &v18;
    v7 = v5;
    v15 = v7;
    objc_copyWeak(&v17, &location);
    dispatch_sync(v6, block);

    if (*(v19 + 24) == 1)
    {
      v8 = [(WFServiceReachabilityObserver *)self observerQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __48__WFServiceReachabilityObserver_removeObserver___block_invoke_2;
      v11[3] = &unk_279E6E920;
      v12 = v7;
      objc_copyWeak(&v13, &location);
      dispatch_barrier_async(v8, v11);

      objc_destroyWeak(&v13);
      v9 = *(v19 + 24);
    }

    else
    {
      v9 = 0;
    }

    objc_destroyWeak(&v17);

    _Block_object_dispose(&v18, 8);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void __48__WFServiceReachabilityObserver_removeObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [v2 containsObject:WeakRetained];
}

void __48__WFServiceReachabilityObserver_removeObserver___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if ([v10 isEqualToString:@"path"])
  {
    v13 = [v12 path];

    v14 = [v13 status];
    [(WFServiceReachabilityObserver *)self _deliverReachabilityUpdate:(v14 & 0xFFFFFFFFFFFFFFFDLL) == 1];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = WFServiceReachabilityObserver;
    [(WFServiceReachabilityObserver *)&v15 observeValueForKeyPath:v10 ofObject:v12 change:v11 context:a6];
  }
}

- (id)addBlockObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WFServiceReachabilityObserver *)self blockObserversForUUID];
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [(WFServiceReachabilityObserver *)self observerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__WFServiceReachabilityObserver_addBlockObserver___block_invoke;
    block[3] = &unk_279E6EB88;
    v14 = v5;
    v16 = v4;
    v8 = v6;
    v15 = v8;
    v9 = v5;
    dispatch_barrier_async(v7, block);

    v10 = v15;
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __50__WFServiceReachabilityObserver_addBlockObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) copy];
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

- (BOOL)removeBlockObserverWithHandle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WFServiceReachabilityObserver *)self blockObserversForUUID];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v6 = [(WFServiceReachabilityObserver *)self observerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__WFServiceReachabilityObserver_removeBlockObserverWithHandle___block_invoke;
    block[3] = &unk_279E6EBB0;
    v18 = &v19;
    v7 = v5;
    v16 = v7;
    v8 = v4;
    v17 = v8;
    dispatch_sync(v6, block);

    if (*(v20 + 24) == 1)
    {
      v9 = [(WFServiceReachabilityObserver *)self observerQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __63__WFServiceReachabilityObserver_removeBlockObserverWithHandle___block_invoke_2;
      v12[3] = &unk_279E6EA40;
      v13 = v7;
      v14 = v8;
      dispatch_barrier_async(v9, v12);

      v10 = *(v20 + 24);
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t __63__WFServiceReachabilityObserver_removeBlockObserverWithHandle___block_invoke(uint64_t a1)
{
  result = CFDictionaryContainsKey(*(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result != 0;
  return result;
}

- (void)_setupReachability
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = [(WFServiceReachabilityObserver *)self serviceReachabilityEvaluator];
  if (!v7[5])
  {
    v3 = [WFReachabilityConfigurationRequest alloc];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__WFServiceReachabilityObserver__setupReachability__block_invoke;
    v5[3] = &unk_279E6EBD8;
    v5[4] = &v6;
    v4 = [(WFReachabilityConfigurationRequest *)v3 initWithResultHandler:v5];
    [(WFTask *)v4 executeSynchronously];
    [(WFServiceReachabilityObserver *)self setServiceReachabilityEvaluator:v7[5]];
    [v7[5] addObserver:self forKeyPath:@"path" options:5 context:0];
    -[WFServiceReachabilityObserver _deliverReachabilityUpdate:](self, "_deliverReachabilityUpdate:", [v7[5] wf_isReachable]);
  }

  _Block_object_dispose(&v6, 8);
}

- (void)_deliverReachabilityUpdate:(int64_t)a3
{
  v5 = [(WFServiceReachabilityObserver *)self blockObserversForUUID];
  v6 = [(WFServiceReachabilityObserver *)self observerObjects];
  v7 = [(WFServiceReachabilityObserver *)self callbackQueue];
  v8 = [(WFServiceReachabilityObserver *)self observerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WFServiceReachabilityObserver__deliverReachabilityUpdate___block_invoke;
  block[3] = &unk_279E6EC50;
  v15 = v7;
  v16 = a3;
  block[4] = self;
  v13 = v6;
  v14 = v5;
  v9 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_barrier_async(v8, block);
}

void __60__WFServiceReachabilityObserver__deliverReachabilityUpdate___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8) != *(a1 + 64))
  {
    v2 = WFLogForCategory(8uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 64) == 1)
      {
        v3 = @"UP";
      }

      else
      {
        v3 = @"DOWN";
      }

      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_272B94000, v2, OS_LOG_TYPE_INFO, "Network state changed: %@", buf, 0xCu);
    }

    *(*(a1 + 32) + 8) = *(a1 + 64);
    v4 = [*(a1 + 40) objectEnumerator];
    v5 = [v4 allObjects];

    v6 = [*(a1 + 48) allValues];
    v7 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WFServiceReachabilityObserver__deliverReachabilityUpdate___block_invoke_21;
    block[3] = &unk_279E6EC50;
    v13 = v6;
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v14 = v8;
    v15 = v5;
    v16 = *(a1 + 32);
    v17 = v9;
    v10 = v5;
    v11 = v6;
    dispatch_async(v7, block);
  }
}

void __60__WFServiceReachabilityObserver__deliverReachabilityUpdate___block_invoke_21(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__WFServiceReachabilityObserver__deliverReachabilityUpdate___block_invoke_2;
  block[3] = &unk_279E6EC00;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v16 = v4;
  v17 = v5;
  dispatch_apply(v2, v3, block);
  v6 = [*(a1 + 48) count];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__WFServiceReachabilityObserver__deliverReachabilityUpdate___block_invoke_3;
  v11[3] = &unk_279E6EC28;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_apply(v6, v7, v11);
}

void __60__WFServiceReachabilityObserver__deliverReachabilityUpdate___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v3[2](v3, *(a1 + 40));
}

void __60__WFServiceReachabilityObserver__deliverReachabilityUpdate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  [v3 serviceConnectivityObserver:*(a1 + 40) hasUpdatedReachability:*(a1 + 48)];
}

- (void)removeAllObservers
{
  v3 = [(WFServiceReachabilityObserver *)self blockObserversForUUID];
  v4 = [(WFServiceReachabilityObserver *)self observerObjects];
  v5 = [(WFServiceReachabilityObserver *)self observerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__WFServiceReachabilityObserver_removeAllObservers__block_invoke;
  v8[3] = &unk_279E6EA40;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_barrier_async(v5, v8);
}

uint64_t __51__WFServiceReachabilityObserver_removeAllObservers__block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeAllObjects];
  v2 = *(a1 + 40);

  return [v2 removeAllObjects];
}

@end