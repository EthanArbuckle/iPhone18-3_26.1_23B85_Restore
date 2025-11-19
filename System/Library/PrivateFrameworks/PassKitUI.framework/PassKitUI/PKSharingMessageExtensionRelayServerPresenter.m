@interface PKSharingMessageExtensionRelayServerPresenter
+ (id)propertiesForMessage:(id)a3;
- (PKSharingMessageExtensionRelayServerPresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4;
- (PKSharingMessageExtensionRenderer)renderer;
- (id)_mailboxURL;
- (void)_createShareFromInvite:(void *)a3 externalizedAuth:(void *)a4 completion:;
- (void)_reportAuthenticationEventWithSuccess:(uint64_t)a1;
- (void)_setMessageStatusTo:(void *)a3 pass:;
- (void)didTapMessage;
- (void)extensionWillAppear;
- (void)setMessage:(id)a3;
- (void)validateForRecipients:(id)a3 senderAddress:(id)a4 completion:(id)a5;
@end

@implementation PKSharingMessageExtensionRelayServerPresenter

- (PKSharingMessageExtensionRelayServerPresenter)initWithTargetDevice:(id)a3 passLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PKSharingMessageExtensionRelayServerPresenter;
  v9 = [(PKSharingMessageExtensionRelayServerPresenter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetDevice, a3);
    objc_storeStrong(&v10->_passLibrary, a4);
    v11 = objc_alloc(MEMORY[0x1E69B8918]);
    v12 = [v11 initWithQueue:MEMORY[0x1E69E96A0]];
    idsManager = v10->_idsManager;
    v10->_idsManager = v12;
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
  v31 = *MEMORY[0x1E69E9840];
  if (![(PKSharingMessageExtensionCommonMessage *)self->_message isPending]&& ![(PKSharingMessageExtensionCommonMessage *)self->_message isFromMe])
  {
    v3 = [(PKSharingMessageExtensionRelayServerMessage *)self->_message phoneMailboxURL];
    v4 = [v3 absoluteString];

    v17 = [(PKSharingMessageExtensionRelayServerMessage *)self->_message provisioningCredentialHash];
    v5 = [(PKSharingMessageExtensionRelayServerMessage *)self->_message carKeyReaderIdentifier];
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543875;
      v26 = v4;
      v27 = 2114;
      v28 = v17;
      v29 = 2113;
      v30 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_INFO, "iMessage Extension: checking status for message with mailbox: %{public}@, provisioningCredentialHash:%{public}@, readerIdentifier: %{private}@", buf, 0x20u);
    }

    if (v4)
    {
      if (v17 && (-[PKPassLibraryDataProvider passForProvisioningCredentialHash:](self->_passLibrary, "passForProvisioningCredentialHash:", v17), v7 = objc_claimAutoreleasedReturnValue(), [v7 secureElementPass], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
      {
        [(PKSharingMessageExtensionRelayServerPresenter *)self _setMessageStatusTo:v8 pass:?];
      }

      else
      {
        if (v5)
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = [(PKPassLibraryDataProvider *)self->_passLibrary paymentPasses];
          v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            v11 = *v21;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v20 + 1) + 8 * i);
                v14 = [v13 pairedTerminalIdentifier];
                v15 = [v14 isEqualToString:v5];

                if (v15)
                {
                  [v13 effectiveContactlessPaymentApplicationState];
                  if (!PKPaymentApplicationStateAllowsReplacementInvitation())
                  {
                    [(PKSharingMessageExtensionRelayServerPresenter *)self _setMessageStatusTo:v13 pass:?];

                    goto LABEL_23;
                  }
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }

        [(PKSharingMessageExtensionRelayServerPresenter *)self _setMessageStatusTo:0 pass:?];
        objc_initWeak(buf, self);
        targetDevice = self->_targetDevice;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __68__PKSharingMessageExtensionRelayServerPresenter_extensionWillAppear__block_invoke;
        v18[3] = &unk_1E80148F0;
        objc_copyWeak(&v19, buf);
        [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice checkInvitationStatusForMailboxAddress:v4 completion:v18];
        objc_destroyWeak(&v19);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      [(PKSharingMessageExtensionRelayServerPresenter *)self _setMessageStatusTo:0 pass:?];
    }

LABEL_23:
  }
}

