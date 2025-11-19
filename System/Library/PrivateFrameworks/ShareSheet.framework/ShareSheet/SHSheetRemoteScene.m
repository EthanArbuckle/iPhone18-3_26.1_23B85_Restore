@interface SHSheetRemoteScene
- (SHSheetRemoteScene)initWithSession:(id)a3;
- (SHSheetRemoteSceneDelegate)delegate;
- (SHSheetSession)session;
- (id)_dataRepresentationForCollaborationShareOptions:(id)a3;
- (id)createSceneSettings;
- (int64_t)presentationDirectionType;
- (void)activate;
- (void)clientIsReady;
- (void)invalidate;
- (void)presentCollaborationParticipantsViewControllerForCloudSharingRequest:(id)a3 completionHandler:(id)a4;
- (void)receivedAction:(id)a3;
- (void)sendAction:(id)a3;
- (void)setHostProcessType:(int64_t)a3;
- (void)setupSceneHosting;
- (void)updateWithChange:(id)a3;
- (void)updateWithSessionContext:(id)a3;
@end

@implementation SHSheetRemoteScene

- (void)setupSceneHosting
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_hostingController)
  {
    v3 = share_sheet_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = self;
      _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "scene %@ setting up scene hosting", buf, 0xCu);
    }

    v21 = [MEMORY[0x1E69C75F0] identityForAngelJobLabel:@"com.apple.sharinguiservice"];
    v4 = objc_alloc(MEMORY[0x1E69DD688]);
    v5 = objc_opt_new();
    v6 = [v4 initWithProcessIdentity:v21 sceneSpecification:v5];
    hostingController = self->_hostingController;
    self->_hostingController = v6;

    [(_UISceneHostingController *)self->_hostingController setDelegate:self];
    v8 = self->_hostingController;
    v9 = objc_opt_new();
    [(_UISceneHostingController *)v8 setActivationController:v9];

    SFUIShareSheetRemoteSettingsHelperClass = getSFUIShareSheetRemoteSettingsHelperClass();
    v10 = self->_hostingController;
    v11 = [(SHSheetRemoteScene *)self sessionContext];
    v12 = [(SHSheetRemoteScene *)self hostProcessType];
    v13 = [(SHSheetRemoteScene *)self presentationStyle];
    v14 = [(SHSheetRemoteScene *)self customizationGroups];
    v15 = [(SHSheetRemoteScene *)self collaborationOptions];
    v16 = [(SHSheetRemoteScene *)self _dataRepresentationForCollaborationShareOptions:v15];
    v17 = [(SHSheetRemoteScene *)self cloudShareRequest];
    LOBYTE(v19) = [(SHSheetRemoteScene *)self isSLMEnabled];
    [SFUIShareSheetRemoteSettingsHelperClass updateHostingController:v10 withContext:v11 hostProcessType:v12 hostPresentationStyle:v13 optionGroups:v14 collaborationOptionsData:v16 cloudShareRequest:v17 isSLMEnabled:v19 presentationDirectionType:{-[SHSheetRemoteScene presentationDirectionType](self, "presentationDirectionType")}];

    v18 = [(SHSheetRemoteScene *)self delegate];
    [v18 sceneDidBecomeActive:self];
  }
}

- (SHSheetRemoteScene)initWithSession:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SHSheetRemoteScene;
  v5 = [(SHSheetRemoteScene *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, v4);
    v7 = [v4 createClientContext];
    sessionContext = v6->_sessionContext;
    v6->_sessionContext = v7;

    v9 = [v4 activityViewController];
    v6->_presentationStyle = SHSheetPresentationControllerPresentationStyle(v9);

    v6->_isSLMEnabled = _ShareSheetSolariumEnabled();
  }

  return v6;
}

- (int64_t)presentationDirectionType
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    return 0;
  }

  v6 = [(SHSheetRemoteScene *)self session];
  v7 = [v6 activityViewController];
  v8 = [v7 popoverPresentationController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v8 presentationDirectionType];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)activate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "scene %@ activating", &v4, 0xCu);
  }

  [(SHSheetRemoteScene *)self setupSceneHosting];
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "scene %@ invalidating", &v4, 0xCu);
  }

  [(SHSheetRemoteScene *)self setHostingController:0];
}

- (id)createSceneSettings
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SHSheetRemoteScene_createSceneSettings__block_invoke;
  v4[3] = &unk_1E71F9540;
  v4[4] = self;
  v2 = [SHSheetRemoteSceneSettings settingsWithConfigurationBlock:v4];

  return v2;
}

void __41__SHSheetRemoteScene_createSceneSettings__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 sessionContext];
  [v6 setSessionContext:v4];

  [v6 setPresentationStyle:{objc_msgSend(*(a1 + 32), "presentationStyle")}];
  [v6 setHostProcessType:{objc_msgSend(*(a1 + 32), "hostProcessType")}];
  v5 = [*(a1 + 32) customizationGroups];
  [v6 setCustomizationGroups:v5];

  [v6 setIsSLMEnabled:_ShareSheetSolariumEnabled()];
}

