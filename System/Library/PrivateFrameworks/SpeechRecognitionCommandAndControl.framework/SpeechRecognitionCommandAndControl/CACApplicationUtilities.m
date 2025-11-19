@interface CACApplicationUtilities
+ (id)installedApplications;
+ (void)launchApplicationWithIdentifier:(id)a3;
+ (void)terminateApplicationWithIdentifier:(id)a3;
@end

@implementation CACApplicationUtilities

+ (id)installedApplications
{
  v34 = *MEMORY[0x277D85DE8];
  v22 = [MEMORY[0x277CBEB18] array];
  v2 = [MEMORY[0x277CE6BA0] systemApplication];
  [v2 updateCache:1508];

  if (installedApplications_onceToken != -1)
  {
    +[CACApplicationUtilities installedApplications];
  }

  v3 = +[CACDisplayManager sharedManager];
  v4 = [v3 carPlayConnected];

  if (v4)
  {
    v5 = +[CACDisplayManager sharedManager];
    v6 = [v5 carPlayApplications];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __48__CACApplicationUtilities_installedApplications__block_invoke_2;
    v27[3] = &unk_279CEB8F0;
    v28 = v22;
    [v6 enumerateKeysAndObjectsUsingBlock:v27];

    v7 = v28;
  }

  else
  {
    v8 = [MEMORY[0x277CE6BA0] systemApplication];
    v9 = [v8 uiElement];
    v10 = [v9 objectWithAXAttribute:1508];

    if (![v10 count])
    {
      v11 = CACLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[(CACApplicationUtilities *)v11];
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v10;
    v12 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          v17 = [v16 stringByTrimmingCharactersInSet:installedApplications_sFilterSet];
          v18 = [v7 objectForKey:v16];
          if (([v18 isEqualToString:@"com.apple.siri"] & 1) == 0)
          {
            v19 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v17, @"TargetAppName", v18, @"TargetAppIdentifier", 0}];
            [v22 addObject:v19];
          }
        }

        v13 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v13);
    }

    v20 = CACLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v22;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_26B354000, v20, OS_LOG_TYPE_INFO, "Installed applications: %@ \n From dictionary: %@", buf, 0x16u);
    }
  }

  return v22;
}

void __48__CACApplicationUtilities_installedApplications__block_invoke()
{
  v3 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  v0 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v3 formUnionWithCharacterSet:v0];

  v1 = [v3 invertedSet];
  v2 = installedApplications_sFilterSet;
  installedApplications_sFilterSet = v1;
}

void __48__CACApplicationUtilities_installedApplications__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"TargetAppName";
  v5 = installedApplications_sFilterSet;
  v6 = a3;
  v7 = [a2 stringByTrimmingCharactersInSet:v5];
  v9[1] = @"TargetAppIdentifier";
  v10[0] = v7;
  v10[1] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  [*(a1 + 32) addObject:v8];
}

+ (void)launchApplicationWithIdentifier:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke;
  block[3] = &unk_279CEB2D0;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v2 = +[CACDisplayManager sharedManager];
  v3 = [v2 carPlayConnected];

  if (v3)
  {
    v4 = [MEMORY[0x277D0AD78] dashboardService];
    v5 = *(a1 + 32);
    if ([*(a1 + 32) isEqualToString:*MEMORY[0x277CF8FC8]])
    {

      v6 = MEMORY[0x277D0AD60];
      v31 = *MEMORY[0x277D0AC40];
      v7 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277CF8FD0]];
      v32[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v9 = [v6 optionsWithDictionary:v8];

      v5 = @"com.apple.CarPlayApp";
    }

    else
    {
      v9 = 0;
    }

    v19 = CACLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v5;
      _os_log_impl(&dword_26B354000, v19, OS_LOG_TYPE_INFO, "Asking Dashboard to launch app %@", buf, 0xCu);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_98;
    v22[3] = &unk_279CECAA0;
    v20 = v5;
    v23 = v20;
    v24 = &v25;
    [v4 openApplication:v20 withOptions:v9 completion:v22];
  }

  else if ((v26[3] & 1) == 0)
  {
    v10 = CACLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_26B354000, v10, OS_LOG_TYPE_INFO, "Asking system application to launch app %@", buf, 0xCu);
    }

    v12 = [MEMORY[0x277CE6BA0] systemApplication];
    v13 = [v12 uiElement];
    v15 = *(a1 + 32);
    v14 = (a1 + 32);
    v16 = [v13 performAXAction:5012 withValue:v15];
    *(v26 + 24) = v16;

    if (v26[3])
    {
      v17 = CACLogGeneral();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *v14;
        *buf = 138412290;
        v30 = v18;
        _os_log_impl(&dword_26B354000, v17, OS_LOG_TYPE_INFO, "System application successfully launched app %@", buf, 0xCu);
      }

      *(v26 + 24) = 1;
    }

    else
    {
      v21 = CACLogGeneral();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_cold_1(v14, v21);
      }
    }
  }

  _Block_object_dispose(&v25, 8);
}

void __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_98(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CACLogGeneral();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_98_cold_1(a1, v4, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_26B354000, v6, OS_LOG_TYPE_INFO, "Dashboard successfully launched app %@", &v8, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

+ (void)terminateApplicationWithIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = CACLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_INFO, "Asking system application to terminate app with identifier: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CACApplicationUtilities_terminateApplicationWithIdentifier___block_invoke;
  block[3] = &unk_279CEB2D0;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__CACApplicationUtilities_terminateApplicationWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:@"Voice Control user requesting app termination"];
  v3 = objc_alloc(MEMORY[0x277D47018]);
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:v5];
  v7 = [v3 initWithPredicate:v6 context:v2];

  v11 = 0;
  v8 = [v7 execute:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v10 = CACLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __62__CACApplicationUtilities_terminateApplicationWithIdentifier___block_invoke_cold_1(v4, v10);
    }
  }
}

void __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "System application failed to launch app %@", &v3, 0xCu);
}

void __59__CACApplicationUtilities_launchApplicationWithIdentifier___block_invoke_98_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_26B354000, log, OS_LOG_TYPE_ERROR, "Dashboard failed to launch app %@ with error: %@", &v4, 0x16u);
}

void __62__CACApplicationUtilities_terminateApplicationWithIdentifier___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Failed to terminate existing instance of bundle identifier '%@'", &v3, 0xCu);
}

@end