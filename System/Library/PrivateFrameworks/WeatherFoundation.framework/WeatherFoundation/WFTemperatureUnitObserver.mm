@interface WFTemperatureUnitObserver
+ (id)sharedObserver;
- (BOOL)removeBlockObserverWithHandle:(id)handle;
- (BOOL)removeObserver:(id)observer;
- (OS_dispatch_queue)callbackQueue;
- (id)_init;
- (id)addBlockObserver:(id)observer;
- (int)temperatureUnit;
- (void)_updateTemperatureUnit;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)q_notifyObserversOfUpdatedTemperatureUnit:(int)unit;
- (void)q_updateTemperatureUnit;
- (void)removeAllObservers;
@end

@implementation WFTemperatureUnitObserver

+ (id)sharedObserver
{
  if (sharedObserver_onceToken != -1)
  {
    +[WFTemperatureUnitObserver sharedObserver];
  }

  v3 = sharedObserver_defaultObserver;

  return v3;
}

uint64_t __43__WFTemperatureUnitObserver_sharedObserver__block_invoke()
{
  sharedObserver_defaultObserver = [[WFTemperatureUnitObserver alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = WFTemperatureUnitObserver;
  v2 = [(WFTemperatureUnitObserver *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(WFTemperatureUnitObserver *)v2 setDataSynchronizationLock:0];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.WeatherFoundation.temperatureUnitUpdateQueue", v4);
    [(WFTemperatureUnitObserver *)v3 setTemperatureUnitUpdateQueue:v5];

    v6 = objc_opt_new();
    [(WFTemperatureUnitObserver *)v3 setBlockObserversForUUID:v6];

    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    [(WFTemperatureUnitObserver *)v3 setObserverObjects:v7];

    [(WFTemperatureUnitObserver *)v3 setUserTemperatureUnit:0];
    [(WFTemperatureUnitObserver *)v3 _updateTemperatureUnit];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, __WFTemperatureUnitObserverTrampoline, @"com.apple.weather.temperatureUnitsChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__updateTemperatureUnit name:*MEMORY[0x277CBE620] object:0];
  }

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(WFTemperatureUnitObserver *)self removeAllObservers];
  v4.receiver = self;
  v4.super_class = WFTemperatureUnitObserver;
  [(WFTemperatureUnitObserver *)&v4 dealloc];
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

- (int)temperatureUnit
{
  os_unfair_lock_lock_with_options();
  userTemperatureUnit = [(WFTemperatureUnitObserver *)self userTemperatureUnit];
  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  return userTemperatureUnit;
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock_with_options();
    observerObjects = [(WFTemperatureUnitObserver *)self observerObjects];
    [observerObjects addObject:observerCopy];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }
}

- (BOOL)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_lock_lock_with_options();
    observerObjects = [(WFTemperatureUnitObserver *)self observerObjects];
    v6 = [observerObjects containsObject:observerCopy];

    if (v6)
    {
      observerObjects2 = [(WFTemperatureUnitObserver *)self observerObjects];
      [observerObjects2 removeObject:observerCopy];
    }

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)addBlockObserver:(id)observer
{
  if (observer)
  {
    v4 = MEMORY[0x277CCAD78];
    observerCopy = observer;
    uUID = [v4 UUID];
    os_unfair_lock_lock_with_options();
    blockObserversForUUID = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
    v8 = [observerCopy copy];

    v9 = MEMORY[0x2743D5580](v8);
    [blockObserversForUUID setObject:v9 forKey:uUID];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }

  else
  {
    uUID = 0;
  }

  return uUID;
}

