@interface PRUISPosterChannelGalleryCoordinator
- (PRUISPosterChannelGalleryCoordinator)init;
- (PRUISPosterChannelGalleryCoordinator)initWithExtensionProvider:(id)a3;
- (id)_enqueueChannel:(id)a3 fetchOptions:(id)a4;
- (id)fetchGalleryForChannel:(id)a3 options:(id)a4;
- (void)_didEnterBackground;
- (void)_executeNextTask;
- (void)_setupLifecycleNotificationObserving;
- (void)_teardownLifecycleNotificationObserving;
- (void)_willEnterForeground;
- (void)cancelGalleryFetchForChannelIdentifier:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PRUISPosterChannelGalleryCoordinator

- (PRUISPosterChannelGalleryCoordinator)initWithExtensionProvider:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [PRUISPosterChannelGalleryCoordinator initWithExtensionProvider:a2];
  }

  v7 = v6;
  v25.receiver = self;
  v25.super_class = PRUISPosterChannelGalleryCoordinator;
  v8 = [(PRUISPosterChannelGalleryCoordinator *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extensionProvider, a3);
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [objc_alloc(MEMORY[0x1E69C5168]) initWithDefaultInstanceIdentifier:v10];
    instanceProvider = v9->_instanceProvider;
    v9->_instanceProvider = v11;

    v13 = objc_opt_new();
    channelUUIDToTaskQueue = v9->_channelUUIDToTaskQueue;
    v9->_channelUUIDToTaskQueue = v13;

    v15 = objc_opt_new();
    invalidationSignal = v9->_invalidationSignal;
    v9->_invalidationSignal = v15;

    v17 = MEMORY[0x1E696AEC0];
    v18 = [v10 UUIDString];
    v19 = [v18 substringToIndex:7];
    v20 = [v17 stringWithFormat:@"PRUISPosterChannelGalleryCoordinator-%@", v19];
    logPrefix = v9->_logPrefix;
    v9->_logPrefix = v20;

    v22 = [MEMORY[0x1E69C5270] providerWithBackgroundConcurrencyLimit:1];
    scheduler = v9->_scheduler;
    v9->_scheduler = v22;

    [(PRUISPosterChannelGalleryCoordinator *)v9 _setupLifecycleNotificationObserving];
  }

  return v9;
}

- (PRUISPosterChannelGalleryCoordinator)init
{
  [(PRUISPosterChannelGalleryCoordinator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(PRUISPosterChannelGalleryCoordinator *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRUISPosterChannelGalleryCoordinator;
  [(PRUISPosterChannelGalleryCoordinator *)&v3 dealloc];
}

- (void)_setupLifecycleNotificationObserving
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)_teardownLifecycleNotificationObserving
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)_didEnterBackground
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isHeadingToBackground = 0;
  objc_sync_exit(obj);
}

- (void)_willEnterForeground
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isHeadingToBackground = 1;
  objc_sync_exit(obj);
}

- (id)fetchGalleryForChannel:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PRUISPosterChannelGalleryCoordinator fetchGalleryForChannel:a2 options:?];
  }

  v9 = v8;
  v10 = self;
  objc_sync_enter(v10);
  v11 = v10->_invalidationSignal;
  if ([(BSAtomicSignal *)v11 hasBeenSignalled])
  {
    v12 = MEMORY[0x1E69C5258];
    v13 = PFFunctionNameForAddress();
    v14 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v15 = [v12 futureWithError:{v14, 0}];
  }

  else
  {
    v16 = MEMORY[0x1E695DFD8];
    v17 = [(PFPosterExtensionProvider *)v10->_extensionProvider knownPosterExtensions];
    v13 = [v16 setWithArray:v17];

    if ([v13 count])
    {
      v15 = [(PRUISPosterChannelGalleryCoordinator *)v10 _enqueueChannel:v7 fetchOptions:v9];
      goto LABEL_10;
    }

    v18 = PRUISLogChannels();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CAE63000, v18, OS_LOG_TYPE_DEFAULT, "no known poster extensions, exiting early with an empty gallery", buf, 2u);
    }

    v19 = [_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata alloc];
    v20 = [MEMORY[0x1E695DF00] now];
    v14 = [(PRUISPosterGalleryMetadata *)v19 initWithCreationDate:v20];

    v21 = MEMORY[0x1E69C5258];
    v22 = [PRUISPosterGallery alloc];
    v23 = [v7 channelContext];
    v24 = [(PRUISPosterGallery *)v22 initWithContext:v23 descriptors:0 metadata:v14];
    v15 = [v21 futureWithResult:v24];
  }

LABEL_10:
  objc_sync_exit(v10);

  return v15;
}

