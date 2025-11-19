@interface LSApplicationWorkspace
@end

@implementation LSApplicationWorkspace

void __133__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultURLHandlerForScheme_toApplicationWithBundleIdentifier_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(*(a1 + 48) + 16);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __133__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultURLHandlerForScheme_toApplicationWithBundleIdentifier_completionHandler___block_invoke_cold_1(a1, v7, v5);
    }

    v6 = *(*(a1 + 48) + 16);
  }

  v6();
}

void __168__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultOTPAuthURLHandlerToApplicationWithBundleIdentifier_shouldFallBackToSystemHandlerIfNeeded_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) safari_setDefaultURLHandlerForScheme:@"otpauth" toApplicationWithBundleIdentifier:@"com.apple.Preferences" completionHandler:*(a1 + 40)];
      goto LABEL_7;
    }

    v5 = *(*(a1 + 40) + 16);
  }

  v5();
LABEL_7:
}

void __177__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier_shouldFallBackToSystemHandlerIfNeeded_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) safari_setDefaultURLHandlerForScheme:@"otpauth-migration" toApplicationWithBundleIdentifier:@"com.apple.Preferences" completionHandler:*(a1 + 40)];
      goto LABEL_7;
    }

    v5 = *(*(a1 + 40) + 16);
  }

  v5();
LABEL_7:
}

void __133__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultURLHandlerForScheme_toApplicationWithBundleIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 safari_privacyPreservingDescription];
  v9 = 138412802;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  v13 = 2114;
  v14 = v7;
  _os_log_error_impl(&dword_1B8447000, v6, OS_LOG_TYPE_ERROR, "Failed to set default URL handler for scheme %@ to bundle ID %@; error=%{public}@", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

@end