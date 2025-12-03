@interface TRIXPCActivityManager
- (TRIXPCActivityManager)initWithDispatchQueue:(id)queue;
- (void)_registerCellularActivityWithDelay:(double)delay;
- (void)_registerClientTriggeredActivities;
- (void)_registerDeactivationBGST;
- (void)_registerFetchExperimentsActivity;
- (void)_registerHotfixTargetingActivity;
- (void)_registerMaintenanceWorkActivity;
- (void)_registerPlaceholderTaskQueueActivity;
- (void)_registerPostUpgradeActivity;
- (void)_registerPostUpgradeActivityRequireInexpensiveNetworking;
- (void)_registerRetryFailuresActivity;
- (void)_scheduleFetchTaskWithActivityDescriptor:(id)descriptor label:(id)label;
- (void)_scheduleMaintenanceTaskWithActivityDescriptor:(id)descriptor label:(id)label;
- (void)_setDelaySeconds:(int64_t)seconds forXPCActivity:(id)activity withLabel:(id)label replacementCriteria:(id)criteria;
- (void)_setJitterForXPCActivity:(id)activity withLabel:(id)label replacementCriteria:(id)criteria;
- (void)registerActivities;
- (void)registerSetupAssistantFetchActivity;
@end

@implementation TRIXPCActivityManager

- (TRIXPCActivityManager)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = TRIXPCActivityManager;
  v6 = [(TRIXPCActivityManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
  }

  return v7;
}

- (void)registerActivities
{
  [(TRIXPCActivityManager *)self _registerRetryFailuresActivity];
  [(TRIXPCActivityManager *)self _registerFetchExperimentsActivity];
  [(TRIXPCActivityManager *)self _registerCellularActivityWithDelay:0.0];
  [(TRIXPCActivityManager *)self _registerPostUpgradeActivity];
  [(TRIXPCActivityManager *)self registerSetupAssistantFetchActivity];
  [(TRIXPCActivityManager *)self _registerPostUpgradeActivityRequireInexpensiveNetworking];
  [(TRIXPCActivityManager *)self _registerPlaceholderTaskQueueActivity];
  [(TRIXPCActivityManager *)self _registerClientTriggeredActivities];
  [(TRIXPCActivityManager *)self _registerHotfixTargetingActivity];
  [(TRIXPCActivityManager *)self _registerMaintenanceWorkActivity];
  [(TRIXPCActivityManager *)self _registerDeactivationBGST];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/System/Library/LaunchDaemons/com.apple.triald.plist"];
  if (v3 && (v4 = v3, [v3 objectForKey:@"LaunchEvents"], v5 = objc_claimAutoreleasedReturnValue(), v4, v5) && (objc_msgSend(v5, "objectForKey:", @"com.apple.xpc.activity"), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = MEMORY[0x277CBEB98];
    allKeys = [v6 allKeys];
    v9 = [v7 setWithArray:allKeys];

    [TRIXPCActivitySupport assertRegistrationOfLaunchdPlistActivities:v9];
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to call assertRegistrationOfLaunchdPlistActivities", v10, 2u);
    }
  }
}

- (void)_registerRetryFailuresActivity
{
  v3 = +[TRILaunchDaemonActivityDescriptor retryFailuresDescriptor];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__TRIXPCActivityManager__registerRetryFailuresActivity__block_invoke;
  v4[3] = &unk_279DE0030;
  v4[4] = self;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v3 checkInBlock:0 asyncHandler:v4];
}

void __55__TRIXPCActivityManager__registerRetryFailuresActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TRIXPCActivityManager__registerRetryFailuresActivity__block_invoke_2;
  block[3] = &unk_279DE0008;
  block[4] = v4;
  v10 = &v11;
  v6 = v3;
  v9 = v6;
  dispatch_sync(v5, block);
  if ((v12[3] & 1) == 0)
  {
    v7 = [v6 completion];
    v7[2](v7, 1);
  }

  _Block_object_dispose(&v11, 8);
}

void __55__TRIXPCActivityManager__registerRetryFailuresActivity__block_invoke_2(void *a1)
{
  if (*(a1[4] + 24))
  {
    *(*(a1[6] + 8) + 24) = 1;
    v3 = a1[5];
    v4 = *(a1[4] + 24);

    [v4 resumeWithXPCActivityDescriptor:v3 executeWhenSuspended:0];
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Can't carry out retry-failures activity, task queue not initialized.", v6, 2u);
    }
  }
}

- (void)_setDelaySeconds:(int64_t)seconds forXPCActivity:(id)activity withLabel:(id)label replacementCriteria:(id)criteria
{
  activityCopy = activity;
  labelCopy = label;
  criteriaCopy = criteria;
  dispatchQueue = self->_dispatchQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__TRIXPCActivityManager__setDelaySeconds_forXPCActivity_withLabel_replacementCriteria___block_invoke;
  v17[3] = &unk_279DE0058;
  v18 = activityCopy;
  v19 = labelCopy;
  v20 = criteriaCopy;
  secondsCopy = seconds;
  v14 = criteriaCopy;
  v15 = labelCopy;
  v16 = activityCopy;
  dispatch_sync(dispatchQueue, v17);
}

