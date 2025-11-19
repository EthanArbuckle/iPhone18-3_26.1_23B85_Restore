@interface PKPeerPaymentIdentityVerificationController
- (BOOL)_hasRequiredFields;
- (PKPeerPaymentIdentityVerificationController)initWithPeerPaymentWebService:(id)a3 identityVerificationResponse:(id)a4 setupDelegate:(id)a5 hideInitialSplashScreen:(BOOL)a6 context:(int64_t)a7;
- (id)_accountLockedErrorViewController;
- (id)_accountRestrictedErrorViewController;
- (id)_generateFieldsModel;
- (id)_nextLocalViewController;
- (id)_verificationErrorViewControllerWithError:(id)a3;
- (void)_formViewControllersWithExplanationView:(BOOL)a3;
- (void)_identityVerificationResquestWithCompletion:(id)a3;
- (void)_resetViewControllers;
- (void)addressSearcherViewController:(id)a3 requestsNextViewControllerWithCompletion:(id)a4;
- (void)addressSearcherViewController:(id)a3 selectedContact:(id)a4;
- (void)nextViewControllerWithCompletion:(id)a3;
@end

@implementation PKPeerPaymentIdentityVerificationController

- (PKPeerPaymentIdentityVerificationController)initWithPeerPaymentWebService:(id)a3 identityVerificationResponse:(id)a4 setupDelegate:(id)a5 hideInitialSplashScreen:(BOOL)a6 context:(int64_t)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v22.receiver = self;
  v22.super_class = PKPeerPaymentIdentityVerificationController;
  v16 = [(PKPeerPaymentIdentityVerificationController *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_webService, a3);
    objc_storeStrong(&v17->_response, a4);
    objc_storeWeak(&v17->_setupDelegate, v15);
    v17->_viewControllerIndex = 0;
    v17->_context = a7;
    if (v17->_response)
    {
      [(PKPeerPaymentIdentityVerificationController *)v17 _formViewControllersWithExplanationView:!v8];
      v18 = [(PKPeerPaymentIdentityVerificationController *)v17 _nextLocalViewController];
      firstViewController = v17->_firstViewController;
      v17->_firstViewController = v18;
    }

    v20 = objc_alloc_init(MEMORY[0x1E69B8F40]);
    [v20 setEndpoint:2];
    [(PKPeerPaymentWebService *)v17->_webService prewarmDeviceScoreForAttributes:v20];
  }

  return v17;
}

- (void)nextViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__20;
  v23 = __Block_byref_object_dispose__20;
  v24 = [(PKPeerPaymentIdentityVerificationController *)self _nextLocalViewController];
  v5 = v20[5];
  if (v5)
  {
    if (v4)
    {
      if ((self->_fatalError & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v7 = v20[5];
        if (isKindOfClass)
        {
          v8 = 0;
          fatalError = self->_fatalError;
        }

        else
        {
          fatalError = 1;
          v8 = v20[5];
          v7 = 0;
        }

        v4[2](v4, v8, v7, 0, fatalError);
      }

      else
      {
        v4[2](v4, v5, 0, 0, 1uLL);
      }
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __80__PKPeerPaymentIdentityVerificationController_nextViewControllerWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8018B70;
    aBlock[4] = self;
    v18 = &v19;
    v10 = v4;
    v17 = v10;
    v11 = _Block_copy(aBlock);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__PKPeerPaymentIdentityVerificationController_nextViewControllerWithCompletion___block_invoke_2;
    v13[3] = &unk_1E8018B98;
    v13[4] = self;
    v14 = v10;
    v12 = v11;
    v15 = v12;
    [(PKPeerPaymentIdentityVerificationController *)self _identityVerificationResquestWithCompletion:v13];
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __80__PKPeerPaymentIdentityVerificationController_nextViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _formViewControllersWithExplanationView:0];
  v2 = [*(a1 + 32) _nextLocalViewController];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __80__PKPeerPaymentIdentityVerificationController_nextViewControllerWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = v3;
  if (!v3)
  {
    v4 = *(*(a1 + 32) + 32);
    if (v4)
    {
      if (![v4 complete])
      {
        (*(*(a1 + 48) + 16))();
        goto LABEL_26;
      }

      v5 = [*(*(a1 + 32) + 32) account];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 state];
        if ([v6 identityVerificationRequired])
        {
          [*(a1 + 32) _resetViewControllers];
          [*(a1 + 32) nextViewControllerWithCompletion:*(a1 + 40)];
LABEL_25:

          goto LABEL_26;
        }

        MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0F8], 0);
        if (v7 == 3)
        {
          MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0E8], 0);
          v12 = [*(a1 + 32) _accountLockedErrorViewController];
          [*(a1 + 32) _resetViewControllers];
          v15 = *(a1 + 40);
          if (v15)
          {
            v14 = *(v15 + 16);
            goto LABEL_23;
          }

