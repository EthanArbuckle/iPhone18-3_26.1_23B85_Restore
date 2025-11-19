@interface WBSettingsTaskHandler
- (BOOL)_shouldEnqueueTask:(id)a3;
- (WBSettingsTaskHandler)init;
- (void)_attemptCurrentTask;
- (void)_currentTaskAttemptDidFinishWithError:(id)a3;
- (void)_enqueueTask:(id)a3;
- (void)_finishCurrentTask;
- (void)_performNextTask;
- (void)enqueueTask:(id)a3;
@end

@implementation WBSettingsTaskHandler

- (WBSettingsTaskHandler)init
{
  v12.receiver = self;
  v12.super_class = WBSettingsTaskHandler;
  v2 = [(WBSettingsTaskHandler *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.WebBookmarks.WBSettingsTaskHandler.%p", v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [MEMORY[0x277CBEB18] array];
    tasks = v2->_tasks;
    v2->_tasks = v8;

    v10 = v2;
  }

  return v2;
}

- (void)enqueueTask:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__WBSettingsTaskHandler_enqueueTask___block_invoke;
  v7[3] = &unk_279E753F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_enqueueTask:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(WBSettingsTaskHandler *)self _shouldEnqueueTask:v4])
  {
    [(NSMutableArray *)self->_tasks addObject:v4];
    [(WBSettingsTaskHandler *)self _performNextTask];
  }

  else
  {
    v5 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v8 = 134217984;
      v9 = [v4 taskType];
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "Not queueing settings task with type %ld since one has already been scheduled.", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldEnqueueTask:(id)a3
{
  v4 = a3;
  v5 = [v4 websiteDataRecord];
  if (v5)
  {

LABEL_12:
    v16 = 1;
    goto LABEL_13;
  }

  v6 = [v4 profileIdentifier];

  if (v6)
  {
    goto LABEL_12;
  }

  v7 = [(NSMutableArray *)self->_tasks count];
  v8 = [v4 taskType];
  v9 = v7 - 2;
  if (v7 < 2)
  {
    goto LABEL_12;
  }

  v10 = v8;
  v11 = 1;
  do
  {
    v12 = [(NSMutableArray *)self->_tasks objectAtIndexedSubscript:v11];
    v13 = [v12 taskType];

    v15 = v9-- != 0;
    v16 = v13 != v10;
    if (v13 == v10)
    {
      break;
    }

    ++v11;
  }

  while (v15);
LABEL_13:

  return v16;
}

- (void)_performNextTask
{
  v3 = [(NSMutableArray *)self->_tasks count];
  currentTask = self->_currentTask;
  if (currentTask)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    backgroundTaskAssertionToken = self->_backgroundTaskAssertionToken;
    if (backgroundTaskAssertionToken)
    {
      finishBackgroundTaskAssertionBlock = self->_finishBackgroundTaskAssertionBlock;
      if (finishBackgroundTaskAssertionBlock)
      {
        finishBackgroundTaskAssertionBlock = finishBackgroundTaskAssertionBlock[2]();
        backgroundTaskAssertionToken = self->_backgroundTaskAssertionToken;
      }

      self->_backgroundTaskAssertionToken = 0;

      MEMORY[0x2821F96F8](finishBackgroundTaskAssertionBlock, backgroundTaskAssertionToken);
    }
  }

  else
  {
    if (currentTask)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 == 0;
    }

    if (!v6)
    {
      if (!self->_backgroundTaskAssertionToken)
      {
        startBackgroundTaskAssertionBlock = self->_startBackgroundTaskAssertionBlock;
        if (startBackgroundTaskAssertionBlock)
        {
          v8 = startBackgroundTaskAssertionBlock[2]();
          v9 = self->_backgroundTaskAssertionToken;
          self->_backgroundTaskAssertionToken = v8;
        }
      }

      v10 = [(NSMutableArray *)self->_tasks objectAtIndexedSubscript:0];
      v11 = self->_currentTask;
      self->_currentTask = v10;

      self->_currentRetryCount = 0;
      [(NSMutableArray *)self->_tasks removeObjectAtIndex:0];

      [(WBSettingsTaskHandler *)self _attemptCurrentTask];
    }
  }
}

- (void)_attemptCurrentTask
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_7(&dword_272C20000, a2, a3, "Dropping settings task with type %ld because maximum retry count exceeded", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void __44__WBSettingsTaskHandler__attemptCurrentTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WBSettingsTaskHandler__attemptCurrentTask__block_invoke_2;
  v7[3] = &unk_279E753F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __44__WBSettingsTaskHandler__attemptCurrentTask__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WBSettingsTaskHandler__attemptCurrentTask__block_invoke_2_6;
  v7[3] = &unk_279E753F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WBSettingsTaskHandler__attemptCurrentTask__block_invoke_6;
  v7[3] = &unk_279E753F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __44__WBSettingsTaskHandler__attemptCurrentTask__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WBSettingsTaskHandler__attemptCurrentTask__block_invoke_4;
  v7[3] = &unk_279E753F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __44__WBSettingsTaskHandler__attemptCurrentTask__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__WBSettingsTaskHandler__attemptCurrentTask__block_invoke_8;
  v7[3] = &unk_279E753F0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_finishCurrentTask
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    currentTask = self->_currentTask;
    v5 = v3;
    v8 = 134217984;
    v9 = [(WBSettingsTask *)currentTask taskType];
    _os_log_impl(&dword_272C20000, v5, OS_LOG_TYPE_INFO, "Marking current task with type %ld as finished. Attempting next available task", &v8, 0xCu);
  }

  v6 = self->_currentTask;
  self->_currentTask = 0;

  [(WBSettingsTaskHandler *)self _performNextTask];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_currentTaskAttemptDidFinishWithError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"WebBookmarksXPCConnectionErrorDomain"];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(WBSettingsTask *)self->_currentTask taskType];
      v9 = [v4 wb_privacyPreservingDescription];
      [(WBSettingsTaskHandler *)v9 _currentTaskAttemptDidFinishWithError:buf, v8, v7];
    }

    v10 = dispatch_time(0, 200000000);
    queue = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__WBSettingsTaskHandler__currentTaskAttemptDidFinishWithError___block_invoke;
    v17[3] = &unk_279E75450;
    objc_copyWeak(&v18, &location);
    dispatch_after(v10, queue, v17);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    v13 = v12;
    if (v4)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(WBSettingsTaskHandler *)self _currentTaskAttemptDidFinishWithError:v13, v4];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      currentTask = self->_currentTask;
      v15 = v13;
      *buf = 134217984;
      v21 = [(WBSettingsTask *)currentTask taskType];
      _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_INFO, "Successfully performed settings task with type: %ld", buf, 0xCu);
    }

    [(WBSettingsTaskHandler *)self _finishCurrentTask];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __63__WBSettingsTaskHandler__currentTaskAttemptDidFinishWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    ++WeakRetained[4];
    v2 = WeakRetained;
    [WeakRetained _attemptCurrentTask];
    WeakRetained = v2;
  }
}

- (void)_currentTaskAttemptDidFinishWithError:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  v5 = a2;
  v6 = [v4 taskType];
  v7 = [a3 wb_privacyPreservingDescription];
  v9 = 134218242;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_272C20000, v5, OS_LOG_TYPE_ERROR, "Settings task with type %ld finished with a non-xpc error %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_currentTaskAttemptDidFinishWithError:(uint64_t)a3 .cold.2(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Received error while performing settings task with type: %ld, error: %{public}@", buf, 0x16u);
}

@end