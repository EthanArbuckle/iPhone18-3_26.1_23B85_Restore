@interface TRIHotfixRolloutTargetingScheduler
+ (id)_xpcActivityCriteriaWithRunDelay:(double)delay allowAnyNetworkingAndBatteryUsage:(BOOL)usage;
- (TRIHotfixRolloutTargetingScheduler)initWithTaskQueue:(id)queue;
- (void)_scheduleTaskQueueActivityWithDelay:(double)delay allowingAnyNetworkingAndBatteryUsage:(BOOL)usage;
@end

@implementation TRIHotfixRolloutTargetingScheduler

- (TRIHotfixRolloutTargetingScheduler)initWithTaskQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIHotfixRolloutTargetingScheduler.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v11.receiver = self;
  v11.super_class = TRIHotfixRolloutTargetingScheduler;
  v7 = [(TRIHotfixRolloutTargetingScheduler *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_queue, queue);
  }

  return v8;
}

- (void)_scheduleTaskQueueActivityWithDelay:(double)delay allowingAnyNetworkingAndBatteryUsage:(BOOL)usage
{
  usageCopy = usage;
  v7 = [objc_opt_class() _xpcActivityCriteriaWithRunDelay:0 allowAnyNetworkingAndBatteryUsage:delay];
  v8 = +[TRILaunchDaemonActivityDescriptor clientHotfixWifiDescriptor];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __111__TRIHotfixRolloutTargetingScheduler__scheduleTaskQueueActivityWithDelay_allowingAnyNetworkingAndBatteryUsage___block_invoke;
  v17[3] = &unk_279DE00F8;
  v9 = v7;
  v18 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __111__TRIHotfixRolloutTargetingScheduler__scheduleTaskQueueActivityWithDelay_allowingAnyNetworkingAndBatteryUsage___block_invoke_24;
  v16[3] = &unk_279DE0030;
  v16[4] = self;
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v8 checkInBlock:v17 asyncHandler:v16];

  if (usageCopy)
  {
    v10 = [objc_opt_class() _xpcActivityCriteriaWithRunDelay:1 allowAnyNetworkingAndBatteryUsage:delay];
    v11 = +[TRILaunchDaemonActivityDescriptor clientHotfixCellularAllowBatteryDescriptor];
    v13[4] = self;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __111__TRIHotfixRolloutTargetingScheduler__scheduleTaskQueueActivityWithDelay_allowingAnyNetworkingAndBatteryUsage___block_invoke_26;
    v14[3] = &unk_279DE00F8;
    v15 = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __111__TRIHotfixRolloutTargetingScheduler__scheduleTaskQueueActivityWithDelay_allowingAnyNetworkingAndBatteryUsage___block_invoke_27;
    v13[3] = &unk_279DE0030;
    v12 = v10;
    [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v11 checkInBlock:v14 asyncHandler:v13];
  }
}

void __111__TRIHotfixRolloutTargetingScheduler__scheduleTaskQueueActivityWithDelay_allowingAnyNetworkingAndBatteryUsage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Hotfix (wifi) checking in", v5, 2u);
  }

  xpc_activity_set_criteria(v3, *(a1 + 32));
}

void __111__TRIHotfixRolloutTargetingScheduler__scheduleTaskQueueActivityWithDelay_allowingAnyNetworkingAndBatteryUsage___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(Scheduler) Hotfix running wifi activity", v6, 2u);
  }

  v5 = [*(a1 + 32) queue];
  [v5 resumeWithXPCActivityDescriptor:v3 executeWhenSuspended:0];
}

void __111__TRIHotfixRolloutTargetingScheduler__scheduleTaskQueueActivityWithDelay_allowingAnyNetworkingAndBatteryUsage___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Hotfix (cellular) checking in", v5, 2u);
  }

  xpc_activity_set_criteria(v3, *(a1 + 32));
}

void __111__TRIHotfixRolloutTargetingScheduler__scheduleTaskQueueActivityWithDelay_allowingAnyNetworkingAndBatteryUsage___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(Scheduler) Hotfix running cellular activity", v6, 2u);
  }

  v5 = [*(a1 + 32) queue];
  [v5 resumeWithXPCActivityDescriptor:v3 executeWhenSuspended:0];
}

+ (id)_xpcActivityCriteriaWithRunDelay:(double)delay allowAnyNetworkingAndBatteryUsage:(BOOL)usage
{
  delayCopy = delay;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_int64(v6, *MEMORY[0x277D86250], delayCopy);
  xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86230], usage);
  xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86390], !usage);

  return v6;
}

@end