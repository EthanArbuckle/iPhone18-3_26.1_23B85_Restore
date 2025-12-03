@interface SOAlarmsPublisher
- (SOAlarmsPublisher)init;
- (void)_createNewSnapshotWithCompletion:(id)completion;
- (void)_notifySubscribersOfEvent:(int64_t)event;
- (void)_startObserving;
- (void)addSubscriber:(id)subscriber;
- (void)dealloc;
- (void)getCurrentSnapshotWithCompletion:(id)completion;
- (void)removeSubscriber:(id)subscriber;
@end

@implementation SOAlarmsPublisher

- (void)_createNewSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_group_enter(self->_group);
  v5 = [(MTAlarmManager *)self->_alarmManager alarmsIncludingSleepAlarm:1];
  if (v5)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__SOAlarmsPublisher__createNewSnapshotWithCompletion___block_invoke;
    v11[3] = &unk_279C3D610;
    v11[4] = self;
    v6 = completionCopy;
    v12 = v6;
    v7 = [v5 addSuccessBlock:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__SOAlarmsPublisher__createNewSnapshotWithCompletion___block_invoke_3;
    v9[3] = &unk_279C3D638;
    v9[4] = self;
    v10 = v6;
    v8 = [v5 addFailureBlock:v9];
  }
}

void __54__SOAlarmsPublisher__createNewSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v2;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v25)
  {
    v23 = *v31;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v30 + 1) + 8 * i);
        v5 = [v4 alarmID];
        v6 = [SOAlarm alloc];
        v7 = [v4 alarmURL];
        v8 = [v4 title];
        v9 = [v4 hour];
        v10 = [v4 minute];
        v11 = [v4 repeatSchedule];
        v12 = [v4 isEnabled];
        BYTE1(v19) = [v4 isFiring];
        LOBYTE(v19) = v12;
        v13 = [(SOAlarm *)v6 initWithAlarmID:v5 alarmURL:v7 title:v8 hour:v9 minute:v10 repeatSchedule:v11 isEnabled:v19 isFiring:?];

        [v24 setObject:v13 forKey:v5];
        if ([v4 isFiring])
        {
          [v21 addObject:v5];
        }
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v25);
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SOAlarmsPublisher__createNewSnapshotWithCompletion___block_invoke_2;
  block[3] = &unk_279C3D030;
  block[4] = v14;
  v27 = v21;
  v28 = v24;
  v29 = *(a1 + 40);
  v16 = v24;
  v17 = v21;
  dispatch_async(v15, block);

  v18 = *MEMORY[0x277D85DE8];
}

void __54__SOAlarmsPublisher__createNewSnapshotWithCompletion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);

  dispatch_group_leave(v2);
}

void __54__SOAlarmsPublisher__createNewSnapshotWithCompletion___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB40];
  v3 = [*(*(a1 + 32) + 40) firingAlarmIDs];
  v4 = [v2 orderedSetWithOrderedSet:v3];

  [v4 minusOrderedSet:*(a1 + 40)];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(a1 + 32) + 48) addObject:{*(*(&v20 + 1) + 8 * v9++), v20}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v10 = [SOAlarmsSnapshot alloc];
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [*(a1 + 48) copy];
  v13 = [*(a1 + 40) copy];
  v14 = [*(*(a1 + 32) + 48) copy];
  v15 = [(SOAlarmsSnapshot *)v10 initWithDate:v11 alarmsByID:v12 firingAlarmIDs:v13 dismissedAlarmIDs:v14];

  v16 = *(a1 + 32);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
  v18 = v15;

  (*(*(a1 + 56) + 16))();
  dispatch_group_leave(*(*(a1 + 32) + 16));

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SOAlarmsPublisher;
  [(SOAlarmsPublisher *)&v4 dealloc];
}

