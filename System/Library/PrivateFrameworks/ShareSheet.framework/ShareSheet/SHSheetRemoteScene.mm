@interface SHSheetRemoteScene
- (SHSheetRemoteScene)initWithSession:(id)session;
- (SHSheetRemoteSceneDelegate)delegate;
- (SHSheetSession)session;
- (id)_dataRepresentationForCollaborationShareOptions:(id)options;
- (id)createSceneSettings;
- (int64_t)presentationDirectionType;
- (void)activate;
- (void)clientIsReady;
- (void)invalidate;
- (void)presentCollaborationParticipantsViewControllerForCloudSharingRequest:(id)request completionHandler:(id)handler;
- (void)receivedAction:(id)action;
- (void)sendAction:(id)action;
- (void)setHostProcessType:(int64_t)type;
- (void)setupSceneHosting;
- (void)updateWithChange:(id)change;
- (void)updateWithSessionContext:(id)context;
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
      selfCopy = self;
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
    sessionContext = [(SHSheetRemoteScene *)self sessionContext];
    hostProcessType = [(SHSheetRemoteScene *)self hostProcessType];
    presentationStyle = [(SHSheetRemoteScene *)self presentationStyle];
    customizationGroups = [(SHSheetRemoteScene *)self customizationGroups];
    collaborationOptions = [(SHSheetRemoteScene *)self collaborationOptions];
    v16 = [(SHSheetRemoteScene *)self _dataRepresentationForCollaborationShareOptions:collaborationOptions];
    cloudShareRequest = [(SHSheetRemoteScene *)self cloudShareRequest];
    LOBYTE(v19) = [(SHSheetRemoteScene *)self isSLMEnabled];
    [SFUIShareSheetRemoteSettingsHelperClass updateHostingController:v10 withContext:sessionContext hostProcessType:hostProcessType hostPresentationStyle:presentationStyle optionGroups:customizationGroups collaborationOptionsData:v16 cloudShareRequest:cloudShareRequest isSLMEnabled:v19 presentationDirectionType:{-[SHSheetRemoteScene presentationDirectionType](self, "presentationDirectionType")}];

    delegate = [(SHSheetRemoteScene *)self delegate];
    [delegate sceneDidBecomeActive:self];
  }
}

- (SHSheetRemoteScene)initWithSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = SHSheetRemoteScene;
  v5 = [(SHSheetRemoteScene *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
    createClientContext = [sessionCopy createClientContext];
    sessionContext = v6->_sessionContext;
    v6->_sessionContext = createClientContext;

    activityViewController = [sessionCopy activityViewController];
    v6->_presentationStyle = SHSheetPresentationControllerPresentationStyle(activityViewController);

    v6->_isSLMEnabled = _ShareSheetSolariumEnabled();
  }

  return v6;
}

- (int64_t)presentationDirectionType
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 0;
  }

  session = [(SHSheetRemoteScene *)self session];
  activityViewController = [session activityViewController];
  popoverPresentationController = [activityViewController popoverPresentationController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentationDirectionType = [popoverPresentationController presentationDirectionType];
  }

  else
  {
    presentationDirectionType = 0;
  }

  return presentationDirectionType;
}

- (void)activate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
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
    selfCopy = self;
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

- (void)updateWithSessionContext:(id)context
{
  contextCopy = context;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__SHSheetRemoteScene_updateWithSessionContext___block_invoke;
  v6[3] = &unk_1E71F9150;
  v7 = contextCopy;
  v5 = contextCopy;
  [(SHSheetRemoteScene *)self updateWithChange:v6];
}

- (void)updateWithChange:(id)change
{
  v18 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "scene %@ will update", buf, 0xCu);
  }

  changeCopy[2](changeCopy, self);
  SFUIShareSheetRemoteSettingsHelperClass = getSFUIShareSheetRemoteSettingsHelperClass();
  hostingController = [(SHSheetRemoteScene *)self hostingController];
  sessionContext = [(SHSheetRemoteScene *)self sessionContext];
  hostProcessType = [(SHSheetRemoteScene *)self hostProcessType];
  presentationStyle = [(SHSheetRemoteScene *)self presentationStyle];
  customizationGroups = [(SHSheetRemoteScene *)self customizationGroups];
  collaborationOptions = [(SHSheetRemoteScene *)self collaborationOptions];
  v12 = [(SHSheetRemoteScene *)self _dataRepresentationForCollaborationShareOptions:collaborationOptions];
  cloudShareRequest = [(SHSheetRemoteScene *)self cloudShareRequest];
  LOBYTE(v14) = [(SHSheetRemoteScene *)self isSLMEnabled];
  [SFUIShareSheetRemoteSettingsHelperClass updateHostingController:hostingController withContext:sessionContext hostProcessType:hostProcessType hostPresentationStyle:presentationStyle optionGroups:customizationGroups collaborationOptionsData:v12 cloudShareRequest:cloudShareRequest isSLMEnabled:v14 presentationDirectionType:{-[SHSheetRemoteScene presentationDirectionType](self, "presentationDirectionType")}];
}

