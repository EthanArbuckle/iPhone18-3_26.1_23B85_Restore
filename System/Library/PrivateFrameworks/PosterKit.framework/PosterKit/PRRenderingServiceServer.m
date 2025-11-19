@interface PRRenderingServiceServer
- (PRRenderingServiceServer)initWithIdentifier:(id)a3;
- (void)_notifyObserversDidActivateRenderingServiceConnection:(id)a3;
- (void)_notifyObserversDidInvalidateRenderingServiceConnection:(id)a3;
- (void)_queue_addObserver:(id)a3;
- (void)_queue_notifyObserversDidActivateRenderingServiceConnection:(id)a3;
- (void)_queue_notifyObserversDidInvalidateRenderingServiceConnection:(id)a3;
- (void)_queue_removeObserver:(id)a3;
- (void)acknowledgeMotionEvents;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)removeObserver:(id)a3;
@end

@implementation PRRenderingServiceServer

- (PRRenderingServiceServer)initWithIdentifier:(id)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35.receiver = self;
  v35.super_class = PRRenderingServiceServer;
  v6 = [(PRRenderingServiceServer *)&v35 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = objc_opt_new();
    connections = v7->_connections;
    v7->_connections = v8;

    Serial = BSDispatchQueueCreateSerial();
    observerQueue = v7->_observerQueue;
    v7->_observerQueue = Serial;

    v12 = BSDispatchQueueCreateSerial();
    notifyQueue = v7->_notifyQueue;
    v7->_notifyQueue = v12;

    v14 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = v7->_connectionQueue;
    v7->_connectionQueue = v14;

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.PosterKit.PRRenderingServiceServerDomain", v5];
    v17 = MEMORY[0x1E698F508];
    v40 = v16;
    v38[0] = @"Start";
    v38[1] = @"Services";
    v39[0] = @"ManualSession";
    v18 = +[PRRenderingServiceSpecification identifier];
    v36 = v18;
    v37 = MEMORY[0x1E695E0F8];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v39[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v41[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v22 = [v17 registerDynamicDomainsFromPlist:v21];
    registrationAssertion = v7->_registrationAssertion;
    v7->_registrationAssertion = v22;

    v24 = MEMORY[0x1E698F4B8];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __47__PRRenderingServiceServer_initWithIdentifier___block_invoke;
    v32[3] = &unk_1E7844558;
    v33 = v16;
    v25 = v7;
    v34 = v25;
    v26 = v16;
    v27 = [v24 listenerWithConfigurator:v32];
    connectionListener = v25->_connectionListener;
    v25->_connectionListener = v27;

    [(BSServiceConnectionListener *)v25->_connectionListener activate];
    v29 = [MEMORY[0x1E698F508] activateManualDomain:v26];
    activationAssertion = v25->_activationAssertion;
    v25->_activationAssertion = v29;
  }

  return v7;
}

void __47__PRRenderingServiceServer_initWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDomain:v3];
  v4 = +[PRRenderingServiceSpecification identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 40)];
}

