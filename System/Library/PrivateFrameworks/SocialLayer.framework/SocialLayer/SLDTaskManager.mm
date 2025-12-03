@interface SLDTaskManager
- (SLDTaskManager)initWithSerialQueue:(id)queue;
- (id)startAggregateTask:(id)task withTimeout:(double)timeout cancellationHandler:(id)handler;
- (void)startSubtask:(id)subtask withProgress:(id)progress timer:(id)timer;
@end

@implementation SLDTaskManager

- (SLDTaskManager)initWithSerialQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = SLDTaskManager;
  v6 = [(SLDTaskManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serialQueue, queue);
  }

  return v7;
}

- (id)startAggregateTask:(id)task withTimeout:(double)timeout cancellationHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  serialQueue = [(SLDTaskManager *)self serialQueue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke;
  v28[3] = &unk_278925F38;
  v30 = v38;
  timeoutCopy = timeout;
  v11 = handlerCopy;
  v29 = v11;
  v37 = [SLGracePeriodTimer timerWithQueue:serialQueue delay:v28 action:timeout];

  v12 = objc_opt_new();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_2;
  v24[3] = &unk_278925F88;
  v24[4] = self;
  v26 = v38;
  v27 = &v32;
  v13 = v11;
  v25 = v13;
  [v12 setCancellationHandler:v24];
  [v33[5] arm];
  serialQueue2 = [(SLDTaskManager *)self serialQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_3;
  v20[3] = &unk_278925FD8;
  v22 = taskCopy;
  v15 = v12;
  v21 = v15;
  v23 = &v32;
  v16 = taskCopy;
  dispatch_async(serialQueue2, v20);

  v17 = v21;
  v18 = v15;

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v38, 8);

  return v18;
}

uint64_t __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = SLDaemonLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_cold_1(v1, v2);
    }

    return (*(*(v1 + 32) + 16))();
  }

  return result;
}

void __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_2;
  block[3] = &unk_278925F60;
  v7 = *(a1 + 56);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

uint64_t __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_2(void *a1)
{
  *(*(a1[5] + 8) + 24) = 1;
  result = [*(*(a1[6] + 8) + 40) isValid];
  if (result)
  {
    v3 = SLDaemonLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_2_cold_1(v3);
    }

    [*(*(a1[6] + 8) + 40) suppress];
    return (*(a1[4] + 16))();
  }

  return result;
}

void __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(*(a1[6] + 8) + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_2_4;
  v7[3] = &unk_278925FB0;
  v5 = v2;
  v6 = a1[6];
  v8 = v5;
  v9 = v6;
  (*(v3 + 16))(v3, v5, v4, v7);
}

void __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_2_4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v7 = *(a1 + 32);
    v4 = v3;
    if (([v7 isFinished] & 1) != 0 || objc_msgSend(v7, "isCancelled"))
    {
    }

    else
    {
      v5 = [v4 isValid];

      if (v5)
      {
        v6 = *(*(*(a1 + 40) + 8) + 40);

        [v6 suppress];
      }
    }
  }
}

- (void)startSubtask:(id)subtask withProgress:(id)progress timer:(id)timer
{
  subtaskCopy = subtask;
  progressCopy = progress;
  timerCopy = timer;
  if (([progressCopy isFinished] & 1) != 0 || objc_msgSend(progressCopy, "isCancelled"))
  {
  }

  else
  {
    isValid = [timerCopy isValid];

    if (isValid)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __50__SLDTaskManager_startSubtask_withProgress_timer___block_invoke;
      v11[3] = &unk_278926000;
      v12 = progressCopy;
      v13 = timerCopy;
      subtaskCopy[2](subtaskCopy, v12, v13, v11);
    }
  }
}

void __50__SLDTaskManager_startSubtask_withProgress_timer___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a1 + 40);
    v7 = *(a1 + 32);
    v4 = v3;
    if (([v7 isFinished] & 1) != 0 || objc_msgSend(v7, "isCancelled"))
    {
    }

    else
    {
      v5 = [v4 isValid];

      if (v5)
      {
        v6 = *(a1 + 40);

        [v6 suppress];
      }
    }
  }
}

void __69__SLDTaskManager_startAggregateTask_withTimeout_cancellationHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLDTaskManager] aggregate task timeout timer fired after %f seconds", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end