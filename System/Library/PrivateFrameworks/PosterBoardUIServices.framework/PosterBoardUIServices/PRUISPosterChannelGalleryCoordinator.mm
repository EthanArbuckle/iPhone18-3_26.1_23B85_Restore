@interface PRUISPosterChannelGalleryCoordinator
- (PRUISPosterChannelGalleryCoordinator)init;
- (PRUISPosterChannelGalleryCoordinator)initWithExtensionProvider:(id)provider;
- (id)_enqueueChannel:(id)channel fetchOptions:(id)options;
- (id)fetchGalleryForChannel:(id)channel options:(id)options;
- (void)_didEnterBackground;
- (void)_executeNextTask;
- (void)_setupLifecycleNotificationObserving;
- (void)_teardownLifecycleNotificationObserving;
- (void)_willEnterForeground;
- (void)cancelGalleryFetchForChannelIdentifier:(id)identifier;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PRUISPosterChannelGalleryCoordinator

- (PRUISPosterChannelGalleryCoordinator)initWithExtensionProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [PRUISPosterChannelGalleryCoordinator initWithExtensionProvider:a2];
  }

  v7 = providerCopy;
  v25.receiver = self;
  v25.super_class = PRUISPosterChannelGalleryCoordinator;
  v8 = [(PRUISPosterChannelGalleryCoordinator *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_extensionProvider, provider);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v11 = [objc_alloc(MEMORY[0x1E69C5168]) initWithDefaultInstanceIdentifier:uUID];
    instanceProvider = v9->_instanceProvider;
    v9->_instanceProvider = v11;

    v13 = objc_opt_new();
    channelUUIDToTaskQueue = v9->_channelUUIDToTaskQueue;
    v9->_channelUUIDToTaskQueue = v13;

    v15 = objc_opt_new();
    invalidationSignal = v9->_invalidationSignal;
    v9->_invalidationSignal = v15;

    v17 = MEMORY[0x1E696AEC0];
    uUIDString = [uUID UUIDString];
    v19 = [uUIDString substringToIndex:7];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)_teardownLifecycleNotificationObserving
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
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

- (id)fetchGalleryForChannel:(id)channel options:(id)options
{
  channelCopy = channel;
  optionsCopy = options;
  if (!channelCopy)
  {
    [PRUISPosterChannelGalleryCoordinator fetchGalleryForChannel:a2 options:?];
  }

  v9 = optionsCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = selfCopy->_invalidationSignal;
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
    knownPosterExtensions = [(PFPosterExtensionProvider *)selfCopy->_extensionProvider knownPosterExtensions];
    v13 = [v16 setWithArray:knownPosterExtensions];

    if ([v13 count])
    {
      v15 = [(PRUISPosterChannelGalleryCoordinator *)selfCopy _enqueueChannel:channelCopy fetchOptions:v9];
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
    channelContext = [channelCopy channelContext];
    v24 = [(PRUISPosterGallery *)v22 initWithContext:channelContext descriptors:0 metadata:v14];
    v15 = [v21 futureWithResult:v24];
  }

LABEL_10:
  objc_sync_exit(selfCopy);

  return v15;
}

- (void)cancelGalleryFetchForChannelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [PRUISPosterChannelGalleryCoordinator cancelGalleryFetchForChannelIdentifier:a2];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  channel = [(_PRUISPosterChannelUpdateDescriptorsTask *)selfCopy->_activeTask channel];
  channelIdentifier = [channel channelIdentifier];
  v8 = [channelIdentifier isEqual:identifierCopy];

  if (v8)
  {
    [(_PRUISPosterChannelUpdateDescriptorsTask *)selfCopy->_activeTask invalidate];
    activeTask = selfCopy->_activeTask;
    selfCopy->_activeTask = 0;

    objc_sync_exit(selfCopy);
    [(PRUISPosterChannelGalleryCoordinator *)selfCopy _executeNextTask];
  }

  else
  {
    [(BSMutableOrderedDictionary *)selfCopy->_channelUUIDToTaskQueue removeObjectForKey:identifierCopy];
    objc_sync_exit(selfCopy);
  }
}

- (id)_enqueueChannel:(id)channel fetchOptions:(id)options
{
  channelCopy = channel;
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  channelUUIDToTaskQueue = selfCopy->_channelUUIDToTaskQueue;
  channelIdentifier = [channelCopy channelIdentifier];
  v11 = [(BSMutableOrderedDictionary *)channelUUIDToTaskQueue objectForKey:channelIdentifier];

  if (!v11)
  {
    v11 = [[_PRUISPosterChannelUpdateDescriptorsTask alloc] initWithChannel:channelCopy fetchOptions:optionsCopy extensionProvider:selfCopy->_extensionProvider extensionInstanceProvider:selfCopy->_instanceProvider invalidationSignal:selfCopy->_invalidationSignal schedulerProvider:selfCopy->_scheduler];
    v12 = selfCopy->_channelUUIDToTaskQueue;
    channelIdentifier2 = [channelCopy channelIdentifier];
    [(BSMutableOrderedDictionary *)v12 setObject:v11 forKey:channelIdentifier2];
  }

  [(PRUISPosterChannelGalleryCoordinator *)selfCopy _executeNextTask];
  promise = [(_PRUISPosterChannelUpdateDescriptorsTask *)v11 promise];
  future = [promise future];

  objc_sync_exit(selfCopy);

  return future;
}

- (void)_executeNextTask
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activeTask && ([(BSAtomicSignal *)selfCopy->_invalidationSignal hasBeenSignalled]& 1) == 0 && !selfCopy->_isHeadingToBackground)
  {
    allValues = [(BSMutableOrderedDictionary *)selfCopy->_channelUUIDToTaskQueue allValues];
    firstObject = [allValues firstObject];

    if (firstObject)
    {
      channelUUIDToTaskQueue = selfCopy->_channelUUIDToTaskQueue;
      channel = [firstObject channel];
      channelIdentifier = [channel channelIdentifier];
      [(BSMutableOrderedDictionary *)channelUUIDToTaskQueue removeObjectForKey:channelIdentifier];

      objc_storeStrong(&selfCopy->_activeTask, firstObject);
      [firstObject execute];
      objc_initWeak(&location, selfCopy);
      promise = [(_PRUISPosterChannelUpdateDescriptorsTask *)selfCopy->_activeTask promise];
      future = [promise future];
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
      [future addSuccessBlock:v12 andFailureBlock:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(BSAtomicSignal *)selfCopy->_invalidationSignal signal])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    allValues = [(BSMutableOrderedDictionary *)selfCopy->_channelUUIDToTaskQueue allValues];
    objectEnumerator = [allValues objectEnumerator];

    v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v8 + 1) + 8 * v7++) cancelWithReason:@"PRUISPosterChannelGalleryCoordinator invalidation"];
        }

        while (v5 != v7);
        v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(BSMutableOrderedDictionary *)selfCopy->_channelUUIDToTaskQueue removeAllObjects];
    [(PFPosterExtensionInstanceProvider *)selfCopy->_instanceProvider cancel];
    [(PRUISPosterChannelGalleryCoordinator *)selfCopy _teardownLifecycleNotificationObserving];
  }

  objc_sync_exit(selfCopy);
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