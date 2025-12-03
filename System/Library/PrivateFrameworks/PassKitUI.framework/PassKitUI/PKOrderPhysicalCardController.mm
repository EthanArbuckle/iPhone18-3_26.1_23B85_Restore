@interface PKOrderPhysicalCardController
- (PKOrderPhysicalCardController)initWithAccountService:(id)service paymentWebService:(id)webService paymentPass:(id)pass account:(id)account accountUser:(id)user orderReason:(unint64_t)reason context:(int64_t)context currentPhysicalCard:(id)self0;
- (id)_paymentRequest;
- (id)_priceForRequestingPhysicalCard;
- (void)completeOrderPhysicalCardWithApplePayTrustSignature:(id)signature completion:(id)completion;
- (void)nextViewControllerWithCompletion:(id)completion;
- (void)startOrderPhysicalCardWithCompletion:(id)completion;
- (void)updateCustomizationOptionsWithCompletion:(id)completion;
@end

@implementation PKOrderPhysicalCardController

- (PKOrderPhysicalCardController)initWithAccountService:(id)service paymentWebService:(id)webService paymentPass:(id)pass account:(id)account accountUser:(id)user orderReason:(unint64_t)reason context:(int64_t)context currentPhysicalCard:(id)self0
{
  serviceCopy = service;
  webServiceCopy = webService;
  passCopy = pass;
  accountCopy = account;
  userCopy = user;
  cardCopy = card;
  v26.receiver = self;
  v26.super_class = PKOrderPhysicalCardController;
  v19 = [(PKOrderPhysicalCardController *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_accountService, service);
    objc_storeStrong(&v20->_paymentWebService, webService);
    objc_storeStrong(&v20->_paymentPass, pass);
    objc_storeStrong(&v20->_account, account);
    objc_storeStrong(&v20->_accountUser, user);
    v20->_orderReason = reason;
    v20->_featureIdentifier = [(PKAccount *)v20->_account feature];
    v20->_paymentSetupContext = context;
    objc_storeStrong(&v20->_physicalCardToReplace, card);
  }

  return v20;
}

- (void)nextViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  parentFlowController = self->_parentFlowController;
  if (parentFlowController)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__PKOrderPhysicalCardController_nextViewControllerWithCompletion___block_invoke;
    v7[3] = &unk_1E8019EA0;
    v7[4] = self;
    v8 = completionCopy;
    [(PKSetupFlowControllerProtocol *)parentFlowController nextViewControllerWithCompletion:v7];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __66__PKOrderPhysicalCardController_nextViewControllerWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
}

- (void)updateCustomizationOptionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Updating physical card customization options...", buf, 2u);
  }

  v6 = dispatch_group_create();
  *buf = 0;
  v38 = buf;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__26;
  v41 = __Block_byref_object_dispose__26;
  v42 = 0;
  v7 = objc_alloc_init(MEMORY[0x1E69B84F0]);
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [v7 setAccountIdentifier:accountIdentifier];

  accountBaseURL = [(PKAccount *)self->_account accountBaseURL];
  [v7 setBaseURL:accountBaseURL];

  altDSID = [(PKAccountUser *)self->_accountUser altDSID];
  [v7 setAccountUserAltDSID:altDSID];

  objc_initWeak(&location, self);
  dispatch_group_enter(v6);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  paymentWebService = self->_paymentWebService;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke;
  v29[3] = &unk_1E8019EC8;
  objc_copyWeak(&v33, &location);
  v12 = v6;
  v30 = v12;
  v31 = v34;
  v32 = buf;
  [(PKPaymentWebService *)paymentWebService customizePhysicalCardWithRequest:v7 completion:v29];
  dispatch_group_enter(v12);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  accountService = self->_accountService;
  accountIdentifier2 = [(PKAccount *)self->_account accountIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke_22;
  v22[3] = &unk_1E8019F18;
  objc_copyWeak(&v26, &location);
  v15 = v12;
  v23 = v15;
  v24 = v27;
  v25 = buf;
  [(PKAccountService *)accountService userInfoForAccountIdentifier:accountIdentifier2 forceFetch:1 completion:v22];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke_25;
  v17[3] = &unk_1E8019F40;
  v19 = v34;
  v20 = v27;
  v21 = buf;
  v17[4] = self;
  v18 = completionCopy;
  v16 = completionCopy;
  dispatch_group_notify(v15, MEMORY[0x1E69E96A0], v17);

  objc_destroyWeak(&v26);
  _Block_object_dispose(v27, 8);

  objc_destroyWeak(&v33);
  _Block_object_dispose(v34, 8);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
}