void __87__TRIXPCActivityManager__setDelaySeconds_forXPCActivity_withLabel_replacementCriteria___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = xpc_activity_copy_criteria(*(a1 + 32));
  if (!v2)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v18 = 138543362;
      v19 = v14;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ check-in: criteria not found, using replacement and updating delay.", &v18, 0xCu);
    }

    v11 = *(a1 + 48);
    v3 = v11;
    v12 = *MEMORY[0x277D86250];
    v10 = *(a1 + 56);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = *MEMORY[0x277D86250];
  int64 = xpc_dictionary_get_int64(v2, *MEMORY[0x277D86250]);
  if (int64 - *(a1 + 56) >= 0)
  {
    v6 = int64 - *(a1 + 56);
  }

  else
  {
    v6 = *(a1 + 56) - int64;
  }

  v7 = TRILogCategory_Server();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 > 0x3B)
  {
    if (v8)
    {
      v9 = *(a1 + 40);
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ check-in: delay is different, criteria will be updated.", &v18, 0xCu);
    }

    v10 = *(a1 + 56);
    v11 = v3;
    v12 = v4;
LABEL_12:
    xpc_dictionary_set_int64(v11, v12, v10);
    xpc_activity_set_criteria(*(a1 + 32), v3);
    goto LABEL_16;
  }

  if (v8)
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v18 = 138543874;
    v19 = v15;
    v20 = 2048;
    v21 = int64;
    v22 = 2048;
    v23 = v16;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ check-in: existing delay is too close to requested delay (%lli ~ %lli), not updating the delay this time", &v18, 0x20u);
  }

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_setJitterForXPCActivity:(id)activity withLabel:(id)label replacementCriteria:(id)criteria
{
  activityCopy = activity;
  labelCopy = label;
  criteriaCopy = criteria;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__TRIXPCActivityManager__setJitterForXPCActivity_withLabel_replacementCriteria___block_invoke;
  block[3] = &unk_279DE0080;
  v16 = activityCopy;
  v17 = criteriaCopy;
  v18 = labelCopy;
  v12 = labelCopy;
  v13 = criteriaCopy;
  v14 = activityCopy;
  dispatch_sync(dispatchQueue, block);
}

