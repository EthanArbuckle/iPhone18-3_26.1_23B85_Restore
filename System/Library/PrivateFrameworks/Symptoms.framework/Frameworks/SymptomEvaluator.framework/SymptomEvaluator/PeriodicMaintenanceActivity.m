@interface PeriodicMaintenanceActivity
+ (const)periodicActivityID;
+ (id)sharedInstance;
+ (int64_t)periodicActivityInterval;
+ (void)registerPeriodicActivityWithIdentifier:(id)a3 queue:(id)a4 activity:(id)a5;
- (PeriodicMaintenanceActivity)init;
- (void)_handleActivityRun:(id)a3;
- (void)_registerPeriodicActivityWithIdentifier:(id)a3 queue:(id)a4 activity:(id)a5;
- (void)_registerPeriodicMaintenanceActivity;
- (void)dealloc;
@end

@implementation PeriodicMaintenanceActivity

+ (int64_t)periodicActivityInterval
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PeriodicMaintenanceActivity.m" lineNumber:38 description:{@"Subclasses must provide an impl for %s", "+[PeriodicMaintenanceActivity periodicActivityInterval]"}];

  return *MEMORY[0x277D86298];
}

+ (const)periodicActivityID
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PeriodicMaintenanceActivity.m" lineNumber:44 description:{@"Subclasses must provide an impl for %s", "+[PeriodicMaintenanceActivity periodicActivityID]"}];

  return "";
}

+ (id)sharedInstance
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PeriodicMaintenanceActivity.m" lineNumber:50 description:{@"Subclasses must provide an impl for %s", "+[PeriodicMaintenanceActivity sharedInstance]"}];

  return 0;
}

+ (void)registerPeriodicActivityWithIdentifier:(id)a3 queue:(id)a4 activity:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() sharedInstance];
  [v10 _registerPeriodicActivityWithIdentifier:v9 queue:v8 activity:v7];
}

