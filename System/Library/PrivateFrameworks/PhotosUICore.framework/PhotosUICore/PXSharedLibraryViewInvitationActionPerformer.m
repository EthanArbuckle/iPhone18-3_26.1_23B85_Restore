@interface PXSharedLibraryViewInvitationActionPerformer
- (PXSharedLibraryViewInvitationActionPerformer)initWithSharedLibraryStatusProvider:(id)a3;
- (void)assistantController:(id)a3 completedWithError:(id)a4;
- (void)performActionWithInvitation:(id)a3 legacyDevicesFallbackMonitor:(id)a4 presentationEnvironment:(id)a5 completionHandler:(id)a6;
- (void)performUserInteractionTask;
@end

@implementation PXSharedLibraryViewInvitationActionPerformer

- (void)assistantController:(id)a3 completedWithError:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Invitation assistant completed with error: %@", buf, 0xCu);
  }

  [v7 setDelegate:0];
  v10 = [v7 context];
  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryViewInvitationActionPerformer.m" lineNumber:78 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assistantController.context", v17}];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    v19 = [v10 px_descriptionForAssertionMessage];
    [v15 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryViewInvitationActionPerformer.m" lineNumber:78 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assistantController.context", v17, v19}];

LABEL_16:
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  if (v8)
  {
LABEL_6:
    IsUserCanceledError = PXAssistantIsUserCanceledError(v8);
    v12 = PLSharedLibraryGetLog();
    v13 = v12;
    if (IsUserCanceledError)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Reply assistant cancelled by the user for context: %@", buf, 0xCu);
      }

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __87__PXSharedLibraryViewInvitationActionPerformer_assistantController_completedWithError___block_invoke;
      v24[3] = &unk_1E774C620;
      v24[4] = self;
      v25 = v8;
      [(PXActionPerformer *)self dismissViewController:v7 completionHandler:v24];
      v14 = v25;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = v10;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Reply assistant failed for context: %@, error: %@", buf, 0x16u);
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __87__PXSharedLibraryViewInvitationActionPerformer_assistantController_completedWithError___block_invoke_29;
      v22[3] = &unk_1E774C620;
      v22[4] = self;
      v23 = v8;
      [(PXActionPerformer *)self dismissViewController:v7 completionHandler:v22];
      v14 = v23;
    }

    goto LABEL_20;
  }

LABEL_17:
  v20 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v10;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "Reply assistant completed for context: %@", buf, 0xCu);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __87__PXSharedLibraryViewInvitationActionPerformer_assistantController_completedWithError___block_invoke_30;
  v21[3] = &unk_1E774C648;
  v21[4] = self;
  [(PXActionPerformer *)self dismissViewController:v7 completionHandler:v21];
LABEL_20:
}

- (void)performUserInteractionTask
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(PXSharedLibraryViewInvitationActionPerformer *)self invitation];
  v4 = [(PXSharedLibraryViewInvitationActionPerformer *)self sharedLibrartyStatusProvider];
  v5 = [(PXSharedLibraryViewInvitationActionPerformer *)self legacyDevicesFallbackMonitor];
  v6 = [PXSharedLibraryAssistantContext replyAssistantContextWithSharedLibraryStatusProvider:v4 sharedLibrary:v3 legacyDevicesFallbackMonitor:v5];

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

  v9 = [v3 identifier];
  v10 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Invitation assistant presented. Marking shared library invitation as read %{public}@", &v12, 0xCu);
  }

  v11 = [MEMORY[0x1E695DF00] now];
  PXPreferencesSetSharedLibraryInvitationLastSeenDate(v11, v9);
}

- (void)performActionWithInvitation:(id)a3 legacyDevicesFallbackMonitor:(id)a4 presentationEnvironment:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryViewInvitationActionPerformer.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryViewInvitationActionPerformer.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

    goto LABEL_3;
  }

  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(PXSharedLibraryViewInvitationActionPerformer *)self setInvitation:v11];
  [(PXSharedLibraryViewInvitationActionPerformer *)self setLegacyDevicesFallbackMonitor:v12];
  [(PXActionPerformer *)self setPresentationEnvironment:v13];
  v17.receiver = self;
  v17.super_class = PXSharedLibraryViewInvitationActionPerformer;
  [(PXActionPerformer *)&v17 performActionWithCompletionHandler:v14];
}

- (PXSharedLibraryViewInvitationActionPerformer)initWithSharedLibraryStatusProvider:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v10.receiver = self;
  v10.super_class = PXSharedLibraryViewInvitationActionPerformer;
  v8 = [(PXActionPerformer *)&v10 initWithActionType:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_sharedLibrartyStatusProvider, a3);
  }

  return v8;
}

@end