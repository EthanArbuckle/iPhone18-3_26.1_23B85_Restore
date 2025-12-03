@interface BYNetworkMonitor
+ (id)sharedInstance;
+ (void)setHoldsWiFiAssertion:(BOOL)assertion;
- (BYNetworkMonitor)init;
- (void)_initNetworkObservation;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setCurrentNetworkType:(int)type;
- (void)withMinimumNetworkType:(int)type timeout:(double)timeout runBlock:(id)block;
@end

@implementation BYNetworkMonitor

- (BYNetworkMonitor)init
{
  v10.receiver = self;
  v10.super_class = BYNetworkMonitor;
  v2 = [(BYNetworkMonitor *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    networkTypeBlocks = v2->_networkTypeBlocks;
    v2->_networkTypeBlocks = dictionary;

    v5 = dispatch_queue_create("by-network-monitor network type", 0);
    networkTypeQueue = v2->_networkTypeQueue;
    v2->_networkTypeQueue = v5;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v2->_currentNetworkType = 0;
  }

  return v2;
}

- (void)dealloc
{
  reachability = self->_reachability;
  if (reachability)
  {
    SCNetworkReachabilitySetCallback(reachability, 0, 0);
    v4 = self->_reachability;
    Main = CFRunLoopGetMain();
    SCNetworkReachabilityUnscheduleFromRunLoop(v4, Main, *MEMORY[0x1E695E8D0]);
    CFRelease(self->_reachability);
  }

  v6.receiver = self;
  v6.super_class = BYNetworkMonitor;
  [(BYNetworkMonitor *)&v6 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_singletonPredicate != -1)
  {
    +[BYNetworkMonitor sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __34__BYNetworkMonitor_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(BYNetworkMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers addObject:?];

    [(BYNetworkMonitor *)self _initNetworkObservation];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)withMinimumNetworkType:(int)type timeout:(double)timeout runBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v9 = blockCopy;
    if ([(BYNetworkMonitor *)self currentNetworkType]>= type)
    {
      v9[2](v9, 0);
    }

    else
    {
      if (type == 1)
      {
        [objc_opt_class() setHoldsWiFiAssertion:1];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60__BYNetworkMonitor_withMinimumNetworkType_timeout_runBlock___block_invoke;
        v15[3] = &unk_1E7D03BC0;
        v15[4] = self;
        v16 = v9;
        v9 = MEMORY[0x1B8CC28E0](v15);
      }

      networkTypeQueue = self->_networkTypeQueue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __60__BYNetworkMonitor_withMinimumNetworkType_timeout_runBlock___block_invoke_2;
      v11[3] = &unk_1E7D03C10;
      typeCopy = type;
      v11[4] = self;
      v12 = v9;
      timeoutCopy = timeout;
      v9 = v9;
      dispatch_async(networkTypeQueue, v11);
    }
  }
}

uint64_t __60__BYNetworkMonitor_withMinimumNetworkType_timeout_runBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [objc_opt_class() setHoldsWiFiAssertion:0];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __60__BYNetworkMonitor_withMinimumNetworkType_timeout_runBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 56)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
  }

  v7 = v6;

  v8 = *(*(a1 + 32) + 32);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 56)];
  [v8 setObject:v7 forKey:v9];

  v10 = MEMORY[0x1B8CC28E0](*(a1 + 40));
  [v7 addObject:v10];

  v11 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  v12 = *(a1 + 32);
  v13 = *(v12 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__BYNetworkMonitor_withMinimumNetworkType_timeout_runBlock___block_invoke_3;
  block[3] = &unk_1E7D03BE8;
  block[4] = v12;
  v16 = *(a1 + 56);
  v15 = *(a1 + 40);
  dispatch_after(v11, v13, block);
}

void __60__BYNetworkMonitor_withMinimumNetworkType_timeout_runBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = MEMORY[0x1B8CC28E0](*(a1 + 40));
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = MEMORY[0x1B8CC28E0](*(a1 + 40));
    [v4 removeObject:v7];

    v8 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__BYNetworkMonitor_withMinimumNetworkType_timeout_runBlock___block_invoke_4;
    block[3] = &unk_1E7D02D70;
    v10 = *(a1 + 40);
    dispatch_async(v8, block);
  }
}