- (id)_mailboxURL
{
  if (a1)
  {
    a1 = [a1[3] phoneMailboxURL];
    v1 = vars8;
  }

  return a1;
}

- (void)_setMessageStatusTo:(void *)a3 pass:
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKSharingMessageExtensionRelayServerPresenter__setMessageStatusTo_pass___block_invoke;
    block[3] = &unk_1E8012C50;
    v10 = a2;
    v8 = v5;
    v9 = a1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __68__PKSharingMessageExtensionRelayServerPresenter_extensionWillAppear__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 8;
  }

  [(PKSharingMessageExtensionRelayServerPresenter *)WeakRetained _setMessageStatusTo:v4 pass:0];
}

- (void)validateForRecipients:(id)a3 senderAddress:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] < 2)
  {
    v15 = [(PKSharingMessageExtensionRelayServerMessage *)self->_message localProperties];
    v16 = [v15 partialInvite];
    if (v16)
    {
      v17 = [v8 firstObject];
      v50 = v17;
      if (PKIDSServiceContainsHandle())
      {
        v18 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Sender address is the same as recipient!", buf, 2u);
        }

        v19 = [v16 pass];
        v20 = [v19 isCarKeyPass];

        WeakRetained = objc_loadWeakRetained(&self->_renderer);
        if (v20)
        {
          v22 = PKLocalizedCredentialString(&cfstr_SubcredentialM.isa);
          v23 = PKLocalizedCredentialString(&cfstr_SubcredentialM_0.isa);
          PKLocalizedCredentialString(&cfstr_SubcredentialM_1.isa);
        }

        else
        {
          v22 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_3.isa);
          v23 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_4.isa);
          PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
        }
        v42 = ;
        [WeakRetained showAlertWithTitle:v22 message:v23 button:v42];

        (*(v10 + 2))(v10, 0, 0);
      }

      else
      {
        v45 = v9;
        v46 = v15;
        v25 = MEMORY[0x1E695CE18];
        v26 = v17;
        v27 = objc_alloc_init(v25);
        v28 = [MEMORY[0x1E69B8F30] requiredContactKeys];
        v29 = [objc_alloc(MEMORY[0x1E69B8740]) initWithContactStore:v27 keysToFetch:v28];
        v30 = [v29 contactForHandle:v26];
        v31 = v30;
        v32 = [MEMORY[0x1E69B8F30] redactedDisplayNameForCounterpartHandle:v26 contact:v30];

        v47 = v30;
        [v16 setRecipientNickname:v32];

        [v16 setRecipientHandle:v26];
        v33 = objc_alloc_init(MEMORY[0x1E69B8658]);
        v49 = PKShareAuthorizationPaymentRequest(v16);
        v34 = objc_loadWeakRetained(&self->_renderer);
        v48 = [v34 presentationSceneIdentifier];

        objc_initWeak(location, self);
        v35 = [v16 pass];
        LOBYTE(v27) = [v35 isCarKeyPass];

        v36 = [v16 isHomeShare];
        v86[0] = 0;
        v86[1] = v86;
        v86[2] = 0x2020000000;
        v87 = 0;
        *buf = 0;
        v81 = buf;
        v82 = 0x3032000000;
        v83 = __Block_byref_object_copy__25;
        v84 = __Block_byref_object_dispose__25;
        v85 = 0;
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke;
        v76[3] = &unk_1E8014330;
        v76[4] = self;
        v37 = v26;
        v77 = v37;
        v38 = v16;
        v78 = v38;
        v79 = v86;
        [v33 addOperation:v76];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_3;
        v71[3] = &unk_1E8019938;
        v71[4] = self;
        v72 = v37;
        v39 = v47;
        v73 = v39;
        v75 = v86;
        v40 = v38;
        v74 = v40;
        [v33 addOperation:v71];
        v69[0] = 0;
        v69[1] = v69;
        v69[2] = 0x2020000000;
        v70 = 0;
        if (v36 & 1 | ((v27 & 1) == 0))
        {
          if (v36)
          {
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_11;
            v56[3] = &unk_1E80149B8;
            objc_copyWeak(&v58, location);
            v57 = v40;
            [v33 addOperation:v56];

            v41 = &v58;
          }

          else
          {
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_8;
            v59[3] = &unk_1E80199B0;
            v61 = v69;
            objc_copyWeak(&v62, location);
            v60 = v40;
            [v33 addOperation:v59];

            v41 = &v62;
          }

          objc_destroyWeak(v41);
        }

        else
        {
          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_5;
          v63[3] = &unk_1E8015FF0;
          v64 = v49;
          v65 = v48;
          v67 = v69;
          objc_copyWeak(&v68, location);
          v66 = v40;
          [v33 addOperation:v63];

          objc_destroyWeak(&v68);
        }

        v15 = v46;
        v43 = [MEMORY[0x1E695DFB0] null];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_13;
        v51[3] = &unk_1E8019A00;
        objc_copyWeak(&v55, location);
        v53 = v86;
        v54 = buf;
        v52 = v10;
        v44 = [v33 evaluateWithInput:v43 completion:v51];

        objc_destroyWeak(&v55);
        _Block_object_dispose(v69, 8);

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(v86, 8);
        objc_destroyWeak(location);

        v9 = v45;
      }
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "iMessage Extension: ERROR missing invite!", buf, 2u);
      }

      (*(v10 + 2))(v10, 0, 0);
    }
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_renderer);
    v12 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_1.isa);
    v13 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_2.isa);
    v14 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
    [v11 showAlertWithTitle:v12 message:v13 button:v14];

    (*(v10 + 2))(v10, 0, 0);
  }
}

