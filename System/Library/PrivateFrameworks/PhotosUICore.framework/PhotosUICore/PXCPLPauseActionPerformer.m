@interface PXCPLPauseActionPerformer
- (void)performBackgroundTask;
@end

@implementation PXCPLPauseActionPerformer

- (void)performBackgroundTask
{
  v3 = [(PXCPLActionPerformer *)self cplUIStatus];
  v4 = [v3 pauseReason];

  v5 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Will pause iCloud Photos", v8, 2u);
  }

  if (v4 > 0x12)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7748A00[v4];
  }

  v7 = v6;
  _PerformPauseOrResumeBackgroundTask(1, 1, v7, self);
}

@end