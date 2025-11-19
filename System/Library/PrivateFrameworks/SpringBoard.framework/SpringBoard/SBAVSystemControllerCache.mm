@interface SBAVSystemControllerCache
+ (SBAVSystemControllerCache)sharedInstance;
- (BOOL)isAirplayDisplayActive;
- (BOOL)isAudioSessionPlaying;
- (BOOL)isFullyMuted;
- (BOOL)isRingerMuted;
- (NSArray)activeOutputDevices;
- (NSArray)pickableRoutes;
- (NSDictionary)activeAudioRouteInfo;
- (NSString)activeAudioRoute;
- (NSString)activeCategoryName;
- (OS_dispatch_workloop)avscOperationsWorkloop;
- (SBAVSystemControllerCache)init;
- (SBAVSystemControllerCache)initWithCallOutQueue:(id)a3 notificationCenter:(id)a4 dataProviderInitializer:(id)a5;
- (id)_backgroundQueryQueue_rebuildDataProvider;
- (id)_queryActiveOutputDevicesFromContext:(id)a3;
- (id)_queue_backgroundQueryCancellationSignalForNotificationCreatingIfNecessary:(id)a3;
- (void)_backgroundQueryQueue_rebuildDataProvider;
- (void)_queue_finishRebuildingCacheWithDataProvider:(id)a3 serverDeathSignal:(id)a4;
- (void)_queue_notifyObserversWithBlock:(id)a3;
- (void)_queue_rebuildCache;
- (void)_queue_signalBackgroundQueryCancellationForNotification:(id)a3;
- (void)_queue_updateActiveAudioRouteFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7;
- (void)_queue_updateActiveCategoryNameFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7;
- (void)_queue_updateActiveOutputDevicesFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7;
- (void)_queue_updateAirplayDisplayActiveFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7;
- (void)_queue_updateAudioSessionPlayingFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7;
- (void)_queue_updateFullyMutedFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7;
- (void)_queue_updatePickableRoutesFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7;
- (void)_queue_updateRingerMutedFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7;
- (void)_receiveUpdatedValueFromNotification:(id)a3;
- (void)_serverDied:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)fetchPickableRoutesWithCompletion:(id)a3;
@end

@implementation SBAVSystemControllerCache

- (NSString)activeCategoryName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SBAVSystemControllerCache_activeCategoryName__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isAudioSessionPlaying
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SBAVSystemControllerCache_isAudioSessionPlaying__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (SBAVSystemControllerCache)sharedInstance
{
  if (sharedInstance_onceToken_12 != -1)
  {
    +[SBAVSystemControllerCache sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_7;

  return v3;
}

- (NSString)activeAudioRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SBAVSystemControllerCache_activeAudioRoute__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (SBAVSystemControllerCache)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBAVSystemControllerCache.m" lineNumber:54 description:@"-init is not allowed on SBAVSystemControllerCache"];

  return 0;
}

- (SBAVSystemControllerCache)initWithCallOutQueue:(id)a3 notificationCenter:(id)a4 dataProviderInitializer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = SBAVSystemControllerCache;
  v12 = [(SBAVSystemControllerCache *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_callOutQueue, a3);
    objc_storeStrong(&v13->_notificationCenter, a4);
    v14 = [v11 copy];
    dataProviderInitializer = v13->_dataProviderInitializer;
    v13->_dataProviderInitializer = v14;

    v16 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    queue_observers = v13->_queue_observers;
    v13->_queue_observers = v16;

    Serial = BSDispatchQueueCreateSerial();
    queue = v13->_queue;
    v13->_queue = Serial;

    v20 = [MEMORY[0x277CBEB38] dictionary];
    notificationToHandlerMap = v13->_notificationToHandlerMap;
    v13->_notificationToHandlerMap = v20;

    v22 = [MEMORY[0x277CBEB38] dictionary];
    notificationToBackgroundQueryCancellationSignalMap = v13->_notificationToBackgroundQueryCancellationSignalMap;
    v13->_notificationToBackgroundQueryCancellationSignalMap = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = BSDispatchQueueCreateWithQualityOfService();
    backgroundQueryQueue = v13->_backgroundQueryQueue;
    v13->_backgroundQueryQueue = v25;

    v27 = SBLogAVSystemControllerCache();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Creating SBAVSystemControllerCache", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__SBAVSystemControllerCache_initWithCallOutQueue_notificationCenter_dataProviderInitializer___block_invoke;
    block[3] = &unk_2783A8C18;
    v31 = v13;
    v28 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v13->_queue, v28);
  }

  return v13;
}