- (PeriodicMaintenanceActivity)init
{
  v7.receiver = self;
  v7.super_class = PeriodicMaintenanceActivity;
  v2 = [(PeriodicMaintenanceActivity *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activities = v2->_activities;
    v2->_activities = v3;

    if (!v2->_activities)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v2->_nextActivityIndex = 0;
    [(PeriodicMaintenanceActivity *)v2 _registerPeriodicMaintenanceActivity];
  }

  v5 = v2;
LABEL_6:

  return v5;
}

- (void)dealloc
{
  v3 = [objc_opt_class() periodicActivityID];
  xpc_activity_unregister(v3);
  v4.receiver = self;
  v4.super_class = PeriodicMaintenanceActivity;
  [(PeriodicMaintenanceActivity *)&v4 dealloc];
}

- (void)_registerPeriodicMaintenanceActivity
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 1);
    v5 = *MEMORY[0x277D86288];
    v6 = [objc_opt_class() periodicActivityInterval];
    xpc_dictionary_set_int64(v4, v5, v6);
    v7 = [objc_opt_class() periodicActivityID];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __67__PeriodicMaintenanceActivity__registerPeriodicMaintenanceActivity__block_invoke;
    handler[3] = &unk_27898D680;
    handler[4] = self;
    xpc_activity_register(v7, v4, handler);
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v15 = v11;
      v16 = 2080;
      v17 = [objc_opt_class() periodicActivityID];
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "[%@] Unable to create xpc_activity criteria for %s", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __67__PeriodicMaintenanceActivity__registerPeriodicMaintenanceActivity__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    [*(a1 + 32) _handleActivityRun:v3];
  }

  else
  {
    v4 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138412546;
      v11 = v8;
      v12 = 2048;
      state = xpc_activity_get_state(v3);
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "[%@] Unexpected xpc_activity state %lld, ignoring...", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleActivityRun:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  activity = a3;
  obj = self->_activities;
  objc_sync_enter(obj);
  nextActivityIndex = self->_nextActivityIndex;
  v5 = [(NSMutableArray *)self->_activities count];
  v6 = v5;
  if (nextActivityIndex >= v5)
  {
LABEL_13:
    objc_sync_exit(obj);

    v20 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138412290;
      v38 = v23;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "[%@] Completed running periodic activity xpc_activity", buf, 0xCu);
    }

    if (!xpc_activity_set_state(activity, 5))
    {
      v24 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v25 = v24;
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138412290;
        v38 = v27;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "[%@] Failed to set periodic activity xpc_activity state to DONE!", buf, 0xCu);
      }
    }

    self->_nextActivityIndex = 0;
  }

  else
  {
    v7 = v5 - 1;
    while (1)
    {
      v8 = otherLogHandle;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138412546;
        v38 = v10;
        v39 = 2048;
        v40 = nextActivityIndex;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "[%@] Preparing to run periodic activity index %ld", buf, 0x16u);
      }

      v11 = [(NSMutableArray *)self->_activities objectAtIndexedSubscript:nextActivityIndex];
      v12 = otherLogHandle;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v11 activityIdentifier];
        *buf = 138412546;
        v38 = v14;
        v39 = 2112;
        v40 = v15;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "[%@] Ready to run periodic activity %@", buf, 0x16u);
      }

      v16 = [v11 activityQueue];
      v17 = [v11 activityBlock];
      dispatch_async(v16, v17);

      v18 = nextActivityIndex + 1;
      v19 = v7 == nextActivityIndex ? 0 : nextActivityIndex + 1;
      self->_nextActivityIndex = v19;
      if (v18 < v6 && xpc_activity_should_defer(activity))
      {
        break;
      }

      ++nextActivityIndex;
      if (v6 == v18)
      {
        goto LABEL_13;
      }
    }

    v29 = otherLogHandle;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138412290;
      v38 = v31;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "[%@] Deferring periodic activity xpc_activity", buf, 0xCu);
    }

    if (!xpc_activity_set_state(activity, 3))
    {
      v32 = otherLogHandle;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138412290;
        v38 = v34;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "[%@] Failed to set periodic activity xpc_activity state to DEFER!", buf, 0xCu);
      }
    }

    objc_sync_exit(obj);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_registerPeriodicActivityWithIdentifier:(id)a3 queue:(id)a4 activity:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9 && v10 && [v8 length])
  {
    v12 = self->_activities;
    objc_sync_enter(v12);
    v13 = otherLogHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "[%@] Registering periodic activity %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v36 = 1;
    activities = self->_activities;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__PeriodicMaintenanceActivity__registerPeriodicActivityWithIdentifier_queue_activity___block_invoke;
    v27[3] = &unk_27898E9C0;
    v17 = v8;
    v28 = v17;
    v29 = self;
    v30 = buf;
    [(NSMutableArray *)activities enumerateObjectsUsingBlock:v27];
    if (*(*&buf[8] + 24) == 1)
    {
      v18 = objc_alloc_init(MaintenanceActivity);
      [(MaintenanceActivity *)v18 setActivityBlock:v11];
      [(MaintenanceActivity *)v18 setActivityQueue:v9];
      [(MaintenanceActivity *)v18 setActivityIdentifier:v17];
      [(NSMutableArray *)self->_activities addObject:v18];
      v19 = otherLogHandle;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *v31 = 138412546;
        v32 = v21;
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "[%@] Registered periodic activity %@", v31, 0x16u);
      }
    }

    _Block_object_dispose(buf, 8);
    objc_sync_exit(v12);
  }

  else
  {
    v22 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v23 = v22;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138412290;
      *&buf[4] = v25;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "[%@] Registering a periodic activity requires a valid block, queue, and identifier", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __86__PeriodicMaintenanceActivity__registerPeriodicActivityWithIdentifier_queue_activity___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [a2 activityIdentifier];
  v7 = [v6 isEqualToString:a1[4]];

  if (v7)
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
      v9 = a1[5];
      v10 = v8;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = a1[4];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "[%@] A periodic activity already exists for identifier %@. Skipping registration", &v15, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end