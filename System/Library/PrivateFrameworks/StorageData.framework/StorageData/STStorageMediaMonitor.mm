@interface STStorageMediaMonitor
+ (id)listOfUsedDataClassesInOverrides:(id)overrides;
+ (id)sharedMonitor;
- (STStorageMediaMonitor)init;
- (void)_updateATCData;
- (void)loadingComplete:(id)complete;
- (void)mpLibraryChanged:(id)changed;
- (void)startMonitor;
- (void)stopMonitor;
- (void)sync;
- (void)updateATCData;
@end

@implementation STStorageMediaMonitor

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken_1 != -1)
  {
    +[STStorageMediaMonitor sharedMonitor];
  }

  v3 = sharedMonitor__monitor_0;

  return v3;
}

uint64_t __38__STStorageMediaMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor__monitor_0 = objc_alloc_init(STStorageMediaMonitor);

  return MEMORY[0x2821F96F8]();
}

- (STStorageMediaMonitor)init
{
  v27.receiver = self;
  v27.super_class = STStorageMediaMonitor;
  v2 = [(STStorageMediaMonitor *)&v27 init];
  if (v2)
  {
    v3 = +[STAppOverrides overrides];
    v4 = [STStorageMediaMonitor listOfUsedDataClassesInOverrides:v3];
    v5 = *(v2 + 6);
    *(v2 + 6) = v4;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_loadingComplete_ name:@"STNotify_LoadingComplete" object:0];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_attr_make_initially_inactive(v8);

    v10 = dispatch_queue_create("com.apple.storagesettings.queue.ATCRefresh", v9);
    v11 = *(v2 + 3);
    *(v2 + 3) = v10;

    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v2 + 3));
    dispatch_source_set_timer(v12, 0, 0x6FC23AC00uLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __29__STStorageMediaMonitor_init__block_invoke;
    handler[3] = &unk_279D1CE88;
    v13 = v2;
    v26 = v13;
    dispatch_source_set_event_handler(v12, handler);
    [v13 setRefreshTimer:v12];
    mEMORY[0x277CEA568] = [MEMORY[0x277CEA568] sharedInstance];
    getCurrentUsage = [mEMORY[0x277CEA568] getCurrentUsage];
    [v13 setAtcDictionary:getCurrentUsage];

    v16 = [*(v2 + 6) componentsJoinedByString:{@", "}];
    atcDictionary = [v13 atcDictionary];
    STLog(1, @"%s:%d ATC used data classes: %@; current usage: %@", v17, v18, v19, v20, v21, v22, "[STStorageMediaMonitor init]");
  }

  return v2;
}

- (void)startMonitor
{
  if (self->_isMonitoring)
  {
    STLog(1, @"media monitor monitoring calls are unbalanced", v2, v3, v4, v5, v6, v7, v22);

    [(STStorageMediaMonitor *)self updateATCData];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_mpLibraryChanged_ name:*MEMORY[0x277CD58D8] object:0];

    refreshQueue = [(STStorageMediaMonitor *)self refreshQueue];
    v11 = ALRegisterForPhotosAndVideosCount();
    [(STStorageMediaMonitor *)self setPhotosLibToken:v11];

    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary beginGeneratingLibraryChangeNotifications];

    refreshTimer = [(STStorageMediaMonitor *)self refreshTimer];
    dispatch_resume(refreshTimer);

    [(STStorageMediaMonitor *)self setIsMonitoring:1];
    mEMORY[0x277CEA568] = [MEMORY[0x277CEA568] sharedInstance];
    getCurrentUsage = [mEMORY[0x277CEA568] getCurrentUsage];
    [(STStorageMediaMonitor *)self setAtcDictionary:getCurrentUsage];

    atcDictionary = [(STStorageMediaMonitor *)self atcDictionary];
    STLog(1, @"%s:%d ATC %@", v16, v17, v18, v19, v20, v21, "[STStorageMediaMonitor startMonitor]");

    [(STStorageMediaMonitor *)self updateATCData];
  }
}

uint64_t __37__STStorageMediaMonitor_startMonitor__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  STLog(1, @"%s:%d Photos/Videos change detected", a3, a4, a5, a6, a7, a8, "[STStorageMediaMonitor startMonitor]_block_invoke");
  v9 = *(a1 + 32);

  return [v9 _updateATCData];
}

- (void)stopMonitor
{
  if (self->_isMonitoring)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CD58D8] object:0];

    photosLibToken = [(STStorageMediaMonitor *)self photosLibToken];
    ALUnregisterForPhotosAndVideosCount();

    [(STStorageMediaMonitor *)self setPhotosLibToken:0];
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary endGeneratingLibraryChangeNotifications];

    refreshTimer = [(STStorageMediaMonitor *)self refreshTimer];
    dispatch_suspend(refreshTimer);

    [(STStorageMediaMonitor *)self setIsMonitoring:0];
  }

  else
  {

    STLog(1, @"media monitor monitoring calls are unbalanced", v2, v3, v4, v5, v6, v7, v15);
  }
}

