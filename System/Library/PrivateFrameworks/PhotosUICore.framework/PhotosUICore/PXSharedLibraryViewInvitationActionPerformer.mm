@interface PXSharedLibraryViewInvitationActionPerformer
- (PXSharedLibraryViewInvitationActionPerformer)initWithSharedLibraryStatusProvider:(id)provider;
- (void)assistantController:(id)controller completedWithError:(id)error;
- (void)performActionWithInvitation:(id)invitation legacyDevicesFallbackMonitor:(id)monitor presentationEnvironment:(id)environment completionHandler:(id)handler;
- (void)performUserInteractionTask;
@end

@implementation PXSharedLibraryViewInvitationActionPerformer

- (void)assistantController:(id)controller completedWithError:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  errorCopy = error;
  v9 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = errorCopy;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Invitation assistant completed with error: %@", buf, 0xCu);
  }

  [controllerCopy setDelegate:0];
  context = [controllerCopy context];
  if (!context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryViewInvitationActionPerformer.m" lineNumber:78 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assistantController.context", v17}];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [context px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryViewInvitationActionPerformer.m" lineNumber:78 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assistantController.context", v17, px_descriptionForAssertionMessage}];

LABEL_16:
    if (errorCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  if (errorCopy)
  {
LABEL_6:
    IsUserCanceledError = PXAssistantIsUserCanceledError(errorCopy);
    v12 = PLSharedLibraryGetLog();
    v13 = v12;
    if (IsUserCanceledError)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = context;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Reply assistant cancelled by the user for context: %@", buf, 0xCu);
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __87__PXSharedLibraryViewInvitationActionPerformer_assistantController_completedWithError___block_invoke;
      v24[3] = &unk_1E774C620;
      v24[4] = self;
      v25 = errorCopy;
      [(PXActionPerformer *)self dismissViewController:controllerCopy completionHandler:v24];
      v14 = v25;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = context;
        v28 = 2112;
        v29 = errorCopy;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Reply assistant failed for context: %@, error: %@", buf, 0x16u);
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __87__PXSharedLibraryViewInvitationActionPerformer_assistantController_completedWithError___block_invoke_29;
      v22[3] = &unk_1E774C620;
      v22[4] = self;
      v23 = errorCopy;
      [(PXActionPerformer *)self dismissViewController:controllerCopy completionHandler:v22];
      v14 = v23;
    }

    goto LABEL_20;
  }

LABEL_17:
  v20 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = context;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "Reply assistant completed for context: %@", buf, 0xCu);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __87__PXSharedLibraryViewInvitationActionPerformer_assistantController_completedWithError___block_invoke_30;
  v21[3] = &unk_1E774C648;
  v21[4] = self;
  [(PXActionPerformer *)self dismissViewController:controllerCopy completionHandler:v21];
LABEL_20:
}

- (void)performUserInteractionTask
{
  v14 = *MEMORY[0x1E69E9840];
  invitation = [(PXSharedLibraryViewInvitationActionPerformer *)self invitation];
  sharedLibrartyStatusProvider = [(PXSharedLibraryViewInvitationActionPerformer *)self sharedLibrartyStatusProvider];
  legacyDevicesFallbackMonitor = [(PXSharedLibraryViewInvitationActionPerformer *)self legacyDevicesFallbackMonitor];
  v6 = [PXSharedLibraryAssistantContext replyAssistantContextWithSharedLibraryStatusProvider:sharedLibrartyStatusProvider sharedLibrary:invitation legacyDevicesFallbackMonitor:legacyDevicesFallbackMonitor];

  v7 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Present invitation assistant with context: %@", &v12, 0xCu);
  }

  v8 = [[PXAssistantController alloc] initWithContext:v6];
  [(PXAssistantController *)v8 setDelegate:self];
  if (![(PXActionPerformer *)self presentViewController:v8])
  {
    PXAssertGetLog();
  }

  identifier = [invitation identifier];
  v10 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifier;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Invitation assistant presented. Marking shared library invitation as read %{public}@", &v12, 0xCu);
  }

  v11 = [MEMORY[0x1E695DF00] now];
  PXPreferencesSetSharedLibraryInvitationLastSeenDate(v11, identifier);
}

- (void)performActionWithInvitation:(id)invitation legacyDevicesFallbackMonitor:(id)monitor presentationEnvironment:(id)environment completionHandler:(id)handler
{
  invitationCopy = invitation;
  monitorCopy = monitor;
  environmentCopy = environment;
  handlerCopy = handler;
  if (!invitationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryViewInvitationActionPerformer.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

    if (environmentCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryViewInvitationActionPerformer.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

    goto LABEL_3;
  }

  if (!environmentCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(PXSharedLibraryViewInvitationActionPerformer *)self setInvitation:invitationCopy];
  [(PXSharedLibraryViewInvitationActionPerformer *)self setLegacyDevicesFallbackMonitor:monitorCopy];
  [(PXActionPerformer *)self setPresentationEnvironment:environmentCopy];
  v17.receiver = self;
  v17.super_class = PXSharedLibraryViewInvitationActionPerformer;
  [(PXActionPerformer *)&v17 performActionWithCompletionHandler:handlerCopy];
}

- (PXSharedLibraryViewInvitationActionPerformer)initWithSharedLibraryStatusProvider:(id)provider
{
  providerCopy = provider;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10.receiver = self;
  v10.super_class = PXSharedLibraryViewInvitationActionPerformer;
  v8 = [(PXActionPerformer *)&v10 initWithActionType:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_sharedLibrartyStatusProvider, provider);
  }

  return v8;
}

@end