LABEL_24:

          goto LABEL_25;
        }

        if (v7 == 2)
        {
          MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0F0], 0);
          v12 = [*(a1 + 32) _accountRestrictedErrorViewController];
          [*(a1 + 32) _resetViewControllers];
          v13 = *(a1 + 40);
          if (v13)
          {
            v14 = *(v13 + 16);
LABEL_23:
            v14();
            goto LABEL_24;
          }

          goto LABEL_24;
        }
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_25;
    }
  }

  v8 = [v3 domain];
  v9 = [v8 isEqualToString:*MEMORY[0x1E696A978]];

  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA0E0], 0);
  if (!v9)
  {
    v6 = [*(a1 + 32) _verificationErrorViewControllerWithError:v16];
    [*(a1 + 32) _resetViewControllers];
    if (*(a1 + 40))
    {
      if ([v16 code] == 40331)
      {
        v11 = 6;
      }

      else
      {
        v11 = 3;
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v6, 0, v11);
    }

    goto LABEL_25;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, 0, v16, 2);
  }

LABEL_26:
}

- (void)_identityVerificationResquestWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MEMORY[0x1E69B8F88]);
  v6 = *MEMORY[0x1E69BC370];
  v7 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel submissionValuesForDestination:*MEMORY[0x1E69BC370]];
  [v5 setOverlayParameters:v7];
  v8 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel secureSubmissionValuesForDestination:v6];
  [v5 setSecureOverlayParameters:v8];
  v9 = [(PKPeerPaymentIdentityVerificationResponse *)self->_response encryptionCertificates];
  [v5 setCertificates:v9];

  webService = self->_webService;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__PKPeerPaymentIdentityVerificationController__identityVerificationResquestWithCompletion___block_invoke;
  v12[3] = &unk_1E8018BC0;
  objc_copyWeak(&v14, &location);
  v12[4] = self;
  v11 = v4;
  v13 = v11;
  [(PKPeerPaymentWebService *)webService peerPaymentIdentityVerificationRequest:v5 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __91__PKPeerPaymentIdentityVerificationController__identityVerificationResquestWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91__PKPeerPaymentIdentityVerificationController__identityVerificationResquestWithCompletion___block_invoke_2;
    v8[3] = &unk_1E8014760;
    v8[4] = *(a1 + 32);
    v9 = v5;
    v11 = *(a1 + 40);
    v10 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

uint64_t __91__PKPeerPaymentIdentityVerificationController__identityVerificationResquestWithCompletion___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_resetViewControllers
{
  viewControllers = self->_viewControllers;
  self->_viewControllers = 0;

  self->_viewControllerIndex = 0;
  fieldsModel = self->_fieldsModel;
  self->_fieldsModel = 0;
}

- (id)_verificationErrorViewControllerWithError:(id)a3
{
  v4 = a3;
  v5 = [[PKExplanationViewController alloc] initWithContext:self->_context];
  [(PKExplanationViewController *)v5 setShowDoneButton:0];
  [(PKExplanationViewController *)v5 setShowCancelButton:0];
  v6 = [v4 code];
  v7 = [v4 domain];
  if (![v7 isEqualToString:*MEMORY[0x1E69BC388]])
  {

    goto LABEL_10;
  }

  if (((v6 - 40320) > 0xB || ((1 << (v6 + 0x80)) & 0xC01) == 0) && v6 != 40014)
  {

    if (v6 == 40350)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = 0;
    v10 = 0;
LABEL_11:
    v11 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_6.isa);

    v12 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_7.isa);

    v10 = v12;
    v8 = v11;
    goto LABEL_12;
  }