void __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = a1[4];
  v8 = a1[5];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v21 = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_2;
  v22 = &unk_1E8017308;
  v11 = a1[6];
  v10 = a1[7];
  v24 = v7;
  v25 = v10;
  v23 = v6;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v11;
  v16 = v20;
  if (v9)
  {
    if (PKiMessageIsActive())
    {
      v17 = *(v9 + 32);
      v18 = *MEMORY[0x1E69A4818];
      *buf = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __115__PKSharingMessageExtensionRelayServerPresenter__checkIfMessageWillBeSentOverSMSToRecipient_invitation_completion___block_invoke;
      v29 = &unk_1E8010AD8;
      v30 = v16;
      [v17 checkIDSStatusForDestination:v14 service:v18 listenerID:@"ShareableCredentialsIDSStatusQueryListenerID" completion:buf];
    }

    else
    {
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "iMessage Extension: iMessage not active fror user.", buf, 2u);
      }

      v21(v16, 1);
    }
  }
}

void __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_3(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = a1[4];
  v8 = a1[5];
  v10 = *(*(a1[8] + 8) + 24);
  v12 = a1[6];
  v11 = a1[7];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v70 = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_4;
  v71 = &unk_1E80109C0;
  v72 = v6;
  v73 = v7;
  v66 = v6;
  v65 = v7;
  v68 = v8;
  v13 = v11;
  v14 = v69;
  v15 = v14;
  if (v9)
  {
    v67 = v14;
    v16 = [v13 share];
    v17 = [v13 pass];
    v18 = objc_alloc(MEMORY[0x1E69B9268]);
    v19 = [MEMORY[0x1E69B8EF8] sharedService];
    v64 = v17;
    v20 = [v18 initWithPass:v17 webService:v19 paymentServiceProvider:0 queue:MEMORY[0x1E69E96A0]];

    if (v10)
    {
      v21 = @"com.apple.SMS";
    }

    else
    {
      v21 = @"com.apple.UIKit.activity.Message";
    }

    v63 = v20;
    v22 = [v20 shareInitiationActivationConfigurationForChannelBundleIdentifier:v21 isRecipientKnownContact:v12 != 0];
    v61 = v16;
    v23 = [v16 activationOptions];
    v24 = [v22 defaultOptions];
    if ([v22 isBlocked])
    {
      v25 = v22;
      v26 = v13;
      v27 = v24;
      WeakRetained = objc_loadWeakRetained((v9 + 40));
      if (v12 || v10)
      {
        v29 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_6.isa);
        v30 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_7.isa, &stru_1F3BD5BF0.isa, v68);
      }

      else
      {
        v29 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_8.isa);
        v30 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_9.isa);
      }

      v38 = v30;
      v39 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
      [WeakRetained showAlertWithTitle:v29 message:v38 button:v39];

      v15 = v67;
      v70(v67, 1);
      v31 = v23;
      v32 = v61;
      v24 = v27;
      v13 = v26;
      v22 = v25;
      goto LABEL_39;
    }

    if (v24)
    {
      v31 = v23;
      v32 = v61;
      if (v31)
      {
LABEL_11:
        v33 = [v31 identifiers];
        [v24 identifiers];
        v35 = v34 = v24;
        v36 = PKEqualObjects();

        if (v36)
        {
          v37 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Activation options for SMS/iMessage are same as what was configured.", buf, 2u);
          }

          v24 = v34;
        }

        else
        {
          [v32 setActivationOptions:v34];
          v37 = PKLogFacilityTypeGetObject();
          v24 = v34;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BD026000, v37, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Activation options for SMS/iMessage are different then what was configured, switching.", buf, 2u);
          }
        }

