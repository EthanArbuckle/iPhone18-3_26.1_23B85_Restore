@interface PXSharedLibraryComposeMessageActionPerformer
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)performActionWithInvitationURL:(id)l originatorDisplayName:(id)name recipients:(id)recipients completionHandler:(id)handler;
- (void)performUserInteractionTask;
@end

@implementation PXSharedLibraryComposeMessageActionPerformer

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  [(MFMessageComposeViewController *)self->_messageComposeViewController setMessageComposeDelegate:0];
  messageComposeViewController = self->_messageComposeViewController;
  self->_messageComposeViewController = 0;

  if (!result)
  {
    v12 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Compose Message Action: Message send: user cancelled or MessagesViewServices crashed", buf, 2u);
    }

    v9 = PXSharedLibraryUserCanceledErrorWithDebugDescription(@"Compose Message Action");
    goto LABEL_14;
  }

  if (result == 2)
  {
    v11 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Compose Message Action: Message send: failed", buf, 2u);
    }

    v9 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Message send: failed"];
    goto LABEL_14;
  }

  if (result != 1)
  {
    v9 = 0;
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v8 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Compose Message Action: Message send: successful", buf, 2u);
  }

  v9 = 0;
  v10 = 1;
LABEL_15:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__PXSharedLibraryComposeMessageActionPerformer_messageComposeViewController_didFinishWithResult___block_invoke;
  v16[3] = &unk_1E774B368;
  v16[4] = self;
  v18 = v10;
  v13 = v9;
  v17 = v13;
  if (![(PXActionPerformer *)self dismissViewController:controllerCopy completionHandler:v16])
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 userInfo:0];
    v15 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Compose Message Action: Failed to dismiss the message compose view controller", buf, 2u);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v14];
  }
}

- (void)performUserInteractionTask
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[PXSharedLibrarySettings sharedInstance];
  simulateErrorType = [v3 simulateErrorType];

  if (simulateErrorType != 7)
  {
    if ([getMFMessageComposeViewControllerClass_250979() canSendText])
    {
      v7 = objc_alloc_init(getMFMessageComposeViewControllerClass_250979());
      messageComposeViewController = self->_messageComposeViewController;
      self->_messageComposeViewController = v7;

      [(MFMessageComposeViewController *)self->_messageComposeViewController setMessageComposeDelegate:self];
      if (self->_messageComposeViewController)
      {
        v9 = PLSharedLibraryGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          invitationURL = self->_invitationURL;
          recipients = self->_recipients;
          *v14 = 138412546;
          *&v14[4] = invitationURL;
          v15 = 2112;
          v16 = recipients;
          _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Compose Message Action: Will send message with invitation URL: %@, recipients: %@", v14, 0x16u);
        }

        PXSharedLibraryLinkMetadataDataRepresentationForInvitationURL(self->_invitationURL, self->_displayName);
      }

      v6 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Failed to create MFMessageComposeViewController"];
      v12 = PLSharedLibraryGetLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      *v14 = 0;
      v13 = "Compose Message Action: Failed to create the MFMessageComposeViewController";
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"MFMessageComposeViewController can't send text"];
      v12 = PLSharedLibraryGetLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_15:

        goto LABEL_16;
      }

      *v14 = 0;
      v13 = "Compose Message Action: MFMessageComposeViewController can't send text";
    }

    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
    goto LABEL_15;
  }

  v5 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Simulated Error: Send Invite Failed", v14, 2u);
  }

  v6 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Simulated Error: Send Invite Failed"];
LABEL_16:
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v6, *v14];
}

- (void)performActionWithInvitationURL:(id)l originatorDisplayName:(id)name recipients:(id)recipients completionHandler:(id)handler
{
  lCopy = l;
  nameCopy = name;
  recipientsCopy = recipients;
  handlerCopy = handler;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryComposeMessageActionPerformer+iOS.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"invitationURL"}];
  }

  if (nameCopy)
  {
    if (recipientsCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryComposeMessageActionPerformer+iOS.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"displayName"}];

    if (recipientsCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryComposeMessageActionPerformer+iOS.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"recipients"}];

LABEL_5:
  invitationURL = self->_invitationURL;
  self->_invitationURL = lCopy;
  v15 = lCopy;

  v16 = [nameCopy copy];
  displayName = self->_displayName;
  self->_displayName = v16;

  v18 = [recipientsCopy copy];
  recipients = self->_recipients;
  self->_recipients = v18;

  [(PXActionPerformer *)self performActionWithCompletionHandler:handlerCopy];
}

@end