void __93__SBAVSystemControllerCache_initWithCallOutQueue_notificationCenter_dataProviderInitializer___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CB8698] sharedAudioPresentationOutputContext];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  *(*(a1 + 32) + 144) = [*(*(a1 + 32) + 48) supportsMultipleOutputDevices];
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:sel__queue_updateFullyMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion_];
  [*(*(a1 + 32) + 64) setObject:v5 forKeyedSubscript:*MEMORY[0x277D26BF0]];

  v6 = [MEMORY[0x277CCAE60] valueWithPointer:sel__queue_updateRingerMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion_];
  [*(*(a1 + 32) + 64) setObject:v6 forKeyedSubscript:*MEMORY[0x277D26D58]];

  v7 = [MEMORY[0x277CCAE60] valueWithPointer:sel__queue_updateAudioSessionPlayingFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion_];
  [*(*(a1 + 32) + 64) setObject:v7 forKeyedSubscript:*MEMORY[0x277D26DA8]];

  v8 = [MEMORY[0x277CCAE60] valueWithPointer:sel__queue_updateAirplayDisplayActiveFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion_];
  [*(*(a1 + 32) + 64) setObject:v8 forKeyedSubscript:*MEMORY[0x277D26BD8]];

  v9 = [MEMORY[0x277CCAE60] valueWithPointer:sel__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion_];
  [*(*(a1 + 32) + 64) setObject:v9 forKeyedSubscript:*MEMORY[0x277D26D68]];

  v10 = [MEMORY[0x277CCAE60] valueWithPointer:sel__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion_];
  [*(*(a1 + 32) + 64) setObject:v10 forKeyedSubscript:*MEMORY[0x277D26BA8]];

  if (*(*(a1 + 32) + 144))
  {
    v11 = MEMORY[0x277CB8630];
  }

  else
  {
    v11 = MEMORY[0x277CB8628];
  }

  v12 = MEMORY[0x277CCAE60];
  v13 = *v11;
  v14 = [v12 valueWithPointer:sel__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion_];
  [*(*(a1 + 32) + 64) setObject:v14 forKeyedSubscript:v13];

  v15 = [MEMORY[0x277CCAE60] valueWithPointer:sel__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion_];
  [*(*(a1 + 32) + 64) setObject:v15 forKeyedSubscript:*MEMORY[0x277D26B00]];

  v16 = [MEMORY[0x277CCAE60] valueWithPointer:sel__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion_];
  [*(*(a1 + 32) + 64) setObject:v16 forKeyedSubscript:*MEMORY[0x277D26C68]];

  [*(*(a1 + 32) + 16) addObserver:*(a1 + 32) selector:sel__serverDied_ name:*MEMORY[0x277D26D40] object:0];
  v17 = *(a1 + 32);
  v18 = v17[8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__SBAVSystemControllerCache_initWithCallOutQueue_notificationCenter_dataProviderInitializer___block_invoke_2;
  v20[3] = &unk_2783B1E00;
  v21 = v17;
  [v18 enumerateKeysAndObjectsUsingBlock:v20];
  v19 = *(a1 + 32);

  [v19 _queue_rebuildCache];
}

- (void)dealloc
{
  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBAVSystemControllerCache;
  [(SBAVSystemControllerCache *)&v3 dealloc];
}

void __43__SBAVSystemControllerCache_sharedInstance__block_invoke()
{
  v0 = [SBAVSystemControllerCache alloc];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v1 = [(SBAVSystemControllerCache *)v0 initWithCallOutQueue:MEMORY[0x277D85CD0] notificationCenter:v3 dataProviderInitializer:&__block_literal_global_40_0];
  v2 = sharedInstance___sharedInstance_7;
  sharedInstance___sharedInstance_7 = v1;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBAVSystemControllerCache *)a2 addObserver:?];
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SBAVSystemControllerCache_addObserver___block_invoke;
  v8[3] = &unk_2783A92D8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

uint64_t __41__SBAVSystemControllerCache_addObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 40);

    return [v4 addObject:v3];
  }

  return result;
}

- (BOOL)isFullyMuted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SBAVSystemControllerCache_isFullyMuted__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRingerMuted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SBAVSystemControllerCache_isRingerMuted__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isAirplayDisplayActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SBAVSystemControllerCache_isAirplayDisplayActive__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSDictionary)activeAudioRouteInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SBAVSystemControllerCache_activeAudioRouteInfo__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)pickableRoutes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__SBAVSystemControllerCache_pickableRoutes__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)activeOutputDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SBAVSystemControllerCache_activeOutputDevices__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)fetchPickableRoutesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__SBAVSystemControllerCache_fetchPickableRoutesWithCompletion___block_invoke;
    v7[3] = &unk_2783A98A0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __63__SBAVSystemControllerCache_fetchPickableRoutesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SBAVSystemControllerCache_fetchPickableRoutesWithCompletion___block_invoke_2;
  v6[3] = &unk_2783A9878;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (OS_dispatch_workloop)avscOperationsWorkloop
{
  avscOperationsWorkloop = self->_avscOperationsWorkloop;
  if (!avscOperationsWorkloop)
  {
    inactive = dispatch_workloop_create_inactive("SBAVSystemControllerCache.AVSCOperations");
    dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_activate(inactive);
    v5 = self->_avscOperationsWorkloop;
    self->_avscOperationsWorkloop = inactive;

    avscOperationsWorkloop = self->_avscOperationsWorkloop;
  }

  return avscOperationsWorkloop;
}

- (void)_queue_notifyObserversWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSHashTable *)self->_queue_observers allObjects];
  v6 = [v5 copy];

  callOutQueue = self->_callOutQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SBAVSystemControllerCache__queue_notifyObserversWithBlock___block_invoke;
  v10[3] = &unk_2783A98A0;
  v11 = v6;
  v12 = v4;
  v8 = v4;
  v9 = v6;
  dispatch_async(callOutQueue, v10);
}

