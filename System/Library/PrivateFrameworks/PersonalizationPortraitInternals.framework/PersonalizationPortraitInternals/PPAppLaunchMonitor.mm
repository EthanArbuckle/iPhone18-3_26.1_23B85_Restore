@interface PPAppLaunchMonitor
+ (id)sharedInstance;
- (id)_init;
- (id)registerForAppLaunchWithBundleId:(id)id queue:(id)queue handler:(id)handler;
- (void)deregisterForAppLaunchWithToken:(id)token;
@end

@implementation PPAppLaunchMonitor

- (void)deregisterForAppLaunchWithToken:(id)token
{
  tokenCopy = token;
  v5 = tokenCopy;
  if (tokenCopy)
  {
    lock = self->_lock;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__PPAppLaunchMonitor_deregisterForAppLaunchWithToken___block_invoke;
    v7[3] = &unk_2789747A0;
    v8 = tokenCopy;
    [(_PASLock *)lock runWithLockAcquired:v7];
  }
}

void __54__PPAppLaunchMonitor_deregisterForAppLaunchWithToken___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v7 = v2;
    v8 = v3;
    v4 = *(a2 + 8);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__PPAppLaunchMonitor_deregisterForAppLaunchWithToken___block_invoke_2;
    v5[3] = &unk_278974778;
    v6 = *(a1 + 32);
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void __54__PPAppLaunchMonitor_deregisterForAppLaunchWithToken___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CCAC30];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__PPAppLaunchMonitor_deregisterForAppLaunchWithToken___block_invoke_3;
  v7[3] = &unk_278974750;
  v8 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 predicateWithBlock:v7];
  [v5 filterUsingPredicate:v6];
}

uint64_t __54__PPAppLaunchMonitor_deregisterForAppLaunchWithToken___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  return [v2 isEqual:*(a1 + 32)] ^ 1;
}

- (id)registerForAppLaunchWithBundleId:(id)id queue:(id)queue handler:(id)handler
{
  idCopy = id;
  queueCopy = queue;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (idCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPAppLaunchMonitor.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPAppLaunchMonitor.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_3:
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10991;
  v30 = __Block_byref_object_dispose__10992;
  v31 = 0;
  lock = self->_lock;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__PPAppLaunchMonitor_registerForAppLaunchWithBundleId_queue_handler___block_invoke;
  v21[3] = &unk_278974728;
  v21[4] = self;
  v14 = queueCopy;
  v22 = v14;
  v15 = v12;
  v24 = v15;
  v16 = idCopy;
  v23 = v16;
  v25 = &v26;
  [(_PASLock *)lock runWithLockAcquired:v21];
  v17 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __69__PPAppLaunchMonitor_registerForAppLaunchWithBundleId_queue_handler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = v3;
  v32 = v5;
  if (v4 && (*(v5 + 24) & 1) == 0)
  {
    v6 = objc_opt_new();
    v7 = *(v32 + 1);
    *(v32 + 1) = v6;

    *(v32 + 2) = 1;
    *(v32 + 24) = 1;
    v8 = [MEMORY[0x277CFE318] userContext];
    v9 = *(v32 + 4);
    *(v32 + 4) = v8;

    v10 = [MEMORY[0x277CFE338] keyPathForAppDataDictionary];
    v11 = [MEMORY[0x277CFE360] predicateForChangeAtKeyPath:v10];
    aBlock.receiver = MEMORY[0x277D85DD0];
    aBlock.super_class = 3221225472;
    v34 = __68__PPAppLaunchMonitor__registerForAppChangesIfNeededWithGuardedData___block_invoke;
    v35 = &unk_2789747C8;
    v36 = v32;
    v37 = v10;
    v38 = v4;
    v12 = v10;
    v13 = _Block_copy(&aBlock);
    v14 = [MEMORY[0x277CFE350] localNonWakingRegistrationWithIdentifier:@"com.apple.proactive.PersonalizationPortrait.AppLaunch" contextualPredicate:v11 clientIdentifier:@"com.apple.proactive.PersonalizationPortrait" callback:v13];
    [*(v32 + 4) registerCallback:v14];
  }

  v15 = MEMORY[0x277CCABB0];
  ++*(v32 + 2);
  v16 = [v15 numberWithUnsignedInteger:?];
  v17 = [PPAppLaunchMonitorRegistrationContext alloc];
  v18 = a1[5];
  v19 = a1[7];
  v20 = v16;
  v21 = v18;
  v22 = v19;
  v23 = v22;
  if (v17)
  {
    if (v20)
    {
      if (v22)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v30 = [MEMORY[0x277CCA890] currentHandler];
      [v30 handleFailureInMethod:sel_initWithToken_queue_handler_ object:v17 file:@"PPAppLaunchMonitor.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"token != nil"}];

      if (v23)
      {
        goto LABEL_7;
      }
    }

    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:sel_initWithToken_queue_handler_ object:v17 file:@"PPAppLaunchMonitor.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"handler"}];

LABEL_7:
    aBlock.receiver = v17;
    aBlock.super_class = PPAppLaunchMonitorRegistrationContext;
    v24 = objc_msgSendSuper2(&aBlock, sel_init);
    v17 = v24;
    if (v24)
    {
      objc_storeStrong(&v24->_token, v16);
      objc_storeStrong(&v17->_queue, v18);
      v25 = _Block_copy(v23);
      handler = v17->_handler;
      v17->_handler = v25;
    }
  }

  v27 = [*(v32 + 1) objectForKeyedSubscript:a1[6]];
  if (!v27)
  {
    v27 = objc_opt_new();
  }

  [v27 addObject:v17];
  [*(v32 + 1) setObject:v27 forKeyedSubscript:a1[6]];
  v28 = *(a1[8] + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v20;
}

void __68__PPAppLaunchMonitor__registerForAppChangesIfNeededWithGuardedData___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v5 = [MEMORY[0x277CFE338] appBundleIdKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v27 = v3;
    v28 = 2112;
    v29 = v6;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "_CDContextualChangeHandler called: %@ %@", buf, 0x16u);
  }

  v17 = a1;
  [*(*(a1 + 32) + 8) objectForKeyedSubscript:v6];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (!v12 || (v13 = *(v12 + 16), (v14 = v13) == 0))
        {
          v13 = 0;
          v14 = *(*(v17 + 48) + 16);
        }

        v15 = v14;

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__PPAppLaunchMonitor__registerForAppChangesIfNeededWithGuardedData___block_invoke_124;
        block[3] = &unk_2789797E0;
        block[4] = v12;
        v20 = v6;
        dispatch_async(v15, block);
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __68__PPAppLaunchMonitor__registerForAppChangesIfNeededWithGuardedData___block_invoke_124(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = *(v1 + 24);
  }

  return (*(v1 + 16))(v1, *(a1 + 40));
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = PPAppLaunchMonitor;
  v2 = [(PPAppLaunchMonitor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    v7 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.PersonalizationPortrait.appLaunchMonitorQueue" qosClass:17];
    contextHandlerQueue = v2->_contextHandlerQueue;
    v2->_contextHandlerQueue = v7;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PPAppLaunchMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken2_11028 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_11028, block);
  }

  v2 = sharedInstance__pasExprOnceResult_11029;

  return v2;
}

void __36__PPAppLaunchMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(*(a1 + 32)) _init];
  v4 = sharedInstance__pasExprOnceResult_11029;
  sharedInstance__pasExprOnceResult_11029 = v3;

  objc_autoreleasePoolPop(v2);
}

@end