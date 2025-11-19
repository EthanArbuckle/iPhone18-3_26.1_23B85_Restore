@interface PKSharingMessageExtensionOpenGraphPresenter
+ (id)propertiesForMessage:(id)a3;
- (PKSharingMessageExtensionOpenGraphPresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4;
- (PKSharingMessageExtensionRenderer)renderer;
- (void)didTapMessage;
- (void)extensionWillAppear;
- (void)setMessage:(id)a3;
- (void)validateForRecipients:(id)a3 senderAddress:(id)a4 completion:(id)a5;
@end

@implementation PKSharingMessageExtensionOpenGraphPresenter

- (PKSharingMessageExtensionOpenGraphPresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKSharingMessageExtensionOpenGraphPresenter;
  v9 = [(PKSharingMessageExtensionOpenGraphPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetDevice, a3);
    objc_storeStrong(&v10->_passLibrary, a4);
  }

  return v10;
}

- (void)setMessage:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_message, a3);
  }
}

- (void)extensionWillAppear
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(PKSharingMessageExtensionOpenGraphMessage *)self->_message hasFetchedOpenGraphPreview])
  {
    v3 = [(PKSharingMessageExtensionOpenGraphMessage *)self->_message isFromMe];
    message = self->_message;
    if (v3)
    {
      v5 = [(PKSharingMessageExtensionOpenGraphMessage *)self->_message urlRepresentation];
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [v5 absoluteString];
        v8 = PKSharingLoggableMailboxAddress();
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_INFO, "iMessage Extension: fetching open graph preview for: '%@'...", buf, 0xCu);
      }

      v9 = objc_alloc_init(MEMORY[0x1E696ECE8]);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __66__PKSharingMessageExtensionOpenGraphPresenter_extensionWillAppear__block_invoke;
      v18[3] = &unk_1E80183E8;
      v19 = v5;
      v20 = self;
      v21 = v9;
      v10 = v9;
      v11 = v5;
      [v10 startFetchingMetadataForURL:v11 completionHandler:v18];
    }

    else
    {
      v12 = PKLocalizedShareableCredentialString(&cfstr_SharePreviewSu.isa);
      [(PKSharingMessageExtensionOpenGraphMessage *)message setTitle:v12];

      v13 = self->_message;
      v14 = MEMORY[0x1E69DCAB8];
      v15 = PKPassKitUIBundle();
      v16 = [v14 imageNamed:@"Generic-Shared-Key" inBundle:v15];
      [(PKSharingMessageExtensionOpenGraphMessage *)v13 setThumbnail:v16];

      [(PKSharingMessageExtensionOpenGraphMessage *)self->_message setHasFetchedOpenGraphPreview:1];
      WeakRetained = objc_loadWeakRetained(&self->_renderer);
      [WeakRetained messageDidUpdate];
    }
  }
}

void __66__PKSharingMessageExtensionOpenGraphPresenter_extensionWillAppear__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKSharingMessageExtensionOpenGraphPresenter_extensionWillAppear__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__PKSharingMessageExtensionOpenGraphPresenter_extensionWillAppear__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) absoluteString];
    v5 = PKSharingLoggableMailboxAddress();
    v22 = 138412546;
    v23 = v3;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_INFO, "iMessage Extension: received metadata %@ for: '%@'", &v22, 0x16u);
  }

  [*(*(a1 + 48) + 24) setHasFetchedOpenGraphPreview:1];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(*(a1 + 48) + 24);
    v8 = [v6 title];
    [v7 setTitle:v8];

    v9 = [*(a1 + 32) image];
    v10 = [v9 data];

    if (v10)
    {
      v11 = PKCreateCGImage(v10);
      if (v11)
      {
        v12 = v11;
        v13 = *(*(a1 + 48) + 24);
        v14 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v11];
        [v13 setThumbnail:v14];

        CGImageRelease(v12);
        goto LABEL_11;
      }
    }
  }

  v15 = *(*(a1 + 48) + 24);
  v16 = MEMORY[0x1E69DCAB8];
  v17 = PKPassKitUIBundle();
  v18 = [v16 imageNamed:@"Generic-Shared-Key" inBundle:v17];
  [v15 setThumbnail:v18];

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v20 = [*(a1 + 40) absoluteString];
    v21 = PKSharingLoggableMailboxAddress();
    v22 = 138412290;
    v23 = v21;
    _os_log_error_impl(&dword_1BD026000, v2, OS_LOG_TYPE_ERROR, "iMessage Extension: no image present for open graph preview: '%@'", &v22, 0xCu);
  }

  v10 = v2;
LABEL_11:

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 32));
  [WeakRetained messageDidUpdate];
}

- (void)validateForRecipients:(id)a3 senderAddress:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "iMessage Extension: validateForRecipients called for open graph presenter. This shouldn't happen", v7, 2u);
  }

  (*(v5 + 2))(v5, 0, 0);
}

- (void)didTapMessage
{
  if (![(PKSharingMessageExtensionOpenGraphMessage *)self->_message isFromMe])
  {
    WeakRetained = objc_loadWeakRetained(&self->_renderer);
    v3 = [(PKSharingMessageExtensionOpenGraphMessage *)self->_message urlRepresentation];
    [WeakRetained openAppURL:v3];
  }
}

+ (id)propertiesForMessage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKCredentialSharingMessageExtensionViewProperties);
  v5 = [v3 title];
  if (v5)
  {
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setTitle:v5];
  }

  else
  {
    v6 = PKLocalizedString(&cfstr_Wallet_1.isa);
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setTitle:v6];
  }

  v7 = [v3 subtitle];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setSubtitle:v7];

  v8 = [v3 thumbnail];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setCardImage:v8];

  if (([v3 isFromMe] & 1) == 0)
  {
    v9 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_0.isa);
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setButtonText:v9];
  }

  return v4;
}

- (PKSharingMessageExtensionRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end