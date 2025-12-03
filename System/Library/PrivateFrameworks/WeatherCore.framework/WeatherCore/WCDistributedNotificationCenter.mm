@interface WCDistributedNotificationCenter
+ (WCDistributedNotificationCenter)defaultCenter;
- (WCDistributedNotificationCenter)init;
- (void)_notifyObserversOfPreferencesChange;
- (void)addObserver:(id)observer;
- (void)postWeatherLocationAuthorizationDidUpdateNotification;
- (void)postWeatherSavedLocationsDidUpdateNotification;
- (void)removeObserver:(id)observer;
- (void)weatherPrefsDidGetUpdated:(id)updated;
@end

@implementation WCDistributedNotificationCenter

+ (WCDistributedNotificationCenter)defaultCenter
{
  if (defaultCenter_onceToken != -1)
  {
    +[WCDistributedNotificationCenter defaultCenter];
  }

  v3 = defaultCenter_sSharedInstance;

  return v3;
}

uint64_t __48__WCDistributedNotificationCenter_defaultCenter__block_invoke()
{
  defaultCenter_sSharedInstance = objc_alloc_init(WCDistributedNotificationCenter);

  return MEMORY[0x1EEE66BB8]();
}

- (WCDistributedNotificationCenter)init
{
  v9.receiver = self;
  v9.super_class = WCDistributedNotificationCenter;
  v2 = [(WCDistributedNotificationCenter *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_dataSynchronizationLock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v3->_observers;
    v3->_observers = v4;

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_weatherPrefsDidGetUpdated_ name:@"WeatherPrefPrefsToAppDidUpdateNotification" object:0 suspensionBehavior:2];

    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_weatherPrefsDidGetUpdated_ name:@"WeatherGroupPrefsDidUpdateNotification" object:0 suspensionBehavior:2];
  }

  return v3;
}

- (void)postWeatherSavedLocationsDidUpdateNotification
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  [defaultCenter postNotificationName:@"WeatherGroupPrefsDidUpdateNotification" object:processName userInfo:0 deliverImmediately:1];
}

- (void)postWeatherLocationAuthorizationDidUpdateNotification
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  [defaultCenter postNotificationName:@"WeatherPrefAppToPrefsDidUpdateNotification" object:processName userInfo:0 deliverImmediately:1];
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock_with_options();
    observers = [(WCDistributedNotificationCenter *)self observers];
    [observers addObject:observerCopy];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v8 = observerCopy;
    os_unfair_lock_lock_with_options();
    observers = [(WCDistributedNotificationCenter *)self observers];
    v6 = [observers containsObject:v8];

    if (v6)
    {
      observers2 = [(WCDistributedNotificationCenter *)self observers];
      [observers2 removeObject:v8];
    }

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
    observerCopy = v8;
  }
}

- (void)weatherPrefsDidGetUpdated:(id)updated
{
  v4 = MEMORY[0x1E696AE30];
  updatedCopy = updated;
  processInfo = [v4 processInfo];
  processName = [processInfo processName];
  object = [updatedCopy object];

  LOBYTE(updatedCopy) = [processName isEqualToString:object];
  if ((updatedCopy & 1) == 0)
  {

    [(WCDistributedNotificationCenter *)self _notifyObserversOfPreferencesChange];
  }
}

- (void)_notifyObserversOfPreferencesChange
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  observers = [(WCDistributedNotificationCenter *)self observers];
  v4 = [observers copy];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) sharedPreferencesChangedExternally];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end