void __61__SBAVSystemControllerCache__queue_notifyObserversWithBlock___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_queue_updateFullyMutedFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __167__SBAVSystemControllerCache__queue_updateFullyMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke;
  v29[3] = &unk_2783B1E48;
  v31 = v10;
  v29[4] = self;
  v16 = v15;
  v30 = v16;
  v17 = MEMORY[0x223D6F7F0](v29);
  if (v10)
  {
    if (!v12)
    {
      v21 = self->_queue_dataProvider;
      backgroundQueryQueue = self->_backgroundQueryQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __167__SBAVSystemControllerCache__queue_updateFullyMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_50;
      block[3] = &unk_2783B1E98;
      v25 = v21;
      v26 = self;
      v27 = v13;
      v28 = v17;
      v23 = v21;
      dispatch_async(backgroundQueryQueue, block);

      goto LABEL_6;
    }

    v18 = [v12 objectForKey:*MEMORY[0x277D26B38]];
    v19 = [v18 BOOLValue];

    v14[2](v14);
  }

  else
  {
    v20 = [(SBAVSystemControllerDataProviding *)self->_queue_dataProvider attributeForKey:*MEMORY[0x277D26BE8]];
    v19 = [v20 BOOLValue];
  }

  v17[2](v17, v19);
LABEL_6:
}

uint64_t __167__SBAVSystemControllerCache__queue_updateFullyMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (*(v3 + 96) == a2)
    {
      goto LABEL_9;
    }

    *(v3 + 96) = a2;
    v4 = SBLogAVSystemControllerCache();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 96);
      v9 = 67109120;
      v10 = v5;
      v6 = "Updated fullyMuted to %{BOOL}i";
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, v6, &v9, 8u);
    }
  }

  else
  {
    *(v3 + 96) = a2;
    v4 = SBLogAVSystemControllerCache();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 96);
      v9 = 67109120;
      v10 = v7;
      v6 = "Initialized fullyMuted to %{BOOL}i";
      goto LABEL_7;
    }
  }

LABEL_9:
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void __167__SBAVSystemControllerCache__queue_updateFullyMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_50(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeForKey:*MEMORY[0x277D26BE8]];
  v3 = [v2 BOOLValue];

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __167__SBAVSystemControllerCache__queue_updateFullyMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2;
  block[3] = &unk_2783B1E70;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __167__SBAVSystemControllerCache__queue_updateFullyMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)_queue_updateRingerMutedFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __168__SBAVSystemControllerCache__queue_updateRingerMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke;
  v29[3] = &unk_2783B1E48;
  v31 = v10;
  v29[4] = self;
  v16 = v15;
  v30 = v16;
  v17 = MEMORY[0x223D6F7F0](v29);
  if (v10)
  {
    if (!v12)
    {
      v21 = self->_queue_dataProvider;
      backgroundQueryQueue = self->_backgroundQueryQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __168__SBAVSystemControllerCache__queue_updateRingerMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_55;
      block[3] = &unk_2783B1E98;
      v25 = v21;
      v26 = self;
      v27 = v13;
      v28 = v17;
      v23 = v21;
      dispatch_async(backgroundQueryQueue, block);

      goto LABEL_6;
    }

    v18 = [v12 objectForKey:*MEMORY[0x277D26D60]];
    v19 = [v18 BOOLValue];

    v14[2](v14);
  }

  else
  {
    v20 = [(SBAVSystemControllerDataProviding *)self->_queue_dataProvider attributeForKey:*MEMORY[0x277D26D50]];
    v19 = [v20 BOOLValue];
  }

  v17[2](v17, v19);
LABEL_6:
}

uint64_t __168__SBAVSystemControllerCache__queue_updateRingerMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke(uint64_t a1, int a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (*(v4 + 97) != a2)
    {
      *(v4 + 97) = a2;
      v5 = SBLogAVSystemControllerCache();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 97);
        *buf = 67109120;
        v14 = v6;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updated ringerMuted to %{BOOL}i", buf, 8u);
      }

      v7 = *(a1 + 32);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __168__SBAVSystemControllerCache__queue_updateRingerMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_51;
      v11[3] = &unk_2783B1EC0;
      v11[4] = v7;
      v12 = v2;
      [v7 _queue_notifyObserversWithBlock:v11];
    }
  }

  else
  {
    *(v4 + 97) = a2;
    v8 = SBLogAVSystemControllerCache();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 97);
      *buf = 67109120;
      v14 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Initialized ringerMuted to %{BOOL}i", buf, 8u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __168__SBAVSystemControllerCache__queue_updateRingerMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_51(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cache:*(a1 + 32) didUpdateRingerMuted:*(a1 + 40)];
  }
}

void __168__SBAVSystemControllerCache__queue_updateRingerMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_55(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeForKey:*MEMORY[0x277D26D50]];
  v3 = [v2 BOOLValue];

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __168__SBAVSystemControllerCache__queue_updateRingerMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2;
  block[3] = &unk_2783B1E70;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __168__SBAVSystemControllerCache__queue_updateRingerMutedFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)_queue_updateAudioSessionPlayingFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __176__SBAVSystemControllerCache__queue_updateAudioSessionPlayingFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke;
  v26[3] = &unk_2783B1EE8;
  v28 = v10;
  v26[4] = self;
  v16 = v15;
  v27 = v16;
  v17 = MEMORY[0x223D6F7F0](v26);
  if (v10)
  {
    if (!v12)
    {
      v19 = self->_queue_dataProvider;
      backgroundQueryQueue = self->_backgroundQueryQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __176__SBAVSystemControllerCache__queue_updateAudioSessionPlayingFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_60;
      block[3] = &unk_2783B1E98;
      v22 = v19;
      v23 = self;
      v24 = v13;
      v25 = v17;
      v18 = v19;
      dispatch_async(backgroundQueryQueue, block);

      goto LABEL_6;
    }

    v18 = [v12 objectForKey:*MEMORY[0x277D26DB8]];
    v14[2](v14);
  }

  else
  {
    v18 = [(SBAVSystemControllerDataProviding *)self->_queue_dataProvider attributeForKey:*MEMORY[0x277D26C80]];
  }

  (v17)[2](v17, v18);
