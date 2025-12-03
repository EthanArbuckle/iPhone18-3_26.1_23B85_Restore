@interface ICBGTaskScheduler
+ (ICBGTaskScheduler)sharedTaskScheduler;
- (BOOL)hasScheduledTask:(id)task;
- (id)_init;
- (void)_loadSavedTaskInfo;
- (void)_postExpiredEvents;
- (void)_saveTaskInfo;
- (void)_scheduleNextTask;
- (void)cancelTask:(id)task;
- (void)registerForTask:(id)task handler:(id)handler;
- (void)scheduleRecurringTask:(id)task withInterval:(double)interval afterDelay:(double)delay withUserData:(id)data;
- (void)scheduleTask:(id)task afterDelay:(double)delay withUserData:(id)data;
@end

@implementation ICBGTaskScheduler

+ (ICBGTaskScheduler)sharedTaskScheduler
{
  if (sharedTaskScheduler_onceToken != -1)
  {
    dispatch_once(&sharedTaskScheduler_onceToken, &__block_literal_global_17524);
  }

  v3 = sharedTaskScheduler__scheduler;

  return v3;
}

- (void)_postExpiredEvents
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__ICBGTaskScheduler__postExpiredEvents__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __39__ICBGTaskScheduler__postExpiredEvents__block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v48 = v3;
    _os_log_impl(&dword_1B4491000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Posting expired events", buf, 0xCu);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [*(*(a1 + 32) + 8) allValues];
  v6 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v6)
  {
    v8 = v6;
    v35 = v39;
    v9 = *v44;
    *&v7 = 138543618;
    v34 = v7;
    do
    {
      v10 = 0;
      v36 = v8;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        v12 = [v11 objectForKey:{@"time", v34, v35}];
        [v12 doubleValue];
        v14 = v13;

        if (v14 <= v5)
        {
          v15 = [v11 objectForKey:@"identifier"];
          v16 = [*(*(a1 + 32) + 16) objectForKey:v15];
          v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          if (v16)
          {
            v19 = v9;
            if (v18)
            {
              v20 = *(a1 + 32);
              *buf = v34;
              v48 = v20;
              v49 = 2114;
              v50 = v15;
              _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Posting expired event '%{public}@", buf, 0x16u);
            }

            v21 = a1;

            v22 = [v11 objectForKey:@"userData"];
            v23 = dispatch_get_global_queue(0, 0);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            v39[0] = __39__ICBGTaskScheduler__postExpiredEvents__block_invoke_49;
            v39[1] = &unk_1E7BF9E28;
            v42 = v16;
            v24 = v15;
            v40 = v24;
            v17 = v22;
            v41 = v17;
            dispatch_async(v23, block);

            v25 = [v11 objectForKey:@"is_recurring"];
            v26 = [v25 BOOLValue];

            if (v26)
            {
              v27 = [v11 objectForKey:@"interval"];
              [v27 doubleValue];
              v29 = v28;

              a1 = v21;
              do
              {
                v14 = v29 + v14;
              }

              while (v14 < v5);
              v30 = [v11 mutableCopy];
              v31 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
              [v30 setValue:v31 forKey:@"time"];

              [*(*(v21 + 32) + 8) setObject:v30 forKey:v24];
              v9 = v19;
            }

            else
            {
              a1 = v21;
              [*(*(v21 + 32) + 8) removeObjectForKey:v24];
              v9 = v19;
            }

            v8 = v36;
          }

          else if (v18)
          {
            v32 = *(a1 + 32);
            *buf = v34;
            v48 = v32;
            v49 = 2114;
            v50 = v15;
            _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping posting event with no handler: '%{public}@'", buf, 0x16u);
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  [*(a1 + 32) _saveTaskInfo];
  return [*(a1 + 32) _scheduleNextTask];
}

- (void)_saveTaskInfo
{
  v12[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_taskInfoDictionaries copy];
  os_unfair_lock_unlock(&self->_lock);
  v11 = @"scheduled_tasks";
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ persisting event data %{public}@", &v7, 0x16u);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:v4 forKey:@"ICBackgroundTaskScheduler"];
}

- (void)_scheduleNextTask
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__ICBGTaskScheduler__scheduleNextTask__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__ICBGTaskScheduler__scheduleNextTask__block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__17470;
  v48 = __Block_byref_object_dispose__17471;
  v49 = 0;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __38__ICBGTaskScheduler__scheduleNextTask__block_invoke_43;
  v43[3] = &unk_1E7BF5EB8;
  v43[4] = v2;
  v43[5] = &v50;
  v43[6] = &v44;
  [v3 enumerateKeysAndObjectsUsingBlock:v43];
  os_unfair_lock_unlock((*(a1 + 32) + 32));
  v4 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v5 = v4;
  v6 = *(a1 + 32);
  if ((*(v6 + 36) & 1) == 0)
  {
    v7 = *(v6 + 40);
    v8 = *(v6 + 24);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __38__ICBGTaskScheduler__scheduleNextTask__block_invoke_46;
    v42[3] = &unk_1E7BF5EE0;
    v42[4] = v6;
    *(*(a1 + 32) + 36) = [v4 registerForTaskWithIdentifier:v7 usingQueue:v8 launchHandler:v42];
    if ((*(*(a1 + 32) + 36) & 1) == 0)
    {
      v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        *buf = 138543362;
        v55 = v10;
        _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to register with task scheduler", buf, 0xCu);
      }
    }
  }

  v11 = [v5 taskRequestForIdentifier:@"com.apple.itunescloud.ICBackgroundTaskScheduler.task_identifier"];
  if (v11)
  {
    v41 = 0;
    v12 = [v5 cancelTaskRequestWithIdentifier:@"com.apple.itunescloud.ICBackgroundTaskScheduler.task_identifier" error:&v41];
    v13 = v41;
    if ((v12 & 1) == 0)
    {
      v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        *buf = 138543618;
        v55 = v15;
        v56 = 2114;
        v57 = v13;
        _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to cancel old task. err=%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = [v5 taskRequestForIdentifier:*(*(a1 + 32) + 40)];
  if (v16)
  {
    v17 = *(*(a1 + 32) + 40);
    v40 = v13;
    v18 = [v5 cancelTaskRequestWithIdentifier:v17 error:&v40];
    v19 = v40;

    if ((v18 & 1) == 0)
    {
      v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        *buf = 138543618;
        v55 = v21;
        v56 = 2114;
        v57 = v19;
        _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to cancel existing task. err=%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v19 = v13;
  }

  if (v45[5])
  {
    v22 = [MEMORY[0x1E695DF00] date];
    [v22 timeIntervalSinceReferenceDate];
    v24 = v23;

    v25 = v51[3];
    if (v25 >= v24)
    {
      v26 = v25 - v24;
    }

    else
    {
      v26 = 0;
    }

    v27 = [v45[5] objectForKey:@"identifier"];
    v28 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v26 <= 0)
    {
      if (v29)
      {
        v38 = *(a1 + 32);
        *buf = 138543618;
        v55 = v38;
        v56 = 2114;
        v57 = v27;
        _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Time for next event '%{public}@' has already passed - posting now", buf, 0x16u);
      }

      [*(a1 + 32) _postExpiredEvents];
    }

    else
    {
      if (v29)
      {
        v30 = *(a1 + 32);
        v31 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v51[3]];
        *buf = 138544130;
        v55 = v30;
        v56 = 2114;
        v57 = v27;
        v58 = 2114;
        v59 = v31;
        v60 = 2048;
        v61 = v26;
        _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling next event '%{public}@' for %{public}@ (%llds from now)", buf, 0x2Au);
      }

      v32 = [objc_alloc(MEMORY[0x1E698E478]) initWithIdentifier:*(*(a1 + 32) + 40)];
      [v32 setScheduleAfter:v26];
      [v32 setPriority:2];
      v39 = v19;
      v33 = [v5 submitTaskRequest:v32 error:&v39];
      v34 = v39;

      if ((v33 & 1) == 0)
      {
        v35 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = *(a1 + 32);
          *buf = 138543618;
          v55 = v36;
          v56 = 2114;
          v57 = v34;
          _os_log_impl(&dword_1B4491000, v35, OS_LOG_TYPE_ERROR, "%{public}@ Failed to submit new task. err=%{public}@", buf, 0x16u);
        }
      }

      v19 = v34;
    }
  }

  else
  {
    v27 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(a1 + 32);
      *buf = 138543362;
      v55 = v37;
      _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ no more events to schedule", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);
}

void __38__ICBGTaskScheduler__scheduleNextTask__block_invoke_43(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKey:@"time"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [*(a1[4] + 16) objectForKey:v5];

  if (v10)
  {
    v11 = *(*(a1[5] + 8) + 24);
    if (v11 == 0.0 || v9 < v11)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a3);
      *(*(a1[5] + 8) + 24) = v9;
    }
  }

  else
  {
    v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      v15 = 138543618;
      v16 = v14;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping scheduling task with no handler: '%{public}@'", &v15, 0x16u);
    }
  }
}

