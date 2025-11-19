@interface MTCoalescableWorkController
+ (id)_uniqueGenericIdentifier;
+ (id)controllerWithQosClass:(unsigned int)a3 identifier:(id)a4;
- (MTCoalescableWorkController)initWithWorkQueue:(id)a3 identifier:(id)a4;
- (id)description;
- (void)_onWorkQueuePerformActiveWorkBlock;
- (void)_syncScheduleStartActiveWork:(id)a3 completion:(id)a4;
- (void)_syncScheduleUpdatePendingWork:(id)a3 completion:(id)a4;
- (void)schedule:(id)a3 completion:(id)a4;
@end

@implementation MTCoalescableWorkController

- (void)_onWorkQueuePerformActiveWorkBlock
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTCoalescableWorkController *)v2 activeWorkManifest];
  objc_sync_exit(v2);

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    if ([(MTCoalescableWorkController *)v2 verboseDebugLoggingEnabled])
    {
      v5 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v2;
        _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] performing work. [ctl=%@]", buf, 0xCu);
      }
    }

    v6 = [v3 workBlock];
    v6[2]();

    if ([(MTCoalescableWorkController *)v2 verboseDebugLoggingEnabled])
    {
      v7 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v2;
        _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] firing completions. [ctl=%@]", buf, 0xCu);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v3 completions];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v20 + 1) + 8 * v11++) + 16))();
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(v4);
    v12 = v2;
    objc_sync_enter(v12);
    v13 = [(MTCoalescableWorkController *)v12 pendingWorkManifest];
    [(MTCoalescableWorkController *)v12 setActiveWorkManifest:v13];

    [(MTCoalescableWorkController *)v12 setPendingWorkManifest:0];
    v14 = [(MTCoalescableWorkController *)v12 activeWorkManifest];

    if ([(MTCoalescableWorkController *)v12 verboseDebugLoggingEnabled])
    {
      v15 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(MTCoalescableWorkController *)v12 activeWorkManifest];
        *buf = 138412546;
        v25 = v16;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_1D8CEC000, v15, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] clearing active manifest, newActive = %@. [ctl=%@]", buf, 0x16u);
      }
    }

    objc_sync_exit(v12);

    if (v14)
    {
      v17 = [(MTCoalescableWorkController *)v12 workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__MTCoalescableWorkController__onWorkQueuePerformActiveWorkBlock__block_invoke;
      block[3] = &unk_1E8568E28;
      block[4] = v12;
      dispatch_async(v17, block);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)controllerWithQosClass:(unsigned int)a3 identifier:(id)a4
{
  v6 = a4;
  if (![v6 length])
  {
    v7 = [a1 _uniqueGenericIdentifier];

    v6 = v7;
  }

  v8 = [v6 UTF8String];
  v9 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  v10 = dispatch_queue_create(v8, v9);

  v11 = [objc_alloc(objc_opt_class()) initWithWorkQueue:v10 identifier:v6];

  return v11;
}

- (MTCoalescableWorkController)initWithWorkQueue:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [objc_opt_class() _uniqueGenericIdentifier];

    v7 = v11;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v12 = [v7 UTF8String];
  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v6 = dispatch_queue_create(v12, v13);

LABEL_3:
  v14.receiver = self;
  v14.super_class = MTCoalescableWorkController;
  v8 = [(MTCoalescableWorkController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, v7);
    objc_storeStrong(&v9->_workQueue, v6);
  }

  return v9;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = v2;
  v10.super_class = MTCoalescableWorkController;
  v4 = [(MTCoalescableWorkController *)&v10 description];
  v5 = [(MTCoalescableWorkController *)v2 identifier];
  v6 = [(MTCoalescableWorkController *)v2 activeWorkManifest];
  v7 = [(MTCoalescableWorkController *)v2 pendingWorkManifest];
  v8 = [v3 stringWithFormat:@"%@: id = %@, active = %@, pending = %@", v4, v5, v6, v7];

  objc_sync_exit(v2);

  return v8;
}

- (void)schedule:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(MTCoalescableWorkController *)v7 activeWorkManifest];

    if (v8)
    {
      [(MTCoalescableWorkController *)v7 _syncScheduleUpdatePendingWork:v9 completion:v6];
    }

    else
    {
      [(MTCoalescableWorkController *)v7 _syncScheduleStartActiveWork:v9 completion:v6];
    }

    objc_sync_exit(v7);
  }
}

+ (id)_uniqueGenericIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromClass(a1);
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  v6 = [v2 stringWithFormat:@"%@.%@", v3, v5];

  return v6;
}

- (void)_syncScheduleUpdatePendingWork:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(MTCoalescableWorkController *)self pendingWorkManifest];
  v9 = [(MTCoalescableWorkController *)self verboseDebugLoggingEnabled];
  if (v8)
  {
    if (v9)
    {
      v10 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = self;
        _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] schedule; replacing pending manifest. [ctl=%@]", &v17, 0xCu);
      }
    }

    v11 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MTCoalescableWorkController *)self identifier];
      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWorkController] %@ dropped and replaced work-block with newer item", &v17, 0xCu);
    }

    v13 = [v8 manifestByReplacingWorkBlock:v7 appendingCompletion:v6];
  }

  else
  {
    if (v9)
    {
      v14 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = self;
        _os_log_impl(&dword_1D8CEC000, v14, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] schedule; creating pending manifest. [ctl=%@]", &v17, 0xCu);
      }
    }

    v13 = [[MTCoalescableWorkManifest alloc] initWithWorkBlock:v7 completion:v6];
  }

  v15 = v13;

  [(MTCoalescableWorkController *)self setPendingWorkManifest:v15];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_syncScheduleStartActiveWork:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  if ([(MTCoalescableWorkController *)self verboseDebugLoggingEnabled])
  {
    v8 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = self;
      _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] schedule; setting active manifest; will run block. [ctl=%@]", buf, 0xCu);
    }
  }

  v9 = [[MTCoalescableWorkManifest alloc] initWithWorkBlock:v7 completion:v6];

  [(MTCoalescableWorkController *)self setActiveWorkManifest:v9];
  v10 = [(MTCoalescableWorkController *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MTCoalescableWorkController__syncScheduleStartActiveWork_completion___block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(v10, block);

  v11 = *MEMORY[0x1E69E9840];
}

@end