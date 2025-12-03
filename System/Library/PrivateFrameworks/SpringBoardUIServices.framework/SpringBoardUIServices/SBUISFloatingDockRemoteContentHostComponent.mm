@interface SBUISFloatingDockRemoteContentHostComponent
- (SBUISFloatingDockRemoteContentHostComponentDelegate)delegate;
- (id)handlePrivateActions:(id)actions;
- (void)configureFileStackIcon:(id)icon url:(id)url sortingBy:(id)by sortingOrderAscending:(BOOL)ascending displayMode:(id)mode anchorFrame:(CGRect)frame floatingDockFrame:(CGRect)dockFrame sourceLayerRenderId:(id)self0 sourceContextId:(id)self1 openIndicatorLayerRenderId:(id)self2 openIndicatorContextId:(id)self3 iconImageInfoSize:(CGSize)self4 iconImageInfoScale:(id)self5 iconImageContinuousCornerRadius:(id)self6 requestFromHost:(int64_t)self7 fence:(id)self8;
- (void)fetchIconThumbnailWithSessionID:(id)d forIcon:(id)icon url:(id)url completion:(id)completion;
- (void)moveDocumentWithSessionID:(id)d securityURLWrappers:(id)wrappers toFileStackIcon:(id)icon url:(id)url completion:(id)completion;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
@end

@implementation SBUISFloatingDockRemoteContentHostComponent

- (void)configureFileStackIcon:(id)icon url:(id)url sortingBy:(id)by sortingOrderAscending:(BOOL)ascending displayMode:(id)mode anchorFrame:(CGRect)frame floatingDockFrame:(CGRect)dockFrame sourceLayerRenderId:(id)self0 sourceContextId:(id)self1 openIndicatorLayerRenderId:(id)self2 openIndicatorContextId:(id)self3 iconImageInfoSize:(CGSize)self4 iconImageInfoScale:(id)self5 iconImageContinuousCornerRadius:(id)self6 requestFromHost:(int64_t)self7 fence:(id)self8
{
  height = dockFrame.size.height;
  width = dockFrame.size.width;
  y = dockFrame.origin.y;
  x = dockFrame.origin.x;
  v25 = frame.size.height;
  v26 = frame.size.width;
  v27 = frame.origin.y;
  v28 = frame.origin.x;
  v91 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  urlCopy = url;
  byCopy = by;
  modeCopy = mode;
  idCopy = id;
  contextIdCopy = contextId;
  renderIdCopy = renderId;
  indicatorContextIdCopy = indicatorContextId;
  scaleCopy = scale;
  radiusCopy = radius;
  fenceCopy = fence;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __325__SBUISFloatingDockRemoteContentHostComponent_configureFileStackIcon_url_sortingBy_sortingOrderAscending_displayMode_anchorFrame_floatingDockFrame_sourceLayerRenderId_sourceContextId_openIndicatorLayerRenderId_openIndicatorContextId_iconImageInfoSize_iconImageInfoScale_iconImageContinuousCornerRadius_requestFromHost_fence___block_invoke;
  v67[3] = &unk_1E789E9B0;
  v61 = iconCopy;
  v68 = v61;
  v59 = urlCopy;
  v69 = v59;
  v57 = byCopy;
  v70 = v57;
  ascendingCopy = ascending;
  v56 = modeCopy;
  v71 = v56;
  v78 = v28;
  v79 = v27;
  v80 = v26;
  v81 = v25;
  v82 = x;
  v83 = y;
  v84 = width;
  v85 = height;
  v34 = idCopy;
  v72 = v34;
  v35 = contextIdCopy;
  v73 = v35;
  v36 = renderIdCopy;
  v74 = v36;
  v37 = indicatorContextIdCopy;
  v75 = v37;
  sizeCopy = size;
  v38 = scaleCopy;
  v76 = v38;
  v39 = radiusCopy;
  v77 = v39;
  hostCopy = host;
  v40 = MEMORY[0x1AC58E960](v67);
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  v43 = SBLogDockFileStack();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v90 = isActive;
    _os_log_impl(&dword_1A9A79000, v43, OS_LOG_TYPE_DEFAULT, "Host scene is active %{public}d.", buf, 8u);
  }

  hostScene2 = [(FBSSceneComponent *)self hostScene];
  if (isActive)
  {
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __325__SBUISFloatingDockRemoteContentHostComponent_configureFileStackIcon_url_sortingBy_sortingOrderAscending_displayMode_anchorFrame_floatingDockFrame_sourceLayerRenderId_sourceContextId_openIndicatorLayerRenderId_openIndicatorContextId_iconImageInfoSize_iconImageInfoScale_iconImageContinuousCornerRadius_requestFromHost_fence___block_invoke_29;
    v64[3] = &unk_1E789E9D8;
    v45 = &v66;
    v66 = v40;
    v46 = fenceCopy;
    v65 = fenceCopy;
    v47 = v40;
    [hostScene2 performUpdate:v64];

    hostScene2 = v65;
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
    [hostScene2 updateSettings:v62];
    v46 = fenceCopy;
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

- (void)moveDocumentWithSessionID:(id)d securityURLWrappers:(id)wrappers toFileStackIcon:(id)icon url:(id)url completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  urlCopy = url;
  iconCopy = icon;
  wrappersCopy = wrappers;
  dCopy = d;
  v17 = [[SBUISFloatingDockFileStackActionContext alloc] initWithUUID:dCopy iconIdentifier:iconCopy actionType:0 toIconURL:urlCopy fromSecurityURLWrappers:wrappersCopy];

  v18 = [[SBUISFloatingDockRemoteContentAction alloc] initWithContext:v17 handler:completionCopy];
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  v21 = SBLogDockFileStack();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v24[0] = 67240192;
    v24[1] = isActive;
    _os_log_impl(&dword_1A9A79000, v21, OS_LOG_TYPE_DEFAULT, "Host scene is active %{public}d at document move.", v24, 8u);
  }

  if (isActive)
  {
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    v23 = [MEMORY[0x1E695DFD8] setWithObject:v18];
    [hostScene2 sendActions:v23];
  }
}