void __80__TRIXPCActivityManager__setJitterForXPCActivity_withLabel_replacementCriteria___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = xpc_activity_copy_criteria(*(a1 + 32));
  if (!v2)
  {
    v3 = *(a1 + 40);
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ check-in: criteria not found, using replacement and updating jitter.", &v15, 0xCu);
    }

    v11 = *MEMORY[0x277D86358];
    v12 = v3;
    goto LABEL_12;
  }

  v3 = v2;
  v4 = *MEMORY[0x277D86358];
  int64 = xpc_dictionary_get_int64(v2, *MEMORY[0x277D86358]);
  v6 = TRILogCategory_Server();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (int64 != 3600)
  {
    if (v7)
    {
      v13 = *(a1 + 48);
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ check-in: jitter is unset, criteria will be updated.", &v15, 0xCu);
    }

    v12 = v3;
    v11 = v4;
LABEL_12:
    xpc_dictionary_set_int64(v12, v11, 3600);
    xpc_activity_set_criteria(*(a1 + 32), v3);
    goto LABEL_13;
  }

  if (v7)
  {
    v8 = *(a1 + 48);
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ check-in: jitter is already set, criteria unchanged.", &v15, 0xCu);
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleFetchTaskWithActivityDescriptor:(id)descriptor label:(id)label
{
  descriptorCopy = descriptor;
  labelCopy = label;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  dispatchQueue = self->_dispatchQueue;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__TRIXPCActivityManager__scheduleFetchTaskWithActivityDescriptor_label___block_invoke;
  v15 = &unk_279DE00A8;
  selfCopy = self;
  v9 = labelCopy;
  v17 = v9;
  v19 = &v20;
  v10 = descriptorCopy;
  v18 = v10;
  dispatch_sync(dispatchQueue, &v12);
  if ((v21[3] & 1) == 0)
  {
    completion = [v10 completion];
    completion[2](completion, 1);
  }

  _Block_object_dispose(&v20, 8);
}

void __72__TRIXPCActivityManager__scheduleFetchTaskWithActivityDescriptor_label___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1[4] + 24))
  {
    *(*(a1[7] + 8) + 24) = 1;
    v2 = *(a1[4] + 24);
    v3 = a1[6];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__TRIXPCActivityManager__scheduleFetchTaskWithActivityDescriptor_label___block_invoke_339;
    v9[3] = &unk_279DDF7A0;
    v4 = v3;
    v5 = a1[4];
    v10 = v4;
    v11 = v5;
    [v2 resumeWithXPCActivityDescriptor:v4 executeWhenSuspended:v9];
    v6 = v10;
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      *buf = 138543362;
      v13 = v8;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Can't carry out %{public}@ activity, task queue not initialized.", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __72__TRIXPCActivityManager__scheduleFetchTaskWithActivityDescriptor_label___block_invoke_339(uint64_t a1)
{
  v10 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
  v2 = !+[TRITaskCapabilityUtilities requiredCapabilities:areSupportedByAllowedCapabilities:](TRITaskCapabilityUtilities, "requiredCapabilities:areSupportedByAllowedCapabilities:", 1, [*(a1 + 32) capabilities]) && +[TRITaskCapabilityUtilities requiredCapabilities:areSupportedByAllowedCapabilities:](TRITaskCapabilityUtilities, "requiredCapabilities:areSupportedByAllowedCapabilities:", 2, objc_msgSend(*(a1 + 32), "capabilities"));
  v3 = objc_alloc(MEMORY[0x277D736A0]);
  v4 = [*(a1 + 32) activity];
  v5 = [v3 initWithAllowsCellular:v2 discretionaryBehavior:2 activity:v4];

  v6 = *(*(a1 + 40) + 24);
  v7 = [TRIScheduleFetchExperimentNotificationsTask taskWithRollbacksOnly:0 downloadOptions:v5];
  [v6 addTask:v7 options:v10];

  v8 = *(*(a1 + 40) + 24);
  v9 = +[TRIRetargetAllTask task];
  [v8 addTask:v9 options:v10];
}

- (void)_scheduleMaintenanceTaskWithActivityDescriptor:(id)descriptor label:(id)label
{
  descriptorCopy = descriptor;
  labelCopy = label;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  dispatchQueue = self->_dispatchQueue;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __78__TRIXPCActivityManager__scheduleMaintenanceTaskWithActivityDescriptor_label___block_invoke;
  v15 = &unk_279DE00A8;
  selfCopy = self;
  v9 = labelCopy;
  v17 = v9;
  v19 = &v20;
  v10 = descriptorCopy;
  v18 = v10;
  dispatch_sync(dispatchQueue, &v12);
  if ((v21[3] & 1) == 0)
  {
    completion = [v10 completion];
    completion[2](completion, 1);
  }

  _Block_object_dispose(&v20, 8);
}

void __78__TRIXPCActivityManager__scheduleMaintenanceTaskWithActivityDescriptor_label___block_invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1[4] + 24))
  {
    *(*(a1[7] + 8) + 24) = 1;
    v2 = a1[4];
    v3 = *(v2 + 24);
    v4 = a1[6];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__TRIXPCActivityManager__scheduleMaintenanceTaskWithActivityDescriptor_label___block_invoke_345;
    v8[3] = &unk_279DDEEE0;
    v8[4] = v2;
    [v3 resumeWithXPCActivityDescriptor:v4 executeWhenSuspended:v8];
  }

  else
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      *buf = 138543362;
      v10 = v7;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Can't carry out %{public}@ activity, task queue not initialized.", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __78__TRIXPCActivityManager__scheduleMaintenanceTaskWithActivityDescriptor_label___block_invoke_345(uint64_t a1)
{
  v6 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
  v2 = *(*(a1 + 32) + 24);
  v3 = +[TRIRetargetAllTask task];
  [v2 addTask:v3 options:v6];

  v4 = *(*(a1 + 32) + 24);
  v5 = +[TRIMaintenanceTask task];
  [v4 addTask:v5 options:v6];
}

- (void)_registerCellularActivityWithDelay:(double)delay
{
  v5 = +[TRILaunchDaemonActivityDescriptor cellularDescriptor];
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__TRIXPCActivityManager__registerCellularActivityWithDelay___block_invoke;
  v7[3] = &unk_279DE00D0;
  v7[4] = self;
  *&v7[5] = delay;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__TRIXPCActivityManager__registerCellularActivityWithDelay___block_invoke_2;
  v6[3] = &unk_279DE0030;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v5 checkInBlock:v7 asyncHandler:v6];
}

void __60__TRIXPCActivityManager__registerCellularActivityWithDelay___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = +[TRIXPCActivityCriteria cellularCriteria];
  v4 = *(a1 + 32);
  v5 = +[TRILaunchDaemonActivityDescriptor cellularDescriptor];
  v6 = [v5 name];
  [v4 _setJitterForXPCActivity:v8 withLabel:v6 replacementCriteria:v3];

  v7 = *(a1 + 40);
  if (v7 > 0.0)
  {
    [*(a1 + 32) _setDelaySeconds:v7 forXPCActivity:v8 withLabel:@"cellular" replacementCriteria:v3];
  }
}

- (void)_registerFetchExperimentsActivity
{
  v3 = +[TRILaunchDaemonActivityDescriptor inexpensiveNetworkingDescriptor];
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__TRIXPCActivityManager__registerFetchExperimentsActivity__block_invoke;
  v5[3] = &unk_279DE00F8;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__TRIXPCActivityManager__registerFetchExperimentsActivity__block_invoke_2;
  v4[3] = &unk_279DE0030;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v3 checkInBlock:v5 asyncHandler:v4];
}