- (void)dealloc
{
  [(PRRenderingServiceServer *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRRenderingServiceServer;
  [(PRRenderingServiceServer *)&v3 dealloc];
}

- (void)invalidate
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  [(BSInvalidatable *)self->_activationAssertion invalidate];
  registrationAssertion = self->_registrationAssertion;

  [(BSInvalidatable *)registrationAssertion invalidate];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PRRenderingServiceServer_addObserver___block_invoke;
  block[3] = &unk_1E7843AD0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__PRRenderingServiceServer_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_addObserver:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PRRenderingServiceServer_removeObserver___block_invoke;
  block[3] = &unk_1E7843AD0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__PRRenderingServiceServer_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_removeObserver:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_queue_addObserver:(id)a3
{
  v9 = a3;
  v4 = BSDispatchQueueAssert();
  v5 = v9;
  if (v9)
  {
    observers = self->_observers;
    if (!observers)
    {
      v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    v4 = [(NSHashTable *)observers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_queue_removeObserver:(id)a3
{
  v6 = a3;
  v4 = BSDispatchQueueAssert();
  v5 = v6;
  if (v6)
  {
    v4 = [(NSHashTable *)self->_observers count];
    v5 = v6;
    if (v4)
    {
      v4 = [(NSHashTable *)self->_observers containsObject:v6];
      v5 = v6;
      if (v4)
      {
        v4 = [(NSHashTable *)self->_observers removeObject:v6];
        v5 = v6;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_notifyObserversDidActivateRenderingServiceConnection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  notifyQueue = self->_notifyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PRRenderingServiceServer__notifyObserversDidActivateRenderingServiceConnection___block_invoke;
  block[3] = &unk_1E7843AD0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(notifyQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __82__PRRenderingServiceServer__notifyObserversDidActivateRenderingServiceConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_notifyObserversDidActivateRenderingServiceConnection:*(a1 + 32)];
}

- (void)_queue_notifyObserversDidActivateRenderingServiceConnection:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssert();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PRRenderingServiceServer__queue_notifyObserversDidActivateRenderingServiceConnection___block_invoke;
  block[3] = &unk_1E7843AF8;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(observerQueue, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v17[5] allObjects];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 renderingServiceServer:self didActivateConnection:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __88__PRRenderingServiceServer__queue_notifyObserversDidActivateRenderingServiceConnection___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_notifyObserversDidInvalidateRenderingServiceConnection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  notifyQueue = self->_notifyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PRRenderingServiceServer__notifyObserversDidInvalidateRenderingServiceConnection___block_invoke;
  block[3] = &unk_1E7843AD0;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(notifyQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __84__PRRenderingServiceServer__notifyObserversDidInvalidateRenderingServiceConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_notifyObserversDidInvalidateRenderingServiceConnection:*(a1 + 32)];
}

- (void)_queue_notifyObserversDidInvalidateRenderingServiceConnection:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssert();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PRRenderingServiceServer__queue_notifyObserversDidInvalidateRenderingServiceConnection___block_invoke;
  block[3] = &unk_1E7843AF8;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(observerQueue, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v17[5] allObjects];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 renderingServiceServer:self didInvalidateConnection:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __90__PRRenderingServiceServer__queue_notifyObserversDidInvalidateRenderingServiceConnection___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)acknowledgeMotionEvents
{
  v3 = [MEMORY[0x1E698F490] currentContext];
  if (v3)
  {
    v4 = [(NSMutableArray *)self->_connections copy];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__PRRenderingServiceServer_acknowledgeMotionEvents__block_invoke;
    v7[3] = &unk_1E7844580;
    v8 = v3;
    v5 = [v4 bs_firstObjectPassingTest:v7];
    v6 = v5;
    if (v5)
    {
      [v5 acknowledgeMotionEvents];
    }
  }
}

uint64_t __51__PRRenderingServiceServer_acknowledgeMotionEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 remoteToken];
  v8 = [v7 pid];

  v9 = [[PRRenderingServiceConnection alloc] initWithConnection:v6 pid:v8];
  [(NSMutableArray *)self->_connections addObject:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PRRenderingServiceServer_listener_didReceiveConnection_withContext___block_invoke;
  v13[3] = &unk_1E7843970;
  v13[4] = self;
  [v6 configureConnection:v13];
  [v6 activate];
  v10 = PRLogRenderingService();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 remoteProcess];
    v12 = [v11 pid];
    *buf = 134218240;
    v15 = v6;
    v16 = 1024;
    v17 = v12;
    _os_log_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEFAULT, "PRRenderingService: connection <%p> pid: %i activated", buf, 0x12u);
  }

  [(PRRenderingServiceServer *)self _notifyObserversDidActivateRenderingServiceConnection:v9];
}

void __70__PRRenderingServiceServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PRRenderingServiceSpecification interface];
  [v3 setInterface:v4];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  v5 = +[PRRenderingServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  objc_initWeak(&location, *(a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PRRenderingServiceServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v6[3] = &unk_1E78445A8;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __70__PRRenderingServiceServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = PRLogRenderingService();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 remoteProcess];
      *buf = 134218240;
      v12 = v3;
      v13 = 1024;
      v14 = [v6 pid];
      _os_log_impl(&dword_1A8AA7000, v5, OS_LOG_TYPE_DEFAULT, "PRRenderingService: connection <%p> pid: %i was invalidated", buf, 0x12u);
    }

    v7 = [WeakRetained[1] copy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__PRRenderingServiceServer_listener_didReceiveConnection_withContext___block_invoke_80;
    v9[3] = &unk_1E7844580;
    v10 = v3;
    v8 = [v7 bs_firstObjectPassingTest:v9];
    [WeakRetained[1] removeObject:v8];
    [WeakRetained _notifyObserversDidInvalidateRenderingServiceConnection:v8];
  }
}

uint64_t __70__PRRenderingServiceServer_listener_didReceiveConnection_withContext___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end