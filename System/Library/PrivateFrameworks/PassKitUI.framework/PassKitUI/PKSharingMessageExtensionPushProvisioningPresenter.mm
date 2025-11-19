@interface PKSharingMessageExtensionPushProvisioningPresenter
+ (id)propertiesForMessage:(id)a3;
- (PKSharingMessageExtensionPushProvisioningPresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4;
- (PKSharingMessageExtensionRenderer)renderer;
- (id)_passInLibraryForMessage;
- (void)_presentIDSAlert;
- (void)didTapMessage;
- (void)extensionWillAppear;
- (void)setMessage:(id)a3;
- (void)validateForRecipients:(id)a3 senderAddress:(id)a4 completion:(id)a5;
@end

@implementation PKSharingMessageExtensionPushProvisioningPresenter

- (PKSharingMessageExtensionPushProvisioningPresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKSharingMessageExtensionPushProvisioningPresenter;
  v9 = [(PKSharingMessageExtensionPushProvisioningPresenter *)&v12 init];
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
  v3 = [(PKSharingMessageExtensionPushProvisioningPresenter *)self _passInLibraryForMessage];
  v4 = [(PKShareableCredentialMessage *)self->_message shareableCredentials];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 firstObject];
    [v6 setStatus:2];

    [(PKShareableCredentialMessage *)self->_message setShareableCredentials:v5];
    [(PKShareableCredentialMessage *)self->_message setIsPassInLibrary:1];
  }

  else
  {
    [(PKShareableCredentialMessage *)self->_message setIsPassInLibrary:0];
    if (![(PKShareableCredentialMessage *)self->_message isPending])
    {
      targetDevice = self->_targetDevice;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __73__PKSharingMessageExtensionPushProvisioningPresenter_extensionWillAppear__block_invoke;
      v9[3] = &unk_1E8022488;
      v9[4] = self;
      [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice statusForShareableCredentials:v5 completion:v9];
      goto LABEL_5;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_renderer);
  [WeakRetained messageDidUpdate];

LABEL_5:
}

- (id)_passInLibraryForMessage
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 && ([*(a1 + 24) isFromMe] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [*(a1 + 24) shareableCredentials];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
LABEL_6:
      v6 = 0;
      while (1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 16);
        v8 = [*(*(&v11 + 1) + 8 * v6) credentialIdentifierHash];
        v9 = [v7 passForProvisioningCredentialHash:v8];

        if (v9)
        {
          break;
        }

        if (v4 == ++v6)
        {
          v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v4)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __73__PKSharingMessageExtensionPushProvisioningPresenter_extensionWillAppear__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__PKSharingMessageExtensionPushProvisioningPresenter_extensionWillAppear__block_invoke_2;
  v6[3] = &unk_1E8010A10;
  v6[4] = *(a1 + 32);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __73__PKSharingMessageExtensionPushProvisioningPresenter_extensionWillAppear__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setShareableCredentials:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained messageDidUpdate];
}

