@interface VUIConcurrentEvaluator
+ (id)idleEvaluator;
- (VUIConcurrentEvaluator)initWithQueue:(id)a3 concurrencyCount:(int64_t)a4;
- (id)_getterForKey:(id)a3;
- (id)_removeFetcherForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (void)_insertFetcher:(id)a3 getter:(id)a4 forKey:(id)a5;
- (void)_scheduleFetchRelayed:(BOOL)a3;
- (void)addEvaluationBlock:(id)a3 forKey:(id)a4;
- (void)lockSchedulingForEvaluation:(id)a3;
@end

@implementation VUIConcurrentEvaluator

+ (id)idleEvaluator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VUIConcurrentEvaluator_idleEvaluator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (idleEvaluator_onceToken != -1)
  {
    dispatch_once(&idleEvaluator_onceToken, block);
  }

  v2 = idleEvaluator_idleEvaluator;

  return v2;
}

void __39__VUIConcurrentEvaluator_idleEvaluator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = dispatch_get_global_queue(-32768, 0);
  v2 = [v1 initWithQueue:v4 concurrencyCount:1];
  v3 = idleEvaluator_idleEvaluator;
  idleEvaluator_idleEvaluator = v2;
}

- (VUIConcurrentEvaluator)initWithQueue:(id)a3 concurrencyCount:(int64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = VUIConcurrentEvaluator;
  v8 = [(VUIConcurrentEvaluator *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    v10 = 10;
    if (a4 < 10)
    {
      v10 = a4;
    }

    v9->_concurrencyCount = v10;
    v11 = dispatch_semaphore_create(1);
    schedulingLock = v9->_schedulingLock;
    v9->_schedulingLock = v11;
  }

  return v9;
}

- (void)addEvaluationBlock:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__18;
  v23[4] = __Block_byref_object_dispose__18;
  v24 = 0;
  v8 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__VUIConcurrentEvaluator_addEvaluationBlock_forKey___block_invoke;
  aBlock[3] = &unk_1E8733B70;
  objc_copyWeak(&v22, &location);
  v9 = v8;
  v20 = v9;
  v21 = v23;
  v10 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__VUIConcurrentEvaluator_addEvaluationBlock_forKey___block_invoke_2;
  v15[3] = &unk_1E8733B98;
  v18 = v23;
  v11 = v6;
  v17 = v11;
  v12 = v9;
  v16 = v12;
  v13 = _Block_copy(v15);
  v14 = self;
  objc_sync_enter(v14);
  [(VUIConcurrentEvaluator *)v14 _insertFetcher:v13 getter:v10 forKey:v7];
  [(VUIConcurrentEvaluator *)v14 _scheduleFetchRelayed:0];
  objc_sync_exit(v14);

  objc_destroyWeak(&v22);
  _Block_object_dispose(v23, 8);

  objc_destroyWeak(&location);
}

id __52__VUIConcurrentEvaluator_addEvaluationBlock_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(*(a1 + 32));
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

intptr_t __52__VUIConcurrentEvaluator_addEvaluationBlock_forKey___block_invoke_2(void *a1)
{
  v2 = (*(a1[5] + 16))();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(VUIConcurrentEvaluator *)v5 _getterForKey:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = v6[2](v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)lockSchedulingForEvaluation:(id)a3
{
  v4 = self;
  v5 = a3;
  objc_sync_enter(v4);
  numberOfSchedulingLocksAcquired = v4->_numberOfSchedulingLocksAcquired;
  v4->_numberOfSchedulingLocksAcquired = numberOfSchedulingLocksAcquired + 1;
  if (!numberOfSchedulingLocksAcquired)
  {
    dispatch_semaphore_wait(v4->_schedulingLock, 0xFFFFFFFFFFFFFFFFLL);
  }

  objc_sync_exit(v4);

  v5[2](v5);
  obj = v4;
  objc_sync_enter(obj);
  v7 = v4->_numberOfSchedulingLocksAcquired - 1;
  v4->_numberOfSchedulingLocksAcquired = v7;
  if (!v7)
  {
    dispatch_semaphore_signal(obj[6]);
  }

  objc_sync_exit(obj);
}

- (void)_insertFetcher:(id)a3 getter:(id)a4 forKey:(id)a5
{
  aBlock = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_fetchers)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    fetchers = self->_fetchers;
    self->_fetchers = v10;
  }

  v12 = _Block_copy(aBlock);
  [(NSMutableDictionary *)self->_fetchers setObject:v12 forKeyedSubscript:v9];

  orderedKeys = self->_orderedKeys;
  if (!orderedKeys)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v15 = self->_orderedKeys;
    self->_orderedKeys = v14;

    orderedKeys = self->_orderedKeys;
  }

  [(NSMutableArray *)orderedKeys removeObject:v9];
  [(NSMutableArray *)self->_orderedKeys addObject:v9];
  if (!self->_getters)
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    getters = self->_getters;
    self->_getters = v16;
  }

  v18 = _Block_copy(v8);
  [(NSMutableDictionary *)self->_getters setObject:v18 forKeyedSubscript:v9];
}

- (id)_removeFetcherForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
LABEL_4:
    [(NSMutableArray *)self->_orderedKeys removeObject:v6];
    v7 = [(NSMutableDictionary *)self->_fetchers objectForKeyedSubscript:v6];
    [(NSMutableDictionary *)self->_fetchers removeObjectForKey:v6];
    goto LABEL_5;
  }

  v6 = [(NSMutableArray *)self->_orderedKeys firstObject];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:
  v8 = _Block_copy(v7);

  return v8;
}

- (id)_getterForKey:(id)a3
{
  v4 = a3;
  v5 = [(VUIConcurrentEvaluator *)self _removeFetcherForKey:v4];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }

  v7 = [(NSMutableDictionary *)self->_getters objectForKeyedSubscript:v4];

  return v7;
}

- (void)_scheduleFetchRelayed:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __48__VUIConcurrentEvaluator__scheduleFetchRelayed___block_invoke;
  v12 = &unk_1E872E4B8;
  objc_copyWeak(&v13, &location);
  v5 = _Block_copy(&v9);
  if (v3)
  {
    --self->_activeFetchCount;
  }

  if ([(NSMutableArray *)self->_orderedKeys count:v9])
  {
    activeFetchCount = self->_activeFetchCount;
    if (!activeFetchCount)
    {
      v7 = 1;
      goto LABEL_9;
    }

    if (activeFetchCount < [(VUIConcurrentEvaluator *)self concurrencyCount]&& !self->_numberOfSchedulingLocksAcquired)
    {
      v7 = self->_activeFetchCount + 1;
LABEL_9:
      self->_activeFetchCount = v7;
      v8 = [(VUIConcurrentEvaluator *)self queue];
      dispatch_async(v8, v5);
    }
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __48__VUIConcurrentEvaluator__scheduleFetchRelayed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    dispatch_semaphore_wait(WeakRetained[6], 0xFFFFFFFFFFFFFFFFLL);
    dispatch_semaphore_signal(v5[6]);
    v2 = v5;
    objc_sync_enter(v2);
    v3 = [(dispatch_semaphore_t *)v2 _removeFetcherForKey:0];
    [(dispatch_semaphore_t *)v2 _scheduleFetchRelayed:0];
    objc_sync_exit(v2);

    if (v3)
    {
      v3[2](v3);
    }

    v4 = v2;
    objc_sync_enter(v4);
    [(dispatch_semaphore_t *)v4 _scheduleFetchRelayed:1];
    objc_sync_exit(v4);

    WeakRetained = v5;
  }
}

@end