@interface _UISceneShortcutItemBSActionsHandler
- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UISceneShortcutItemBSActionsHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v56 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  _appAdoptsUISceneLifecycle = [UIApp _appAdoptsUISceneLifecycle];
  v14 = 0x1E695D000uLL;
  v15 = [MEMORY[0x1E695DFA8] set];
  v16 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneShortcutItemBSActionsHandler.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene self]]"}];
  }

  v18 = iSceneCopy;
  if ([contextCopy isUISubclass])
  {
    v19 = contextCopy;
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
  v21 = actionsCopy;
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
          uiShortcutItem = [v27 uiShortcutItem];
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v45, uiShortcutItem);
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
      _appAdoptsUISceneLifecycle2 = [UIApp _appAdoptsUISceneLifecycle];
      delegate = [v31 delegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        delegate2 = [v31 delegate];
        anyObject = [v23 anyObject];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = ___UIWindowSceneSendShortcutItemCallbackForWindowScene_block_invoke;
        v51[3] = &unk_1E70F8A60;
        v54 = _appAdoptsUISceneLifecycle2;
        v52 = v22;
        v53 = v31;
        [delegate2 windowScene:v53 performActionForShortcutItem:anyObject completionHandler:v51];
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

  if (_appAdoptsUISceneLifecycle)
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

- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context
{
  v39 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  sessionCopy = session;
  contextCopy = context;
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = actionsCopy;
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
          uiShortcutItem = [v18 uiShortcutItem];
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v33, uiShortcutItem);
          v20 = v33;

          v14 = v20;
        }

        else
        {
          v32 = v12;
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v32, v18);
          uiShortcutItem = v12;
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