LABEL_24:
        v15 = v67;
        v70(v67, 0);
        goto LABEL_39;
      }

      v41 = v24;
      v42 = [v22 allowUserEdit];
      v43 = PKLogFacilityTypeGetObject();
      v40 = v43;
      if ((v42 & 1) == 0)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v40, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Activation options required for SMS/iMessage share, adding them.", buf, 2u);
        }

        v24 = v41;
        [v61 setActivationOptions:v41];
        goto LABEL_24;
      }

      v24 = v41;
    }

    else
    {
      v40 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v40, OS_LOG_TYPE_DEFAULT, "iMessage Extension: No activation options required SMS/iMessage.", buf, 2u);
      }

      if (v12)
      {
        v15 = v67;
        v70(v67, 0);
        v31 = v23;
        v32 = v61;
LABEL_39:

        goto LABEL_40;
      }

      v59 = objc_loadWeakRetained((v9 + 40));
      v55 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_10.isa);
      v56 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_11.isa, &stru_1F3BD5BF0.isa, v68);
      v44 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_12.isa);
      v45 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_13.isa);
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __161__PKSharingMessageExtensionRelayServerPresenter__checkIfMessageRequiresSecurityUpgradeToRecipient_isRecipientKnownContact_willSendOverSMS_invitation_completion___block_invoke;
      v81[3] = &unk_1E8010AD8;
      v82 = v67;
      [v59 showAlertWithTitle:v55 message:v56 button:v44 destructiveButton:v45 completion:v81];

      v24 = 0;
      v31 = v23;
      v32 = v61;
      if (v31)
      {
        goto LABEL_11;
      }
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v40, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Prompting user to upgrade security for SMS/iMessage", buf, 2u);
    }

    *buf = MEMORY[0x1E69E9820];
    v75 = 3221225472;
    v76 = __161__PKSharingMessageExtensionRelayServerPresenter__checkIfMessageRequiresSecurityUpgradeToRecipient_isRecipientKnownContact_willSendOverSMS_invitation_completion___block_invoke_106;
    v77 = &unk_1E8019A98;
    v78 = v32;
    v79 = v24;
    v80 = v67;
    v62 = _Block_copy(buf);
    v60 = objc_loadWeakRetained((v9 + 40));
    if (v10)
    {
      v46 = @"SHAREABLE_MESSAGES_UPGRADE_SECURITY_SMS_TITLE";
    }

    else
    {
      v46 = @"SHAREABLE_MESSAGES_UPGRADE_SECURITY_TITLE";
    }

    if (v10)
    {
      v47 = @"SHAREABLE_MESSAGES_UPGRADE_SECURITY_SMS_BODY_INCREASE_SECURITY_BUTTON";
    }

    else
    {
      v47 = @"SHAREABLE_MESSAGES_UPGRADE_SECURITY_BODY_CONTINUE_BUTTON";
    }

    v48 = @"SHAREABLE_MESSAGES_UPGRADE_SECURITY_BODY_DOWNGRADE_SECURITY_BUTTON";
    if (v10)
    {
      v48 = @"SHAREABLE_MESSAGES_UPGRADE_SECURITY_SMS_BODY_PROCEED_ANYWAY_BUTTON";
    }

    p_isa = &v48->isa;
    v49 = PKLocalizedShareableCredentialString(&v46->isa);
    v58 = [v13 pass];
    v50 = PKLocalizationKeyForPassType();
    v51 = PKLocalizedShareableCredentialString(v50);
    v52 = PKLocalizedShareableCredentialString(&v47->isa);
    PKLocalizedShareableCredentialString(p_isa);
    v54 = v53 = v24;
    [v60 showAlertWithTitle:v49 message:v51 button:v52 destructiveButton:v54 completion:v62];

    v24 = v53;
    v15 = v67;

    goto LABEL_39;
  }

