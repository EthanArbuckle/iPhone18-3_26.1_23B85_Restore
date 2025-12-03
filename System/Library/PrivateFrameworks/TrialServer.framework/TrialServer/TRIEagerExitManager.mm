@interface TRIEagerExitManager
- (TRIEagerExitManager)initWithExitCooldown:(double)cooldown monitoringTaskQueue:(id)queue;
- (TRITaskQueuing)taskQueue;
- (void)dealloc;
- (void)exitTrialdCleanly;
- (void)handleTaskQueueEmptyNotificationWithCooldown:(double)cooldown;
@end

@implementation TRIEagerExitManager

- (TRIEagerExitManager)initWithExitCooldown:(double)cooldown monitoringTaskQueue:(id)queue
{
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = TRIEagerExitManager;
  v7 = [(TRIEagerExitManager *)&v17 init];
  if (v7)
  {
    v8 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.trial.status" qosClass:17];
    eagerExitQueue = v7->_eagerExitQueue;
    v7->_eagerExitQueue = v8;

    objc_storeWeak(&v7->_taskQueue, queueCopy);
    objc_initWeak(&location, v7);
    v10 = v7->_eagerExitQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__TRIEagerExitManager_initWithExitCooldown_monitoringTaskQueue___block_invoke;
    v13[3] = &unk_279DE5478;
    objc_copyWeak(v14, &location);
    v15 = cooldown == 0.0;
    v14[1] = *&cooldown;
    notify_register_dispatch("com.apple.trial.TaskQueueComplete", &v7->_token, v10, v13);
    v11 = v7;
    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __64__TRIEagerExitManager_initWithExitCooldown_monitoringTaskQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    [WeakRetained exitTrialdCleanly];
  }

  else
  {
    [WeakRetained handleTaskQueueEmptyNotificationWithCooldown:*(a1 + 40)];
  }
}

- (void)handleTaskQueueEmptyNotificationWithCooldown:(double)cooldown
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_eagerExitQueue);
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    cooldownCopy = cooldown;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Task queue empty notification received. Counting down towards an eager exit (~%f seconds).", buf, 0xCu);
  }

  eagerExitSource = self->_eagerExitSource;
  if (eagerExitSource && !dispatch_source_testcancel(self->_eagerExitSource))
  {
    eagerExitSource = TRILogCategory_Server();
    if (os_log_type_enabled(eagerExitSource, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, eagerExitSource, OS_LOG_TYPE_DEFAULT, "Eager exit timer already counting down, coalescing notification.", buf, 2u);
    }
  }

  else
  {
    self->_eagerExitSource = 0;
  }

  if (!self->_eagerExitSource)
  {
    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_eagerExitQueue);
    v8 = self->_eagerExitSource;
    self->_eagerExitSource = v7;

    dispatch_source_set_timer(self->_eagerExitSource, [MEMORY[0x277D425A0] dispatchTimeWithSecondsFromNow:cooldown], 0xFFFFFFFFFFFFFFFFLL, 0x2540BE400uLL);
    objc_initWeak(buf, self);
    v9 = self->_eagerExitSource;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__TRIEagerExitManager_handleTaskQueueEmptyNotificationWithCooldown___block_invoke;
    v11[3] = &unk_279DE54A0;
    objc_copyWeak(v12, buf);
    v12[1] = *&cooldown;
    dispatch_source_set_event_handler(v9, v11);
    dispatch_activate(self->_eagerExitSource);
    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __68__TRIEagerExitManager_handleTaskQueueEmptyNotificationWithCooldown___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [(dispatch_source_t *)WeakRetained taskQueue];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = [v4 count];
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Eager exit: task queue has %lu tasks in progress, cancelling eager exit.", &v9, 0xCu);
    }

    dispatch_source_cancel(WeakRetained[2]);
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Eager exit: Task queue has been empty for %f seconds. Triald is idle and will exit.", &v9, 0xCu);
    }

    [(dispatch_source_t *)WeakRetained exitTrialdCleanly];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)exitTrialdCleanly
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "Eager exit: attempting a clean exit of triald", v3, 2u);
  }

  xpc_transaction_exit_clean();
}

- (void)dealloc
{
  eagerExitSource = self->_eagerExitSource;
  if (eagerExitSource && !dispatch_source_testcancel(self->_eagerExitSource))
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3032000000;
    v7[3] = __Block_byref_object_copy__61;
    v7[4] = __Block_byref_object_dispose__61;
    v8 = eagerExitSource;
    v4 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__TRIEagerExitManager_dealloc__block_invoke;
    block[3] = &unk_279DE54C8;
    block[4] = v7;
    dispatch_async(v4, block);

    _Block_object_dispose(v7, 8);
  }

  v5.receiver = self;
  v5.super_class = TRIEagerExitManager;
  [(TRIEagerExitManager *)&v5 dealloc];
}

- (TRITaskQueuing)taskQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_taskQueue);

  return WeakRetained;
}

@end