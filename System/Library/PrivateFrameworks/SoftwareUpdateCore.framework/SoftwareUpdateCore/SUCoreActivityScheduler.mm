@interface SUCoreActivityScheduler
+ (id)sharedInstance;
- (SUCoreActivityScheduler)initWithPersistedStatePath:(id)a3;
- (id)_contextStoreRegisteredActivities;
- (id)_copyRegisteredActivities;
- (id)_queue_registrationForActivity:(id)a3;
- (id)sharedMemoryStore;
- (void)_loadPersistedRegistrationMap;
- (void)_queue_addRegistration:(id)a3 forActivity:(id)a4;
- (void)_queue_persistRegistrationMap;
- (void)_queue_removeRegistrationForActivity:(id)a3;
- (void)_registerRegistration:(id)a3 forActivity:(id)a4;
- (void)_unregisterAllActivitiesWithName:(id)a3;
- (void)_unregisterRegistrationForActivity:(id)a3;
- (void)scheduleActivity:(id)a3 withHandler:(id)a4;
@end

@implementation SUCoreActivityScheduler

- (SUCoreActivityScheduler)initWithPersistedStatePath:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = SUCoreActivityScheduler;
  v5 = [(SUCoreActivityScheduler *)&v35 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  if (!objc_opt_class() || !objc_opt_class())
  {
    v28 = [MEMORY[0x277D64460] sharedLogger];
    v29 = [v28 oslog];

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [SUCoreActivityScheduler initWithPersistedStatePath:];
    }

    v15 = v5;
    v5 = 0;
    goto LABEL_15;
  }

  v6 = [MEMORY[0x277CFE320] userContext];
  context = v5->_context;
  v5->_context = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  activityArray = v5->_activityArray;
  v5->_activityArray = v8;

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  registrationArray = v5->_registrationArray;
  v5->_registrationArray = v10;

  v12 = dispatch_queue_create("com.apple.softwareupdatecore.activityscheduler", 0);
  stateQueue = v5->_stateQueue;
  v5->_stateQueue = v12;

  if (v4)
  {
    v14 = [v4 URLByDeletingLastPathComponent];
    v15 = [v14 path];

    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [v16 fileExistsAtPath:v15];

    if ((v17 & 1) == 0)
    {
      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v34 = 0;
      [v18 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v34];
      v19 = v34;

      if (v19)
      {
        v20 = [MEMORY[0x277D64460] sharedLogger];
        v21 = [v20 oslog];

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v4 path];
          *buf = 138543618;
          v37 = v22;
          v38 = 2114;
          v39 = v19;
          _os_log_impl(&dword_23193C000, v21, OS_LOG_TYPE_DEFAULT, "Error creating persisted state file %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }

    v23 = objc_alloc(MEMORY[0x277D64478]);
    v24 = v5->_stateQueue;
    v25 = [v4 path];
    v26 = [v23 initWithDispatchQueue:v24 withPersistencePath:v25 forPolicyVersion:@"1.0"];
    persistedState = v5->_persistedState;
    v5->_persistedState = v26;

    [(SUCoreActivityScheduler *)v5 _loadPersistedRegistrationMap];
LABEL_15:
  }

  v30 = [MEMORY[0x277D64460] sharedLogger];
  v31 = [v30 oslog];

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v4;
    _os_log_impl(&dword_23193C000, v31, OS_LOG_TYPE_DEFAULT, "Created SUCoreActivityScheduler with persisted state path: %{public}@", buf, 0xCu);
  }

LABEL_19:
  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SUCoreActivityScheduler sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __41__SUCoreActivityScheduler_sharedInstance__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = [v1 componentsSeparatedByString:@"."];
    v3 = [v2 lastObject];

    if (!v3 || (v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.state", @"/var/mobile/Library/SoftwareUpdateCore/", v3]) == 0)
    {
      v5 = [MEMORY[0x277D64460] sharedLogger];
      v6 = [v5 oslog];

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __41__SUCoreActivityScheduler_sharedInstance__block_invoke_cold_1();
      }

      v4 = v1;
    }

    goto LABEL_13;
  }

  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 executablePath];

  if (!v8)
  {
LABEL_12:
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", @"/var/mobile/Library/SoftwareUpdateCore/", @"SUCoreActivitySchedulerDefaultSharedState.state"];
    v3 = [MEMORY[0x277D64428] sharedDiag];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create a file path from bundleIdentifier, falling back to the default of %@", v4];
    [v3 trackAnomaly:@"SUCoreActivityScheduler" forReason:v11 withResult:8116 withError:0];

LABEL_13:
    goto LABEL_14;
  }

  v9 = [v8 componentsSeparatedByString:@"/"];
  v10 = [v9 lastObject];

  if (!v10)
  {

    goto LABEL_12;
  }

  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.state", @"/var/mobile/Library/SoftwareUpdateCore/", v10];

  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_14:
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v13 = [[SUCoreActivityScheduler alloc] initWithPersistedStatePath:v12];
  v14 = sharedInstance___instance;
  sharedInstance___instance = v13;
}

