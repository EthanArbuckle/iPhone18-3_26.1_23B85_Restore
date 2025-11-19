@interface SUCoreXPCActivityManager
+ (id)sharedInstance;
- (BOOL)_isActivityTrackedButUnsheduledInternal:(id)a3;
- (BOOL)addActivityInfoToPersistedState:(id)a3;
- (BOOL)isActivityScheduled:(id)a3;
- (BOOL)isActivityScheduledInternal:(id)a3;
- (BOOL)isActivityTrackedButUnsheduled:(id)a3;
- (BOOL)removeActivityFromPersistedState:(id)a3;
- (SUCoreXPCActivityManager)initWithNameAndPersistedStateFilePath:(id)a3 persistedStateFilePath:(id)a4;
- (id)_getActivityForNameInternal:(id)a3;
- (id)copyOptionsForActivity:(id)a3;
- (id)description;
- (id)getActivityForName:(id)a3;
- (id)getExpectedRunDateForActivity:(id)a3;
- (int)scheduleActivity:(id)a3;
- (int)unscheduleActivity:(id)a3;
- (void)eventHandler:(id)a3;
@end

@implementation SUCoreXPCActivityManager

- (void)eventHandler:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v5 = xpc_activity_copy_identifier();
  if (v5)
  {
    v6 = [(SUCoreXPCActivityManager *)self managerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SUCoreXPCActivityManager_eventHandler___block_invoke;
    block[3] = &unk_27892D570;
    block[4] = self;
    block[5] = &v17;
    block[6] = v5;
    dispatch_sync(v6, block);

    if (v18[5])
    {
      v7 = [(SUCoreXPCActivityManager *)self activityQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __41__SUCoreXPCActivityManager_eventHandler___block_invoke_49;
      v13[3] = &unk_27892C8D0;
      v15 = &v17;
      v14 = v4;
      dispatch_sync(v7, v13);

      v8 = v14;
    }

    else
    {
      v11 = [(SUCoreXPCActivityManager *)self logger];
      v8 = [v11 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v24 = v5;
        _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "No registered activity found for event %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = [(SUCoreXPCActivityManager *)self logger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "Event handler failed to copy identifier for event. Not invoking any callbacks", buf, 2u);
    }
  }

  _Block_object_dispose(&v17, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void __41__SUCoreXPCActivityManager_eventHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) activities];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 activityName];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 48)];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v11 = [*(a1 + 32) logger];
          v12 = [v11 oslog];

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v7 activityName];
            *buf = 138412290;
            v23 = v13;
            _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "Invoking activity handler for %@", buf, 0xCu);
          }

          v14 = [v7 handler];
          v15 = *(*(a1 + 40) + 8);
          v16 = *(v15 + 40);
          *(v15 + 40) = v14;

          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SUCoreXPCActivityManager sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

void __42__SUCoreXPCActivityManager_sharedInstance__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = [v1 componentsSeparatedByString:@"."];
    v3 = [v2 lastObject];

    if (!v3 || (v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.SUCoreXPCActivity.state", @"/var/mobile/Library/SoftwareUpdateCore/", v3]) == 0)
    {
      v5 = [MEMORY[0x277D64460] sharedLogger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __42__SUCoreXPCActivityManager_sharedInstance__block_invoke_cold_1(v6);
      }

      v4 = v1;
    }

    v7 = v4;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 executablePath];

    if (v9 && ([v9 componentsSeparatedByString:@"/"], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "lastObject"), v3 = objc_claimAutoreleasedReturnValue(), v10, v3))
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.SUCoreXPCActivity.state", @"/var/mobile/Library/SoftwareUpdateCore/", v3];

      if (v7)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v3 = 0;
    }

    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", @"/var/mobile/Library/SoftwareUpdateCore/", @"SUCoreXPCActivitySchedulerDefaultSharedState.state"];
    v11 = [MEMORY[0x277D64428] sharedDiag];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create a file path from bundleIdentifier, falling back to the default of %@", v7];
    [v11 trackAnomaly:@"SUCoreXPCActivityScheduler" forReason:v12 withResult:8116 withError:0];
  }

