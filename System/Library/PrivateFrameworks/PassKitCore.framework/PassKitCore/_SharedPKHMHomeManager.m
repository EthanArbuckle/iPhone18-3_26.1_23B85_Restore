@interface _SharedPKHMHomeManager
+ (id)sharedInstance;
- (void)_performOperationWithHomeManager:(id)a3;
- (void)_performOperationWithHomes:(id)a3;
- (void)_withLock_cleanupHomeManagerIfNeeded;
- (void)decrementReferenceCount;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)incrementReferenceCount;
@end

@implementation _SharedPKHMHomeManager

+ (id)sharedInstance
{
  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_171);
  }

  v3 = qword_1EB5B7DE8;

  return v3;
}

- (void)_performOperationWithHomeManager:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    manager = self->_manager;
    if (!manager)
    {
      manager = self->_referenceCount;
      if (manager)
      {
        self->_didLoadData = 0;
        v16 = dispatch_queue_create("_SharedPKHMHomeManagerTimerQueue", 0);
        timerQueue = self->_timerQueue;
        self->_timerQueue = v16;

        v6 = [objc_alloc(_MergedGlobals_177()) initWithOptions:524 cachePolicy:0];
        [v6 setAdaptive:1];
        v18 = [objc_alloc(off_1ED6D1120()) initWithConfiguration:v6];
        v19 = self->_manager;
        self->_manager = v18;

        v20 = self->_manager;
        if (!v20)
        {
          v22 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(location[0]) = 0;
            _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "_SharedPKHMHomeManager unable to create HMHomeManager", location, 2u);
          }

          os_unfair_lock_unlock(&self->_lock);
          goto LABEL_9;
        }

        [(HMHomeManager *)v20 setDelegate:self];
        v21 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "_SharedPKHMHomeManager initalized HMHomeManager", location, 2u);
        }

        manager = self->_manager;
      }
    }

    v6 = manager;
    if (self->_didLoadData)
    {
      os_unfair_lock_unlock(&self->_lock);
      objc_initWeak(location, self);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __59___SharedPKHMHomeManager__performOperationWithHomeManager___block_invoke;
      v28[3] = &unk_1E79C9D80;
      objc_copyWeak(&v29, location);
      v4[2](v4, v6, v28);
      objc_destroyWeak(&v29);
    }

    else
    {
      if (!self->_fetchCompletions)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        fetchCompletions = self->_fetchCompletions;
        self->_fetchCompletions = v7;

        v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_timerQueue);
        fetchTimeout = self->_fetchTimeout;
        self->_fetchTimeout = v9;

        v11 = self->_fetchTimeout;
        v12 = dispatch_time(0, 10000000000);
        dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
        v13 = self->_fetchTimeout;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __59___SharedPKHMHomeManager__performOperationWithHomeManager___block_invoke_2;
        handler[3] = &unk_1E79C4DD8;
        handler[4] = self;
        v27 = v6;
        dispatch_source_set_event_handler(v13, handler);
        dispatch_resume(self->_fetchTimeout);
      }

      objc_initWeak(location, self);
      v14 = self->_fetchCompletions;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __59___SharedPKHMHomeManager__performOperationWithHomeManager___block_invoke_16;
      aBlock[3] = &unk_1E79DDC00;
      v24 = v4;
      objc_copyWeak(&v25, location);
      v15 = _Block_copy(aBlock);
      [(NSMutableArray *)v14 addObject:v15];

      os_unfair_lock_unlock(&self->_lock);
      objc_destroyWeak(&v25);
    }

    objc_destroyWeak(location);
LABEL_9:
  }
}

- (void)_performOperationWithHomes:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___SharedPKHMHomeManager__performOperationWithHomes___block_invoke;
  v6[3] = &unk_1E79DDC28;
  v7 = v4;
  v5 = v4;
  [(_SharedPKHMHomeManager *)self _performOperationWithHomeManager:v6];
}

- (void)incrementReferenceCount
{
  os_unfair_lock_lock(&self->_lock);
  ++self->_referenceCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)decrementReferenceCount
{
  os_unfair_lock_lock(&self->_lock);
  --self->_referenceCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_withLock_cleanupHomeManagerIfNeeded
{
  if (!self->_referenceCount && ![(NSMutableArray *)self->_fetchCompletions count])
  {
    manager = self->_manager;
    self->_manager = 0;

    self->_didLoadData = 0;
  }
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 homes];
  v6 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v27 = [v5 count];
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "_SharedPKHMHomeManager found %lu homes", buf, 0xCu);
  }

  v17 = v5;

  v7 = self->_fetchCompletions;
  self->_didLoadData = 1;
  fetchCompletions = self->_fetchCompletions;
  self->_fetchCompletions = 0;

  fetchTimeout = self->_fetchTimeout;
  if (fetchTimeout)
  {
    dispatch_source_cancel(fetchTimeout);
  }

  os_unfair_lock_unlock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        timerQueue = self->_timerQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __52___SharedPKHMHomeManager_homeManagerDidUpdateHomes___block_invoke;
        block[3] = &unk_1E79C44A0;
        v20 = v15;
        v19 = v4;
        dispatch_async(timerQueue, block);

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

@end