@interface VUIConcurrentEvaluator
+ (id)idleEvaluator;
- (VUIConcurrentEvaluator)initWithQueue:(id)queue concurrencyCount:(int64_t)count;
- (id)_getterForKey:(id)key;
- (id)_removeFetcherForKey:(id)key;
- (id)objectForKey:(id)key;
- (void)_insertFetcher:(id)fetcher getter:(id)getter forKey:(id)key;
- (void)_scheduleFetchRelayed:(BOOL)relayed;
- (void)addEvaluationBlock:(id)block forKey:(id)key;
- (void)lockSchedulingForEvaluation:(id)evaluation;
@end

@implementation VUIConcurrentEvaluator

+ (id)idleEvaluator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VUIConcurrentEvaluator_idleEvaluator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (VUIConcurrentEvaluator)initWithQueue:(id)queue concurrencyCount:(int64_t)count
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = VUIConcurrentEvaluator;
  v8 = [(VUIConcurrentEvaluator *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    countCopy = 10;
    if (count < 10)
    {
      countCopy = count;
    }

    v9->_concurrencyCount = countCopy;
    v11 = dispatch_semaphore_create(1);
    schedulingLock = v9->_schedulingLock;
    v9->_schedulingLock = v11;
  }

  return v9;
}

- (void)addEvaluationBlock:(id)block forKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
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
  v11 = blockCopy;
  v17 = v11;
  v12 = v9;
  v16 = v12;
  v13 = _Block_copy(v15);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(VUIConcurrentEvaluator *)selfCopy _insertFetcher:v13 getter:v10 forKey:keyCopy];
  [(VUIConcurrentEvaluator *)selfCopy _scheduleFetchRelayed:0];
  objc_sync_exit(selfCopy);

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

- (id)objectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(VUIConcurrentEvaluator *)selfCopy _getterForKey:keyCopy];
  objc_sync_exit(selfCopy);

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

- (void)lockSchedulingForEvaluation:(id)evaluation
{
  selfCopy = self;
  evaluationCopy = evaluation;
  objc_sync_enter(selfCopy);
  numberOfSchedulingLocksAcquired = selfCopy->_numberOfSchedulingLocksAcquired;
  selfCopy->_numberOfSchedulingLocksAcquired = numberOfSchedulingLocksAcquired + 1;
  if (!numberOfSchedulingLocksAcquired)
  {
    dispatch_semaphore_wait(selfCopy->_schedulingLock, 0xFFFFFFFFFFFFFFFFLL);
  }

  objc_sync_exit(selfCopy);

  evaluationCopy[2](evaluationCopy);
  obj = selfCopy;
  objc_sync_enter(obj);
  v7 = selfCopy->_numberOfSchedulingLocksAcquired - 1;
  selfCopy->_numberOfSchedulingLocksAcquired = v7;
  if (!v7)
  {
    dispatch_semaphore_signal(obj[6]);
  }

  objc_sync_exit(obj);
}

- (void)_insertFetcher:(id)fetcher getter:(id)getter forKey:(id)key
{
  aBlock = fetcher;
  getterCopy = getter;
  keyCopy = key;
  if (!self->_fetchers)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    fetchers = self->_fetchers;
    self->_fetchers = v10;
  }

  v12 = _Block_copy(aBlock);
  [(NSMutableDictionary *)self->_fetchers setObject:v12 forKeyedSubscript:keyCopy];

  orderedKeys = self->_orderedKeys;
  if (!orderedKeys)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
    v15 = self->_orderedKeys;
    self->_orderedKeys = v14;

    orderedKeys = self->_orderedKeys;
  }

  [(NSMutableArray *)orderedKeys removeObject:keyCopy];
  [(NSMutableArray *)self->_orderedKeys addObject:keyCopy];
  if (!self->_getters)
  {
    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    getters = self->_getters;
    self->_getters = v16;
  }

  v18 = _Block_copy(getterCopy);
  [(NSMutableDictionary *)self->_getters setObject:v18 forKeyedSubscript:keyCopy];
}

- (id)_removeFetcherForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (keyCopy)
  {
    firstObject = keyCopy;
LABEL_4:
    [(NSMutableArray *)self->_orderedKeys removeObject:firstObject];
    v7 = [(NSMutableDictionary *)self->_fetchers objectForKeyedSubscript:firstObject];
    [(NSMutableDictionary *)self->_fetchers removeObjectForKey:firstObject];
    goto LABEL_5;
  }

  firstObject = [(NSMutableArray *)self->_orderedKeys firstObject];
  if (firstObject)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:
  v8 = _Block_copy(v7);

  return v8;
}

- (id)_getterForKey:(id)key
{
  keyCopy = key;
  v5 = [(VUIConcurrentEvaluator *)self _removeFetcherForKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }

  v7 = [(NSMutableDictionary *)self->_getters objectForKeyedSubscript:keyCopy];

  return v7;
}

- (void)_scheduleFetchRelayed:(BOOL)relayed
{
  relayedCopy = relayed;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __48__VUIConcurrentEvaluator__scheduleFetchRelayed___block_invoke;
  v12 = &unk_1E872E4B8;
  objc_copyWeak(&v13, &location);
  v5 = _Block_copy(&v9);
  if (relayedCopy)
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
      queue = [(VUIConcurrentEvaluator *)self queue];
      dispatch_async(queue, v5);
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