void __58__TRIXPCActivityManager__registerFetchExperimentsActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = +[TRIXPCActivityCriteria fetchExperimentsCriteria];
  v4 = *(a1 + 32);
  v5 = +[TRILaunchDaemonActivityDescriptor inexpensiveNetworkingDescriptor];
  v6 = [v5 name];
  [v4 _setJitterForXPCActivity:v3 withLabel:v6 replacementCriteria:v7];
}

- (void)_registerMaintenanceWorkActivity
{
  v3 = +[TRILaunchDaemonActivityDescriptor maintenanceWorkDescriptor];
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__TRIXPCActivityManager__registerMaintenanceWorkActivity__block_invoke;
  v5[3] = &unk_279DE00F8;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__TRIXPCActivityManager__registerMaintenanceWorkActivity__block_invoke_2;
  v4[3] = &unk_279DE0030;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v3 checkInBlock:v5 asyncHandler:v4];
}

void __57__TRIXPCActivityManager__registerMaintenanceWorkActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = +[TRIXPCActivityCriteria maintenanceCriteria];
  v4 = *(a1 + 32);
  v5 = +[TRILaunchDaemonActivityDescriptor maintenanceWorkDescriptor];
  v6 = [v5 name];
  [v4 _setJitterForXPCActivity:v3 withLabel:v6 replacementCriteria:v7];
}

- (void)_registerPostUpgradeActivity
{
  v3 = +[TRILaunchDaemonActivityDescriptor postUpgradeDescriptor];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__TRIXPCActivityManager__registerPostUpgradeActivity__block_invoke;
  v4[3] = &unk_279DE0030;
  v4[4] = self;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v3 checkInBlock:0 asyncHandler:v4];
}

void __53__TRIXPCActivityManager__registerPostUpgradeActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TRIXPCActivityManager__registerPostUpgradeActivity__block_invoke_2;
  block[3] = &unk_279DE0008;
  block[4] = v4;
  v10 = &v11;
  v6 = v3;
  v9 = v6;
  dispatch_sync(v5, block);
  if ((v12[3] & 1) == 0)
  {
    v7 = [v6 completion];
    v7[2](v7, 1);
  }

  _Block_object_dispose(&v11, 8);
}

void __53__TRIXPCActivityManager__registerPostUpgradeActivity__block_invoke_2(void *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if (*(v1 + 16))
  {
    v3 = *(v1 + 24);
    v4 = TRILogCategory_Server();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "post-upgrade actions triggered", buf, 2u);
      }

      *buf = 0;
      v37 = buf;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__6;
      v40 = __Block_byref_object_dispose__6;
      v41 = 0;
      v6 = [*(a1[4] + 16) keyValueStore];
      v7 = (v37 + 40);
      obj = *(v37 + 5);
      v8 = [TRISetupAssistantFetchUtils setValueInKeyValueStore:v6 key:@"post-upgrade-activity-in-progress" value:&unk_287FC4648 error:&obj];
      objc_storeStrong(v7, obj);

      if (v8)
      {
        out_token = 0;
        v9 = a1[4];
        v10 = *(v9 + 8);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __53__TRIXPCActivityManager__registerPostUpgradeActivity__block_invoke_361;
        handler[3] = &unk_279DE0120;
        handler[4] = v9;
        handler[5] = buf;
        v11 = notify_register_dispatch("com.apple.trial.TaskQueueComplete", &out_token, v10, handler);
        if (v11)
        {
          v12 = TRILogCategory_Server();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *v42 = 134217984;
            v43 = v11;
            _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", v42, 0xCu);
          }
        }

        else
        {
          v15 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
          v16 = *(a1[4] + 24);
          v17 = +[TRIPostUpgradeCleanupTask task];
          [v16 addTask:v17 options:v15];

          v18 = *(a1[4] + 24);
          v19 = objc_opt_new();
          [v18 addTask:v19 options:v15];

          v20 = *(a1[4] + 24);
          v21 = +[TRIRetargetAllTask task];
          [v20 addTask:v21 options:v15];

          v22 = [MEMORY[0x277D736A0] inexpensiveOptions];
          v23 = [TRIScheduleFetchExperimentNotificationsTask taskWithRollbacksOnly:1 downloadOptions:v22];

          *(*(a1[6] + 8) + 24) = 1;
          v24 = a1[4];
          v25 = a1[5];
          v26 = *(v24 + 24);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __53__TRIXPCActivityManager__registerPostUpgradeActivity__block_invoke_367;
          v30[3] = &unk_279DE0080;
          v30[4] = v24;
          v27 = v23;
          v31 = v27;
          v12 = v15;
          v32 = v12;
          [v26 resumeWithXPCActivityDescriptor:v25 executeWhenSuspended:v30];
        }
      }

      else
      {
        v14 = TRILogCategory_Server();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v29 = *(v37 + 5);
          *v42 = 138412546;
          v43 = @"post-upgrade-activity-in-progress";
          v44 = 2114;
          v45 = v29;
          _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Error writing data for %@ key in TRIKVStore: %{public}@. Not proceeding further", v42, 0x16u);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Can't trigger post-upgrade actions, task queue not initialized.", buf, 2u);
      }
    }
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Can't trigger post-upgrade actions, server context not available.", buf, 2u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __53__TRIXPCActivityManager__registerPostUpgradeActivity__block_invoke_361(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "task queue completed in asynch handler of post-upgrade. Updating KV store to indicate the activity is no longer in progress", buf, 2u);
  }

  v5 = [*(*(a1 + 32) + 16) keyValueStore];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [TRISetupAssistantFetchUtils setValueInKeyValueStore:v5 key:@"post-upgrade-activity-in-progress" value:&unk_287FC4660 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (v7)
  {
    notify_cancel(a2);
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v13 = @"post-upgrade-activity-in-progress";
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Error writing data for %@ key in TRIKVStore: %{public}@. Not proceeding further", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_registerPostUpgradeActivityRequireInexpensiveNetworking
{
  v3 = +[TRILaunchDaemonActivityDescriptor postUpgradeDescriptorRequireInexpensiveNetworking];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __81__TRIXPCActivityManager__registerPostUpgradeActivityRequireInexpensiveNetworking__block_invoke;
  v4[3] = &unk_279DE0030;
  v4[4] = self;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v3 checkInBlock:0 asyncHandler:v4];
}

void __81__TRIXPCActivityManager__registerPostUpgradeActivityRequireInexpensiveNetworking__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__TRIXPCActivityManager__registerPostUpgradeActivityRequireInexpensiveNetworking__block_invoke_2;
  block[3] = &unk_279DE0148;
  block[4] = v4;
  v6 = v3;
  v9 = v6;
  v10 = &v11;
  dispatch_sync(v5, block);
  if ((v12[3] & 1) == 0)
  {
    v7 = [v6 completion];
    v7[2](v7, 1);
  }

  _Block_object_dispose(&v11, 8);
}