- (void)_queue_addRegistration:(id)a3 forActivity:(id)a4
{
  stateQueue = self->_stateQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(stateQueue);
  [(NSMutableArray *)self->_activityArray addObject:v7];

  [(NSMutableArray *)self->_registrationArray addObject:v8];
}

- (void)_queue_removeRegistrationForActivity:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v4 = [(NSMutableArray *)self->_activityArray indexOfObject:v5];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && [(NSMutableArray *)self->_registrationArray count]> v4)
  {
    [(NSMutableArray *)self->_registrationArray removeObjectAtIndex:[(NSMutableArray *)self->_activityArray indexOfObject:v5]];
    [(NSMutableArray *)self->_activityArray removeObject:v5];
  }
}

- (id)_queue_registrationForActivity:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_activityArray indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableArray *)self->_registrationArray count]<= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)self->_registrationArray objectAtIndex:[(NSMutableArray *)self->_activityArray indexOfObject:v4]];
  }

  return v6;
}

- (void)_registerRegistration:(id)a3 forActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUCoreActivityScheduler__registerRegistration_forActivity___block_invoke;
  block[3] = &unk_27892D340;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(stateQueue, block);
}

uint64_t __61__SUCoreActivityScheduler__registerRegistration_forActivity___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 8) registerCallback:?];
    [*(a1 + 40) _queue_addRegistration:*(a1 + 32) forActivity:*(a1 + 48)];
  }

  v2 = *(a1 + 40);

  return [v2 _queue_persistRegistrationMap];
}

- (void)_unregisterRegistrationForActivity:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SUCoreActivityScheduler__unregisterRegistrationForActivity___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

void __62__SUCoreActivityScheduler__unregisterRegistrationForActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_registrationForActivity:*(a1 + 40)];
  if (v2)
  {
    [*(*(a1 + 32) + 8) deregisterCallback:v2];
  }

  [*(a1 + 32) _queue_removeRegistrationForActivity:*(a1 + 40)];
  [*(a1 + 32) _queue_persistRegistrationMap];
}

- (void)_unregisterAllActivitiesWithName:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SUCoreActivityScheduler__unregisterAllActivitiesWithName___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

void __60__SUCoreActivityScheduler__unregisterAllActivitiesWithName___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = *(*(a1 + 32) + 16);
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 activityName];
        v10 = [v9 isEqualToString:*(a1 + 40)];

        if (v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * j);
        v17 = [*(a1 + 32) _queue_registrationForActivity:{v16, v19}];
        if (v17)
        {
          [*(*(a1 + 32) + 8) deregisterCallback:v17];
        }

        [*(a1 + 32) _queue_removeRegistrationForActivity:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  [*(a1 + 32) _queue_persistRegistrationMap];
  v18 = *MEMORY[0x277D85DE8];
}

- (id)_copyRegisteredActivities
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SUCoreActivityScheduler__copyRegisteredActivities__block_invoke;
  v6[3] = &unk_27892C8D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __52__SUCoreActivityScheduler__copyRegisteredActivities__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_persistRegistrationMap
{
  v2 = self;
  v41 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v2->_activityArray;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v33;
    v7 = 0x277CCA000uLL;
    *&v4 = 138543618;
    v25 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [(SUCoreActivityScheduler *)v2 _queue_registrationForActivity:v9, v25];
        if (v10)
        {
          v11 = *(v7 + 2736);
          v31 = 0;
          v12 = [v11 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v31];
          v13 = v31;
          v29 = v12;
          if (v13)
          {
            v14 = [MEMORY[0x277D64460] sharedLogger];
            v15 = [v14 oslog];

            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v37 = v10;
              v38 = 2114;
              v39 = v13;
              _os_log_error_impl(&dword_23193C000, v15, OS_LOG_TYPE_ERROR, "Error archiving registration:%{public}@ error:%{public}@", buf, 0x16u);
            }
          }

          else
          {
            [v27 addObject:v12];
          }

          v17 = *(v7 + 2736);
          v30 = v13;
          v18 = [v17 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v30];
          v16 = v30;

          if (v16)
          {
            v19 = v5;
            v20 = v6;
            v21 = v2;
            v22 = [MEMORY[0x277D64460] sharedLogger];
            v23 = [v22 oslog];

            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = v25;
              v37 = v9;
              v38 = 2114;
              v39 = v16;
              _os_log_error_impl(&dword_23193C000, v23, OS_LOG_TYPE_ERROR, "Error archiving activity:%{public}@ error:%{public}@", buf, 0x16u);
            }

            v2 = v21;
            v6 = v20;
            v5 = v19;
            v7 = 0x277CCA000;
          }

          else
          {
            [v26 addObject:v18];
          }
        }

        else
        {
          v16 = 0;
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v5);
  }

  [(SUCorePersistedState *)v2->_persistedState persistObject:v27 forKey:@"RegistrationKey"];
  [(SUCorePersistedState *)v2->_persistedState persistObject:v26 forKey:@"ActivityKey"];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_loadPersistedRegistrationMap
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke;
  block[3] = &unk_27892C8A8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

