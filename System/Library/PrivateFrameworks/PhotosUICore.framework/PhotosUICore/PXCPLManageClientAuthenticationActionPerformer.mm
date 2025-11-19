@interface PXCPLManageClientAuthenticationActionPerformer
- (void)performBackgroundTask;
@end

@implementation PXCPLManageClientAuthenticationActionPerformer

- (void)performBackgroundTask
{
  v3 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Will navigate to Apple Account Settings to accept Terms and Conditions for iCloud", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__PXCPLManageClientAuthenticationActionPerformer_performBackgroundTask__block_invoke;
  v4[3] = &unk_1E774C5C0;
  v4[4] = self;
  [PXSystemNavigation navigateToDestination:3 completion:v4];
}

void __71__PXCPLManageClientAuthenticationActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLUserStatusUIGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v8 = "Did navigate to Apple Account Settings to accept Terms and Conditions for iCloud";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 2;
LABEL_6:
      _os_log_impl(&dword_1A3C1C000, v9, v10, v8, &v12, v11);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v5;
    v8 = "Failed to navigate to Apple Account Settings to accept Terms and Conditions for iCloud: %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 12;
    goto LABEL_6;
  }

  [*(a1 + 32) completeBackgroundTaskWithSuccess:a2 error:v5];
}

@end