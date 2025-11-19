@interface PXCPLSyncActivity
+ (PXCPLSyncActivity)sharedInstance;
- (PXCPLSyncActivity)init;
- (id)_init;
- (void)_queue_subscribeToSyncProgress;
- (void)_setSyncProgress:(id)a3;
- (void)_setSyncProgressState:(unint64_t)a3;
- (void)_unsubscribeFromSyncProgress;
- (void)_updateIsSyncing;
- (void)_updateSyncProgressState;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setIsSyncing:(BOOL)a3;
@end

@implementation PXCPLSyncActivity

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (_CPLSyncProgressStateObservationContext == a6)
  {

    [(PXCPLSyncActivity *)self _updateSyncProgressState:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = PXCPLSyncActivity;
    [(PXCPLSyncActivity *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)_updateSyncProgressState
{
  v3 = [(NSProgress *)self->_syncProgress userInfo];
  v4 = getCPLSyncProgressStateKey();
  v5 = [v3 objectForKeyedSubscript:v4];

  -[PXCPLSyncActivity _setSyncProgressState:](self, "_setSyncProgressState:", [v5 unsignedIntegerValue]);
}

- (void)_updateIsSyncing
{
  if (self->_syncProgress)
  {
    v2 = self->_syncProgressState - 1 < 3;
  }

  else
  {
    v2 = 0;
  }

  [(PXCPLSyncActivity *)self setIsSyncing:v2];
}

- (void)_unsubscribeFromSyncProgress
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PLUserStatusGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Unsubscribe from sync progress", &v9, 0xCu);
  }

  if (self->_syncProgressSubscriber)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    [MEMORY[0x1E696AE38] _removeSubscriber:self->_syncProgressSubscriber];
    v6 = PLUserStatusGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v9 = 138543618;
      v10 = self;
      v11 = 2048;
      v12 = v7 - v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Unsubscribed in: %f s", &v9, 0x16u);
    }

    syncProgressSubscriber = self->_syncProgressSubscriber;
    self->_syncProgressSubscriber = 0;
  }
}

- (void)_queue_subscribeToSyncProgress
{
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_syncProgressSubscriber)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXCPLSyncActivity.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"!_syncProgressSubscriber"}];
  }

  v4 = PLUserStatusGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Subscribe to sync progress", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PXCPLSyncActivity__queue_subscribeToSyncProgress__block_invoke;
  aBlock[3] = &unk_1E7736A58;
  objc_copyWeak(&v21, &location);
  v5 = _Block_copy(aBlock);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v8 = getCPLLibraryIdentifierSystemLibrarySymbolLoc_ptr;
  v26 = getCPLLibraryIdentifierSystemLibrarySymbolLoc_ptr;
  if (!getCPLLibraryIdentifierSystemLibrarySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCPLLibraryIdentifierSystemLibrarySymbolLoc_block_invoke;
    v28 = &unk_1E774BD00;
    v29 = &v23;
    v9 = CloudPhotoLibraryLibrary();
    v10 = dlsym(v9, "CPLLibraryIdentifierSystemLibrary");
    *(v29[1] + 24) = v10;
    getCPLLibraryIdentifierSystemLibrarySymbolLoc_ptr = *(v29[1] + 24);
    v8 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (!v8)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCPLLibraryIdentifierSystemLibrary(void)"];
    [v18 handleFailureInFunction:v19 file:@"PXCPLSyncActivity.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v11 = *v8;
  v12 = [@"com.apple.cpl." stringByAppendingString:v11];

  v13 = [MEMORY[0x1E696AE38] _addSubscriberForCategory:v12 usingPublishingHandler:v5];
  syncProgressSubscriber = self->_syncProgressSubscriber;
  self->_syncProgressSubscriber = v13;

  v15 = PLUserStatusGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v16 - v7;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Subscribed in: %f s", buf, 0x16u);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

id __51__PXCPLSyncActivity__queue_subscribeToSyncProgress__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLUserStatusGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *buf = 138543362;
    v13 = WeakRetained;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ Sync progress provided", buf, 0xCu);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _setSyncProgress:v3];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PXCPLSyncActivity__queue_subscribeToSyncProgress__block_invoke_25;
  aBlock[3] = &unk_1E774C318;
  objc_copyWeak(&v11, (a1 + 32));
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(v7);

  objc_destroyWeak(&v11);

  return v8;
}

void __51__PXCPLSyncActivity__queue_subscribeToSyncProgress__block_invoke_25(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLUserStatusGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138543362;
    v6 = WeakRetained;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ Sync progress cleared", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _setSyncProgress:0];
}

- (void)_setSyncProgressState:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_syncProgressState != a3)
  {
    self->_syncProgressState = a3;
    v4 = PLUserStatusGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      syncProgressState = self->_syncProgressState;
      if (syncProgressState > 4)
      {
        v6 = 0;
      }

      else
      {
        v6 = off_1E7736A90[syncProgressState];
      }

      v7 = 138543618;
      v8 = self;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ Sync progress state changed:%@", &v7, 0x16u);
    }

    [(PXCPLSyncActivity *)self _updateIsSyncing];
  }
}

- (void)_setSyncProgress:(id)a3
{
  v11 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(sel_userInfo);
  v7 = getCPLSyncProgressStateKey();
  v8 = [v5 stringWithFormat:@"%@.%@", v6, v7];

  syncProgress = self->_syncProgress;
  if (syncProgress)
  {
    [(NSProgress *)syncProgress removeObserver:self forKeyPath:v8 context:_CPLSyncProgressStateObservationContext];
  }

  objc_storeStrong(&self->_syncProgress, a3);
  v10 = self->_syncProgress;
  if (v10)
  {
    [(NSProgress *)v10 addObserver:self forKeyPath:v8 options:4 context:_CPLSyncProgressStateObservationContext];
  }

  else
  {
    [(PXCPLSyncActivity *)self _updateIsSyncing];
  }
}

- (void)setIsSyncing:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_isSyncing != v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34__PXCPLSyncActivity_setIsSyncing___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    v6 = v3;
    [(PXCPLSyncActivity *)self performChanges:v5];
  }
}

uint64_t __34__PXCPLSyncActivity_setIsSyncing___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 128) = *(a1 + 40);
  v2 = PLUserStatusGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Syncing state changed", &v5, 0xCu);
  }

  return [*(a1 + 32) signalChange:1];
}

- (void)dealloc
{
  [(PXCPLSyncActivity *)self _unsubscribeFromSyncProgress];
  v3.receiver = self;
  v3.super_class = PXCPLSyncActivity;
  [(PXCPLSyncActivity *)&v3 dealloc];
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = PXCPLSyncActivity;
  v2 = [(PXCPLSyncActivity *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.photos.pxcplsyncactivity", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    objc_initWeak(&location, v2);
    v6 = v2->_serialQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __26__PXCPLSyncActivity__init__block_invoke;
    v9[3] = &unk_1E774C318;
    objc_copyWeak(&v10, &location);
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_UTILITY, 0, v9);
    dispatch_async(v6, v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__PXCPLSyncActivity__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_subscribeToSyncProgress];
}

- (PXCPLSyncActivity)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCPLSyncActivity.m" lineNumber:74 description:{@"%s is not available as initializer", "-[PXCPLSyncActivity init]"}];

  abort();
}

+ (PXCPLSyncActivity)sharedInstance
{
  if (sharedInstance_predicate != -1)
  {
    dispatch_once(&sharedInstance_predicate, &__block_literal_global_88032);
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

void __35__PXCPLSyncActivity_sharedInstance__block_invoke()
{
  v0 = [[PXCPLSyncActivity alloc] _init];
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;
}

@end