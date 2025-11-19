@interface LSApplicationRecord(UserNotificationsKit)
+ (id)unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:()UserNotificationsKit;
+ (void)_unkit_enumerateRecordsWithOptions:()UserNotificationsKit block:;
+ (void)unkit_enumerateApplicationRecordsEligibleToDeliverNotifications:()UserNotificationsKit;
- (uint64_t)unkit_isEligibleToDeliverNotificationsAllowingSystemPlaceholders:()UserNotificationsKit;
@end

@implementation LSApplicationRecord(UserNotificationsKit)

+ (void)unkit_enumerateApplicationRecordsEligibleToDeliverNotifications:()UserNotificationsKit
{
  v4 = a3;
  [a1 _unkit_enumerateRecordsWithOptions:0 block:v4];
  [a1 _unkit_enumerateRecordsWithOptions:64 block:v4];
}

- (uint64_t)unkit_isEligibleToDeliverNotificationsAllowingSystemPlaceholders:()UserNotificationsKit
{
  v5 = [a1 isLaunchProhibited];
  v6 = [a1 applicationState];
  if (![v6 isInstalled] || v5)
  {
    v7 = [a1 unkit_isWebAppPlaceholder];
    if ((v7 & 1) == 0 && a3)
    {
      v7 = [a1 isSystemPlaceholder];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:()UserNotificationsKit
{
  v3 = a3;
  v15 = 0;
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v3 allowPlaceholder:1 error:&v15];
  v5 = v15;
  if (!v4)
  {
    v14 = v5;
    v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifierOfSystemPlaceholder:v3 error:&v14];
    v6 = v14;

    v5 = v6;
  }

  v7 = objc_opt_class();
  v8 = v4;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v5)
  {
    v11 = NCUILogUtilities;
    if (os_log_type_enabled(NCUILogUtilities, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationRecord(UserNotificationsKit) *)v3 unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v8, v11];
    }
  }

  else if (([v10 unkit_isEligibleToDeliverNotificationsAllowingSystemPlaceholders:1] & 1) == 0)
  {
    v12 = NCUILogUtilities;
    if (os_log_type_enabled(NCUILogUtilities, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationRecord(UserNotificationsKit) *)v3 unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v12];
    }

    v10 = 0;
  }

  return v10;
}

+ (void)_unkit_enumerateRecordsWithOptions:()UserNotificationsKit block:
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CC1E70] enumeratorWithOptions:a3];
  [v6 setFilter:&__block_literal_global_2];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v5[2](v5, *(*(&v12 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (void)unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:()UserNotificationsKit .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2 != 0;
  v5 = a3;
  v6 = MEMORY[0x2743AEC00](v4);
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_270A33000, v5, OS_LOG_TYPE_ERROR, "Error looking up application record for bundle-id '%{public}@'. Bundle record exists: '%{public}@'", &v7, 0x16u);
}

+ (void)unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:()UserNotificationsKit .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_270A33000, a2, OS_LOG_TYPE_ERROR, "Application record for bundle-id '%{public}@' is ineligible to deliver notifications.", &v2, 0xCu);
}

@end