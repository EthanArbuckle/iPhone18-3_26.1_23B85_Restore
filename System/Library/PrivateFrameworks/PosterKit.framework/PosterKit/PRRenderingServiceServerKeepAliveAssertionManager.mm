@interface PRRenderingServiceServerKeepAliveAssertionManager
+ (id)sharedInstance;
- (PRRenderingServiceServerKeepAliveAssertionManager)init;
- (id)_queue_acquireRenderingServiceServerKeepAliveAssertionForReason:(id)reason;
- (id)acquireRenderingServiceServerKeepAliveAssertionForReason:(id)reason;
- (void)_notifyObserversDidActivateRenderingServiceServer:(id)server;
- (void)_notifyObserversDidInvalidateRenderingServiceServer;
- (void)_queue_addObserver:(id)observer;
- (void)_queue_notifyObserversDidActivateRenderingServiceServer:(id)server;
- (void)_queue_notifyObserversDidInvalidateRenderingServiceServer;
- (void)_queue_removeObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation PRRenderingServiceServerKeepAliveAssertionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[PRRenderingServiceServerKeepAliveAssertionManager sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __67__PRRenderingServiceServerKeepAliveAssertionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PRRenderingServiceServerKeepAliveAssertionManager);
  v1 = sharedInstance_shared;
  sharedInstance_shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (PRRenderingServiceServerKeepAliveAssertionManager)init
{
  v10.receiver = self;
  v10.super_class = PRRenderingServiceServerKeepAliveAssertionManager;
  v2 = [(PRRenderingServiceServerKeepAliveAssertionManager *)&v10 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = Serial;

    v5 = BSDispatchQueueCreateSerial();
    assertionQueue = v2->_assertionQueue;
    v2->_assertionQueue = v5;

    v7 = BSDispatchQueueCreateSerial();
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v7;
  }

  return v2;
}