LABEL_6:
  v8 = [v4 localizedFailureReason];
  v9 = [v4 localizedRecoverySuggestion];
  v10 = v9;
  if (!v8 || !v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  v13 = [(PKExplanationViewController *)v5 explanationView];
  [v13 setTitleText:v8];
  [v13 setBodyText:v10];
  [v13 setTitleLineBreakStrategy:1];
  [v13 setShowPrivacyView:0];
  v14 = [v13 dockView];
  v15 = [v14 footerView];
  switch(v6)
  {
    case 40350:
      v16 = [v14 primaryButton];
      v17 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_12.isa);
      goto LABEL_18;
    case 40331:
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = v10;
      v38 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_8.isa);
      PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_9.isa, &stru_1F3BD6370.isa, v19, v38);
      v20 = v39 = v15;

      v36 = v18;
      v37 = [[PKTextRangeHyperlink alloc] initWithLinkText:v38 action:&__block_literal_global_92];
      v21 = v18;
      [v18 addObject:v37];
      v22 = objc_alloc_init(PKMultiHyperlinkView);
      [(PKMultiHyperlinkView *)v22 setText:v20];
      v23 = [MEMORY[0x1E69DC888] labelColor];
      [(PKMultiHyperlinkView *)v22 setTextColor:v23];

      [(PKMultiHyperlinkView *)v22 setTextAlignment:1];
      v24 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
      [(PKMultiHyperlinkView *)v22 setTextFont:v24];

      [(PKMultiHyperlinkView *)v22 setSources:v21];
      [v13 setBodyView:v22];
      [v13 setBodyText:0];
      [v13 setForceShowSetupLaterButton:1];
      v25 = [v14 primaryButton];
      v26 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_10.isa);
      [v25 setTitle:v26 forState:0];

      v27 = [v39 setUpLaterButton];
      v28 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_11.isa);
      [v27 setTitle:v28 forState:0];

      v15 = v39;
      goto LABEL_20;
    case 40330:
      v16 = [v14 primaryButton];
      v17 = PKLocalizedString(&cfstr_Done.isa);
LABEL_18:
      v29 = v17;
      [v16 setTitle:v17 forState:0];

      [v15 setSetUpLaterButton:0];
      goto LABEL_20;
  }

  [v13 setForceShowSetupLaterButton:1];
  v30 = [v14 primaryButton];
  v31 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi.isa);
  [v30 setTitle:v31 forState:0];

  v32 = [v15 setUpLaterButton];
  v33 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_12.isa);
  [v32 setTitle:v33 forState:0];

LABEL_20:
  v34 = [(PKExplanationViewController *)v5 navigationItem];
  [v34 setHidesBackButton:1];

  return v5;
}

void __89__PKPeerPaymentIdentityVerificationController__verificationErrorViewControllerWithError___block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/102636"];
  if (v0)
  {
    v1 = v0;
    PKOpenURL();
    v0 = v1;
  }
}

- (id)_accountRestrictedErrorViewController
{
  v2 = [[PKExplanationViewController alloc] initWithContext:self->_context];
  [(PKExplanationViewController *)v2 setShowDoneButton:0];
  [(PKExplanationViewController *)v2 setShowCancelButton:0];
  v3 = [(PKExplanationViewController *)v2 explanationView];
  v4 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_6.isa);
  [v3 setTitleText:v4];

  v5 = PKDeviceSpecificLocalizedStringKeyForKey(@"IDENTITY_VERIFICATION_FAILED_SPEND_DOWN_MESSAGE", 0);
  v6 = PKLocalizedPeerPaymentString(v5);
  [v3 setBodyText:v6];

  [v3 setShowPrivacyView:0];
  v7 = [v3 dockView];
  v8 = [v7 primaryButton];
  v9 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_14.isa);
  [v8 setTitle:v9 forState:0];

  v10 = [(PKExplanationViewController *)v2 navigationItem];
  [v10 setHidesBackButton:1];

  return v2;
}

