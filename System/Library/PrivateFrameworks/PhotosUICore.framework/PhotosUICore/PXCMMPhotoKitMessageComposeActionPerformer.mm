@interface PXCMMPhotoKitMessageComposeActionPerformer
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)performUserInteractionTask;
@end

@implementation PXCMMPhotoKitMessageComposeActionPerformer

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1008 debugDescription:@"Message Compose reported send failure"];
  }

  else
  {
    if (a4)
    {
      v8 = 0;
      v10 = 1;
      goto LABEL_9;
    }

    v7 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1007 debugDescription:@"User cancelled Message Compose"];
  }

  v8 = v7;
  v9 = PLSharingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = v8;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Failed to send CMM message with error: %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_9:
  if (v6 && self->_messageComposeViewController == v6)
  {
    v14 = 1;
  }

  else
  {
    v11 = PLSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      messageComposeViewController = self->_messageComposeViewController;
      *buf = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = messageComposeViewController;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Unexpected controller: %@ expected: %@", buf, 0x16u);
    }

    v13 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1007 debugDescription:@"Unexpected controller"];

    v14 = 0;
    v10 = 0;
    v8 = v13;
  }

  objc_initWeak(buf, self);
  aBlock = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __95__PXCMMPhotoKitMessageComposeActionPerformer_messageComposeViewController_didFinishWithResult___block_invoke;
  v25 = &unk_1E7749CD8;
  objc_copyWeak(&v27, buf);
  v28 = v10;
  v15 = v8;
  v26 = v15;
  v16 = _Block_copy(&aBlock);
  v17 = v16;
  if (v14)
  {
    if (![(PXActionPerformer *)self dismissViewController:v6 completionHandler:v16])
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = PXLocalizedStringFromTable(@"PXCMMShareError", @"PhotosUICore");
      v20 = [v18 px_errorWithDomain:@"PXCMMErrorDomain" code:-1005 underlyingError:0 localizedDescription:{@"%@", v19, aBlock, v23, v24, v25}];

      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v20];
    }
  }

  else
  {
    (*(v16 + 2))(v16);
  }

  [(MFMessageComposeViewController *)v6 setMessageComposeDelegate:0];
  v21 = self->_messageComposeViewController;
  self->_messageComposeViewController = 0;

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);
}

void __95__PXCMMPhotoKitMessageComposeActionPerformer_messageComposeViewController_didFinishWithResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained completeUserInteractionTaskWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

- (void)performUserInteractionTask
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = PLSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(PXCMMShowMessageComposeActionPerformer *)self shareURL];
    v6 = [v5 pl_redactedShareURL];
    *buf = 138412546;
    v47 = self;
    v48 = 2114;
    v49 = v6;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Performer: %@ Presenting Message Compose for URL %{public}@", buf, 0x16u);
  }

  if (([getMFMessageComposeViewControllerClass() canSendText] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1010 debugDescription:@"Unable to send text"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v10];
    goto LABEL_38;
  }

  v7 = PLSharingGetLog();
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ActionPerformerMessageComposeViewController", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v10 = [(PXCMMShowMessageComposeActionPerformer *)self shareURL];
  if ((PFIsiOSPhotosApp() & 1) != 0 || PFIsVisionPhotosApp())
  {
    v11 = PXMessageForMomentShareURL(v10);
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = objc_alloc_init(getMFMessageComposeViewControllerClass());
  messageComposeViewController = self->_messageComposeViewController;
  self->_messageComposeViewController = v13;

  [(MFMessageComposeViewController *)self->_messageComposeViewController setMessageComposeDelegate:self];
  v39 = a2;
  v40 = v11;
  if (v11)
  {
    [(MFMessageComposeViewController *)self->_messageComposeViewController setMessage:v11];
    goto LABEL_21;
  }

  v15 = PLSharingGetLog();
  v16 = v15;
  if (v12)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = [v10 pl_redactedShareURL];
      *buf = 138543362;
      v47 = v17;
      v18 = "Message Compose Action: Unable to create MSMessage for URL: %{public}@. Falling back to plain link";
      v19 = v16;
      v20 = OS_LOG_TYPE_ERROR;
LABEL_19:
      _os_log_impl(&dword_1A3C1C000, v19, v20, v18, buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v10 pl_redactedShareURL];
    *buf = 138543362;
    v47 = v17;
    v18 = "Share Sheet: Live Bubbles not supported. Sending moment share URL as text: %{public}@";
    v19 = v16;
    v20 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_19;
  }

  v21 = [v10 absoluteString];
  [(MFMessageComposeViewController *)self->_messageComposeViewController setBody:v21];

LABEL_21:
  v22 = PLSharingGetLog();
  v23 = os_signpost_id_make_with_pointer(v22, self);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, OS_SIGNPOST_INTERVAL_END, v24, "ActionPerformerMessageComposeViewController", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v25 = [MEMORY[0x1E695DF70] array];
  v26 = [(PXCMMActionPerformer *)self session];
  v27 = [v26 viewModel];
  v28 = [v27 recipients];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v29 = v28;
  v30 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v42;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v41 + 1) + 8 * i) suggestedTransport];
        v35 = [v34 addressKind];
        if ((v35 - 1) >= 2)
        {
          if (!v35)
          {
            v38 = [MEMORY[0x1E696AAA8] currentHandler];
            [v38 handleFailureInMethod:v39 object:self file:@"PXCMMPhotoKitMessageComposeActionPerformer.m" lineNumber:84 description:@"Code which should be unreachable has been reached"];

            abort();
          }
        }

        else
        {
          v36 = [v34 address];
          [v25 addObject:v36];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v31);
  }

  [(MFMessageComposeViewController *)self->_messageComposeViewController setRecipients:v25];
  if (!self->_messageComposeViewController || ![(PXActionPerformer *)self presentViewController:?])
  {
    v37 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:{@"Failed to present the message compose view controller", v39}];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v37];
  }

LABEL_38:
}

@end