void __81__TRIXPCActivityManager__registerPostUpgradeActivityRequireInexpensiveNetworking__block_invoke_2(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if (*(v1 + 16))
  {
    v3 = *(v1 + 24);
    v4 = TRILogCategory_Server();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "post-upgrade-require-inexpensive-networking actions triggered", buf, 2u);
      }

      *buf = 0;
      v26 = buf;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__6;
      v29 = __Block_byref_object_dispose__6;
      v30 = 0;
      v6 = [*(a1[4] + 16) keyValueStore];
      v7 = (v26 + 40);
      obj = *(v26 + 5);
      v8 = [TRISetupAssistantFetchUtils setValueInKeyValueStore:v6 key:@"post-upgrade-require-inexpensive-networking-activity-in-progress" value:&unk_287FC4648 error:&obj];
      objc_storeStrong(v7, obj);

      if (v8)
      {
        out_token = 0;
        v9 = a1[4];
        v10 = *(v9 + 8);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __81__TRIXPCActivityManager__registerPostUpgradeActivityRequireInexpensiveNetworking__block_invoke_368;
        v22[3] = &unk_279DE0120;
        v22[4] = v9;
        v22[5] = buf;
        v11 = notify_register_dispatch("com.apple.trial.TaskQueueComplete", &out_token, v10, v22);
        if (v11)
        {
          v12 = TRILogCategory_Server();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *v31 = 134217984;
            v32 = v11;
            _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", v31, 0xCu);
          }
        }

        else
        {
          v12 = [MEMORY[0x277D737A8] callerBundleId];
          v15 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
          v16 = [TRITaskAttributionInternalInsecure alloc];
          v17 = [MEMORY[0x277D736A0] inexpensiveOptions];
          v18 = [(TRITaskAttributionInternalInsecure *)v16 initWithTeamIdentifier:0 triCloudKitContainer:1 applicationBundleIdentifier:v12 networkOptions:v17];

          v19 = [TRISelectRolloutNotificationListTask taskWithNamespaceNames:0 taskAttribution:v18];
          [*(a1[4] + 24) addTask:v19 options:v15];
          [*(a1[4] + 24) resumeWithXPCActivityDescriptor:a1[5] executeWhenSuspended:0];
          *(*(a1[6] + 8) + 24) = 1;
        }
      }

      else
      {
        v14 = TRILogCategory_Server();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v21 = *(v26 + 5);
          *v31 = 138412546;
          v32 = @"post-upgrade-require-inexpensive-networking-activity-in-progress";
          v33 = 2114;
          v34 = v21;
          _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Error writing data for %@ key in TRIKVStore: %{public}@. Not proceeding further", v31, 0x16u);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Can't trigger post-upgrade require inexpensive networking actions, task queue not initialized.", buf, 2u);
      }
    }
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Can't trigger post-upgrade require inexpensive networking actions, server context not available.", buf, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __81__TRIXPCActivityManager__registerPostUpgradeActivityRequireInexpensiveNetworking__block_invoke_368(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "task queue completed in asynch handler of post-upgrade-require-inexpensive-networking. Updating KV store to indicate the activity is no longer in progress", buf, 2u);
  }

  v5 = [*(*(a1 + 32) + 16) keyValueStore];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [TRISetupAssistantFetchUtils setValueInKeyValueStore:v5 key:@"post-upgrade-require-inexpensive-networking-activity-in-progress" value:&unk_287FC4660 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (v7)
  {
    notify_cancel(a2);
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v13 = @"post-upgrade-require-inexpensive-networking-activity-in-progress";
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Error writing data for %@ key in TRIKVStore: %{public}@. Not proceeding further", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)registerSetupAssistantFetchActivity
{
  v3 = +[TRILaunchDaemonActivityDescriptor setupAssistantFetchDescriptor];
  v4[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__TRIXPCActivityManager_registerSetupAssistantFetchActivity__block_invoke;
  v5[3] = &unk_279DE00F8;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__TRIXPCActivityManager_registerSetupAssistantFetchActivity__block_invoke_376;
  v4[3] = &unk_279DE0030;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v3 checkInBlock:v5 asyncHandler:v4];
}

void __60__TRIXPCActivityManager_registerSetupAssistantFetchActivity__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "setup-assistant-fetch activity check-in", buf, 2u);
  }

  v5 = xpc_activity_copy_criteria(v3);
  v6 = *(*(a1 + 32) + 16);
  if (v6)
  {
    v7 = [v6 keyValueStore];
    v31 = 0;
    v8 = [TRISetupAssistantFetchUtils getValueInKeyValueStore:v7 key:@"setup-assistant-fetch-activity-deadline-date" error:&v31];
    v9 = v31;

    if (v8)
    {
      if (![v8 isEqualToNumber:&unk_287FC4678])
      {
        v13 = MEMORY[0x277D86270];
        if (v5 && xpc_dictionary_get_count(v5))
        {
          v14 = v13;
        }

        else
        {
          v15 = TRILogCategory_Server();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "criteria is nil or has zero count when trying to register setup-assistant-fetch activity to run", buf, 2u);
          }

          v16 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_BOOL(v16, *MEMORY[0x277D86360], 0);
          xpc_dictionary_set_BOOL(v16, *MEMORY[0x277D86230], 1);
          xpc_dictionary_set_BOOL(v16, *MEMORY[0x277D86380], 1);
          xpc_dictionary_set_BOOL(v16, *MEMORY[0x277D86390], 1);
          xpc_dictionary_set_string(v16, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
          xpc_dictionary_set_int64(v16, *MEMORY[0x277D86250], 0);
          v14 = v13;
          xpc_dictionary_set_int64(v16, *v13, 21600);
          xpc_dictionary_set_int64(v16, *MEMORY[0x277D862E8], 700000000);
          xpc_dictionary_set_BOOL(v16, *MEMORY[0x277D863C0], 1);
          v5 = v16;
        }

        v17 = objc_alloc(MEMORY[0x277CBEAA8]);
        [v8 doubleValue];
        v18 = [v17 initWithTimeIntervalSince1970:?];
        v19 = [MEMORY[0x277CBEAA8] now];
        [(__CFString *)v18 timeIntervalSinceDate:v19];
        v21 = v20;
        v22 = TRILogCategory_Server();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v18;
          v34 = 2048;
          v35 = v21;
          _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "The deadline to run setup-assistant-fetch activity is: %@. Setting grace period to: %lld", buf, 0x16u);
        }

        xpc_dictionary_set_int64(v5, *v14, v21);
        v23 = *(*(a1 + 32) + 16);
        v30 = 0;
        v24 = [TRISetupAssistantFetchUtils stopSetupAssistantFetchWithServerContext:v23 namespaceNames:0 error:&v30];
        v25 = v30;
        v26 = v25;
        if (v24)
        {
          v27 = TRILogCategory_Server();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Unregistering setup-assistant-fetch activity to run", buf, 2u);
          }

          xpc_activity_unregister("com.apple.triald.setup-assistant-fetch");
        }

        else if (v25)
        {
          v28 = TRILogCategory_Server();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v33 = v26;
            _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Error checking if the setup-assistant-fetch activity is needed to run in registerSetupAssistantFetchActivity: %{public}@", buf, 0xCu);
          }
        }

        else
        {
          xpc_activity_set_criteria(v3, v5);
        }

        goto LABEL_36;
      }

      v10 = TRILogCategory_Server();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

        xpc_activity_unregister("com.apple.triald.setup-assistant-fetch");
