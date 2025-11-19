@interface VUIMediaLibraryFetchControllerQueue
+ (id)defaultQueueWithMediaLibrary:(id)a3;
- (NSArray)fetchControllers;
- (VUIMediaLibraryFetchControllerQueue)init;
- (VUIMediaLibraryFetchControllerQueue)initWithMediaLibrary:(id)a3;
- (VUIMediaLibraryFetchControllerQueueDelegate)delegate;
- (void)_addStateObserverForFetchControllers:(id)a3;
- (void)_delayContentsChangeOperationDidComplete:(id)a3;
- (void)_enqueueAsyncProcessingQueueBlock:(id)a3;
- (void)_enqueueControllerFetchOperation;
- (void)_enqueueProcessingQueueBlock:(id)a3 synchronous:(BOOL)a4;
- (void)_enqueueSyncProcessingQueueBlock:(id)a3;
- (void)_handleMediaLibraryContentsChange;
- (void)_handleMediaLibraryContentsDidChangeNotification:(id)a3;
- (void)_notifyDelegateFetchDidComplete;
- (void)_queueOperationDidComplete:(id)a3;
- (void)_removeStateObserverForFetchControllers:(id)a3;
- (void)addFetchController:(id)a3;
- (void)addFetchControllers:(id)a3;
- (void)dealloc;
- (void)nowPlayingObserver:(id)a3 latestObservationDidChange:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeFetchController:(id)a3;
- (void)removeFetchControllers:(id)a3;
- (void)setPaused:(BOOL)a3;
@end

@implementation VUIMediaLibraryFetchControllerQueue

+ (id)defaultQueueWithMediaLibrary:(id)a3
{
  v3 = a3;
  if (defaultQueueWithMediaLibrary____onceToken != -1)
  {
    +[VUIMediaLibraryFetchControllerQueue defaultQueueWithMediaLibrary:];
  }

  v4 = defaultQueueWithMediaLibrary__defaultQueueByMediaLibraryIdentifier;
  objc_sync_enter(v4);
  v5 = [v3 identifier];
  v6 = [defaultQueueWithMediaLibrary__defaultQueueByMediaLibraryIdentifier objectForKey:v5];
  if (!v6)
  {
    v6 = [[VUIMediaLibraryFetchControllerQueue alloc] initWithMediaLibrary:v3];
    [defaultQueueWithMediaLibrary__defaultQueueByMediaLibraryIdentifier setObject:v6 forKey:v5];
  }

  objc_sync_exit(v4);

  return v6;
}

void __68__VUIMediaLibraryFetchControllerQueue_defaultQueueWithMediaLibrary___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = defaultQueueWithMediaLibrary__defaultQueueByMediaLibraryIdentifier;
  defaultQueueWithMediaLibrary__defaultQueueByMediaLibraryIdentifier = v0;
}

- (VUIMediaLibraryFetchControllerQueue)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaLibraryFetchControllerQueue)initWithMediaLibrary:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = VUIMediaLibraryFetchControllerQueue;
  v6 = [(VUIMediaLibraryFetchControllerQueue *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaLibrary, a3);
    v7->_mediaLibraryRevision = [(VUIMediaLibrary *)v7->_mediaLibrary revision];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableFetchControllers = v7->_mutableFetchControllers;
    v7->_mutableFetchControllers = v8;

    v10 = dispatch_queue_create("com.apple.videosui.VUIMediaLibraryFetchControllerQueue.serialProcessingQueue", 0);
    serialProcessingDispatchQueue = v7->_serialProcessingDispatchQueue;
    v7->_serialProcessingDispatchQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    serialFetchOperationQueue = v7->_serialFetchOperationQueue;
    v7->_serialFetchOperationQueue = v12;

    [(NSOperationQueue *)v7->_serialFetchOperationQueue setMaxConcurrentOperationCount:1];
    v14 = objc_alloc_init(VUINowPlayingObserver);
    nowPlayingObserver = v7->_nowPlayingObserver;
    v7->_nowPlayingObserver = v14;

    [(VUINowPlayingObserver *)v7->_nowPlayingObserver setDelegate:v7];
    [(VUINowPlayingObserver *)v7->_nowPlayingObserver startObserving];
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v7 selector:sel__handleMediaLibraryContentsDidChangeNotification_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:v7->_mediaLibrary];
  }

  return v7;
}

- (void)dealloc
{
  [(VUINowPlayingObserver *)self->_nowPlayingObserver setDelegate:0];
  [(VUINowPlayingObserver *)self->_nowPlayingObserver stopObserving];
  [(VUIMediaLibraryFetchControllerQueue *)self _removeStateObserverForFetchControllers:self->_mutableFetchControllers];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIMediaLibraryFetchControllerQueue;
  [(VUIMediaLibraryFetchControllerQueue *)&v4 dealloc];
}