- (void)updateATCData
{
  refreshQueue = self->_refreshQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__STStorageMediaMonitor_updateATCData__block_invoke;
  block[3] = &unk_279D1CE88;
  block[4] = self;
  dispatch_async(refreshQueue, block);
}

- (void)_updateATCData
{
  refreshQueue = [(STStorageMediaMonitor *)self refreshQueue];
  dispatch_assert_queue_V2(refreshQueue);

  isUpdating = [(STStorageMediaMonitor *)self isUpdating];
  v5 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (isUpdating)
  {
    [(STStorageMediaMonitor *)self refreshStartTimestamp];
    STLog(1, @"%s:%d ATC update is already in progress, running for %0.3f s", v6, v7, v8, v9, v10, v11, "[STStorageMediaMonitor _updateATCData]");
  }

  else
  {
    [(STStorageMediaMonitor *)self setRefreshStartTimestamp:v5];
    [(STStorageMediaMonitor *)self setIsUpdating:1];
    STLog(1, @"%s:%d Start updating ATC current usage", v12, v13, v14, v15, v16, v17, "[STStorageMediaMonitor _updateATCData]");
    mEMORY[0x277CEA568] = [MEMORY[0x277CEA568] sharedInstance];
    usedDataClasses = self->_usedDataClasses;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__STStorageMediaMonitor__updateATCData__block_invoke;
    v20[3] = &unk_279D1D3C8;
    v20[4] = self;
    [mEMORY[0x277CEA568] getCurrentUsageWithUpdatedDataClasses:usedDataClasses withCompletion:v20];
  }
}

void __39__STStorageMediaMonitor__updateATCData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) refreshQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__STStorageMediaMonitor__updateATCData__block_invoke_2;
  v6[3] = &unk_279D1CEB0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __39__STStorageMediaMonitor__updateATCData__block_invoke_2(uint64_t a1)
{
  clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [*(a1 + 32) refreshStartTimestamp];
  v8 = *(a1 + 40);
  STLog(1, @"%s:%d ATC update completed in %0.3fs %@", v2, v3, v4, v5, v6, v7, "[STStorageMediaMonitor _updateATCData]_block_invoke_2");
  [*(a1 + 32) setAtcDictionary:*(a1 + 40)];
  [*(a1 + 32) setIsUpdating:0];
  [*(a1 + 32) setIsAsynchronouslyLoaded:1];
  v9 = +[STStorageDataNotifier sharedNotifier];
  [v9 postMediaSizesChanged];
}

- (void)sync
{
  v3 = objc_autoreleasePoolPush();
  v4 = dispatch_semaphore_create(0);
  mEMORY[0x277CEA568] = [MEMORY[0x277CEA568] sharedInstance];
  usedDataClasses = self->_usedDataClasses;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__STStorageMediaMonitor_sync__block_invoke;
  v8[3] = &unk_279D1D3F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [mEMORY[0x277CEA568] getCurrentUsageWithUpdatedDataClasses:usedDataClasses withCompletion:v8];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  objc_autoreleasePoolPop(v3);
}

intptr_t __29__STStorageMediaMonitor_sync__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  STLog(1, @"%s:%d ATC %@", v3, v4, v5, v6, v7, v8, "[STStorageMediaMonitor sync]_block_invoke");
  [*(a1 + 32) setAtcDictionary:v11];

  v9 = *(a1 + 40);

  return dispatch_semaphore_signal(v9);
}

- (void)loadingComplete:(id)complete
{
  STLog(1, @"%s:%d Loading complete, activating ATC refresh", complete, v3, v4, v5, v6, v7, "[STStorageMediaMonitor loadingComplete:]");
  refreshQueue = [(STStorageMediaMonitor *)self refreshQueue];
  dispatch_activate(refreshQueue);

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"STNotify_LoadingComplete" object:0];
  [(STStorageMediaMonitor *)self updateATCData];
}

- (void)mpLibraryChanged:(id)changed
{
  STLog(1, @"%s:%d Media library change detected", changed, v3, v4, v5, v6, v7, "[STStorageMediaMonitor mpLibraryChanged:]");

  [(STStorageMediaMonitor *)self updateATCData];
}

+ (id)listOfUsedDataClassesInOverrides:(id)overrides
{
  v32 = *MEMORY[0x277D85DE8];
  overridesCopy = overrides;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:5];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = overridesCopy;
  obj = [overridesCopy allValues];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        includeMediaUsage = [v8 includeMediaUsage];
        v10 = [includeMediaUsage countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(includeMediaUsage);
              }

              v14 = [*(*(&v22 + 1) + 8 * j) componentsSeparatedByString:@":"];
              firstObject = [v14 firstObject];

              if (firstObject)
              {
                [v4 addObject:firstObject];
              }
            }

            v11 = [includeMediaUsage countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  allObjects = [v4 allObjects];

  v17 = *MEMORY[0x277D85DE8];

  return allObjects;
}

@end