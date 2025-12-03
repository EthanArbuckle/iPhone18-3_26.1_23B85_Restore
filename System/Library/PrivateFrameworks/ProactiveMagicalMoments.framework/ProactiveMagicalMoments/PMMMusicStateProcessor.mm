@interface PMMMusicStateProcessor
+ (id)shared;
- (PMMMusicStateProcessor)init;
- (id)_init;
- (void)_handlePause;
- (void)_handlePlay;
- (void)_initNowPlayingPause;
- (void)_initNowPlayingPlay;
- (void)_initStarkConnect;
- (void)_initStarkDisconnect;
- (void)_persist;
- (void)lastPlayedInCarWithHandler:(id)handler;
- (void)lastPlayedWithHandler:(id)handler;
@end

@implementation PMMMusicStateProcessor

void __45__PMMMusicStateProcessor__initNowPlayingPlay__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_22639A000, v4, OS_LOG_TYPE_INFO, "Identifier called: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    sel_getName(*(a1 + 40));
    v6 = os_transaction_create();
    v7 = [WeakRetained queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__PMMMusicStateProcessor__initNowPlayingPlay__block_invoke_44;
    v10[3] = &unk_2785922E0;
    v10[4] = WeakRetained;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __46__PMMMusicStateProcessor__initNowPlayingPause__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_22639A000, v4, OS_LOG_TYPE_INFO, "Identifier called: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    sel_getName(*(a1 + 40));
    v6 = os_transaction_create();
    v7 = [WeakRetained queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__PMMMusicStateProcessor__initNowPlayingPause__block_invoke_40;
    v10[3] = &unk_2785922E0;
    v10[4] = WeakRetained;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __45__PMMMusicStateProcessor__initNowPlayingPlay__block_invoke_44(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _handlePlay];
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 40);
  return objc_opt_self();
}

- (void)_handlePause
{
  [(PMMMusicContainer *)self->_lastPlayed setPauseIfUnset];
  [(PMMMusicContainer *)self->_lastPlayedInCar setPauseIfUnset];

  [(PMMMusicStateProcessor *)self _persist];
}

- (void)_persist
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_default();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    lastPlayed = self->_lastPlayed;
    v12 = 138412290;
    v13 = lastPlayed;
    _os_log_impl(&dword_22639A000, v3, OS_LOG_TYPE_INFO, "Persisting playing: %@", &v12, 0xCu);
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastPlayedInCar = self->_lastPlayedInCar;
    v12 = 138412290;
    v13 = lastPlayedInCar;
    _os_log_impl(&dword_22639A000, v5, OS_LOG_TYPE_INFO, "Persisting playing in car: %@", &v12, 0xCu);
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DuetExpertCenter.MagicalMoments"];
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_lastPlayed requiringSecureCoding:1 error:0];
  [v8 setObject:v9 forKey:@"lastPlayed"];

  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_lastPlayedInCar requiringSecureCoding:1 error:0];
  [v8 setObject:v10 forKey:@"lastPlayedInCar"];

  [v8 synchronize];
  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

id __46__PMMMusicStateProcessor__initNowPlayingPause__block_invoke_40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _handlePause];
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 40);
  return objc_opt_self();
}

- (void)_handlePlay
{
  keyPathForNowPlayingDataDictionary = [MEMORY[0x277CFE338] keyPathForNowPlayingDataDictionary];
  v3 = +[PMMContextHelper sharedInstance];
  v4 = [v3 fetchDataDictionaryForKeyPath:keyPathForNowPlayingDataDictionary];

  if (v4)
  {
    nowPlayingBundleIdKey = [MEMORY[0x277CFE338] nowPlayingBundleIdKey];
    v6 = [v4 objectForKeyedSubscript:nowPlayingBundleIdKey];

    nowPlayingTrackKey = [MEMORY[0x277CFE338] nowPlayingTrackKey];
    v8 = [v4 objectForKeyedSubscript:nowPlayingTrackKey];

    nowPlayingCreationDateKey = [MEMORY[0x277CFE338] nowPlayingCreationDateKey];
    v10 = [v4 objectForKeyedSubscript:nowPlayingCreationDateKey];

    [(PMMMusicContainer *)self->_lastPlayed setPlayingWithBundleId:v6 trackIdentifier:v8 playTime:v10];
    if ([(PMMMusicStateProcessor *)self inCar])
    {
      [(PMMMusicContainer *)self->_lastPlayedInCar setPlayingWithBundleId:v6 trackIdentifier:v8 playTime:v10];
    }

    [(PMMMusicStateProcessor *)self _persist];
  }
}

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[PMMMusicStateProcessor shared];
  }

  v3 = shared___sharedInstance;

  return v3;
}