- (void)updateWithSessionContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SHSheetRemoteScene_updateWithSessionContext___block_invoke;
  v6[3] = &unk_1E71F9150;
  v7 = v4;
  v5 = v4;
  [(SHSheetRemoteScene *)self updateWithChange:v6];
}

- (void)updateWithChange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "scene %@ will update", buf, 0xCu);
  }

  v4[2](v4, self);
  SFUIShareSheetRemoteSettingsHelperClass = getSFUIShareSheetRemoteSettingsHelperClass();
  v6 = [(SHSheetRemoteScene *)self hostingController];
  v7 = [(SHSheetRemoteScene *)self sessionContext];
  v8 = [(SHSheetRemoteScene *)self hostProcessType];
  v9 = [(SHSheetRemoteScene *)self presentationStyle];
  v10 = [(SHSheetRemoteScene *)self customizationGroups];
  v11 = [(SHSheetRemoteScene *)self collaborationOptions];
  v12 = [(SHSheetRemoteScene *)self _dataRepresentationForCollaborationShareOptions:v11];
  v13 = [(SHSheetRemoteScene *)self cloudShareRequest];
  LOBYTE(v14) = [(SHSheetRemoteScene *)self isSLMEnabled];
  [SFUIShareSheetRemoteSettingsHelperClass updateHostingController:v6 withContext:v7 hostProcessType:v8 hostPresentationStyle:v9 optionGroups:v10 collaborationOptionsData:v12 cloudShareRequest:v13 isSLMEnabled:v14 presentationDirectionType:{-[SHSheetRemoteScene presentationDirectionType](self, "presentationDirectionType")}];
}

- (void)setHostProcessType:(int64_t)a3
{
  hostProcessType = self->_hostProcessType;
  if (hostProcessType != a3 && hostProcessType <= 0)
  {
    self->_hostProcessType = a3;
  }
}

- (void)receivedAction:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "scene %@ received action: %@", &v16, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    if ([(SHSheetRemoteScene *)v6 type]== 10)
    {
      v7 = [(SHSheetRemoteScene *)self session];
      v8 = [v7 activityViewController];
      [v8 _endDelayingPresentation];
    }

    v9 = [(SHSheetRemoteScene *)self delegate];
    [v9 scene:self didReceiveAction:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v9 = [(SHSheetRemoteScene *)self delegate];
    [v9 scene:self didReceiveSizeUpdateAction:v6];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v9 = [(SHSheetRemoteScene *)self delegate];
    [v9 scene:self didReceiveMetadataUpdateAction:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v9 = [(SHSheetRemoteScene *)self delegate];
    [v9 scene:self didReceiveSuggestionAction:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    v9 = [(SHSheetRemoteScene *)self delegate];
    [v9 scene:self didReceiveOptionUpdateAction:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v4;
    v9 = [(SHSheetRemoteScene *)self delegate];
    v11 = [(SHSheetRemoteScene *)v10 collaborationOptions];

    [v9 scene:self didReceiveCollaborationOptionUpdateAction:v11];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v4;
      [(SHSheetRemoteScene *)self setCloudShareRequest:0];
      v12 = [(SHSheetRemoteScene *)self collaborationCreateSharingURLCompletionHandler];

      if (v12)
      {
        v13 = [(SHSheetRemoteScene *)self collaborationCreateSharingURLCompletionHandler];
        v14 = [v9 result];
        (v13)[2](v13, v14);

        [(SHSheetRemoteScene *)self setCollaborationCreateSharingURLCompletionHandler:0];
      }

      else
      {
        v15 = share_sheet_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [SHSheetRemoteScene receivedAction:v15];
        }
      }
    }

    else
    {
      v9 = share_sheet_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v4;
        _os_log_impl(&dword_18B359000, v9, OS_LOG_TYPE_DEFAULT, "scene receieved unsupported action:%@", &v16, 0xCu);
      }
    }
  }

LABEL_16:
}

- (void)clientIsReady
{
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B359000, v3, OS_LOG_TYPE_DEFAULT, "SHSheetRemoteScene clientIsReady", v4, 2u);
  }

  self->_isActive = 1;
}

- (void)sendAction:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "scene %@ will send action:%@", &v7, 0x16u);
  }

  v6 = [(SHSheetRemoteScene *)self hostingController];
  [v6 sendAction:v4];
}

- (void)presentCollaborationParticipantsViewControllerForCloudSharingRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Request collaboration participants view presentation from the remote", buf, 2u);
  }

  [(SHSheetRemoteScene *)self setCollaborationCreateSharingURLCompletionHandler:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __109__SHSheetRemoteScene_presentCollaborationParticipantsViewControllerForCloudSharingRequest_completionHandler___block_invoke;
  v10[3] = &unk_1E71F9150;
  v11 = v6;
  v9 = v6;
  [(SHSheetRemoteScene *)self updateWithChange:v10];
}

- (id)_dataRepresentationForCollaborationShareOptions:(id)a3
{
  v3 = MEMORY[0x1E696ACC8];
  v4 = a3;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:v4 forKey:*MEMORY[0x1E696A508]];

  v6 = [v5 encodedData];

  return v6;
}

- (SHSheetSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (SHSheetRemoteSceneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end