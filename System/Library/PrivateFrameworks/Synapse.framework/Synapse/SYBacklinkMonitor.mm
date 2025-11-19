@interface SYBacklinkMonitor
- (SYBacklinkMonitor)init;
- (SYBacklinkMonitorDelegate)delegate;
- (SYBacklinkMonitorTestingDelegate)testingDelegate;
- (void)_beginNewOperation;
- (void)_evaluatePendingRequests;
- (void)backlinkMonitorOperationDidFinish:(id)a3;
- (void)userActivityDidChange;
@end

@implementation SYBacklinkMonitor

- (SYBacklinkMonitor)init
{
  v7.receiver = self;
  v7.super_class = SYBacklinkMonitor;
  v2 = [(SYBacklinkMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.BacklinkMonitor", v3);
    monitorQueue = v2->__monitorQueue;
    v2->__monitorQueue = v4;
  }

  return v2;
}

- (void)userActivityDidChange
{
  v3 = [(SYBacklinkMonitor *)self _monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SYBacklinkMonitor_userActivityDidChange__block_invoke;
  block[3] = &unk_27856B880;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __42__SYBacklinkMonitor_userActivityDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) set_needsActivityUpdate:1];
  v2 = *(a1 + 32);

  return [v2 _evaluatePendingRequests];
}

- (void)_evaluatePendingRequests
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(SYBacklinkMonitor *)self _monitorQueue];
  dispatch_assert_queue_V2(v3);

  if ([(SYBacklinkMonitor *)self _needsActivityUpdate])
  {
    v4 = [(SYBacklinkMonitor *)self _delayedChangeEvaluationBlock];

    if (v4)
    {
      v5 = os_log_create("com.apple.synapse", "BacklinkMonitor");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_DEFAULT, "BacklinkMonitor: ignoring request to process activity change because there is a pending delayed evaluation.", buf, 2u);
      }
    }

    else
    {
      v6 = [(SYBacklinkMonitor *)self _lastOperationStartTime];

      if (!v6)
      {
        goto LABEL_13;
      }

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v8 = v7;
      v9 = [(SYBacklinkMonitor *)self _lastOperationStartTime];
      [v9 timeIntervalSinceReferenceDate];
      v11 = v8 - v10;

      [(SYBacklinkMonitor *)self testingOperationCoalescingInterval];
      v13 = v12;
      v14 = 2.0;
      if (v13 > 0.0)
      {
        [(SYBacklinkMonitor *)self testingOperationCoalescingInterval];
      }

      if (v11 < v14)
      {
        v15 = v14 - v11;
        v16 = os_log_create("com.apple.synapse", "BacklinkMonitor");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v25 = v11;
          v26 = 2048;
          v27 = v15;
          _os_log_impl(&dword_225901000, v16, OS_LOG_TYPE_DEFAULT, "BacklinkMonitor: ignoring request to process activity change because last request was %0.2fs ago, scheduling re-evaluation in %0.2fs.", buf, 0x16u);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__SYBacklinkMonitor__evaluatePendingRequests__block_invoke;
        block[3] = &unk_27856B880;
        block[4] = self;
        v17 = dispatch_block_create(0, block);
        [(SYBacklinkMonitor *)self set_delayedChangeEvaluationBlock:v17];

        v18 = dispatch_time(0, (v15 * 1000000000.0));
        v19 = [(SYBacklinkMonitor *)self _monitorQueue];
        v20 = [(SYBacklinkMonitor *)self _delayedChangeEvaluationBlock];
        dispatch_after(v18, v19, v20);
      }

      else
      {
LABEL_13:
        v21 = os_log_create("com.apple.synapse", "BacklinkMonitor");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_225901000, v21, OS_LOG_TYPE_DEFAULT, "BacklinkMonitor: will process request to process activity change.", buf, 2u);
        }

        [(SYBacklinkMonitor *)self _beginNewOperation];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __45__SYBacklinkMonitor__evaluatePendingRequests__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_DEFAULT, "BacklinkMonitor: delayed re-evaluation fired.", v4, 2u);
  }

  [*(a1 + 32) set_delayedChangeEvaluationBlock:0];
  return [*(a1 + 32) _evaluatePendingRequests];
}

- (void)_beginNewOperation
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYBacklinkMonitor.m" lineNumber:107 description:@"Cannot begin a new operation if there are no pending requests to process."];
}

- (void)backlinkMonitorOperationDidFinish:(id)a3
{
  v5 = a3;
  v6 = [(SYBacklinkMonitor *)self _monitorQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(SYBacklinkMonitor *)self _activeOperation];

  if (v7 == v5)
  {
    [(SYBacklinkMonitor *)self set_activeOperation:0];
    if ([(SYBacklinkMonitor *)self _needsActivityUpdate])
    {
      v8 = os_log_create("com.apple.synapse", "BacklinkMonitor");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "BacklinkMonitor: operation finished. Has more pending work, requesting evaluation.", v11, 2u);
      }
    }

    else
    {
      v9 = [(SYBacklinkMonitor *)self _delayedChangeEvaluationBlock];

      if (v9)
      {
        [(SYBacklinkMonitor *)a2 backlinkMonitorOperationDidFinish:?];
      }

      v10 = os_log_create("com.apple.synapse", "BacklinkMonitor");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, "BacklinkMonitor: operation finished. No more pending work, notifying didFinishProcessing", buf, 2u);
      }

      v8 = [(SYBacklinkMonitor *)self delegate];
      [v8 backlinkMonitorDidFinishProcessingActivityChanges:self];
    }

    [(SYBacklinkMonitor *)self _evaluatePendingRequests];
  }
}

- (SYBacklinkMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SYBacklinkMonitorTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

- (void)backlinkMonitorOperationDidFinish:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYBacklinkMonitor.m" lineNumber:133 description:@"There shuould be no delayed request if there are no more changes to process."];
}

@end