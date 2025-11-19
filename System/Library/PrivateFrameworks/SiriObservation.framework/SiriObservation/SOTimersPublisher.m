@interface SOTimersPublisher
- (SOTimersPublisher)init;
- (void)_createNewSnapshotWithCompletion:(id)a3;
- (void)_notifySubscribersOfEvent:(int64_t)a3;
- (void)_startObserving;
- (void)addSubscriber:(id)a3;
- (void)dealloc;
- (void)getCurrentSnapshotWithCompletion:(id)a3;
- (void)removeSubscriber:(id)a3;
@end

@implementation SOTimersPublisher

- (void)_createNewSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_group_enter(self->_timersPublisherDispatchGroup);
  v5 = [(MTTimerManager *)self->_timerManager timers];
  if (v5)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__SOTimersPublisher__createNewSnapshotWithCompletion___block_invoke;
    v11[3] = &unk_279C3D610;
    v11[4] = self;
    v6 = v4;
    v12 = v6;
    v7 = [v5 addSuccessBlock:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__SOTimersPublisher__createNewSnapshotWithCompletion___block_invoke_3;
    v9[3] = &unk_279C3D638;
    v9[4] = self;
    v10 = v6;
    v8 = [v5 addFailureBlock:v9];
  }
}

void __54__SOTimersPublisher__createNewSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v2;
  v32 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v32)
  {
    v30 = *v39;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v38 + 1) + 8 * i);
        v5 = [v4 timerID];
        v34 = [SOTimer alloc];
        v6 = [v4 timerURL];
        v33 = [v4 isFiring];
        v7 = [v4 title];
        v8 = [v4 state];
        [v4 duration];
        v10 = v9;
        v11 = [v4 siriContext];
        v12 = [v11 objectForKeyedSubscript:@"MTTimerIntentSupportSiriContextTimerTypeKey"];

        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13 = [v12 integerValue];
        }

        else
        {
          v13 = 1;
        }

        [v4 remainingTime];
        v15 = v14;
        v16 = [v4 fireDate];
        v17 = [v4 firedDate];
        v18 = [v4 dismissedDate];
        v19 = [v4 lastModifiedDate];
        v20 = [(SOTimer *)v34 initWithTimerID:v5 timerURL:v6 isFiring:v33 title:v7 state:v8 duration:v13 type:v10 fireTimeInterval:v15 fireDate:v16 firedDate:v17 dismissedDate:v18 lastModifiedDate:v19];

        [v31 setObject:v20 forKey:v5];
      }

      v32 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v32);
  }

  v21 = [SOTimersSnapshot alloc];
  v22 = [MEMORY[0x277CBEAA8] now];
  v23 = [(SOTimersSnapshot *)v21 initWithDate:v22 timersByID:v31];

  v24 = *(a1 + 32);
  v25 = *(v24 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SOTimersPublisher__createNewSnapshotWithCompletion___block_invoke_2;
  block[3] = &unk_279C3D5E8;
  block[4] = v24;
  v36 = v23;
  v37 = *(a1 + 40);
  v26 = v23;
  dispatch_async(v25, block);

  v27 = *MEMORY[0x277D85DE8];
}

void __54__SOTimersPublisher__createNewSnapshotWithCompletion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  dispatch_group_leave(v2);
}

void __54__SOTimersPublisher__createNewSnapshotWithCompletion___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  v3 = *(*(a1 + 32) + 16);

  dispatch_group_leave(v3);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SOTimersPublisher;
  [(SOTimersPublisher *)&v4 dealloc];
}

- (void)_startObserving
{
  if (self->_timerManager)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = getMTTimerManagerTimersAdded();
    [v10 addObserver:self selector:sel_timersAdded_ name:v3 object:self->_timerManager];

    v4 = getMTTimerManagerTimersUpdated();
    [v10 addObserver:self selector:sel_timersUpdated_ name:v4 object:self->_timerManager];

    v5 = getMTTimerManagerTimersRemoved();
    [v10 addObserver:self selector:sel_timersRemoved_ name:v5 object:self->_timerManager];

    v6 = getMTTimerManagerTimerFired();
    [v10 addObserver:self selector:sel_timerFired_ name:v6 object:self->_timerManager];

    v7 = getMTTimerManagerFiringTimerChanged();
    [v10 addObserver:self selector:sel_firingTimerChanged_ name:v7 object:self->_timerManager];

    v8 = getMTTimerManagerFiringTimerDismissed();
    [v10 addObserver:self selector:sel_firingTimerDismissed_ name:v8 object:self->_timerManager];

    v9 = getMTTimerManagerStateReset();
    [v10 addObserver:self selector:sel_stateReset_ name:v9 object:self->_timerManager];
  }
}

- (void)_notifySubscribersOfEvent:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__SOTimersPublisher__notifySubscribersOfEvent___block_invoke;
  v3[3] = &unk_279C3D5C0;
  v3[4] = self;
  v3[5] = a3;
  [(SOTimersPublisher *)self _createNewSnapshotWithCompletion:v3];
}

void __47__SOTimersPublisher__notifySubscribersOfEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5 && !a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = *(*(a1 + 32) + 24);
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) snapshotAvailable:v5 forEvent:{*(a1 + 40), v12}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeSubscriber:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    timersPublisherQueue = self->_timersPublisherQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SOTimersPublisher_removeSubscriber___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = v4;
    dispatch_async(timersPublisherQueue, v7);
  }
}

- (void)addSubscriber:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__SOTimersPublisher_addSubscriber___block_invoke;
    v6[3] = &unk_279C3D570;
    v6[4] = self;
    v7 = v4;
    [(SOTimersPublisher *)self getCurrentSnapshotWithCompletion:v6];
  }
}

void __35__SOTimersPublisher_addSubscriber___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  if (v5)
  {
    NSLog(&cfstr_Sotimerspublis_0.isa, v5);
  }

  else
  {
    [*(a1 + 40) snapshotAvailable:v6 forEvent:0];
  }
}

- (void)getCurrentSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    timersPublisherQueue = self->_timersPublisherQueue;
    timersPublisherDispatchGroup = self->_timersPublisherDispatchGroup;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SOTimersPublisher_getCurrentSnapshotWithCompletion___block_invoke;
    v8[3] = &unk_279C3D548;
    v8[4] = self;
    v9 = v4;
    dispatch_group_notify(timersPublisherDispatchGroup, timersPublisherQueue, v8);
  }
}

uint64_t __54__SOTimersPublisher_getCurrentSnapshotWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[5];
  if (v4)
  {
    return (*(v3 + 16))(*(a1 + 40), v4, 0);
  }

  else
  {
    return [v2 _createNewSnapshotWithCompletion:v3];
  }
}

- (SOTimersPublisher)init
{
  v14.receiver = self;
  v14.super_class = SOTimersPublisher;
  v2 = [(SOTimersPublisher *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SOTimersPublisher", v3);
    timersPublisherQueue = v2->_timersPublisherQueue;
    v2->_timersPublisherQueue = v4;

    v6 = dispatch_group_create();
    timersPublisherDispatchGroup = v2->_timersPublisherDispatchGroup;
    v2->_timersPublisherDispatchGroup = v6;

    v8 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    subscribers = v2->_subscribers;
    v2->_subscribers = v8;

    v10 = objc_alloc_init(getMTTimerManagerClass());
    timerManager = v2->_timerManager;
    v2->_timerManager = v10;

    typeName = v2->_typeName;
    v2->_typeName = @"SOTimersPublisher";

    [(SOTimersPublisher *)v2 _startObserving];
  }

  return v2;
}

@end