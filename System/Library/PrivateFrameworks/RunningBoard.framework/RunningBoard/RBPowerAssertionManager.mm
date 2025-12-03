@interface RBPowerAssertionManager
- (BOOL)_unitTest_hasPowerAssertionForProcess:(id)process;
- (BOOL)_unitTest_hasSystemPowerAssertion;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBPowerAssertionManager)init;
- (RBPowerAssertionManagerDelegate)delegate;
- (id)_unitTest_nameOfPowerAssertionForProcess:(id)process;
- (id)_unitTest_nameOfPowerAssertionForSystem;
- (uint64_t)_queue_invalidateAssertion:(uint64_t)result;
- (void)_queue_didAcquireAssertion;
- (void)_queue_updateProcessAssertion:(void *)assertion withState:;
- (void)_queue_willInvalidateAssertion;
- (void)addProcess:(id)process;
- (void)applySystemState:(id)state;
- (void)dealloc;
- (void)didUpdateProcessStates:(id)states;
- (void)removeProcess:(id)process;
- (void)removeStateForProcessIdentity:(id)identity;
@end

@implementation RBPowerAssertionManager

- (void)_queue_didAcquireAssertion
{
  if (self)
  {
    v2 = *(self + 32);
    *(self + 32) = v2 + 1;
    if (!v2)
    {
      v3 = rbs_power_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3(&dword_262485000, v4, v5, "Acquired first power assertion", v6, v7, v8, v9, 0);
      }

      WeakRetained = objc_loadWeakRetained((self + 48));
      [WeakRetained powerAssertionManagerDidPreventIdleSleep:self];
    }
  }
}

- (void)_queue_willInvalidateAssertion
{
  if (self)
  {
    v2 = *(self + 32);
    if (!v2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__queue_willInvalidateAssertion object:self file:@"RBPowerAssertionManager.m" lineNumber:461 description:@"Unbalanced attempt to release a power assertion"];

      v2 = *(self + 32);
    }

    v3 = v2 - 1;
    *(self + 32) = v3;
    if (!v3)
    {
      v4 = rbs_power_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_3(&dword_262485000, v5, v6, "Released last power assertion", v7, v8, v9, v10, 0);
      }

      WeakRetained = objc_loadWeakRetained((self + 48));
      [WeakRetained powerAssertionManagerDidAllowIdleSleep:self];
    }
  }
}

- (RBPowerAssertionManager)init
{
  v12.receiver = self;
  v12.super_class = RBPowerAssertionManager;
  v2 = [(RBPowerAssertionManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D47028] createBackgroundQueue:@"RBPowerAssertionManager"];
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(RBProcessMap);
    stateMap = v2->_stateMap;
    v2->_stateMap = v5;

    v7 = objc_alloc_init(RBProcessMap);
    assertionMap = v2->_assertionMap;
    v2->_assertionMap = v7;

    v9 = objc_alloc_init(RBSystemPowerAssertion);
    systemAssertion = v2->_systemAssertion;
    v2->_systemAssertion = v9;
  }

  return v2;
}

- (NSString)debugDescription
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RBPowerAssertionManager_debugDescription__block_invoke;
  block[3] = &unk_279B32C88;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v12;
  block[7] = &v22;
  dispatch_sync(queue, block);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [objc_opt_class() description];
  v6 = v5;
  v7 = &stru_287507640;
  v8 = @"system=";
  if (*(v19 + 24))
  {
    v7 = v13[5];
  }

  else
  {
    v8 = &stru_287507640;
  }

  v9 = [v4 initWithFormat:@"<%@| assertiond:[\n\t%@%@%@\n\t]>", v5, v8, v7, v23[5]];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

- (void)didUpdateProcessStates:(id)states
{
  statesCopy = states;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RBPowerAssertionManager_didUpdateProcessStates___block_invoke;
  v7[3] = &unk_279B32B80;
  v8 = statesCopy;
  selfCopy = self;
  v6 = statesCopy;
  dispatch_async(queue, v7);
}