LABEL_14:
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.sucoreXPCActivityScheduler.%@", v3];
  v14 = [[SUCoreXPCActivityManager alloc] initWithNameAndPersistedStateFilePath:v13 persistedStateFilePath:v7];
  v15 = sharedInstance___instance_0;
  sharedInstance___instance_0 = v14;

  v16 = [MEMORY[0x277D64460] sharedLogger];
  v17 = [v16 oslog];

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __42__SUCoreXPCActivityManager_sharedInstance__block_invoke_cold_2(v13, v7, v17);
  }
}

- (SUCoreXPCActivityManager)initWithNameAndPersistedStateFilePath:(id)a3 persistedStateFilePath:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v40 = a4;
  v55.receiver = self;
  v55.super_class = SUCoreXPCActivityManager;
  v7 = [(SUCoreXPCActivityManager *)&v55 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_managerName, a3);
    v9 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUCoreXPCActivityManager"];
    [(SUCoreXPCActivityManager *)v8 setLogger:v9];

    memset(v73, 0, sizeof(v73));
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    *label = 0u;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%@", "com.apple.sucore.sucoreactivitymanagerqueue", v41];
    [v10 getCString:label maxLength:254 encoding:4];
    v11 = dispatch_queue_create(label, 0);
    managerQueue = v8->_managerQueue;
    v8->_managerQueue = v11;

    memset(v73, 0, sizeof(v73));
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    *label = 0u;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%@", "com.apple.sucorexpcactivitymanager.persistedStateQueue", v41];

    [v13 getCString:label maxLength:254 encoding:4];
    v14 = dispatch_queue_create(label, 0);
    persistedStateDispatchQueue = v8->_persistedStateDispatchQueue;
    v8->_persistedStateDispatchQueue = v14;

    memset(v73, 0, sizeof(v73));
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    *label = 0u;
    v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%@", "com.apple.sucorexpcactivitymanager.activityQueue", v41];

    [v39 getCString:label maxLength:254 encoding:4];
    v16 = dispatch_queue_create(label, 0);
    activityQueue = v8->_activityQueue;
    v8->_activityQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activities = v8->_activities;
    v8->_activities = v18;

    v20 = [objc_alloc(MEMORY[0x277D64478]) initWithDispatchQueue:v8->_persistedStateDispatchQueue withPersistencePath:v40 forPolicyVersion:@"1.0"];
    persistedState = v8->_persistedState;
    v8->_persistedState = v20;

    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__90;
    v53 = __Block_byref_object_dispose__91;
    v54 = 0;
    v22 = [(SUCoreXPCActivityManager *)v8 persistedStateDispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__SUCoreXPCActivityManager_initWithNameAndPersistedStateFilePath_persistedStateFilePath___block_invoke;
    block[3] = &unk_27892C880;
    v23 = v8;
    v47 = v23;
    v48 = &v49;
    dispatch_sync(v22, block);

    if (v50[5])
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v24 = v50[5];
      v25 = [v24 countByEnumeratingWithState:&v42 objects:v58 count:16];
      if (v25)
      {
        v26 = *v43;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v43 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v42 + 1) + 8 * i);
            v29 = [v23[2] oslog];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v57 = v28;
              _os_log_impl(&dword_23193C000, v29, OS_LOG_TYPE_DEFAULT, "Found perisistedActivity %@. Unregistering from XPC", buf, 0xCu);
            }

            v30 = objc_alloc_init(SUCoreXPCActivity);
            v31 = [(SUCorePersistedState *)v28 activityOptions];
            [(SUCoreXPCActivity *)v30 setActivityOptions:v31];

            v32 = [(SUCorePersistedState *)v28 activityName];
            [(SUCoreXPCActivity *)v30 setActivityName:v32];

            [(SUCoreXPCActivity *)v30 setHandler:0];
            [(SUCoreXPCActivity *)v30 setIsRegisteredWithXPC:0];
            bzero(buf, 0x400uLL);
            v33 = [(SUCorePersistedState *)v28 activityName];
            [v33 getCString:buf maxLength:1023 encoding:4];

            xpc_activity_unregister(buf);
            [(NSMutableArray *)v8->_activities addObject:v30];
          }

          v25 = [v24 countByEnumeratingWithState:&v42 objects:v58 count:16];
        }

        while (v25);
      }
    }

    v34 = [v23 logger];
    v35 = [v34 oslog];

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v8->_persistedState;
      *buf = 138412290;
      v57 = v36;
      _os_log_impl(&dword_23193C000, v35, OS_LOG_TYPE_DEFAULT, "Loaded persisted State: %@", buf, 0xCu);
    }

    _Block_object_dispose(&v49, 8);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v8;
}