void __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke(uint64_t a1)
{
  v55[4] = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 40) loadPersistedState])
  {
    v2 = [*(*(a1 + 32) + 40) objectForKey:@"RegistrationKey" ofClass:objc_opt_class()];
    v3 = [*(*(a1 + 32) + 40) objectForKey:@"ActivityKey" ofClass:objc_opt_class()];
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      if ([v2 count])
      {
        v7 = [v2 count];
        if (v7 == [v4 count])
        {
          v48 = [*(a1 + 32) _contextStoreRegisteredActivities];
          if ([v4 count])
          {
            v45 = a1;
            v9 = 0;
            v10 = 0x277CCA000uLL;
            *&v8 = 134217984;
            v44 = v8;
            v46 = v4;
            v47 = v2;
            while (1)
            {
              v11 = [v4 objectAtIndex:{v9, v44}];
              v12 = [v2 objectAtIndex:v9];
              v13 = v12;
              if (v12)
              {
                if (v11)
                {
                  break;
                }
              }

              if (!v12)
              {
                v31 = [MEMORY[0x277D64460] sharedLogger];
                v32 = [v31 oslog];

                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  *buf = v44;
                  v52 = v9;
                  _os_log_error_impl(&dword_23193C000, v32, OS_LOG_TYPE_ERROR, "No registrationData found at index: %lu", buf, 0xCu);
                }

                if (v11)
                {
                  goto LABEL_40;
                }

LABEL_37:
                v33 = [MEMORY[0x277D64460] sharedLogger];
                v26 = [v33 oslog];

                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = v44;
                  v52 = v9;
                  _os_log_error_impl(&dword_23193C000, v26, OS_LOG_TYPE_ERROR, "No activityData found at index: %lu", buf, 0xCu);
                }

LABEL_39:

                goto LABEL_40;
              }

              if (!v11)
              {
                goto LABEL_37;
              }

LABEL_40:

              v9 = (v9 + 1);
              if (v9 >= [v4 count])
              {
                goto LABEL_54;
              }
            }

            v14 = *(v10 + 2760);
            v15 = objc_opt_class();
            v50 = 0;
            v16 = [v14 unarchivedObjectOfClass:v15 fromData:v13 error:&v50];
            v17 = v50;
            if (v17)
            {
              v18 = [MEMORY[0x277D64460] sharedLogger];
              v19 = [v18 oslog];

              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v52 = v17;
                _os_log_error_impl(&dword_23193C000, v19, OS_LOG_TYPE_ERROR, "Error unarchiving registration: %{public}@", buf, 0xCu);
              }
            }

            v20 = v10;
            v21 = *(v10 + 2760);
            v22 = MEMORY[0x277CBEB98];
            v55[0] = objc_opt_class();
            v55[1] = objc_opt_class();
            v55[2] = objc_opt_class();
            v55[3] = objc_opt_class();
            v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
            v24 = [v22 setWithArray:v23];
            v49 = v17;
            v25 = [v21 unarchivedObjectOfClasses:v24 fromData:v11 error:&v49];
            v26 = v49;

            if (v26)
            {
              v27 = [MEMORY[0x277D64460] sharedLogger];
              v28 = [v27 oslog];

              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v52 = v26;
                _os_log_error_impl(&dword_23193C000, v28, OS_LOG_TYPE_ERROR, "Error unarchiving activity: %{public}@", buf, 0xCu);
              }
            }

            v10 = v20;
            v4 = v46;
            if ([v48 containsObject:v16])
            {
              v29 = [MEMORY[0x277D64460] sharedLogger];
              v30 = [v29 oslog];

              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v52 = v25;
                v53 = 2114;
                v54 = v16;
                _os_log_impl(&dword_23193C000, v30, OS_LOG_TYPE_DEFAULT, "Found matching activity:%{public}@ registration: %{public}@", buf, 0x16u);
              }

              [*(v45 + 32) _queue_addRegistration:v16 forActivity:v25];
            }

            v2 = v47;
            goto LABEL_39;
          }

          goto LABEL_54;
        }
      }