void __50__RBPowerAssertionManager_didUpdateProcessStates___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 identity];
        v9 = [v7 updatedState];
        v10 = [*(*(a1 + 40) + 8) setValue:v9 forIdentity:v8];
        v11 = *(a1 + 40);
        v12 = [*(v11 + 16) valueForIdentity:v8];
        [(RBPowerAssertionManager *)v11 _queue_updateProcessAssertion:v12 withState:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_updateProcessAssertion:(void *)assertion withState:
{
  if (self)
  {
    if (a2)
    {
      v5 = a2;
      objc_setProperty_nonatomic_copy(v5, v6, assertion, 48);
      v7[4] = self;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __67__RBPowerAssertionManager__queue_updateProcessAssertion_withState___block_invoke;
      v8[3] = &unk_279B32CB0;
      v8[4] = self;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __67__RBPowerAssertionManager__queue_updateProcessAssertion_withState___block_invoke_2;
      v7[3] = &unk_279B32CB0;
      [(RBPowerAssertion *)v5 updateWithAcquisitionHandler:v8 invalidationHander:v7];
    }
  }
}

- (void)removeStateForProcessIdentity:(id)identity
{
  identityCopy = identity;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RBPowerAssertionManager_removeStateForProcessIdentity___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_async(queue, v7);
}

uint64_t __57__RBPowerAssertionManager_removeStateForProcessIdentity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(v2 + 16) valueForIdentity:*(a1 + 40)];
  [(RBPowerAssertionManager *)v2 _queue_invalidateAssertion:v3];

  [*(*(a1 + 32) + 16) removeIdentity:*(a1 + 40)];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);

  return [v5 removeIdentity:v4];
}

- (uint64_t)_queue_invalidateAssertion:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      return [(RBPowerAssertionManager *)v2 _queue_invalidateAssertion:a2];
    }
  }

  return result;
}

- (void)applySystemState:(id)state
{
  stateCopy = state;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RBPowerAssertionManager_applySystemState___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(queue, v7);
}

- (void)addProcess:(id)process
{
  processCopy = process;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__RBPowerAssertionManager_addProcess___block_invoke;
  v7[3] = &unk_279B32B80;
  v8 = processCopy;
  selfCopy = self;
  v6 = processCopy;
  dispatch_async(queue, v7);
}

- (void)removeProcess:(id)process
{
  processCopy = process;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__RBPowerAssertionManager_removeProcess___block_invoke;
  v7[3] = &unk_279B32B80;
  v8 = processCopy;
  selfCopy = self;
  v6 = processCopy;
  dispatch_async(queue, v7);
}

