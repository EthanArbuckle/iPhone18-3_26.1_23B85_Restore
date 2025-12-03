@interface STUsageCountedItem
+ (id)notificationItemsExcludingSystemHiddenApplications:(id)applications;
+ (id)pickupItemsExcludingSystemHiddenApplications:(id)applications;
@end

@implementation STUsageCountedItem

+ (id)notificationItemsExcludingSystemHiddenApplications:(id)applications
{
  v38 = *MEMORY[0x1E69E9840];
  applicationsCopy = applications;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(applicationsCopy, "count")}];
  v5 = [MEMORY[0x1E6993B98] systemHiddenBundleIdentifiersForDeviceFamily:102];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = applicationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    v31 = v4;
    v32 = v6;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        numberOfNotifications = [v11 numberOfNotifications];
        bundleIdentifier = [v11 bundleIdentifier];
        if (numberOfNotifications >= 1 && ([v5 containsObject:bundleIdentifier] & 1) == 0 && (-[__CFString hasPrefix:](bundleIdentifier, "hasPrefix:", @"_SYSTEM_CENTER_:") & 1) == 0 && (-[__CFString hasPrefix:](bundleIdentifier, "hasPrefix:", @"_SOCIAL_CENTER_:") & 1) == 0)
        {
          v14 = [(__CFString *)bundleIdentifier hasPrefix:@"_WEB_CENTER_:"];
          v15 = @"com.apple.mobilesafari";
          if ((v14 & 1) == 0)
          {
            v16 = [(__CFString *)bundleIdentifier hasPrefix:@"_WALLET_CENTER_:"];
            v15 = @"com.apple.Passbook";
            if (!v16)
            {
              v15 = bundleIdentifier;
            }
          }

          v17 = numberOfNotifications;
          v18 = v15;
          v19 = -[STUsageTrustIdentifier initWithIdentifier:usageTrusted:]([STUsageTrustIdentifier alloc], "initWithIdentifier:usageTrusted:", v18, [v11 usageTrusted]);
          v20 = v4;
          v21 = [v20 objectForKeyedSubscript:v19];
          if (v21)
          {
            v22 = v21;
            [(STUsageDetailItem *)v21 quantity];
            *&v24 = v23 + v17;
            [(STUsageDetailItem *)v22 setQuantity:v24];
          }

          else
          {
            v25 = [STUsageDetailItem alloc];
            identifier = [(STUsageTrustIdentifier *)v19 identifier];
            v22 = [(STUsageDetailItem *)v25 initWithType:1 identifier:identifier usageTrusted:[(STUsageTrustIdentifier *)v19 usageTrusted]];

            v4 = v31;
            *&v27 = v17;
            [(STUsageDetailItem *)v22 setQuantity:v27];
            [v20 setObject:v22 forKeyedSubscript:v19];
          }

          v6 = v32;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }

  allValues = [v4 allValues];

  v29 = *MEMORY[0x1E69E9840];

  return allValues;
}

+ (id)pickupItemsExcludingSystemHiddenApplications:(id)applications
{
  v38 = *MEMORY[0x1E69E9840];
  applicationsCopy = applications;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(applicationsCopy, "count")}];
  v5 = [MEMORY[0x1E6993B98] systemHiddenBundleIdentifiersForDeviceFamily:102];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = applicationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    v10 = 0x1E7CE5000uLL;
    do
    {
      v11 = 0;
      v32 = v8;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        numberOfPickups = [v12 numberOfPickups];
        bundleIdentifier = [v12 bundleIdentifier];
        if (numberOfPickups >= 1 && ([v5 containsObject:bundleIdentifier] & 1) == 0)
        {
          v15 = numberOfPickups;
          v16 = [objc_alloc(*(v10 + 4064)) initWithIdentifier:bundleIdentifier usageTrusted:{objc_msgSend(v12, "usageTrusted")}];
          v17 = v4;
          v18 = [v17 objectForKeyedSubscript:v16];
          if (v18)
          {
            v19 = v18;
            [(STUsageDetailItem *)v18 quantity];
            *&v21 = v20 + v15;
            [(STUsageDetailItem *)v19 setQuantity:v21];
          }

          else
          {
            v22 = [STUsageDetailItem alloc];
            [v16 identifier];
            v23 = v9;
            v24 = v5;
            v25 = v6;
            v27 = v26 = v4;
            v19 = -[STUsageDetailItem initWithType:identifier:usageTrusted:](v22, "initWithType:identifier:usageTrusted:", 1, v27, [v16 usageTrusted]);

            v4 = v26;
            v6 = v25;
            v5 = v24;
            v9 = v23;
            v10 = 0x1E7CE5000;
            *&v28 = v15;
            [(STUsageDetailItem *)v19 setQuantity:v28];
            [v17 setObject:v19 forKeyedSubscript:v16];
          }

          v8 = v32;
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }

  allValues = [v4 allValues];

  v30 = *MEMORY[0x1E69E9840];

  return allValues;
}

@end