- (NSArray)fetchControllers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__VUIMediaLibraryFetchControllerQueue_fetchControllers__block_invoke;
  v4[3] = &unk_1E872EF50;
  v4[4] = &v5;
  [(VUIMediaLibraryFetchControllerQueue *)self _enqueueSyncProcessingQueueBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __55__VUIMediaLibraryFetchControllerQueue_fetchControllers__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 mutableFetchControllers];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)addFetchController:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(VUIMediaLibraryFetchControllerQueue *)self addFetchControllers:v6, v7, v8];
  }
}

- (void)addFetchControllers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__VUIMediaLibraryFetchControllerQueue_addFetchControllers___block_invoke;
    v5[3] = &unk_1E872EF78;
    v6 = v4;
    v7 = self;
    [(VUIMediaLibraryFetchControllerQueue *)self _enqueueSyncProcessingQueueBlock:v5];
  }
}

void __59__VUIMediaLibraryFetchControllerQueue_addFetchControllers___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [VUIMediaLibraryFetchController _logStringWithFetchControllers:*(a1 + 32)];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Adding fetch controllers to queue: %@", &v7, 0xCu);
  }

  [*(a1 + 40) _addStateObserverForFetchControllers:*(a1 + 32)];
  v6 = [v3 mutableFetchControllers];

  [v6 addObjectsFromArray:*(a1 + 32)];
  [*(a1 + 40) _enqueueControllerFetchOperation];
}

- (void)removeFetchController:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(VUIMediaLibraryFetchControllerQueue *)self removeFetchControllers:v6, v7, v8];
}

- (void)removeFetchControllers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__VUIMediaLibraryFetchControllerQueue_removeFetchControllers___block_invoke;
    v5[3] = &unk_1E872EF78;
    v6 = v4;
    v7 = self;
    [(VUIMediaLibraryFetchControllerQueue *)self _enqueueSyncProcessingQueueBlock:v5];
  }
}

void __62__VUIMediaLibraryFetchControllerQueue_removeFetchControllers___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [VUIMediaLibraryFetchController _logStringWithFetchControllers:*(a1 + 32)];
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Passed fetch controllers to remove from queue: %@", buf, 0xCu);
  }

  v6 = [v3 mutableFetchControllers];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v6 indexOfObjectIdenticalTo:{v13, v16}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = VUIDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [VUIMediaLibraryFetchController _logStringWithFetchControllers:v7];
    *buf = 138412290;
    v22 = v15;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Actually removing fetch controllers from queue: %@", buf, 0xCu);
  }

  [*(a1 + 40) _removeStateObserverForFetchControllers:v7];
  [v6 removeObjectsInArray:v7];
}

- (void)nowPlayingObserver:(id)a3 latestObservationDidChange:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__VUIMediaLibraryFetchControllerQueue_nowPlayingObserver_latestObservationDidChange___block_invoke;
  v7[3] = &unk_1E872EFC0;
  v8 = v5;
  v6 = v5;
  [(VUIMediaLibraryFetchControllerQueue *)self _enqueueAsyncProcessingQueueBlock:v7];
}

void __85__VUIMediaLibraryFetchControllerQueue_nowPlayingObserver_latestObservationDidChange___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) nowPlayingAppBundleIdentifier];
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];

  v7 = [v4 isEqualToString:v6];
  v8 = VUIDefaultLogObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = [v3 mediaLibrary];
      v11 = [v10 title];
      v12 = *(a1 + 32);
      v16 = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIMediaLibraryFetchControllerQueue for %@ has detected playback has begun. Observation = %@", &v16, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      v13 = [v3 mediaLibrary];
      v14 = [v13 title];
      v15 = *(a1 + 32);
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIMediaLibraryFetchControllerQueue for %@ has detected playback has ended. Will begin a refetch. Observation = %@", &v16, 0x16u);
    }

    v8 = [v3 mediaLibrary];
    [v8 _postContentsDidChangeNotification];
  }
}

- (void)_handleMediaLibraryContentsDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"VUIMediaLibraryContentsDidChangeUserInfoKeyContentsChange"];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__VUIMediaLibraryFetchControllerQueue__handleMediaLibraryContentsDidChangeNotification___block_invoke;
  v7[3] = &unk_1E872EFC0;
  v8 = v5;
  v6 = v5;
  [(VUIMediaLibraryFetchControllerQueue *)self _enqueueAsyncProcessingQueueBlock:v7];
}

