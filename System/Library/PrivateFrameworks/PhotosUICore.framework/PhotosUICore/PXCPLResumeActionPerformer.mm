@interface PXCPLResumeActionPerformer
- (void)performBackgroundTask;
@end

@implementation PXCPLResumeActionPerformer

- (void)performBackgroundTask
{
  v12 = *MEMORY[0x1E69E9840];
  cplUIStatus = [(PXCPLActionPerformer *)self cplUIStatus];
  pauseReason = [cplUIStatus pauseReason];

  v5 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (pauseReason > 0x12)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_1E7748A00[pauseReason];
    }

    v7 = v6;
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Will resume iCloud Photos for: %{public}@", &v10, 0xCu);
  }

  if (pauseReason > 0x12)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E7748A00[pauseReason];
  }

  v9 = v8;
  _PerformPauseOrResumeBackgroundTask(0, pauseReason == 1, v9, self);
}

@end