LABEL_6:
}

uint64_t __176__SBAVSystemControllerCache__queue_updateAudioSessionPlayingFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 count] != 0;
  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (*(v4 + 98) != v3)
    {
      *(v4 + 98) = v3;
      v5 = SBLogAVSystemControllerCache();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 98);
        *buf = 67109120;
        v14 = v6;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updated audioSessionPlaying to %{BOOL}i", buf, 8u);
      }

      v7 = *(a1 + 32);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __176__SBAVSystemControllerCache__queue_updateAudioSessionPlayingFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_56;
      v11[3] = &unk_2783B1EC0;
      v11[4] = v7;
      v12 = v3;
      [v7 _queue_notifyObserversWithBlock:v11];
    }
  }

  else
  {
    *(v4 + 98) = v3;
    v8 = SBLogAVSystemControllerCache();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 98);
      *buf = 67109120;
      v14 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Initialized audioSessionPlaying to %{BOOL}i", buf, 8u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __176__SBAVSystemControllerCache__queue_updateAudioSessionPlayingFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_56(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cache:*(a1 + 32) didUpdateAudioSessionPlaying:*(a1 + 40)];
  }
}

void __176__SBAVSystemControllerCache__queue_updateAudioSessionPlayingFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_60(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeForKey:*MEMORY[0x277D26C80]];
  v3 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __176__SBAVSystemControllerCache__queue_updateAudioSessionPlayingFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2;
  block[3] = &unk_2783B1F10;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

uint64_t __176__SBAVSystemControllerCache__queue_updateAudioSessionPlayingFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

- (void)_queue_updateActiveCategoryNameFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __175__SBAVSystemControllerCache__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke;
  v34[3] = &unk_2783B1F60;
  v36 = v10;
  v34[4] = self;
  v16 = v15;
  v35 = v16;
  v17 = MEMORY[0x223D6F7F0](v34);
  if (v10)
  {
    v18 = [v12 objectForKey:*MEMORY[0x277D26BB0]];
    v19 = [v18 copy];

    if (v19)
    {
      v14[2](v14);
      (v17)[2](v17, v19);
    }

    else
    {
      v25 = self->_queue_dataProvider;
      backgroundQueryQueue = self->_backgroundQueryQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __175__SBAVSystemControllerCache__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_65;
      block[3] = &unk_2783B1E98;
      v30 = v25;
      v31 = self;
      v32 = v13;
      v33 = v17;
      v27 = v25;
      dispatch_async(backgroundQueryQueue, block);
    }
  }

  else
  {
    v19 = self->_queue_dataProvider;
    v28 = 0;
    v20 = [(SBAVSystemControllerDataProviding *)v19 getActiveCategoryVolume:0 andName:&v28];
    v21 = v28;
    v22 = v21;
    if (!v20 || !v21)
    {
      v23 = SBLogAVSystemControllerCache();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [SBAVSystemControllerCache _queue_updateActiveCategoryNameFromNotification:allowingBackgroundQueries:backgroundQueriesCancelledBlock:cancelBackgroundQueriesBlock:completion:];
      }
    }

    v24 = [v22 copy];

    (v17)[2](v17, v24);
  }
}

void __175__SBAVSystemControllerCache__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (*(a1 + 48) == 1)
  {
    if ((BSEqualStrings() & 1) == 0)
    {
      objc_storeStrong((*(a1 + 32) + 104), a2);
      v9 = SBLogAVSystemControllerCache();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 104);
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Updated activeCategoryName to %@", buf, 0xCu);
      }

      v11 = *(a1 + 32);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __175__SBAVSystemControllerCache__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_61;
      v15[3] = &unk_2783B1F38;
      v15[4] = v11;
      v16 = v4;
      [v11 _queue_notifyObserversWithBlock:v15];
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 104), a2);
    v12 = SBLogAVSystemControllerCache();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 104);
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Initialized activeCategoryName to %@", buf, 0xCu);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6, v7, v8);
  }
}

void __175__SBAVSystemControllerCache__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cache:*(a1 + 32) didUpdateActiveCategoryName:*(a1 + 40)];
  }
}

void __175__SBAVSystemControllerCache__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_65(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = 0;
  v3 = [v2 getActiveCategoryVolume:0 andName:&v15];
  v4 = v15;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = SBLogAVSystemControllerCache();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __175__SBAVSystemControllerCache__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_65_cold_1();
    }
  }

  v8 = [v5 copy];

  v9 = *(*(a1 + 40) + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __175__SBAVSystemControllerCache__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_66;
  v11[3] = &unk_2783B1F10;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, v11);
}