void __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke_2;
  v9[3] = &unk_1E8019EF0;
  objc_copyWeak(&v14, (a1 + 56));
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v14);
}

void __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      LOBYTE(v3) = *(a1 + 48) == 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v3;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v4 = [*(a1 + 40) priceOptions];
      v5 = *(WeakRetained + 7);
      *(WeakRetained + 7) = v4;

      v6 = [*(a1 + 40) nameOptions];
      v7 = [v6 firstObject];
      v8 = *(WeakRetained + 13);
      *(WeakRetained + 13) = v7;

      v9 = [*(a1 + 40) artworkOptions];
      v10 = *(WeakRetained + 14);
      *(WeakRetained + 14) = v9;

      v11 = [*(WeakRetained + 14) firstObject];
      v12 = *(WeakRetained + 15);
      *(WeakRetained + 15) = v11;
    }

    else
    {
      v13 = *(*(a1 + 64) + 8);
      v14 = *(a1 + 48);
      v12 = *(v13 + 40);
      *(v13 + 40) = v14;
    }

    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 48);
      v17 = @"YES";
      if (!*(*(*(a1 + 56) + 8) + 24))
      {
        v17 = @"NO";
      }

      v18 = 138543618;
      v19 = v17;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Updated physical card customization options %{public}@, error: %@", &v18, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke_2_23;
  v9[3] = &unk_1E8019EF0;
  objc_copyWeak(&v14, (a1 + 56));
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v14);
}

void __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke_2_23(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [*(a1 + 40) creditUserInfo];
    v4 = [v3 primaryUser];

    if (v4)
    {
      v5 = *(a1 + 48) == 0;
    }

    else
    {
      v5 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v5;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v6 = [v4 postalAddresses];
      v7 = [v6 firstObject];
      v8 = [v7 value];
      v9 = WeakRetained[16];
      WeakRetained[16] = v8;
    }

    else
    {
      v10 = *(*(a1 + 64) + 8);
      v11 = *(a1 + 48);
      v6 = *(v10 + 40);
      *(v10 + 40) = v11;
    }

    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = @"YES";
      if (!*(*(*(a1 + 56) + 8) + 24))
      {
        v14 = @"NO";
      }

      v15 = 138543618;
      v16 = v14;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Updated physical card customization options %{public}@, error: %@", &v15, 0x16u);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void __74__PKOrderPhysicalCardController_updateCustomizationOptionsWithCompletion___block_invoke_25(void *a1)
{
  if (a1[5])
  {
    v2 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", *(*(a1[8] + 8) + 40), [*(a1[4] + 24) feature], 0, 0);
    (*(a1[5] + 16))();
  }
}

- (void)startOrderPhysicalCardWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Starting physical card order...", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke;
  aBlock[3] = &unk_1E801A008;
  aBlock[4] = self;
  v6 = completionCopy;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  targetDevice = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    paymentWebService = self->_paymentWebService;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_5;
    v10[3] = &unk_1E801A030;
    v11 = v7;
    [targetDevice paymentWebService:paymentWebService deviceMetadataWithFields:251 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E8019F68;
  v4 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v27 = v4;
  v5 = a2;
  v6 = _Block_copy(aBlock);
  if (*(*(a1 + 32) + 48))
  {
    v7 = [objc_alloc(MEMORY[0x1E69B9068]) initWithActionType:5];
    [v7 setReason:*(*(a1 + 32) + 40)];
    [v7 setNameOnCard:*(*(a1 + 32) + 104)];
    v8 = [*(a1 + 32) _priceForRequestingPhysicalCard];
    [v7 setPriceOption:v8];

    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    v11 = [*(v9 + 48) identifier];
    v12 = [*(*(a1 + 32) + 24) accountIdentifier];
    v13 = [*(*(a1 + 32) + 32) altDSID];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_29;
    v24[3] = &unk_1E8019FB8;
    v14 = *(a1 + 32);
    v15 = &v25;
    v24[4] = v14;
    v25 = v6;
    v16 = v6;
    [v10 beginPhysicalCardAction:v7 onPhysicalCardWithIdentifier:v11 forAccountWithIdentifier:v12 accountUserAltDSID:v13 deviceMetadata:v5 completion:v24];

    v5 = v13;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69B9070]);
    [v7 setReason:*(*(a1 + 32) + 40)];
    [v7 setNameOnCard:*(*(a1 + 32) + 104)];
    v17 = [*(*(a1 + 32) + 120) identifier];
    [v7 setArtworkIdentifier:v17];

    v18 = *(a1 + 32);
    v19 = *(v18 + 8);
    v11 = [*(v18 + 24) accountIdentifier];
    v12 = [*(*(a1 + 32) + 32) altDSID];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_3;
    v22[3] = &unk_1E8019FE0;
    v20 = *(a1 + 32);
    v15 = &v23;
    v22[4] = v20;
    v23 = v6;
    v21 = v6;
    [v19 beginPhysicalCardRequestWithOrder:v7 forAccountWithIdentifier:v11 accountUserAltDSID:v12 deviceMetadata:v5 completion:v22];
  }
}

