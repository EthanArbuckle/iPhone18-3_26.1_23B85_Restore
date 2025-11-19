@interface RBProcessReconnectManager
- (RBProcessReconnectManager)init;
- (RBProcessReconnectManager)initWithDaemonContext:(id)a3 originatorProcess:(id)a4;
- (id)_assertionAttributes;
- (id)_assertionDescriptorForProcess:(id)a1;
- (id)debugDescription;
- (void)_lockQueue_resumeNextProcess;
- (void)_reconnectProcess:(uint64_t)a1;
- (void)didInvalidateAssertion:(id)a3;
- (void)reconnectProcesses:(id)a3;
@end

@implementation RBProcessReconnectManager

- (RBProcessReconnectManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBProcessReconnectManager.m" lineNumber:63 description:@"-init is not allowed on RBProcessReconnectManager"];

  return 0;
}

- (RBProcessReconnectManager)initWithDaemonContext:(id)a3 originatorProcess:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = RBProcessReconnectManager;
  v9 = [(RBProcessReconnectManager *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [MEMORY[0x277D47028] createBackgroundQueue:@"RBProcessReconnectManager"];
    queue = v10->_queue;
    v10->_queue = v11;

    v13 = [MEMORY[0x277CBEB58] set];
    currentAssertionIdentifiers = v10->_currentAssertionIdentifiers;
    v10->_currentAssertionIdentifiers = v13;

    v15 = [MEMORY[0x277CBEB58] set];
    pendingProcesses = v10->_pendingProcesses;
    v10->_pendingProcesses = v15;

    objc_storeStrong(&v10->_daemonContext, a3);
    objc_storeStrong(&v10->_originatorProcess, a4);
  }

  return v10;
}

- (void)reconnectProcesses:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = rbs_process_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v10 = [v4 count];
    _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Reconnecting to %{public}lu processes", buf, 0xCu);
  }

  v6 = [(RBDaemonContextProviding *)self->_daemonContext assertionOriginatorPidStore];
  [v6 setValidProcesses:v4];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__RBProcessReconnectManager_reconnectProcesses___block_invoke;
  v8[3] = &unk_279B33A18;
  v8[4] = self;
  [v4 enumerateObjectsUsingBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __48__RBProcessReconnectManager_reconnectProcesses___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) assertionOriginatorPidStore];
  v5 = [v4 isValid];

  v6 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = [*(v6 + 8) assertionOriginatorPidStore];
  v8 = [v3 handle];
  v9 = [v7 containsPid:{objc_msgSend(v8, "pid")}];

  if (v9)
  {
    v6 = *(a1 + 32);
LABEL_8:
    [(RBProcessReconnectManager *)v6 _reconnectProcess:v3];
    goto LABEL_6;
  }

  v10 = rbs_process_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v3;
    _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Pid store does not include process: %{public}@", &v12, 0xCu);
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)didInvalidateAssertion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RBProcessReconnectManager_didInvalidateAssertion___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __52__RBProcessReconnectManager_didInvalidateAssertion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v2 = [*(a1 + 40) identifier];
  if ([*(*(a1 + 32) + 24) containsObject:v2])
  {
    v4 = rbs_assertion_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "Invalidated assertion %{public}@ for reconnected process", &v6, 0xCu);
    }

    [*(*(a1 + 32) + 24) removeObject:v2];
    os_unfair_lock_unlock((*(a1 + 32) + 48));
    [(RBProcessReconnectManager *)*(a1 + 32) _lockQueue_resumeNextProcess];
  }

  else
  {
    os_unfair_lock_unlock((*(a1 + 32) + 48));
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __57__RBProcessReconnectManager__lockQueue_resumeNextProcess__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 40));
  v4 = rbs_assertion_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__RBProcessReconnectManager__lockQueue_resumeNextProcess__block_invoke_cold_1(a1, v3, v5);
    }

    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 40);
      v9[0] = 67109634;
      v9[1] = v6;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_INFO, "Acquired assertion for reconnected process %d with identifier %{public}@ replacing temporary identifier %{public}@", v9, 0x1Cu);
    }

    [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
    [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)debugDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__RBProcessReconnectManager_debugDescription__block_invoke;
  v5[3] = &unk_279B32D00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __45__RBProcessReconnectManager_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<ReconnectManager:%d pending>", objc_msgSend(*(*(a1 + 32) + 32), "count")];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_reconnectProcess:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock((a1 + 48));
    [*(a1 + 32) addObject:v3];

    os_unfair_lock_unlock((a1 + 48));
    v4 = *(a1 + 40);
    OUTLINED_FUNCTION_0_1();
    v7 = 3221225472;
    v8 = __47__RBProcessReconnectManager__reconnectProcess___block_invoke;
    v9 = &unk_279B32CB0;
    v10 = a1;
    dispatch_async(v5, block);
  }
}

