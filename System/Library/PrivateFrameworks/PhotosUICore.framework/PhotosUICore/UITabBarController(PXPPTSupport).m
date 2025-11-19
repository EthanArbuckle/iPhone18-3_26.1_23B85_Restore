@interface UITabBarController(PXPPTSupport)
- (void)_switchToBar:()PXPPTSupport completionHandler:;
- (void)ppt_runTabSwitchingTestWithName:()PXPPTSupport options:delegate:completionHandler:;
@end

@implementation UITabBarController(PXPPTSupport)

- (void)_switchToBar:()PXPPTSupport completionHandler:
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_time(0, 50000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__UITabBarController_PXPPTSupport___switchToBar_completionHandler___block_invoke;
    block[3] = &unk_1E774C250;
    v10 = v7;
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  }

  [a1 setSelectedTab:v6];
}

- (void)ppt_runTabSwitchingTestWithName:()PXPPTSupport options:delegate:completionHandler:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    v13 = a6;
  }

  else
  {
    v13 = &__block_literal_global_164731;
  }

  v14 = _Block_copy(v13);
  v15 = [a1 selectedTab];
  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = [v11 objectForKeyedSubscript:@"tab"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 isEqualToString:@"all"];
      v20 = [a1 tabs];
      if (!v19)
      {
        v18;
        PXFind();
      }

      [v16 addObjectsFromArray:v20];

      [v16 removeObject:v15];
      [v16 insertObject:v15 atIndex:0];
      [v16 addObject:v15];
      if ([v16 count])
      {
        [v12 startedTest:v10];
        v16;
        v22 = v12;
        v23 = v10;
        v15;
        v22;
        v23;
        v14;
        PXIterateAsynchronously();
      }

      v21 = @"Couldn't find tabs to cycle through";
    }

    else
    {
      v21 = @"No tab specified";
    }

    [v12 failedTest:v10 withFailureFormat:v21];
    (*(v14 + 2))(v14, 0);
  }

  else
  {
    [v12 failedTest:v10 withFailureFormat:@"Couldn't find initially selected tab"];
    (*(v14 + 2))(v14, 0);
  }
}

@end