void __89__SUCoreXPCActivityManager_initWithNameAndPersistedStateFilePath_persistedStateFilePath___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) loadPersistedState];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v13 = [v2 initWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v10 = [*(*(a1 + 32) + 56) secureCodedObjectForKey:@"ActivityArray" ofClass:objc_opt_class() encodeClasses:v13];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (BOOL)_isActivityTrackedButUnsheduledInternal:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  dispatch_assert_queue_V2(v5);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_activities;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = MEMORY[0x277D643F8];
        v14 = [v12 activityName];
        if ([v13 stringIsEqual:v14 to:v4])
        {
          v15 = [v12 isRegisteredWithXPC];

          v9 |= v15 ^ 1;
        }

        else
        {
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)isActivityTrackedButUnsheduled:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SUCoreXPCActivityManager_isActivityTrackedButUnsheduled___block_invoke;
  block[3] = &unk_27892D598;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __59__SUCoreXPCActivityManager_isActivityTrackedButUnsheduled___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isActivityTrackedButUnsheduledInternal:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)isActivityScheduledInternal:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  dispatch_assert_queue_V2(v5);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_activities;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 activityName];
        if ([v13 isEqualToString:v4])
        {
          v14 = [v12 isRegisteredWithXPC];

          v9 |= v14;
        }

        else
        {
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)isActivityScheduled:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUCoreXPCActivityManager_isActivityScheduled___block_invoke;
  block[3] = &unk_27892D598;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __48__SUCoreXPCActivityManager_isActivityScheduled___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isActivityScheduledInternal:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)addActivityInfoToPersistedState:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  dispatch_assert_queue_V2(v5);

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__90;
  v33[4] = __Block_byref_object_dispose__91;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__90;
  v31 = __Block_byref_object_dispose__91;
  v32 = 0;
  v6 = objc_alloc_init(SUCorePersistedActivity);
  v7 = [v4 activityOptions];
  [(SUCorePersistedActivity *)v6 setActivityOptions:v7];

  v8 = [v4 activityName];
  [(SUCorePersistedActivity *)v6 setActivityName:v8];

  v9 = [(SUCoreXPCActivityManager *)self persistedStateDispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SUCoreXPCActivityManager_addActivityInfoToPersistedState___block_invoke;
  block[3] = &unk_27892D5C0;
  block[4] = self;
  block[5] = v33;
  block[6] = &v27;
  dispatch_sync(v9, block);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v28[5];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v39 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if ([v15 isEqual:v6])
        {
          v16 = v15;

          v12 = v16;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v39 count:16];
    }

    while (v11);

    if (v12)
    {
      [v28[5] removeObject:v12];
    }
  }

  else
  {

    v12 = 0;
  }

  [v28[5] addObject:v6];
  v17 = [(SUCoreXPCActivityManager *)self persistedStateDispatchQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__SUCoreXPCActivityManager_addActivityInfoToPersistedState___block_invoke_2;
  v21[3] = &unk_27892D5E8;
  v21[4] = self;
  v21[5] = &v27;
  v21[6] = &v35;
  dispatch_sync(v17, v21);

  v18 = *(v36 + 24);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __60__SUCoreXPCActivityManager_addActivityInfoToPersistedState___block_invoke(void *a1)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v10 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = [*(a1[4] + 56) secureCodedObjectForKey:@"ActivityArray" ofClass:objc_opt_class() encodeClasses:v10];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(a1[5] + 8) + 40) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [*(*(a1[5] + 8) + 40) mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t __60__SUCoreXPCActivityManager_addActivityInfoToPersistedState___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 56) persistSecureCodedObject:*(*(a1[5] + 8) + 40) forKey:@"ActivityArray" shouldPersist:1];
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

