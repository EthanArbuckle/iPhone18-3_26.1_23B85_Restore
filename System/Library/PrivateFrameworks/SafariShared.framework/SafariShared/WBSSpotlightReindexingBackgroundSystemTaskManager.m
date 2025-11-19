@interface WBSSpotlightReindexingBackgroundSystemTaskManager
- (WBSSpotlightReindexingBackgroundSystemTaskManager)init;
- (void)registerAndSubmitRequestForTask:(id)a3;
@end

@implementation WBSSpotlightReindexingBackgroundSystemTaskManager

- (WBSSpotlightReindexingBackgroundSystemTaskManager)init
{
  v13.receiver = self;
  v13.super_class = WBSSpotlightReindexingBackgroundSystemTaskManager;
  v2 = [(WBSSpotlightReindexingBackgroundSystemTaskManager *)&v13 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"com.apple.SafariShared.%@.%p", v5, v2];
    v7 = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v9;

    v11 = v2;
  }

  return v2;
}

- (void)registerAndSubmitRequestForTask:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"WBSReindexAllHistoryItemsImmediately"];

  if (v6)
  {
    v4[2](v4);
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__WBSSpotlightReindexingBackgroundSystemTaskManager_registerAndSubmitRequestForTask___block_invoke;
    v22[3] = &unk_1E7FC9118;
    v23 = v4;
    v7 = MEMORY[0x1BFB13CE0](v22);
    v8 = [MEMORY[0x1E698E4B8] sharedScheduler];
    v9 = [v8 registerForTaskWithIdentifier:@"com.apple.SafariShared.SpotlightReindexing" usingQueue:self->_internalQueue launchHandler:v7];

    v10 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Successfully registered background system task to reindex all items to Spotlight.", buf, 2u);
      }

      v12 = [MEMORY[0x1E698E4B8] sharedScheduler];
      v13 = [v12 taskRequestForIdentifier:@"com.apple.SafariShared.SpotlightReindexing"];

      if (v13)
      {
        v14 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_INFO, "Not submitting background system task to reindex all items to Spotlight due to an existing pending task request.", buf, 2u);
        }
      }

      else
      {
        v13 = [objc_alloc(MEMORY[0x1E698E478]) initWithIdentifier:@"com.apple.SafariShared.SpotlightReindexing"];
        [v13 setPriority:2];
        [v13 setRequiresExternalPower:1];
        [v13 setResourceIntensive:1];
        v15 = [MEMORY[0x1E698E4B8] sharedScheduler];
        v20 = 0;
        v16 = [v15 submitTaskRequest:v13 error:&v20];
        v17 = v20;

        v18 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        v19 = v18;
        if (v16)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1BB6F3000, v19, OS_LOG_TYPE_INFO, "Submitted background system task request to reindex all items to Spotlight.", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(WBSSpotlightReindexingBackgroundSystemTaskManager *)v17 registerAndSubmitRequestForTask:v19];
        }
      }
    }

    else if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Failed to register background system task to reindex all items to Spotlight.", buf, 2u);
    }
  }
}

void __85__WBSSpotlightReindexingBackgroundSystemTaskManager_registerAndSubmitRequestForTask___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__WBSSpotlightReindexingBackgroundSystemTaskManager_registerAndSubmitRequestForTask___block_invoke_2;
  v10[3] = &unk_1E7FB6EC8;
  v10[4] = &v11;
  [v3 setExpirationHandler:v10];
  if (*(v12 + 40) == 1)
  {
    v9 = 0;
    v4 = [v3 setTaskExpiredWithRetryAfter:&v9 error:0.0];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __85__WBSSpotlightReindexingBackgroundSystemTaskManager_registerAndSubmitRequestForTask___block_invoke_cold_1(v5, v6);
      }

      [v3 setTaskCompleted];
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Background system task to reindex all items to Spotlight is running.", v8, 2u);
    }

    (*(*(a1 + 32) + 16))();
    [v3 setTaskCompleted];
  }

  _Block_object_dispose(&v11, 8);
}

void __85__WBSSpotlightReindexingBackgroundSystemTaskManager_registerAndSubmitRequestForTask___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BB6F3000, v2, OS_LOG_TYPE_INFO, "Background system task to reindex all items to Spotlight is expiring.", v3, 2u);
  }

  *(*(*(a1 + 32) + 8) + 40) = 1;
}

- (void)registerAndSubmitRequestForTask:(__CFString *)a1 .cold.1(__CFString *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"Unknown";
  if (a1)
  {
    v2 = a1;
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to submit background system task to reindex all items to Spotlight with error: %@", &v3, 0xCu);
}

void __85__WBSSpotlightReindexingBackgroundSystemTaskManager_registerAndSubmitRequestForTask___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to expire background system task to reindex all items to Spotlight with error: %@", &v2, 0xCu);
}

@end