- (void)validateForRecipients:(id)a3 senderAddress:(id)a4 completion:(id)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v37 = a4;
  v39 = a5;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    message = self->_message;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = message;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Validate before sending iMessage: %@", &buf, 0xCu);
  }

  if (PKiMessageIsActive())
  {
    if ([v38 count] < 2)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v71 = 0x3032000000;
      v72 = __Block_byref_object_copy__56;
      v73 = __Block_byref_object_dispose__56;
      v74 = [v38 firstObject];
      if (PKIDSServiceContainsHandle())
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 0;
          _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Sender address is the same as recipient!", v62, 2u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_renderer);
        v19 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_3.isa);
        v20 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_4.isa);
        v21 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
        [WeakRetained showAlertWithTitle:v19 message:v20 button:v21];

        (*(v39 + 2))(v39, 0, 0);
      }

      else
      {
        v40 = objc_alloc_init(MEMORY[0x1E69B8658]);
        v22 = objc_alloc(MEMORY[0x1E69B8918]);
        v23 = MEMORY[0x1E69E96A0];
        v24 = MEMORY[0x1E69E96A0];
        v25 = [v22 initWithQueue:v23];

        objc_initWeak(&location, self);
        *v62 = 0;
        v63 = v62;
        v64 = 0x3032000000;
        v65 = __Block_byref_object_copy__56;
        v66 = __Block_byref_object_dispose__56;
        v67 = 0;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke;
        v57[3] = &unk_1E80224D8;
        v26 = v25;
        v58 = v26;
        p_buf = &buf;
        v60 = v62;
        objc_copyWeak(&v61, &location);
        [v40 addOperation:v57];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_49;
        v53[3] = &unk_1E8022528;
        v36 = v26;
        v54 = v36;
        v55 = &buf;
        objc_copyWeak(&v56, &location);
        [v40 addOperation:v53];
        v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v51 = 0u;
        v52 = 0u;
        v50 = 0u;
        v49 = 0u;
        v28 = [(PKShareableCredentialMessage *)self->_message shareableCredentials];
        v29 = [v28 countByEnumeratingWithState:&v49 objects:v69 count:16];
        if (v29)
        {
          v30 = *v50;
          do
          {
            v31 = 0;
            do
            {
              if (*v50 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = *(*(&v49 + 1) + 8 * v31);
              v45[0] = MEMORY[0x1E69E9820];
              v45[1] = 3221225472;
              v45[2] = __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_53;
              v45[3] = &unk_1E8022578;
              objc_copyWeak(&v48, &location);
              v47 = v62;
              v45[4] = v32;
              v46 = v27;
              [v40 addOperation:{v45, v36}];

              objc_destroyWeak(&v48);
              ++v31;
            }

            while (v29 != v31);
            v29 = [v28 countByEnumeratingWithState:&v49 objects:v69 count:16];
          }

          while (v29);
        }

        v33 = [MEMORY[0x1E695DFB0] null];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_2_62;
        v41[3] = &unk_1E80225A0;
        objc_copyWeak(&v44, &location);
        v34 = v27;
        v42 = v34;
        v43 = v39;
        v35 = [v40 evaluateWithInput:v33 completion:v41];

        objc_destroyWeak(&v44);
        objc_destroyWeak(&v56);

        objc_destroyWeak(&v61);
        _Block_object_dispose(v62, 8);

        objc_destroyWeak(&location);
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v10 = objc_loadWeakRetained(&self->_renderer);
      v11 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_1.isa);
      v12 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_2.isa);
      v13 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
      [v10 showAlertWithTitle:v11 message:v12 button:v13];

      (*(v39 + 2))(v39, 0, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "iMessage Extension: iMessage is disabled", &buf, 2u);
    }

    v14 = objc_loadWeakRetained(&self->_renderer);
    v15 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_1.isa);
    v16 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_21.isa);
    v17 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
    [v14 showAlertWithTitle:v15 message:v16 button:v17];

    (*(v39 + 2))(v39, 0, 0);
  }
}

void __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(*(*(a1 + 40) + 8) + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_2;
  v14[3] = &unk_1E80224B0;
  v17 = *(a1 + 48);
  objc_copyWeak(&v19, (a1 + 56));
  v18 = *(a1 + 40);
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v15 = v13;
  [v10 reachableDestinationsForDestination:v11 service:@"com.apple.private.alloy.harmony.pushprovisioning" completion:v14];

  objc_destroyWeak(&v19);
}

void __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (a3 || ![v6 count])
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = @"com.apple.private.alloy.harmony.pushprovisioning";
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "iMessage Extension: IDSBatchIDQueryController service %@ returned no reachable destinations", &v12, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [(PKSharingMessageExtensionPushProvisioningPresenter *)WeakRetained _presentIDSAlert];
  }

  else
  {
    v9 = [v6 firstObject];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_presentIDSAlert
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v1 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_1.isa);
    v2 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_28.isa);
    v3 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
    [WeakRetained showAlertWithTitle:v1 message:v2 button:v3];
  }
}

