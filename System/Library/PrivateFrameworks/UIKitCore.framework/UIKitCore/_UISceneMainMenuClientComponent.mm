@interface _UISceneMainMenuClientComponent
- (id)handlePrivateActions:(id)actions;
- (void)_baseMainMenuDidUpdate:(id)update;
- (void)_mainMenuManager:(id)manager userDidInvokeCommand:(id)command;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation _UISceneMainMenuClientComponent

- (void)setScene:(id)scene
{
  v3.receiver = self;
  v3.super_class = _UISceneMainMenuClientComponent;
  [(FBSSceneComponent *)&v3 setScene:scene];
}

- (id)handlePrivateActions:(id)actions
{
  v21 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v4 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = actionsCopy;
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

- (void)_baseMainMenuDidUpdate:(id)update
{
  v6 = +[_UIBaseMenuDidInvalidateNotificationAction action];
  scene = [(FBSSceneComponent *)self scene];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:v6];
  [scene sendPrivateActions:v5];
}

- (void)_mainMenuManager:(id)manager userDidInvokeCommand:(id)command
{
  commandCopy = command;
  v8 = [[_UIMainMenuCommandInvocationNotificationAction alloc] initWithCommandInvocationNotification:commandCopy];

  scene = [(FBSSceneComponent *)self scene];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v8];
  [scene sendPrivateActions:v7];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v6 = [settingsDiff containsProperty:sel_isHostObservingMainMenu];

  v7 = settingsCopy;
  if (v6)
  {
    settings = [settingsCopy settings];
    isHostObservingMainMenu = [settings isHostObservingMainMenu];

    v10 = +[_UIMainMenuManager sharedManager];
    v11 = [v10 isActiveObserver:self];

    if (!isHostObservingMainMenu || (v11 & 1) != 0)
    {
      v7 = settingsCopy;
      if (isHostObservingMainMenu & 1 | ((v11 & 1) == 0))
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

    v7 = settingsCopy;
  }

LABEL_8:
}

@end