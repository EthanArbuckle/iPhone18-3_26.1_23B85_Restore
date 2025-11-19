@interface PXCPLLearnMoreUpgradeSuggestedActionPerformer
- (void)_didOpenURL:(BOOL)a3;
- (void)performBackgroundTask;
@end

@implementation PXCPLLearnMoreUpgradeSuggestedActionPerformer

- (void)_didOpenURL:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Did navigate to 'upgrade suggested' KB article", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to navigate to 'upgrade suggested' KB article"];
    v5 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Failed to navigate to 'upgrade suggested' KB article", v7, 2u);
    }
  }

  [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:v3 error:v6];
}

- (void)performBackgroundTask
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotoKitCPLActionPerformer *)self photoLibrary];
  v4 = [v3 cplStatus];

  v5 = [v4 clientFeatureCompatibleVersion];
  v6 = [v4 serverFeatureCompatibleVersion];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deviceFeatureVersion=%lu", v5];
    [v7 addObject:v8];
  }

  if (v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"serverFeatureVersion=%lu#%lu", v6, v6];
    [v7 addObject:v9];
  }

  if ([v7 count])
  {
    v10 = [@"https://support.apple.com/kb/HT210706" stringByAppendingString:@"?"];
    v11 = [v7 componentsJoinedByString:@"&"];
    v12 = [v10 stringByAppendingString:v11];
  }

  else
  {
    v12 = @"https://support.apple.com/kb/HT210706";
  }

  v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];

  v14 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v13;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Will navigate to 'upgrade suggested' KB article with URL: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__PXCPLLearnMoreUpgradeSuggestedActionPerformer_performBackgroundTask__block_invoke;
  v16[3] = &unk_1E7747EB0;
  objc_copyWeak(&v17, buf);
  [v15 openURL:v13 withCompletionHandler:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __70__PXCPLLearnMoreUpgradeSuggestedActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didOpenURL:a2];
}

@end