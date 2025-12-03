@interface SBUISFloatingDockRemoteContentClientComponent
- (id)scene:(id)scene handleActions:(id)actions;
- (void)completeContextRequestUpdateFromHost:(id)host withError:(id)error;
- (void)requestActionForFloatingDockRemoteContentScene:(id)scene;
- (void)requestDismissContentFromFloatingDockRemoteSceneAtAnchorFrame:(CGRect)frame;
- (void)requestToUpdateContentForFloatingDockRemoteContentSceneWithContext:(id)context;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation SBUISFloatingDockRemoteContentClientComponent

- (void)requestToUpdateContentForFloatingDockRemoteContentSceneWithContext:(id)context
{
  contextCopy = context;
  clientScene = [(FBSSceneComponent *)self clientScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __116__SBUISFloatingDockRemoteContentClientComponent_requestToUpdateContentForFloatingDockRemoteContentSceneWithContext___block_invoke;
  v7[3] = &unk_1E789DB20;
  v8 = contextCopy;
  v6 = contextCopy;
  [clientScene updateClientSettings:v7];
}

void __116__SBUISFloatingDockRemoteContentClientComponent_requestToUpdateContentForFloatingDockRemoteContentSceneWithContext___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 conformsToProtocol:&unk_1F1E24E60])
  {
    v3 = *(a1 + 32);
    v4 = v9;
    v5 = [v3 iconIdentifier];
    [v4 setFileStackIconIdentifier:v5];

    v6 = [*(a1 + 32) url];
    [v4 setFileStackIconURL:v6];

    v7 = [*(a1 + 32) sortingBy];
    [v4 setFileStackIconSortingBy:v7];

    [v4 setFileStackIconSortingOrderAscending:{objc_msgSend(*(a1 + 32), "sortingOrderAscending")}];
    v8 = [*(a1 + 32) displayMode];
    [v4 setFileStackIconDisplayMode:v8];

    [v4 setRequestFromClient:{objc_msgSend(*(a1 + 32), "request")}];
  }
}

- (void)completeContextRequestUpdateFromHost:(id)host withError:(id)error
{
  hostCopy = host;
  errorCopy = error;
  clientScene = [(FBSSceneComponent *)self clientScene];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__SBUISFloatingDockRemoteContentClientComponent_completeContextRequestUpdateFromHost_withError___block_invoke;
  v11[3] = &unk_1E789DB48;
  v12 = hostCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = hostCopy;
  [clientScene updateClientSettings:v11];
}

void __96__SBUISFloatingDockRemoteContentClientComponent_completeContextRequestUpdateFromHost_withError___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 conformsToProtocol:&unk_1F1E24E60])
  {
    v3 = *(a1 + 32);
    v4 = v7;
    v5 = [v3 uuid];
    [v4 setFileStackPresentationContextIdentifier:v5];

    v6 = [*(a1 + 32) iconIdentifier];
    [v4 setFileStackIconIdentifier:v6];

    [v4 setRequestFromClient:300];
    [v4 setErrorMessage:*(a1 + 40)];
  }
}

- (void)requestActionForFloatingDockRemoteContentScene:(id)scene
{
  sceneCopy = scene;
  clientScene = [(FBSSceneComponent *)self clientScene];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:sceneCopy];

  [clientScene sendPrivateActions:v5];
}

- (void)requestDismissContentFromFloatingDockRemoteSceneAtAnchorFrame:(CGRect)frame
{
  v3 = [(FBSSceneComponent *)self clientScene:frame.origin.x];
  [v3 updateClientSettings:&__block_literal_global];
}

