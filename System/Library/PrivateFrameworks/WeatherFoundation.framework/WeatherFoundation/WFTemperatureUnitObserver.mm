@interface WFTemperatureUnitObserver
+ (id)sharedObserver;
- (BOOL)removeBlockObserverWithHandle:(id)a3;
- (BOOL)removeObserver:(id)a3;
- (OS_dispatch_queue)callbackQueue;
- (id)_init;
- (id)addBlockObserver:(id)a3;
- (int)temperatureUnit;
- (void)_updateTemperatureUnit;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)q_notifyObserversOfUpdatedTemperatureUnit:(int)a3;
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
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v3 selector:sel__updateTemperatureUnit name:*MEMORY[0x277CBE620] object:0];
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
  v3 = [(WFTemperatureUnitObserver *)self userTemperatureUnit];
  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  return v3;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock_with_options();
    v5 = [(WFTemperatureUnitObserver *)self observerObjects];
    [v5 addObject:v4];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }
}

- (BOOL)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(WFTemperatureUnitObserver *)self observerObjects];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = [(WFTemperatureUnitObserver *)self observerObjects];
      [v7 removeObject:v4];
    }

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)addBlockObserver:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCAD78];
    v5 = a3;
    v6 = [v4 UUID];
    os_unfair_lock_lock_with_options();
    v7 = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
    v8 = [v5 copy];

    v9 = MEMORY[0x2743D5580](v8);
    [v7 setObject:v9 forKey:v6];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)removeBlockObserverWithHandle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
    v6 = CFDictionaryContainsKey(v5, v4);
    v7 = v6 != 0;

    if (v6)
    {
      v8 = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
      [v8 removeObjectForKey:v4];
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
  v3 = [(WFTemperatureUnitObserver *)self temperatureUnitUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WFTemperatureUnitObserver__updateTemperatureUnit__block_invoke;
  block[3] = &unk_279E6D9A8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)q_updateTemperatureUnit
{
  v3 = [(WFTemperatureUnitObserver *)self temperatureUnitUpdateQueue];
  dispatch_assert_queue_V2(v3);

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

- (void)q_notifyObserversOfUpdatedTemperatureUnit:(int)a3
{
  v5 = [(WFTemperatureUnitObserver *)self temperatureUnitUpdateQueue];
  dispatch_assert_queue_V2(v5);

  os_unfair_lock_lock_with_options();
  v6 = [(WFTemperatureUnitObserver *)self observerObjects];
  v7 = [v6 objectEnumerator];
  v8 = [v7 allObjects];

  v9 = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
  v10 = [v9 allValues];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  v11 = [v10 count];
  v12 = [(WFTemperatureUnitObserver *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__WFTemperatureUnitObserver_q_notifyObserversOfUpdatedTemperatureUnit___block_invoke;
  block[3] = &unk_279E6E098;
  v22 = v10;
  v23 = a3;
  v13 = v10;
  dispatch_apply(v11, v12, block);

  v14 = [v8 count];
  v15 = [(WFTemperatureUnitObserver *)self callbackQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__WFTemperatureUnitObserver_q_notifyObserversOfUpdatedTemperatureUnit___block_invoke_2;
  v17[3] = &unk_279E6E0C0;
  v18 = v8;
  v19 = self;
  v20 = a3;
  v16 = v8;
  dispatch_apply(v14, v15, v17);
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
  v3 = [(WFTemperatureUnitObserver *)self blockObserversForUUID];
  [v3 removeAllObjects];

  v4 = [(WFTemperatureUnitObserver *)self observerObjects];
  [v4 removeAllObjects];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
}

@end