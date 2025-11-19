@interface PerformPauseOrResumeBackgroundTask
@end

@implementation PerformPauseOrResumeBackgroundTask

void ___PerformPauseOrResumeBackgroundTask_block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLUserStatusUIGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v21 = v8;
      v9 = "Did %{public}@ system budgets for iCloud Photos";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    *buf = 138543618;
    v21 = v13;
    v22 = 2112;
    v23 = v5;
    v9 = "Failed to %{public}@ system budgets for iCloud Photos with error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___PerformPauseOrResumeBackgroundTask_block_invoke_133;
  block[3] = &unk_1E774B368;
  v14 = *(a1 + 40);
  v19 = a2;
  v17 = v14;
  v18 = v5;
  v15 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end