- (BOOL)removeActivityFromPersistedState:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  dispatch_assert_queue_V2(v5);

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__90;
  v13[4] = __Block_byref_object_dispose__91;
  v14 = 0;
  v6 = [(SUCoreXPCActivityManager *)self persistedStateDispatchQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SUCoreXPCActivityManager_removeActivityFromPersistedState___block_invoke;
  v9[3] = &unk_27892D610;
  v11 = v13;
  v12 = &v15;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_sync(v6, v9);

  LOBYTE(v4) = *(v16 + 24);
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(&v15, 8);
  return v4;
}

void __61__SUCoreXPCActivityManager_removeActivityFromPersistedState___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [*(*(a1 + 32) + 56) secureCodedObjectForKey:@"ActivityArray" ofClass:objc_opt_class() encodeClasses:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 48) + 8) + 40) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = objc_alloc_init(SUCorePersistedActivity);
    v9 = [*(a1 + 40) activityOptions];
    [(SUCorePersistedActivity *)v8 setActivityOptions:v9];

    v10 = [*(a1 + 40) activityName];
    [(SUCorePersistedActivity *)v8 setActivityName:v10];

    v11 = [*(*(*(a1 + 48) + 8) + 40) mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          if ([v18 isEqual:v8])
          {
            v19 = v18;

            v15 = v19;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    [v12 removeObject:v15];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v20 = [*(a1 + 32) logger];
    v21 = [v20 oslog];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v21, OS_LOG_TYPE_DEFAULT, "No persisted activities found", buf, 2u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (int)scheduleActivity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 3;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUCoreXPCActivityManager_scheduleActivity___block_invoke;
  block[3] = &unk_27892D520;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  LODWORD(v4) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v4;
}

void __45__SUCoreXPCActivityManager_scheduleActivity___block_invoke(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([*(a1 + 32) handler], (v3 = objc_claimAutoreleasedReturnValue()) == 0) || (v4 = v3, objc_msgSend(*(a1 + 32), "activityName"), v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v13 = [*(a1 + 40) logger];
    v14 = [v13 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = @"OK";
      }

      else
      {
        v16 = @"Invalid";
      }

      v17 = [*(a1 + 32) handler];
      if (v17)
      {
        v18 = @"OK";
      }

      else
      {
        v18 = @"Invalid";
      }

      v19 = [*(a1 + 32) activityName];
      *buf = 138412802;
      if (v19)
      {
        v20 = @"OK";
      }

      else
      {
        v20 = @"Invalid";
      }

      v74 = v16;
      v75 = 2112;
      v76 = v18;
      v77 = 2112;
      v78 = v20;
      _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "The activity object passed to scheduleActivity is invalid : Class : %@ Handler: %@ Name: %@", buf, 0x20u);
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = 4;
    goto LABEL_20;
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) activityName];
  LODWORD(v6) = [v6 isActivityScheduledInternal:v7];

  if (v6)
  {
    v8 = [*(a1 + 40) logger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) activityName];
      *buf = 138412290;
      v74 = v10;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "The activity named %@ is already scheduled", buf, 0xCu);
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = 5;
LABEL_20:
    *(v11 + 24) = v12;
    goto LABEL_21;
  }

  v22 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v22, *MEMORY[0x277D86270], 0);
  v23 = [*(a1 + 32) activityOptions];
  v24 = [v23 priority];
  v25 = MEMORY[0x277D86340];
  if (!v24)
  {

    goto LABEL_26;
  }

  v26 = [*(a1 + 32) activityOptions];
  v27 = [v26 priority];

  if (v27 == 2)
  {
LABEL_26:
    xpc_dictionary_set_string(v22, *v25, *MEMORY[0x277D86350]);
  }

  v28 = [*(a1 + 32) activityOptions];
  v29 = [v28 priority];

  if (v29 == 1)
  {
    xpc_dictionary_set_string(v22, *v25, *MEMORY[0x277D86348]);
  }

  v30 = [*(a1 + 32) activityOptions];
  v31 = [v30 batteryLevelGreaterThan];
  if (v31)
  {
    v32 = v31;
    v33 = [*(a1 + 32) activityOptions];
    v34 = [v33 batteryLevelGreaterThan];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_33;
    }

    v36 = *MEMORY[0x277D86388];
    v30 = [*(a1 + 32) activityOptions];
    v37 = [v30 batteryLevelGreaterThan];
    xpc_dictionary_set_int64(v22, v36, [v37 integerValue]);
  }

