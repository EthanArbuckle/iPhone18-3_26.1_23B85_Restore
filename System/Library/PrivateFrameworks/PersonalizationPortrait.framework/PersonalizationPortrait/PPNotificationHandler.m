@interface PPNotificationHandler
- (PPNotificationHandler)initWithName:(id)a3 waitSeconds:(double)a4;
- (id)description;
- (void)_delayedExecutionAfterSeconds:(double)a3;
- (void)_executeBlocksWithGuardedData:(id)a3;
- (void)addObserverBlock:(id)a3 forLifetimeOfObject:(id)a4;
- (void)fireWithObjects:(id)a3;
- (void)waitOnQueueToDrain;
@end

@implementation PPNotificationHandler

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPNotificationHandler: %@>", self->_name];

  return v2;
}

- (void)addObserverBlock:(id)a3 forLifetimeOfObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PPNotificationHandler_addObserverBlock_forLifetimeOfObject___block_invoke;
  v11[3] = &unk_1E77F7618;
  v12 = v7;
  v13 = v6;
  v9 = v7;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v11];
}

void __62__PPNotificationHandler_addObserverBlock_forLifetimeOfObject___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v5 = [*(a1 + 40) copy];
  v4 = MEMORY[0x1AC568040]();
  [v3 setObject:v4 forKey:*(a1 + 32)];
}

- (void)fireWithObjects:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PPNotificationHandler_fireWithObjects___block_invoke;
  v7[3] = &unk_1E77F75F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __41__PPNotificationHandler_fireWithObjects___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3[4] addObjectsFromArray:?];
    v5 = pp_default_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 40);
      v21 = [*(a1 + 32) count];
      v22 = [v4[4] count];
      v23 = 138412802;
      v24 = v20;
      v25 = 2048;
      v26 = v21;
      v27 = 2048;
      v28 = v22;
      _os_log_debug_impl(&dword_1A7FD3000, v5, OS_LOG_TYPE_DEBUG, "%@ added %tu objects. Queue now has %tu.", &v23, 0x20u);
    }
  }

  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v23 = 138412290;
    v24 = v7;
    _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_DEFAULT, "%@ is trying to fire", &v23, 0xCu);
  }

  if (*(v4 + 8) == 1)
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v23 = 138412290;
      v24 = v9;
      _os_log_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEFAULT, "%@ delayedFiringInProgress was YES so doing nothing", &v23, 0xCu);
    }
  }

  else
  {
    v10 = objc_opt_new();
    [v10 timeIntervalSince1970];
    v12 = v11;

    v13 = v12 - *(v4 + 2);
    v14 = *(*(a1 + 40) + 24);
    v15 = pp_default_log_handle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v13 >= v14)
    {
      if (v16)
      {
        v18 = *(a1 + 40);
        v23 = 138412290;
        v24 = v18;
        _os_log_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEFAULT, "%@ is firing immediately", &v23, 0xCu);
      }

      [*(a1 + 40) _executeBlocksWithGuardedData:v4];
    }

    else
    {
      if (v16)
      {
        v17 = *(a1 + 40);
        v23 = 138412290;
        v24 = v17;
        _os_log_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEFAULT, "%@ waitSeconds has not elapsed, scheduling delayed execution", &v23, 0xCu);
      }

      *(v4 + 8) = 1;
      [*(a1 + 40) _delayedExecutionAfterSeconds:*(*(a1 + 40) + 24) - v13];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_delayedExecutionAfterSeconds:(double)a3
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69C5D10];
  waiterQueue = self->_waiterQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PPNotificationHandler__delayedExecutionAfterSeconds___block_invoke;
  v7[3] = &unk_1E77F7970;
  objc_copyWeak(&v8, &location);
  [v5 runAsyncOnQueue:waiterQueue afterDelaySeconds:v7 block:a3];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __55__PPNotificationHandler__delayedExecutionAfterSeconds___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 1);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__PPNotificationHandler__delayedExecutionAfterSeconds___block_invoke_2;
    v4[3] = &unk_1E77F75C8;
    v4[4] = v2;
    [v3 runWithLockAcquired:v4];
  }
}

void __55__PPNotificationHandler__delayedExecutionAfterSeconds___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1A7FD3000, v4, OS_LOG_TYPE_DEFAULT, "%@ is done waiting to fire", &v7, 0xCu);
  }

  [*(a1 + 32) _executeBlocksWithGuardedData:v3];
  v3[8] = 0;

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_executeBlocksWithGuardedData:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4[3] objectEnumerator];
  v7 = [v6 allObjects];

  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v7 count];
    v24 = [v4[4] count];
    *buf = 138412802;
    v31 = self;
    v32 = 2048;
    v33 = v23;
    v34 = 2048;
    v35 = v24;
    _os_log_debug_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEBUG, "%@ is executing %tu blocks for %tu objects", buf, 0x20u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = [v4[4] allObjects];
        (*(v14 + 16))(v14, v16);

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v17 = objc_opt_new();
  v18 = v4[4];
  v4[4] = v17;

  v19 = pp_default_log_handle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = self;
    _os_log_debug_impl(&dword_1A7FD3000, v19, OS_LOG_TYPE_DEBUG, "%@ reset object buffer to an empty set", buf, 0xCu);
  }

  v20 = objc_opt_new();
  [v20 timeIntervalSince1970];
  v4[2] = v21;

  objc_autoreleasePoolPop(v5);
  v22 = *MEMORY[0x1E69E9840];
}

- (PPNotificationHandler)initWithName:(id)a3 waitSeconds:(double)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = PPNotificationHandler;
  v8 = [(PPNotificationHandler *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v10 = 0.0;
    if (a4 >= 0.0)
    {
      v10 = a4;
    }

    v9->_waitSeconds = v10;
    v11 = MEMORY[0x1E69C5D10];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PPNotificationHandler.%@.waiterQueue", v7];
    v13 = [v11 autoreleasingSerialQueueWithLabel:objc_msgSend(v12 qosClass:{"UTF8String"), 9}];
    waiterQueue = v9->_waiterQueue;
    v9->_waiterQueue = v13;

    v15 = objc_alloc(MEMORY[0x1E69C5D60]);
    v16 = objc_opt_new();
    v17 = [v15 initWithGuardedData:v16];
    lock = v9->_lock;
    v9->_lock = v17;
  }

  return v9;
}

- (void)waitOnQueueToDrain
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v3 = 10;
  while (*(v8 + 24) == 1)
  {
    if (!v3)
    {
      v5 = [MEMORY[0x1E695DF30] exceptionWithName:@"PPNotificationHandlerWaitOnQueueToDrainTimeout" reason:@"PPNotificationHandler waitOnQueueToDrain timeout" userInfo:0];
      objc_exception_throw(v5);
    }

    usleep(0x186A0u);
    --v3;
    lock = self->_lock;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__PPNotificationHandler_TestHelpers__waitOnQueueToDrain__block_invoke;
    v6[3] = &unk_1E77F78A0;
    v6[4] = &v7;
    [(_PASLock *)lock runWithLockAcquired:v6];
  }

  _Block_object_dispose(&v7, 8);
}

@end