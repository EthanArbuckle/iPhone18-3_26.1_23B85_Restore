@interface STServerLaunchMonitor
+ (id)sharedInstance;
- (STServerLaunchMonitor)init;
- (void)addObserver:(id)a3;
- (void)invalidate;
- (void)removeObserver:(id)a3;
@end

@implementation STServerLaunchMonitor

+ (id)sharedInstance
{
  if (qword_1ED7F5C98 != -1)
  {
    dispatch_once(&qword_1ED7F5C98, &__block_literal_global_2);
  }

  v3 = _MergedGlobals_4;

  return v3;
}

uint64_t __39__STServerLaunchMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(STServerLaunchMonitor);
  v1 = _MergedGlobals_4;
  _MergedGlobals_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (STServerLaunchMonitor)init
{
  v15.receiver = self;
  v15.super_class = STServerLaunchMonitor;
  v2 = [(STServerLaunchMonitor *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = SerialWithQoS;

    v7 = BSDispatchQueueCreateSerialWithQoS();
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v7;

    v2->_notifyToken = -1;
    objc_initWeak(&location, v2);
    v9 = v2->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__STServerLaunchMonitor_init__block_invoke;
    block[3] = &unk_1E85DE040;
    v12 = v2;
    objc_copyWeak(&v13, &location);
    dispatch_sync(v9, block);
    objc_destroyWeak(&v13);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__STServerLaunchMonitor_init__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __29__STServerLaunchMonitor_init__block_invoke_2;
  handler[3] = &unk_1E85DE018;
  objc_copyWeak(&v6, (a1 + 40));
  notify_register_dispatch("com.apple.systemstatus.server-launch", (v2 + 8), v4, handler);

  objc_destroyWeak(&v6);
}

void __29__STServerLaunchMonitor_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [*(WeakRetained + 2) copy];
    v4 = v2[4];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __29__STServerLaunchMonitor_init__block_invoke_3;
    v6[3] = &unk_1E85DDD00;
    v7 = v3;
    v8 = v2;
    v5 = v3;
    dispatch_async(v4, v6);
  }
}

void __29__STServerLaunchMonitor_init__block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v6++) didObserveServerLaunch:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__STServerLaunchMonitor_invalidate__block_invoke;
  block[3] = &unk_1E85DE068;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __35__STServerLaunchMonitor_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3 != -1)
  {
    notify_cancel(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__STServerLaunchMonitor_addObserver___block_invoke;
  v7[3] = &unk_1E85DDD00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

uint64_t __37__STServerLaunchMonitor_addObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (self)
  {
    internalQueue = self->_internalQueue;
  }

  else
  {
    internalQueue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__STServerLaunchMonitor_removeObserver___block_invoke;
  v7[3] = &unk_1E85DDD00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

uint64_t __40__STServerLaunchMonitor_removeObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 removeObject:*(a1 + 40)];
}

@end