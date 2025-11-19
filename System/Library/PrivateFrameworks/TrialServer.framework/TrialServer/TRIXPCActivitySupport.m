@interface TRIXPCActivitySupport
+ (BOOL)unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor:(id)a3;
+ (id)_registeredActivities;
+ (id)nameForActivityState:(int64_t)a3;
+ (void)assertRegistrationOfLaunchdPlistActivities:(id)a3;
+ (void)registerActivityWithLaunchDaemonDescriptor:(id)a3 checkInBlock:(id)a4 asyncHandler:(id)a5;
@end

@implementation TRIXPCActivitySupport

+ (id)nameForActivityState:(int64_t)a3
{
  if (a3 >= 6)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"XPC_ACTIVITY_STATE_%ld", a3];
  }

  else
  {
    v3 = off_279DE0330[a3];
  }

  return v3;
}

+ (id)_registeredActivities
{
  if (qword_2815976E0 != -1)
  {
    dispatch_once(&qword_2815976E0, &__block_literal_global_110);
  }

  v3 = _MergedGlobals_31;

  return v3;
}

void __46__TRIXPCActivitySupport__registeredActivities__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D425F8]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = _MergedGlobals_31;
  _MergedGlobals_31 = v3;

  objc_autoreleasePoolPop(v0);
}

+ (void)registerActivityWithLaunchDaemonDescriptor:(id)a3 checkInBlock:(id)a4 asyncHandler:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 name];
  v13 = +[TRIXPCActivitySupport _registeredActivities];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __94__TRIXPCActivitySupport_registerActivityWithLaunchDaemonDescriptor_checkInBlock_asyncHandler___block_invoke;
  v31[3] = &unk_279DE0270;
  v14 = v12;
  v32 = v14;
  v15 = v11;
  v33 = v15;
  [v13 runWithLockAcquired:v31];
  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v14;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "register xpc activity handler for %{public}@", buf, 0xCu);
  }

  v17 = [v14 UTF8String];
  if (!v17)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"TRIXPCActivitySupport.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"utf8Name"}];
  }

  v18 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __94__TRIXPCActivitySupport_registerActivityWithLaunchDaemonDescriptor_checkInBlock_asyncHandler___block_invoke_117;
  handler[3] = &unk_279DE0298;
  v26 = v14;
  v27 = v9;
  v29 = v15;
  v30 = a1;
  v28 = v10;
  v19 = v15;
  v20 = v9;
  v21 = v10;
  v22 = v14;
  xpc_activity_register(v17, v18, handler);

  v23 = *MEMORY[0x277D85DE8];
}

void __94__TRIXPCActivitySupport_registerActivityWithLaunchDaemonDescriptor_checkInBlock_asyncHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = MEMORY[0x2743948D0](v3);
  [v4 setObject:v5 forKeyedSubscript:*(a1 + 32)];
}

void __94__TRIXPCActivitySupport_registerActivityWithLaunchDaemonDescriptor_checkInBlock_asyncHandler___block_invoke_117(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v9 = [MEMORY[0x277D42598] isClassCLocked];
    v10 = TRILogCategory_Server();
    v11 = v10;
    if (!v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v24 = 138543362;
        v25 = v17;
        _os_log_impl(&dword_26F567000, &v11->super, OS_LOG_TYPE_DEFAULT, "Run activity for %{public}@", &v24, 0xCu);
      }

      v11 = -[TRIRunningXPCActivityDescriptor initWithActivity:capabilities:name:]([TRIRunningXPCActivityDescriptor alloc], "initWithActivity:capabilities:name:", v3, [*(a1 + 40) supportedTaskCapabilities], *(a1 + 32));
      v18 = xpc_activity_get_state(v3);
      if (!xpc_activity_set_state(v3, 4))
      {
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v21 = *(a1 + 32);
          v22 = [*(a1 + 64) nameForActivityState:v18];
          v23 = [*(a1 + 64) nameForActivityState:4];
          v24 = 138543874;
          v25 = v21;
          v26 = 2114;
          v27 = v22;
          v28 = 2114;
          v29 = v23;
          _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "XPC activity %{public}@ start: unable to transition state %{public}@ --> %{public}@", &v24, 0x20u);
        }
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_20;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v24 = 138543362;
      v25 = v12;
      v13 = "Attempted to run activity %{public}@ before first unlock, doing nothing";
      p_super = &v11->super;
      v15 = 12;