- (void)dealloc
{
  [(PRRenderingServiceServer *)self->_server invalidate];
  server = self->_server;
  self->_server = 0;

  [(BSCompoundAssertion *)self->_serverKeepAliveAssertions invalidate];
  serverKeepAliveAssertions = self->_serverKeepAliveAssertions;
  self->_serverKeepAliveAssertions = 0;

  v5.receiver = self;
  v5.super_class = PRRenderingServiceServerKeepAliveAssertionManager;
  [(PRRenderingServiceServerKeepAliveAssertionManager *)&v5 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PRRenderingServiceServerKeepAliveAssertionManager_addObserver___block_invoke;
  block[3] = &unk_1E7843AD0;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__PRRenderingServiceServerKeepAliveAssertionManager_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_addObserver:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PRRenderingServiceServerKeepAliveAssertionManager_removeObserver___block_invoke;
  block[3] = &unk_1E7843AD0;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __68__PRRenderingServiceServerKeepAliveAssertionManager_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_removeObserver:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_queue_addObserver:(id)observer
{
  observerCopy = observer;
  v4 = BSDispatchQueueAssert();
  v5 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    v4 = [(NSHashTable *)observers addObject:observerCopy];
    v5 = observerCopy;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_queue_removeObserver:(id)observer
{
  observerCopy = observer;
  v4 = BSDispatchQueueAssert();
  v5 = observerCopy;
  if (observerCopy)
  {
    v4 = [(NSHashTable *)self->_observers count];
    v5 = observerCopy;
    if (v4)
    {
      v4 = [(NSHashTable *)self->_observers containsObject:observerCopy];
      v5 = observerCopy;
      if (v4)
      {
        v4 = [(NSHashTable *)self->_observers removeObject:observerCopy];
        v5 = observerCopy;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_notifyObserversDidActivateRenderingServiceServer:(id)server
{
  serverCopy = server;
  objc_initWeak(&location, self);
  notifyQueue = self->_notifyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__PRRenderingServiceServerKeepAliveAssertionManager__notifyObserversDidActivateRenderingServiceServer___block_invoke;
  block[3] = &unk_1E7843AD0;
  objc_copyWeak(&v9, &location);
  v8 = serverCopy;
  v6 = serverCopy;
  dispatch_async(notifyQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __103__PRRenderingServiceServerKeepAliveAssertionManager__notifyObserversDidActivateRenderingServiceServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_notifyObserversDidActivateRenderingServiceServer:*(a1 + 32)];
}

- (void)_queue_notifyObserversDidActivateRenderingServiceServer:(id)server
{
  v23 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  BSDispatchQueueAssert();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__PRRenderingServiceServerKeepAliveAssertionManager__queue_notifyObserversDidActivateRenderingServiceServer___block_invoke;
  block[3] = &unk_1E7843AF8;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(observerQueue, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allObjects = [v17[5] allObjects];
  v7 = [allObjects countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 renderingServiceServerKeepAliveAssertionManager:self didActivateRenderingServiceServer:serverCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __109__PRRenderingServiceServerKeepAliveAssertionManager__queue_notifyObserversDidActivateRenderingServiceServer___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_notifyObserversDidInvalidateRenderingServiceServer
{
  objc_initWeak(&location, self);
  notifyQueue = self->_notifyQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __104__PRRenderingServiceServerKeepAliveAssertionManager__notifyObserversDidInvalidateRenderingServiceServer__block_invoke;
  v4[3] = &unk_1E7843B20;
  objc_copyWeak(&v5, &location);
  dispatch_async(notifyQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __104__PRRenderingServiceServerKeepAliveAssertionManager__notifyObserversDidInvalidateRenderingServiceServer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_notifyObserversDidInvalidateRenderingServiceServer];
}

- (void)_queue_notifyObserversDidInvalidateRenderingServiceServer
{
  v21 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __110__PRRenderingServiceServerKeepAliveAssertionManager__queue_notifyObserversDidInvalidateRenderingServiceServer__block_invoke;
  block[3] = &unk_1E7843AF8;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(observerQueue, block);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allObjects = [v15[5] allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v9 objects:v20 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 renderingServiceServerKeepAliveAssertionManagerDidInvalidateRenderingServiceServer:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [allObjects countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __110__PRRenderingServiceServerKeepAliveAssertionManager__queue_notifyObserversDidInvalidateRenderingServiceServer__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)acquireRenderingServiceServerKeepAliveAssertionForReason:(id)reason
{
  reasonCopy = reason;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  objc_initWeak(&location, self);
  assertionQueue = self->_assertionQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __110__PRRenderingServiceServerKeepAliveAssertionManager_acquireRenderingServiceServerKeepAliveAssertionForReason___block_invoke;
  v9[3] = &unk_1E7843B48;
  objc_copyWeak(&v12, &location);
  v10 = reasonCopy;
  v11 = &v14;
  v6 = reasonCopy;
  dispatch_sync(assertionQueue, v9);
  v7 = v15[5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __110__PRRenderingServiceServerKeepAliveAssertionManager_acquireRenderingServiceServerKeepAliveAssertionForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _queue_acquireRenderingServiceServerKeepAliveAssertionForReason:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_queue_acquireRenderingServiceServerKeepAliveAssertionForReason:(id)reason
{
  reasonCopy = reason;
  BSDispatchQueueAssert();
  serverKeepAliveAssertions = self->_serverKeepAliveAssertions;
  if (!serverKeepAliveAssertions)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E698E658];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __117__PRRenderingServiceServerKeepAliveAssertionManager__queue_acquireRenderingServiceServerKeepAliveAssertionForReason___block_invoke;
    v14 = &unk_1E7843B70;
    objc_copyWeak(&v15, &location);
    v7 = [v6 assertionWithIdentifier:@"RenderingServiceServerKeepAlive" stateDidChangeHandler:&v11];
    v8 = self->_serverKeepAliveAssertions;
    self->_serverKeepAliveAssertions = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    serverKeepAliveAssertions = self->_serverKeepAliveAssertions;
  }

  v9 = [(BSCompoundAssertion *)serverKeepAliveAssertions acquireForReason:reasonCopy, v11, v12, v13, v14];

  return v9;
}

void __117__PRRenderingServiceServerKeepAliveAssertionManager__queue_acquireRenderingServiceServerKeepAliveAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [v3 isActive];

  if (a1)
  {
    v4 = [PRRenderingServiceServer alloc];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v7 = [(PRRenderingServiceServer *)v4 initWithIdentifier:v6];
    v8 = WeakRetained[4];
    WeakRetained[4] = v7;

    [WeakRetained _notifyObserversDidActivateRenderingServiceServer:WeakRetained[4]];
  }

  else
  {
    [WeakRetained[4] invalidate];
    v9 = WeakRetained[4];
    WeakRetained[4] = 0;

    [WeakRetained _notifyObserversDidInvalidateRenderingServiceServer];
  }
}

@end