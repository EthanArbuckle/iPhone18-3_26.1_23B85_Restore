@interface VOSOutputEventDispatcher
+ (VOSOutputEventDispatcher)sharedInstance;
- (BOOL)shouldPlayHapticForEvent:(id)event;
- (BOOL)shouldPlaySoundForEvent:(id)event;
- (id)_activeHapticPack;
- (id)_activeSoundPack;
- (id)_init;
- (void)addEventHandler:(id)handler;
- (void)removeEventHandler:(id)handler;
- (void)sendEvent:(id)event;
@end

@implementation VOSOutputEventDispatcher

+ (VOSOutputEventDispatcher)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[VOSOutputEventDispatcher sharedInstance];
  }

  v3 = sharedInstance__Shared_0;

  return v3;
}

uint64_t __42__VOSOutputEventDispatcher_sharedInstance__block_invoke()
{
  sharedInstance__Shared_0 = [[VOSOutputEventDispatcher alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = VOSOutputEventDispatcher;
  v2 = [(VOSOutputEventDispatcher *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("VOSOutputEventDispatcher", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    eventHandlers = v2->_eventHandlers;
    v2->_eventHandlers = weakObjectsHashTable;
  }

  return v2;
}

- (id)_activeSoundPack
{
  cachedActiveSoundPack = self->_cachedActiveSoundPack;
  if (!cachedActiveSoundPack)
  {
    v4 = objc_alloc_init(VOSDefaultSoundPack);
    v5 = self->_cachedActiveSoundPack;
    self->_cachedActiveSoundPack = v4;

    cachedActiveSoundPack = self->_cachedActiveSoundPack;
  }

  return cachedActiveSoundPack;
}

- (id)_activeHapticPack
{
  cachedActiveHapticPack = self->_cachedActiveHapticPack;
  if (!cachedActiveHapticPack)
  {
    v4 = objc_alloc_init(VOSDefaultHapticPack);
    v5 = self->_cachedActiveHapticPack;
    self->_cachedActiveHapticPack = v4;

    cachedActiveHapticPack = self->_cachedActiveHapticPack;
  }

  return cachedActiveHapticPack;
}

- (void)addEventHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__VOSOutputEventDispatcher_addEventHandler___block_invoke;
  v7[3] = &unk_2784F3478;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeEventHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__VOSOutputEventDispatcher_removeEventHandler___block_invoke;
  v7[3] = &unk_2784F3478;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)shouldPlaySoundForEvent:(id)event
{
  eventCopy = event;
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  if ([mEMORY[0x277CE7E20] voiceOverSoundEffectsEnabled])
  {
    rawValue = [eventCopy rawValue];
    v6 = [mEMORY[0x277CE7E20] voiceOverSoundEnabledForEvent:rawValue];

    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)shouldPlayHapticForEvent:(id)event
{
  eventCopy = event;
  if (_AXSVibrationDisabled())
  {
    bOOLValue = 0;
  }

  else
  {
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    if ([mEMORY[0x277CE7E20] voiceOverHapticsEnabled])
    {
      rawValue = [eventCopy rawValue];
      v7 = [mEMORY[0x277CE7E20] voiceOverHapticEnabledForEvent:rawValue];
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__VOSOutputEventDispatcher_sendEvent___block_invoke;
  v7[3] = &unk_2784F3478;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(queue, v7);
}

void __38__VOSOutputEventDispatcher_sendEvent___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = VOTLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__VOSOutputEventDispatcher_sendEvent___block_invoke_cold_1(a1, v2);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(*(a1 + 40) + 16);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        v11 = [v9 _activeSoundPack];
        v12 = [*(a1 + 40) _activeHapticPack];
        [v8 dispatcher:v9 handleEvent:v10 soundPack:v11 hapticPack:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __38__VOSOutputEventDispatcher_sendEvent___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_223C70000, a2, OS_LOG_TYPE_DEBUG, "Sending output event: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end