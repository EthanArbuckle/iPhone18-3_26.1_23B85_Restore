@interface UNCNotificationServiceExtensionManager
- (id)_extensionForAppBundleIdentifier:(id)a3 error:(id *)a4;
- (id)extensionForBundleIdentifier:(id)a3 error:(id *)a4;
@end

@implementation UNCNotificationServiceExtensionManager

- (id)extensionForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v7 = [(UNCNotificationServiceExtensionManager *)self _extensionForAppBundleIdentifier:v6 error:&v20];
  v8 = v20;
  v9 = v8;
  if (v7)
  {
    v10 = [[UNCNotificationServiceExtension alloc] _initWithExtension:v7 serviceTime:30.0 graceTime:1.0];
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (!v8)
  {
    v9 = [MEMORY[0x1E696ABC0] un_errorWithUNPrivateErrorCode:1904 userInfo:0];
  }

  v11 = *MEMORY[0x1E6983398];
  if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_ERROR))
  {
    [(UNCNotificationServiceExtensionManager *)v6 extensionForBundleIdentifier:v11 error:v12, v13, v14, v15, v16, v17];
  }

  v10 = 0;
  if (a4)
  {
LABEL_9:
    if (v9)
    {
      v18 = v9;
      *a4 = v9;
    }
  }

LABEL_11:

  return v10;
}

- (id)_extensionForAppBundleIdentifier:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
  v7 = v6;
  if (v6)
  {
    v35 = a4;
    v36 = v5;
    [v6 applicationExtensionRecords];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = v40 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v37 + 1) + 8 * v12);
        v14 = [v13 extensionPointRecord];
        v15 = [v14 name];
        v16 = [v15 isEqualToString:@"com.apple.usernotifications.service"];

        if (v16)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v17 = [v13 bundleIdentifier];

      if (!v17)
      {
        goto LABEL_13;
      }

      v18 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v17 error:v35];

      v5 = v36;
    }

    else
    {
LABEL_10:

LABEL_13:
      v19 = *MEMORY[0x1E6983398];
      v5 = v36;
      if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_ERROR))
      {
        [(UNCNotificationServiceExtensionManager *)v36 _extensionForAppBundleIdentifier:v19 error:v20, v21, v22, v23, v24, v25];
      }

      v18 = 0;
    }
  }

  else
  {
    v26 = *MEMORY[0x1E6983398];
    if (os_log_type_enabled(*MEMORY[0x1E6983398], OS_LOG_TYPE_ERROR))
    {
      [(UNCNotificationServiceExtensionManager *)v5 _extensionForAppBundleIdentifier:v26 error:v27, v28, v29, v30, v31, v32];
    }

    v18 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)extensionForBundleIdentifier:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1DA7A9000, a2, a3, "[%{public}@] No valid extension available for bundle", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_extensionForAppBundleIdentifier:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1DA7A9000, a2, a3, "[%{public}@] No service extension record found for app", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_extensionForAppBundleIdentifier:(uint64_t)a3 error:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3(&dword_1DA7A9000, a2, a3, "[%{public}@] No app record for bundle, so cannot find an extension", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end