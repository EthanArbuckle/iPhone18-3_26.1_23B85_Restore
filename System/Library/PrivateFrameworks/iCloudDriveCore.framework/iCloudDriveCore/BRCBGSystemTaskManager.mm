@interface BRCBGSystemTaskManager
+ (id)_prepareBGSystemTaskIdentifierWithBaseName:(id)name personaIdentifier:(id)identifier;
+ (id)sharedManager;
- (BOOL)unregisterTaskWithIdentifier:(id)identifier;
- (id)_init;
- (void)_cancelSyncTasks:(id)tasks scheduler:(id)scheduler;
- (void)completeTask:(id)task;
- (void)expireTask:(id)task;
- (void)garbageCollectAllDanglingSyncTasks;
- (void)submitBGSystemTaskWithIdentifier:(id)identifier configuration:(id)configuration block:(id)block;
- (void)unregisterAllTasks;
@end

@implementation BRCBGSystemTaskManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[BRCBGSystemTaskManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __39__BRCBGSystemTaskManager_sharedManager__block_invoke()
{
  sharedManager_manager = [[BRCBGSystemTaskManager alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = BRCBGSystemTaskManager;
  v2 = [(BRCBGSystemTaskManager *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    personaToTaskIdentifiersMap = v2->_personaToTaskIdentifiersMap;
    v2->_personaToTaskIdentifiersMap = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.bird.bgst.manager", v5);

    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

+ (id)_prepareBGSystemTaskIdentifierWithBaseName:(id)name personaIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"__defaultPersonaID__"])
  {
    identifierCopy = nameCopy;
  }

  else
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", nameCopy, identifierCopy];
  }

  v8 = identifierCopy;

  return v8;
}

- (void)_cancelSyncTasks:(id)tasks scheduler:(id)scheduler
{
  v34 = *MEMORY[0x277D85DE8];
  tasksCopy = tasks;
  schedulerCopy = scheduler;
  v20 = xpc_dictionary_create(0, 0, 0);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = tasksCopy;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v26;
    *&v8 = 138412546;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        identifier = [v12 identifier];
        if ([identifier containsString:@"com.apple.bird.bgst."])
        {
          v14 = brc_bread_crumbs();
          v15 = brc_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            identifier2 = [v12 identifier];
            *buf = v19;
            v30 = identifier2;
            v31 = 2112;
            v32 = v14;
            _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Unregistering task with ID: %@%@", buf, 0x16u);
          }

          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __53__BRCBGSystemTaskManager__cancelSyncTasks_scheduler___block_invoke;
          v22[3] = &unk_278501118;
          v16 = schedulerCopy;
          v23 = v16;
          v24 = identifier;
          [v16 submitTaskRequestWithIdentifier:v24 descriptor:v20 completionHandler:v22];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __53__BRCBGSystemTaskManager__cancelSyncTasks_scheduler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelTaskRequestWithIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 unregisterSystemTaskWithIdentifier:v3 completionHandler:&__block_literal_global_30];
}

- (void)garbageCollectAllDanglingSyncTasks
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Going to list all the submitted tasks from DAS and unregister old tasks from last bird run%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)submitBGSystemTaskWithIdentifier:(id)identifier configuration:(id)configuration block:(id)block
{
  v31[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  blockCopy = block;
  v10 = MEMORY[0x277D77BF8];
  identifierCopy = identifier;
  sharedManager = [v10 sharedManager];
  br_currentPersonaID = [sharedManager br_currentPersonaID];

  v14 = [objc_opt_class() _prepareBGSystemTaskIdentifierWithBaseName:identifierCopy personaIdentifier:br_currentPersonaID];

  if ([v14 length] >= 0x81)
  {
    [BRCBGSystemTaskManager submitBGSystemTaskWithIdentifier:configuration:block:];
  }

  v15 = [MEMORY[0x277CF0800] br_taskRequestWithIdentifier:v14 configuration:configurationCopy];
  v31[0] = *MEMORY[0x277CFAC00];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v15 setRelatedApplications:v16];

  [v15 setRateLimitConfigurationName:@"BirdConfiguration"];
  queue = self->_queue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke;
  v24[3] = &unk_2785011B8;
  v25 = v14;
  selfCopy = self;
  v27 = br_currentPersonaID;
  v28 = v15;
  v29 = configurationCopy;
  v30 = blockCopy;
  v18 = configurationCopy;
  v19 = v15;
  v20 = blockCopy;
  v21 = br_currentPersonaID;
  v22 = v14;
  dispatch_async(queue, v24);

  v23 = *MEMORY[0x277D85DE8];
}

