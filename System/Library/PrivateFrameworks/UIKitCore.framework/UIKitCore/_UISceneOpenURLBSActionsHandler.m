@interface _UISceneOpenURLBSActionsHandler
- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UISceneOpenURLBSActionsHandler

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = UIApp;
  v11 = a6;
  v12 = [v10 _appAdoptsUISceneLifecycle];
  v13 = [v9 session];
  v19 = 0;
  v14 = _UISceneOpenURLContextsFromActionsSessionAndTransitionContext(v8, v13, v11, &v19);

  v15 = v19;
  if (v14)
  {
    _UISceneSendOpenURLActionCallbackForScene(v14, v9);
  }

  if (v12)
  {
    v16 = [MEMORY[0x1E695DFA8] setWithSet:v8];
    [v16 minusSet:v15];
    v17 = [v16 copy];
  }

  else
  {
    v17 = v8;
  }

  return v17;
}

- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6
{
  v44[2] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v24 = a4;
  v9 = a5;
  v10 = a6;
  if ([v10 isUISubclass])
  {
    v11 = [v10 payload];
  }

  else
  {
    v11 = 0;
  }

  v41 = 0;
  v25 = v9;
  v26 = v10;
  v28 = _UISceneOpenURLContextsFromActionsSessionAndTransitionContext(v29, v9, v10, &v41);
  v27 = v41;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__216;
  v39 = __Block_byref_object_dispose__216;
  v40 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106___UISceneOpenURLBSActionsHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke;
  aBlock[3] = &unk_1E70F7F68;
  aBlock[4] = &v35;
  v12 = _Block_copy(aBlock);
  v12[2](v12, v28, @"_UISceneConnectionOptionsURLContextKey");
  v43[0] = @"UIApplicationLaunchOptionsSourceApplicationKey";
  v43[1] = @"UIApplicationLaunchOptionsAppLinkOpenStrategyChangedKey";
  v44[0] = @"_UISceneConnectionOptionsSourceApplicationKey";
  v44[1] = @"_UISceneConnectionOptionsAppLinkOpenStrategyChangedKey";
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v13 = v31 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v14)
  {
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [v11 objectForKey:{v17, v24, v25, v26}];
        if (v18)
        {
          v19 = [MEMORY[0x1E695DFD8] setWithObject:v18];
          v20 = [v13 objectForKeyedSubscript:v17];
          v12[2](v12, v19, v20);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v14);
  }

  v21 = objc_alloc_init(_UISceneConnectionOptionsContext);
  [(_UISceneConnectionOptionsContext *)v21 setLaunchOptionsDictionary:v36[5]];
  v22 = [MEMORY[0x1E695DFA8] setWithSet:v29];
  [v22 minusSet:v27];
  [(_UISceneConnectionOptionsContext *)v21 setUnprocessedActions:v22];

  _Block_object_dispose(&v35, 8);

  return v21;
}

@end