uint64_t __32__PMMMusicStateProcessor_shared__block_invoke()
{
  shared___sharedInstance = [[PMMMusicStateProcessor alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (PMMMusicStateProcessor)init
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [PMMMusicStateProcessor init];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Create a MusicStateProcessor using [... shared]"];

  return 0;
}

- (id)_init
{
  v35.receiver = self;
  v35.super_class = PMMMusicStateProcessor;
  v2 = [(PMMMusicStateProcessor *)&v35 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"%@-%p", v5, v2];
    uTF8String = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(uTF8String, v8);
    queue = v2->_queue;
    v2->_queue = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DuetExpertCenter.MagicalMoments"];
    v12 = objc_autoreleasePoolPush();
    v13 = [v11 objectForKey:@"lastPlayed"];
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v13 error:0];
      decodeObject = [v14 decodeObject];
      lastPlayed = v2->_lastPlayed;
      v2->_lastPlayed = decodeObject;
    }

    objc_autoreleasePoolPop(v12);
    v17 = objc_autoreleasePoolPush();
    v18 = [v11 objectForKey:@"lastPlayedInCar"];
    if (v18)
    {
      v19 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v18 error:0];
      decodeObject2 = [v19 decodeObject];
      lastPlayedInCar = v2->_lastPlayedInCar;
      v2->_lastPlayedInCar = decodeObject2;
    }

    objc_autoreleasePoolPop(v17);
    if (!v2->_lastPlayed)
    {
      v22 = objc_opt_new();
      v23 = v2->_lastPlayed;
      v2->_lastPlayed = v22;
    }

    if (!v2->_lastPlayedInCar)
    {
      v24 = objc_opt_new();
      v25 = v2->_lastPlayedInCar;
      v2->_lastPlayedInCar = v24;
    }

    v26 = +[PMMContextHelper sharedInstance];
    keyPathForCarplayConnectedStatus = [MEMORY[0x277CFE338] keyPathForCarplayConnectedStatus];
    v28 = [v26 fetchContextValueForKeyPath:keyPathForCarplayConnectedStatus];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v28 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [(PMMMusicStateProcessor *)v2 setInCar:bOOLValue];
    keyPathForNowPlayingDataDictionary = [MEMORY[0x277CFE338] keyPathForNowPlayingDataDictionary];
    v31 = [v26 fetchDataDictionaryForKeyPath:keyPathForNowPlayingDataDictionary];
    if (v31)
    {
      nowPlayingBundleIdKey = [MEMORY[0x277CFE338] nowPlayingBundleIdKey];
      v33 = [v31 objectForKeyedSubscript:nowPlayingBundleIdKey];

      if ([v33 isEqualToString:@"unknown"])
      {
        [(PMMMusicStateProcessor *)v2 _handlePause];
      }

      else
      {
        [(PMMMusicStateProcessor *)v2 _handlePlay];
      }
    }

    [(PMMMusicStateProcessor *)v2 _initStarkConnect];
    [(PMMMusicStateProcessor *)v2 _initStarkDisconnect];
    [(PMMMusicStateProcessor *)v2 _initNowPlayingPause];
    [(PMMMusicStateProcessor *)v2 _initNowPlayingPlay];
  }

  return v2;
}

