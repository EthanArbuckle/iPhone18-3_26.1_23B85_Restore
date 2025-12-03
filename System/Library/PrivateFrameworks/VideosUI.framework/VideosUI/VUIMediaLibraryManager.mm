@interface VUIMediaLibraryManager
+ (id)defaultManager;
- (NSArray)homeShareMediaLibraries;
- (OS_dispatch_queue)completionDispatchQueue;
- (VUIMediaLibraryManager)init;
- (id)_deviceMediaLibrary;
- (id)_homeShareMediaLibraryManager;
- (id)_mediaLibraryForIdentifier:(id)identifier;
- (id)mediaLibraryForIdentifier:(id)identifier;
- (void)_enqueueCompletionQueueBlock:(id)block;
- (void)_enqueueStrongSelfCompletionQueueBlock:(id)block;
- (void)_postHomeShareMediaLibrariesDidChangeNotificationWithMediaLibraries:(id)libraries andChangeSet:(id)set;
- (void)beginDiscoveringHomeShareMediaLibraries;
- (void)endDiscoveringHomeShareMediaLibraries;
- (void)homeShareManager:(id)manager mediaLibrariesDidUpdate:(id)update withChangeSet:(id)set;
- (void)setCompletionDispatchQueue:(id)queue;
@end

@implementation VUIMediaLibraryManager

void __40__VUIMediaLibraryManager_defaultManager__block_invoke()
{
  v0 = VUISignpostLogObject();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MediaLibraryManager.Init", "", buf, 2u);
  }

  v1 = objc_alloc_init(VUIMediaLibraryManager);
  v2 = defaultManager___defaultManager;
  defaultManager___defaultManager = v1;

  v3 = VUISignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MediaLibraryManager.Init", "", v4, 2u);
  }
}

- (VUIMediaLibraryManager)init
{
  v24.receiver = self;
  v24.super_class = VUIMediaLibraryManager;
  v2 = [(VUIMediaLibraryManager *)&v24 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_completionDispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = dispatch_queue_create("com.apple.videosui.VUIMediaLibraryManager.serialProcessingQueue", 0);
    serialProcessingDispatchQueue = v3->_serialProcessingDispatchQueue;
    v3->_serialProcessingDispatchQueue = v4;

    v6 = VUISignpostLogObject();
    if (os_signpost_enabled(v6))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SidebandMediaLibrary.Init", "", v23, 2u);
    }

    v7 = [[VUISidebandMediaLibrary alloc] initWithManager:v3];
    sidebandMediaLibrary = v3->_sidebandMediaLibrary;
    v3->_sidebandMediaLibrary = v7;

    v9 = VUISignpostLogObject();
    if (os_signpost_enabled(v9))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SidebandMediaLibrary.Init", "", v23, 2u);
    }

    v10 = VUISignpostLogObject();
    if (os_signpost_enabled(v10))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DeviceMediaLibrary.Init", "", v23, 2u);
    }

    _deviceMediaLibrary = [(VUIMediaLibraryManager *)v3 _deviceMediaLibrary];
    deviceMediaLibrary = v3->_deviceMediaLibrary;
    v3->_deviceMediaLibrary = _deviceMediaLibrary;

    v13 = VUISignpostLogObject();
    if (os_signpost_enabled(v13))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DeviceMediaLibrary.Init", "", v23, 2u);
    }

    v14 = VUISignpostLogObject();
    if (os_signpost_enabled(v14))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AggregateMediaLibrary.Init", "", v23, 2u);
    }

    v15 = [[VUIAggregateMediaLibrary alloc] initWithManager:v3 deviceMediaLibrary:v3->_deviceMediaLibrary sidebandMediaLibrary:v3->_sidebandMediaLibrary];
    aggregateMediaLibrary = v3->_aggregateMediaLibrary;
    v3->_aggregateMediaLibrary = v15;

    v17 = VUISignpostLogObject();
    if (os_signpost_enabled(v17))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AggregateMediaLibrary.Init", "", v23, 2u);
    }

    v18 = VUISignpostLogObject();
    if (os_signpost_enabled(v18))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "HomeShareManager.Init", "", v23, 2u);
    }

    _homeShareMediaLibraryManager = [(VUIMediaLibraryManager *)v3 _homeShareMediaLibraryManager];
    homeShareManager = v3->_homeShareManager;
    v3->_homeShareManager = _homeShareMediaLibraryManager;

    v21 = VUISignpostLogObject();
    if (os_signpost_enabled(v21))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "HomeShareManager.Init", "", v23, 2u);
    }

    [(VUIHomeShareMediaLibraryManager *)v3->_homeShareManager setDelegate:v3];
  }

  return v3;
}

- (id)_deviceMediaLibrary
{
  v3 = CFPreferencesCopyAppValue(@"PlistDatabasePath", @"com.apple.VideosUI");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
    v5 = [[VUIPlistMediaLibrary alloc] initWithURL:v4 manager:self];
  }

  else
  {
    v5 = [[VUIMPDeviceMediaLibrary alloc] initWithManager:self];
  }

  return v5;
}

- (id)_homeShareMediaLibraryManager
{
  v3 = CFPreferencesCopyAppValue(@"UseTVHomeSharing", @"com.apple.VideosUI");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 BOOLValue];
  }

  v4 = [[VUIMPHomeShareMediaLibraryManager alloc] initWithManager:self];

  return v4;
}

