@interface SBUISFloatingDockRemoteContentHostComponent
- (SBUISFloatingDockRemoteContentHostComponentDelegate)delegate;
- (id)handlePrivateActions:(id)a3;
- (void)configureFileStackIcon:(id)a3 url:(id)a4 sortingBy:(id)a5 sortingOrderAscending:(BOOL)a6 displayMode:(id)a7 anchorFrame:(CGRect)a8 floatingDockFrame:(CGRect)a9 sourceLayerRenderId:(id)a10 sourceContextId:(id)a11 openIndicatorLayerRenderId:(id)a12 openIndicatorContextId:(id)a13 iconImageInfoSize:(CGSize)a14 iconImageInfoScale:(id)a15 iconImageContinuousCornerRadius:(id)a16 requestFromHost:(int64_t)a17 fence:(id)a18;
- (void)fetchIconThumbnailWithSessionID:(id)a3 forIcon:(id)a4 url:(id)a5 completion:(id)a6;
- (void)moveDocumentWithSessionID:(id)a3 securityURLWrappers:(id)a4 toFileStackIcon:(id)a5 url:(id)a6 completion:(id)a7;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
@end

@implementation SBUISFloatingDockRemoteContentHostComponent

- (void)configureFileStackIcon:(id)a3 url:(id)a4 sortingBy:(id)a5 sortingOrderAscending:(BOOL)a6 displayMode:(id)a7 anchorFrame:(CGRect)a8 floatingDockFrame:(CGRect)a9 sourceLayerRenderId:(id)a10 sourceContextId:(id)a11 openIndicatorLayerRenderId:(id)a12 openIndicatorContextId:(id)a13 iconImageInfoSize:(CGSize)a14 iconImageInfoScale:(id)a15 iconImageContinuousCornerRadius:(id)a16 requestFromHost:(int64_t)a17 fence:(id)a18
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v25 = a8.size.height;
  v26 = a8.size.width;
  v27 = a8.origin.y;
  v28 = a8.origin.x;
  v91 = *MEMORY[0x1E69E9840];
  v60 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a7;
  v32 = a10;
  v49 = a11;
  v50 = a12;
  v51 = a13;
  v52 = a15;
  v33 = a16;
  v58 = a18;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __325__SBUISFloatingDockRemoteContentHostComponent_configureFileStackIcon_url_sortingBy_sortingOrderAscending_displayMode_anchorFrame_floatingDockFrame_sourceLayerRenderId_sourceContextId_openIndicatorLayerRenderId_openIndicatorContextId_iconImageInfoSize_iconImageInfoScale_iconImageContinuousCornerRadius_requestFromHost_fence___block_invoke;
  v67[3] = &unk_1E789E9B0;
  v61 = v60;
  v68 = v61;
  v59 = v29;
  v69 = v59;
  v57 = v30;
  v70 = v57;
  v88 = a6;
  v56 = v31;
  v71 = v56;
  v78 = v28;
  v79 = v27;
  v80 = v26;
  v81 = v25;
  v82 = x;
  v83 = y;
  v84 = width;
  v85 = height;
  v34 = v32;
  v72 = v34;
  v35 = v49;
  v73 = v35;
  v36 = v50;
  v74 = v36;
  v37 = v51;
  v75 = v37;
  v86 = a14;
  v38 = v52;
  v76 = v38;
  v39 = v33;
  v77 = v39;
  v87 = a17;
  v40 = MEMORY[0x1AC58E960](v67);
  v41 = [(FBSSceneComponent *)self hostScene];
  v42 = [v41 isActive];

  v43 = SBLogDockFileStack();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v90 = v42;
    _os_log_impl(&dword_1A9A79000, v43, OS_LOG_TYPE_DEFAULT, "Host scene is active %{public}d.", buf, 8u);
  }

  v44 = [(FBSSceneComponent *)self hostScene];
  if (v42)
  {
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __325__SBUISFloatingDockRemoteContentHostComponent_configureFileStackIcon_url_sortingBy_sortingOrderAscending_displayMode_anchorFrame_floatingDockFrame_sourceLayerRenderId_sourceContextId_openIndicatorLayerRenderId_openIndicatorContextId_iconImageInfoSize_iconImageInfoScale_iconImageContinuousCornerRadius_requestFromHost_fence___block_invoke_29;
    v64[3] = &unk_1E789E9D8;
    v45 = &v66;
    v66 = v40;
    v46 = v58;
    v65 = v58;
    v47 = v40;
    [v44 performUpdate:v64];

    v44 = v65;
  }

  else
  {
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __325__SBUISFloatingDockRemoteContentHostComponent_configureFileStackIcon_url_sortingBy_sortingOrderAscending_displayMode_anchorFrame_floatingDockFrame_sourceLayerRenderId_sourceContextId_openIndicatorLayerRenderId_openIndicatorContextId_iconImageInfoSize_iconImageInfoScale_iconImageContinuousCornerRadius_requestFromHost_fence___block_invoke_2;
    v62[3] = &unk_1E789EA00;
    v45 = &v63;
    v63 = v40;
    v48 = v40;
    [v44 updateSettings:v62];
    v46 = v58;
  }
}