- (void)setCurrentNetworkType:(int)type
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_currentNetworkType != type)
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Wifi";
      if (!type)
      {
        v6 = @"None";
      }

      *buf = 138543362;
      v25 = v6;
      v7 = v6;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Network type changed to: %{public}@", buf, 0xCu);
    }

    currentNetworkType = self->_currentNetworkType;
    self->_currentNetworkType = type;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(allObjects);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 networkChangedFromNetworkType:currentNetworkType toNetworkType:self->_currentNetworkType];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    networkTypeQueue = self->_networkTypeQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __42__BYNetworkMonitor_setCurrentNetworkType___block_invoke;
    v17[3] = &unk_1E7D03C38;
    typeCopy = type;
    v17[4] = self;
    dispatch_async(networkTypeQueue, v17);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __42__BYNetworkMonitor_setCurrentNetworkType___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = a1;
    v17 = a1;
    do
    {
      v3 = *(*(v2 + 32) + 32);
      v4 = [MEMORY[0x1E696AD98] numberWithInt:{v1, v17}];
      v5 = [v3 objectForKeyedSubscript:v4];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v20;
        do
        {
          v10 = 0;
          do
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v19 + 1) + 8 * v10);
            v12 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __42__BYNetworkMonitor_setCurrentNetworkType___block_invoke_2;
            block[3] = &unk_1E7D02D70;
            block[4] = v11;
            dispatch_async(v12, block);

            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }

      v2 = v17;
      v13 = *(*(v17 + 32) + 32);
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v1];
      [v13 removeObjectForKey:v14];

      v15 = v1 <= 0;
      v1 = (v1 - 1);
    }

    while (!v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_initNetworkObservation
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!self->_reachability)
  {
    v10[0] = @"nodename";
    v10[1] = @"ResolverBypass";
    v11[0] = @"www.apple.com";
    v11[1] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v4 = SCNetworkReachabilityCreateWithOptions();
    self->_reachability = v4;
    flags = 0;
    SCNetworkReachabilityGetFlags(v4, &flags);
    [(BYNetworkMonitor *)self setCurrentNetworkType:[(BYNetworkMonitor *)self _networkTypeFromFlags:flags]];
    v8.version = 0;
    memset(&v8.retain, 0, 24);
    v8.info = self;
    SCNetworkReachabilitySetCallback(self->_reachability, _networkReachabilityCallback, &v8);
    reachability = self->_reachability;
    Main = CFRunLoopGetMain();
    SCNetworkReachabilityScheduleWithRunLoop(reachability, Main, *MEMORY[0x1E695E8D0]);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)setHoldsWiFiAssertion:(BOOL)assertion
{
  if (!MGGetBoolAnswer())
  {
    return;
  }

  if (assertion)
  {
    v4 = 1;
  }

  else
  {
    if (!__assertionCount)
    {
      goto LABEL_7;
    }

    v4 = -1;
  }

  __assertionCount += v4;
LABEL_7:
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BYNetworkMonitor setHoldsWiFiAssertion:v5];
  }

  v6 = __assertionCount != 0;
  v7 = __wifiManager;
  if (!__wifiManager)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v13 = getWiFiManagerClientCreateSymbolLoc_ptr;
    v19 = getWiFiManagerClientCreateSymbolLoc_ptr;
    if (!getWiFiManagerClientCreateSymbolLoc_ptr)
    {
      v14 = MobileWiFiLibrary();
      v17[3] = dlsym(v14, "WiFiManagerClientCreate");
      getWiFiManagerClientCreateSymbolLoc_ptr = v17[3];
      v13 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (v13)
    {
      __wifiManager = v13(*MEMORY[0x1E695E480], v6);
      return;
    }

LABEL_24:
    +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
    goto LABEL_25;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v8 = getWiFiManagerClientGetTypeSymbolLoc_ptr;
  v19 = getWiFiManagerClientGetTypeSymbolLoc_ptr;
  if (!getWiFiManagerClientGetTypeSymbolLoc_ptr)
  {
    v9 = MobileWiFiLibrary();
    v17[3] = dlsym(v9, "WiFiManagerClientGetType");
    getWiFiManagerClientGetTypeSymbolLoc_ptr = v17[3];
    v8 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v8)
  {
    +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
    goto LABEL_24;
  }

  if (v8(v7) != v6)
  {
    v10 = __wifiManager;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v11 = getWiFiManagerClientSetTypeSymbolLoc_ptr;
    v19 = getWiFiManagerClientSetTypeSymbolLoc_ptr;
    if (!getWiFiManagerClientSetTypeSymbolLoc_ptr)
    {
      v12 = MobileWiFiLibrary();
      v17[3] = dlsym(v12, "WiFiManagerClientSetType");
      getWiFiManagerClientSetTypeSymbolLoc_ptr = v17[3];
      v11 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (v11)
    {
      v11(v10, v6);
      return;
    }

LABEL_25:
    v15 = +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
    _Block_object_dispose(&v16, 8);
    _Unwind_Resume(v15);
  }
}

+ (void)setHoldsWiFiAssertion:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = __assertionCount;
  _os_log_debug_impl(&dword_1B862F000, log, OS_LOG_TYPE_DEBUG, "WiFi background assertion count changed: %lu", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end