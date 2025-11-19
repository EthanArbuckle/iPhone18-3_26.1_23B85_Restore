@interface _UISceneMainMenuClientComponent
- (id)handlePrivateActions:(id)a3;
- (void)_baseMainMenuDidUpdate:(id)a3;
- (void)_mainMenuManager:(id)a3 userDidInvokeCommand:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation _UISceneMainMenuClientComponent

- (void)setScene:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UISceneMainMenuClientComponent;
  [(FBSSceneComponent *)&v3 setScene:a3];
}

- (id)handlePrivateActions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_opt_class();
        v12 = v10;
        if (v11)
        {
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          [v14 handleMainMenuAction];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_baseMainMenuDidUpdate:(id)a3
{
  v6 = +[_UIBaseMenuDidInvalidateNotificationAction action];
  v4 = [(FBSSceneComponent *)self scene];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:v6];
  [v4 sendPrivateActions:v5];
}

- (void)_mainMenuManager:(id)a3 userDidInvokeCommand:(id)a4
{
  v5 = a4;
  v8 = [[_UIMainMenuCommandInvocationNotificationAction alloc] initWithCommandInvocationNotification:v5];

  v6 = [(FBSSceneComponent *)self scene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [v6 sendPrivateActions:v7];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v13 = a4;
  v5 = [v13 settingsDiff];
  v6 = [v5 containsProperty:sel_isHostObservingMainMenu];

  v7 = v13;
  if (v6)
  {
    v8 = [v13 settings];
    v9 = [v8 isHostObservingMainMenu];

    v10 = +[_UIMainMenuManager sharedManager];
    v11 = [v10 isActiveObserver:self];

    if (!v9 || (v11 & 1) != 0)
    {
      v7 = v13;
      if (v9 & 1 | ((v11 & 1) == 0))
      {
        goto LABEL_8;
      }

      v12 = +[_UIMainMenuManager sharedManager];
      [v12 removeMainMenuObserver:self];
    }

    else
    {
      v12 = +[_UIMainMenuManager sharedManager];
      [v12 addMainMenuObserver:self];
    }

    v7 = v13;
  }

LABEL_8:
}

@end