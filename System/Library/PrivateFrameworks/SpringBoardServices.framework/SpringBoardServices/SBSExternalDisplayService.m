@interface SBSExternalDisplayService
- (id)_connection;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)externalDisplayDidConnect:(id)a3;
- (void)externalDisplayDidUpdateProperties:(id)a3;
- (void)externalDisplayWillDisconnect:(id)a3;
- (void)getConnectedDisplayInfoWithCompletionHandler:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setDisplayArrangement:(id)a3 forDisplay:(id)a4;
- (void)setMirroringEnabled:(BOOL)a3 forDisplay:(id)a4;
- (void)setSettings:(id)a3 forDisplay:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
@end

@implementation SBSExternalDisplayService

- (void)dealloc
{
  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  connectionQueue = self->_connectionQueue;
  self->_connectionQueue = 0;

  v5.receiver = self;
  v5.super_class = SBSExternalDisplayService;
  [(SBSExternalDisplayService *)&v5 dealloc];
}

- (void)getConnectedDisplayInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SBSExternalDisplayService *)self _connection];
  v6 = [v5 remoteTarget];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__SBSExternalDisplayService_getConnectedDisplayInfoWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7360900;
  v9 = v4;
  v7 = v4;
  [v6 getConnectedDisplayInfoWithCompletion:v8];
}

void __74__SBSExternalDisplayService_getConnectedDisplayInfoWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = SBLogDisplayControlling();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__SBSExternalDisplayService_getConnectedDisplayInfoWithCompletionHandler___block_invoke_cold_1(v4, v5);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

- (void)setDisplayArrangement:(id)a3 forDisplay:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SBSExternalDisplayService *)self _connection];
  v8 = [v9 remoteTarget];
  [v8 setDisplayArrangement:v7 forDisplay:v6];
}

- (void)setMirroringEnabled:(BOOL)a3 forDisplay:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9 = [(SBSExternalDisplayService *)self _connection];
  v7 = [v9 remoteTarget];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v7 setDisplayMirroringEnabled:v8 forDisplay:v6];
}

- (void)setSettings:(id)a3 forDisplay:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v15 = [(SBSExternalDisplayService *)self _connection];
  v13 = [v15 remoteTarget];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v13 setDisplayModeSettings:v12 forDisplay:v11 options:v14 completionHandler:v10];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SBSExternalDisplayService *)self _connection];
  connectionQueue = self->_connectionQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SBSExternalDisplayService_addObserver___block_invoke;
  v8[3] = &unk_1E735F7F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(connectionQueue, v8);
}

uint64_t __41__SBSExternalDisplayService_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v2 = *(*(a1 + 32) + 24);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SBSExternalDisplayService_removeObserver___block_invoke;
  v8[3] = &unk_1E735F7F0;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v6 = MEMORY[0x193AFFB30](v8);
  connectionQueue = self->_connectionQueue;
  if (connectionQueue)
  {
    dispatch_async(connectionQueue, v6);
  }

  else
  {
    v6[2](v6);
  }
}

void __44__SBSExternalDisplayService_removeObserver___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 24) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
  }
}

- (void)externalDisplayDidConnect:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_queue_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 externalDisplayDidConnect:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)externalDisplayWillDisconnect:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_queue_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 externalDisplayWillDisconnect:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)externalDisplayDidUpdateProperties:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_connectionQueue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_queue_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 externalDisplayDidUpdateProperties:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = MEMORY[0x1E698F498];
    v5 = [MEMORY[0x1E698F498] defaultShellMachName];
    v6 = +[SBSExternalDisplayServiceSpecification identifier];
    v7 = [v4 endpointForMachName:v5 service:v6 instance:0];

    v8 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = self->_connectionQueue;
    self->_connectionQueue = v8;

    v10 = [MEMORY[0x1E698F490] connectionWithEndpoint:v7];
    v11 = self->_connection;
    self->_connection = v10;

    v12 = self->_connection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__SBSExternalDisplayService__connection__block_invoke;
    v14[3] = &unk_1E735ED88;
    v14[4] = self;
    [(BSServiceConnection *)v12 configureConnection:v14];
    [(BSServiceConnection *)self->_connection activate];

    connection = self->_connection;
  }

  return connection;
}

void __40__SBSExternalDisplayService__connection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSExternalDisplayServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = +[SBSExternalDisplayServiceSpecification serviceQuality];
  [v3 setServiceQuality:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__SBSExternalDisplayService__connection__block_invoke_2;
  v8[3] = &unk_1E735ED60;
  objc_copyWeak(&v9, &location);
  [v3 setInvalidationHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SBSExternalDisplayService__connection__block_invoke_3;
  v6[3] = &unk_1E735F080;
  objc_copyWeak(&v7, &location);
  [v3 setInterruptionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __40__SBSExternalDisplayService__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __40__SBSExternalDisplayService__connection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] activate];
    WeakRetained = v2;
  }
}

void __74__SBSExternalDisplayService_getConnectedDisplayInfoWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "got error fetching external displayInfos: %{public}@", &v2, 0xCu);
}

@end