uint64_t __175__SBAVSystemControllerCache__queue_updateActiveCategoryNameFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_66(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

- (void)_queue_updateActiveAudioRouteFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7
{
  v8 = a4;
  v10 = a5;
  v11 = a7;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke;
  v26[3] = &unk_2783B1FB0;
  v28 = v8;
  v26[4] = self;
  v12 = v11;
  v27 = v12;
  v13 = MEMORY[0x223D6F7F0](v26);
  queue_dataProvider = self->_queue_dataProvider;
  if (v8)
  {
    v15 = queue_dataProvider;
    backgroundQueryQueue = self->_backgroundQueryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_73;
    block[3] = &unk_2783B1E98;
    v22 = v15;
    v23 = self;
    v24 = v10;
    v25 = v13;
    v17 = v15;
    dispatch_async(backgroundQueryQueue, block);

    v18 = v22;
  }

  else
  {
    v19 = [(SBAVSystemControllerDataProviding *)queue_dataProvider attributeForKey:*MEMORY[0x277D26AF8]];
    v17 = [v19 copy];

    v20 = [(SBAVSystemControllerDataProviding *)self->_queue_dataProvider attributeForKey:*MEMORY[0x277D26C70]];
    v18 = [v20 copy];

    (v13)[2](v13, v17, v18);
  }
}

void __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a1 + 32;
  if (*(a1 + 48) != 1)
  {
    objc_storeStrong((*(a1 + 32) + 112), a2);
    objc_storeStrong((*v8 + 120), a3);
    v17 = SBLogAVSystemControllerCache();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

    v19 = SBLogAVSystemControllerCache();
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(*v8 + 112);
      *buf = 138412290;
      v31 = v21;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Initialized activeAudioRoute (and attributes) to %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (!BSEqualStrings() || (BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong((*v8 + 112), a2);
    objc_storeStrong((*v8 + 120), a3);
    v13 = SBLogAVSystemControllerCache();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

    v15 = SBLogAVSystemControllerCache();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_2();
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*v8 + 112);
      *buf = 138412290;
      v31 = v22;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Updated activeAudioRoute (and attributes) to %@", buf, 0xCu);
    }

    v23 = *(*v8 + 136);
    v24 = *v8;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_67;
    v26[3] = &unk_2783B1F88;
    v26[4] = v24;
    v27 = v6;
    v28 = v7;
    v29 = v23;
    v20 = v23;
    [v24 _queue_notifyObserversWithBlock:v26];

LABEL_15:
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, v9, v10, v11, v12);
  }
}

void __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_67(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cache:a1[4] didUpdateActiveAudioRoutingWithRoute:a1[5] routeAttributes:a1[6] activeOutputDevices:a1[7]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 cache:a1[4] didUpdateActiveAudioRoute:a1[5]];
  }
}

void __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_73(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeForKey:*MEMORY[0x277D26AF8]];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) attributeForKey:*MEMORY[0x277D26C70]];
  v5 = [v4 copy];

  v6 = *(*(a1 + 40) + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2;
  v9[3] = &unk_2783B1FD8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v10 = v3;
  v11 = v5;
  v7 = v5;
  v8 = v3;
  dispatch_async(v6, v9);
}

uint64_t __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 48) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 56) + 16);

    return v3();
  }

  return result;
}

- (void)_queue_updateActiveOutputDevicesFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7
{
  v8 = a4;
  v10 = a5;
  v11 = a7;
  v12 = self->_queue_activeOutputDevices;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke;
  v24[3] = &unk_2783B2000;
  v28 = v8;
  v13 = v12;
  v25 = v13;
  v26 = self;
  v14 = v11;
  v27 = v14;
  v15 = MEMORY[0x223D6F7F0](v24);
  queue_outputContext = self->_queue_outputContext;
  if (v8)
  {
    v17 = queue_outputContext;
    backgroundQueryQueue = self->_backgroundQueryQueue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_77;
    v20[3] = &unk_2783B1E98;
    v20[4] = self;
    v21 = v17;
    v22 = v10;
    v23 = v15;
    v19 = v17;
    dispatch_async(backgroundQueryQueue, v20);
  }

  else
  {
    v19 = [(SBAVSystemControllerCache *)self _queryActiveOutputDevicesFromContext:queue_outputContext];
    (v15)[2](v15, v19);
  }
}

void __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 56) == 1)
  {
    if (BSEqualObjects())
    {
      goto LABEL_15;
    }

    objc_storeStrong((*(a1 + 40) + 136), a2);
    v9 = SBLogAVSystemControllerCache();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

    v11 = SBLogAVSystemControllerCache();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_2();
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Updated activeOutputDevices", buf, 2u);
    }

    v17 = *(*(a1 + 40) + 112);
    v18 = *(*(a1 + 40) + 120);
    v19 = *(a1 + 40);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_74;
    v22[3] = &unk_2783B1F88;
    v22[4] = v19;
    v23 = v17;
    v24 = v18;
    v25 = v4;
    v20 = v18;
    v16 = v17;
    [v19 _queue_notifyObserversWithBlock:v22];
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 136), a2);
    v13 = SBLogAVSystemControllerCache();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

    v15 = SBLogAVSystemControllerCache();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Initialized activeOutputDevices", buf, 2u);
    }
  }

LABEL_15:
  v21 = *(a1 + 48);
  if (v21)
  {
    (*(v21 + 16))(v21, v5, v6, v7, v8);
  }
}

void __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_74(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cache:a1[4] didUpdateActiveAudioRoutingWithRoute:a1[5] routeAttributes:a1[6] activeOutputDevices:a1[7]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 cache:a1[4] didUpdateActiveOutputDevices:a1[7]];
  }
}

