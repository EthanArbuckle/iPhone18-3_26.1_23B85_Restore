@interface PXCPLLearnMoreClientVersionTooOldInformationActionPerformer
- (void)_didOpenURL:(BOOL)l;
- (void)performBackgroundTask;
@end

@implementation PXCPLLearnMoreClientVersionTooOldInformationActionPerformer

- (void)_didOpenURL:(BOOL)l
{
  lCopy = l;
  if (l)
  {
    v5 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Did navigate to 'client version too old' KB article", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to navigate to 'client version too old' KB article"];
    v5 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Failed to navigate to 'client version too old' KB article", v7, 2u);
    }
  }

  [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:lCopy error:v6];
}

- (void)performBackgroundTask
{
  v3 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Will navigate to 'client version too old' KB article", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/ht212139?cid=mc-ols-icloudphotos-article_ht212139-ios_ui-01212021"];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__PXCPLLearnMoreClientVersionTooOldInformationActionPerformer_performBackgroundTask__block_invoke;
  v6[3] = &unk_1E7747EB0;
  objc_copyWeak(&v7, buf);
  [mEMORY[0x1E69DC668] openURL:v4 withCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __84__PXCPLLearnMoreClientVersionTooOldInformationActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didOpenURL:a2];
}

@end