- (id)_accountLockedErrorViewController
{
  v2 = [[PKExplanationViewController alloc] initWithContext:self->_context];
  [(PKExplanationViewController *)v2 setShowDoneButton:0];
  [(PKExplanationViewController *)v2 setShowCancelButton:0];
  v3 = [(PKExplanationViewController *)v2 explanationView];
  v4 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_6.isa);
  [v3 setTitleText:v4];

  v5 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_15.isa);
  [v3 setBodyText:v5];

  [v3 setShowPrivacyView:0];
  [v3 setForceShowSetupLaterButton:1];
  v6 = [v3 dockView];
  v7 = [v6 primaryButton];
  v8 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_10.isa);
  [v7 setTitle:v8 forState:0];

  v9 = [v6 footerView];
  v10 = [v9 setUpLaterButton];
  v11 = PKLocalizedPeerPaymentString(&cfstr_IdentityVerifi_16.isa);
  [v10 setTitle:v11 forState:0];

  v12 = [(PKExplanationViewController *)v2 navigationItem];
  [v12 setHidesBackButton:1];

  return v2;
}

- (void)_formViewControllersWithExplanationView:(BOOL)a3
{
  v3 = a3;
  v107 = *MEMORY[0x1E69E9840];
  v96 = [MEMORY[0x1E695DF70] array];
  if (([(PKPeerPaymentIdentityVerificationResponse *)self->_response complete]& 1) != 0)
  {
    v5 = [(PKPeerPaymentIdentityVerificationResponse *)self->_response account];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 state];
      if (v7 == 3)
      {
        self->_fatalError = 5;
        v8 = [(PKPeerPaymentIdentityVerificationController *)self _accountLockedErrorViewController];
        goto LABEL_63;
      }

      if (v7 == 2)
      {
        self->_fatalError = 4;
        v8 = [(PKPeerPaymentIdentityVerificationController *)self _accountRestrictedErrorViewController];
LABEL_63:
        v76 = v8;
        [v96 addObject:v8];
      }
    }

    goto LABEL_65;
  }

  if ([(PKPeerPaymentIdentityVerificationController *)self _hasRequiredFields])
  {
    v85 = v3;
    v9 = [(PKPeerPaymentIdentityVerificationController *)self _generateFieldsModel];
    fieldsModel = self->_fieldsModel;
    self->_fieldsModel = v9;

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = [(PKPeerPaymentIdentityVerificationResponse *)self->_response requiredFieldsByPage];
    v88 = [obj countByEnumeratingWithState:&v101 objects:v106 count:16];
    if (!v88)
    {
      goto LABEL_57;
    }

    v89 = 0;
    v87 = *v102;
    v91 = *MEMORY[0x1E69BC358];
    v92 = self;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v102 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v90 = v11;
        v12 = *(*(&v101 + 1) + 8 * v11);
        v13 = [MEMORY[0x1E695DF70] array];
        v14 = [v12 localizedTitle];
        v15 = [v14 length];
        response = v12;
        if (!v15)
        {
          response = self->_response;
        }

        v17 = [(PKPeerPaymentIdentityVerificationResponse *)response localizedTitle];

        v18 = [v12 localizedDescription];
        v19 = [v18 length];
        v20 = v12;
        if (!v19)
        {
          v20 = self->_response;
        }

        v94 = [(PKPeerPaymentIdentityVerificationResponse *)v20 localizedDescription];

        v21 = [v12 requiredFields];
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v97 objects:v105 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v98;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v98 != v25)
              {
                objc_enumerationMutation(v22);
              }

              if ([*(*(&v97 + 1) + 8 * i) supportsAddressAutofill])
              {
                v27 = 0;
                goto LABEL_26;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v97 objects:v105 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v27 = 1;
LABEL_26:

        v28 = v27 | v89 | [(PKPeerPaymentIdentityVerificationResponse *)self->_response useDeviceValidation]^ 1;
        if ((v28 & 1) == 0)
        {
          v29 = [(PKPeerPaymentIdentityVerificationResponse *)self->_response account];
          v30 = [v29 countryCode];
          v31 = v30;
          v32 = @"US";
          if (v30)
          {
            v32 = v30;
          }

          v33 = v32;

          v34 = [PKAddressSearcherViewController alloc];
          WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);
          v89 = 1;
          v36 = [(PKAddressSearcherViewController *)v34 initWithSetupDelegate:WeakRetained style:1];

          v37 = [v12 localizedTitle];
          [(PKAddressSearcherViewController *)v36 setHeaderTitle:v37];

          v38 = [v12 localizedDescription];
          [(PKAddressSearcherViewController *)v36 setHeaderSubtitle:v38];

          v39 = [MEMORY[0x1E69DC888] systemBackgroundColor];
          [(PKAddressSearcherViewController *)v36 setBackgroundColor:v39];

          v40 = [MEMORY[0x1E695DFD8] setWithObject:v33];

          [(PKAddressSearcherViewController *)v36 setSupportedCountryCodes:v40];
          [(PKAddressSearcherViewController *)v36 setDelegate:self];
          [v96 addObject:v36];
        }

        v95 = v28 ^ 1;
        if ([v22 count])
        {
          v41 = 0;
          v93 = v13;
          do
          {
            v42 = [v22 objectAtIndex:v41];
            v43 = [v42 identifier];
            if ([v42 isFieldTypePicker])
            {
              v44 = [v42 pickerFieldObject];
              v45 = [v44 pickerType];

              if ((v45 - 1) < 2)
              {
                if ([v13 count])
                {
                  v46 = [PKPeerPaymentIdentityVerificationViewController alloc];
                  v47 = objc_loadWeakRetained(&self->_setupDelegate);
                  v48 = [v13 copy];
                  v49 = self;
                  v50 = v48;
                  v51 = [(PKPeerPaymentIdentityVerificationViewController *)v46 initWithController:v49 setupDelegate:v47 visibleFieldIdentifiers:v48];

                  [(PKPeerPaymentIdentityVerificationViewController *)v51 setHeaderTitle:v17];
                  [(PKPeerPaymentIdentityVerificationViewController *)v51 setHeaderSubtitle:v94];
                  if (v95)
                  {
                    [(PKPeerPaymentIdentityVerificationViewController *)v51 setShowCancelButton:0];
                  }

                  [v96 addObject:v51];

                  v95 = 0;
                  self = v92;
                }

                v52 = v17;
                if (v41 + 1 >= [v22 count])
                {
                  v57 = 0;
                }

                else
                {
                  v53 = [v22 objectAtIndex:v41 + 1];
                  v54 = [v53 identifier];
                  v55 = [v54 lowercaseString];
                  v56 = [v55 isEqualToString:v91];

                  if (v56)
                  {
                    v57 = v53;
                    ++v41;
                  }

                  else
                  {
                    v57 = 0;
                  }

                  self = v92;
                }

                v58 = [PKPeerPaymentIdentityVerificationPickerViewController alloc];
                v59 = objc_loadWeakRetained(&self->_setupDelegate);
                v60 = [v57 defaultValue];
                v61 = [(PKPeerPaymentIdentityVerificationPickerViewController *)v58 initWithController:self setupDelegate:v59 pickerField:v42 footerText:v60];

                v17 = v52;
                [(PKPeerPaymentIdentityVerificationPickerViewController *)v61 setHeaderTitle:v52];
                v62 = [v42 localizedDisplayName];
                [(PKPeerPaymentIdentityVerificationPickerViewController *)v61 setHeaderSubtitle:v62];

                [v96 addObject:v61];
                v13 = v93;
                [v93 removeAllObjects];

                goto LABEL_50;
              }

              if (!v45 || v45 == 3)
              {
LABEL_38:
                [v13 addObject:v43];
              }
            }

            else if (([v42 isFieldTypeFooter] & 1) == 0)
            {
              goto LABEL_38;
            }

LABEL_50:

            ++v41;
          }

          while (v41 < [v22 count]);
        }

        if ([v13 count])
        {
          v63 = [PKPeerPaymentIdentityVerificationViewController alloc];
          v64 = objc_loadWeakRetained(&self->_setupDelegate);
          v65 = [v13 copy];
          v66 = [(PKPeerPaymentIdentityVerificationViewController *)v63 initWithController:self setupDelegate:v64 visibleFieldIdentifiers:v65];

          [(PKPeerPaymentIdentityVerificationViewController *)v66 setHeaderTitle:v17];
          [(PKPeerPaymentIdentityVerificationViewController *)v66 setHeaderSubtitle:v94];
          if (v95)
          {
            [(PKPeerPaymentIdentityVerificationViewController *)v66 setShowCancelButton:0];
          }

          [v96 addObject:v66];
        }

        v11 = v90 + 1;
      }

      while (v90 + 1 != v88);
      v88 = [obj countByEnumeratingWithState:&v101 objects:v106 count:16];
      if (!v88)
      {
LABEL_57:

        v3 = v85;
        goto LABEL_65;
      }
    }
  }

  v67 = [(PKPeerPaymentIdentityVerificationResponse *)self->_response acceptableDocuments];
  v68 = [v67 count];

  if (v68)
  {
    v69 = [PKPeerPaymentDocumentSubmissionController alloc];
    webService = self->_webService;
    v71 = self->_response;
    v72 = objc_loadWeakRetained(&self->_setupDelegate);
    v73 = [(PKPeerPaymentDocumentSubmissionController *)v69 initWithPeerPaymentWebService:webService identityVerificationResponse:v71 setupDelegate:v72 context:self->_context];
    captureController = self->_captureController;
    self->_captureController = v73;

    v75 = [(PKPaymentDocumentSubmissionController *)self->_captureController nextViewController];
    if (v75)
    {
      [v96 addObject:v75];
    }
  }

