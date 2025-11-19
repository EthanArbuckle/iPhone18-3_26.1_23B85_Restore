@interface RBThrottleBestEffortNetworkingManager
- (BOOL)isThrottleBestEffortNetworkingEnabled;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBThrottleBestEffortNetworkingManager)init;
- (void)_updateThrottleBestEffortNetworking;
- (void)addProcess:(id)a3;
- (void)didUpdateProcessStates:(id)a3;
- (void)removeProcess:(id)a3;
@end

@implementation RBThrottleBestEffortNetworkingManager

- (void)_updateThrottleBestEffortNetworking
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 36));
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v2 = *(a1 + 24);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke;
    v10[3] = &unk_279B33008;
    v10[4] = a1;
    v10[5] = &v11;
    [v2 enumerateWithBlock:v10];
    if (*(v12 + 24) != *(a1 + 32))
    {
      v3 = rbs_best_effort_networking_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v12 + 24))
        {
          v4 = "enabled";
        }

        else
        {
          v4 = "disabled";
        }

        *buf = 136315138;
        v16 = v4;
        _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_DEFAULT, "Throttle best effort networking set to %s", buf, 0xCu);
      }

      v5 = *(v12 + 24);
      *(a1 + 32) = v5;
      v6 = *(a1 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke_10;
      block[3] = &__block_descriptor_36_e5_v8__0l;
      v9 = v5;
      dispatch_async(v6, block);
    }

    os_unfair_lock_unlock((a1 + 36));
    _Block_object_dispose(&v11, 8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (RBThrottleBestEffortNetworkingManager)init
{
  v11.receiver = self;
  v11.super_class = RBThrottleBestEffortNetworkingManager;
  v2 = [(RBThrottleBestEffortNetworkingManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(RBProcessMap);
    stateMap = v3->_stateMap;
    v3->_stateMap = v4;

    v6 = objc_alloc_init(RBProcessIndex);
    processIndex = v3->_processIndex;
    v3->_processIndex = v6;

    v3->_throttleBestEffortNetworking = 0;
    v8 = [MEMORY[0x277D47028] createBackgroundQueue:@"RBThrottleBestEffortNetworkingManager"];
    queue = v3->_queue;
    v3->_queue = v8;
  }

  return v3;
}

- (void)didUpdateProcessStates:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 updatedState];
        v11 = [v9 originalState];
        v12 = [v11 throttleBestEffortNetworking];
        v13 = [v10 throttleBestEffortNetworking];

        if (v12 != v13)
        {
          v14 = [v9 identity];
          v15 = [v10 throttleBestEffortNetworking];
          stateMap = self->_stateMap;
          if (v15)
          {
            v17 = [v10 copy];
            v18 = [(RBProcessMap *)stateMap setValue:v17 forIdentity:v14];
          }

          else
          {
            [(RBProcessMap *)self->_stateMap removeIdentity:v14];
          }

          v6 = 1;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
    if (v6)
    {
      [(RBThrottleBestEffortNetworkingManager *)self _updateThrottleBestEffortNetworking];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addProcess:(id)a3
{
  [(RBProcessIndex *)self->_processIndex addProcess:a3];

  [(RBThrottleBestEffortNetworkingManager *)self _updateThrottleBestEffortNetworking];
}

- (void)removeProcess:(id)a3
{
  [(RBProcessIndex *)self->_processIndex removeProcess:a3];

  [(RBThrottleBestEffortNetworkingManager *)self _updateThrottleBestEffortNetworking];
}

- (BOOL)isThrottleBestEffortNetworkingEnabled
{
  os_unfair_lock_lock(&self->_lock);
  throttleBestEffortNetworking = self->_throttleBestEffortNetworking;
  os_unfair_lock_unlock(&self->_lock);
  return throttleBestEffortNetworking;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [(RBProcessMap *)self->_stateMap dictionary];
  v6 = [v5 entriesToStringWithIndent:1 debug:1];
  v7 = [v3 initWithFormat:@"<%@| process states:{\n\t%@\n\t}>", v4, v6];

  return v7;
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

uint64_t __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(*(a1 + 32) + 16) containsIdentity:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke_10(uint64_t a1)
{
  if (sysctlbyname("kern.ipc.throttle_best_effort", 0, 0, (a1 + 32), 4uLL) && *__error() != 2)
  {
    v1 = rbs_best_effort_networking_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke_10_cold_1(v1);
    }
  }
}

void __76__RBThrottleBestEffortNetworkingManager__updateThrottleBestEffortNetworking__block_invoke_10_cold_1(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v6[0] = 67109378;
  v6[1] = v2;
  v7 = 2080;
  v8 = v4;
  _os_log_error_impl(&dword_262485000, a1, OS_LOG_TYPE_ERROR, "Error applying throttle best effort with error %d: %s", v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end