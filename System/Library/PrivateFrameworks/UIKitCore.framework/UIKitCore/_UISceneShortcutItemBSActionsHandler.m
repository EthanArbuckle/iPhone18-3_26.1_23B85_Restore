@interface _UISceneShortcutItemBSActionsHandler
- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UISceneShortcutItemBSActionsHandler

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v44 = a4;
  v12 = a5;
  v13 = a6;
  v43 = [UIApp _appAdoptsUISceneLifecycle];
  v14 = 0x1E695D000uLL;
  v15 = [MEMORY[0x1E695DFA8] set];
  v16 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"_UISceneShortcutItemBSActionsHandler.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene self]]"}];
  }

  v18 = v12;
  if ([v13 isUISubclass])
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v21 = v11;
  v22 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v22)
  {
    v41 = v20;
    v42 = v18;
    v23 = 0;
    v24 = 0;
    v25 = *v48;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v47 + 1) + 8 * i);
        if ([v27 UIActionType] == 17)
        {
          [v15 addObject:v27];
          v46 = v24;
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v46, v27);
          v28 = v46;

          v45 = v23;
          v29 = [v27 uiShortcutItem];
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v45, v29);
          v30 = v45;

          v23 = v30;
          v24 = v28;
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v22);

    if (v24)
    {
      v22 = v24;
      v23 = v23;
      v18 = v42;
      v31 = v42;
      v32 = [UIApp _appAdoptsUISceneLifecycle];
      v33 = [v31 delegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        v35 = [v31 delegate];
        v36 = [v23 anyObject];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = ___UIWindowSceneSendShortcutItemCallbackForWindowScene_block_invoke;
        v51[3] = &unk_1E70F8A60;
        v54 = v32;
        v52 = v22;
        v53 = v31;
        [v35 windowScene:v53 performActionForShortcutItem:v36 completionHandler:v51];
      }

      v14 = 0x1E695D000;
    }

    else
    {
      v22 = 0;
      v14 = 0x1E695D000uLL;
      v18 = v42;
    }

    v20 = v41;
  }

  else
  {

    v23 = 0;
  }

  if (v43)
  {
    v37 = [*(v14 + 4008) setWithSet:v21];
    [v37 minusSet:v15];
    v38 = [v37 copy];
  }

  else
  {
    v38 = v21;
  }

  return v38;
}

- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v24 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v9;
  v14 = 0;
  v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        if ([v18 UIActionType] == 17)
        {
          v33 = v14;
          v19 = [v18 uiShortcutItem];
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v33, v19);
          v20 = v33;

          v14 = v20;
        }

        else
        {
          v32 = v12;
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v32, v18);
          v19 = v12;
          v12 = v32;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v15);
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__44;
  v30 = __Block_byref_object_dispose__44;
  v31 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111___UISceneShortcutItemBSActionsHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke_12;
  aBlock[3] = &unk_1E70F7F68;
  aBlock[4] = &v26;
  v21 = _Block_copy(aBlock);
  v21[2](v21, v14, @"_UISceneConnectionOptionsShortcutItemKey");
  v22 = objc_alloc_init(_UISceneConnectionOptionsContext);
  [(_UISceneConnectionOptionsContext *)v22 setLaunchOptionsDictionary:v27[5]];
  [(_UISceneConnectionOptionsContext *)v22 setUnprocessedActions:v12];

  _Block_object_dispose(&v26, 8);

  return v22;
}

@end