void __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_77(uint64_t a1)
{
  v2 = [*(a1 + 32) _queryActiveOutputDevicesFromContext:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2;
  block[3] = &unk_2783B1F10;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

uint64_t __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

- (void)_queue_updatePickableRoutesFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7
{
  v8 = a4;
  v10 = a5;
  v11 = a7;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke;
  v24[3] = &unk_2783B1EE8;
  v26 = v8;
  v24[4] = self;
  v12 = v11;
  v25 = v12;
  v13 = MEMORY[0x223D6F7F0](v24);
  queue_dataProvider = self->_queue_dataProvider;
  if (v8)
  {
    v15 = queue_dataProvider;
    backgroundQueryQueue = self->_backgroundQueryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_81;
    block[3] = &unk_2783B1E98;
    v20 = v15;
    v21 = self;
    v22 = v10;
    v23 = v13;
    v17 = v15;
    dispatch_async(backgroundQueryQueue, block);
  }

  else
  {
    v18 = [(SBAVSystemControllerDataProviding *)queue_dataProvider attributeForKey:*MEMORY[0x277D26C60]];
    v17 = [v18 copy];

    (v13)[2](v13, v17);
  }
}

void __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = a1 + 32;
  if (*(a1 + 48) == 1)
  {
    if ((BSEqualObjects() & 1) == 0)
    {
      objc_storeStrong((*v5 + 128), a2);
      v10 = SBLogAVSystemControllerCache();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

      v12 = SBLogAVSystemControllerCache();
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_2();
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Updated pickableRoutes", buf, 2u);
      }

      v18 = *v5;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_78;
      v20[3] = &unk_2783B1F38;
      v20[4] = v18;
      v21 = v4;
      [v18 _queue_notifyObserversWithBlock:v20];
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 128), a2);
    v14 = SBLogAVSystemControllerCache();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

    v16 = SBLogAVSystemControllerCache();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Initialized pickableRoutes", buf, 2u);
    }
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(v19 + 16))(v19, v6, v7, v8, v9);
  }
}

void __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cache:*(a1 + 32) didUpdatePickableRoutes:*(a1 + 40)];
  }
}

void __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_81(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeForKey:*MEMORY[0x277D26C60]];
  v3 = [v2 copy];

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2;
  block[3] = &unk_2783B1F10;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

- (void)_queue_updateAirplayDisplayActiveFromNotification:(id)a3 allowingBackgroundQueries:(BOOL)a4 backgroundQueriesCancelledBlock:(id)a5 cancelBackgroundQueriesBlock:(id)a6 completion:(id)a7
{
  v8 = a4;
  v10 = a5;
  v11 = a7;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __177__SBAVSystemControllerCache__queue_updateAirplayDisplayActiveFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke;
  v25[3] = &unk_2783B1E48;
  v27 = v8;
  v25[4] = self;
  v12 = v11;
  v26 = v12;
  v13 = MEMORY[0x223D6F7F0](v25);
  queue_dataProvider = self->_queue_dataProvider;
  if (v8)
  {
    v15 = queue_dataProvider;
    backgroundQueryQueue = self->_backgroundQueryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __177__SBAVSystemControllerCache__queue_updateAirplayDisplayActiveFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_85;
    block[3] = &unk_2783B1E98;
    v21 = v15;
    v22 = self;
    v23 = v10;
    v24 = v13;
    v17 = v15;
    dispatch_async(backgroundQueryQueue, block);
  }

  else
  {
    v18 = [(SBAVSystemControllerDataProviding *)queue_dataProvider attributeForKey:*MEMORY[0x277D26B80]];
    v19 = [v18 isEqualToString:*MEMORY[0x277D26BE0]];

    v13[2](v13, v19);
  }
}

uint64_t __177__SBAVSystemControllerCache__queue_updateAirplayDisplayActiveFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke(uint64_t a1, int a2)
{
  v2 = a2;
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (*(v4 + 99) != a2)
    {
      *(v4 + 99) = a2;
      v5 = SBLogAVSystemControllerCache();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(a1 + 32) + 99);
        *buf = 67109120;
        v14 = v6;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Updated airplayDisplayActive to %{BOOL}i", buf, 8u);
      }

      v7 = *(a1 + 32);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __177__SBAVSystemControllerCache__queue_updateAirplayDisplayActiveFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_82;
      v11[3] = &unk_2783B1EC0;
      v11[4] = v7;
      v12 = v2;
      [v7 _queue_notifyObserversWithBlock:v11];
    }
  }

  else
  {
    *(v4 + 99) = a2;
    v8 = SBLogAVSystemControllerCache();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 99);
      *buf = 67109120;
      v14 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Initialized airplayDisplayActive to %{BOOL}i", buf, 8u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __177__SBAVSystemControllerCache__queue_updateAirplayDisplayActiveFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cache:*(a1 + 32) didUpdateAirplayDisplayActive:*(a1 + 40)];
  }
}

void __177__SBAVSystemControllerCache__queue_updateAirplayDisplayActiveFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_85(uint64_t a1)
{
  v2 = [*(a1 + 32) attributeForKey:*MEMORY[0x277D26B80]];
  v3 = [v2 isEqualToString:*MEMORY[0x277D26BE0]];

  v4 = *(*(a1 + 40) + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __177__SBAVSystemControllerCache__queue_updateAirplayDisplayActiveFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2;
  block[3] = &unk_2783B1E70;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = v3;
  dispatch_async(v4, block);
}

uint64_t __177__SBAVSystemControllerCache__queue_updateAirplayDisplayActiveFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (id)_queryActiveOutputDevicesFromContext:(id)a3
{
  if (self->_outputContextSupportsMultipleOutputDevices)
  {
    v3 = [a3 outputDevices];
  }

  else
  {
    v4 = [a3 outputDevice];
    if (v4)
    {
      [MEMORY[0x277CBEA60] arrayWithObject:v4];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    v3 = ;
  }

  return v3;
}

- (id)_queue_backgroundQueryCancellationSignalForNotificationCreatingIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_notificationToBackgroundQueryCancellationSignalMap objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CF0B80]);
    [(NSMutableDictionary *)self->_notificationToBackgroundQueryCancellationSignalMap setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_queue_signalBackgroundQueryCancellationForNotification:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableDictionary *)self->_notificationToBackgroundQueryCancellationSignalMap objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 signal];
    [(NSMutableDictionary *)self->_notificationToBackgroundQueryCancellationSignalMap removeObjectForKey:v6];
  }
}

