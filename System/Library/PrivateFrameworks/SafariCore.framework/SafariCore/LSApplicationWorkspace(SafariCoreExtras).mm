@interface LSApplicationWorkspace(SafariCoreExtras)
- (void)safari_setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:()SafariCoreExtras shouldFallBackToSystemHandlerIfNeeded:completionHandler:;
- (void)safari_setDefaultOTPAuthURLHandlerToApplicationWithBundleIdentifier:()SafariCoreExtras shouldFallBackToSystemHandlerIfNeeded:completionHandler:;
- (void)safari_setDefaultURLHandlerForScheme:()SafariCoreExtras toApplicationWithBundleIdentifier:completionHandler:;
@end

@implementation LSApplicationWorkspace(SafariCoreExtras)

- (void)safari_setDefaultURLHandlerForScheme:()SafariCoreExtras toApplicationWithBundleIdentifier:completionHandler:
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = WBS_LOG_CHANNEL_PREFIXOther();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_1B8447000, v11, OS_LOG_TYPE_INFO, "Attempting to set default URL handler for scheme %@ to bundle ID %@", buf, 0x16u);
  }

  v20 = 0;
  v12 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:&v20];
  v13 = v20;
  if (v12)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __133__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultURLHandlerForScheme_toApplicationWithBundleIdentifier_completionHandler___block_invoke;
    v16[3] = &unk_1E7CF23A0;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    [self setDefaultURLHandlerForScheme:v17 to:v12 completion:v16];
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXOther();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace(SafariCoreExtras) safari_setDefaultURLHandlerForScheme:v9 toApplicationWithBundleIdentifier:v14 completionHandler:v13];
    }

    (*(v10 + 2))(v10, 0, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)safari_setDefaultOTPAuthURLHandlerToApplicationWithBundleIdentifier:()SafariCoreExtras shouldFallBackToSystemHandlerIfNeeded:completionHandler:
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __168__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultOTPAuthURLHandlerToApplicationWithBundleIdentifier_shouldFallBackToSystemHandlerIfNeeded_completionHandler___block_invoke;
  v10[3] = &unk_1E7CF23C8;
  v12 = a4;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [self safari_setDefaultURLHandlerForScheme:@"otpauth" toApplicationWithBundleIdentifier:a3 completionHandler:v10];
}

- (void)safari_setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:()SafariCoreExtras shouldFallBackToSystemHandlerIfNeeded:completionHandler:
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __177__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier_shouldFallBackToSystemHandlerIfNeeded_completionHandler___block_invoke;
  v10[3] = &unk_1E7CF23C8;
  v12 = a4;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [self safari_setDefaultURLHandlerForScheme:@"otpauth-migration" toApplicationWithBundleIdentifier:a3 completionHandler:v10];
}

- (void)safari_setDefaultURLHandlerForScheme:()SafariCoreExtras toApplicationWithBundleIdentifier:completionHandler:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v8 = 138412546;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_1B8447000, v5, OS_LOG_TYPE_ERROR, "Failed to load application record for bundle ID %@; error=%{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end