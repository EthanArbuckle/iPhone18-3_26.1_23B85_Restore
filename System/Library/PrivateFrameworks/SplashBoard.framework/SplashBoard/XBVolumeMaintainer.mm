@interface XBVolumeMaintainer
+ (void)configure:(id)configure;
@end

@implementation XBVolumeMaintainer

+ (void)configure:(id)configure
{
  configureCopy = configure;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__XBVolumeMaintainer_configure___block_invoke;
  block[3] = &unk_279CF9280;
  v7 = configureCopy;
  v5 = configureCopy;
  dispatch_async(v4, block);
}

void __32__XBVolumeMaintainer_configure___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__XBVolumeMaintainer_configure___block_invoke_2;
  handler[3] = &unk_279CF9798;
  v4 = *(a1 + 32);
  xpc_activity_register("com.apple.SplashBoard", v2, handler);
}

void __32__XBVolumeMaintainer_configure___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [v2 dateByAddingTimeInterval:-259200.0];

  v27 = [MEMORY[0x277CBEAA8] now];
  v28 = v3;
  v4 = __32__XBVolumeMaintainer_configure___block_invoke_3(v27, v3, v27);
  v5 = [*(a1 + 32) recentlyUsedBundleIDs];
  v6 = [v5 count];
  if (v6 >= 0xA)
  {
    v7 = 10;
  }

  else
  {
    v7 = v6;
  }

  v25 = v5;
  v8 = [v5 subarrayWithRange:{0, v7}];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = v8;
  [v9 addObjectsFromArray:v8];
  v26 = v4;
  [v9 addObjectsFromArray:v4];
  v10 = [*(a1 + 32) allInstalledApplications];
  v23 = v9;
  v11 = [v9 allObjects];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = [v17 bundleIdentifier];
        v19 = [v11 containsObject:v18];
        v20 = XBLogPurge();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v21 = @"uncommon";
          if (v19)
          {
            v21 = @"recent";
          }

          v34 = v18;
          v35 = 2114;
          v36 = v21;
          _os_log_impl(&dword_26B5EF000, v20, OS_LOG_TYPE_DEFAULT, "Marking %{public}@ as %{public}@", buf, 0x16u);
        }

        v22 = [[XBApplicationSnapshotManifest alloc] initWithApplicationInfo:v17];
        [(XBApplicationSnapshotManifest *)v22 updateSnapshotsAPFSPurgability:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v14);
  }
}

id __32__XBVolumeMaintainer_configure___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v37 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v7 = MEMORY[0x277CCA920];
  v8 = MEMORY[0x277CFE260];
  v9 = [MEMORY[0x277CFE178] extensionHostIdentifier];
  v10 = [v8 predicateForObjectsWithMetadataKey:v9];
  v11 = [v7 notPredicateWithSubpredicate:v10];

  v38 = v5;
  v39 = v4;
  v12 = [MEMORY[0x277CFE260] predicateForEventsWithStartInDateRangeFrom:v4 to:v5];
  v13 = MEMORY[0x277CCA920];
  v35 = v12;
  v36 = v11;
  v53[0] = v12;
  v53[1] = v11;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v41 = [v13 andPredicateWithSubpredicates:v14];

  v40 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = MEMORY[0x277CFE1E0];
    v19 = [MEMORY[0x277CFE298] appUsageStream];
    v52 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    v51 = v40;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v22 = [v18 eventQueryWithPredicate:v41 eventStreams:v20 offset:v16 limit:32 sortDescriptors:v21];

    v23 = [MEMORY[0x277CFE208] knowledgeStore];
    v47 = 0;
    v24 = [v23 executeQuery:v22 error:&v47];
    v25 = v47;

    if (v25)
    {
      break;
    }

    context = v17;
    v26 = [v24 count];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = v24;
    v27 = [v15 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v44;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(v15);
          }

          v31 = [*(*(&v43 + 1) + 8 * i) stringValue];
          if (v31)
          {
            [v6 addObject:v31];
          }
        }

        v28 = [v15 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v28);
    }

    v16 += v26;

    objc_autoreleasePoolPop(context);
    if ([v15 count] != 32)
    {
      v32 = [v6 array];
      goto LABEL_17;
    }
  }

  v33 = XBLogPurge();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v50 = v25;
    _os_log_impl(&dword_26B5EF000, v33, OS_LOG_TYPE_DEFAULT, "Failed to obtain recently used applications with error: %{public}@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v32 = MEMORY[0x277CBEBF8];
LABEL_17:

  objc_autoreleasePoolPop(v37);

  return v32;
}

@end