void __111__SBUISFloatingDockRemoteContentClientComponent_requestDismissContentFromFloatingDockRemoteSceneAtAnchorFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F1E24E60])
  {
    [v2 setRequestFromClient:201];
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  sceneCopy = scene;
  delegate = [sceneCopy delegate];
  v8 = objc_opt_class();
  v9 = delegate;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v27 = v10;

  delegate2 = [v27 delegate];
  if ([delegate2 conformsToProtocol:&unk_1F1E24EC0])
  {
    v12 = delegate2;
  }

  else
  {
    v12 = 0;
  }

  transitionContext = [settingsCopy transitionContext];

  settings = [sceneCopy settings];

  fileStackIconIdentifier = [settings fileStackIconIdentifier];
  if ([fileStackIconIdentifier length])
  {
    v16 = [[SBUISFloatingDockFileStackPresentationContext alloc] initWithFileStackIconIdentifier:fileStackIconIdentifier request:101];
    if (objc_opt_respondsToSelector())
    {
      fileStackIconURL = [settings fileStackIconURL];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setUrl:fileStackIconURL];
    }

    if (objc_opt_respondsToSelector())
    {
      fileStackIconSortingBy = [settings fileStackIconSortingBy];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setSortingBy:fileStackIconSortingBy];
    }

    if (objc_opt_respondsToSelector())
    {
      -[SBUISFloatingDockFileStackPresentationContext setSortingOrderAscending:](v16, "setSortingOrderAscending:", [settings fileStackIconSortingOrderAscending]);
    }

    if (objc_opt_respondsToSelector())
    {
      fileStackIconDisplayMode = [settings fileStackIconDisplayMode];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setDisplayMode:fileStackIconDisplayMode];
    }

    if (objc_opt_respondsToSelector())
    {
      [settings fileStackIconAnchorFrame];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setAnchorFrame:?];
    }

    if (objc_opt_respondsToSelector())
    {
      [settings floatingDockFrame];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setDockFrame:?];
    }

    if (objc_opt_respondsToSelector())
    {
      sourceLayerRenderId = [settings sourceLayerRenderId];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setSourceLayerRenderId:sourceLayerRenderId];
    }

    if (objc_opt_respondsToSelector())
    {
      sourceContextId = [settings sourceContextId];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setSourceContextId:sourceContextId];
    }

    if (objc_opt_respondsToSelector())
    {
      openIndicatorLayerRenderId = [settings openIndicatorLayerRenderId];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setOpenIndicatorLayerRenderId:openIndicatorLayerRenderId];
    }

    if (objc_opt_respondsToSelector())
    {
      openIndicatorContextId = [settings openIndicatorContextId];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setOpenIndicatorContextId:openIndicatorContextId];
    }

    if (objc_opt_respondsToSelector())
    {
      [settings iconImageInfoSize];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setIconImageInfoSize:?];
    }

    if (objc_opt_respondsToSelector())
    {
      iconImageInfoScale = [settings iconImageInfoScale];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setIconImageInfoScale:iconImageInfoScale];
    }

    if (objc_opt_respondsToSelector())
    {
      iconImageInfoContinuousCornerRadius = [settings iconImageInfoContinuousCornerRadius];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setIconImageInfoContinuousCornerRadius:iconImageInfoContinuousCornerRadius];
    }

    if (objc_opt_respondsToSelector())
    {
      -[SBUISFloatingDockFileStackPresentationContext setRequest:](v16, "setRequest:", [settings requestFromHost]);
    }

    if (objc_opt_respondsToSelector())
    {
      animationSettings = [transitionContext animationSettings];
      [v12 updateContentForFloatingDockRemoteContentScene:v27 withContext:v16 withAnimationSettings:animationSettings];
    }
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v33 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  delegate = [scene delegate];
  v7 = objc_opt_class();
  v8 = delegate;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  delegate2 = [v10 delegate];
  if ([delegate2 conformsToProtocol:&unk_1F1E24EC0])
  {
    v25 = delegate2;
    v12 = delegate2;
    v27 = [MEMORY[0x1E695DFA8] set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = actionsCopy;
    v13 = actionsCopy;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = objc_opt_class();
          v20 = v18;
          if (v19)
          {
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;

          if (v22)
          {
            actionContext = [v22 actionContext];
            if (![actionContext actionType] || objc_msgSend(actionContext, "actionType") == 1) && (objc_opt_respondsToSelector())
            {
              [v12 handleActionForFloatingDockRemoteContentScene:v10 withActionContext:actionContext];
            }

            [v27 addObject:{v20, v25}];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    delegate2 = v25;
    actionsCopy = v26;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end