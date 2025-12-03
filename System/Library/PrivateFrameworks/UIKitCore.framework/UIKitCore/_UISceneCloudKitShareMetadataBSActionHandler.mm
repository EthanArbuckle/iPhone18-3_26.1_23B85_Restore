@interface _UISceneCloudKitShareMetadataBSActionHandler
- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UISceneCloudKitShareMetadataBSActionHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v47 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  _appAdoptsUISceneLifecycle = [UIApp _appAdoptsUISceneLifecycle];
  v14 = [MEMORY[0x1E695DFA8] set];
  v15 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneCloudKitShareMetadataBSActionHandler.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene self]]"}];
  }

  v17 = iSceneCopy;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = actionsCopy;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v39 = _appAdoptsUISceneLifecycle;
    v21 = 0;
    v22 = *v43;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        if ([v24 UIActionType] == 23)
        {
          [v14 addObject:v24];
          shareMetadata = [v24 shareMetadata];
          if (v21)
          {
            [v21 addObject:shareMetadata];
            v26 = v21;
          }

          else
          {
            v26 = [MEMORY[0x1E695DFA8] setWithObject:shareMetadata];
          }

          v27 = v26;

          v21 = v27;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v20);

    if (!v21)
    {
      v34 = 0;
      if (v39)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    v28 = v21;
    v29 = v17;
    delegate = [v29 delegate];
    v31 = objc_opt_respondsToSelector();

    _appAdoptsUISceneLifecycle = v39;
    if (v31)
    {
      delegate2 = [v29 delegate];
      anyObject = [v28 anyObject];
      [delegate2 windowScene:v29 userDidAcceptCloudKitShareWithMetadata:anyObject];
    }

    v34 = v28;
  }

  else
  {
    v34 = 0;
    v28 = v18;
  }

  if (_appAdoptsUISceneLifecycle)
  {
LABEL_21:
    v35 = [MEMORY[0x1E695DFA8] setWithSet:v18];
    [v35 minusSet:v14];
    v36 = [v35 copy];

    goto LABEL_24;
  }

LABEL_23:
  v36 = v18;
LABEL_24:

  return v36;
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
        if ([v18 UIActionType] == 23)
        {
          v33 = v14;
          shareMetadata = [v18 shareMetadata];
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v33, shareMetadata);
          v20 = v33;

          v14 = v20;
        }

        else
        {
          v32 = v12;
          __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v32, v18);
          shareMetadata = v12;
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
  v29 = __Block_byref_object_copy__16;
  v30 = __Block_byref_object_dispose__16;
  v31 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke_12;
  aBlock[3] = &unk_1E70F7F68;
  aBlock[4] = &v26;
  v21 = _Block_copy(aBlock);
  v21[2](v21, v14, @"_UISceneConnectionOptionsCloudKitShareMetadataKey");
  v22 = objc_alloc_init(_UISceneConnectionOptionsContext);
  [(_UISceneConnectionOptionsContext *)v22 setLaunchOptionsDictionary:v27[5]];
  [(_UISceneConnectionOptionsContext *)v22 setUnprocessedActions:v12];

  _Block_object_dispose(&v26, 8);

  return v22;
}

@end