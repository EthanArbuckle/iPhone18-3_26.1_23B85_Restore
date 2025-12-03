@interface _UISceneUserNotificationsBSActionsHandler
- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UISceneUserNotificationsBSActionsHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v82 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  iSceneCopy = iScene;
  contextCopy = context;
  v13 = [MEMORY[0x1E695DFA8] set];
  if ([UIApp _appAdoptsUISceneLifecycle])
  {
    v52 = contextCopy;
    v53 = sceneCopy;
    v54 = actionsCopy;
    v55 = iSceneCopy;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v14 = actionsCopy;
    v15 = [v14 countByEnumeratingWithState:&v69 objects:v80 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v70;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v70 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v69 + 1) + 8 * i);
          if ([v20 UIActionType] == 26)
          {
            [v13 addObject:v20];
            if (v17)
            {
              [v17 addObject:v20];
              v21 = v17;
            }

            else
            {
              v21 = [MEMORY[0x1E695DFA8] setWithObject:v20];
            }

            v22 = v21;

            v17 = v22;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v69 objects:v80 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    if ([v13 count] && v17)
    {
      v23 = v17;
      v24 = v55;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      obj = v23;
      v25 = [v23 countByEnumeratingWithState:&v76 objects:v81 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v77;
        v28 = 0x1E6983000uLL;
        v57 = v24;
        v58 = v13;
        v56 = *v77;
        do
        {
          v29 = 0;
          v59 = v26;
          do
          {
            if (*v77 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v76 + 1) + 8 * v29);
            currentNotificationCenter = [*(v28 + 776) currentNotificationCenter];
            delegate = [currentNotificationCenter delegate];
            if (objc_opt_respondsToSelector())
            {
              response = [v30 response];
              if (response)
              {
                v63 = v30;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v65 = MEMORY[0x1E69832F8];
                  notification = [response notification];
                  actionIdentifier = [response actionIdentifier];
                  originIdentifier = [response originIdentifier];
                  targetConnectionEndpoint = [response targetConnectionEndpoint];
                  session = [v24 session];
                  persistentIdentifier = [session persistentIdentifier];
                  userText = [response userText];
                  v39 = v65;
                  v64 = originIdentifier;
                  v66 = actionIdentifier;
                  v40 = originIdentifier;
                  v41 = targetConnectionEndpoint;
                  v42 = [v39 responseWithNotification:notification actionIdentifier:actionIdentifier originIdentifier:v40 targetConnectionEndpoint:targetConnectionEndpoint targetSceneIdentifier:persistentIdentifier userText:userText];
                }

                else
                {
                  v68 = MEMORY[0x1E69832A8];
                  notification2 = [response notification];
                  actionIdentifier2 = [response actionIdentifier];
                  originIdentifier2 = [response originIdentifier];
                  targetConnectionEndpoint2 = [response targetConnectionEndpoint];
                  session = [v24 session];
                  persistentIdentifier = [session persistentIdentifier];
                  v46 = v68;
                  v66 = actionIdentifier2;
                  notification = notification2;
                  v64 = originIdentifier2;
                  v47 = originIdentifier2;
                  v41 = targetConnectionEndpoint2;
                  v42 = [v46 responseWithNotification:notification2 actionIdentifier:actionIdentifier2 originIdentifier:v47 targetConnectionEndpoint:targetConnectionEndpoint2 targetSceneIdentifier:persistentIdentifier];
                  userText = response;
                }

                v24 = v57;
                v13 = v58;
                v27 = v56;
                v30 = v63;
              }

              else
              {
                v42 = 0;
              }

              v73[0] = MEMORY[0x1E69E9820];
              v73[1] = 3221225472;
              v73[2] = ___UISceneSendNotificationResponseActionCallbackForScene_block_invoke;
              v73[3] = &unk_1E70F35B8;
              v74 = v24;
              v75 = v30;
              v48 = _UIAutologgingVoidBlock(@"Warning: UNUserNotificationCenter delegate received call to -userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler: but the completion handler was never called.", v73);
              [delegate userNotificationCenter:currentNotificationCenter didReceiveNotificationResponse:v42 withCompletionHandler:v48];

              v26 = v59;
              v28 = 0x1E6983000;
            }

            ++v29;
          }

          while (v26 != v29);
          v26 = [obj countByEnumeratingWithState:&v76 objects:v81 count:16];
        }

        while (v26);
      }
    }

    sceneCopy = v53;
    actionsCopy = v54;
    iSceneCopy = v55;
    contextCopy = v52;
  }

  v49 = [MEMORY[0x1E695DFA8] setWithSet:{actionsCopy, v52, v53, v54}];
  [v49 minusSet:v13];
  v50 = [v49 copy];

  return v50;
}

- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context
{
  v44 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  sessionCopy = session;
  contextCopy = context;
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = actionsCopy;
  v12 = 0;
  v13 = 0;
  v14 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v14)
  {
    v15 = *v40;
    do
    {
      v16 = 0;
      v17 = v12;
      v18 = v10;
      do
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v39 + 1) + 8 * v16);
        if ([v19 UIActionType] == 26)
        {
          v12 = v19;

          if ([v12 isDefaultAction])
          {
            response = [v12 response];
            v38 = v13;
            __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(&v38, response);
            v21 = v38;

            v13 = v21;
          }

          v37 = v18;
          v22 = &v37;
        }

        else
        {
          v36 = v18;
          v22 = &v36;
          v12 = v17;
        }

        __119___UISceneCloudKitShareMetadataBSActionHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke(v22, v19);
        v10 = *v22;

        ++v16;
        v17 = v12;
        v18 = v10;
      }

      while (v14 != v16);
      v14 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v14);
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__19;
  v34 = __Block_byref_object_dispose__19;
  v35 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116___UISceneUserNotificationsBSActionsHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke_3;
  aBlock[3] = &unk_1E70F7F68;
  aBlock[4] = &v30;
  v23 = _Block_copy(aBlock);
  v23[2](v23, v13, @"_UISceneConnectionOptionsNotificationResponsesKey");
  v24 = objc_alloc_init(_UISceneConnectionOptionsContext);
  [(_UISceneConnectionOptionsContext *)v24 setLaunchOptionsDictionary:v31[5]];
  [(_UISceneConnectionOptionsContext *)v24 setUnprocessedActions:v10];

  _Block_object_dispose(&v30, 8);

  return v24;
}

@end