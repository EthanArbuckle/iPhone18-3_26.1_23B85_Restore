@interface _UISceneRemoteNotificationBSActionsHandler
- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context;
@end

@implementation _UISceneRemoteNotificationBSActionsHandler

- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  actionsCopy = actions;
  v9 = [actionsCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(actionsCopy);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if ([v14 UIActionType] == 3)
        {
          if (!v11)
          {
            v11 = objc_opt_new();
          }

          [v11 addObject:v14];
        }
      }

      v10 = [actionsCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if ([v11 count])
  {
    v15 = [actionsCopy mutableCopy];
    [v15 minusSet:v11];
    v16 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __117___UISceneRemoteNotificationBSActionsHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    v24 = v11;
    v17 = _Block_copy(aBlock);
    [v16 addObject:v17];
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v18 = objc_opt_new();
  v19 = [v7 copy];
  [v18 setLaunchOptionsDictionary:v19];

  if (v15)
  {
    v20 = [v15 copy];
    [v18 setUnprocessedActions:v20];

    if (!v18)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [v18 setUnprocessedActions:actionsCopy];
  if (v18)
  {
LABEL_19:
    objc_setProperty_nonatomic_copy(v18, v21, v16, 32);
  }

LABEL_20:

  return v18;
}

@end