@interface PPRecordMonitoringHelper
- (BOOL)loadRecordsAndMonitorChangesWithDelegate:(id)delegate recordGenerator:(id)generator notificationRegistrationBlock:(id)block;
- (PPRecordMonitoringHelper)initWithName:(id)name;
- (id)_handleRecentChangesWithDelegates:(id)delegates changeGenerator:(id)generator recordGenerator:(id)recordGenerator;
- (id)_setupRecentChangesWithDelegates:(id)delegates recordGenerator:(id)generator;
- (void)handleChangeNotificationWithName:(id)name afterDelaySeconds:(double)seconds handler:(id)handler;
- (void)loadRecordsWithDelegate:(id)delegate recordGenerator:(id)generator;
- (void)resetWithDelegate:(id)delegate recentChangesInProgress:(BOOL)progress recordGenerator:(id)generator;
- (void)sendChangesToDelegatesWithChangeGenerator:(id)generator recordGenerator:(id)recordGenerator;
- (void)sendResetToAllDelegatesWithRecordGenerator:(id)generator;
- (void)unloadDelegate:(id)delegate;
@end

@implementation PPRecordMonitoringHelper

- (void)unloadDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = self->_delegates;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__PPRecordMonitoringHelper_unloadDelegate___block_invoke;
  v9[3] = &unk_1E77F6EB0;
  v10 = v5;
  v11 = delegateCopy;
  v7 = delegateCopy;
  v8 = v5;
  dispatch_async(queue, v9);
}

- (id)_handleRecentChangesWithDelegates:(id)delegates changeGenerator:(id)generator recordGenerator:(id)recordGenerator
{
  generatorCopy = generator;
  recordGeneratorCopy = recordGenerator;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__PPRecordMonitoringHelper__handleRecentChangesWithDelegates_changeGenerator_recordGenerator___block_invoke;
  v14[3] = &unk_1E77F6AB8;
  v14[4] = self;
  v15 = generatorCopy;
  v16 = recordGeneratorCopy;
  v10 = recordGeneratorCopy;
  v11 = generatorCopy;
  v12 = [delegates _pas_filteredArrayWithTest:v14];

  return v12;
}