LABEL_36:

        goto LABEL_37;
      }

      *buf = 0;
      v11 = "Unregistering setup-assistant-fetch activity in check-in because the activity already registered. Not proceeding further";
    }

    else
    {
      if (v9)
      {
        v12 = TRILogCategory_Server();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v33 = @"setup-assistant-fetch-activity-deadline-date";
          v34 = 2114;
          v35 = v9;
          _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Error reading data for %@ key in TRIKVStore: %{public}@. Not proceeding further", buf, 0x16u);
        }
      }

      v10 = TRILogCategory_Server();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v11 = "setupAssistantFetchActivityRegistrationKey not set, unregistering setup-assistant-fetch";
    }

    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    goto LABEL_17;
  }

  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Can't register setup assistant activity, server context not available.", buf, 2u);
  }

LABEL_37:

  v29 = *MEMORY[0x277D85DE8];
}

void __60__TRIXPCActivityManager_registerSetupAssistantFetchActivity__block_invoke_376(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TRIXPCActivityManager_registerSetupAssistantFetchActivity__block_invoke_2;
  block[3] = &unk_279DE0148;
  block[4] = v4;
  v6 = v3;
  v9 = v6;
  v10 = &v11;
  dispatch_sync(v5, block);
  if ((v12[3] & 1) == 0)
  {
    v7 = [v6 completion];
    v7[2](v7, 1);
  }

  _Block_object_dispose(&v11, 8);
}

