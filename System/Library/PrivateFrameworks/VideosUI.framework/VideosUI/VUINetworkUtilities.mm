@interface VUINetworkUtilities
+ (id)sharedInstance;
- (BOOL)isNetworkReachable;
- (NSString)networkType;
- (VUINetworkUtilities)init;
- (void)_notifyObservers;
- (void)dealloc;
@end

@implementation VUINetworkUtilities

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_21 != -1)
  {
    +[VUINetworkUtilities sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_8;

  return v3;
}

void __37__VUINetworkUtilities_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_8;
  sharedInstance_sharedInstance_8 = v0;
}

- (VUINetworkUtilities)init
{
  v10.receiver = self;
  v10.super_class = VUINetworkUtilities;
  v2 = [(VUINetworkUtilities *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("VUINetworkUtility", 0);
    networkUtilityQueue = v2->_networkUtilityQueue;
    v2->_networkUtilityQueue = v3;

    v5 = [MEMORY[0x1E69E4428] sharedMonitor];
    [v5 registerObserver:v2];

    v6 = objc_alloc(MEMORY[0x1E698B6B0]);
    v7 = [v6 initWithQueue:MEMORY[0x1E69E96A0]];
    radioPrefs = v2->_radioPrefs;
    v2->_radioPrefs = v7;

    [(RadiosPreferences *)v2->_radioPrefs setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69E4428] sharedMonitor];
  [v3 unregisterObserver:self];

  [(RadiosPreferences *)self->_radioPrefs setDelegate:0];
  v4.receiver = self;
  v4.super_class = VUINetworkUtilities;
  [(VUINetworkUtilities *)&v4 dealloc];
}

- (BOOL)isNetworkReachable
{
  v2 = [MEMORY[0x1E69E4428] sharedMonitor];
  v3 = [v2 isRemoteServerLikelyReachable];

  return v3;
}

- (NSString)networkType
{
  v2 = [MEMORY[0x1E69E4428] sharedMonitor];
  v3 = [v2 networkType];
  v4 = @"Unknown";
  if (v3 > 99)
  {
    if (v3 > 1000)
    {
      v5 = @"Bridged WiFi";
      v6 = @"Wired Ethernet";
      v8 = @"Other";
      if (v3 != 3000)
      {
        v8 = @"Unknown";
      }

      if (v3 != 2000)
      {
        v6 = v8;
      }

      v7 = v3 == 1001;
    }

    else
    {
      if (v3 == 100)
      {
        goto LABEL_3;
      }

      v5 = @"Bluetooth";
      v6 = @"WiFi";
      if (v3 != 1000)
      {
        v6 = @"Unknown";
      }

      v7 = v3 == 500;
    }

    if (v7)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }
  }

  else if ((v3 - 1) < 8)
  {
LABEL_3:
    v4 = @"Cellular";
  }

  return &v4->isa;
}

- (void)_notifyObservers
{
  objc_initWeak(&location, self);
  networkUtilityQueue = self->_networkUtilityQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__VUINetworkUtilities__notifyObservers__block_invoke;
  v4[3] = &unk_1E872E4B8;
  objc_copyWeak(&v5, &location);
  dispatch_async(networkUtilityQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__VUINetworkUtilities__notifyObservers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isNetworkReachable")}];
  [v1 setObject:v2 forKey:@"isNetworkReachable"];

  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "isAirplaneModeEnabled")}];
  [v1 setObject:v3 forKey:@"isInAirplaneMode"];

  v4 = [WeakRetained networkType];
  [v1 setObject:v4 forKey:@"NetworkType"];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"VUINetworkPropertiesChangedNotification" object:WeakRetained userInfo:v1];
}

@end