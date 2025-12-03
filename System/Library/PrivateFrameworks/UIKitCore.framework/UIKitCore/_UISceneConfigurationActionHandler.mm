@interface _UISceneConfigurationActionHandler
- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UISceneConfigurationActionHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  actionsCopy = actions;
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__177;
  v26 = __Block_byref_object_dispose__177;
  v27 = [actionsCopy mutableCopy];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __100___UISceneConfigurationActionHandler__respondToActions_forFBSScene_inUIScene_fromTransitionContext___block_invoke;
  v19 = &unk_1E711FE78;
  v21 = &v22;
  v13 = iSceneCopy;
  v20 = v13;
  [actionsCopy enumerateObjectsUsingBlock:&v16];
  v14 = [v23[5] copy];

  _Block_object_dispose(&v22, 8);

  return v14;
}

- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context
{
  v39 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  sessionCopy = session;
  contextCopy = context;
  v11 = actionsCopy;
  v12 = objc_opt_new();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__177;
  v36 = __Block_byref_object_dispose__177;
  v37 = objc_opt_new();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __109___UISceneConfigurationActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke;
  v31[3] = &unk_1E7109F70;
  v31[4] = &v32;
  [v11 enumerateObjectsUsingBlock:v31];
  v13 = v11;
  if ([v33[5] count])
  {
    v14 = [v11 mutableCopy];
    v15 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v33[5];
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v17)
    {
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          [v14 removeObject:v20];
          loadSceneConfiguration = [v20 loadSceneConfiguration];
          if (loadSceneConfiguration)
          {
            [v15 addObject:loadSceneConfiguration];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v17);
    }

    v13 = [v14 copy];
    v22 = [v15 copy];
    [v12 setRequestedSceneConfigurations:v22];
  }

  [v12 setUnprocessedActions:{v13, sceneCopy}];
  _Block_object_dispose(&v32, 8);

  return v12;
}

@end