LABEL_65:
  v77 = [v96 count];
  if (v3 && v77)
  {
    v78 = [PKPeerPaymentIdentityVerificationExplanationViewController alloc];
    context = self->_context;
    v80 = objc_loadWeakRetained(&self->_setupDelegate);
    v81 = [(PKPeerPaymentIdentityVerificationExplanationViewController *)v78 initWithContext:context setupDelegate:v80 identityVerificationController:self];

    [v96 insertObject:v81 atIndex:0];
LABEL_69:
    v82 = objc_alloc_init(MEMORY[0x1E69B8F40]);
    [v82 setEndpoint:2];
    [(PKPeerPaymentWebService *)self->_webService prewarmDeviceScoreForAttributes:v82];

    goto LABEL_70;
  }

  if (v77)
  {
    goto LABEL_69;
  }

LABEL_70:
  v83 = [v96 copy];
  viewControllers = self->_viewControllers;
  self->_viewControllers = v83;

  self->_viewControllerIndex = 0;
}

- (id)_generateFieldsModel
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PKPeerPaymentIdentityVerificationResponse *)self->_response requiredFieldsByPage];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) requiredFields];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = [objc_alloc(MEMORY[0x1E69B8E38]) initWithPaymentSetupFields:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_nextLocalViewController
{
  viewControllerIndex = self->_viewControllerIndex;
  if (viewControllerIndex >= [(NSArray *)self->_viewControllers count])
  {
    v5 = 0;
  }

  else
  {
    viewControllers = self->_viewControllers;
    ++self->_viewControllerIndex;
    v5 = [(NSArray *)viewControllers objectAtIndex:?];
  }

  return v5;
}

- (BOOL)_hasRequiredFields
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(PKPeerPaymentIdentityVerificationResponse *)self->_response requiredFieldsByPage];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) requiredFields];
        v7 = [v6 count];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)addressSearcherViewController:(id)a3 selectedContact:(id)a4
{
  v5 = [a4 postalAddresses];
  v6 = [v5 firstObject];
  v8 = [v6 value];

  v7 = v8;
  if (v8)
  {
    [(PKPaymentSetupFieldsModel *)self->_fieldsModel prefillDefaultValuesWithPostalAddress:v8];
    v7 = v8;
  }
}

- (void)addressSearcherViewController:(id)a3 requestsNextViewControllerWithCompletion:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __118__PKPeerPaymentIdentityVerificationController_addressSearcherViewController_requestsNextViewControllerWithCompletion___block_invoke;
  v7[3] = &unk_1E8018BE8;
  v8 = v5;
  v6 = v5;
  [(PKPeerPaymentIdentityVerificationController *)self nextViewControllerWithCompletion:v7];
}

@end