- (void)_queue_rebuildCache
{
  queue_dataProvider = self->_queue_dataProvider;
  self->_queue_dataProvider = 0;

  queue_serverDeathSignal = self->_queue_serverDeathSignal;
  if (queue_serverDeathSignal)
  {
    [(BSAtomicSignal *)queue_serverDeathSignal signal];
  }

  v5 = objc_alloc_init(MEMORY[0x277CF0B80]);
  v6 = self->_queue_serverDeathSignal;
  self->_queue_serverDeathSignal = v5;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SBAVSystemControllerCache__queue_rebuildCache__block_invoke;
  v9[3] = &unk_2783A92D8;
  v10 = v5;
  v11 = self;
  v7 = v5;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v9);
  dispatch_async(self->_backgroundQueryQueue, v8);
}

void __48__SBAVSystemControllerCache__queue_rebuildCache__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasBeenSignalled])
  {
    v2 = SBLogAVSystemControllerCache();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling rebuilding data provider since the server has died", buf, 2u);
    }
  }

  else
  {
    v3 = [*(a1 + 40) _backgroundQueryQueue_rebuildDataProvider];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SBAVSystemControllerCache__queue_rebuildCache__block_invoke_88;
    block[3] = &unk_2783A8ED8;
    v4 = *(a1 + 32);
    block[4] = *(a1 + 40);
    v7 = v3;
    v8 = v4;
    v2 = v3;
    v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(*(*(a1 + 40) + 32), v5);
  }
}

- (id)_backgroundQueryQueue_rebuildDataProvider
{
  v21[10] = *MEMORY[0x277D85DE8];
  v3 = SBLogAVSystemControllerCache();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Rebuilding data provider", buf, 2u);
  }

  v4 = (*(self->_dataProviderInitializer + 2))();
  v5 = *MEMORY[0x277D26C10];
  v21[0] = *MEMORY[0x277D26BA8];
  v21[1] = v5;
  v6 = *MEMORY[0x277D26D58];
  v21[2] = *MEMORY[0x277D26BF0];
  v21[3] = v6;
  v7 = *MEMORY[0x277D26BD8];
  v21[4] = *MEMORY[0x277D26DA8];
  v21[5] = v7;
  v8 = *MEMORY[0x277D26B00];
  v21[6] = *MEMORY[0x277D26D68];
  v21[7] = v8;
  v9 = *MEMORY[0x277D26D40];
  v21[8] = *MEMORY[0x277D26C68];
  v21[9] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:10];
  v11 = *MEMORY[0x277D26DD0];
  v19 = 0;
  v12 = [v4 setAttribute:v10 forKey:v11 error:&v19];
  v13 = v19;
  v14 = SBLogAVSystemControllerCache();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Successfully subscribed to all necessary AVSystemController notifications.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBAVSystemControllerCache _backgroundQueryQueue_rebuildDataProvider];
    }

    v16 = SBLogCommon();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v17)
    {
      NSLog(&cfstr_WeReallyShould.isa, v13);
    }
  }

  return v4;
}

- (void)_queue_finishRebuildingCacheWithDataProvider:(id)a3 serverDeathSignal:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 hasBeenSignalled];
  v10 = SBLogAVSystemControllerCache();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Cancelling finishing rebuilding cache since the server has died", buf, 2u);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Finishing rebuilding cache", buf, 2u);
    }

    objc_storeStrong(&self->_queue_dataProvider, a3);
    *buf = 0;
    v29 = buf;
    v30 = 0x2020000000;
    v31 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke;
    v25[3] = &unk_2783A92D8;
    v12 = v8;
    v26 = v12;
    v27 = self;
    v13 = MEMORY[0x223D6F7F0](v25);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_3;
    v22[3] = &unk_2783B2050;
    v24 = buf;
    v14 = v13;
    v23 = v14;
    v15 = MEMORY[0x223D6F7F0](v22);
    notificationToHandlerMap = self->_notificationToHandlerMap;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_4;
    v18[3] = &unk_2783B20A0;
    v18[4] = self;
    v19 = v12;
    v17 = v15;
    v20 = v17;
    v21 = buf;
    [(NSMutableDictionary *)notificationToHandlerMap enumerateKeysAndObjectsUsingBlock:v18];
    self->_queue_initialized = 1;

    _Block_object_dispose(buf, 8);
  }
}

uint64_t __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasBeenSignalled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_2;
    v4[3] = &unk_2783B2028;
    v4[4] = v3;
    return [v3 _queue_notifyObserversWithBlock:v4];
  }

  return result;
}

void __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 cacheDidRebuildAfterServerDeath:*(a1 + 32)];
  }
}