void __60__TRIXPCActivityManager_registerSetupAssistantFetchActivity__block_invoke_2(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  if (!*(v1 + 16))
  {
    v5 = TRILogCategory_Server();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v12 = "Can't trigger setup-assistant-fetch actions, server context not available.";
LABEL_12:
    _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_15;
  }

  v3 = *(v1 + 24);
  v4 = TRILogCategory_Server();
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v12 = "Can't trigger setup-assistant-fetch actions, task queue not initialized.";
    goto LABEL_12;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "setup-assistant-fetch actions triggered", buf, 2u);
  }

  v6 = [TRISetupAssistantFetchUtils registerFinalizeBlockForDownloadLatencyTelemetryWithServerContext:*(a1[4] + 16)];
  out_token = 0;
  v7 = a1[4];
  v8 = *(v7 + 8);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__TRIXPCActivityManager_registerSetupAssistantFetchActivity__block_invoke_377;
  handler[3] = &unk_279DE0170;
  handler[4] = v7;
  v5 = v6;
  v17 = v5;
  v9 = notify_register_dispatch("com.apple.trial.TaskQueueComplete", &out_token, v8, handler);
  if (v9)
  {
    v10 = v9;
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = v10;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", buf, 0xCu);
    }
  }

  else
  {
    v11 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
    v13 = *(a1[4] + 24);
    v14 = +[TRISetupAssistantFetchTask task];
    [v13 addTask:v14 options:v11];

    [*(a1[4] + 24) resumeWithXPCActivityDescriptor:a1[5] executeWhenSuspended:0];
    *(*(a1[6] + 8) + 24) = 1;
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
}

void __60__TRIXPCActivityManager_registerSetupAssistantFetchActivity__block_invoke_377(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "task queue completed in asynch handler of setup-assistant-fetch", buf, 2u);
  }

  v5 = [*(*(a1 + 32) + 16) keyValueStore];
  v31 = 0;
  v6 = [TRISetupAssistantFetchUtils getValueInKeyValueStore:v5 key:@"setup-assistant-fetch-activity-deadline-date" error:&v31];
  v7 = v31;

  if (v6 && ([v6 isEqualToNumber:&unk_287FC4678] & 1) == 0)
  {
    v23 = v7;
    v24 = v6;
    v25 = a2;
    v8 = [*(a1 + 40) builtTelemetry];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [*(*(a1 + 32) + 16) client];
          v15 = [v14 logger];
          v16 = [*(*(a1 + 32) + 16) client];
          v17 = [v16 trackingId];
          [v15 logWithTrackingId:v17 metrics:0 dimensions:0 trialSystemTelemetry:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v10);
    }

    a2 = v25;
    v6 = v24;
    v7 = v23;
  }

  v18 = [*(*(a1 + 32) + 16) keyValueStore];
  v26 = v7;
  v19 = [TRISetupAssistantFetchUtils setValueInKeyValueStore:v18 key:@"setup-assistant-fetch-activity-deadline-date" value:&unk_287FC4678 error:&v26];
  v20 = v26;

  if (v19)
  {
    notify_cancel(a2);
  }

  else
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = @"setup-assistant-fetch-activity-deadline-date";
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Error writing data for %@ key in TRIKVStore: %{public}@. Not proceeding further", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_registerHotfixTargetingActivity
{
  v3 = +[TRILaunchDaemonActivityDescriptor clientHotfixCellularAllowBatteryDescriptor];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__TRIXPCActivityManager__registerHotfixTargetingActivity__block_invoke;
  v6[3] = &unk_279DE0030;
  v6[4] = self;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v3 checkInBlock:0 asyncHandler:v6];

  v4 = +[TRILaunchDaemonActivityDescriptor clientHotfixWifiDescriptor];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__TRIXPCActivityManager__registerHotfixTargetingActivity__block_invoke_379;
  v5[3] = &unk_279DE0030;
  v5[4] = self;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v4 checkInBlock:0 asyncHandler:v5];
}