LABEL_40:
}

void __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E69B9250];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_6;
  v21[3] = &unk_1E8019960;
  v23 = *(a1 + 56);
  objc_copyWeak(&v24, (a1 + 64));
  v22 = *(a1 + 48);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_7;
  v16[3] = &unk_1E8019988;
  objc_copyWeak(&v20, (a1 + 64));
  v19 = *(a1 + 56);
  v13 = v9;
  v18 = v13;
  v14 = v8;
  v17 = v14;
  v15 = [v10 authorizeForRequest:v11 presentationSceneIdentifier:v12 authHandler:v21 completion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v24);
}

void __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(PKSharingMessageExtensionRelayServerPresenter *)WeakRetained _createShareFromInvite:v6 externalizedAuth:v5 completion:?];
}

- (void)_createShareFromInvite:(void *)a3 externalizedAuth:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v10 = a1[1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __100__PKSharingMessageExtensionRelayServerPresenter__createShareFromInvite_externalizedAuth_completion___block_invoke;
    v11[3] = &unk_1E8019A50;
    objc_copyWeak(&v13, &location);
    v12 = v9;
    [v10 createShareForPartialShareInvitation:v7 authorization:v8 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

uint64_t __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [(PKSharingMessageExtensionRelayServerPresenter *)WeakRetained _reportAuthenticationEventWithSuccess:?];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_reportAuthenticationEventWithSuccess:(uint64_t)a1
{
  if (a1)
  {
    v3 = [*(a1 + 24) localProperties];
    v4 = [v3 partialInvite];
    v5 = [v3 analyticsSessionToken];
    if (v5)
    {
      v6 = [PKShareInitiationAnalyticsReporter alloc];
      v7 = [v4 pass];
      v8 = [(PKShareInitiationAnalyticsReporter *)v6 initWithPass:v7 sessionToken:v5];
    }

    else
    {
      v8 = 0;
    }

    [(PKShareInitiationAnalyticsReporter *)v8 sendAuthenticationEventForSuccess:a2 specifics:0];
  }
}

void __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E69B9250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_9;
  v18[3] = &unk_1E8019960;
  v20 = *(a1 + 40);
  objc_copyWeak(&v21, (a1 + 48));
  v19 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_10;
  v13[3] = &unk_1E8019988;
  objc_copyWeak(&v17, (a1 + 48));
  v16 = *(a1 + 40);
  v11 = v9;
  v15 = v11;
  v12 = v8;
  v14 = v12;
  [v10 authorizeDeviceOwnerWithAuthHandler:v18 completion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
}

void __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(PKSharingMessageExtensionRelayServerPresenter *)WeakRetained _createShareFromInvite:v6 externalizedAuth:v5 completion:?];
}

uint64_t __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [(PKSharingMessageExtensionRelayServerPresenter *)WeakRetained _reportAuthenticationEventWithSuccess:?];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_11(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_12;
  v12[3] = &unk_1E80109C0;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [(PKSharingMessageExtensionRelayServerPresenter *)WeakRetained _createShareFromInvite:v9 externalizedAuth:0 completion:v12];
}

void __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_14;
  block[3] = &unk_1E80199D8;
  objc_copyWeak(&v13, (a1 + 56));
  v12 = *(a1 + 48);
  v10 = v5;
  v8 = *(a1 + 32);
  v6 = v8;
  v11 = v8;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __96__PKSharingMessageExtensionRelayServerPresenter_validateForRecipients_senderAddress_completion___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Recipient doesn't support imessage so sending raw share url.", buf, 2u);
      }

      v4 = [WeakRetained[3] phoneMailboxURL];
      v5 = *(*(a1 + 56) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }

    v7 = [*(a1 + 32) isCanceled];
    v8 = *(*(*(a1 + 56) + 8) + 40);
    if (v7)
    {
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    else if (!v8)
    {
LABEL_16:
      [WeakRetained[3] setLocalProperties:0];
      v11 = objc_loadWeakRetained(WeakRetained + 5);
      [v11 messageDidUpdate];

LABEL_17:
      (*(*(a1 + 40) + 16))();
      goto LABEL_18;
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Using override url", v12, 2u);
    }

    [WeakRetained[3] setOverrideURL:*(*(*(a1 + 56) + 8) + 40)];
    goto LABEL_16;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "iMessage Extension: presenter deallocated", v14, 2u);
  }

