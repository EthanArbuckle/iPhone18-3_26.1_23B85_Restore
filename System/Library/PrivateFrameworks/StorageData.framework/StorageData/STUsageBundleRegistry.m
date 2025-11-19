@interface STUsageBundleRegistry
- (STUsageBundleRegistry)init;
- (id)loadBundlesForReporters:(id)a3;
- (id)loadReporters;
- (id)usageBundleForIdentifier:(id)a3;
@end

@implementation STUsageBundleRegistry

- (STUsageBundleRegistry)init
{
  v9.receiver = self;
  v9.super_class = STUsageBundleRegistry;
  v2 = [(STUsageBundleRegistry *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(STUsageBundleRegistry *)v2 loadReporters];
    reporters = v3->_reporters;
    v3->_reporters = v4;

    v6 = [(STUsageBundleRegistry *)v3 loadBundlesForReporters:v3->_reporters];
    usageApps = v3->_usageApps;
    v3->_usageApps = v6;
  }

  return v3;
}

- (id)loadReporters
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/UsageBundles" isDirectory:1];
  v5 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:6 error:0];
  v45 = v2;
  v46 = v4;
  if (STStorageIsInternalInstall())
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/AppleInternal/Library/UsageBundles"];
    v7 = [v3 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:6 error:0];
    v8 = [v5 arrayByAddingObjectsFromArray:v7];

    v5 = v8;
  }

  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Cryptexes/App/System/Library/UsageBundles"];
  v47 = v3;
  v10 = [v3 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:6 error:0];
  v11 = [v5 arrayByAddingObjectsFromArray:v10];

  v48 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    v16 = 0x279D1C000uLL;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v49 + 1) + 8 * i);
        v19 = [v18 pathExtension];
        v20 = [v19 isEqualToString:@"bundle"];

        if (v20)
        {
          v21 = [v18 lastPathComponent];
          v22 = [*(v16 + 3088) overridesFor:v21];
          v23 = [v22 ignore];

          if ((v23 & 1) == 0)
          {
            v24 = [MEMORY[0x277CCA8D8] bundleWithURL:v18];
            v25 = [v24 principalClass];
            if ([(objc_class *)v25 conformsToProtocol:&unk_287C94A50])
            {
              v26 = objc_alloc_init(v25);
              if (v26)
              {
                [v18 lastPathComponent];
                v27 = v12;
                v29 = v28 = v16;
                STLog(1, @"Listing app bundle reporter for %@", v30, v31, v32, v33, v34, v35, v29);

                v16 = v28;
                v12 = v27;
                [v48 setObject:v26 forKey:v18];
              }
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v14);
  }

  v36 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  STLog(1, @"%0.3f secs: load usage reporters", v37, v38, v39, v40, v41, v42, COERCE__INT64((v36 - v45) / 1000000000.0));

  v43 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)loadBundlesForReporters:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v46 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v4 = +[STAppOverrides overrides];
  v50 = v3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v7 = [v4 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v64;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v64 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v63 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        v14 = [v13 usageBundleOverride];
        if (v14)
        {
          [v6 setObject:v12 forKeyedSubscript:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v9);
  }

  v47 = v4;

  [v50 allKeys];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v62 = 0u;
  v51 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v51)
  {
    v49 = *v60;
    do
    {
      v15 = 0;
      do
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v54 = v15;
        v16 = *(*(&v59 + 1) + 8 * v15);
        v17 = [v16 lastPathComponent];
        v18 = [v50 objectForKey:v16];
        v53 = v17;
        v19 = [STUsageBundleOverrides overridesFor:v17];
        v20 = [v19 replaceWithZeroSizeApp];

        v52 = v20;
        if (v20)
        {
          v21 = [MEMORY[0x277D3FB80] usageBundleAppForBundleWithIdentifier:v20 withTotalSize:0.0];
          v68 = v21;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
        }

        else
        {
          v22 = [v18 usageBundleApps];
        }

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v56;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v56 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v55 + 1) + 8 * j);
              [v28 setUsageBundleStorageReporter:v18];
              v29 = [v28 bundleIdentifier];
              v30 = [v6 objectForKeyedSubscript:v29];

              if (!v30)
              {
                v30 = [v28 bundleIdentifier];
              }

              STLog(1, @"Listing app bundle : %@", v31, v32, v33, v34, v35, v36, v30);
              [v5 setObject:v28 forKey:v30];
            }

            v25 = [v23 countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v25);
        }

        v15 = v54 + 1;
      }

      while (v54 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v51);
  }

  v37 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  STLog(1, @"%0.3f secs: load usage bundles", v38, v39, v40, v41, v42, v43, COERCE__INT64((v37 - v46) / 1000000000.0));

  v44 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)usageBundleForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"com.apple."])
  {
    v5 = [(NSDictionary *)self->_usageApps objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end