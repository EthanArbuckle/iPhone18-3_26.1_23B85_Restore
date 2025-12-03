@interface HKSPObserverSet
- (BOOL)containsObserver:(id)observer;
- (HKSPObserverSet)init;
- (HKSPObserverSet)initWithCallbackScheduler:(id)scheduler;
- (id)description;
- (id)enumerateObserversWithFutureBlock:(id)block;
- (unint64_t)count;
- (void)_withLock:(id)lock;
- (void)addObserver:(id)observer callbackScheduler:(id)scheduler wasFirst:(BOOL *)first;
- (void)enumerateObserversWithBlock:(id)block;
- (void)removeAllObservers;
- (void)removeObserver:(id)observer wasLast:(BOOL *)last;
@end

@implementation HKSPObserverSet

- (HKSPObserverSet)init
{
  hkspMainThreadScheduler = [MEMORY[0x277D2C938] hkspMainThreadScheduler];
  v4 = [(HKSPObserverSet *)self initWithCallbackScheduler:hkspMainThreadScheduler];

  return v4;
}

- (HKSPObserverSet)initWithCallbackScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v15.receiver = self;
  v15.super_class = HKSPObserverSet;
  v5 = [(HKSPObserverSet *)&v15 init];
  v6 = v5;
  if (v5)
  {
    if (schedulerCopy)
    {
      v7 = schedulerCopy;
      callbackScheduler = v6->_callbackScheduler;
      v6->_callbackScheduler = v7;
    }

    else
    {
      callbackScheduler = HKSPDispatchQueueName(v5, 0);
      v9 = HKSPSerialQueueBackedSchedulerWithQoS(callbackScheduler, QOS_CLASS_UNSPECIFIED);
      v10 = v6->_callbackScheduler;
      v6->_callbackScheduler = v9;
    }

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observerRecords = v6->_observerRecords;
    v6->_observerRecords = weakToStrongObjectsMapTable;

    v6->_observersLock._os_unfair_lock_opaque = 0;
    v13 = v6;
  }

  return v6;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_observersLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)addObserver:(id)observer callbackScheduler:(id)scheduler wasFirst:(BOOL *)first
{
  observerCopy = observer;
  schedulerCopy = scheduler;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPObserverSet.m" lineNumber:63 description:@"observer cannot be nil"];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__HKSPObserverSet_addObserver_callbackScheduler_wasFirst___block_invoke;
  v14[3] = &unk_279C74168;
  v14[4] = self;
  v15 = observerCopy;
  v16 = schedulerCopy;
  firstCopy = first;
  v11 = schedulerCopy;
  v12 = observerCopy;
  [(HKSPObserverSet *)self _withLock:v14];
}

void __58__HKSPObserverSet_addObserver_callbackScheduler_wasFirst___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [[_HKSPObserverRecord alloc] initWithObserver:*(a1 + 40) callbackScheduler:*(a1 + 48)];
  [v2 setObject:v3 forKey:*(a1 + 40)];

  if (*(a1 + 56))
  {
    **(a1 + 56) = [*(*(a1 + 32) + 24) count] == 1;
  }
}

- (void)removeObserver:(id)observer wasLast:(BOOL *)last
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPObserverSet.m" lineNumber:78 description:@"observer cannot be nil"];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__HKSPObserverSet_removeObserver_wasLast___block_invoke;
  v10[3] = &unk_279C74190;
  v10[4] = self;
  v11 = observerCopy;
  lastCopy = last;
  v8 = observerCopy;
  [(HKSPObserverSet *)self _withLock:v10];
}

uint64_t __42__HKSPObserverSet_removeObserver_wasLast___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  if (*(a1 + 48))
  {
    result = [*(*(a1 + 32) + 24) count];
    **(a1 + 48) = result == 0;
  }

  return result;
}

- (void)removeAllObservers
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __37__HKSPObserverSet_removeAllObservers__block_invoke;
  v2[3] = &unk_279C74258;
  v2[4] = self;
  [(HKSPObserverSet *)self _withLock:v2];
}

- (void)enumerateObserversWithBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HKSPObserverSet_enumerateObserversWithBlock___block_invoke;
  v7[3] = &unk_279C741B8;
  v8 = blockCopy;
  v5 = blockCopy;
  v6 = [(HKSPObserverSet *)self enumerateObserversWithFutureBlock:v7];
}

uint64_t __47__HKSPObserverSet_enumerateObserversWithBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = MEMORY[0x277D2C900];

  return [v1 futureWithNoResult];
}

- (id)enumerateObserversWithFutureBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__HKSPObserverSet_enumerateObserversWithFutureBlock___block_invoke;
  v28[3] = &unk_279C741E0;
  v28[4] = self;
  v28[5] = &v29;
  selfCopy = self;
  [(HKSPObserverSet *)self _withLock:v28];
  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v30[5];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        observer = [v10 observer];

        if (observer)
        {
          callbackScheduler = [v10 callbackScheduler];
          callbackScheduler = callbackScheduler;
          if (!callbackScheduler)
          {
            callbackScheduler = selfCopy->_callbackScheduler;
          }

          v14 = callbackScheduler;

          v15 = objc_opt_new();
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __53__HKSPObserverSet_enumerateObserversWithFutureBlock___block_invoke_2;
          v21[3] = &unk_279C74208;
          v23 = blockCopy;
          v21[4] = v10;
          v16 = v15;
          v22 = v16;
          [(NAScheduler *)v14 performBlock:v21];
          [v5 addObject:v16];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v7);
  }

  v17 = [MEMORY[0x277D2C900] combineAllFutures:v5];

  _Block_object_dispose(&v29, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __53__HKSPObserverSet_enumerateObserversWithFutureBlock___block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 24) objectEnumerator];
  v2 = [v6 allObjects];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __53__HKSPObserverSet_enumerateObserversWithFutureBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v6 = [*(a1 + 32) observer];
  v3 = (*(v2 + 16))(v2, v6);
  v4 = [*(a1 + 40) completionHandlerAdapter];
  v5 = [v3 addCompletionBlock:v4];
}

- (BOOL)containsObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPObserverSet.m" lineNumber:125 description:@"observer cannot be nil"];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__HKSPObserverSet_containsObserver___block_invoke;
  v10[3] = &unk_279C74230;
  v12 = &v13;
  v10[4] = self;
  v6 = observerCopy;
  v11 = v6;
  [(HKSPObserverSet *)self _withLock:v10];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __36__HKSPObserverSet_containsObserver___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;
}

- (unint64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__HKSPObserverSet_count__block_invoke;
  v4[3] = &unk_279C741E0;
  v4[4] = self;
  v4[5] = &v5;
  [(HKSPObserverSet *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __24__HKSPObserverSet_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__HKSPObserverSet_description__block_invoke;
  v4[3] = &unk_279C741E0;
  v4[4] = self;
  v4[5] = &v5;
  [(HKSPObserverSet *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __30__HKSPObserverSet_description__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) dictionaryRepresentation];
  v2 = [v5 description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end