void __38__ICBGTaskScheduler__scheduleNextTask__block_invoke_46(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _postExpiredEvents];
  [v3 setTaskCompleted];
}

- (void)_loadSavedTaskInfo
{
  v15 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"ICBackgroundTaskScheduler"];

  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ loaded persisted task info %{public}@", &v11, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 objectForKey:@"scheduled_tasks"];
    v7 = v6;
    if (v6)
    {
      dictionary = [(NSMutableDictionary *)v6 mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    taskInfoDictionaries = self->_taskInfoDictionaries;
    self->_taskInfoDictionaries = dictionary;
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_taskInfoDictionaries;
    self->_taskInfoDictionaries = dictionary2;
  }
}

- (void)cancelTask:(id)task
{
  v10 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2114;
    v9 = taskCopy;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ canceling task '%{public}@'", &v6, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_taskInfoDictionaries removeObjectForKey:taskCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(ICBGTaskScheduler *)self _scheduleNextTask];
}

- (BOOL)hasScheduledTask:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_taskInfoDictionaries objectForKey:taskCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5 != 0;
}

- (void)scheduleRecurringTask:(id)task withInterval:(double)interval afterDelay:(double)delay withUserData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  dataCopy = data;
  if (interval <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICBGTaskScheduler.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"interval > 0"}];
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13 + delay;
  v15 = objc_opt_new();
  [v15 setObject:taskCopy forKey:@"identifier"];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  [v15 setObject:v16 forKey:@"time"];

  [v15 setObject:MEMORY[0x1E695E118] forKey:@"is_recurring"];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:interval];
  [v15 setObject:v17 forKey:@"interval"];

  if (dataCopy)
  {
    [v15 setObject:dataCopy forKey:@"userData"];
  }

  v18 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v22 = 2114;
    v23 = taskCopy;
    v24 = 2048;
    intervalCopy = interval;
    v26 = 2048;
    delayCopy = delay;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling recurring task '%{public}@' with interval %f and delay %f", buf, 0x2Au);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_taskInfoDictionaries setObject:v15 forKey:taskCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(ICBGTaskScheduler *)self _saveTaskInfo];
  [(ICBGTaskScheduler *)self _scheduleNextTask];
}