void __325__SBUISFloatingDockRemoteContentHostComponent_configureFileStackIcon_url_sortingBy_sortingOrderAscending_displayMode_anchorFrame_floatingDockFrame_sourceLayerRenderId_sourceContextId_openIndicatorLayerRenderId_openIndicatorContextId_iconImageInfoSize_iconImageInfoScale_iconImageContinuousCornerRadius_requestFromHost_fence___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setFileStackIconIdentifier:*(a1 + 32)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setFileStackIconURL:*(a1 + 40)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setFileStackIconSortingBy:*(a1 + 48)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setFileStackIconSortingOrderAscending:*(a1 + 200)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setFileStackIconDisplayMode:*(a1 + 56)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setFileStackIconAnchorFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setFloatingDockFrame:{*(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168)}];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && *(a1 + 64))
  {
    [v3 setSourceLayerRenderId:?];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && *(a1 + 72))
  {
    [v3 setSourceContextId:?];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && *(a1 + 80))
  {
    [v3 setOpenIndicatorLayerRenderId:?];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && *(a1 + 88))
  {
    [v3 setOpenIndicatorContextId:?];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setIconImageInfoSize:{*(a1 + 176), *(a1 + 184)}];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && *(a1 + 96))
  {
    [v3 setIconImageInfoScale:?];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && *(a1 + 104))
  {
    [v3 setIconImageInfoContinuousCornerRadius:?];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setRequestFromHost:*(a1 + 192)];
  }
}

void __325__SBUISFloatingDockRemoteContentHostComponent_configureFileStackIcon_url_sortingBy_sortingOrderAscending_displayMode_anchorFrame_floatingDockFrame_sourceLayerRenderId_sourceContextId_openIndicatorLayerRenderId_openIndicatorContextId_iconImageInfoSize_iconImageInfoScale_iconImageContinuousCornerRadius_requestFromHost_fence___block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 40) + 16))();
  v4 = [MEMORY[0x1E698E608] settingsWithDuration:0.5];
  [v5 setAnimationSettings:v4];
  if (*(a1 + 32))
  {
    [v5 setAnimationFence:?];
  }
}