- (void)fetchIconThumbnailWithSessionID:(id)d forIcon:(id)icon url:(id)url completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  urlCopy = url;
  iconCopy = icon;
  dCopy = d;
  v14 = [[SBUISFloatingDockFileStackActionContext alloc] initWithUUID:dCopy iconIdentifier:iconCopy actionType:1 toIconURL:urlCopy];

  v15 = [[SBUISFloatingDockRemoteContentAction alloc] initWithContext:v14 handler:completionCopy];
  hostScene = [(FBSSceneComponent *)self hostScene];
  isActive = [hostScene isActive];

  v18 = SBLogDockFileStack();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21[0] = 67240192;
    v21[1] = isActive;
    _os_log_impl(&dword_1A9A79000, v18, OS_LOG_TYPE_DEFAULT, "Host scene is active %{public}d at thumbnail fetch.", v21, 8u);
  }

  if (isActive)
  {
    hostScene2 = [(FBSSceneComponent *)self hostScene];
    v20 = [MEMORY[0x1E695DFD8] setWithObject:v15];
    [hostScene2 sendActions:v20];
  }
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  connectCopy = connect;
  delegate = [(SBUISFloatingDockRemoteContentHostComponent *)self delegate];
  [delegate clientDidConnect:connectCopy];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  v38[1] = *MEMORY[0x1E69E9840];
  clientSettings = [scene clientSettings];
  delegate = [(SBUISFloatingDockRemoteContentHostComponent *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    requestFromClient = [clientSettings requestFromClient];
    if (requestFromClient > 299)
    {
      if (requestFromClient != 300)
      {
        if (requestFromClient == 301)
        {
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];

          if (objc_opt_respondsToSelector())
          {
            fileStackIconIdentifier = [clientSettings fileStackIconIdentifier];

            uUIDString = fileStackIconIdentifier;
          }

          v13 = delegate;
          v14 = 0;
        }

        else
        {
          if (requestFromClient != 302)
          {
            goto LABEL_41;
          }

          uUID2 = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID2 UUIDString];

          if (objc_opt_respondsToSelector())
          {
            fileStackIconIdentifier2 = [clientSettings fileStackIconIdentifier];

            uUIDString = fileStackIconIdentifier2;
          }

          v13 = delegate;
          v14 = 1;
        }

        [v13 clientRequestToAcknowledgeDidFinishAnimatingFor:v14 withFileStackIcon:uUIDString];
LABEL_40:

        goto LABEL_41;
      }

      if (objc_opt_respondsToSelector())
      {
        errorMessage = [clientSettings errorMessage];
        v18 = errorMessage;
        if (errorMessage)
        {
          v19 = MEMORY[0x1E696ABC0];
          v37 = *MEMORY[0x1E696A578];
          v38[0] = errorMessage;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
          v21 = [v19 errorWithDomain:@"SBUISFloatingDockFileStackRequestErrorDomain" code:1 userInfo:v20];
        }

        else
        {
          v21 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          fileStackPresentationContextIdentifier = [clientSettings fileStackPresentationContextIdentifier];
          v36 = [[SBUISFloatingDockFileStackPresentationContext alloc] initWithContextIdentifier:fileStackPresentationContextIdentifier];
          [delegate completeContextRequestUpdateFromHost:v36 withError:v21];
        }
      }
    }

    else
    {
      switch(requestFromClient)
      {
        case 201:
          uUID3 = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID3 UUIDString];

          if (objc_opt_respondsToSelector())
          {
            fileStackIconIdentifier3 = [clientSettings fileStackIconIdentifier];

            uUIDString = fileStackIconIdentifier3;
          }

          [delegate clientRequestToCloseFileStackIcon:uUIDString];
          goto LABEL_40;
        case 202:
          uUID4 = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID4 UUIDString];

          v23 = [MEMORY[0x1E695DFF8] URLWithString:@"urlFromClient"];
          if (objc_opt_respondsToSelector())
          {
            fileStackIconIdentifier4 = [clientSettings fileStackIconIdentifier];

            uUIDString = fileStackIconIdentifier4;
          }

          if (objc_opt_respondsToSelector())
          {
            fileStackIconURL = [clientSettings fileStackIconURL];

            v23 = fileStackIconURL;
          }

          if (objc_opt_respondsToSelector())
          {
            fileStackIconSortingBy = [clientSettings fileStackIconSortingBy];
          }

          else
          {
            fileStackIconSortingBy = &stru_1F1D7ED48;
          }

          if (objc_opt_respondsToSelector())
          {
            fileStackIconSortingOrderAscending = [clientSettings fileStackIconSortingOrderAscending];
          }

          else
          {
            fileStackIconSortingOrderAscending = 1;
          }

          if (objc_opt_respondsToSelector())
          {
            fileStackIconDisplayMode = [clientSettings fileStackIconDisplayMode];
          }

          else
          {
            fileStackIconDisplayMode = &stru_1F1D7ED48;
          }

          v31 = [SBUISFloatingDockFileStackPresentationContext alloc];
          uUID5 = [MEMORY[0x1E696AFB0] UUID];
          uUIDString2 = [uUID5 UUIDString];
          v34 = [(SBUISFloatingDockFileStackPresentationContext *)v31 initWithFileStackPresentationContextIdentifier:uUIDString2 iconIdentifier:uUIDString url:v23 sortingBy:fileStackIconSortingBy sortingOrderAscending:fileStackIconSortingOrderAscending displayMode:fileStackIconDisplayMode anchorFrame:*MEMORY[0x1E695F058] dockFrame:*(MEMORY[0x1E695F058] + 8) request:*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), 202];

          [delegate clientRequestToInsertFileStackIcon:v34];
          goto LABEL_40;
        case 203:
          uUID6 = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID6 UUIDString];

          if (objc_opt_respondsToSelector())
          {
            fileStackIconIdentifier5 = [clientSettings fileStackIconIdentifier];

            uUIDString = fileStackIconIdentifier5;
          }

          [delegate clientRequestToRemoveFileStackIcon:uUIDString];
          goto LABEL_40;
      }
    }
  }

