@interface _UITabAnalytics
+ (id)sharedInstance;
- (void)_sendCustomizationEvent:(void *)event;
- (void)_sendEvent:(void *)event additionalPayload:;
- (void)_updateCustomizationStatusIfNeeded:(void *)needed;
- (void)_updateSidebarStatusIfNeeded:(uint64_t)needed;
- (void)updateStatusIfNeeded:(void *)needed;
- (void)userDidToggleSidebar:(uint64_t)sidebar source:;
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

- (void)userDidToggleSidebar:(uint64_t)sidebar source:
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  *(self + 40) = sidebar;
  sidebar = [a2 sidebar];
  _isSidebarSupportedAndVisible = [(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible];

  if (sidebar > 1)
  {
    if (sidebar == 2)
    {
      v7 = @"KeyCommand";
      goto LABEL_14;
    }

    if (sidebar == 4)
    {
      v7 = @"Overlay Button";
      goto LABEL_14;
    }

LABEL_11:
    v7 = @"Unknown";
    goto LABEL_14;
  }

  if (!sidebar)
  {
    v7 = @"None";
    goto LABEL_14;
  }

  if (sidebar != 1)
  {
    goto LABEL_11;
  }

  if (_isSidebarSupportedAndVisible)
  {
    v7 = @"Button.TabBar";
  }

  else
  {
    v7 = @"Button.Sidebar";
  }

LABEL_14:
  v8 = @"Hidden";
  if (_isSidebarSupportedAndVisible)
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

  [(_UITabAnalytics *)self _sendEvent:v12 additionalPayload:?];
}

- (void)_sendEvent:(void *)event additionalPayload:
{
  eventCopy = event;
  if (self)
  {
    v5 = [*(self + 8) copy];
    v7 = eventCopy;
    v6 = v5;
    AnalyticsSendEventLazy();
  }
}

- (void)_sendCustomizationEvent:(void *)event
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (event)
  {
    _tabElements = [a2 _tabElements];
    v4 = _UITabChildrenCount(_tabElements);

    v18[0] = @"numberOfCustomizations";
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:event[2]];
    v19[0] = v5;
    v18[1] = @"numberOfTabsInBar";
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:event[3]];
    v19[1] = v6;
    v18[2] = @"totalNumberOfTabs";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    v19[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
    [(_UITabAnalytics *)event _sendEvent:v8 additionalPayload:?];

    v9 = [MEMORY[0x1E695DF00] now];
    v10 = event[4];
    event[4] = v9;

    v16[0] = @"numberOfCustomizations";
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:event[2]];
    v17[0] = v11;
    v16[1] = @"numberOfTabsInBar";
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:event[3]];
    v16[2] = @"lastCustomizationDate";
    v13 = event[4];
    v17[1] = v12;
    v17[2] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setObject:v14 forKey:@"com.apple.UIKit.TabStatistics"];
  }
}

- (void)updateStatusIfNeeded:(void *)needed
{
  if (needed)
  {
    v3 = a2;
    [(_UITabAnalytics *)needed _updateSidebarStatusIfNeeded:v3];
    [(_UITabAnalytics *)needed _updateCustomizationStatusIfNeeded:v3];
  }
}

- (void)_updateSidebarStatusIfNeeded:(uint64_t)needed
{
  v3 = a2;
  if (needed)
  {
    v4 = *(needed + 40);
    v7 = v3;
    sidebar = [v3 sidebar];
    _isSidebarSupportedAndVisible = [(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible];

    v3 = v7;
    if (_isSidebarSupportedAndVisible)
    {
      if (v4 == 4 || v4 == 1)
      {
        [(_UITabAnalytics *)needed _sendEvent:0 additionalPayload:?];
        v3 = v7;
      }
    }
  }
}

- (void)_updateCustomizationStatusIfNeeded:(void *)needed
{
  v3 = a2;
  if (needed && needed[2])
  {
    v5 = v3;
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
    if ([v4 compare:needed[4]] == 1)
    {
      [(_UITabAnalytics *)needed _sendCustomizationEvent:v5];
    }

    v3 = v5;
  }
}

@end