void __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_49(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(*(v10 + 8) + 40);
  v13 = *MEMORY[0x1E69A4818];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_2_50;
  v16[3] = &unk_1E8022500;
  v19 = v10;
  objc_copyWeak(&v20, (a1 + 48));
  v14 = v9;
  v18 = v14;
  v15 = v8;
  v17 = v15;
  [v11 checkIDSStatusForDestination:v12 service:v13 listenerID:@"ShareableCredentialsIDSStatusQueryListenerID" completion:v16];

  objc_destroyWeak(&v20);
}

uint64_t __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_2_50(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 48) + 8) + 40);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Recipient %@ doesn't support imessage", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [(PKSharingMessageExtensionPushProvisioningPresenter *)WeakRetained _presentIDSAlert];
  }

  return (*(*(a1 + 40) + 16))();
}

void __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_53(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v22 = v7;
    v11 = objc_alloc(MEMORY[0x1E69B9108]);
    [*(*(*(a1 + 48) + 8) + 40) firstObject];
    v23 = v9;
    v13 = v12 = v8;
    v14 = PKIDSNormalizedAddress();
    v15 = [*(a1 + 32) credentialIdentifier];
    v16 = [*(a1 + 32) cardConfigurationIdentifier];
    v17 = [*(a1 + 32) sharingInstanceIdentifier];
    v18 = [*(a1 + 32) nonce];
    v19 = [v11 initWithAppleIdentifier:v14 appleIdentifierType:2 provisioningCredentialIdentifier:v15 cardConfigurationIdentifier:v16 sharingInstanceIdentifier:v17 nonce:v18];

    v8 = v12;
    v9 = v23;
    v20 = WeakRetained[1];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_2_55;
    v24[3] = &unk_1E8022550;
    v21 = *(a1 + 40);
    v24[4] = *(a1 + 32);
    v25 = v21;
    objc_copyWeak(&v28, (a1 + 56));
    v27 = v23;
    v26 = v8;
    [v20 prepareProvisioningTarget:v19 checkFamilyCircle:1 completion:v24];

    objc_destroyWeak(&v28);
    v7 = v22;
  }
}

void __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_2_55(uint64_t a1, void *a2, int a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v7;
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Sending provisioning target %@ (family circle: %d).", buf, 0x12u);
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = *(a1 + 32);
    [v11 setEncryptedPushProvisioningTarget:v7];
    [v11 setStatus:1];
    [*(a1 + 40) addObject:v11];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "iMessage Extension: prepareProvisioningTarget error: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_56;
    block[3] = &unk_1E8010998;
    objc_copyWeak(&v13, (a1 + 64));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v13);
  }

  (*(*(a1 + 56) + 16))();
}

void __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_56(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 4);
    v3 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_1.isa);
    v4 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_22.isa);
    v5 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
    [v2 showAlertWithTitle:v3 message:v4 button:v5];

    WeakRetained = v6;
  }
}

void __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_2_62(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_3;
  v7[3] = &unk_1E8019A28;
  objc_copyWeak(&v11, a1 + 6);
  v8 = v5;
  v9 = a1[4];
  v10 = a1[5];
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v11);
}

void __101__PKSharingMessageExtensionPushProvisioningPresenter_validateForRecipients_senderAddress_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (([*(a1 + 32) isCanceled] & 1) == 0)
    {
      v3 = *(WeakRetained + 3);
      v4 = [*(a1 + 40) copy];
      [v3 setShareableCredentials:v4];

      v5 = objc_loadWeakRetained(WeakRetained + 4);
      [v5 messageDidUpdate];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "iMessage Extension: presenter deallocated", v7, 2u);
    }
  }
}

