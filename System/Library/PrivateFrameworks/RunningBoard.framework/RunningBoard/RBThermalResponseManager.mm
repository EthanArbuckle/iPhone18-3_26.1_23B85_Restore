@interface RBThermalResponseManager
+ (id)managerWithDaemonContext:(id)context notificationName:(id)name;
+ (int64_t)_thermalConditionLevelForThermalLevel:(unint64_t)level notificationName:(id)name;
- (id)_initWithDaemonContext:(id)context notificationName:(id)name;
- (void)_queue_updateAssertion;
- (void)_takeAssertionForConditionLevel:(int64_t)level completion:(id)completion;
@end

@implementation RBThermalResponseManager

+ (int64_t)_thermalConditionLevelForThermalLevel:(unint64_t)level notificationName:(id)name
{
  nameCopy = name;
  if (![nameCopy isEqual:@"com.apple.system.thermalpressurelevel"])
  {
    if ([nameCopy isEqual:@"com.apple.system.thermalmitigation"])
    {
      if (level < 7)
      {
        v11 = 0;
        goto LABEL_25;
      }

      if (level < 0xB)
      {
        v11 = 830;
        goto LABEL_25;
      }

      if (level < 0xE)
      {
        v11 = 840;
        goto LABEL_25;
      }

      if (level == 14)
      {
        v11 = 850;
        goto LABEL_25;
      }
    }

    v11 = 860;
    goto LABEL_25;
  }

  v6 = 850;
  v7 = 860;
  v8 = 860;
  if (level != 50)
  {
    v8 = 0;
  }

  if (level != 40)
  {
    v7 = v8;
  }

  if (level != 30)
  {
    v6 = v7;
  }

  v9 = 830;
  v10 = 840;
  if (level != 20)
  {
    v10 = 0;
  }

  if (level != 10)
  {
    v9 = v10;
  }

  if (level <= 29)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

LABEL_25:

  return v11;
}

- (void)_takeAssertionForConditionLevel:(int64_t)level completion:(id)completion
{
  v28[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = MEMORY[0x277D46DD0];
  process = [(RBDaemonContextProviding *)self->_daemonContext process];
  v9 = [v7 identifierWithClientPid:{objc_msgSend(process, "rbs_pid")}];

  v10 = [MEMORY[0x277D46E18] attributeWithCondition:@"therm" value:level];
  v28[0] = v10;
  v11 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:1];
  v28[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

  v13 = MEMORY[0x277D46DC8];
  systemTarget = [MEMORY[0x277D47008] systemTarget];
  v15 = [v13 descriptorWithIdentifier:v9 target:systemTarget explanation:@"Thermal Condition" attributes:v12];

  process2 = [(RBDaemonContextProviding *)self->_daemonContext process];
  v17 = [RBAssertionAcquisitionContext contextForProcess:process2 withDescriptor:v15 daemonContext:self->_daemonContext];

  v18 = self->_currentAssertion;
  currentAssertion = self->_currentAssertion;
  self->_currentAssertion = v9;
  v20 = v9;

  assertionManager = [(RBDaemonContextProviding *)self->_daemonContext assertionManager];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__RBThermalResponseManager__takeAssertionForConditionLevel_completion___block_invoke;
  v25[3] = &unk_279B33078;
  v26 = v18;
  v27 = completionCopy;
  v22 = v18;
  v23 = completionCopy;
  [assertionManager acquireAssertionWithContext:v17 completion:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void __71__RBThermalResponseManager__takeAssertionForConditionLevel_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = rbs_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __71__RBThermalResponseManager__takeAssertionForConditionLevel_completion___block_invoke_cold_1(v3, v4);
    }
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)_queue_updateAssertion
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = self;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "In RBThermalResponseManager, notify_get_state failed with %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __50__RBThermalResponseManager__queue_updateAssertion__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = a2;
    v4 = [v2 assertionManager];
    [v4 invalidateAssertionWithIdentifier:v3];
  }
}

- (id)_initWithDaemonContext:(id)context notificationName:(id)name
{
  contextCopy = context;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = RBThermalResponseManager;
  v9 = [(RBThermalResponseManager *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemonContext, context);
    objc_storeStrong(&v10->_notificationName, name);
    uTF8String = [nameCopy UTF8String];
    mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __68__RBThermalResponseManager__initWithDaemonContext_notificationName___block_invoke;
    handler[3] = &unk_279B330C8;
    v13 = v10;
    v19 = v13;
    v14 = notify_register_dispatch(uTF8String, &v10->_notifyToken, mEMORY[0x277D47028], handler);

    if (v14)
    {
      v15 = rbs_general_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [RBThermalResponseManager _initWithDaemonContext:v14 notificationName:v15];
      }
    }

    v16 = v13;
  }

  return v10;
}

+ (id)managerWithDaemonContext:(id)context notificationName:(id)name
{
  nameCopy = name;
  contextCopy = context;
  v7 = [[RBThermalResponseManager alloc] _initWithDaemonContext:contextCopy notificationName:nameCopy];

  return v7;
}

void __71__RBThermalResponseManager__takeAssertionForConditionLevel_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "In RBThermalResponseManager, acqusition failed with %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_initWithDaemonContext:(int)a1 notificationName:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "In RBThermalResponseManager, notify_register_dispatch failed with %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end