uint64_t __94__PPRecordMonitoringHelper__handleRecentChangesWithDelegates_changeGenerator_recordGenerator___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v3;
    _os_log_impl(&dword_1A7FD3000, v4, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: %@: calling recent record handler", buf, 0xCu);
  }

  v30 = 0;
  v5 = (*(*(a1 + 40) + 16))();
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 count];
    *buf = 138412546;
    v33 = v3;
    v34 = 2048;
    v35 = v7;
    _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: %@: handling %tu record changes", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v3 recentRecordLoadingHandler:*(*(&v26 + 1) + 8 * i)];
        if ((v13 - 3) >= 0xFFFFFFFE)
        {
          v16 = v13;
          v17 = pp_default_log_handle();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
          if (v16 == 2)
          {
            if (v18)
            {
              *buf = 138412290;
              v33 = v3;
              _os_log_debug_impl(&dword_1A7FD3000, v17, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: replied to handler with reset", buf, 0xCu);
            }

            v19 = *(a1 + 32);
            v20 = *(v19 + 16);
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __94__PPRecordMonitoringHelper__handleRecentChangesWithDelegates_changeGenerator_recordGenerator___block_invoke_16;
            v23[3] = &unk_1E77F6A68;
            v23[4] = v19;
            v24 = v3;
            v25 = *(a1 + 48);
            dispatch_async(v20, v23);
          }

          else
          {
            if (v18)
            {
              *buf = 138412290;
              v33 = v3;
              _os_log_debug_impl(&dword_1A7FD3000, v17, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: replied to handler with stop", buf, 0xCu);
            }

            [v3 recentRecordLoadingCompletion];
          }

          v15 = 0;
          goto LABEL_24;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = pp_default_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v33 = v3;
    _os_log_debug_impl(&dword_1A7FD3000, v14, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: done calling recentRecordLoadingHandlers", buf, 0xCu);
  }

  v15 = 1;
LABEL_24:

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_setupRecentChangesWithDelegates:(id)delegates recordGenerator:(id)generator
{
  generatorCopy = generator;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PPRecordMonitoringHelper__setupRecentChangesWithDelegates_recordGenerator___block_invoke;
  v10[3] = &unk_1E77F6A90;
  v10[4] = self;
  v11 = generatorCopy;
  v7 = generatorCopy;
  v8 = [delegates _pas_filteredArrayWithTest:v10];

  return v8;
}

BOOL __77__PPRecordMonitoringHelper__setupRecentChangesWithDelegates_recordGenerator___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_1A7FD3000, v4, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: %@: calling recent setup", buf, 0xCu);
  }

  v5 = [v3 recentRecordLoadingSetup];
  v6 = v5 - 3;
  if ((v5 - 3) >= 0xFFFFFFFE)
  {
    v7 = v5;
    v8 = pp_default_log_handle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v7 == 2)
    {
      if (v9)
      {
        *buf = 138412290;
        v18 = v3;
        _os_log_debug_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: replied to setup with reset", buf, 0xCu);
      }

      v10 = *(a1 + 32);
      v11 = *(v10 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __77__PPRecordMonitoringHelper__setupRecentChangesWithDelegates_recordGenerator___block_invoke_13;
      block[3] = &unk_1E77F6A68;
      block[4] = v10;
      v15 = v3;
      v16 = *(a1 + 40);
      dispatch_async(v11, block);
    }

    else
    {
      if (v9)
      {
        *buf = 138412290;
        v18 = v3;
        _os_log_debug_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: replied to setup with stop", buf, 0xCu);
      }

      [v3 recentRecordLoadingCompletion];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6 < 0xFFFFFFFE;
}

- (void)sendChangesToDelegatesWithChangeGenerator:(id)generator recordGenerator:(id)recordGenerator
{
  v33 = *MEMORY[0x1E69E9840];
  generatorCopy = generator;
  recordGeneratorCopy = recordGenerator;
  v21 = os_transaction_create();
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    *buf = 138412546;
    v30 = name;
    v31 = 2048;
    v32 = [allObjects count];
    _os_log_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: %@: sending changes to %tu delegates", buf, 0x16u);
  }

  v20 = allObjects;
  v11 = [(PPRecordMonitoringHelper *)self _setupRecentChangesWithDelegates:allObjects recordGenerator:recordGeneratorCopy];
  v22 = recordGeneratorCopy;
  v23 = generatorCopy;
  v12 = [(PPRecordMonitoringHelper *)self _handleRecentChangesWithDelegates:v11 changeGenerator:generatorCopy recordGenerator:recordGeneratorCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * v16);
        v18 = pp_default_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v17;
          _os_log_debug_impl(&dword_1A7FD3000, v18, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: calling recentRecordLoadingCompletion", buf, 0xCu);
        }

        [(NSString *)v17 recentRecordLoadingCompletion];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)resetWithDelegate:(id)delegate recentChangesInProgress:(BOOL)progress recordGenerator:(id)generator
{
  progressCopy = progress;
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  generatorCopy = generator;
  if (progressCopy)
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = delegateCopy;
      _os_log_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: %@: calling completion block in preparation for reset", &v13, 0xCu);
    }

    [delegateCopy recentRecordLoadingCompletion];
  }

  v11 = pp_default_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = delegateCopy;
    _os_log_impl(&dword_1A7FD3000, v11, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: %@: calling resetRecordData", &v13, 0xCu);
  }

  [delegateCopy resetRecordData];
  [(PPRecordMonitoringHelper *)self loadRecordsWithDelegate:delegateCopy recordGenerator:generatorCopy];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)sendResetToAllDelegatesWithRecordGenerator:(id)generator
{
  v23 = *MEMORY[0x1E69E9840];
  generatorCopy = generator;
  v15 = os_transaction_create();
  allObjects = [(NSHashTable *)self->_delegates allObjects];
  v6 = pp_default_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = [allObjects count];
    _os_log_impl(&dword_1A7FD3000, v6, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: sending reset to all %tu delegates", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = pp_default_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = v12;
          _os_log_debug_impl(&dword_1A7FD3000, v13, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: calling reset", buf, 0xCu);
        }

        [(PPRecordMonitoringHelper *)self resetWithDelegate:v12 recentChangesInProgress:0 recordGenerator:generatorCopy];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)handleChangeNotificationWithName:(id)name afterDelaySeconds:(double)seconds handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10 = MEMORY[0x1E69C5D10];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__PPRecordMonitoringHelper_handleChangeNotificationWithName_afterDelaySeconds_handler___block_invoke;
  v14[3] = &unk_1E77F6A68;
  v14[4] = self;
  v15 = nameCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = nameCopy;
  [v10 runAsyncOnQueue:queue afterDelaySeconds:v14 block:seconds];
}

