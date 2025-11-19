@interface VTTriggerEventMonitorManager
+ (id)sharedManager;
- (VTTriggerEventMonitorManager)init;
- (void)addConnection:(id)a3;
- (void)notifyEarlyDetect;
- (void)notifyVoiceTrigger;
- (void)removeConnection:(id)a3;
@end

@implementation VTTriggerEventMonitorManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_143);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

- (void)notifyEarlyDetect
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__127;
  v19 = __Block_byref_object_dispose__128;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__VTTriggerEventMonitorManager_notifyEarlyDetect__block_invoke;
  block[3] = &unk_2784ED078;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(queue, block);
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Broadcasting XPC notification for EarlyDetection event", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v16[5];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v21 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) remoteObjectProxy];
        [v8 earlyDetected];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v21 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __49__VTTriggerEventMonitorManager_notifyEarlyDetect__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)notifyVoiceTrigger
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__127;
  v19 = __Block_byref_object_dispose__128;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__VTTriggerEventMonitorManager_notifyVoiceTrigger__block_invoke;
  block[3] = &unk_2784ED078;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(queue, block);
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "Broadcasting XPC notification for VoiceTrigger event", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v16[5];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v21 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) remoteObjectProxy];
        [v8 voiceTriggered];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v21 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __50__VTTriggerEventMonitorManager_notifyVoiceTrigger__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)removeConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__VTTriggerEventMonitorManager_removeConnection___block_invoke;
    v8[3] = &unk_2784ED118;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(queue, v8);
  }

  else
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, "Cannot add connection since it is nil", buf, 2u);
    }
  }
}

void __49__VTTriggerEventMonitorManager_removeConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) count];
  [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = 134349568;
    v8 = v4;
    v9 = 2050;
    v10 = v2;
    v11 = 2050;
    v12 = [v5 count];
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "Remove Connection : %{public}p, numConnection was %{public}tu, become %{public}tu", &v7, 0x20u);
  }
}

- (void)addConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__VTTriggerEventMonitorManager_addConnection___block_invoke;
    v8[3] = &unk_2784ED118;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(queue, v8);
  }

  else
  {
    v7 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_223A31000, v7, OS_LOG_TYPE_ERROR, "Cannot add connection since it is nil", buf, 2u);
    }
  }
}

void __46__VTTriggerEventMonitorManager_addConnection___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) count];
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 8);
    v6 = v3;
    v7 = 134349568;
    v8 = v4;
    v9 = 2050;
    v10 = v2;
    v11 = 2050;
    v12 = [v5 count];
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "Add Connection : %{public}p, numConnection was %{public}tu, become %{public}tu", &v7, 0x20u);
  }
}

- (VTTriggerEventMonitorManager)init
{
  v8.receiver = self;
  v8.super_class = VTTriggerEventMonitorManager;
  v2 = [(VTTriggerEventMonitorManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    connections = v2->_connections;
    v2->_connections = v3;

    v5 = dispatch_queue_create("VTTriggerEventMonitorManager queue", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

uint64_t __45__VTTriggerEventMonitorManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(VTTriggerEventMonitorManager);

  return MEMORY[0x2821F96F8]();
}

@end