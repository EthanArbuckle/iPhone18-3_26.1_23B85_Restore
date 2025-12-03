@interface MTCoalescableWorkController
+ (id)_uniqueGenericIdentifier;
+ (id)controllerWithQosClass:(unsigned int)class identifier:(id)identifier;
- (MTCoalescableWorkController)initWithWorkQueue:(id)queue identifier:(id)identifier;
- (id)description;
- (void)_onWorkQueuePerformActiveWorkBlock;
- (void)_syncScheduleStartActiveWork:(id)work completion:(id)completion;
- (void)_syncScheduleUpdatePendingWork:(id)work completion:(id)completion;
- (void)schedule:(id)schedule completion:(id)completion;
@end

@implementation MTCoalescableWorkController

- (void)_onWorkQueuePerformActiveWorkBlock
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeWorkManifest = [(MTCoalescableWorkController *)selfCopy activeWorkManifest];
  objc_sync_exit(selfCopy);

  if (activeWorkManifest)
  {
    v4 = objc_autoreleasePoolPush();
    if ([(MTCoalescableWorkController *)selfCopy verboseDebugLoggingEnabled])
    {
      v5 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = selfCopy;
        _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] performing work. [ctl=%@]", buf, 0xCu);
      }
    }

    workBlock = [activeWorkManifest workBlock];
    workBlock[2]();

    if ([(MTCoalescableWorkController *)selfCopy verboseDebugLoggingEnabled])
    {
      v7 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = selfCopy;
        _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] firing completions. [ctl=%@]", buf, 0xCu);
      }
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    completions = [activeWorkManifest completions];
    v9 = [completions countByEnumeratingWithState:&v20 objects:v28 count:16];
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
            objc_enumerationMutation(completions);
          }

          (*(*(*(&v20 + 1) + 8 * v11++) + 16))();
        }

        while (v9 != v11);
        v9 = [completions countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(v4);
    v12 = selfCopy;
    objc_sync_enter(v12);
    pendingWorkManifest = [(MTCoalescableWorkController *)v12 pendingWorkManifest];
    [(MTCoalescableWorkController *)v12 setActiveWorkManifest:pendingWorkManifest];

    [(MTCoalescableWorkController *)v12 setPendingWorkManifest:0];
    activeWorkManifest2 = [(MTCoalescableWorkController *)v12 activeWorkManifest];

    if ([(MTCoalescableWorkController *)v12 verboseDebugLoggingEnabled])
    {
      v15 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        activeWorkManifest3 = [(MTCoalescableWorkController *)v12 activeWorkManifest];
        *buf = 138412546;
        v25 = activeWorkManifest3;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_1D8CEC000, v15, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] clearing active manifest, newActive = %@. [ctl=%@]", buf, 0x16u);
      }
    }

    objc_sync_exit(v12);

    if (activeWorkManifest2)
    {
      workQueue = [(MTCoalescableWorkController *)v12 workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__MTCoalescableWorkController__onWorkQueuePerformActiveWorkBlock__block_invoke;
      block[3] = &unk_1E8568E28;
      block[4] = v12;
      dispatch_async(workQueue, block);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)controllerWithQosClass:(unsigned int)class identifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy length])
  {
    _uniqueGenericIdentifier = [self _uniqueGenericIdentifier];

    identifierCopy = _uniqueGenericIdentifier;
  }

  uTF8String = [identifierCopy UTF8String];
  v9 = dispatch_queue_attr_make_with_qos_class(0, class, 0);
  v10 = dispatch_queue_create(uTF8String, v9);

  v11 = [objc_alloc(objc_opt_class()) initWithWorkQueue:v10 identifier:identifierCopy];

  return v11;
}

