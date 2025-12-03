@interface RBLSBundleProperties
- (id)bundleInfoValuesForKeys:(id)keys;
- (id)proxy;
- (uint64_t)initWithApplicationProxy:(uint64_t)proxy;
- (uint64_t)initWithBundleProxy:(uint64_t)proxy;
@end

@implementation RBLSBundleProperties

- (id)bundleInfoValuesForKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    [(RBLSBundleProperties *)self bundleInfoValuesForKeys:keysCopy, &v7];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)initWithBundleProxy:(uint64_t)proxy
{
  v3 = a2;
  if (proxy)
  {
    proxy = [proxy init];
    if (proxy)
    {
      bundleIdentifier = [v3 bundleIdentifier];
      v5 = *(proxy + 24);
      *(proxy + 24) = bundleIdentifier;

      bundleURL = [v3 bundleURL];
      path = [bundleURL path];
      v8 = *(proxy + 32);
      *(proxy + 32) = path;

      canonicalExecutablePath = [v3 canonicalExecutablePath];
      v10 = *(proxy + 40);
      *(proxy + 40) = canonicalExecutablePath;

      dataContainerURL = [v3 dataContainerURL];
      v12 = *(proxy + 56);
      *(proxy + 56) = dataContainerURL;

      environmentVariables = [v3 environmentVariables];
      v14 = *(proxy + 72);
      *(proxy + 72) = environmentVariables;

      _rb_extensionPointIdentifier = [v3 _rb_extensionPointIdentifier];
      v16 = *(proxy + 48);
      *(proxy + 48) = _rb_extensionPointIdentifier;

      v17 = *(proxy + 48);
      *(proxy + 15) = v17 != 0;
      if (v17)
      {
        v18 = [v3 entitlementValueForKey:@"com.apple.private.security.container-required" ofClass:objc_opt_class()];
        v19 = *(proxy + 64);
        *(proxy + 64) = v18;
      }

      v20 = objc_opt_new();
      v21 = *(proxy + 80);
      *(proxy + 80) = v20;

      entitlements = [v3 entitlements];
      v23 = [entitlements objectForKey:@"com.apple.security.application-groups"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [MEMORY[0x277CBEB98] setWithArray:v23];
        v25 = *(proxy + 80);
        *(proxy + 80) = v24;
      }
    }
  }

  return proxy;
}

- (uint64_t)initWithApplicationProxy:(uint64_t)proxy
{
  v3 = a2;
  if (proxy)
  {
    proxy = [(RBLSBundleProperties *)proxy initWithBundleProxy:v3];
    if (proxy)
    {
      uIBackgroundModes = [v3 UIBackgroundModes];
      if ([uIBackgroundModes containsObject:@"fetch"])
      {
        v5 = 1;
      }

      else
      {
        v5 = [uIBackgroundModes containsObject:@"remote-notification"];
      }

      *(proxy + 9) = v5;
      if ([uIBackgroundModes containsObject:@"voip"])
      {
        v6 = 1;
      }

      else
      {
        v6 = [uIBackgroundModes containsObject:@"push-to-talk"];
      }

      *(proxy + 13) = v6;
      *(proxy + 12) = [uIBackgroundModes containsObject:@"unboundedTaskCompletion"];
      *(proxy + 10) = [uIBackgroundModes containsObject:@"network-authentication"];
      *(proxy + 11) = [uIBackgroundModes containsObject:@"audio"];
      *(proxy + 14) = [uIBackgroundModes containsObject:@"continuous"];
      v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"SBPreferredPriorityBand", 0}];
      v8 = [v3 objectsForInfoDictionaryKeys:v7];
      v9 = [v8 stringForKey:@"SBPreferredPriorityBand"];
      if ([v9 isEqualToString:@"PriorityBandSuspended"])
      {
        *(proxy + 16) = 0;
      }

      else
      {
        if (![v9 isEqualToString:@"PriorityBandMail"])
        {
          v10 = 0;
          *(proxy + 16) = -1;
          goto LABEL_15;
        }

        *(proxy + 16) = 40;
      }

      v10 = 1;
LABEL_15:
      *(proxy + 8) = v10;
    }
  }

  return proxy;
}

- (id)proxy
{
  v15 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = MEMORY[0x277CC1E88];
    v3 = [MEMORY[0x277CBEBC0] URLWithString:*(self + 32)];
    v10 = 0;
    v4 = [v2 bundleProxyForURL:v3 error:&v10];
    v5 = v10;

    if (!v4)
    {
      v6 = rbs_general_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v9 = [MEMORY[0x277CBEBC0] URLWithString:*(self + 32)];
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