void __41__RBPowerAssertionManager_removeProcess___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identity];
  v3 = *(*(a1 + 40) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__RBPowerAssertionManager_removeProcess___block_invoke_2;
  v5[3] = &unk_279B32CD8;
  v6 = *(a1 + 32);
  v4 = [v3 removeValueForIdentity:v2 withPredicate:v5];
  [(RBPowerAssertionManager *)*(a1 + 40) _queue_invalidateAssertion:v4];
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)_unitTest_hasSystemPowerAssertion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__RBPowerAssertionManager__unitTest_hasSystemPowerAssertion__block_invoke;
  v5[3] = &unk_279B32D00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_unitTest_hasPowerAssertionForProcess:(id)process
{
  processCopy = process;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RBPowerAssertionManager__unitTest_hasPowerAssertionForProcess___block_invoke;
  block[3] = &unk_279B32D28;
  v9 = processCopy;
  v10 = &v11;
  block[4] = self;
  v6 = processCopy;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (id)_unitTest_nameOfPowerAssertionForSystem
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__RBPowerAssertionManager__unitTest_nameOfPowerAssertionForSystem__block_invoke;
  v5[3] = &unk_279B32D00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_unitTest_nameOfPowerAssertionForProcess:(id)process
{
  processCopy = process;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RBPowerAssertionManager__unitTest_nameOfPowerAssertionForProcess___block_invoke;
  block[3] = &unk_279B32D28;
  v10 = processCopy;
  v11 = &v12;
  block[4] = self;
  v6 = processCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (RBPowerAssertionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(RBPowerAssertion *)self->_systemAssertion invalidateWithHandler:?];
  [(RBProcessMap *)self->_assertionMap enumerateWithBlock:&__block_literal_global_80];
  [(RBProcessMap *)self->_assertionMap removeAllObjects];
  v3.receiver = self;
  v3.super_class = RBPowerAssertionManager;
  [(RBPowerAssertionManager *)&v3 dealloc];
}

uint64_t __43__RBPowerAssertionManager_debugDescription__block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  if (v2)
  {
    LOBYTE(v2) = *(v2 + 8) != 0;
  }

  *(*(a1[5] + 8) + 24) = v2;
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 24));
  v3 = *(a1[4] + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__RBPowerAssertionManager_debugDescription__block_invoke_2;
  v5[3] = &unk_279B32C60;
  v5[4] = a1[7];
  return [v3 enumerateWithBlock:v5];
}

void __43__RBPowerAssertionManager_debugDescription__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4 && *(v4 + 2))
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v8 = v4;
    v6 = v4[7];
    v7 = [v6 description];
    [v5 appendFormat:@"%@=%@\n\t", v7, v8];

    v4 = v8;
  }
}

void __44__RBPowerAssertionManager_applySystemState___block_invoke(uint64_t a1)
{
  v2 = rbs_power_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_INFO, "Received a system state change", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v3, *(a1 + 40), 48);
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
  }

  v6[4] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__RBPowerAssertionManager_applySystemState___block_invoke_91;
  v7[3] = &unk_279B32CB0;
  v7[4] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__RBPowerAssertionManager_applySystemState___block_invoke_2;
  v6[3] = &unk_279B32CB0;
  [(RBPowerAssertion *)v5 updateWithAcquisitionHandler:v7 invalidationHander:v6];
}

void __38__RBPowerAssertionManager_addProcess___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) identity];
  v2 = [[RBProcessPowerAssertion alloc] initWithProcess:?];
  v3 = [*(*(a1 + 40) + 16) setValue:v2 forIdentity:v6];
  v4 = *(a1 + 40);
  v5 = [*(v4 + 8) valueForIdentity:v6];
  [(RBPowerAssertionManager *)v4 _queue_updateProcessAssertion:v2 withState:v5];

  [(RBPowerAssertionManager *)*(a1 + 40) _queue_invalidateAssertion:v3];
}

BOOL __41__RBPowerAssertionManager_removeProcess___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 56);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

uint64_t __60__RBPowerAssertionManager__unitTest_hasSystemPowerAssertion__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 8) != 0;
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

void __65__RBPowerAssertionManager__unitTest_hasPowerAssertionForProcess___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5 = [*(a1 + 40) identity];
  v3 = [v2 valueForIdentity:?];
  if (v3)
  {
    v4 = v3[2] != 0;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;
}

void __66__RBPowerAssertionManager__unitTest_nameOfPowerAssertionForSystem__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

void __68__RBPowerAssertionManager__unitTest_nameOfPowerAssertionForProcess___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6 = [*(a1 + 40) identity];
  v3 = [v2 valueForIdentity:?];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 24);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
}

- (uint64_t)_queue_invalidateAssertion:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = MEMORY[0x277D85DD0];
  a1[1] = 3221225472;
  a1[2] = __54__RBPowerAssertionManager__queue_invalidateAssertion___block_invoke;
  a1[3] = &unk_279B32CB0;
  a1[4] = a2;
  return [(RBPowerAssertion *)a3 invalidateWithHandler:a1];
}

@end