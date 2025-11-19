@interface CSEventListenerTask
- (BOOL)allowed;
- (CSEventListenerTask)initWithConfig:(id)a3;
- (void)_throttling:(BOOL)a3;
- (void)complete;
- (void)end;
- (void)enter;
- (void)handle;
- (void)launch;
- (void)leave;
- (void)setup;
@end

@implementation CSEventListenerTask

- (CSEventListenerTask)initWithConfig:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CSEventListenerTask;
  v5 = [(CSEventListenerTask *)&v16 init];
  if (v5)
  {
    v6 = [v4 name];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 taskIdentifier];
    taskIdentifier = v5->_taskIdentifier;
    v5->_taskIdentifier = v8;

    v10 = [v4 taskOptions];
    options = v5->_options;
    v5->_options = v10;

    v5->_needsThrottling = ([v4 eventFlags] & 0x40) != 0;
    v5->_yieldLock._os_unfair_lock_opaque = 0;
    taskQueue = v5->_taskQueue;
    v5->_taskQueue = 0;

    workGroup = v5->_workGroup;
    v5->_workGroup = 0;

    atomic_store(0, &v5->_allowed);
    atomic_store(0, &v5->_jobCount);
    task = v5->_task;
    v5->_task = 0;

    v5->_wait = 0;
    [(CSEventListenerTask *)v5 setup];
  }

  return v5;
}

