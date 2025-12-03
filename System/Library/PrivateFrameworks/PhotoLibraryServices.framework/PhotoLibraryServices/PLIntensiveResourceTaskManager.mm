@interface PLIntensiveResourceTaskManager
- (PLIntensiveResourceTaskManager)init;
- (id)submitTask:(id)task completionHandler:(id)handler;
- (unint64_t)pendingTasksCount;
- (void)resourceTaskDidFinish:(id)finish;
- (void)resourceTaskWillCancel:(id)cancel;
@end

@implementation PLIntensiveResourceTaskManager

- (void)resourceTaskDidFinish:(id)finish
{
  finishCopy = finish;
  v3 = finishCopy;
  PLSafeRunWithUnfairLock();
}

void __56__PLIntensiveResourceTaskManager_resourceTaskDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) identifier];
  v8 = [v2 objectForKeyedSubscript:v3];

  v4 = v8;
  v5 = *(a1 + 40);
  if (v8 == v5)
  {
    v6 = *(*(a1 + 32) + 16);
    v7 = [v5 identifier];
    [v6 setObject:0 forKeyedSubscript:v7];

    v4 = v8;
  }
}

- (void)resourceTaskWillCancel:(id)cancel
{
  cancelCopy = cancel;
  v3 = cancelCopy;
  PLSafeRunWithUnfairLock();
}

void __57__PLIntensiveResourceTaskManager_resourceTaskWillCancel___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) identifier];
  v8 = [v2 objectForKeyedSubscript:v3];

  v4 = v8;
  v5 = *(a1 + 40);
  if (v8 == v5)
  {
    v6 = *(*(a1 + 32) + 16);
    v7 = [v5 identifier];
    [v6 setObject:0 forKeyedSubscript:v7];

    v4 = v8;
  }
}

- (id)submitTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v7 = [PLIntensiveResourceTaskResponder alloc];
  trackingIdentifier = [taskCopy trackingIdentifier];
  v9 = [(PLIntensiveResourceTaskResponder *)v7 initWithTrackingIdentifier:trackingIdentifier completionHandler:handlerCopy];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v10 = taskCopy;
  v11 = v9;
  PLSafeRunWithUnfairLock();
  v12 = v16;
  if (*(v20 + 24) == 1 && *(v16 + 24) == 1)
  {
    [v10 start];
    v12 = v16;
  }

  if (*(v12 + 24) == 1)
  {
    progress = [(PLIntensiveResourceTaskResponder *)v11 progress];
  }

  else
  {
    progress = 0;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return progress;
}

void __63__PLIntensiveResourceTaskManager_submitTask_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4 || ([v4 addResponder:*(a1 + 48)] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    v11 = PLImageManagerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) trackingIdentifier];
      v13 = *(a1 + 40);
      v14 = [v4 trackingIdentifier];
      v16 = 138544130;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v4;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[RTM] %{public}@ resource task %{public}@ being deduped to identical inflight task %{public}@ with tracking ID %{public}@", &v16, 0x2Au);

LABEL_13:
    }

LABEL_14:

    goto LABEL_15;
  }

  if (![*(a1 + 40) addResponder:*(a1 + 48)])
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v11 = PLImageManagerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 40) trackingIdentifier];
      v15 = *(a1 + 40);
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v15;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[RTM] %{public}@ resource task %{public}@ unable to accept responders", &v16, 0x16u);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v5 = PLImageManagerGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) trackingIdentifier];
    v7 = *(a1 + 40);
    v16 = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[RTM] %{public}@ starting new resource task %{public}@ ", &v16, 0x16u);
  }

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 16);
  v10 = [v8 identifier];
  [v9 setObject:v8 forKeyedSubscript:v10];

  [*(a1 + 40) setDelegate:*(a1 + 32)];
LABEL_15:
}

- (unint64_t)pendingTasksCount
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLSafeRunWithUnfairLock();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __51__PLIntensiveResourceTaskManager_pendingTasksCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (PLIntensiveResourceTaskManager)init
{
  v7.receiver = self;
  v7.super_class = PLIntensiveResourceTaskManager;
  v2 = [(PLIntensiveResourceTaskManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_pendingTasks = v3->_lock_pendingTasks;
    v3->_lock_pendingTasks = v4;
  }

  return v3;
}

@end