LABEL_41:
}

- (id)handlePrivateActions:(id)actions
{
  v29 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  delegate = [(SBUISFloatingDockRemoteContentHostComponent *)self delegate];
  if (delegate)
  {
    [MEMORY[0x1E695DFA8] set];
    v22 = v21 = actionsCopy;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = actionsCopy;
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
          actionContext = [v14 actionContext];
          uuid = [actionContext uuid];
          iconIdentifier = [actionContext iconIdentifier];
          if ([actionContext actionType] == 1000)
          {
            [delegate clientRequestToDeleteDragAndDropTempDirsWithSessionID:uuid];
            [v22 addObject:v12];
LABEL_21:

            goto LABEL_22;
          }

          if ([actionContext actionType] == 1001)
          {
            iconURL = [actionContext iconURL];
            [delegate clientRequestToUpdateFileStackIcon:iconIdentifier toUrl:iconURL];
            goto LABEL_19;
          }

          if ([actionContext actionType] == 9001)
          {
            iconURL = [actionContext iconURL];
            [delegate clientRequestTestHandleDownloadCompletedForFileStackIcon:iconIdentifier iconUrl:iconURL isDownloadsFolder:1];
LABEL_19:
            [v22 addObject:v12];
          }

          else
          {
            if ([actionContext actionType] != 1002)
            {
              goto LABEL_21;
            }

            iconURL = [actionContext iconThumbnail];
            [delegate clientRequestToUpdateFileStackIcon:iconIdentifier withThumbnail:iconURL];
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

        actionsCopy = v21;
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