@interface VTTriggerEventMonitor
+ (id)sharedMonitor;
- (VTTriggerEventMonitor)init;
- (void)_attemptConnection;
- (void)_attemptConnectionInQueue;
- (void)_earlyDetected;
- (void)_enableTriggerEventXPCNotification:(BOOL)notification;
- (void)_invalidateConnection;
- (void)_voiceTriggered;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)earlyDetected;
- (void)removeObserver:(id)observer;
- (void)voiceTriggered;
@end

@implementation VTTriggerEventMonitor

- (void)earlyDetected
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3529;
  v17 = __Block_byref_object_dispose__3530;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__VTTriggerEventMonitor_earlyDetected__block_invoke;
  block[3] = &unk_2784ED078;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(queue, block);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v14[5];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 earlyDetected];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __38__VTTriggerEventMonitor_earlyDetected__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 40) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)voiceTriggered
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3529;
  v17 = __Block_byref_object_dispose__3530;
  v18 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__VTTriggerEventMonitor_voiceTriggered__block_invoke;
  block[3] = &unk_2784ED078;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(queue, block);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v14[5];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 voiceTriggered];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __39__VTTriggerEventMonitor_voiceTriggered__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 40) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)_earlyDetected
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_observers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 earlyDetected];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_voiceTriggered
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_observers;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 voiceTriggered];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__VTTriggerEventMonitor_removeObserver___block_invoke;
  v7[3] = &unk_2784ED118;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

uint64_t __40__VTTriggerEventMonitor_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _enableTriggerEventXPCNotification:0];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__VTTriggerEventMonitor_addObserver___block_invoke;
  v7[3] = &unk_2784ED118;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

uint64_t __37__VTTriggerEventMonitor_addObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _enableTriggerEventXPCNotification:1];
}

- (void)_enableTriggerEventXPCNotification:(BOOL)notification
{
  notificationCopy = notification;
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy enableTriggerEventXPCNotification:notificationCopy];
}

- (void)_invalidateConnection
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__VTTriggerEventMonitor__invalidateConnection__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__VTTriggerEventMonitor__invalidateConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (void)_attemptConnection
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.voicetrigger.voicetriggerservice" options:4096];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28371F818];
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    v7 = self->_connection;
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28371C988];
    [(NSXPCConnection *)v7 setExportedInterface:v8];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    objc_initWeak(&location, self);
    v9 = self->_connection;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __43__VTTriggerEventMonitor__attemptConnection__block_invoke;
    v13 = &unk_2784ECDF8;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v10];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_93, v10, v11, v12, v13];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __43__VTTriggerEventMonitor__attemptConnection__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);

  if (v1)
  {
    v2 = objc_loadWeakRetained(&to);
    [v2 _invalidateConnection];
  }

  objc_destroyWeak(&to);
}

- (void)_attemptConnectionInQueue
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__VTTriggerEventMonitor__attemptConnectionInQueue__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  notifyTokenLegacyTrigger = self->_notifyTokenLegacyTrigger;
  if (notifyTokenLegacyTrigger != -1)
  {
    notify_cancel(notifyTokenLegacyTrigger);
  }

  notifyTokenLegacyEarlyDetect = self->_notifyTokenLegacyEarlyDetect;
  if (notifyTokenLegacyEarlyDetect != -1)
  {
    notify_cancel(notifyTokenLegacyEarlyDetect);
  }

  v6.receiver = self;
  v6.super_class = VTTriggerEventMonitor;
  [(VTTriggerEventMonitor *)&v6 dealloc];
}

- (VTTriggerEventMonitor)init
{
  v21.receiver = self;
  v21.super_class = VTTriggerEventMonitor;
  v2 = [(VTTriggerEventMonitor *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_create("VTTriggerEventMonitor Connection Queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_notifyToken = -1;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    objc_initWeak(&location, v2);
    v7 = v2->_queue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __29__VTTriggerEventMonitor_init__block_invoke;
    handler[3] = &unk_2784EC8F0;
    objc_copyWeak(&v19, &location);
    notify_register_dispatch("com.apple.voicetrigger.XPCRestarted", &v2->_notifyToken, v7, handler);
    v2->_notifyTokenLegacyTrigger = -1;
    v8 = v2->_queue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __29__VTTriggerEventMonitor_init__block_invoke_2;
    v16[3] = &unk_2784EC8F0;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch("com.apple.coreaudio.borealisTrigger", &v2->_notifyTokenLegacyTrigger, v8, v16);
    v2->_notifyTokenLegacyEarlyDetect = -1;
    v9 = v2->_queue;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __29__VTTriggerEventMonitor_init__block_invoke_3;
    v14 = &unk_2784EC8F0;
    objc_copyWeak(&v15, &location);
    notify_register_dispatch("com.apple.voicetrigger.EarlyDetect", &v2->_notifyTokenLegacyEarlyDetect, v9, &v11);
    [(VTTriggerEventMonitor *)v2 _attemptConnectionInQueue:v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__VTTriggerEventMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _attemptConnection];
  [WeakRetained _enableTriggerEventXPCNotification:1];
}

void __29__VTTriggerEventMonitor_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _voiceTriggered];
}

void __29__VTTriggerEventMonitor_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _earlyDetected];
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    dispatch_once(&sharedMonitor_onceToken, &__block_literal_global_3545);
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

uint64_t __38__VTTriggerEventMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor_sharedMonitor = objc_alloc_init(VTTriggerEventMonitor);

  return MEMORY[0x2821F96F8]();
}

@end