void __57__TRIXPCActivityManager__registerHotfixTargetingActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__TRIXPCActivityManager__registerHotfixTargetingActivity__block_invoke_2;
  block[3] = &unk_279DE0148;
  block[4] = v4;
  v6 = v3;
  v9 = v6;
  v10 = &v11;
  dispatch_sync(v5, block);
  if ((v12[3] & 1) == 0)
  {
    v7 = [v6 completion];
    v7[2](v7, 1);
  }

  _Block_object_dispose(&v11, 8);
}

void __57__TRIXPCActivityManager__registerHotfixTargetingActivity__block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = TRILogCategory_Server();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(Activity Manager) Hotfix running cellular activity", v5, 2u);
    }

    [*(a1[4] + 24) resumeWithXPCActivityDescriptor:a1[5] executeWhenSuspended:0];
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Can't carry out hotfix targeting activity, task queue not initialized.", buf, 2u);
    }
  }
}

void __57__TRIXPCActivityManager__registerHotfixTargetingActivity__block_invoke_379(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__TRIXPCActivityManager__registerHotfixTargetingActivity__block_invoke_2_380;
  block[3] = &unk_279DE0148;
  block[4] = v4;
  v6 = v3;
  v9 = v6;
  v10 = &v11;
  dispatch_sync(v5, block);
  if ((v12[3] & 1) == 0)
  {
    v7 = [v6 completion];
    v7[2](v7, 1);
  }

  _Block_object_dispose(&v11, 8);
}

void __57__TRIXPCActivityManager__registerHotfixTargetingActivity__block_invoke_2_380(void *a1)
{
  v2 = *(a1[4] + 24);
  v3 = TRILogCategory_Server();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(Activity Manager) Hotfix running wifi activity", v5, 2u);
    }

    [*(a1[4] + 24) resumeWithXPCActivityDescriptor:a1[5] executeWhenSuspended:0];
    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Can't carry out hotfix targeting activity, task queue not initialized.", buf, 2u);
    }
  }
}

- (void)_registerPlaceholderTaskQueueActivity
{
  v2 = +[TRILaunchDaemonActivityDescriptor taskQueueDescriptor];
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v2 checkInBlock:0 asyncHandler:&__block_literal_global_6];
}

void __62__TRIXPCActivityManager__registerPlaceholderTaskQueueActivity__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 completion];
  v2[2](v2, 1);
}

- (void)_registerClientTriggeredActivities
{
  v3 = +[TRILaunchDaemonActivityDescriptor clientTriggeredCellularDescriptor];
  v7[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke;
  v8[3] = &unk_279DE00F8;
  v8[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke_2;
  v7[3] = &unk_279DE0030;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v3 checkInBlock:v8 asyncHandler:v7];

  v4 = +[TRILaunchDaemonActivityDescriptor clientTriggeredWifiDescriptor];
  v5[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke_4;
  v6[3] = &unk_279DE00F8;
  v6[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke_5;
  v5[3] = &unk_279DE0030;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v4 checkInBlock:v6 asyncHandler:v5];
}

void __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = +[TRIXPCActivityCriteria clientTriggeredCellularCriteria];
  v4 = *(a1 + 32);
  v5 = +[TRILaunchDaemonActivityDescriptor clientTriggeredCellularDescriptor];
  v6 = [v5 name];
  [v4 _setJitterForXPCActivity:v3 withLabel:v6 replacementCriteria:v7];
}

void __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke_3;
  v7[3] = &unk_279DDF7A0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = +[TRIXPCActivityCriteria clientTriggeredWifiCriteria];
  v4 = *(a1 + 32);
  v5 = +[TRILaunchDaemonActivityDescriptor clientTriggeredWifiDescriptor];
  v6 = [v5 name];
  [v4 _setJitterForXPCActivity:v3 withLabel:v6 replacementCriteria:v7];
}

void __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__TRIXPCActivityManager__registerClientTriggeredActivities__block_invoke_6;
  v7[3] = &unk_279DDF7A0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_registerDeactivationBGST
{
  Helper_x8__OBJC_CLASS___BGSystemTaskScheduler = gotLoadHelper_x8__OBJC_CLASS___BGSystemTaskScheduler(v2);
  sharedScheduler = [*(v5 + 2064) sharedScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__TRIXPCActivityManager__registerDeactivationBGST__block_invoke;
  v7[3] = &unk_279DE01B8;
  v7[4] = self;
  [sharedScheduler registerForTaskWithIdentifier:@"com.apple.triald.deactivation" usingQueue:0 launchHandler:v7];
}

void __50__TRIXPCActivityManager__registerDeactivationBGST__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__TRIXPCActivityManager__registerDeactivationBGST__block_invoke_2;
  v7[3] = &unk_279DDF7A0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __50__TRIXPCActivityManager__registerDeactivationBGST__block_invoke_2(uint64_t a1)
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "Running deactivation BGST", v4, 2u);
  }

  return [*(*(a1 + 32) + 24) resumeWithBGST:*(a1 + 40) executeWhenSuspended:0];
}

@end