void __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543618;
      v19 = @"YES";
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Received Apple Pay Trust signature request %{public}@, error: %@", &v18, 0x16u);
    }

    v14 = [*(a1 + 32) _paymentRequest];
    [v14 setApplePayTrustSignatureRequest:v9];
    v15 = *(a1 + 40);
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = *(v15 + 16);
LABEL_6:
    v16();
LABEL_7:

    goto LABEL_8;
  }

  if (!v10)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_8;
    }

    v14 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", v12, [*(*(a1 + 32) + 24) feature], 0, 0);
    v16 = *(*(a1 + 40) + 16);
    goto LABEL_6;
  }

  objc_storeStrong((*(a1 + 32) + 24), a4);
  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, 0, v10, 0);
  }

LABEL_8:
}

void __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_29(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_2_30;
  block[3] = &unk_1E8019F90;
  v23 = v11;
  v24 = v15;
  v16 = *(a1 + 40);
  v25 = *(a1 + 32);
  v26 = v12;
  v28 = v14;
  v29 = v16;
  v27 = v13;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v15;
  v21 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_2_30(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && !*(a1 + 40))
  {
    objc_storeStrong((*(a1 + 48) + 72), *(a1 + 56));
    v3 = *(*(a1 + 80) + 16);
    goto LABEL_18;
  }

  if ([*(a1 + 64) count])
  {
    v2 = *(a1 + 40) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    v3 = *(*(a1 + 80) + 16);
LABEL_18:

    v3();
    return;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(a1 + 64);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 state] == 1)
        {
          v5 = v8;
          goto LABEL_22;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  (*(*(a1 + 80) + 16))();
}

void __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_4;
  block[3] = &unk_1E8019F90;
  v23 = v11;
  v24 = v15;
  v16 = *(a1 + 40);
  v25 = *(a1 + 32);
  v26 = v12;
  v28 = v14;
  v29 = v16;
  v27 = v13;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = v15;
  v21 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (v2)
    {
      v3 = *(a1 + 80);
LABEL_8:
      v6 = *(v3 + 16);
      goto LABEL_11;
    }

    objc_storeStrong((*(a1 + 48) + 64), *(a1 + 56));
    v6 = *(*(a1 + 80) + 16);
  }

  else
  {
    v4 = *(a1 + 64);
    v3 = *(a1 + 80);
    if (v4)
    {
      v5 = v2 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = *(v3 + 16);
  }

LABEL_11:

  return v6();
}