- (BOOL)allowed
{
  if (self->_needsThrottling)
  {
    v2 = atomic_load(&self->_allowed);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

- (void)enter
{
  workGroup = self->_workGroup;
  if (workGroup)
  {
    dispatch_group_enter(workGroup);
  }
}

- (void)leave
{
  workGroup = self->_workGroup;
  if (workGroup)
  {
    dispatch_group_leave(workGroup);
  }
}

- (void)end
{
  if (self->_taskQueue && self->_task)
  {
    os_unfair_lock_lock(&self->_yieldLock);
    if (atomic_fetch_add(&self->_jobCount, 0xFFFFFFFF) == 1)
    {
      taskQueue = self->_taskQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __26__CSEventListenerTask_end__block_invoke;
      block[3] = &unk_27893CE68;
      block[4] = self;
      dispatch_async(taskQueue, block);
    }

    os_unfair_lock_unlock(&self->_yieldLock);
  }
}

- (void)_throttling:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_needsThrottling)
  {
    v3 = a3;
    v5 = +[SKGActivityJournal sharedJournal];
    v6 = v5;
    if (v3)
    {
      v7 = 52;
    }

    else
    {
      v7 = 51;
    }

    [v5 addEventWithType:v7 params:MEMORY[0x277CBEC10]];

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v8 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        name = self->_name;
        v11 = 138412546;
        v12 = name;
        v13 = 1024;
        v14 = v3;
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "### changing throttle state for %@ event: permitted: %{BOOL}d", &v11, 0x12u);
      }
    }

    atomic_store(v3, &self->_allowed);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setup
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_needsThrottling && !self->_task)
  {
    atomic_store(0, &self->_allowed);
    atomic_store(0, &self->_jobCount);
    if (!self->_taskQueue)
    {
      v3 = [(NSString *)self->_name UTF8String];
      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v5 = dispatch_queue_create(v3, v4);
      taskQueue = self->_taskQueue;
      self->_taskQueue = v5;
    }

    if (!self->_workGroup)
    {
      v7 = dispatch_group_create();
      workGroup = self->_workGroup;
      self->_workGroup = v7;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v9 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        name = self->_name;
        *buf = 138412290;
        v17 = name;
        _os_log_impl(&dword_231B25000, v9, OS_LOG_TYPE_INFO, "### setting up %@ task handler", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x277CF0810] sharedScheduler];
    taskIdentifier = self->_taskIdentifier;
    v13 = self->_taskQueue;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __28__CSEventListenerTask_setup__block_invoke;
    v15[3] = &unk_27893D098;
    v15[4] = self;
    [v11 registerForTaskWithIdentifier:taskIdentifier usingQueue:v13 launchHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __28__CSEventListenerTask_setup__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v4 = a2;
  [*(a1 + 32) handle];
}

- (void)handle
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_needsThrottling)
  {
    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __29__CSEventListenerTask_handle__block_invoke;
    v13 = &unk_27893D0C0;
    objc_copyWeak(&v14, &location);
    [(BGNonRepeatingSystemTask *)self->_task setExpirationHandler:&v10];
    [(CSEventListenerTask *)self _throttling:1, v10, v11, v12, v13];
    v3 = +[CSXPCEventListener sharedInstance];
    atomic_store([v3 jobCountWithTaskName:self->_name], &self->_jobCount);

    v4 = atomic_load(&self->_jobCount);
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v5 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        task = self->_task;
        *buf = 138412802;
        v17 = name;
        v18 = 2112;
        v19 = task;
        v20 = 1024;
        v21 = v4;
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### handle %@ task %@, job count %d", buf, 0x1Cu);
      }
    }

    v8 = +[CSXPCEventListener sharedInstance];
    [v8 runJobWithTaskName:self->_name];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __29__CSEventListenerTask_handle__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[1];
      v4 = WeakRetained[8];
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "### task %@ %@ expired", buf, 0x16u);
    }
  }

  [WeakRetained _throttling:0];
  v5 = WeakRetained[5];
  v6 = WeakRetained[6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__CSEventListenerTask_handle__block_invoke_3;
  block[3] = &unk_27893CE68;
  block[4] = WeakRetained;
  v7 = v5;
  v8 = v6;
  dispatch_group_notify(v8, v7, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __29__CSEventListenerTask_handle__block_invoke_3(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 64))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v2 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        v4 = *(v3 + 8);
        v5 = *(v3 + 64);
        *buf = 138412546;
        v18 = v4;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "### %@ batches completed; marking deferred %@", buf, 0x16u);
      }
    }

    v6 = *(*(a1 + 32) + 64);
    v16 = 0;
    v7 = [v6 setTaskExpiredWithRetryAfter:&v16 error:300.0];
    v8 = v16;
    if (v7)
    {
      *(*(a1 + 32) + 56) = 0;
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v9 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(v10 + 8);
          v12 = *(v10 + 64);
          *buf = 138412802;
          v18 = v11;
          v19 = 2112;
          v20 = v8;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_231B25000, v9, OS_LOG_TYPE_DEFAULT, "### %@ batches completed, deferring failed with error: %@; marking complete %@", buf, 0x20u);
        }
      }

      [*(*(a1 + 32) + 64) setTaskCompleted];
      v13 = *(a1 + 32);
      v14 = *(v13 + 64);
      *(v13 + 64) = 0;

      [*(a1 + 32) launch];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)launch
{
  v52 = *MEMORY[0x277D85DE8];
  if (self->_needsThrottling)
  {
    v3 = [MEMORY[0x277CF0810] sharedScheduler];
    v4 = [v3 taskRequestForIdentifier:self->_taskIdentifier];

    v5 = v4;
    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CF07C8]) initWithIdentifier:self->_taskIdentifier];
    }

    v6 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"priority"];
    v7 = v6;
    v8 = @"background";
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"resources"];
    v11 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"involvedProcesses"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &unk_2846E7F68;
    }

    [v5 setInvolvedProcesses:v13];

    v14 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"requiresUserInactivity"];
    if (v14)
    {
      v15 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"requiresUserInactivity"];
      [v5 setRequiresUserInactivity:{objc_msgSend(v15, "BOOLValue")}];
    }

    else
    {
      [v5 setRequiresUserInactivity:1];
    }

    v16 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"resourceIntensive"];
    if (v16)
    {
      v17 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"resourceIntensive"];
      [v5 setResourceIntensive:{objc_msgSend(v17, "BOOLValue")}];
    }

    else
    {
      [v5 setResourceIntensive:1];
    }

    v18 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"requiresExternalPower"];
    if (v18)
    {
      v19 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"requiresExternalPower"];
      [v5 setRequiresExternalPower:{objc_msgSend(v19, "BOOLValue")}];
    }

    else
    {
      [v5 setRequiresExternalPower:1];
    }

    v20 = [(__CFString *)v9 isEqualToString:@"urgent"];
    if (v20)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    if (v20)
    {
      v22 = 15;
    }

    else
    {
      v22 = 0;
    }

    if (v10)
    {
      if ([v10 containsObject:@"GPU"])
      {
        v23 = 16;
      }

      else
      {
        v23 = 0;
      }

      v22 = v23 | [v10 containsObject:@"CPU"];
      if ([v10 containsObject:@"ANE"])
      {
        v22 |= 8uLL;
      }

      if ([v10 containsObject:@"Memory"])
      {
        v22 |= 2uLL;
      }

      if ([v10 containsObject:@"Disk"])
      {
        v22 |= 4uLL;
      }

      [v5 setPowerBudgeted:1];
    }

    [v5 setPriority:v21];
    [v5 setResources:v22];
    if (v4)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v24 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          taskIdentifier = self->_taskIdentifier;
          *buf = 138412290;
          v47 = taskIdentifier;
          _os_log_impl(&dword_231B25000, v24, OS_LOG_TYPE_DEFAULT, "### submitted task %@", buf, 0xCu);
        }
      }

      v26 = [MEMORY[0x277CF0810] sharedScheduler];
      v45 = 0;
      [v26 updateTaskRequest:v5 error:&v45];
      v27 = v45;

      self->_wait = 0;
    }

    else
    {
      v28 = [MEMORY[0x277CF0810] sharedScheduler];
      v44 = 0;
      v29 = [v28 submitTaskRequest:v5 error:&v44];
      v27 = v44;

      if (v29)
      {
        self->_wait = 0;
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v30 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            name = self->_name;
            *buf = 138412290;
            v47 = name;
            _os_log_impl(&dword_231B25000, v30, OS_LOG_TYPE_DEFAULT, "### submitted task %@", buf, 0xCu);
          }
        }
      }

      else
      {
        wait = self->_wait;
        v33 = 2 * wait;
        v34 = wait == 0;
        v35 = 1000000000;
        if (!v34)
        {
          v35 = v33;
        }

        self->_wait = v35;
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v36 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v40 = self->_name;
            v41 = @"Unknown";
            if (v27)
            {
              v41 = v27;
            }

            v42 = self->_wait;
            *buf = 138412802;
            v47 = v40;
            v48 = 2112;
            v49 = v41;
            v50 = 2048;
            v51 = v42;
            _os_log_error_impl(&dword_231B25000, v36, OS_LOG_TYPE_ERROR, "### failed to submit task %@ with error: %@ (wait: %lld)", buf, 0x20u);
          }
        }

        v37 = dispatch_time(0, self->_wait);
        taskQueue = self->_taskQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __29__CSEventListenerTask_launch__block_invoke;
        block[3] = &unk_27893CE68;
        block[4] = self;
        dispatch_after(v37, taskQueue, block);
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)complete
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_workGroup && self->_taskQueue && self->_task)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v3 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        name = self->_name;
        task = self->_task;
        *buf = 138412546;
        v12 = name;
        v13 = 2112;
        v14 = task;
        _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### deferring task %@ early %@", buf, 0x16u);
      }
    }

    [(CSEventListenerTask *)self _throttling:0];
    objc_initWeak(buf, self);
    taskQueue = self->_taskQueue;
    workGroup = self->_workGroup;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__CSEventListenerTask_complete__block_invoke;
    v9[3] = &unk_27893D0E8;
    objc_copyWeak(&v10, buf);
    v9[4] = self;
    dispatch_group_notify(workGroup, taskQueue, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __31__CSEventListenerTask_complete__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained[8])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v3 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = WeakRetained[1];
        v5 = WeakRetained[8];
        *buf = 138412546;
        v18 = v4;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_INFO, "### %@ batches completed; marking deferred %@", buf, 0x16u);
      }
    }

    if (sTurboMode)
    {
      v6 = 0;
    }

    else
    {
      v7 = *(*(a1 + 32) + 64);
      v16 = 0;
      v8 = [v7 setTaskExpiredWithRetryAfter:&v16 error:300.0];
      v6 = v16;
      if (v8)
      {
        *(*(a1 + 32) + 56) = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v9 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 8);
        v12 = *(v10 + 64);
        *buf = 138412802;
        v18 = v11;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_231B25000, v9, OS_LOG_TYPE_INFO, "### %@ batches completed, deferring failed with error: %@; marking complete %@", buf, 0x20u);
      }
    }

    [*(*(a1 + 32) + 64) setTaskCompleted];
    v13 = *(a1 + 32);
    v14 = *(v13 + 64);
    *(v13 + 64) = 0;

    if ((sTurboMode & 1) == 0)
    {
      [*(a1 + 32) setup];
      [*(a1 + 32) launch];
    }

    goto LABEL_16;
  }

LABEL_17:

  v15 = *MEMORY[0x277D85DE8];
}

@end