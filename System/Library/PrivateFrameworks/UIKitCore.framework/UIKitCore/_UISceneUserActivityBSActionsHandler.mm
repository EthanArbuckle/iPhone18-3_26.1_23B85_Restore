@interface _UISceneUserActivityBSActionsHandler
- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UISceneUserActivityBSActionsHandler

- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(_UISceneConnectionOptionsContext);
  [(_UISceneConnectionOptionsContext *)v13 setUnprocessedActions:v9];
  v33 = v13;
  [(_UISceneConnectionOptionsContext *)v13 setLaunchOptionsDictionary:MEMORY[0x1E695E0F8]];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v31 = v11;
    v32 = v10;
    v34 = 0;
    v17 = 0;
    v18 = *v36;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v35 + 1) + 8 * i);
        if ([v20 UIActionType] == 6)
        {
          if ([v12 isUISubclass])
          {
            v21 = [v12 payload];
            v22 = [v21 objectForKeyedSubscript:@"UIApplicationLaunchOptionsSourceApplicationKey"];
          }

          else
          {
            v22 = 0;
          }

          v23 = [v12 originatingProcess];
          v24 = [_UISceneUserActivityManager _activityContinuationDictionaryWithAction:v20 sourceApplication:v22 originatingProcess:v23];

          if (v24)
          {
            if (v17)
            {
              [v17 addObject:v24];
            }

            else
            {
              v17 = [MEMORY[0x1E695DFA8] setWithObject:v24];
              v39[0] = @"_UISceneConnectionOptionsUserActivityDictionariesKey";
              v39[1] = @"_UISceneConnectionOptionsUserActivityDictionariesKey";
              v40[0] = v17;
              v40[1] = v17;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
              [(_UISceneConnectionOptionsContext *)v33 setLaunchOptionsDictionary:v25];
            }

            v26 = [v24 objectForKey:@"_UISceneConnectionOptionsUserActivityKey"];

            if (v26)
            {
              v27 = v34;
              if (!v34)
              {
                v27 = [v14 mutableCopy];
              }

              v34 = v27;
              [v27 removeObject:v20];
            }
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v16);

    if (v34)
    {
      v28 = [v34 copy];
      [(_UISceneConnectionOptionsContext *)v33 setUnprocessedActions:v28];

      v29 = v34;
      v11 = v31;
      v10 = v32;
      goto LABEL_26;
    }

    v11 = v31;
    v10 = v32;
  }

  else
  {

    v17 = 0;
  }

  [(_UISceneConnectionOptionsContext *)v33 setUnprocessedActions:v14];
  v29 = 0;
LABEL_26:

  return v33;
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v10;
  if (!self->_sceneUserActivityManager)
  {
    v15 = [_UISceneUserActivityManager _userActivityManagerForScene:v12];
    sceneUserActivityManager = self->_sceneUserActivityManager;
    self->_sceneUserActivityManager = v15;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v19 = v17;
  if (!v18)
  {
    goto LABEL_22;
  }

  v20 = v18;
  v21 = *v34;
  while (2)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v34 != v21)
      {
        objc_enumerationMutation(v17);
      }

      v23 = *(*(&v33 + 1) + 8 * i);
      if ([v23 UIActionType] == 6)
      {
        if ([v13 isUISubclass])
        {
          v24 = [v13 payload];
          v25 = [v24 objectForKeyedSubscript:@"UIApplicationLaunchOptionsSourceApplicationKey"];
        }

        else
        {
          v25 = 0;
        }

        v26 = [v13 originatingProcess];
        v27 = [_UISceneUserActivityManager _activityContinuationDictionaryWithAction:v23 sourceApplication:v25 originatingProcess:v26];

        if (!v27)
        {
          goto LABEL_21;
        }

        if ([UIApp _appAdoptsUISceneLifecycle])
        {
          v28 = self->_sceneUserActivityManager;
          if (!v28)
          {
LABEL_21:
            v31 = [v17 mutableCopy];
            [v31 removeObject:v23];
            v19 = [v31 copy];

            goto LABEL_22;
          }

          v29 = [(_UISceneUserActivityManager *)v28 _activityContinuationManager];
          v30 = [v12 activationState] == 2;
        }

        else
        {
          v29 = [UIApp _getActivityContinuationManager];
          v30 = [UIApp isSuspended];
        }

        [v29 handleActivityContinuation:v27 isSuspended:v30];

        goto LABEL_21;
      }
    }

    v20 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

  v19 = v17;
LABEL_22:

  return v19;
}

@end