@interface _UITabAnalytics
+ (id)sharedInstance;
- (void)_sendCustomizationEvent:(void *)a1;
- (void)_sendEvent:(void *)a3 additionalPayload:;
- (void)_updateCustomizationStatusIfNeeded:(void *)a1;
- (void)_updateSidebarStatusIfNeeded:(uint64_t)a1;
- (void)updateStatusIfNeeded:(void *)a1;
- (void)userDidToggleSidebar:(uint64_t)a3 source:;
@end

@implementation _UITabAnalytics

+ (id)sharedInstance
{
  objc_opt_self();
  if (qword_1ED49CBA0 != -1)
  {
    dispatch_once(&qword_1ED49CBA0, &__block_literal_global_81);
  }

  v0 = _MergedGlobals_1021;

  return v0;
}

- (void)userDidToggleSidebar:(uint64_t)a3 source:
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  *(a1 + 40) = a3;
  v5 = [a2 sidebar];
  v6 = [(UITabBarControllerSidebar *)v5 _isSidebarSupportedAndVisible];

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = @"KeyCommand";
      goto LABEL_14;
    }

    if (a3 == 4)
    {
      v7 = @"Overlay Button";
      goto LABEL_14;
    }

LABEL_11:
    v7 = @"Unknown";
    goto LABEL_14;
  }

  if (!a3)
  {
    v7 = @"None";
    goto LABEL_14;
  }

  if (a3 != 1)
  {
    goto LABEL_11;
  }

  if (v6)
  {
    v7 = @"Button.TabBar";
  }

  else
  {
    v7 = @"Button.Sidebar";
  }

LABEL_14:
  v8 = @"Hidden";
  if (v6)
  {
    v8 = @"Visible";
  }

  v13[0] = @"sidebarState";
  v13[1] = @"sidebarToggleSource";
  v14[0] = v8;
  v14[1] = v7;
  v9 = MEMORY[0x1E695DF20];
  v10 = v8;
  v11 = v7;
  v12 = [v9 dictionaryWithObjects:v14 forKeys:v13 count:2];

  [(_UITabAnalytics *)a1 _sendEvent:v12 additionalPayload:?];
}

- (void)_sendEvent:(void *)a3 additionalPayload:
{
  v4 = a3;
  if (a1)
  {
    v5 = [*(a1 + 8) copy];
    v7 = v4;
    v6 = v5;
    AnalyticsSendEventLazy();
  }
}

- (void)_sendCustomizationEvent:(void *)a1
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [a2 _tabElements];
    v4 = _UITabChildrenCount(v3);

    v18[0] = @"numberOfCustomizations";
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a1[2]];
    v19[0] = v5;
    v18[1] = @"numberOfTabsInBar";
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:a1[3]];
    v19[1] = v6;
    v18[2] = @"totalNumberOfTabs";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    v19[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
    [(_UITabAnalytics *)a1 _sendEvent:v8 additionalPayload:?];

    v9 = [MEMORY[0x1E695DF00] now];
    v10 = a1[4];
    a1[4] = v9;

    v16[0] = @"numberOfCustomizations";
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a1[2]];
    v17[0] = v11;
    v16[1] = @"numberOfTabsInBar";
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a1[3]];
    v16[2] = @"lastCustomizationDate";
    v13 = a1[4];
    v17[1] = v12;
    v17[2] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

    v15 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v15 setObject:v14 forKey:@"com.apple.UIKit.TabStatistics"];
  }
}

- (void)updateStatusIfNeeded:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    [(_UITabAnalytics *)a1 _updateSidebarStatusIfNeeded:v3];
    [(_UITabAnalytics *)a1 _updateCustomizationStatusIfNeeded:v3];
  }
}

- (void)_updateSidebarStatusIfNeeded:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    v7 = v3;
    v5 = [v3 sidebar];
    v6 = [(UITabBarControllerSidebar *)v5 _isSidebarSupportedAndVisible];

    v3 = v7;
    if (v6)
    {
      if (v4 == 4 || v4 == 1)
      {
        [(_UITabAnalytics *)a1 _sendEvent:0 additionalPayload:?];
        v3 = v7;
      }
    }
  }
}

- (void)_updateCustomizationStatusIfNeeded:(void *)a1
{
  v3 = a2;
  if (a1 && a1[2])
  {
    v5 = v3;
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
    if ([v4 compare:a1[4]] == 1)
    {
      [(_UITabAnalytics *)a1 _sendCustomizationEvent:v5];
    }

    v3 = v5;
  }
}

@end