LABEL_33:
  v38 = [*(a1 + 32) activityOptions];
  v39 = [v38 plugInState];

  if (v39)
  {
    v40 = [*(a1 + 32) activityOptions];
    v41 = [v40 plugInState] != 2;

    xpc_dictionary_set_BOOL(v22, *MEMORY[0x277D86230], v41);
  }

  v42 = [*(a1 + 32) activityOptions];
  v43 = [v42 networkState];

  if (v43)
  {
    v44 = [*(a1 + 32) activityOptions];
    v45 = [v44 networkState] == 2;

    xpc_dictionary_set_BOOL(v22, *MEMORY[0x277D86398], v45);
  }

  v46 = [*(a1 + 32) activityOptions];
  v47 = [v46 runDate];
  if (v47)
  {
    v48 = v47;
    v49 = [*(a1 + 32) activityOptions];
    v50 = [v49 runDate];
    objc_opt_class();
    v51 = objc_opt_isKindOfClass();

    v52 = 0.0;
    if ((v51 & 1) == 0)
    {
      goto LABEL_43;
    }

    v53 = [*(a1 + 32) activityOptions];
    v54 = [v53 runDate];
    [v54 timeIntervalSinceNow];
    v52 = v55;

    if (v52 >= 0.0)
    {
      goto LABEL_43;
    }

    v56 = [*(a1 + 40) logger];
    v46 = [v56 oslog];

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [*(a1 + 32) activityName];
      v58 = [*(a1 + 32) activityOptions];
      v59 = [v58 runDate];
      *buf = 138412546;
      v74 = v57;
      v75 = 2112;
      v76 = v59;
      _os_log_impl(&dword_23193C000, v46, OS_LOG_TYPE_DEFAULT, "The activity named %@ has a requested run date which is in the past(%@). Scheduling to run immediately", buf, 0x16u);
    }
  }

  v52 = 0.0;
