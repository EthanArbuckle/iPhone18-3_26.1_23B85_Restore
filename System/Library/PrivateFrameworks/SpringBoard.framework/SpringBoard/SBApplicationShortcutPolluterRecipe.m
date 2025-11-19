@interface SBApplicationShortcutPolluterRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBApplicationShortcutPolluterRecipe

- (void)handleVolumeIncrease
{
  v36 = *MEMORY[0x277D85DE8];
  v27 = +[SBApplicationController sharedInstance];
  v2 = +[SBApplicationShortcutStoreManager sharedManager];
  v3 = SBLogAppShortcuts();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "Populating mock shortcuts...", buf, 2u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [MEMORY[0x277D0AC98] applicationsWithAvailableStores];
  v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v28)
  {
    v26 = *v30;
    v5 = 0x277CBE000uLL;
    *&v4 = 138412290;
    v24 = v4;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v27 applicationWithBundleIdentifier:{v7, v24}];
        v9 = [v8 info];

        v10 = [v9 dynamicApplicationShortcutItemsVersion];
        v11 = v2;
        v12 = [v2 applicationShortcutItemsForBundleIdentifier:v7 withVersion:v10];
        v13 = [v12 mutableCopy];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = objc_opt_new();
        }

        v16 = v15;

        v17 = v5;
        v18 = objc_opt_new();
        v19 = 20;
        do
        {
          v20 = __mockShortcutPlist();
          [v18 addObject:v20];

          --v19;
        }

        while (v19);
        v21 = SBLogAppShortcuts();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = v24;
          v34 = v7;
          _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "Populated mock shortcuts for %@", buf, 0xCu);
        }

        v22 = [MEMORY[0x277D669C8] _staticApplicationShortcutItemsFromInfoPlistEntry:v18];
        [v16 addObjectsFromArray:v22];

        v2 = v11;
        [v11 setApplicationShortcutItems:v16 forBundleIdentifier:v7 withVersion:v10];

        v5 = v17;
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v28);
  }

  [v2 saveSynchronously];
  v23 = SBLogAppShortcuts();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_INFO, "Populated mock shortcuts", buf, 2u);
  }
}

- (void)handleVolumeDecrease
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = +[SBDefaults localDefaults];
  v3 = [v2 iconDefaults];
  [v3 setSuppressAppShortcutTruncation:0];

  v4 = __mockShortcutPlist();
  v5 = [v4 objectForKey:@"UIApplicationShortcutItemType"];

  v6 = __mockShortcutPlist();
  v37 = [v6 objectForKey:@"UIApplicationShortcutItemTitle"];

  v31 = +[SBApplicationController sharedInstance];
  v7 = +[SBApplicationShortcutStoreManager sharedManager];
  v8 = SBLogAppShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Removing mock shortcuts...", buf, 2u);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [MEMORY[0x277D0AC98] applicationsWithAvailableStores];
  v32 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v32)
  {
    v29 = *v43;
    v30 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v43 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v9;
        v10 = *(*(&v42 + 1) + 8 * v9);
        v11 = [v31 applicationWithBundleIdentifier:v10];
        v12 = [v11 info];

        v34 = v12;
        v36 = v10;
        v33 = [v12 dynamicApplicationShortcutItemsVersion];
        v13 = [v7 applicationShortcutItemsForBundleIdentifier:v10 withVersion:?];
        v14 = [v13 mutableCopy];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = objc_opt_new();
        }

        v17 = v16;

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v18 = [v17 copy];
        v19 = [v18 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v39;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v39 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v38 + 1) + 8 * i);
              v24 = [v23 type];
              if ([v24 isEqualToString:v5])
              {
                v25 = [v23 localizedTitle];
                v26 = [v25 isEqualToString:v37];

                if (!v26)
                {
                  continue;
                }

                [v17 removeObject:v23];
                v24 = SBLogAppShortcuts();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v47 = v36;
                  _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_INFO, "Removing mock shortcut from %@", buf, 0xCu);
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v38 objects:v48 count:16];
          }

          while (v20);
        }

        v7 = v30;
        [v30 setApplicationShortcutItems:v17 forBundleIdentifier:v36 withVersion:v33];

        v9 = v35 + 1;
      }

      while (v35 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v32);
  }

  [v7 saveSynchronously];
  v27 = SBLogAppShortcuts();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_INFO, "Removed all mock shortcuts.", buf, 2u);
  }
}

@end