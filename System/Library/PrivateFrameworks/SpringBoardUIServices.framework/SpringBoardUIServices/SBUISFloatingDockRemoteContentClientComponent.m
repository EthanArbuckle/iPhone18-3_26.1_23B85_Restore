@interface SBUISFloatingDockRemoteContentClientComponent
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)completeContextRequestUpdateFromHost:(id)a3 withError:(id)a4;
- (void)requestActionForFloatingDockRemoteContentScene:(id)a3;
- (void)requestDismissContentFromFloatingDockRemoteSceneAtAnchorFrame:(CGRect)a3;
- (void)requestToUpdateContentForFloatingDockRemoteContentSceneWithContext:(id)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation SBUISFloatingDockRemoteContentClientComponent

- (void)requestToUpdateContentForFloatingDockRemoteContentSceneWithContext:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self clientScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __116__SBUISFloatingDockRemoteContentClientComponent_requestToUpdateContentForFloatingDockRemoteContentSceneWithContext___block_invoke;
  v7[3] = &unk_1E789DB20;
  v8 = v4;
  v6 = v4;
  [v5 updateClientSettings:v7];
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

- (void)completeContextRequestUpdateFromHost:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FBSSceneComponent *)self clientScene];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__SBUISFloatingDockRemoteContentClientComponent_completeContextRequestUpdateFromHost_withError___block_invoke;
  v11[3] = &unk_1E789DB48;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 updateClientSettings:v11];
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

- (void)requestActionForFloatingDockRemoteContentScene:(id)a3
{
  v4 = a3;
  v6 = [(FBSSceneComponent *)self clientScene];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:v4];

  [v6 sendPrivateActions:v5];
}

- (void)requestDismissContentFromFloatingDockRemoteSceneAtAnchorFrame:(CGRect)a3
{
  v3 = [(FBSSceneComponent *)self clientScene:a3.origin.x];
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

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 delegate];
  v8 = objc_opt_class();
  v9 = v7;
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

  v11 = [v27 delegate];
  if ([v11 conformsToProtocol:&unk_1F1E24EC0])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 transitionContext];

  v14 = [v6 settings];

  v15 = [v14 fileStackIconIdentifier];
  if ([v15 length])
  {
    v16 = [[SBUISFloatingDockFileStackPresentationContext alloc] initWithFileStackIconIdentifier:v15 request:101];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v14 fileStackIconURL];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setUrl:v17];
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [v14 fileStackIconSortingBy];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setSortingBy:v18];
    }

    if (objc_opt_respondsToSelector())
    {
      -[SBUISFloatingDockFileStackPresentationContext setSortingOrderAscending:](v16, "setSortingOrderAscending:", [v14 fileStackIconSortingOrderAscending]);
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = [v14 fileStackIconDisplayMode];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setDisplayMode:v19];
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 fileStackIconAnchorFrame];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setAnchorFrame:?];
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 floatingDockFrame];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setDockFrame:?];
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [v14 sourceLayerRenderId];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setSourceLayerRenderId:v20];
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [v14 sourceContextId];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setSourceContextId:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [v14 openIndicatorLayerRenderId];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setOpenIndicatorLayerRenderId:v22];
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [v14 openIndicatorContextId];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setOpenIndicatorContextId:v23];
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 iconImageInfoSize];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setIconImageInfoSize:?];
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [v14 iconImageInfoScale];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setIconImageInfoScale:v24];
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [v14 iconImageInfoContinuousCornerRadius];
      [(SBUISFloatingDockFileStackPresentationContext *)v16 setIconImageInfoContinuousCornerRadius:v25];
    }

    if (objc_opt_respondsToSelector())
    {
      -[SBUISFloatingDockFileStackPresentationContext setRequest:](v16, "setRequest:", [v14 requestFromHost]);
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [v13 animationSettings];
      [v12 updateContentForFloatingDockRemoteContentScene:v27 withContext:v16 withAnimationSettings:v26];
    }
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 delegate];
  v7 = objc_opt_class();
  v8 = v6;
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

  v11 = [v10 delegate];
  if ([v11 conformsToProtocol:&unk_1F1E24EC0])
  {
    v25 = v11;
    v12 = v11;
    v27 = [MEMORY[0x1E695DFA8] set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v5;
    v13 = v5;
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
            v23 = [v22 actionContext];
            if (![v23 actionType] || objc_msgSend(v23, "actionType") == 1) && (objc_opt_respondsToSelector())
            {
              [v12 handleActionForFloatingDockRemoteContentScene:v10 withActionContext:v23];
            }

            [v27 addObject:{v20, v25}];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    v11 = v25;
    v5 = v26;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

@end