- (void)_lockQueue_resumeNextProcess
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_10:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 40));
  os_unfair_lock_lock((a1 + 48));
  if ([*(a1 + 24) count] != 4)
  {
    v3 = [*(a1 + 32) anyObject];
    v4 = v3;
    if (v3)
    {
      v7 = [v3 handle];
      v8 = [v7 pid];

      v9 = rbs_process_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) count];
        v11 = [*(a1 + 24) count];
        *buf = 67109888;
        *v25 = v8;
        *&v25[4] = 2048;
        *&v25[6] = v10;
        v26 = 2048;
        v27 = v11;
        v28 = 2048;
        v29 = 4;
        _os_log_impl(&dword_262485000, v9, OS_LOG_TYPE_DEFAULT, "Preparing to reconnect to process %d; %lu left in the queue; %lu of %lu in flight", buf, 0x26u);
      }

      [*(a1 + 32) removeObject:v4];
      v5 = [(RBProcessReconnectManager *)a1 _assertionDescriptorForProcess:v4];
      v12 = [v5 identifier];
      [*(a1 + 24) addObject:v12];
      v13 = rbs_assertion_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *v25 = v12;
        *&v25[8] = 1024;
        *&v25[10] = v8;
        v26 = 2048;
        v27 = 0x4000000000000000;
        _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_INFO, "Acquiring assertion with temporary identifier %{public}@ for reconnected process %d for %fs", buf, 0x1Cu);
      }

      v14 = [RBAssertionAcquisitionContext contextForProcess:*(a1 + 16) withDescriptor:v5 daemonContext:*(a1 + 8)];
      [v14 setAcquisitionPolicy:0];
      v15 = [*(a1 + 8) assertionManager];
      OUTLINED_FUNCTION_0_1();
      v18 = 3221225472;
      v19 = __57__RBProcessReconnectManager__lockQueue_resumeNextProcess__block_invoke;
      v20 = &unk_279B33A40;
      v23 = v8;
      v21 = a1;
      v22 = v12;
      v16 = v12;
      [v15 acquireAssertionWithContext:v14 completion:v17];
    }

    else
    {
      v5 = rbs_process_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Reconnect queue is empty; reconnect done", buf, 2u);
      }
    }

    os_unfair_lock_unlock((a1 + 48));
    goto LABEL_10;
  }

  v2 = *MEMORY[0x277D85DE8];

  os_unfair_lock_unlock((a1 + 48));
}

- (id)_assertionDescriptorForProcess:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = MEMORY[0x277D46DD0];
    v4 = a2;
    v5 = [v3 identifierWithClientPid:getpid()];
    v6 = MEMORY[0x277D47008];
    v7 = [v4 handle];

    v8 = [v6 targetWithPid:{objc_msgSend(v7, "pid")}];

    v9 = [(RBProcessReconnectManager *)v2 _assertionAttributes];
    v2 = [MEMORY[0x277D46DC8] descriptorWithIdentifier:v5 target:v8 explanation:@"Resuming process for assertion reconnection" attributes:v9];
  }

  return v2;
}

- (id)_assertionAttributes
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = [*(a1 + 8) domainAttributeManager];
    v2 = [v1 containsAttributeWithDomain:@"com.apple.coreos" andName:@"reconnect"];

    v3 = rbs_assertion_log();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "Using domain attribute for reconnect", v11, 2u);
      }

      v5 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.coreos" name:@"reconnect"];
      v13[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_262485000, v4, OS_LOG_TYPE_ERROR, "Missing domain attribute for reconnect", v11, 2u);
      }

      v5 = [MEMORY[0x277D46DF0] grantWithUserInteractivity];
      v12[0] = v5;
      v7 = [MEMORY[0x277D46EA8] grantWithBackgroundPriority];
      v12[1] = v7;
      v8 = [MEMORY[0x277D46E48] attributeWithDuration:1 warningDuration:1 startPolicy:2.0 endPolicy:0.0];
      v12[2] = v8;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

void __57__RBProcessReconnectManager__lockQueue_resumeNextProcess__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = 138543874;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "Error acquiring reconnection assertion with temporary identifier %{public}@ for process %d: <%{public}@>", &v6, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end