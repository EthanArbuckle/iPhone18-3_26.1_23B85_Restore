@interface VUIAirTrafficController
+ (id)defaultController;
- (VUIAirTrafficController)init;
- (void)_onConnectionQueue_startObservingIfIdle;
- (void)_onConnectionQueue_stopObservingIfIdle;
- (void)addObserver:(id)observer;
- (void)connection:(id)connection updatedProgress:(id)progress;
- (void)removeAllObservers;
- (void)removeObserver:(id)observer;
@end

@implementation VUIAirTrafficController

+ (id)defaultController
{
  if (defaultController___once != -1)
  {
    +[VUIAirTrafficController defaultController];
  }

  v3 = defaultController___defaultController;

  return v3;
}

void __44__VUIAirTrafficController_defaultController__block_invoke()
{
  v0 = objc_alloc_init(VUIAirTrafficController);
  v1 = defaultController___defaultController;
  defaultController___defaultController = v0;
}

- (VUIAirTrafficController)init
{
  v8.receiver = self;
  v8.super_class = VUIAirTrafficController;
  v2 = [(VUIAirTrafficController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.videosui.VUIAirTrafficController.ATConnection", 0);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  connectionQueue = [(VUIAirTrafficController *)self connectionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__VUIAirTrafficController_addObserver___block_invoke;
  v7[3] = &unk_1E872D990;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(connectionQueue, v7);
}

uint64_t __39__VUIAirTrafficController_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _onConnectionQueue_startObservingIfIdle];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  connectionQueue = [(VUIAirTrafficController *)self connectionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__VUIAirTrafficController_removeObserver___block_invoke;
  v7[3] = &unk_1E872D990;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(connectionQueue, v7);
}

uint64_t __42__VUIAirTrafficController_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _onConnectionQueue_stopObservingIfIdle];
}

- (void)removeAllObservers
{
  connectionQueue = [(VUIAirTrafficController *)self connectionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VUIAirTrafficController_removeAllObservers__block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(connectionQueue, block);
}

uint64_t __45__VUIAirTrafficController_removeAllObservers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 _onConnectionQueue_stopObservingIfIdle];
}

- (void)_onConnectionQueue_startObservingIfIdle
{
  observers = [(VUIAirTrafficController *)self observers];
  v4 = [observers count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E698A728]);
    [(VUIAirTrafficController *)self setConnection:v5];
    [v5 setDelegate:self];
    [v5 registerForStatus];
  }
}

- (void)_onConnectionQueue_stopObservingIfIdle
{
  observers = [(VUIAirTrafficController *)self observers];
  v4 = [observers count];

  if (!v4)
  {
    connection = [(VUIAirTrafficController *)self connection];
    [(VUIAirTrafficController *)self setConnection:0];
    [connection setDelegate:0];
    [connection unregisterForStatus];
  }
}

- (void)connection:(id)connection updatedProgress:(id)progress
{
  connectionCopy = connection;
  progressCopy = progress;
  objc_initWeak(&location, self);
  connectionQueue = [(VUIAirTrafficController *)self connectionQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__VUIAirTrafficController_connection_updatedProgress___block_invoke;
  v10[3] = &unk_1E872D9B8;
  objc_copyWeak(&v12, &location);
  v10[4] = self;
  v11 = progressCopy;
  v9 = progressCopy;
  dispatch_async(connectionQueue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __54__VUIAirTrafficController_connection_updatedProgress___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) observers];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) airTrafficController:WeakRetained proggressDidUpdate:*(a1 + 40)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

@end