void __88__VUIMediaLibraryFetchControllerQueue__handleMediaLibraryContentsDidChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 mediaLibrary];
    v6 = [v5 title];
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "[%@] - Received contents change: %@", &v8, 0x16u);
  }

  [v3 setMediaLibraryRevision:{objc_msgSend(*(a1 + 32), "revision")}];
  [v3 _handleMediaLibraryContentsChange];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  if (a6 != &VUIMediaLibraryFetchControllerStateKVOContext)
  {
    v19.receiver = self;
    v19.super_class = VUIMediaLibraryFetchControllerQueue;
    v11 = a5;
    [(VUIMediaLibraryFetchControllerQueue *)&v19 observeValueForKeyPath:a3 ofObject:v10 change:v11 context:a6];
LABEL_9:

    goto LABEL_10;
  }

  v12 = *MEMORY[0x1E696A500];
  v13 = a5;
  v14 = [v13 objectForKey:v12];
  v15 = [v14 unsignedIntegerValue];

  v16 = [v13 objectForKey:*MEMORY[0x1E696A4F0]];

  v17 = [v16 unsignedIntegerValue];
  if (v15 == 2 && v17 == 0)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __86__VUIMediaLibraryFetchControllerQueue_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v20[3] = &unk_1E872EFC0;
    v21 = v10;
    [(VUIMediaLibraryFetchControllerQueue *)self _enqueueAsyncProcessingQueueBlock:v20];
    v11 = v21;
    goto LABEL_9;
  }

LABEL_10:
}

void __86__VUIMediaLibraryFetchControllerQueue_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 logName];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Fetch controller (%@) has resumed. Will enqueue a new fetch operation to pick up any changes.", &v7, 0xCu);
  }

  [v4 _handleMediaLibraryContentsChange];
}

- (void)_addStateObserverForFetchControllers:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) addObserver:self forKeyPath:@"state" options:3 context:VUIMediaLibraryFetchControllerStateKVOContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_removeStateObserverForFetchControllers:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeObserver:self forKeyPath:@"state" context:VUIMediaLibraryFetchControllerStateKVOContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_handleMediaLibraryContentsChange
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(VUIMediaLibraryFetchControllerQueue *)self delayContentsChangeOperation];
  v4 = VUIDefaultLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(VUIMediaLibraryFetchControllerQueue *)self mediaLibrary];
      v7 = [v6 title];
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "[%@] - Delay contents change operation is active. Waiting for delay to expire", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v8 = [(VUIMediaLibraryFetchControllerQueue *)self mediaLibrary];
      v9 = [v8 title];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "[%@] - Creating delay contents change operation", buf, 0xCu);
    }

    v4 = [MEMORY[0x1E69DF6E8] delayOperationWithDelay:1.0];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v4);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__VUIMediaLibraryFetchControllerQueue__handleMediaLibraryContentsChange__block_invoke;
    v10[3] = &unk_1E872EFE8;
    objc_copyWeak(&v11, buf);
    objc_copyWeak(&v12, &location);
    [v4 setCompletionBlock:v10];
    [(VUIMediaLibraryFetchControllerQueue *)self setDelayContentsChangeOperation:v4];
    [v4 start];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __72__VUIMediaLibraryFetchControllerQueue__handleMediaLibraryContentsChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2 && ([v2 isCancelled] & 1) == 0)
  {
    [WeakRetained _delayContentsChangeOperationDidComplete:v2];
  }
}

- (void)_delayContentsChangeOperationDidComplete:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__VUIMediaLibraryFetchControllerQueue__delayContentsChangeOperationDidComplete___block_invoke;
  v6[3] = &unk_1E872EFC0;
  v7 = v4;
  v5 = v4;
  [(VUIMediaLibraryFetchControllerQueue *)self _enqueueAsyncProcessingQueueBlock:v6];
}

void __80__VUIMediaLibraryFetchControllerQueue__delayContentsChangeOperationDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 delayContentsChangeOperation];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 mediaLibrary];
      v8 = [v7 title];
      v9 = 138412546;
      v10 = v8;
      v11 = 2048;
      v12 = [v3 mediaLibraryRevision];
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "[%@] - Delay contents change operation has completed. Starting fetching of controllers for revision: %lu", &v9, 0x16u);
    }

    [v3 _enqueueControllerFetchOperation];
    [v3 setDelayContentsChangeOperation:0];
  }
}

- (void)_queueOperationDidComplete:(id)a3
{
  v4 = a3;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[VUIMediaLibraryFetchControllerQueue] - VUIMediaLibraryFetchControllerQueueOperation has completed. Notifying delegates", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__VUIMediaLibraryFetchControllerQueue__queueOperationDidComplete___block_invoke;
  v7[3] = &unk_1E872EFC0;
  v8 = v4;
  v6 = v4;
  [(VUIMediaLibraryFetchControllerQueue *)self _enqueueAsyncProcessingQueueBlock:v7];
}

void __66__VUIMediaLibraryFetchControllerQueue__queueOperationDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 currentFetchOperation];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [v5 setCurrentFetchOperation:0];
    [v5 _notifyDelegateFetchDidComplete];
  }
}