LABEL_12:
      _os_log_error_impl(&dword_26F567000, p_super, OS_LOG_TYPE_ERROR, v13, &v24, v15);
    }

LABEL_20:

    goto LABEL_21;
  }

  v5 = state;
  if (state)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v24 = 138543618;
      v25 = v16;
      v26 = 2048;
      v27 = v5;
      v13 = "%{public}@ - unexpected xpc activity state: %ld";
      p_super = &v11->super;
      v15 = 22;
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v24 = 138543362;
    v25 = v7;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Checking in for %{public}@", &v24, 0xCu);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)assertRegistrationOfLaunchdPlistActivities:(id)a3
{
  v5 = a3;
  v6 = +[TRIXPCActivitySupport _registeredActivities];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__TRIXPCActivitySupport_assertRegistrationOfLaunchdPlistActivities___block_invoke;
  v8[3] = &unk_279DE02C0;
  v9 = v5;
  v10 = a2;
  v11 = a1;
  v7 = v5;
  [v6 runWithLockAcquired:v8];
}

void __68__TRIXPCActivitySupport_assertRegistrationOfLaunchdPlistActivities___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [v3 allKeys];
  v6 = [v4 initWithArray:v5];

  if (([*(a1 + 32) isSubsetOfSet:v6] & 1) == 0)
  {
    v16 = v3;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (([v6 containsObject:v12] & 1) == 0)
          {
            v13 = TRILogCategory_Server();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v22 = v12;
              _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "descriptor %{public}@ is not registered", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"TRIXPCActivitySupport.m" lineNumber:216 description:@"failed assertRegistrationOfLaunchdPlistActivities"];

    v3 = v16;
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (BOOL)unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[TRIXPCActivitySupport _registeredActivities];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__TRIXPCActivitySupport_unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor___block_invoke;
  v22[3] = &unk_279DE02E8;
  v24 = &v25;
  v7 = v5;
  v23 = v7;
  [v6 runWithLockAcquired:v22];
  v8 = v26[5];
  if (v8)
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_int64(v9, *MEMORY[0x277D86250], 0);
    xpc_dictionary_set_int64(v9, *MEMORY[0x277D86270], 0);
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 name];
      *buf = 138543362;
      v32 = v11;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Registering TOTALLY SKETCHY IMMEDIATE ACTIVITY FOR TESTING: %{public}@", buf, 0xCu);
    }

    v12 = [v7 name];
    v13 = v12;
    v14 = [v12 UTF8String];

    if (!v14)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:a1 file:@"TRIXPCActivitySupport.m" lineNumber:240 description:{@"Expression was unexpectedly nil/false: %@", @"descriptor.name.UTF8String"}];
    }

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __86__TRIXPCActivitySupport_unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor___block_invoke_131;
    handler[3] = &unk_279DE0310;
    v20 = v7;
    v21 = &v25;
    xpc_activity_register(v14, v9, handler);
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = [v7 name];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Unable to immediately schedule %{public}@: activity not yet registered", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v25, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

void __86__TRIXPCActivitySupport_unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 name];
  v5 = [v4 objectForKeyedSubscript:v8];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __86__TRIXPCActivitySupport_unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor___block_invoke_131(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) name];
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Running TOTALLY SKETCHY IMMEDIATE ACTIVITY FOR TESTING: %{public}@", &v11, 0xCu);
    }

    v6 = [*(a1 + 32) supportedTaskCapabilities];
    v7 = [TRIRunningXPCActivityDescriptor alloc];
    v8 = [*(a1 + 32) name];
    v9 = [(TRIRunningXPCActivityDescriptor *)v7 initWithActivity:v3 capabilities:v6 | 0x1B name:v8];

    xpc_activity_set_state(v3, 4);
    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end