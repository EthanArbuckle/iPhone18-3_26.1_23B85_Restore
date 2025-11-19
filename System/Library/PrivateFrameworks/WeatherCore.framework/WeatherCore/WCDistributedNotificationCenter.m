@interface WCDistributedNotificationCenter
+ (WCDistributedNotificationCenter)defaultCenter;
- (WCDistributedNotificationCenter)init;
- (void)_notifyObserversOfPreferencesChange;
- (void)addObserver:(id)a3;
- (void)postWeatherLocationAuthorizationDidUpdateNotification;
- (void)postWeatherSavedLocationsDidUpdateNotification;
- (void)removeObserver:(id)a3;
- (void)weatherPrefsDidGetUpdated:(id)a3;
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

    v6 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v6 addObserver:v3 selector:sel_weatherPrefsDidGetUpdated_ name:@"WeatherPrefPrefsToAppDidUpdateNotification" object:0 suspensionBehavior:2];

    v7 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v7 addObserver:v3 selector:sel_weatherPrefsDidGetUpdated_ name:@"WeatherGroupPrefsDidUpdateNotification" object:0 suspensionBehavior:2];
  }

  return v3;
}

- (void)postWeatherSavedLocationsDidUpdateNotification
{
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];
  [v4 postNotificationName:@"WeatherGroupPrefsDidUpdateNotification" object:v3 userInfo:0 deliverImmediately:1];
}

- (void)postWeatherLocationAuthorizationDidUpdateNotification
{
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];
  [v4 postNotificationName:@"WeatherPrefAppToPrefsDidUpdateNotification" object:v3 userInfo:0 deliverImmediately:1];
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock_with_options();
    v5 = [(WCDistributedNotificationCenter *)self observers];
    [v5 addObject:v4];

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    os_unfair_lock_lock_with_options();
    v5 = [(WCDistributedNotificationCenter *)self observers];
    v6 = [v5 containsObject:v8];

    if (v6)
    {
      v7 = [(WCDistributedNotificationCenter *)self observers];
      [v7 removeObject:v8];
    }

    os_unfair_lock_unlock(&self->_dataSynchronizationLock);
    v4 = v8;
  }
}

- (void)weatherPrefsDidGetUpdated:(id)a3
{
  v4 = MEMORY[0x1E696AE30];
  v5 = a3;
  v6 = [v4 processInfo];
  v7 = [v6 processName];
  v8 = [v5 object];

  LOBYTE(v5) = [v7 isEqualToString:v8];
  if ((v5 & 1) == 0)
  {

    [(WCDistributedNotificationCenter *)self _notifyObserversOfPreferencesChange];
  }
}

- (void)_notifyObserversOfPreferencesChange
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v3 = [(WCDistributedNotificationCenter *)self observers];
  v4 = [v3 copy];

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