- (void)moveDocumentWithSessionID:(id)a3 securityURLWrappers:(id)a4 toFileStackIcon:(id)a5 url:(id)a6 completion:(id)a7
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[SBUISFloatingDockFileStackActionContext alloc] initWithUUID:v16 iconIdentifier:v14 actionType:0 toIconURL:v13 fromSecurityURLWrappers:v15];

  v18 = [[SBUISFloatingDockRemoteContentAction alloc] initWithContext:v17 handler:v12];
  v19 = [(FBSSceneComponent *)self hostScene];
  v20 = [v19 isActive];

  v21 = SBLogDockFileStack();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24[0] = 67240192;
    v24[1] = v20;
    _os_log_impl(&dword_1A9A79000, v21, OS_LOG_TYPE_DEFAULT, "Host scene is active %{public}d at document move.", v24, 8u);
  }

  if (v20)
  {
    v22 = [(FBSSceneComponent *)self hostScene];
    v23 = [MEMORY[0x1E695DFD8] setWithObject:v18];
    [v22 sendActions:v23];
  }
}

- (void)fetchIconThumbnailWithSessionID:(id)a3 forIcon:(id)a4 url:(id)a5 completion:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[SBUISFloatingDockFileStackActionContext alloc] initWithUUID:v13 iconIdentifier:v12 actionType:1 toIconURL:v11];

  v15 = [[SBUISFloatingDockRemoteContentAction alloc] initWithContext:v14 handler:v10];
  v16 = [(FBSSceneComponent *)self hostScene];
  v17 = [v16 isActive];

  v18 = SBLogDockFileStack();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67240192;
    v21[1] = v17;
    _os_log_impl(&dword_1A9A79000, v18, OS_LOG_TYPE_DEFAULT, "Host scene is active %{public}d at thumbnail fetch.", v21, 8u);
  }

  if (v17)
  {
    v19 = [(FBSSceneComponent *)self hostScene];
    v20 = [MEMORY[0x1E695DFD8] setWithObject:v15];
    [v19 sendActions:v20];
  }
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  v5 = a4;
  v6 = [(SBUISFloatingDockRemoteContentHostComponent *)self delegate];
  [v6 clientDidConnect:v5];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 clientSettings];
  v6 = [(SBUISFloatingDockRemoteContentHostComponent *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v5 requestFromClient];
    if (v7 > 299)
    {
      if (v7 != 300)
      {
        if (v7 == 301)
        {
          v27 = [MEMORY[0x1E696AFB0] UUID];
          v9 = [v27 UUIDString];

          if (objc_opt_respondsToSelector())
          {
            v28 = [v5 fileStackIconIdentifier];

            v9 = v28;
          }

          v13 = v6;
          v14 = 0;
        }

        else
        {
          if (v7 != 302)
          {
            goto LABEL_41;
          }

          v11 = [MEMORY[0x1E696AFB0] UUID];
          v9 = [v11 UUIDString];

          if (objc_opt_respondsToSelector())
          {
            v12 = [v5 fileStackIconIdentifier];

            v9 = v12;
          }

          v13 = v6;
          v14 = 1;
        }

        [v13 clientRequestToAcknowledgeDidFinishAnimatingFor:v14 withFileStackIcon:v9];
LABEL_40:

        goto LABEL_41;
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [v5 errorMessage];
        v18 = v17;
        if (v17)
        {
          v19 = MEMORY[0x1E696ABC0];
          v37 = *MEMORY[0x1E696A578];
          v38[0] = v17;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
          v21 = [v19 errorWithDomain:@"SBUISFloatingDockFileStackRequestErrorDomain" code:1 userInfo:v20];
        }

        else
        {
          v21 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          v35 = [v5 fileStackPresentationContextIdentifier];
          v36 = [[SBUISFloatingDockFileStackPresentationContext alloc] initWithContextIdentifier:v35];
          [v6 completeContextRequestUpdateFromHost:v36 withError:v21];
        }
      }
    }

    else
    {
      switch(v7)
      {
        case 201:
          v15 = [MEMORY[0x1E696AFB0] UUID];
          v9 = [v15 UUIDString];

          if (objc_opt_respondsToSelector())
          {
            v16 = [v5 fileStackIconIdentifier];

            v9 = v16;
          }

          [v6 clientRequestToCloseFileStackIcon:v9];
          goto LABEL_40;
        case 202:
          v22 = [MEMORY[0x1E696AFB0] UUID];
          v9 = [v22 UUIDString];

          v23 = [MEMORY[0x1E695DFF8] URLWithString:@"urlFromClient"];
          if (objc_opt_respondsToSelector())
          {
            v24 = [v5 fileStackIconIdentifier];

            v9 = v24;
          }

          if (objc_opt_respondsToSelector())
          {
            v25 = [v5 fileStackIconURL];

            v23 = v25;
          }

          if (objc_opt_respondsToSelector())
          {
            v26 = [v5 fileStackIconSortingBy];
          }

          else
          {
            v26 = &stru_1F1D7ED48;
          }

          if (objc_opt_respondsToSelector())
          {
            v29 = [v5 fileStackIconSortingOrderAscending];
          }

          else
          {
            v29 = 1;
          }

          if (objc_opt_respondsToSelector())
          {
            v30 = [v5 fileStackIconDisplayMode];
          }

          else
          {
            v30 = &stru_1F1D7ED48;
          }

          v31 = [SBUISFloatingDockFileStackPresentationContext alloc];
          v32 = [MEMORY[0x1E696AFB0] UUID];
          v33 = [v32 UUIDString];
          v34 = [(SBUISFloatingDockFileStackPresentationContext *)v31 initWithFileStackPresentationContextIdentifier:v33 iconIdentifier:v9 url:v23 sortingBy:v26 sortingOrderAscending:v29 displayMode:v30 anchorFrame:*MEMORY[0x1E695F058] dockFrame:*(MEMORY[0x1E695F058] + 8) request:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 202];

          [v6 clientRequestToInsertFileStackIcon:v34];
          goto LABEL_40;
        case 203:
          v8 = [MEMORY[0x1E696AFB0] UUID];
          v9 = [v8 UUIDString];

          if (objc_opt_respondsToSelector())
          {
            v10 = [v5 fileStackIconIdentifier];

            v9 = v10;
          }

          [v6 clientRequestToRemoveFileStackIcon:v9];
          goto LABEL_40;
      }
    }
  }