LABEL_18:
}

void __100__PKSharingMessageExtensionRelayServerPresenter__createShareFromInvite_externalizedAuth_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__PKSharingMessageExtensionRelayServerPresenter__createShareFromInvite_externalizedAuth_completion___block_invoke_2;
  v9[3] = &unk_1E8019A28;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __100__PKSharingMessageExtensionRelayServerPresenter__createShareFromInvite_externalizedAuth_completion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3 && !*(a1 + 40))
    {
      v6 = [v3 url];
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 absoluteString];
        v14 = PKSharingLoggableMailboxAddress();
        *buf = 138543362;
        v25 = v14;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "iMessage Extension: using share url: %{public}@", buf, 0xCu);
      }

      v15 = WeakRetained[3];
      v23 = v6;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
      [v15 setMailboxURLS:v16];

      v17 = WeakRetained[3];
      v18 = [*(a1 + 32) expectedProvisioningCredentialHash];
      [v17 setProvisioningCredentialHash:v18];

      v19 = WeakRetained[3];
      v20 = [*(a1 + 32) expectedPairedReaderIdentifier];
      [v19 setCarKeyReaderIdentifier:v20];

      v21 = WeakRetained[3];
      v22 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_5.isa);
      [v21 setButtonTitle:v22];

      [WeakRetained[3] setActionURL:v6];
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Unable to create share with error %@", buf, 0xCu);
      }

      v6 = PKSharingDisplayableError(*(a1 + 40));
      if (!v6)
      {
        v7 = [MEMORY[0x1E696ABC0] pkSharingError:7];
        v6 = PKSharingDisplayableError(v7);
      }

      v8 = objc_loadWeakRetained(WeakRetained + 5);
      v9 = PKTitleForDisplayableError();
      v10 = MEMORY[0x1BFB42D10](v6);
      v11 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa.isa);
      [v8 showAlertWithTitle:v9 message:v10 button:v11];
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)didTapMessage
{
  v36 = *MEMORY[0x1E69E9840];
  if (![(PKSharingMessageExtensionCommonMessage *)self->_message isPending]&& ![(PKSharingMessageExtensionCommonMessage *)self->_message isFromMe])
  {
    v3 = [(PKSharingMessageExtensionRelayServerMessage *)self->_message status];
    v4 = [(PKSharingMessageExtensionRelayServerMessage *)self->_message localProperties];
    v5 = [v4 passUniqueIdentifier];

    if (PKShareStatusIsPending())
    {
      v6 = [(PKSharingMessageExtensionRelayServerMessage *)self->_message phoneMailboxURL];
      v7 = v6;
      if (!v6)
      {
LABEL_21:

LABEL_22:
        return;
      }

      v8 = MEMORY[0x1E696AF20];
      v9 = v6;
      v10 = [[v8 alloc] initWithURL:v9 resolvingAgainstBaseURL:0];

      v11 = [v10 queryItems];
      v12 = [v11 pk_containsObjectPassingTest:&__block_literal_global_113];

      if (!v12)
      {
        v22 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v9 resolvingAgainstBaseURL:0];
        v23 = [v22 queryItems];
        v24 = [v23 mutableCopy];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v29 = v26;

        v30 = objc_alloc(MEMORY[0x1E696AF60]);
        v31 = [v30 initWithName:*MEMORY[0x1E69BC648] value:*MEMORY[0x1E69BB270]];
        [v29 addObject:v31];

        [v22 setQueryItems:v29];
        WeakRetained = objc_loadWeakRetained(&self->_renderer);
        v33 = [v22 URL];
        [WeakRetained openAppURL:v33];

        goto LABEL_21;
      }

      if (PKPassbookIsCurrentlyAvailable())
      {
        v13 = objc_alloc(MEMORY[0x1E695DFF8]);
        v14 = MEMORY[0x1E696AEC0];
        v15 = [v9 absoluteString];
        v16 = [v14 stringWithFormat:@"com.apple.Home-private://sharing/%@", v15];
        v17 = [v13 initWithString:v16];

        v18 = objc_loadWeakRetained(&self->_renderer);
        [v18 openAppURL:v17];

        goto LABEL_21;
      }

      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v9 absoluteString];
        v28 = PKSharingLoggableMailboxAddress();
        *buf = 138412290;
        v35 = v28;
        _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Silently failing to present Home URL (%@) as passbook is not available.", buf, 0xCu);
      }
    }

    else
    {
      if (v3 != 1 || !v5)
      {
        goto LABEL_22;
      }

      if (!PKPassbookIsCurrentlyAvailable())
      {
        v7 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v5;
          _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Silently failing to present Wallet URL for %@ as passbook is not available.", buf, 0xCu);
        }

        goto LABEL_21;
      }

      v19 = objc_alloc(MEMORY[0x1E695DFF8]);
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"wallet://%@/%@", *MEMORY[0x1E69BC698], v5];
      v7 = [v19 initWithString:v20];

      v21 = objc_loadWeakRetained(&self->_renderer);
      [v21 openAppURL:v7];
    }

    goto LABEL_21;
  }
}