- (void)scheduleTask:(id)task afterDelay:(double)delay withUserData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  dataCopy = data;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v11 = v10 + delay;
  v12 = objc_opt_new();
  [v12 setObject:taskCopy forKey:@"identifier"];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
  [v12 setObject:v13 forKey:@"time"];

  [v12 setObject:MEMORY[0x1E695E110] forKey:@"is_recurring"];
  if (dataCopy)
  {
    [v12 setObject:dataCopy forKey:@"userData"];
  }

  v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    selfCopy = self;
    v17 = 2114;
    v18 = taskCopy;
    v19 = 2048;
    delayCopy = delay;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling task '%{public}@' with delay %f", &v15, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_taskInfoDictionaries setObject:v12 forKey:taskCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(ICBGTaskScheduler *)self _saveTaskInfo];
  [(ICBGTaskScheduler *)self _scheduleNextTask];
}

- (void)registerForTask:(id)task handler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    selfCopy = self;
    v13 = 2114;
    v14 = taskCopy;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering handler for task '%{public}@'", &v11, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  taskHandlers = self->_taskHandlers;
  v10 = MEMORY[0x1B8C781E0](handlerCopy);

  [(NSMutableDictionary *)taskHandlers setObject:v10 forKey:taskCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(ICBGTaskScheduler *)self _postExpiredEvents];
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = ICBGTaskScheduler;
  v2 = [(ICBGTaskScheduler *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaservices.ICBGTaskScheduler.queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    taskHandlers = v2->_taskHandlers;
    v2->_taskHandlers = dictionary;

    v7 = +[ICClientInfo defaultInfo];
    processName = [v7 processName];

    v9 = [@"com.apple.itunescloud.ICBackgroundTaskScheduler.task_identifier" stringByAppendingFormat:@".%@", processName];
    taskIdentifier = v2->_taskIdentifier;
    v2->_taskIdentifier = v9;

    [(ICBGTaskScheduler *)v2 _loadSavedTaskInfo];
  }

  return v2;
}

uint64_t __40__ICBGTaskScheduler_sharedTaskScheduler__block_invoke()
{
  v0 = [[ICBGTaskScheduler alloc] _init];
  v1 = sharedTaskScheduler__scheduler;
  sharedTaskScheduler__scheduler = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end