LABEL_41:
}

- (id)handlePrivateActions:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = [(SBUISFloatingDockRemoteContentHostComponent *)self delegate];
  if (v23)
  {
    [MEMORY[0x1E695DFA8] set];
    v22 = v21 = v4;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v6)
    {
      goto LABEL_27;
    }

    v7 = v6;
    v8 = *v25;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = objc_opt_class();
        v12 = v10;
        if (v11)
        {
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        if (v14)
        {
          v15 = [v14 actionContext];
          v16 = [v15 uuid];
          v17 = [v15 iconIdentifier];
          if ([v15 actionType] == 1000)
          {
            [v23 clientRequestToDeleteDragAndDropTempDirsWithSessionID:v16];
            [v22 addObject:v12];
LABEL_21:

            goto LABEL_22;
          }

          if ([v15 actionType] == 1001)
          {
            v18 = [v15 iconURL];
            [v23 clientRequestToUpdateFileStackIcon:v17 toUrl:v18];
            goto LABEL_19;
          }

          if ([v15 actionType] == 9001)
          {
            v18 = [v15 iconURL];
            [v23 clientRequestTestHandleDownloadCompletedForFileStackIcon:v17 iconUrl:v18 isDownloadsFolder:1];
LABEL_19:
            [v22 addObject:v12];
          }

          else
          {
            if ([v15 actionType] != 1002)
            {
              goto LABEL_21;
            }

            v18 = [v15 iconThumbnail];
            [v23 clientRequestToUpdateFileStackIcon:v17 withThumbnail:v18];
          }

          goto LABEL_21;
        }

LABEL_22:

        ++v9;
      }

      while (v7 != v9);
      v19 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v7 = v19;
      if (!v19)
      {
LABEL_27:

        v4 = v21;
        goto LABEL_29;
      }
    }
  }

  v22 = 0;
LABEL_29:

  return v22;
}

- (SBUISFloatingDockRemoteContentHostComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end