uint64_t __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_3(uint64_t result)
{
  if (!--*(*(*(result + 40) + 8) + 24))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 pointerValue];
  v7 = [*(a1 + 32) methodForSelector:v6];
  v8 = [*(a1 + 32) _queue_backgroundQueryCancellationSignalForNotificationCreatingIfNecessary:v5];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_5;
  v21[3] = &unk_2783B2078;
  v21[4] = *(a1 + 32);
  v9 = v8;
  v22 = v9;
  v23 = *(a1 + 40);
  v10 = MEMORY[0x223D6F7F0](v21);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_6;
  v18[3] = &unk_2783AA1E8;
  v18[4] = *(a1 + 32);
  v19 = v5;
  v20 = *(a1 + 48);
  v11 = v5;
  v12 = MEMORY[0x223D6F7F0](v18);
  ++*(*(*(a1 + 56) + 8) + 24);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_7;
  v15[3] = &unk_2783AA1E8;
  v15[4] = *(a1 + 32);
  v16 = v9;
  v17 = *(a1 + 48);
  v13 = v9;
  v14 = MEMORY[0x223D6F7F0](v15);
  v7(*(a1 + 32), v6, 0, *(*(a1 + 32) + 80), v10, v12, v14);
}

uint64_t __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_5(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 32));
  if ([*(a1 + 40) hasBeenSignalled])
  {
    return 1;
  }

  v3 = *(a1 + 48);

  return [v3 hasBeenSignalled];
}

uint64_t __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_6(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 32));
  [*(a1 + 32) _queue_signalBackgroundQueryCancellationForNotification:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __92__SBAVSystemControllerCache__queue_finishRebuildingCacheWithDataProvider_serverDeathSignal___block_invoke_7(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 32));
  result = [*(a1 + 40) hasBeenSignalled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

- (void)_serverDied:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SBAVSystemControllerCache__serverDied___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = v4;
  v9 = self;
  v5 = v4;
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v7);
  dispatch_async(self->_queue, v6);
}

uint64_t __41__SBAVSystemControllerCache__serverDied___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogAVSystemControllerCache();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Notification '%@' received", &v5, 0xCu);
  }

  return [*(a1 + 40) _queue_rebuildCache];
}

- (void)_receiveUpdatedValueFromNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 name];
  v7 = [v4 userInfo];

  queue = self->_queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__SBAVSystemControllerCache__receiveUpdatedValueFromNotification___block_invoke;
  v12[3] = &unk_2783A9BD8;
  v13 = v5;
  v14 = self;
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(queue, v12);
}

void __66__SBAVSystemControllerCache__receiveUpdatedValueFromNotification___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (a1 + 32);
  v6 = *(v4 + 56);
  if (v3 != v6 || v6 == 0)
  {
    v8 = *(v4 + 48);
    if (v3 != v8 || v8 == 0)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = [v10 stringWithFormat:@"sender: <%@:%p> data provider: <%@:%p>, output context: <%@:%p>", v11, v12, v13, *(*(a1 + 40) + 56), objc_opt_class(), *(*(a1 + 40) + 48)];;
      v15 = SBLogAVSystemControllerCache();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        *buf = 138543618;
        v37 = v16;
        v38 = 2114;
        v39 = v14;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring notification '%{public}@' from %{public}@", buf, 0x16u);
      }

      goto LABEL_20;
    }
  }

  v17 = SBLogAVSystemControllerCache();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);

  v19 = SBLogAVSystemControllerCache();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __66__SBAVSystemControllerCache__receiveUpdatedValueFromNotification___block_invoke_cold_1(a1, v5, v20);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 48);
    *buf = 138412290;
    v37 = v21;
    _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_INFO, "Notification '%@' received", buf, 0xCu);
  }

  v22 = [*(*(a1 + 40) + 64) objectForKeyedSubscript:*(a1 + 48)];
  v14 = v22;
  if (v22)
  {
    v23 = [v22 pointerValue];
    v24 = [*(a1 + 40) methodForSelector:v23];
    v25 = *(*(a1 + 40) + 88);
    v26 = [*(a1 + 40) _queue_backgroundQueryCancellationSignalForNotificationCreatingIfNecessary:*(a1 + 48)];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __66__SBAVSystemControllerCache__receiveUpdatedValueFromNotification___block_invoke_95;
    v33[3] = &unk_2783A94B0;
    v34 = v26;
    v35 = v25;
    v15 = v25;
    v27 = v26;
    v28 = MEMORY[0x223D6F7F0](v33);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __66__SBAVSystemControllerCache__receiveUpdatedValueFromNotification___block_invoke_2;
    v31[3] = &unk_2783A92D8;
    v29 = *(a1 + 48);
    v31[4] = *(a1 + 40);
    v32 = v29;
    v30 = MEMORY[0x223D6F7F0](v31);
    v24(*(a1 + 40), v23, *(a1 + 56), *(*(a1 + 40) + 80), v28, v30, 0);

LABEL_20:
  }
}

uint64_t __66__SBAVSystemControllerCache__receiveUpdatedValueFromNotification___block_invoke_95(uint64_t a1)
{
  if ([*(a1 + 32) hasBeenSignalled])
  {
    return 1;
  }

  v3 = *(a1 + 40);

  return [v3 hasBeenSignalled];
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAVSystemControllerCache.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
}

void __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __173__SBAVSystemControllerCache__queue_updateActiveAudioRouteFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __176__SBAVSystemControllerCache__queue_updateActiveOutputDevicesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __171__SBAVSystemControllerCache__queue_updatePickableRoutesFromNotification_allowingBackgroundQueries_backgroundQueriesCancelledBlock_cancelBackgroundQueriesBlock_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_backgroundQueryQueue_rebuildDataProvider
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_ERROR, "Failed to subscribe to AVSystemController notifications due to error: %@", v1, 0xCu);
}

void __66__SBAVSystemControllerCache__receiveUpdatedValueFromNotification___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = 138412802;
  v7 = v4;
  v8 = 2048;
  v9 = v3;
  v10 = 2112;
  v11 = v5;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "Notification '%@' received from %p : %@", &v6, 0x20u);
}

@end