uint64_t __70__PKSharingMessageExtensionRelayServerPresenter__isMailboxURLForHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 name];
  if (PKEqualObjects())
  {
    v4 = [v2 value];
    v5 = PKEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __161__PKSharingMessageExtensionRelayServerPresenter__checkIfMessageRequiresSecurityUpgradeToRecipient_isRecipientKnownContact_willSendOverSMS_invitation_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "User opted to not send to unknown contact", v5, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __161__PKSharingMessageExtensionRelayServerPresenter__checkIfMessageRequiresSecurityUpgradeToRecipient_isRecipientKnownContact_willSendOverSMS_invitation_completion___block_invoke_106(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Y";
    if (a2)
    {
      v5 = @"N";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Upgrading security for SMS/iMessage: %@", &v7, 0xCu);
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setActivationOptions:*(a1 + 40)];
  }

  return (*(*(a1 + 48) + 16))();
}

+ (id)propertiesForMessage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKCredentialSharingMessageExtensionViewProperties);
  v5 = [v3 title];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setTitle:v5];

  v6 = [v3 subtitle];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setSubtitle:v6];

  v7 = [v3 thumbnail];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setCardImage:v7];

  v8 = [v3 isFromMe];
  v9 = [v3 status];

  if ((v9 - 2) >= 2)
  {
    if (v9 != 1)
    {
      goto LABEL_7;
    }

    v10 = @"SHAREABLE_MESSAGES_EXTENSION_BUTTON_TEXT_VIEW";
  }

  else
  {
    if (v8)
    {
      goto LABEL_7;
    }

    v10 = @"SHAREABLE_MESSAGES_EXTENSION_BUTTON_TEXT_ADD";
  }

  v11 = PKLocalizedShareableCredentialString(&v10->isa);
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setButtonText:v11];

LABEL_7:

  return v4;
}

void __74__PKSharingMessageExtensionRelayServerPresenter__setMessageStatusTo_pass___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = PKShareStatusToString();
    v4 = [*(a1 + 32) uniqueID];
    v5 = [(PKSharingMessageExtensionRelayServerPresenter *)*(a1 + 40) _mailboxURL];
    v12 = 138543874;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_INFO, "iMessage Extension: Updating message status to %{public}@, for pass: %{public}@, messageURL: %{public}@", &v12, 0x20u);
  }

  [*(*(a1 + 40) + 24) setStatus:*(a1 + 48)];
  v6 = [*(*(a1 + 40) + 24) localProperties];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(PKSharingMessageExtensionRelayServerLocalProperties);
  }

  v9 = v8;

  v10 = [*(a1 + 32) uniqueID];
  [(PKSharingMessageExtensionRelayServerLocalProperties *)v9 setPassUniqueIdentifier:v10];

  [*(*(a1 + 40) + 24) setLocalProperties:v9];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  [WeakRetained messageDidUpdate];
}

- (PKSharingMessageExtensionRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end