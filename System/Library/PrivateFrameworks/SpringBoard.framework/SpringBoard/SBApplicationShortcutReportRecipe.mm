@interface SBApplicationShortcutReportRecipe
- (void)_dumpReport;
@end

@implementation SBApplicationShortcutReportRecipe

- (void)_dumpReport
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = +[SBApplicationController sharedInstance];
  v3 = +[SBApplicationShortcutStoreManager sharedManager];
  v4 = SBLogAppShortcuts();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Dumping Shortcut Counts...", buf, 2u);
  }

  v5 = +[SBDefaults localDefaults];
  iconDefaults = [v5 iconDefaults];
  suppressAppShortcutTruncation = [iconDefaults suppressAppShortcutTruncation];

  if (suppressAppShortcutTruncation)
  {
    v8 = SBLogAppShortcuts();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBApplicationShortcutReportRecipe *)v8 _dumpReport];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [MEMORY[0x277D0AC98] applicationsWithAvailableStores];
  v9 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v30;
    *&v10 = 138412546;
    v27 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v2 applicationWithBundleIdentifier:{v14, v27}];
        info = [v15 info];

        v17 = [v3 applicationShortcutItemsForBundleIdentifier:v14 withVersion:{objc_msgSend(info, "dynamicApplicationShortcutItemsVersion")}];
        v18 = [v17 mutableCopy];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = objc_opt_new();
        }

        v21 = v20;

        if ([v21 count] < 5)
        {
          if (![v21 count])
          {
            goto LABEL_23;
          }

          v22 = SBLogAppShortcuts();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v21 count];
            *buf = v27;
            v34 = v14;
            v35 = 2048;
            v36 = v25;
            v23 = v22;
            v24 = "Shortcut Count for %@:\t\t%lu";
            goto LABEL_21;
          }
        }

        else
        {
          v22 = SBLogAppShortcuts();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v34 = v14;
            v35 = 2112;
            v36 = v21;
            v23 = v22;
            v24 = "Shortcut Dump %@:\n%@\n--";
LABEL_21:
            _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
          }
        }

LABEL_23:
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v11);
  }

  v26 = SBLogAppShortcuts();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_INFO, "Dumped Shortcut Counts.", buf, 2u);
  }
}

@end