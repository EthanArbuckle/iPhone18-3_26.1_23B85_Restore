@interface PXSharedLibraryShareInvitationActionPerformer
- (PXSharedLibraryShareInvitationActionPerformer)initWithPresentationEnvironment:(id)environment;
- (void)performActionWithInvitationURL:(id)l completionHandler:(id)handler;
- (void)performUserInteractionTask;
@end

@implementation PXSharedLibraryShareInvitationActionPerformer

- (void)performUserInteractionTask
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = +[PXSharedLibrarySettings sharedInstance];
  simulateErrorType = [v4 simulateErrorType];

  if (simulateErrorType == 7)
  {
    v6 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Simulated Error: Share Invitation Failed", buf, 2u);
    }

    v7 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Share Invitation Failed"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v7];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v14[0] = self->_invitationURL;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v7 = [v8 initWithActivityItems:v9 applicationActivities:0];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__PXSharedLibraryShareInvitationActionPerformer_performUserInteractionTask__block_invoke;
    v12[3] = &unk_1E773EBF0;
    v12[4] = self;
    [v7 setCompletionWithItemsHandler:v12];
    presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
    if (!presentationEnvironment)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryShareInvitationActionPerformer.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
    }

    [presentationEnvironment presentViewController:v7 animated:1 completionHandler:0];
  }
}

void __75__PXSharedLibraryShareInvitationActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a2;
  v9 = a4;
  v10 = a5;
  if (!v11 || a3)
  {
    if (!v10 && (a3 & 1) == 0)
    {
      v10 = PXSharedLibraryUserCanceledErrorWithDebugDescription(@"Share Invitation");
    }

    [*(a1 + 32) completeUserInteractionTaskWithSuccess:a3 error:v10];
  }
}

- (void)performActionWithInvitationURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryShareInvitationActionPerformer.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"invitationURL"}];
  }

  invitationURL = self->_invitationURL;
  self->_invitationURL = lCopy;

  [(PXActionPerformer *)self performActionWithCompletionHandler:handlerCopy];
}

- (PXSharedLibraryShareInvitationActionPerformer)initWithPresentationEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryShareInvitationActionPerformer.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  v10.receiver = self;
  v10.super_class = PXSharedLibraryShareInvitationActionPerformer;
  v6 = [(PXActionPerformer *)&v10 initWithActionType:@"PXActionSharedLibraryShareInvitation"];
  v7 = v6;
  if (v6)
  {
    [(PXActionPerformer *)v6 setPresentationEnvironment:environmentCopy];
  }

  return v7;
}

@end