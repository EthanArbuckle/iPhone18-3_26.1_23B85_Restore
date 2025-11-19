@interface _UISceneCloudKitShareMetadataBSActionHandler
- (id)_launchOptionsFromActions:(id)a3 forFBSScene:(id)a4 uiSceneSession:(id)a5 transitionContext:(id)a6;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UISceneCloudKitShareMetadataBSActionHandler

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v41 = a4;
  v12 = a5;
  v40 = a6;
  v13 = [UIApp _appAdoptsUISceneLifecycle];
  v14 = [MEMORY[0x1E695DFA8] set];
  v15 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"_UISceneCloudKitShareMetadataBSActionHandler.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[uiScene isKindOfClass:[UIWindowScene self]]"}];
  }

  v17 = v12;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v39 = v13;
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
          v25 = [v24 shareMetadata];
          if (v21)
          {
            [v21 addObject:v25];
            v26 = v21;
          }

          else
          {
            v26 = [MEMORY[0x1E695DFA8] setWithObject:v25];
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
    v30 = [v29 delegate];
    v31 = objc_opt_respondsToSelector();

    v13 = v39;
    if (v31)
    {
      v32 = [v29 delegate];
      v33 = [v28 anyObject];
      [v32 windowScene:v29 userDidAcceptCloudKitShareWithMetadata:v33];
    }

    v34 = v28;
  }

  else
  {
    v34 = 0;
    v28 = v18;
  }

  if (v13)
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
        if ([v18 UIActionType] == 23)
        {
          v33 = v14;
          v19 = [v18 shareMetadata];
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