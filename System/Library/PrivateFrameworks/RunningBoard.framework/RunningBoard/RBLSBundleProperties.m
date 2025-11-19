@interface RBLSBundleProperties
- (id)bundleInfoValuesForKeys:(id)a3;
- (id)proxy;
- (uint64_t)initWithApplicationProxy:(uint64_t)a1;
- (uint64_t)initWithBundleProxy:(uint64_t)a1;
@end

@implementation RBLSBundleProperties

- (id)bundleInfoValuesForKeys:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    [(RBLSBundleProperties *)self bundleInfoValuesForKeys:v4, &v7];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)initWithBundleProxy:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = [a1 init];
    if (a1)
    {
      v4 = [v3 bundleIdentifier];
      v5 = *(a1 + 24);
      *(a1 + 24) = v4;

      v6 = [v3 bundleURL];
      v7 = [v6 path];
      v8 = *(a1 + 32);
      *(a1 + 32) = v7;

      v9 = [v3 canonicalExecutablePath];
      v10 = *(a1 + 40);
      *(a1 + 40) = v9;

      v11 = [v3 dataContainerURL];
      v12 = *(a1 + 56);
      *(a1 + 56) = v11;

      v13 = [v3 environmentVariables];
      v14 = *(a1 + 72);
      *(a1 + 72) = v13;

      v15 = [v3 _rb_extensionPointIdentifier];
      v16 = *(a1 + 48);
      *(a1 + 48) = v15;

      v17 = *(a1 + 48);
      *(a1 + 15) = v17 != 0;
      if (v17)
      {
        v18 = [v3 entitlementValueForKey:@"com.apple.private.security.container-required" ofClass:objc_opt_class()];
        v19 = *(a1 + 64);
        *(a1 + 64) = v18;
      }

      v20 = objc_opt_new();
      v21 = *(a1 + 80);
      *(a1 + 80) = v20;

      v22 = [v3 entitlements];
      v23 = [v22 objectForKey:@"com.apple.security.application-groups"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [MEMORY[0x277CBEB98] setWithArray:v23];
        v25 = *(a1 + 80);
        *(a1 + 80) = v24;
      }
    }
  }

  return a1;
}

- (uint64_t)initWithApplicationProxy:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    a1 = [(RBLSBundleProperties *)a1 initWithBundleProxy:v3];
    if (a1)
    {
      v4 = [v3 UIBackgroundModes];
      if ([v4 containsObject:@"fetch"])
      {
        v5 = 1;
      }

      else
      {
        v5 = [v4 containsObject:@"remote-notification"];
      }

      *(a1 + 9) = v5;
      if ([v4 containsObject:@"voip"])
      {
        v6 = 1;
      }

      else
      {
        v6 = [v4 containsObject:@"push-to-talk"];
      }

      *(a1 + 13) = v6;
      *(a1 + 12) = [v4 containsObject:@"unboundedTaskCompletion"];
      *(a1 + 10) = [v4 containsObject:@"network-authentication"];
      *(a1 + 11) = [v4 containsObject:@"audio"];
      *(a1 + 14) = [v4 containsObject:@"continuous"];
      v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"SBPreferredPriorityBand", 0}];
      v8 = [v3 objectsForInfoDictionaryKeys:v7];
      v9 = [v8 stringForKey:@"SBPreferredPriorityBand"];
      if ([v9 isEqualToString:@"PriorityBandSuspended"])
      {
        *(a1 + 16) = 0;
      }

      else
      {
        if (![v9 isEqualToString:@"PriorityBandMail"])
        {
          v10 = 0;
          *(a1 + 16) = -1;
          goto LABEL_15;
        }

        *(a1 + 16) = 40;
      }

      v10 = 1;
LABEL_15:
      *(a1 + 8) = v10;
    }
  }

  return a1;
}

- (id)proxy
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = MEMORY[0x277CC1E88];
    v3 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
    v10 = 0;
    v4 = [v2 bundleProxyForURL:v3 error:&v10];
    v5 = v10;

    if (!v4)
    {
      v6 = rbs_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v9 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
        *buf = 138543618;
        v12 = v9;
        v13 = 2114;
        v14 = v5;
        _os_log_fault_impl(&dword_262485000, v6, OS_LOG_TYPE_FAULT, "LSBundleProxy lookup for %{public}@, failed with %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)bundleInfoValuesForKeys:(uint64_t *)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = [(RBLSBundleProperties *)a1 proxy];
  v6 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v7 = [v5 objectsForInfoDictionaryKeys:v6];

  *a3 = [v7 rawValues];
}

@end