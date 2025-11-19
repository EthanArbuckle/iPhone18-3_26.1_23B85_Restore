@interface SPUIFeedbackManager
+ (void)cardViewDidDisappearWithEvent:(unint64_t)a3 withQueryId:(unint64_t)a4;
+ (void)didAppearFromSource:(unint64_t)a3 withQueryId:(unint64_t)a4 queryString:(id)a5 deviceIsAuthenticated:(BOOL)a6;
+ (void)didClearInputWithEvent:(unint64_t)a3 withQueryId:(unint64_t)a4;
+ (void)didDisappearWithReason:(unint64_t)a3 withQueryId:(unint64_t)a4;
+ (void)flushFeedbackWithCompletion:(id)a3;
+ (void)resultsDidFinishWithSections:(id)a3 withQueryString:(id)a4;
@end

@implementation SPUIFeedbackManager

+ (void)didAppearFromSource:(unint64_t)a3 withQueryId:(unint64_t)a4 queryString:(id)a5 deviceIsAuthenticated:(BOOL)a6
{
  v10 = a5;
  if (didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated__onceToken != -1)
  {
    +[SPUIFeedbackManager didAppearFromSource:withQueryId:queryString:deviceIsAuthenticated:];
  }

  v11 = didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated__queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SPUIFeedbackManager_didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated___block_invoke_4;
  block[3] = &unk_279D06E98;
  v14 = v10;
  v15 = a3;
  v18 = a6;
  v16 = a4;
  v17 = a1;
  v12 = v10;
  dispatch_async(v11, block);
}

uint64_t __89__SPUIFeedbackManager_didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.spotlightui.presentationFeedback", 0);
  v1 = didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated__queue;
  didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated__queue = v0;

  didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated__displayMonitor = [objc_alloc(MEMORY[0x277D0AD08]) initWithDisplayType:0 handler:&__block_literal_global_92];

  return MEMORY[0x2821F96F8]();
}

void __89__SPUIFeedbackManager_didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated__queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SPUIFeedbackManager_didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated___block_invoke_3;
  block[3] = &unk_279D06C78;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void __89__SPUIFeedbackManager_didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated__isCurrentlyOverApp = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [*(a1 + 32) elements];
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [v6 bundleIdentifier];
        if (v7)
        {
          v8 = v7;
          v9 = [v6 bundleIdentifier];
          v10 = [v9 isEqualToString:@"com.apple.Spotlight"];

          if ((v10 & 1) == 0)
          {
            didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated__isCurrentlyOverApp = 1;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __89__SPUIFeedbackManager_didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40) - 1;
  if (v2 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_26B867138[v2];
  }

  v5 = [objc_alloc(MEMORY[0x277D4C5E0]) initWithEvent:v3];
  [v5 setQueryId:*(a1 + 48)];
  [v5 setPreexistingInput:*(a1 + 32)];
  if (*(a1 + 64))
  {
    [v5 setIsOverApp:didAppearFromSource_withQueryId_queryString_deviceIsAuthenticated__isCurrentlyOverApp];
  }

  else
  {
    [v5 setIsOnLockScreen:1];
  }

  v4 = [*(a1 + 56) feedbackListener];
  [v4 searchViewDidAppear:v5];
}

+ (void)didClearInputWithEvent:(unint64_t)a3 withQueryId:(unint64_t)a4
{
  v7 = [objc_alloc(MEMORY[0x277D4C260]) initWithEvent:a3];
  [v7 setQueryId:a4];
  v6 = [a1 feedbackListener];
  [v6 didClearInput:v7];
}

+ (void)cardViewDidDisappearWithEvent:(unint64_t)a3 withQueryId:(unint64_t)a4
{
  v7 = [objc_alloc(MEMORY[0x277D4C258]) initWithEvent:a3];
  [v7 setQueryId:a4];
  v6 = [a1 feedbackListener];
  [v6 cardViewDidDisappear:v7];
}

+ (void)didDisappearWithReason:(unint64_t)a3 withQueryId:(unint64_t)a4
{
  if (a3 - 1 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_26B867178[a3 - 1];
  }

  v8 = [objc_alloc(MEMORY[0x277D4C5E8]) initWithEvent:v6];
  [v8 setQueryId:a4];
  v7 = [a1 feedbackListener];
  [v7 searchViewDidDisappear:v8];
}

+ (void)resultsDidFinishWithSections:(id)a3 withQueryString:(id)a4
{
  if (a3 && a4)
  {
    v6 = MEMORY[0x277D4C7F8];
    v7 = a4;
    v8 = a3;
    v10 = [[v6 alloc] initWithResultSections:v8 queryString:v7];

    if (v10)
    {
      v9 = [a1 feedbackListener];
      [v9 sendResultSectionsDidLoadFeedback:v10];
    }
  }
}

+ (void)flushFeedbackWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_group_create();
  v5 = [MEMORY[0x277D4BEB0] sharedManager];
  v6 = [v5 parsecFeedbackListener];

  v7 = [v6 connection];

  if (v7)
  {
    dispatch_group_enter(v4);
    v8 = [v6 connection];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__SPUIFeedbackManager_flushFeedbackWithCompletion___block_invoke;
    v13[3] = &unk_279D06C78;
    v14 = v4;
    [v8 scheduleSendBarrierBlock:v13];
  }

  dispatch_group_enter(v4);
  v9 = MEMORY[0x277D4BEB0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SPUIFeedbackManager_flushFeedbackWithCompletion___block_invoke_2;
  v11[3] = &unk_279D06C78;
  v12 = v4;
  v10 = v4;
  [v9 flushFeedbackWithCompletion:v11];
  dispatch_group_notify(v10, MEMORY[0x277D85CD0], v3);
}

@end