void __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF0810] sharedScheduler];
  [v2 deregisterTaskWithIdentifier:*(a1 + 32)];

  objc_initWeak(&location, *(a1 + 40));
  v3 = [MEMORY[0x277CF0810] sharedScheduler];
  v4 = *(a1 + 32);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_2;
  v24[3] = &unk_278501190;
  objc_copyWeak(&v28, &location);
  v25 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = *(a1 + 72);
  [v3 registerForTaskWithIdentifier:v4 usingQueue:0 launchHandler:v24];

  v5 = [MEMORY[0x277CF0810] sharedScheduler];
  v6 = *(a1 + 56);
  v23 = 0;
  v7 = [v5 submitTaskRequest:v6 error:&v23];
  v8 = v23;

  if (v7)
  {
    v9 = *(a1 + 40);
    objc_sync_enter(v9);
    v10 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:*(a1 + 48)];
    if (!v10)
    {
      v10 = objc_opt_new();
      [*(*(a1 + 40) + 8) setObject:v10 forKeyedSubscript:*(a1 + 48)];
    }

    [v10 addObject:*(a1 + 32)];

    objc_sync_exit(v9);
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 56);
      v14 = *(a1 + 32);
      *buf = 138412802;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      v34 = 2112;
      v35 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Submitted task %@ with task identifier %@%@", buf, 0x20u);
    }

LABEL_14:

    goto LABEL_15;
  }

  v15 = [v8 domain];
  v16 = [v15 isEqualToString:*MEMORY[0x277CF07B8]];

  if (!v16)
  {
    goto LABEL_12;
  }

  if ([v8 code] == 4)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 64);
      *buf = 138412802;
      v31 = v21;
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = v17;
      _os_log_fault_impl(&dword_223E7A000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: We have a bad criteria for %@ - config %@%@", buf, 0x20u);
    }
  }

  if ([v8 code] != 5)
  {
LABEL_12:
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      v20 = *(a1 + 32);
      *buf = 138412802;
      v31 = v20;
      v32 = 2112;
      v33 = v8;
      v34 = 2112;
      v35 = v11;
      _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] Failed to submit %@ BGST - %@%@", buf, 0x20u);
    }

    goto LABEL_14;
  }

LABEL_15:

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
  v19 = *MEMORY[0x277D85DE8];
}

void __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    objc_initWeak(&location, v3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_3;
    v9[3] = &unk_278501140;
    objc_copyWeak(&v12, &location);
    v9[4] = WeakRetained;
    v10 = a1[4];
    v11 = a1[5];
    [v3 setExpirationHandler:v9];
    if ([v3 state] != 3)
    {
      v5 = a1[4];
      v6 = v3;
      v7 = a1[5];
      v8 = a1[6];
      BRPerformWithPersonaAndError();
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    [v3 setTaskCompleted];
  }
}

void __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  [v4 removeObject:*(a1 + 48)];

  objc_sync_exit(v3);
  v5 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_4;
  v7[3] = &unk_2784FF478;
  v8 = WeakRetained;
  v9 = *(a1 + 48);
  v6 = WeakRetained;
  dispatch_async(v5, v7);
}

void __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [v2 setTaskExpiredWithRetryAfter:&v9 error:0.0];
  v4 = v9;
  if ((v3 & 1) == 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v8 = *(a1 + 40);
      *buf = 138412802;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] Error setting task expired %@ : %@%@", buf, 0x20u);
    }

    [*(a1 + 32) setTaskCompleted];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_36(uint64_t a1, uint64_t a2)
{
  v4 = [[BRCBGSystemTask alloc] initWithBGSystemTask:*(a1 + 32)];
  if (a2)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_36_cold_1(a1);
    }

    [*(a1 + 48) completeTask:v4];
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_36_cold_2(a1);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)completeTask:(id)task
{
  taskCopy = task;
  [taskCopy completeTask];
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_personaToTaskIdentifiersMap objectForKeyedSubscript:br_currentPersonaID];
  taskIdentifier = [taskCopy taskIdentifier];
  [v8 removeObject:taskIdentifier];

  objc_sync_exit(selfCopy);
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCBGSystemTaskManager completeTask:taskCopy];
  }
}

- (void)expireTask:(id)task
{
  taskCopy = task;
  if (([taskCopy expireTask] & 1) == 0)
  {
    [(BRCBGSystemTaskManager *)self completeTask:taskCopy];
  }
}

- (BOOL)unregisterTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];

  v7 = [objc_opt_class() _prepareBGSystemTaskIdentifierWithBaseName:identifierCopy personaIdentifier:br_currentPersonaID];
  mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
  v9 = [mEMORY[0x277CF0810] deregisterTaskWithIdentifier:v7];

  if (v9)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [(NSMutableDictionary *)selfCopy->_personaToTaskIdentifiersMap objectForKeyedSubscript:br_currentPersonaID];
    [v11 removeObject:v7];

    objc_sync_exit(selfCopy);
  }

  return v9;
}

- (void)unregisterAllTasks
{
  v9 = *MEMORY[0x277D85DE8];
  [self count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Unregistering %lu submitted tasks%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)submitBGSystemTaskWithIdentifier:configuration:block:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: taskIdentifier.length <= MAX_IDENTIFIER_LENGTH%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_36_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(&dword_223E7A000, v2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't adopt persona for BGST %@%@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __79__BRCBGSystemTaskManager_submitBGSystemTaskWithIdentifier_configuration_block___block_invoke_36_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_223E7A000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] Running the block for BGST with identifier %@%@", v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)completeTask:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 taskIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Completed running BGSystemTask %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end