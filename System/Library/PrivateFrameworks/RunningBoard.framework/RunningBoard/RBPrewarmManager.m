@interface RBPrewarmManager
- (RBPrewarmManager)initWithDelegate:(id)a3 timeProvider:(id)a4;
- (void)_queue_addPrewarmForIdentity:(id)a3;
- (void)_queue_checkForNewPrewarms;
- (void)_queue_runPrewarm;
- (void)_queue_schedulePrewarmForIdentity:(id)a3 withInterval:(id)a4;
- (void)identityDidTerminate:(id)a3;
- (void)prewarmingConfigurationDidChange:(id)a3;
@end

@implementation RBPrewarmManager

- (RBPrewarmManager)initWithDelegate:(id)a3 timeProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [RBPrewarmManager initWithDelegate:a2 timeProvider:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [RBPrewarmManager initWithDelegate:a2 timeProvider:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = RBPrewarmManager;
  v10 = [(RBPrewarmManager *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v7);
    objc_storeStrong(&v11->_timeProvider, a4);
    v12 = [MEMORY[0x277D47028] createBackgroundQueue:@"RBPrewarmManager"];
    prewarmingQueue = v11->_prewarmingQueue;
    v11->_prewarmingQueue = v12;

    v11->_dataLock._os_unfair_lock_opaque = 0;
    v14 = v11;
  }

  return v11;
}

- (void)_queue_runPrewarm
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_prewarmingQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = self->_pendingPrewarms;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [MEMORY[0x277D46EB0] contextWithIdentity:*(*(&v13 + 1) + 8 * v6)];
        [v7 setExplanation:@"RunningBoard Prewarming"];
        v8 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v7];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained executeLaunchRequest:v8 withCompletion:&__block_literal_global_9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  pendingPrewarms = self->_pendingPrewarms;
  self->_pendingPrewarms = 0;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addPrewarmForIdentity:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_prewarmingQueue);
  pendingPrewarms = self->_pendingPrewarms;
  if (!pendingPrewarms)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_pendingPrewarms;
    self->_pendingPrewarms = v6;

    prewarmingQueue = self->_prewarmingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__RBPrewarmManager__queue_addPrewarmForIdentity___block_invoke;
    block[3] = &unk_279B32CB0;
    block[4] = self;
    dispatch_async(prewarmingQueue, block);
    pendingPrewarms = self->_pendingPrewarms;
  }

  [(NSMutableSet *)pendingPrewarms addObject:v4];
}

- (void)_queue_checkForNewPrewarms
{
  dispatch_assert_queue_V2(self->_prewarmingQueue);
  os_unfair_lock_lock(&self->_dataLock);
  v3 = self->_lastAppliedConfiguration;
  objc_storeStrong(&self->_lastAppliedConfiguration, self->_currentConfiguration);
  v4 = self->_currentConfiguration;
  os_unfair_lock_unlock(&self->_dataLock);
  if (v3 != v4 && (!v3 || !v4 || ([(NSDictionary *)v3 isEqual:v4]& 1) == 0))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__RBPrewarmManager__queue_checkForNewPrewarms__block_invoke;
    v5[3] = &unk_279B33668;
    v6 = v3;
    v7 = self;
    [(NSDictionary *)v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __46__RBPrewarmManager__queue_checkForNewPrewarms__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = v5;
  v7 = [*(a1 + 32) objectForKey:?];
  if (!v7 || ([v6 doubleValue], v9 = v8, objc_msgSend(v7, "doubleValue"), v9 < v10))
  {
    [*(a1 + 40) _queue_addPrewarmForIdentity:v11];
  }
}

- (void)_queue_schedulePrewarmForIdentity:(id)a3 withInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_prewarmingQueue);
  if (!self->_prewarmingEventQueue)
  {
    v8 = [[RBEventQueue alloc] initWithQueue:self->_prewarmingQueue timeProvider:self->_timeProvider];
    prewarmingEventQueue = self->_prewarmingEventQueue;
    self->_prewarmingEventQueue = v8;
  }

  pendingPrewarms = self->_pendingPrewarms;
  if (!pendingPrewarms || ([(NSMutableSet *)pendingPrewarms containsObject:v6]& 1) == 0)
  {
    [v7 doubleValue];
    v12 = v11;
    if (v11 == 0.0)
    {
      [(RBPrewarmManager *)self _queue_addPrewarmForIdentity:v6];
    }

    if (v12 >= 0.0 && ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v12 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v15 = objc_alloc_init(RBEventQueueEvent);
      [(RBEventQueueEvent *)v15 setContext:v6];
      [(RBTimeProviding *)self->_timeProvider currentTime];
      [(RBEventQueueEvent *)v15 setEventTime:v12 + v16];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __67__RBPrewarmManager__queue_schedulePrewarmForIdentity_withInterval___block_invoke;
      v17[3] = &unk_279B33690;
      v17[4] = self;
      [(RBEventQueueEvent *)v15 setAction:v17];
      [(RBEventQueue *)self->_prewarmingEventQueue addEvent:v15];
    }
  }
}

void __67__RBPrewarmManager__queue_schedulePrewarmForIdentity_withInterval___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 context];
  [v2 _queue_addPrewarmForIdentity:v3];
}

- (void)prewarmingConfigurationDidChange:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  currentConfiguration = self->_currentConfiguration;
  self->_currentConfiguration = v4;
  v6 = v4;

  os_unfair_lock_unlock(&self->_dataLock);
  prewarmingQueue = self->_prewarmingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RBPrewarmManager_prewarmingConfigurationDidChange___block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  dispatch_async(prewarmingQueue, block);
}

- (void)identityDidTerminate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_dataLock);
  v5 = [(NSDictionary *)self->_currentConfiguration objectForKey:v4];
  if (v5)
  {
    prewarmingQueue = self->_prewarmingQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__RBPrewarmManager_identityDidTerminate___block_invoke;
    block[3] = &unk_279B329D0;
    block[4] = self;
    v8 = v4;
    v9 = v5;
    dispatch_async(prewarmingQueue, block);
  }

  os_unfair_lock_unlock(&self->_dataLock);
}

- (void)initWithDelegate:(uint64_t)a1 timeProvider:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBPrewarmManager.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

- (void)initWithDelegate:(uint64_t)a1 timeProvider:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBPrewarmManager.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"timeProvider"}];
}

@end