void __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PKOrderPhysicalCardController_startOrderPhysicalCardWithCompletion___block_invoke_6;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)completeOrderPhysicalCardWithApplePayTrustSignature:(id)signature completion:(id)completion
{
  signatureCopy = signature;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Completing physical card order...", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKOrderPhysicalCardController_completeOrderPhysicalCardWithApplePayTrustSignature_completion___block_invoke;
  aBlock[3] = &unk_1E801A058;
  aBlock[4] = self;
  v9 = completionCopy;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  physicalCardRequest = self->_physicalCardRequest;
  if (physicalCardRequest)
  {
    [(PKAccountService *)self->_accountService completePhysicalCardRequest:physicalCardRequest withSignature:signatureCopy completion:v10];
  }

  else
  {
    replacePhysicalCardRequest = self->_replacePhysicalCardRequest;
    if (replacePhysicalCardRequest)
    {
      accountService = self->_accountService;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __96__PKOrderPhysicalCardController_completeOrderPhysicalCardWithApplePayTrustSignature_completion___block_invoke_38;
      v15[3] = &unk_1E801A080;
      v16 = v10;
      [(PKAccountService *)accountService completePhysicalCardActionRequest:replacePhysicalCardRequest withSignature:signatureCopy completion:v15];
    }
  }
}

void __96__PKOrderPhysicalCardController_completeOrderPhysicalCardWithApplePayTrustSignature_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKOrderPhysicalCardController_completeOrderPhysicalCardWithApplePayTrustSignature_completion___block_invoke_2;
  block[3] = &unk_1E80135E0;
  v15 = v7;
  v16 = v9;
  v10 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v8;
  v19 = v10;
  v11 = v8;
  v12 = v9;
  v13 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__PKOrderPhysicalCardController_completeOrderPhysicalCardWithApplePayTrustSignature_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    if (!v2)
    {
      objc_storeStrong((*(a1 + 48) + 24), *(a1 + 56));
      goto LABEL_6;
    }
  }

  else if (!v2)
  {
    goto LABEL_6;
  }

  v2 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", v2, [*(*(a1 + 48) + 24) feature], 0, 0);
LABEL_6:
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"YES";
    v5 = *(a1 + 40);
    if (!*(a1 + 32))
    {
      v4 = @"NO";
    }

    v7 = 138543618;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Completed physical card order %{public}@, error: %@", &v7, 0x16u);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), v2);
  }
}

void __96__PKOrderPhysicalCardController_completeOrderPhysicalCardWithApplePayTrustSignature_completion___block_invoke_38(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if ([v14 state] == 1)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_paymentRequest
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69B8D70]);
  [v3 setRequestType:4];
  [v3 setClientCallbackTimeout:65.0];
  [v3 setConfirmationStyle:1];
  v4 = PKLocalizedFeatureString();
  [v3 setLocalizedErrorMessage:v4];

  v5 = PKLocalizedFeatureString();
  [v3 setLocalizedAuthorizingTitle:v5];

  _priceForRequestingPhysicalCard = [(PKOrderPhysicalCardController *)self _priceForRequestingPhysicalCard];
  amount = [_priceForRequestingPhysicalCard amount];

  if (!amount)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    creditDetails = [(PKAccount *)self->_account creditDetails];
    currencyCode = [creditDetails currencyCode];
    amount = PKCurrencyAmountCreate(zero, currencyCode);
  }

  currency = [amount currency];
  [v3 setCurrencyCode:currency];

  v7Amount = [amount amount];
  v13 = MEMORY[0x1E69B8E90];
  v14 = PKLocalizedFeatureString();
  v15 = [v13 summaryItemWithLabel:v14 amount:v7Amount];

  v19[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v3 setPaymentSummaryItems:v16];

  zero2 = [MEMORY[0x1E696AB90] zero];
  LODWORD(v14) = [v7Amount isEqualToNumber:zero2];

  if (v14)
  {
    [v3 setSuppressTotal:1];
  }

  return v3;
}

- (id)_priceForRequestingPhysicalCard
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_priceOptions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 reason] == self->_orderReason)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end