+ (id)defaultManager
{
  if (defaultManager___once != -1)
  {
    +[VUIMediaLibraryManager defaultManager];
  }

  v3 = defaultManager___defaultManager;

  return v3;
}

- (OS_dispatch_queue)completionDispatchQueue
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  serialProcessingDispatchQueue = [(VUIMediaLibraryManager *)self serialProcessingDispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__VUIMediaLibraryManager_completionDispatchQueue__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialProcessingDispatchQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setCompletionDispatchQueue:(id)queue
{
  queueCopy = queue;
  serialProcessingDispatchQueue = [(VUIMediaLibraryManager *)self serialProcessingDispatchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__VUIMediaLibraryManager_setCompletionDispatchQueue___block_invoke;
  v7[3] = &unk_1E872D990;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_sync(serialProcessingDispatchQueue, v7);
}

- (NSArray)homeShareMediaLibraries
{
  homeShareManager = [(VUIMediaLibraryManager *)self homeShareManager];
  homeShareMediaLibraries = [homeShareManager homeShareMediaLibraries];

  return homeShareMediaLibraries;
}

- (void)beginDiscoveringHomeShareMediaLibraries
{
  homeShareManager = [(VUIMediaLibraryManager *)self homeShareManager];
  [homeShareManager beginDiscoveringMediaLibraries];
}

- (void)endDiscoveringHomeShareMediaLibraries
{
  homeShareManager = [(VUIMediaLibraryManager *)self homeShareManager];
  [homeShareManager endDiscoveringMediaLibraries];
}

- (id)mediaLibraryForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  serialProcessingDispatchQueue = [(VUIMediaLibraryManager *)self serialProcessingDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VUIMediaLibraryManager_mediaLibraryForIdentifier___block_invoke;
  block[3] = &unk_1E872E628;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(serialProcessingDispatchQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__VUIMediaLibraryManager_mediaLibraryForIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _mediaLibraryForIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)homeShareManager:(id)manager mediaLibrariesDidUpdate:(id)update withChangeSet:(id)set
{
  updateCopy = update;
  setCopy = set;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__VUIMediaLibraryManager_homeShareManager_mediaLibrariesDidUpdate_withChangeSet___block_invoke;
  v11[3] = &unk_1E8731D38;
  v12 = updateCopy;
  v13 = setCopy;
  v9 = setCopy;
  v10 = updateCopy;
  [(VUIMediaLibraryManager *)self _enqueueStrongSelfCompletionQueueBlock:v11];
}

void __81__VUIMediaLibraryManager_homeShareManager_mediaLibrariesDidUpdate_withChangeSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 willChangeValueForKey:@"homeShareMediaLibraries"];
  [v3 didChangeValueForKey:@"homeShareMediaLibraries"];
  [v3 _postHomeShareMediaLibrariesDidChangeNotificationWithMediaLibraries:*(a1 + 32) andChangeSet:*(a1 + 40)];
}

- (void)_enqueueCompletionQueueBlock:(id)block
{
  blockCopy = block;
  completionDispatchQueue = [(VUIMediaLibraryManager *)self completionDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VUIMediaLibraryManager__enqueueCompletionQueueBlock___block_invoke;
  block[3] = &unk_1E872D7E0;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(completionDispatchQueue, block);
}

- (void)_enqueueStrongSelfCompletionQueueBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__VUIMediaLibraryManager__enqueueStrongSelfCompletionQueueBlock___block_invoke;
  v6[3] = &unk_1E872E828;
  objc_copyWeak(&v8, &location);
  v5 = blockCopy;
  v7 = v5;
  [(VUIMediaLibraryManager *)self _enqueueCompletionQueueBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__VUIMediaLibraryManager__enqueueStrongSelfCompletionQueueBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (id)_mediaLibraryForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"identifier"}];
  }

  deviceMediaLibrary = [(VUIMediaLibraryManager *)self deviceMediaLibrary];
  homeShareMediaLibraries = [(VUIMediaLibraryManager *)self homeShareMediaLibraries];
  v7 = [homeShareMediaLibraries mutableCopy];

  [v7 addObject:deviceMediaLibrary];
  sidebandMediaLibrary = [(VUIMediaLibraryManager *)self sidebandMediaLibrary];
  if (sidebandMediaLibrary)
  {
    [v7 addObject:sidebandMediaLibrary];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        identifier = [v13 identifier];
        v15 = [identifier isEqual:identifierCopy];

        if (v15)
        {
          v10 = v13;
          goto LABEL_15;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v10;
}

- (void)_postHomeShareMediaLibrariesDidChangeNotificationWithMediaLibraries:(id)libraries andChangeSet:(id)set
{
  v6 = MEMORY[0x1E695DF90];
  setCopy = set;
  librariesCopy = libraries;
  v10 = objc_alloc_init(v6);
  [v10 vui_setObjectIfNotNil:librariesCopy forKey:@"VUIMediaLibraryManagerHomeSharesDidChangeUserInfoKeyMediaLibraries"];

  [v10 vui_setObjectIfNotNil:setCopy forKey:@"VUIMediaLibraryManagerHomeSharesDidChangeUserInfoKeyChangeSet"];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUIMediaLibraryManagerHomeSharesDidChangeNotification" object:self userInfo:v10];
}

@end