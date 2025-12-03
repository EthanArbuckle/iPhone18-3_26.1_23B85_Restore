@interface PXSharedLibraryDeclineInvitationActionPerformer
- (PXSharedLibraryDeclineInvitationActionPerformer)init;
- (void)performActionWithInvitation:(id)invitation presentationEnvironment:(id)environment completionHandler:(id)handler;
- (void)performUserInteractionTask;
@end

@implementation PXSharedLibraryDeclineInvitationActionPerformer

- (void)performUserInteractionTask
{
  v3 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Will present the decline invitation confirmation alert", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__PXSharedLibraryDeclineInvitationActionPerformer_performUserInteractionTask__block_invoke;
  v6[3] = &unk_1E7741CB8;
  v6[4] = self;
  v4 = [(PXActionPerformer *)self presentAlertWithConfigurationHandler:v6];
  if (!v4)
  {
    PXAssertGetLog();
  }

  v5 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Did present the decline invitation confirmation alert", buf, 2u);
  }
}

void __77__PXSharedLibraryDeclineInvitationActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibraryInvitationDeclineConfirmationAlertTitle_iOS");
  [v3 setTitle:v4];

  [v3 setStyle:0];
  v5 = PXLocalizedSharedLibraryString(@"PXSharedLibraryInvitationDeclineConfirmationAlertButtonTitle");
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PXSharedLibraryDeclineInvitationActionPerformer_performUserInteractionTask__block_invoke_2;
  v8[3] = &unk_1E774C648;
  v8[4] = *(a1 + 32);
  [v3 addActionWithTitle:v5 style:2 action:v8];
  v6 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__PXSharedLibraryDeclineInvitationActionPerformer_performUserInteractionTask__block_invoke_2_213;
  v7[3] = &unk_1E774C648;
  v7[4] = *(a1 + 32);
  [v3 addActionWithTitle:v6 style:1 action:v7];
}

void __77__PXSharedLibraryDeclineInvitationActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "User confirmed the decline invitation confirmation alert", buf, 2u);
  }

  v3 = [*(a1 + 32) invitation];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__PXSharedLibraryDeclineInvitationActionPerformer_performUserInteractionTask__block_invoke_207;
  v4[3] = &unk_1E774C5C0;
  v4[4] = *(a1 + 32);
  [v3 declineInvitationWithCompletion:v4];
}

void __77__PXSharedLibraryDeclineInvitationActionPerformer_performUserInteractionTask__block_invoke_2_213(uint64_t a1)
{
  v2 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "User canceled the decline invitation confirmation alert", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = PXSharedLibraryUserCanceledErrorWithDebugDescription(@"Decline Assistant Confirmation");
  [v3 completeUserInteractionTaskWithSuccess:0 error:v4];
}

- (void)performActionWithInvitation:(id)invitation presentationEnvironment:(id)environment completionHandler:(id)handler
{
  invitationCopy = invitation;
  environmentCopy = environment;
  handlerCopy = handler;
  if (!invitationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDeclineInvitationActionPerformer.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

    if (environmentCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryDeclineInvitationActionPerformer.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

    goto LABEL_3;
  }

  if (!environmentCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(PXSharedLibraryDeclineInvitationActionPerformer *)self setInvitation:invitationCopy];
  [(PXActionPerformer *)self setPresentationEnvironment:environmentCopy];
  v14.receiver = self;
  v14.super_class = PXSharedLibraryDeclineInvitationActionPerformer;
  [(PXActionPerformer *)&v14 performActionWithCompletionHandler:handlerCopy];
}

- (PXSharedLibraryDeclineInvitationActionPerformer)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v7.receiver = self;
  v7.super_class = PXSharedLibraryDeclineInvitationActionPerformer;
  v5 = [(PXActionPerformer *)&v7 initWithActionType:v4];

  return v5;
}

@end