- (void)_enqueueControllerFetchOperation
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(VUIMediaLibraryFetchControllerQueue *)self isPaused])
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(VUIMediaLibraryFetchControllerQueue *)self mediaLibrary];
      v5 = [v4 title];
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "[%@] - Fetching is paused so the fetch has been deferred. It will start when fetching is resumed", buf, 0xCu);
    }

    [(VUIMediaLibraryFetchControllerQueue *)self setShouldFetchOnResume:1];
  }

  else
  {
    v6 = [(VUIMediaLibraryFetchControllerQueue *)self mutableFetchControllers];
    v7 = [[VUIMediaLibraryFetchControllerQueueOperation alloc] initWithFetchControllers:v6 mediaLibraryRevision:[(VUIMediaLibraryFetchControllerQueue *)self mediaLibraryRevision]];
    v8 = [(VUIMediaLibraryFetchControllerQueue *)self currentFetchOperation];
    [v8 cancel];

    [(VUIMediaLibraryFetchControllerQueue *)self setCurrentFetchOperation:v7];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v7);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__VUIMediaLibraryFetchControllerQueue__enqueueControllerFetchOperation__block_invoke;
    v10[3] = &unk_1E872EFE8;
    objc_copyWeak(&v11, buf);
    objc_copyWeak(&v12, &location);
    [(VUIMediaLibraryFetchControllerQueueOperation *)v7 setCompletionBlock:v10];
    v9 = [(VUIMediaLibraryFetchControllerQueue *)self serialFetchOperationQueue];
    [v9 addOperation:v7];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __71__VUIMediaLibraryFetchControllerQueue__enqueueControllerFetchOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2 && ([v2 isCancelled] & 1) == 0)
  {
    [WeakRetained _queueOperationDidComplete:v2];
  }
}

- (void)setPaused:(BOOL)a3
{
  paused = self->_paused;
  if (paused != a3)
  {
    v6 = [(VUIMediaLibraryFetchControllerQueue *)self shouldFetchOnResume];
    self->_paused = a3;
    [(VUIMediaLibraryFetchControllerQueue *)self setShouldFetchOnResume:0];
    if (paused && v6)
    {

      [(VUIMediaLibraryFetchControllerQueue *)self _enqueueControllerFetchOperation];
    }
  }
}

- (void)_enqueueProcessingQueueBlock:(id)a3 synchronous:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__VUIMediaLibraryFetchControllerQueue__enqueueProcessingQueueBlock_synchronous___block_invoke;
    v11[3] = &unk_1E872F010;
    v8 = &v12;
    v12 = v6;
    [(VUIMediaLibraryFetchControllerQueue *)self _enqueueSyncProcessingQueueBlock:v11];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__VUIMediaLibraryFetchControllerQueue__enqueueProcessingQueueBlock_synchronous___block_invoke_2;
    v9[3] = &unk_1E872F010;
    v8 = &v10;
    v10 = v6;
    [(VUIMediaLibraryFetchControllerQueue *)self _enqueueAsyncProcessingQueueBlock:v9];
  }
}

- (void)_enqueueAsyncProcessingQueueBlock:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaLibraryFetchControllerQueue *)self serialProcessingDispatchQueue];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__VUIMediaLibraryFetchControllerQueue__enqueueAsyncProcessingQueueBlock___block_invoke;
  block[3] = &unk_1E872E828;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __73__VUIMediaLibraryFetchControllerQueue__enqueueAsyncProcessingQueueBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)_enqueueSyncProcessingQueueBlock:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaLibraryFetchControllerQueue *)self serialProcessingDispatchQueue];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__VUIMediaLibraryFetchControllerQueue__enqueueSyncProcessingQueueBlock___block_invoke;
  block[3] = &unk_1E872E828;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__VUIMediaLibraryFetchControllerQueue__enqueueSyncProcessingQueueBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)_notifyDelegateFetchDidComplete
{
  v3 = [(VUIMediaLibraryFetchControllerQueue *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v4 = [(VUIMediaLibraryFetchControllerQueue *)self mediaLibrary];
    v5 = [v4 manager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__VUIMediaLibraryFetchControllerQueue__notifyDelegateFetchDidComplete__block_invoke;
    v6[3] = &unk_1E872F038;
    objc_copyWeak(&v8, &location);
    v7 = v3;
    [v5 _enqueueCompletionQueueBlock:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __70__VUIMediaLibraryFetchControllerQueue__notifyDelegateFetchDidComplete__block_invoke(uint64_t a1)
{
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "[VUIMediaLibraryFetchControllerQueue] - Notifying fetch did complete", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) fetchDidCompleteForMediaLibraryFetchControllerQueue:WeakRetained];
  }
}

- (VUIMediaLibraryFetchControllerQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end