- (void)_startObserving
{
  if (self->_alarmManager)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = getMTAlarmManagerAlarmsAdded_127();
    [defaultCenter addObserver:self selector:sel_alarmsAdded_ name:v3 object:self->_alarmManager];

    v4 = getMTAlarmManagerAlarmsUpdated_128();
    [defaultCenter addObserver:self selector:sel_alarmsUpdated_ name:v4 object:self->_alarmManager];

    v5 = getMTAlarmManagerAlarmsRemoved_129();
    [defaultCenter addObserver:self selector:sel_alarmsRemoved_ name:v5 object:self->_alarmManager];

    v6 = getMTAlarmManagerAlarmFired_130();
    [defaultCenter addObserver:self selector:sel_alarmFired_ name:v6 object:self->_alarmManager];

    v7 = getMTAlarmManagerFiringAlarmChanged_131();
    [defaultCenter addObserver:self selector:sel_firingAlarmChanged_ name:v7 object:self->_alarmManager];

    v8 = getMTAlarmManagerFiringAlarmDismissed_132();
    [defaultCenter addObserver:self selector:sel_firingAlarmDismissed_ name:v8 object:self->_alarmManager];

    v9 = getMTAlarmManagerStateReset_133();
    [defaultCenter addObserver:self selector:sel_stateReset_ name:v9 object:self->_alarmManager];
  }
}

- (void)_notifySubscribersOfEvent:(int64_t)event
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__SOAlarmsPublisher__notifySubscribersOfEvent___block_invoke;
  v3[3] = &unk_279C3D008;
  v3[4] = self;
  v3[5] = event;
  [(SOAlarmsPublisher *)self _createNewSnapshotWithCompletion:v3];
}

void __47__SOAlarmsPublisher__notifySubscribersOfEvent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(*(a1 + 32) + 24);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * i) snapshotAvailable:v5 forEvent:{*(a1 + 40), v14}];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  if (*(a1 + 40) == 5)
  {
    [*(*(a1 + 32) + 48) removeAllObjects];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  v5 = subscriberCopy;
  if (subscriberCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SOAlarmsPublisher_removeSubscriber___block_invoke;
    v7[3] = &unk_279C3D598;
    v7[4] = self;
    v8 = subscriberCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  v5 = subscriberCopy;
  if (subscriberCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__SOAlarmsPublisher_addSubscriber___block_invoke;
    v6[3] = &unk_279C3CFE0;
    v6[4] = self;
    v7 = subscriberCopy;
    [(SOAlarmsPublisher *)self getCurrentSnapshotWithCompletion:v6];
  }
}

void __35__SOAlarmsPublisher_addSubscriber___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  if (v5)
  {
    NSLog(&cfstr_Soalarmspublis.isa, v5);
  }

  else
  {
    [*(a1 + 40) snapshotAvailable:v6 forEvent:0];
  }
}

- (void)getCurrentSnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    group = self->_group;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SOAlarmsPublisher_getCurrentSnapshotWithCompletion___block_invoke;
    v8[3] = &unk_279C3D548;
    v8[4] = self;
    v9 = completionCopy;
    dispatch_group_notify(group, queue, v8);
  }
}

uint64_t __54__SOAlarmsPublisher_getCurrentSnapshotWithCompletion___block_invoke(uint64_t a1)
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

- (SOAlarmsPublisher)init
{
  v16.receiver = self;
  v16.super_class = SOAlarmsPublisher;
  v2 = [(SOAlarmsPublisher *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SOAlarmPublisher", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v6;

    v8 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    subscribers = v2->_subscribers;
    v2->_subscribers = v8;

    v10 = objc_alloc_init(getMTAlarmManagerClass_207());
    alarmManager = v2->_alarmManager;
    v2->_alarmManager = v10;

    typeName = v2->_typeName;
    v2->_typeName = @"SOAlarmPublisher";

    v13 = objc_alloc_init(MEMORY[0x277CBEB40]);
    dismissedAlarms = v2->_dismissedAlarms;
    v2->_dismissedAlarms = v13;

    [(SOAlarmsPublisher *)v2 _startObserving];
  }

  return v2;
}

@end