@interface LSApplicationRecord(UserNotificationsCore)
+ (id)unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:()UserNotificationsCore;
+ (void)_uns_enumerateRecordsWithOptions:()UserNotificationsCore block:;
+ (void)unc_enumerateApplicationRecordsEligibleToDeliverNotifications:()UserNotificationsCore;
- (uint64_t)unc_isEligibleToDeliverNotifications;
@end

@implementation LSApplicationRecord(UserNotificationsCore)

- (uint64_t)unc_isEligibleToDeliverNotifications
{
  isLaunchProhibited = [self isLaunchProhibited];
  applicationState = [self applicationState];
  if (![applicationState isInstalled] || isLaunchProhibited)
  {
    isWebApp = [self isWebApp];
  }

  else
  {
    isWebApp = 1;
  }

  return isWebApp;
}

+ (void)unc_enumerateApplicationRecordsEligibleToDeliverNotifications:()UserNotificationsCore
{
  v4 = a3;
  [self _uns_enumerateRecordsWithOptions:0 block:v4];
  [self _uns_enumerateRecordsWithOptions:64 block:v4];
}

+ (id)unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:()UserNotificationsCore
{
  v3 = a3;
  v13 = 0;
  v4 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v3 allowPlaceholder:1 error:&v13];
  v5 = v13;
  v6 = objc_opt_class();
  v7 = v4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v5)
  {
    UNRegisterUserNotificationsLogging();
    v10 = *MEMORY[0x1E69833B8];
    if (os_log_type_enabled(*MEMORY[0x1E69833B8], OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationRecord(UserNotificationsCore) *)v3 unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v7, v10];
    }
  }

  else if (([v9 unc_isEligibleToDeliverNotifications] & 1) == 0)
  {
    UNRegisterUserNotificationsLogging();
    v11 = *MEMORY[0x1E69833B8];
    if (os_log_type_enabled(*MEMORY[0x1E69833B8], OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationRecord(UserNotificationsCore) *)v3 unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v11];
    }

    v9 = 0;
  }

  return v9;
}

+ (void)_uns_enumerateRecordsWithOptions:()UserNotificationsCore block:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E69635F8] enumeratorWithOptions:a3];
  [v6 setFilter:&__block_literal_global_16];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v5[2](v5, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:()UserNotificationsCore .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2 != 0;
  v5 = a3;
  v6 = MEMORY[0x1E12729D0](v4);
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_ERROR, "Error looking up application record for bundle-id '%{public}@'. Bundle record exists: '%{public}@'", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)unc_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:()UserNotificationsCore .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DA7A9000, a2, OS_LOG_TYPE_ERROR, "Application record for bundle-id '%{public}@' is ineligible to deliver notifications.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end