- (void)cancelGalleryFetchForChannelIdentifier:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [PRUISPosterChannelGalleryCoordinator cancelGalleryFetchForChannelIdentifier:a2];
  }

  v5 = self;
  objc_sync_enter(v5);
  v6 = [(_PRUISPosterChannelUpdateDescriptorsTask *)v5->_activeTask channel];
  v7 = [v6 channelIdentifier];
  v8 = [v7 isEqual:v10];

  if (v8)
  {
    [(_PRUISPosterChannelUpdateDescriptorsTask *)v5->_activeTask invalidate];
    activeTask = v5->_activeTask;
    v5->_activeTask = 0;

    objc_sync_exit(v5);
    [(PRUISPosterChannelGalleryCoordinator *)v5 _executeNextTask];
  }

  else
  {
    [(BSMutableOrderedDictionary *)v5->_channelUUIDToTaskQueue removeObjectForKey:v10];
    objc_sync_exit(v5);
  }
}

- (id)_enqueueChannel:(id)a3 fetchOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  channelUUIDToTaskQueue = v8->_channelUUIDToTaskQueue;
  v10 = [v6 channelIdentifier];
  v11 = [(BSMutableOrderedDictionary *)channelUUIDToTaskQueue objectForKey:v10];

  if (!v11)
  {
    v11 = [[_PRUISPosterChannelUpdateDescriptorsTask alloc] initWithChannel:v6 fetchOptions:v7 extensionProvider:v8->_extensionProvider extensionInstanceProvider:v8->_instanceProvider invalidationSignal:v8->_invalidationSignal schedulerProvider:v8->_scheduler];
    v12 = v8->_channelUUIDToTaskQueue;
    v13 = [v6 channelIdentifier];
    [(BSMutableOrderedDictionary *)v12 setObject:v11 forKey:v13];
  }

  [(PRUISPosterChannelGalleryCoordinator *)v8 _executeNextTask];
  v14 = [(_PRUISPosterChannelUpdateDescriptorsTask *)v11 promise];
  v15 = [v14 future];

  objc_sync_exit(v8);

  return v15;
}

- (void)_executeNextTask
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_activeTask && ([(BSAtomicSignal *)v2->_invalidationSignal hasBeenSignalled]& 1) == 0 && !v2->_isHeadingToBackground)
  {
    v3 = [(BSMutableOrderedDictionary *)v2->_channelUUIDToTaskQueue allValues];
    v4 = [v3 firstObject];

    if (v4)
    {
      channelUUIDToTaskQueue = v2->_channelUUIDToTaskQueue;
      v6 = [v4 channel];
      v7 = [v6 channelIdentifier];
      [(BSMutableOrderedDictionary *)channelUUIDToTaskQueue removeObjectForKey:v7];

      objc_storeStrong(&v2->_activeTask, v4);
      [v4 execute];
      objc_initWeak(&location, v2);
      v8 = [(_PRUISPosterChannelUpdateDescriptorsTask *)v2->_activeTask promise];
      v9 = [v8 future];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56__PRUISPosterChannelGalleryCoordinator__executeNextTask__block_invoke;
      v12[3] = &unk_1E83A74D8;
      objc_copyWeak(&v13, &location);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __56__PRUISPosterChannelGalleryCoordinator__executeNextTask__block_invoke_2;
      v10[3] = &unk_1E83A7500;
      objc_copyWeak(&v11, &location);
      [v9 addSuccessBlock:v12 andFailureBlock:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  objc_sync_exit(v2);
}

void __56__PRUISPosterChannelGalleryCoordinator__executeNextTask__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
    v3 = WeakRetained;

    [v3 _executeNextTask];
    WeakRetained = v3;
  }
}

void __56__PRUISPosterChannelGalleryCoordinator__executeNextTask__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
    v3 = WeakRetained;

    [v3 _executeNextTask];
    WeakRetained = v3;
  }
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if ([(BSAtomicSignal *)v2->_invalidationSignal signal])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(BSMutableOrderedDictionary *)v2->_channelUUIDToTaskQueue allValues];
    v4 = [v3 objectEnumerator];

    v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) cancelWithReason:@"PRUISPosterChannelGalleryCoordinator invalidation"];
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(BSMutableOrderedDictionary *)v2->_channelUUIDToTaskQueue removeAllObjects];
    [(PFPosterExtensionInstanceProvider *)v2->_instanceProvider cancel];
    [(PRUISPosterChannelGalleryCoordinator *)v2 _teardownLifecycleNotificationObserving];
  }

  objc_sync_exit(v2);
}

- (void)initWithExtensionProvider:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"extensionProvider", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)fetchGalleryForChannel:(const char *)a1 options:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"channel", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)cancelGalleryFetchForChannelIdentifier:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"channelIdentifier", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end