- (MTCoalescableWorkController)initWithWorkQueue:(id)queue identifier:(id)identifier
{
  queueCopy = queue;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _uniqueGenericIdentifier = [objc_opt_class() _uniqueGenericIdentifier];

    identifierCopy = _uniqueGenericIdentifier;
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  uTF8String = [identifierCopy UTF8String];
  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  queueCopy = dispatch_queue_create(uTF8String, v13);

LABEL_3:
  v14.receiver = self;
  v14.super_class = MTCoalescableWorkController;
  v8 = [(MTCoalescableWorkController *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifierCopy);
    objc_storeStrong(&v9->_workQueue, queueCopy);
  }

  return v9;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = selfCopy;
  v10.super_class = MTCoalescableWorkController;
  v4 = [(MTCoalescableWorkController *)&v10 description];
  identifier = [(MTCoalescableWorkController *)selfCopy identifier];
  activeWorkManifest = [(MTCoalescableWorkController *)selfCopy activeWorkManifest];
  pendingWorkManifest = [(MTCoalescableWorkController *)selfCopy pendingWorkManifest];
  v8 = [v3 stringWithFormat:@"%@: id = %@, active = %@, pending = %@", v4, identifier, activeWorkManifest, pendingWorkManifest];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)schedule:(id)schedule completion:(id)completion
{
  scheduleCopy = schedule;
  completionCopy = completion;
  if (scheduleCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    activeWorkManifest = [(MTCoalescableWorkController *)selfCopy activeWorkManifest];

    if (activeWorkManifest)
    {
      [(MTCoalescableWorkController *)selfCopy _syncScheduleUpdatePendingWork:scheduleCopy completion:completionCopy];
    }

    else
    {
      [(MTCoalescableWorkController *)selfCopy _syncScheduleStartActiveWork:scheduleCopy completion:completionCopy];
    }

    objc_sync_exit(selfCopy);
  }
}

+ (id)_uniqueGenericIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromClass(self);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [v2 stringWithFormat:@"%@.%@", v3, uUIDString];

  return v6;
}

- (void)_syncScheduleUpdatePendingWork:(id)work completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  workCopy = work;
  pendingWorkManifest = [(MTCoalescableWorkController *)self pendingWorkManifest];
  verboseDebugLoggingEnabled = [(MTCoalescableWorkController *)self verboseDebugLoggingEnabled];
  if (pendingWorkManifest)
  {
    if (verboseDebugLoggingEnabled)
    {
      v10 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] schedule; replacing pending manifest. [ctl=%@]", &v17, 0xCu);
      }
    }

    v11 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(MTCoalescableWorkController *)self identifier];
      v17 = 138412290;
      selfCopy2 = identifier;
      _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWorkController] %@ dropped and replaced work-block with newer item", &v17, 0xCu);
    }

    v13 = [pendingWorkManifest manifestByReplacingWorkBlock:workCopy appendingCompletion:completionCopy];
  }

  else
  {
    if (verboseDebugLoggingEnabled)
    {
      v14 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1D8CEC000, v14, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] schedule; creating pending manifest. [ctl=%@]", &v17, 0xCu);
      }
    }

    v13 = [[MTCoalescableWorkManifest alloc] initWithWorkBlock:workCopy completion:completionCopy];
  }

  v15 = v13;

  [(MTCoalescableWorkController *)self setPendingWorkManifest:v15];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_syncScheduleStartActiveWork:(id)work completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  workCopy = work;
  if ([(MTCoalescableWorkController *)self verboseDebugLoggingEnabled])
  {
    v8 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_DEFAULT, "[MTCoalescableWork] schedule; setting active manifest; will run block. [ctl=%@]", buf, 0xCu);
    }
  }

  v9 = [[MTCoalescableWorkManifest alloc] initWithWorkBlock:workCopy completion:completionCopy];

  [(MTCoalescableWorkController *)self setActiveWorkManifest:v9];
  workQueue = [(MTCoalescableWorkController *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MTCoalescableWorkController__syncScheduleStartActiveWork_completion___block_invoke;
  block[3] = &unk_1E8568E28;
  block[4] = self;
  dispatch_async(workQueue, block);

  v11 = *MEMORY[0x1E69E9840];
}

@end