LABEL_48:
      v38 = [v2 count];
      if (v38 == [v4 count])
      {
        if ([v2 count])
        {
LABEL_55:

          goto LABEL_56;
        }

        v39 = [MEMORY[0x277D64460] sharedLogger];
        v40 = [v39 oslog];

        v48 = v40;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_5();
        }
      }

      else
      {
        v41 = [MEMORY[0x277D64460] sharedLogger];
        v42 = [v41 oslog];

        v48 = v42;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_4(v2, v4, v42);
        }
      }

LABEL_54:

      goto LABEL_55;
    }

    if (v2)
    {
      if (v3)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v34 = [MEMORY[0x277D64460] sharedLogger];
      v35 = [v34 oslog];

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_2();
      }

      if (v4)
      {
        goto LABEL_48;
      }
    }

    v36 = [MEMORY[0x277D64460] sharedLogger];
    v37 = [v36 oslog];

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_3();
    }

    goto LABEL_48;
  }

  v6 = [MEMORY[0x277D64460] sharedLogger];
  v2 = [v6 oslog];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_1();
  }

LABEL_56:

  v43 = *MEMORY[0x277D85DE8];
}

- (id)sharedMemoryStore
{
  if (sharedMemoryStore_once != -1)
  {
    [SUCoreActivityScheduler sharedMemoryStore];
  }

  v3 = sharedMemoryStore_sharedMemoryStore;

  return v3;
}

uint64_t __44__SUCoreActivityScheduler_sharedMemoryStore__block_invoke()
{
  sharedMemoryStore_sharedMemoryStore = [MEMORY[0x277CFE110] keyValueStoreWithName:@"com.apple.contextstored" size:0];

  return MEMORY[0x2821F96F8]();
}

- (id)_contextStoreRegisteredActivities
{
  v3 = [MEMORY[0x277CFE0D0] knowledgeDirectory];
  v4 = [MEMORY[0x277CFE370] persistenceWithDirectory:v3];
  v5 = MEMORY[0x277CFE398];
  v6 = [(SUCoreActivityScheduler *)self sharedMemoryStore];
  v7 = [v5 persistenceWithSharedMemoryKeyValueStore:v6];

  v8 = [MEMORY[0x277CFE390] persistenceWithPersistenceSurvivingReboot:v4 persistenceSurvivingRelaunch:v7];
  v9 = [v8 loadRegistrations];

  return v9;
}

- (void)scheduleActivity:(id)a3 withHandler:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  context = self->_context;
  v9 = [v6 createContextualPredicate];
  LODWORD(context) = [(_CDContext *)context evaluatePredicate:v9];

  if (!context)
  {
    v12 = [v6 createRegistrationWithHandler:v7];
    v16 = [MEMORY[0x277D64460] sharedLogger];
    v17 = [v16 oslog];

    if (v12)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v6;
        _os_log_impl(&dword_23193C000, v17, OS_LOG_TYPE_DEFAULT, "Scheduling activity = %{public}@", buf, 0xCu);
      }

      [(SUCoreActivityScheduler *)self _registerRegistration:v12 forActivity:v6];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SUCoreActivityScheduler scheduleActivity:withHandler:];
      }
    }

    goto LABEL_13;
  }

  v10 = [MEMORY[0x277D64460] sharedLogger];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "Conditions met for activity: %{public}@", buf, 0xCu);
  }

  if (v7)
  {
    v12 = [v6 activityName];
    v13 = [v6 UUID];
    v19[1] = @"WasScheduled";
    v20[0] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v20[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v7[2](v7, v12, v15);

LABEL_13:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)initWithPersistedStatePath:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__SUCoreActivityScheduler_sharedInstance__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_4(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 134218240;
  v7 = [a1 count];
  v8 = 2048;
  v9 = [a2 count];
  _os_log_error_impl(&dword_23193C000, a3, OS_LOG_TYPE_ERROR, "persistedRegistrationArray(%lu) and persistedActivitiesArray(%lu) have differing counts", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__SUCoreActivityScheduler__loadPersistedRegistrationMap__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)scheduleActivity:withHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end