- (void)didTapMessage
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(PKSharingMessageExtensionPushProvisioningPresenter *)self _passInLibraryForMessage];
  if (!v3)
  {
    if (![(PKShareableCredentialMessage *)self->_message isShareAcceptable])
    {
      goto LABEL_15;
    }

    v6 = [(PKShareableCredentialMessage *)self->_message shareableCredentials];
    v7 = [v6 pk_arrayByApplyingBlock:&__block_literal_global_222];

    v31 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v31];
    v9 = v31;
    if (v8)
    {
      IsCurrentlyAvailable = PKPassbookIsCurrentlyAvailable();
      v11 = PKLogFacilityTypeGetObject();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (IsCurrentlyAvailable)
      {
        v30 = v9;
        if (v12)
        {
          *buf = 138412290;
          v33 = v7;
          _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Open shareable credential with encrypted provisioning targets %@", buf, 0xCu);
        }

        v29 = MEMORY[0x1E696AEC0];
        v28 = *MEMORY[0x1E69BC438];
        v13 = v7;
        v14 = *MEMORY[0x1E69BC430];
        v15 = [v8 hexEncoding];
        v16 = v8;
        v17 = *MEMORY[0x1E69BC440];
        v18 = [(PKShareableCredentialMessage *)self->_message passThumbnailImage];
        v19 = UIImagePNGRepresentation(v18);
        v20 = [v19 hexEncoding];
        v27 = v17;
        v8 = v16;
        v26 = v14;
        v7 = v13;
        v11 = [v29 stringWithFormat:@"shoebox://%@/?%@=%@&%@=%@", v28, v26, v15, v27, v20];

        WeakRetained = objc_loadWeakRetained(&self->_renderer);
        v22 = [MEMORY[0x1E695DFF8] URLWithString:v11];
        [WeakRetained openAppURL:v22];

        v9 = v30;
        goto LABEL_14;
      }

      if (v12)
      {
        message = self->_message;
        *buf = 138412546;
        v33 = message;
        v34 = 2112;
        v35 = v7;
        v24 = "iMessage Extension: Unable to open shareable credential as passbook is not available: %@ %@";
        goto LABEL_13;
      }
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_message;
        *buf = 138412546;
        v33 = v23;
        v34 = 2112;
        v35 = v7;
        v24 = "iMessage Extension: Open shareable credential with no encrypted provisioning targets: %@ %@";
LABEL_13:
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v4 = objc_loadWeakRetained(&self->_renderer);
  v5 = [v3 passURL];
  [v4 openAppURL:v5];

LABEL_15:
}

+ (id)propertiesForMessage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKCredentialSharingMessageExtensionViewProperties);
  v5 = [v3 caption];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setTitle:v5];

  v6 = [v3 passThumbnailImage];
  if (v6)
  {
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setCardImage:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E69DCAB8] imageNamed:@"placeholder"];
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setCardImage:v7];
  }

  v8 = [v3 isFromMe];
  v9 = [v3 shareableCredentials];
  v10 = [v9 firstObject];
  v11 = [v10 status];

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    if (v11 != 1)
    {
      goto LABEL_19;
    }

    if (v8)
    {
      v12 = @"SHAREABLE_MESSAGES_EXTENSION_SUBTITLE_TEXT_AVAILABLE_SENDER";
    }

    else
    {
LABEL_13:
      v12 = @"SHAREABLE_MESSAGES_EXTENSION_SUBTITLE_TEXT_WALLET";
    }

    goto LABEL_17;
  }

  if (v11 != 2)
  {
    if (v11 == 3)
    {
      v12 = @"SHAREABLE_MESSAGES_EXTENSION_SUBTITLE_TEXT_REVOKED";
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_19;
      }

      v12 = @"SHAREABLE_MESSAGES_EXTENSION_SUBTITLE_TEXT_EXPIRED";
    }

LABEL_17:
    v14 = PKLocalizedShareableCredentialString(&v12->isa);
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setSubtitle:v14];
    goto LABEL_18;
  }

  v13 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_27.isa);
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setSubtitle:v13];

  if (![v3 isPassInLibrary])
  {
    goto LABEL_19;
  }

  v14 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_0.isa);
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setButtonText:v14];
LABEL_18:

LABEL_19:
  if ([v3 isShareAcceptable])
  {
    v15 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_5.isa);
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setButtonText:v15];
  }

  return v4;
}

- (PKSharingMessageExtensionRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end