- (void)setHostProcessType:(int64_t)type
{
  hostProcessType = self->_hostProcessType;
  if (hostProcessType != type && hostProcessType <= 0)
  {
    self->_hostProcessType = type;
  }
}

- (void)receivedAction:(id)action
{
  v20 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    selfCopy = self;
    v18 = 2112;
    v19 = actionCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "scene %@ received action: %@", &v16, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    if ([(SHSheetRemoteScene *)v6 type]== 10)
    {
      session = [(SHSheetRemoteScene *)self session];
      activityViewController = [session activityViewController];
      [activityViewController _endDelayingPresentation];
    }

    delegate = [(SHSheetRemoteScene *)self delegate];
    [delegate scene:self didReceiveAction:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    delegate = [(SHSheetRemoteScene *)self delegate];
    [delegate scene:self didReceiveSizeUpdateAction:v6];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    delegate = [(SHSheetRemoteScene *)self delegate];
    [delegate scene:self didReceiveMetadataUpdateAction:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    delegate = [(SHSheetRemoteScene *)self delegate];
    [delegate scene:self didReceiveSuggestionAction:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = actionCopy;
    delegate = [(SHSheetRemoteScene *)self delegate];
    [delegate scene:self didReceiveOptionUpdateAction:v6];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = actionCopy;
    delegate = [(SHSheetRemoteScene *)self delegate];
    collaborationOptions = [(SHSheetRemoteScene *)v10 collaborationOptions];

    [delegate scene:self didReceiveCollaborationOptionUpdateAction:collaborationOptions];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      delegate = actionCopy;
      [(SHSheetRemoteScene *)self setCloudShareRequest:0];
      collaborationCreateSharingURLCompletionHandler = [(SHSheetRemoteScene *)self collaborationCreateSharingURLCompletionHandler];

      if (collaborationCreateSharingURLCompletionHandler)
      {
        collaborationCreateSharingURLCompletionHandler2 = [(SHSheetRemoteScene *)self collaborationCreateSharingURLCompletionHandler];
        result = [delegate result];
        (collaborationCreateSharingURLCompletionHandler2)[2](collaborationCreateSharingURLCompletionHandler2, result);

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
      delegate = share_sheet_log();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        selfCopy = actionCopy;
        _os_log_impl(&dword_18B359000, delegate, OS_LOG_TYPE_DEFAULT, "scene receieved unsupported action:%@", &v16, 0xCu);
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

- (void)sendAction:(id)action
{
  v11 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = actionCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "scene %@ will send action:%@", &v7, 0x16u);
  }

  hostingController = [(SHSheetRemoteScene *)self hostingController];
  [hostingController sendAction:actionCopy];
}

- (void)presentCollaborationParticipantsViewControllerForCloudSharingRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = share_sheet_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v8, OS_LOG_TYPE_DEFAULT, "Request collaboration participants view presentation from the remote", buf, 2u);
  }

  [(SHSheetRemoteScene *)self setCollaborationCreateSharingURLCompletionHandler:handlerCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __109__SHSheetRemoteScene_presentCollaborationParticipantsViewControllerForCloudSharingRequest_completionHandler___block_invoke;
  v10[3] = &unk_1E71F9150;
  v11 = requestCopy;
  v9 = requestCopy;
  [(SHSheetRemoteScene *)self updateWithChange:v10];
}

- (id)_dataRepresentationForCollaborationShareOptions:(id)options
{
  v3 = MEMORY[0x1E696ACC8];
  optionsCopy = options;
  v5 = [[v3 alloc] initRequiringSecureCoding:1];
  [v5 encodeObject:optionsCopy forKey:*MEMORY[0x1E696A508]];

  encodedData = [v5 encodedData];

  return encodedData;
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