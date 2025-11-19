@interface VUIMPMediaItemDownloadController
- (VUIMPMediaItemDownloadController)init;
- (VUIMPMediaItemDownloadController)initWithMediaItem:(id)a3 state:(id)a4 serialProcessingDispatchQueue:(id)a5;
- (VUIMPMediaItemDownloadControllerState)state;
- (void)_enqueueAsyncProcessingQueueBlock:(id)a3;
- (void)_enqueueAsyncStrongSelfProcessingQueueBlock:(id)a3;
- (void)_enqueueObserverQueueBlock:(id)a3;
- (void)_notifyObservers:(id)a3 stateDidChange:(id)a4;
- (void)_onProcessingQueue_setState:(id)a3;
- (void)_setState:(id)a3;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation VUIMPMediaItemDownloadController

- (VUIMPMediaItemDownloadController)initWithMediaItem:(id)a3 state:(id)a4 serialProcessingDispatchQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = VUIMPMediaItemDownloadController;
  v12 = [(VUIMPMediaItemDownloadController *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mediaItem, a3);
    v14 = [v10 copy];
    state = v13->_state;
    v13->_state = v14;

    objc_storeStrong(&v13->_serialProcessingDispatchQueue, a5);
    v16 = dispatch_get_global_queue(21, 0);
    observerDispatchQueue = v13->_observerDispatchQueue;
    v13->_observerDispatchQueue = v16;

    v18 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    observers = v13->_observers;
    v13->_observers = v18;
  }

  return v13;
}

- (VUIMPMediaItemDownloadController)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMPMediaItemDownloadControllerState)state
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VUIMPMediaItemDownloadControllerState *)v2->_state copy];
  objc_sync_exit(v2);

  return v3;
}

void __50__VUIMPMediaItemDownloadController_cancelDownload__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsCancellation])
  {
    [v2 _onProcessingQueue_cancelDownload];
  }
}

void __49__VUIMPMediaItemDownloadController_pauseDownload__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsPausing])
  {
    [v2 _onProcessingQueue_pauseDownload];
  }
}

void __50__VUIMPMediaItemDownloadController_resumeDownload__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsPausing])
  {
    [v2 _onProcessingQueue_resumeDownload];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"observer"}];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VUIMPMediaItemDownloadController_addObserver___block_invoke;
  v6[3] = &unk_1E8733C90;
  v7 = v4;
  v5 = v4;
  [(VUIMPMediaItemDownloadController *)self _enqueueAsyncStrongSelfProcessingQueueBlock:v6];
}

void __48__VUIMPMediaItemDownloadController_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 observers];
  [v3 addObject:*(a1 + 32)];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"observer"}];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VUIMPMediaItemDownloadController_removeObserver___block_invoke;
  v6[3] = &unk_1E8733C90;
  v7 = v4;
  v5 = v4;
  [(VUIMPMediaItemDownloadController *)self _enqueueAsyncStrongSelfProcessingQueueBlock:v6];
}

void __51__VUIMPMediaItemDownloadController_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 observers];
  [v3 removeObject:*(a1 + 32)];
}

- (void)_setState:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__VUIMPMediaItemDownloadController__setState___block_invoke;
  v6[3] = &unk_1E8733C90;
  v7 = v4;
  v5 = v4;
  [(VUIMPMediaItemDownloadController *)self _enqueueAsyncStrongSelfProcessingQueueBlock:v6];
}

- (void)_enqueueAsyncStrongSelfProcessingQueueBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__VUIMPMediaItemDownloadController__enqueueAsyncStrongSelfProcessingQueueBlock___block_invoke;
  v6[3] = &unk_1E872E828;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(VUIMPMediaItemDownloadController *)self _enqueueAsyncProcessingQueueBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __80__VUIMPMediaItemDownloadController__enqueueAsyncStrongSelfProcessingQueueBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)_enqueueAsyncProcessingQueueBlock:(id)a3
{
  v4 = a3;
  v5 = [(VUIMPMediaItemDownloadController *)self serialProcessingDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__VUIMPMediaItemDownloadController__enqueueAsyncProcessingQueueBlock___block_invoke;
  block[3] = &unk_1E872D7E0;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)_enqueueObserverQueueBlock:(id)a3
{
  v4 = a3;
  v5 = [(VUIMPMediaItemDownloadController *)self observerDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__VUIMPMediaItemDownloadController__enqueueObserverQueueBlock___block_invoke;
  block[3] = &unk_1E872D7E0;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)_onProcessingQueue_setState:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(VUIMPMediaItemDownloadControllerState *)v5->_state isEqual:v4])
  {
    v6 = [v4 copy];
    state = v5->_state;
    v5->_state = v6;

    v8 = [v4 copy];
    v9 = [(VUIMPMediaItemDownloadController *)v5 observers];
    v10 = [v9 copy];

    objc_initWeak(&location, v5);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__VUIMPMediaItemDownloadController__onProcessingQueue_setState___block_invoke;
    v13[3] = &unk_1E872D9B8;
    objc_copyWeak(&v16, &location);
    v11 = v10;
    v14 = v11;
    v12 = v8;
    v15 = v12;
    [(VUIMPMediaItemDownloadController *)v5 _enqueueObserverQueueBlock:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v5);
}

void __64__VUIMPMediaItemDownloadController__onProcessingQueue_setState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _notifyObservers:*(a1 + 32) stateDidChange:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_notifyObservers:(id)a3 stateDidChange:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 mediaItemDownloadController:self stateDidChange:v7];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end