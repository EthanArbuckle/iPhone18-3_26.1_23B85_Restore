@interface SFSettingsAnalytics
+ (void)trackingAppAccessTransparencyVisited:(id)a3;
+ (void)trackingControlValueChanged:(id)a3 sender:(id)a4;
+ (void)trackingPerformSelector:(id)a3 targetString:(id)a4;
+ (void)trackingSettingsOpenByURL:(BOOL)a3 url:(id)a4;
+ (void)trackingSettingsSearchUsed:(BOOL)a3 isUser65AgeOrOlder:(BOOL)a4 numberOfSectionsInResults:(unint64_t)a5 numberOfTotalResults:(unint64_t)a6 searchFromSpotlight:(BOOL)a7 methodForEndingSearch:(unint64_t)a8 searchResultURL:(id)a9 searchActivityID:(id)a10;
+ (void)trackingStateOfRequestForSpecificApp:(unint64_t)a3 view:(id)a4;
+ (void)trackingViewControllersVisitedInRootController:(id)a3;
@end

@implementation SFSettingsAnalytics

+ (void)trackingStateOfRequestForSpecificApp:(unint64_t)a3 view:(id)a4
{
  v4 = a4;
  v5 = v4;
  if (v4)
  {
    v14 = v4;
    AnalyticsSendEventLazy();
    v6 = v14;
  }

  else
  {
    v6 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v6 trackingStateOfRequestForSpecificApp:v7 view:v8, v9, v10, v11, v12, v13];
    }
  }
}

id __65__SFSettingsAnalytics_trackingStateOfRequestForSpecificApp_view___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"result";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v6[1] = @"view";
  v7[0] = v2;
  v7[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id __42__SFSettingsAnalytics_trackingViewVisited__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"result";
  v4[0] = &unk_28774C978;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __68__SFSettingsAnalytics_trackingStateOfRequest_askAppsToStopTracking___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"result";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v7[1] = @"askAppsToStopTracking";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 33)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)trackingAppAccessTransparencyVisited:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v13 = v3;
    AnalyticsSendEventLazy();
    v5 = v13;
  }

  else
  {
    v5 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v5 trackingAppAccessTransparencyVisited:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

id __60__SFSettingsAnalytics_trackingAppAccessTransparencyVisited___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"result";
  v5[1] = @"app";
  v1 = *(a1 + 32);
  v6[0] = &unk_28774C978;
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __55__SFSettingsAnalytics_trackingRecordAppActivityVisited__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"result";
  v4[0] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __47__SFSettingsAnalytics_trackingAppActivitySaved__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"result";
  v4[0] = &unk_28774C978;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

+ (void)trackingPerformSelector:(id)a3 targetString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v16 = v5;
    v17 = v7;
    AnalyticsSendEventLazy();

    v8 = v16;
  }

  else
  {
    v8 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v8 trackingPerformSelector:v9 targetString:v10, v11, v12, v13, v14, v15];
    }
  }
}

id __60__SFSettingsAnalytics_trackingPerformSelector_targetString___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"selector";
  v7[1] = @"target";
  v1 = *(a1 + 40);
  v8[0] = *(a1 + 32);
  v8[1] = v1;
  v7[2] = @"bundleID";
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)trackingViewControllersVisitedInRootController:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v13 = v3;
    AnalyticsSendEventLazy();
    v5 = v13;
  }

  else
  {
    v5 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v5 trackingViewControllersVisitedInRootController:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

id __70__SFSettingsAnalytics_trackingViewControllersVisitedInRootController___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v7[0] = @"target";
  v7[1] = @"bundleID";
  v8[0] = v1;
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)trackingControlValueChanged:(id)a3 sender:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v16 = v5;
    v17 = v7;
    AnalyticsSendEventLazy();

    v8 = v16;
  }

  else
  {
    v8 = SFLogForCategory(4uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SFSettingsAnalytics *)v8 trackingControlValueChanged:v9 sender:v10, v11, v12, v13, v14, v15];
    }
  }
}

id __58__SFSettingsAnalytics_trackingControlValueChanged_sender___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"target";
  v7[1] = @"sender";
  v1 = *(a1 + 40);
  v8[0] = *(a1 + 32);
  v8[1] = v1;
  v7[2] = @"bundleID";
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)trackingSettingsOpenByURL:(BOOL)a3 url:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

id __53__SFSettingsAnalytics_trackingSettingsOpenByURL_url___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"fromSearch";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v10[0] = v2;
  v10[1] = v3;
  v9[1] = @"url";
  v9[2] = @"bundleID";
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)trackingSettingsSearchUsed:(BOOL)a3 isUser65AgeOrOlder:(BOOL)a4 numberOfSectionsInResults:(unint64_t)a5 numberOfTotalResults:(unint64_t)a6 searchFromSpotlight:(BOOL)a7 methodForEndingSearch:(unint64_t)a8 searchResultURL:(id)a9 searchActivityID:(id)a10
{
  v10 = a9;
  v13 = a10;
  v11 = v13;
  v12 = v10;
  AnalyticsSendEventLazy();
}

id __191__SFSettingsAnalytics_trackingSettingsSearchUsed_isUser65AgeOrOlder_numberOfSectionsInResults_numberOfTotalResults_searchFromSpotlight_methodForEndingSearch_searchResultURL_searchActivityID___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (*(a1 + 72) == 1)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v2 setObject:v3 forKeyedSubscript:@"keyboardDisplayed"];
  }

  if (*(a1 + 73) == 1)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v2 setObject:v4 forKeyedSubscript:@"isUser65AgeOrOlder"];
  }

  if (*(a1 + 48))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v2 setObject:v5 forKeyedSubscript:@"numberOfSectionsInResults"];
  }

  if (*(a1 + 56))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v2 setObject:v6 forKeyedSubscript:@"numberOfTotalResults"];
  }

  if (*(a1 + 74) == 1)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v2 setObject:v7 forKeyedSubscript:@"searchFromSpotlight"];
  }

  if (*(a1 + 64))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v2 setObject:v8 forKeyedSubscript:@"methodForEndingSearch"];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    [v2 setObject:v9 forKeyedSubscript:@"searchResultURL"];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    [v2 setObject:v10 forKeyedSubscript:@"searchActivityID"];
  }

  return v2;
}

+ (void)trackingStateOfRequestForSpecificApp:(uint64_t)a3 view:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: view is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)trackingAppAccessTransparencyVisited:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: appName is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)trackingPerformSelector:(uint64_t)a3 targetString:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: selectorString or targetString is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)trackingViewControllersVisitedInRootController:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: targetString is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)trackingControlValueChanged:(uint64_t)a3 sender:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2659AD000, a1, a3, "%{Public}s: targetClass or sender is nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end