LABEL_43:
  xpc_dictionary_set_int64(v22, *MEMORY[0x277D86250], v52);
  bzero(buf, 0x400uLL);
  v60 = [*(a1 + 32) activityName];
  [v60 getCString:buf maxLength:1023 encoding:4];

  v61 = buf[0];
  v62 = [*(a1 + 40) logger];
  v63 = [v62 oslog];

  v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
  if (v61)
  {
    if (v64)
    {
      v65 = [*(a1 + 32) activityName];
      *v71 = 138412290;
      v72 = v65;
      _os_log_impl(&dword_23193C000, v63, OS_LOG_TYPE_DEFAULT, "Registering Activity %@", v71, 0xCu);
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__SUCoreXPCActivityManager_scheduleActivity___block_invoke_107;
    handler[3] = &unk_27892D638;
    handler[4] = *(a1 + 40);
    xpc_activity_register(buf, v22, handler);
    *(*(*(a1 + 48) + 8) + 24) = 0;
    [*(*(a1 + 40) + 48) addObject:*(a1 + 32)];
    [*(a1 + 40) addActivityInfoToPersistedState:*(a1 + 32)];
    [*(a1 + 32) setIsRegisteredWithXPC:1];
    v66 = [*(a1 + 40) logger];
    v67 = [v66 oslog];

    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = *(a1 + 32);
      *v71 = 138412290;
      v72 = v68;
      _os_log_impl(&dword_23193C000, v67, OS_LOG_TYPE_DEFAULT, "Activity successfully registered : {%@}", v71, 0xCu);
    }
  }

  else
  {
    if (v64)
    {
      v69 = *(a1 + 32);
      *v71 = 138412290;
      v72 = v69;
      _os_log_impl(&dword_23193C000, v63, OS_LOG_TYPE_DEFAULT, "Failed to register activity since we could not extract its name: {%@}", v71, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 4;
  }

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
}

- (int)unscheduleActivity:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 6;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUCoreXPCActivityManager_unscheduleActivity___block_invoke;
  block[3] = &unk_27892D520;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LODWORD(v4) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __47__SUCoreXPCActivityManager_unscheduleActivity___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isActivityScheduledInternal:*(a1 + 40)] & 1) != 0 || objc_msgSend(*(a1 + 32), "_isActivityTrackedButUnsheduledInternal:", *(a1 + 40)))
  {
    bzero(identifier, 0x400uLL);
    [*(a1 + 40) getCString:identifier maxLength:1023 encoding:4];
    if (identifier[0])
    {
      xpc_activity_unregister(identifier);
      v2 = [*(a1 + 32) _getActivityForNameInternal:*(a1 + 40)];
      v3 = v2;
      if (v2)
      {
        [v2 setIsRegisteredWithXPC:0];
        [*(*(a1 + 32) + 48) removeObject:v3];
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      [*(a1 + 32) removeActivityFromPersistedState:v3];
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)getActivityForName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__90;
  v16 = __Block_byref_object_dispose__91;
  v17 = 0;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SUCoreXPCActivityManager_getActivityForName___block_invoke;
  block[3] = &unk_27892D598;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __47__SUCoreXPCActivityManager_getActivityForName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getActivityForNameInternal:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_getActivityForNameInternal:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_activities;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = MEMORY[0x277D643F8];
        v12 = [v10 activityName];
        LOBYTE(v11) = [v11 stringIsEqual:v12 to:v4];

        if (v11)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)copyOptionsForActivity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__90;
  v16 = __Block_byref_object_dispose__91;
  v17 = 0;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUCoreXPCActivityManager_copyOptionsForActivity___block_invoke;
  block[3] = &unk_27892D520;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__SUCoreXPCActivityManager_copyOptionsForActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getActivityForNameInternal:*(a1 + 40)];
  if (v2)
  {
    v7 = v2;
    v3 = [v2 activityOptions];
    v4 = [v3 copy];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v2 = v7;
  }
}

- (id)getExpectedRunDateForActivity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__90;
  v16 = __Block_byref_object_dispose__91;
  v17 = 0;
  v5 = [(SUCoreXPCActivityManager *)self managerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SUCoreXPCActivityManager_getExpectedRunDateForActivity___block_invoke;
  block[3] = &unk_27892D520;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__SUCoreXPCActivityManager_getExpectedRunDateForActivity___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getActivityForNameInternal:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 activityOptions];
    v5 = [v4 runDate];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 32) logger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "Activity '%@' has a predicted run date of %@", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Name: %@ NumActivicies: %lu {\n", self->_managerName, -[NSMutableArray count](self->_activities, "count")];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_activities;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"{\n\t%@\n}", *(*(&v14 + 1) + 8 * v8)];
        v3 = [v9 stringByAppendingString:v10];

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 stringByAppendingString:@"}"];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __42__SUCoreXPCActivityManager_sharedInstance__block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23193C000, log, OS_LOG_TYPE_ERROR, "Persisted state file path for manager %@ is %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end