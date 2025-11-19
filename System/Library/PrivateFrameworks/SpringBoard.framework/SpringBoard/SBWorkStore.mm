@interface SBWorkStore
- (NSArray)keysWithWork;
- (SBWorkStore)initWithMaximumNumberOfWorkItemsPerKey:(unint64_t)a3;
- (id)debugDescription;
- (id)dequeueWorkForKey:(id)a3;
- (void)_notifyObserversWorkDidChange;
- (void)_workQueue_expireWorkForKey:(id)a3;
- (void)addObserver:(id)a3;
- (void)addWorkItem:(id)a3 forKey:(id)a4;
- (void)removeObserver:(id)a3;
- (void)setWorkExpirationPeriod:(double)a3 forKey:(id)a4;
@end

@implementation SBWorkStore

- (SBWorkStore)initWithMaximumNumberOfWorkItemsPerKey:(unint64_t)a3
{
  v16.receiver = self;
  v16.super_class = SBWorkStore;
  v4 = [(SBWorkStore *)&v16 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    workItemsPerKey = v4->_workItemsPerKey;
    v4->_workItemsPerKey = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keysWithWork = v4->_keysWithWork;
    v4->_keysWithWork = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    workExpirationPeriods = v4->_workExpirationPeriods;
    v4->_workExpirationPeriods = v9;

    Serial = BSDispatchQueueCreateSerial();
    workQueue = v4->_workQueue;
    v4->_workQueue = Serial;

    v13 = BSDispatchQueueCreateSerial();
    observerQueue = v4->_observerQueue;
    v4->_observerQueue = v13;

    v4->_maxWorkPerKey = a3;
  }

  return v4;
}

- (NSArray)keysWithWork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__122;
  v10 = __Block_byref_object_dispose__122;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__SBWorkStore_keysWithWork__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __27__SBWorkStore_keysWithWork__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observerQueue = self->_observerQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27__SBWorkStore_addObserver___block_invoke;
    v7[3] = &unk_2783A92D8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(observerQueue, v7);
  }
}

uint64_t __27__SBWorkStore_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SBWorkStore_removeObserver___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

- (void)addWorkItem:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__SBWorkStore_addWorkItem_forKey___block_invoke;
    block[3] = &unk_2783A8ED8;
    v11 = v7;
    v12 = self;
    v13 = v6;
    dispatch_async(workQueue, block);
  }
}

void __34__SBWorkStore_addWorkItem_forKey___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) copy];
  v2 = [*(*(a1 + 40) + 8) objectForKey:?];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*(*(a1 + 40) + 8) setObject:v2 forKey:v6];
  }

  [*(a1 + 40) _workQueue_expireWorkForKey:*(a1 + 32)];
  [v2 insertObject:*(a1 + 48) atIndex:0];
  v3 = *(a1 + 40);
  if (*(v3 + 40))
  {
    v4 = [v2 count];
    v3 = *(a1 + 40);
    v5 = *(v3 + 40);
    if (v4 > v5)
    {
      [v2 removeObjectsInRange:{v5, objc_msgSend(v2, "count") - *(*(a1 + 40) + 40)}];
      v3 = *(a1 + 40);
    }
  }

  [*(v3 + 16) removeObject:v6];
  [*(*(a1 + 40) + 16) insertObject:v6 atIndex:0];
  [*(a1 + 40) _notifyObserversWorkDidChange];
}

- (id)dequeueWorkForKey:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__122;
  v17 = __Block_byref_object_dispose__122;
  v18 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SBWorkStore_dequeueWorkForKey___block_invoke;
  block[3] = &unk_2783AEA70;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(workQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __33__SBWorkStore_dequeueWorkForKey___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 8) objectForKey:?];

    if (v2)
    {
      [*(a1 + 40) _workQueue_expireWorkForKey:*(a1 + 32)];
      v3 = [*(*(a1 + 40) + 8) objectForKey:*(a1 + 32)];
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      [*(*(a1 + 40) + 8) removeObjectForKey:*(a1 + 32)];
      [*(*(a1 + 40) + 16) removeObject:*(a1 + 32)];
      v6 = *(a1 + 40);

      [v6 _notifyObserversWorkDidChange];
    }
  }
}

- (void)setWorkExpirationPeriod:(double)a3 forKey:(id)a4
{
  v6 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SBWorkStore_setWorkExpirationPeriod_forKey___block_invoke;
  block[3] = &unk_2783AB2A8;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_sync(workQueue, block);
}

void __46__SBWorkStore_setWorkExpirationPeriod_forKey___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 24);
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    [v2 setObject:v3 forKey:*(a1 + 32)];
  }
}

- (void)_workQueue_expireWorkForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19 = v4;
    v5 = [(NSMutableDictionary *)self->_workItemsPerKey objectForKey:v4];
    v6 = [v5 count];

    v4 = v19;
    if (v6)
    {
      defaultWorkExpirationPeriod = self->_defaultWorkExpirationPeriod;
      v8 = [(NSMutableDictionary *)self->_workExpirationPeriods objectForKey:v19];
      v9 = v8;
      if (v8)
      {
        [v8 doubleValue];
        defaultWorkExpirationPeriod = v10;
      }

      if (defaultWorkExpirationPeriod > 0.0)
      {
        v11 = [(NSMutableDictionary *)self->_workItemsPerKey objectForKey:v19];
        v12 = [MEMORY[0x277CBEAA8] date];
        v13 = [v12 dateByAddingTimeInterval:-defaultWorkExpirationPeriod];

        if ([v11 count])
        {
          v14 = 0;
          v15 = 0;
          do
          {
            v16 = [v11 objectAtIndex:v14];
            v17 = [v16 creationDate];
            v18 = [v17 compare:v13];

            if (v18 == -1)
            {
              [v11 removeObjectAtIndex:v14];
              --v15;
            }

            v14 = ++v15;
          }

          while ([v11 count] > v15);
        }
      }

      v4 = v19;
    }
  }
}

- (void)_notifyObserversWorkDidChange
{
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SBWorkStore__notifyObserversWorkDidChange__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(observerQueue, block);
}

void __44__SBWorkStore__notifyObserversWorkDidChange__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) workDidChange:{*(a1 + 32), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)debugDescription
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__122;
  v17 = __Block_byref_object_dispose__122;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__122;
  v11 = __Block_byref_object_dispose__122;
  v12 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SBWorkStore_debugDescription__block_invoke;
  block[3] = &unk_2783C15E8;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v13;
  block[7] = &v7;
  dispatch_sync(workQueue, block);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %p maxWork: %d \nkeysWithWork: %@ \nwork: %@>", objc_opt_class(), self, v20[3], v14[5], v8[5]];;
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v4;
}

void __31__SBWorkStore_debugDescription__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 40);
  v2 = [*(a1[4] + 16) copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 8) copy];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end