- (BOOL)removeBlockObserverWithHandle:(id)handle
{
  handleCopy = handle;
  if (handleCopy)
  {
    os_unfair_lock_lock_with_options();
    blockObserversForUUID = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
    v6 = CFDictionaryContainsKey(blockObserversForUUID, handleCopy);
    v7 = v6 != 0;

    if (v6)
    {
      blockObserversForUUID2 = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
      [blockObserversForUUID2 removeObjectForKey:handleCopy];
    }

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateTemperatureUnit
{
  temperatureUnitUpdateQueue = [(WFTemperatureUnitObserver *)self temperatureUnitUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WFTemperatureUnitObserver__updateTemperatureUnit__block_invoke;
  block[3] = &unk_279E6D9A8;
  block[4] = self;
  dispatch_async(temperatureUnitUpdateQueue, block);
}

- (void)q_updateTemperatureUnit
{
  temperatureUnitUpdateQueue = [(WFTemperatureUnitObserver *)self temperatureUnitUpdateQueue];
  dispatch_assert_queue_V2(temperatureUnitUpdateQueue);

  objc_initWeak(&location, self);
  v4 = [WFTemperatureUnitRequest alloc];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __52__WFTemperatureUnitObserver_q_updateTemperatureUnit__block_invoke;
  v9 = &unk_279E6E070;
  objc_copyWeak(&v10, &location);
  v5 = [(WFTemperatureUnitRequest *)v4 initWithResultHandler:&v6];
  [(WFTask *)v5 executeSynchronously:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __52__WFTemperatureUnitObserver_q_updateTemperatureUnit__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained temperatureUnitUpdateQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__WFTemperatureUnitObserver_q_updateTemperatureUnit__block_invoke_2;
  v5[3] = &unk_279E6E048;
  v5[4] = WeakRetained;
  v6 = a2;
  dispatch_async(v4, v5);
}

void __52__WFTemperatureUnitObserver_q_updateTemperatureUnit__block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = [*(a1 + 32) userTemperatureUnit];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = v3 == v2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = v4 + 2;

    os_unfair_lock_unlock(v6);
  }

  else
  {
    [(os_unfair_lock_s *)v4 setUserTemperatureUnit:?];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    [v7 q_notifyObserversOfUpdatedTemperatureUnit:v8];
  }
}

- (void)q_notifyObserversOfUpdatedTemperatureUnit:(int)unit
{
  temperatureUnitUpdateQueue = [(WFTemperatureUnitObserver *)self temperatureUnitUpdateQueue];
  dispatch_assert_queue_V2(temperatureUnitUpdateQueue);

  os_unfair_lock_lock_with_options();
  observerObjects = [(WFTemperatureUnitObserver *)self observerObjects];
  objectEnumerator = [observerObjects objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  blockObserversForUUID = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
  allValues = [blockObserversForUUID allValues];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  v11 = [allValues count];
  callbackQueue = [(WFTemperatureUnitObserver *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WFTemperatureUnitObserver_q_notifyObserversOfUpdatedTemperatureUnit___block_invoke;
  block[3] = &unk_279E6E098;
  v22 = allValues;
  unitCopy = unit;
  v13 = allValues;
  dispatch_apply(v11, callbackQueue, block);

  v14 = [allObjects count];
  callbackQueue2 = [(WFTemperatureUnitObserver *)self callbackQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__WFTemperatureUnitObserver_q_notifyObserversOfUpdatedTemperatureUnit___block_invoke_2;
  v17[3] = &unk_279E6E0C0;
  v18 = allObjects;
  selfCopy = self;
  unitCopy2 = unit;
  v16 = allObjects;
  dispatch_apply(v14, callbackQueue2, v17);
}

void __71__WFTemperatureUnitObserver_q_notifyObserversOfUpdatedTemperatureUnit___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v3[2](v3, *(a1 + 40));
}

void __71__WFTemperatureUnitObserver_q_notifyObserversOfUpdatedTemperatureUnit___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  [v3 temperatureUnitObserver:*(a1 + 40) didChangeTemperatureUnitTo:*(a1 + 48)];
}

- (void)removeAllObservers
{
  os_unfair_lock_lock_with_options();
  blockObserversForUUID = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
  [blockObserversForUUID removeAllObjects];

  observerObjects = [(WFTemperatureUnitObserver *)self observerObjects];
  [observerObjects removeAllObjects];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
}

@end