- (void)_initStarkConnect
{
  objc_initWeak(&location, self);
  keyPathForCarplayConnectedStatus = [MEMORY[0x277CFE338] keyPathForCarplayConnectedStatus];
  v4 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:keyPathForCarplayConnectedStatus];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PMMMusicStateProcessor__initStarkConnect__block_invoke;
  v8[3] = &unk_278592588;
  objc_copyWeak(v9, &location);
  v9[1] = a2;
  v5 = MEMORY[0x22AA7E1B0](v8);
  v6 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.ms.carplayconnect" contextualPredicate:v4 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v5];
  v7 = +[PMMContextHelper sharedInstance];
  [v7 registerForNotifications:v6];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __43__PMMMusicStateProcessor__initStarkConnect__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_22639A000, v4, OS_LOG_TYPE_INFO, "Identifier called: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    sel_getName(*(a1 + 40));
    v6 = os_transaction_create();
    v7 = [WeakRetained queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__PMMMusicStateProcessor__initStarkConnect__block_invoke_30;
    v10[3] = &unk_2785922E0;
    v10[4] = WeakRetained;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __43__PMMMusicStateProcessor__initStarkConnect__block_invoke_30(uint64_t a1)
{
  [*(a1 + 32) setInCar:1];
  v2 = *(a1 + 40);
  return objc_opt_self();
}

- (void)_initStarkDisconnect
{
  objc_initWeak(&location, self);
  keyPathForCarplayConnectedStatus = [MEMORY[0x277CFE338] keyPathForCarplayConnectedStatus];
  v4 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:keyPathForCarplayConnectedStatus];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PMMMusicStateProcessor__initStarkDisconnect__block_invoke;
  v8[3] = &unk_278592588;
  objc_copyWeak(v9, &location);
  v9[1] = a2;
  v5 = MEMORY[0x22AA7E1B0](v8);
  v6 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.ms.carplaydisconnect" contextualPredicate:v4 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v5];
  v7 = +[PMMContextHelper sharedInstance];
  [v7 registerForNotifications:v6];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __46__PMMMusicStateProcessor__initStarkDisconnect__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_22639A000, v4, OS_LOG_TYPE_INFO, "Identifier called: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    sel_getName(*(a1 + 40));
    v6 = os_transaction_create();
    v7 = [WeakRetained queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__PMMMusicStateProcessor__initStarkDisconnect__block_invoke_36;
    v10[3] = &unk_2785922E0;
    v10[4] = WeakRetained;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, v10);
  }

  v9 = *MEMORY[0x277D85DE8];
}

id __46__PMMMusicStateProcessor__initStarkDisconnect__block_invoke_36(uint64_t a1)
{
  [*(a1 + 32) setInCar:0];
  v2 = *(a1 + 40);
  return objc_opt_self();
}

- (void)_initNowPlayingPause
{
  objc_initWeak(&location, self);
  keyPathForNowPlayingDataDictionary = [MEMORY[0x277CFE338] keyPathForNowPlayingDataDictionary];
  v4 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:keyPathForNowPlayingDataDictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PMMMusicStateProcessor__initNowPlayingPause__block_invoke;
  v8[3] = &unk_278592588;
  objc_copyWeak(v9, &location);
  v9[1] = a2;
  v5 = MEMORY[0x22AA7E1B0](v8);
  v6 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.ms.nowplayingpause" contextualPredicate:v4 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v5];
  v7 = +[PMMContextHelper sharedInstance];
  [v7 registerForNotifications:v6];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)_initNowPlayingPlay
{
  objc_initWeak(&location, self);
  keyPathForNowPlayingDataDictionary = [MEMORY[0x277CFE338] keyPathForNowPlayingDataDictionary];
  v4 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:keyPathForNowPlayingDataDictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__PMMMusicStateProcessor__initNowPlayingPlay__block_invoke;
  v8[3] = &unk_278592588;
  objc_copyWeak(v9, &location);
  v9[1] = a2;
  v5 = MEMORY[0x22AA7E1B0](v8);
  v6 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.duetexpertd.ms.nowplayingplay" contextualPredicate:v4 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v5];
  v7 = +[PMMContextHelper sharedInstance];
  [v7 registerForNotifications:v6];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)lastPlayedWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(PMMMusicStateProcessor *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__PMMMusicStateProcessor_lastPlayedWithHandler___block_invoke;
    v7[3] = &unk_2785925B0;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    [(PMMMusicStateProcessor *)a2 lastPlayedWithHandler:?];
  }
}

- (void)lastPlayedInCarWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(PMMMusicStateProcessor *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__PMMMusicStateProcessor_lastPlayedInCarWithHandler___block_invoke;
    v7[3] = &unk_2785925B0;
    v7[4] = self;
    v8 = handlerCopy;
    dispatch_async(queue, v7);
  }

  else
  {
    [(PMMMusicStateProcessor *)a2 lastPlayedInCarWithHandler:?];
  }
}

- (void)lastPlayedWithHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PMMMusicStateProcessor.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

- (void)lastPlayedInCarWithHandler:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PMMMusicStateProcessor.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

@end