uint64_t __87__PPRecordMonitoringHelper_handleChangeNotificationWithName_afterDelaySeconds_handler___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = *(a1[4] + 8);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: %@: handleChangeNotification for %@", &v7, 0x16u);
  }

  result = (*(a1[6] + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)loadRecordsWithDelegate:(id)delegate recordGenerator:(id)generator
{
  v30 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  generatorCopy = generator;
  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = delegateCopy;
    _os_log_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: %@: loading records", buf, 0xCu);
  }

  v8 = os_transaction_create();
  v9 = pp_default_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v29 = delegateCopy;
    _os_log_debug_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: calling recordLoadingSetup", buf, 0xCu);
  }

  recordLoadingSetup = [delegateCopy recordLoadingSetup];
  v11 = pp_default_log_handle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (recordLoadingSetup == 1)
  {
    if (v12)
    {
      *buf = 138412290;
      v29 = delegateCopy;
      _os_log_debug_impl(&dword_1A7FD3000, v11, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: replied stop to setup, going to call completion", buf, 0xCu);
    }

    [delegateCopy recordLoadingCompletion];
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      v29 = delegateCopy;
      _os_log_debug_impl(&dword_1A7FD3000, v11, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: calling recordGenerator", buf, 0xCu);
    }

    generatorCopy[2](generatorCopy, delegateCopy);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v26 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          if ([delegateCopy recordLoadingHandler:{v18, v23}] == 1)
          {
            v20 = pp_default_log_handle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v29 = delegateCopy;
              _os_log_debug_impl(&dword_1A7FD3000, v20, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: replied stop to record handler", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v19);
            goto LABEL_23;
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

    v21 = pp_default_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = delegateCopy;
      _os_log_debug_impl(&dword_1A7FD3000, v21, OS_LOG_TYPE_DEBUG, "PPRecordMonitoringHelper: %@: calling recordLoadingCompletion", buf, 0xCu);
    }

    [delegateCopy recordLoadingCompletion];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)loadRecordsAndMonitorChangesWithDelegate:(id)delegate recordGenerator:(id)generator notificationRegistrationBlock:(id)block
{
  delegateCopy = delegate;
  generatorCopy = generator;
  blockCopy = block;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__PPRecordMonitoringHelper_loadRecordsAndMonitorChangesWithDelegate_recordGenerator_notificationRegistrationBlock___block_invoke;
  v16[3] = &unk_1E77F6A40;
  v17 = delegateCopy;
  selfCopy = self;
  v19 = generatorCopy;
  v12 = generatorCopy;
  v13 = delegateCopy;
  objc_copyWeak(&v21, &location);
  v20 = blockCopy;
  v14 = blockCopy;
  dispatch_async(queue, v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
  return 1;
}

void __115__PPRecordMonitoringHelper_loadRecordsAndMonitorChangesWithDelegate_recordGenerator_notificationRegistrationBlock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = pp_default_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1A7FD3000, v2, OS_LOG_TYPE_DEFAULT, "PPRecordMonitoringHelper: %@: loadRecordsAndMonitorChangesWithDelegate", &v8, 0xCu);
  }

  [*(a1 + 40) loadRecordsWithDelegate:*(a1 + 32) recordGenerator:*(a1 + 48)];
  [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained && (WeakRetained[32] & 1) == 0)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))();
    }

    v5[32] = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (PPRecordMonitoringHelper)initWithName:(id)name
{
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = PPRecordMonitoringHelper;
  v6 = [(PPRecordMonitoringHelper *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v8 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    delegates = v7->_delegates;
    v7->_delegates = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_BACKGROUND, 0);

    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.proactive.PersonalizationPortrait.monitorHelper.%@", v7->_name];
    v13 = dispatch_queue_create([v12 UTF8String], v11);
    queue = v7->_queue;
    v7->_queue = v13;

    v7->_hasRegistered = 0;
  }

  return v7;
}

@end