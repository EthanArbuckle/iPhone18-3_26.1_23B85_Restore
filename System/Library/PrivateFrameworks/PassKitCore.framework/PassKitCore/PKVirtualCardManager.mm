@interface PKVirtualCardManager
+ (void)isVPANAutoFillSupported:(id)supported;
- (PKVirtualCardManager)init;
- (PKVirtualCardManager)initWithPaymentService:(id)service;
- (id)urlToPassDetailsForVirtualCard:(id)card;
- (void)accountVirtualCardsWithOptions:(unint64_t)options completion:(id)completion;
- (void)activeVirtualCardsWithOptions:(unint64_t)options completion:(id)completion;
- (void)credentialsForVirtualCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion;
- (void)queryKeychainForVirtualCard:(id)card;
- (void)vpanVirtualCardsWithOptions:(unint64_t)options completion:(id)completion;
@end

@implementation PKVirtualCardManager

- (PKVirtualCardManager)initWithPaymentService:(id)service
{
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = PKVirtualCardManager;
  v6 = [(PKVirtualCardManager *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(PKInAppPaymentService);
    inAppPaymentService = v6->_inAppPaymentService;
    v6->_inAppPaymentService = v7;

    v9 = +[PKAccountService sharedInstance];
    accountService = v6->_accountService;
    v6->_accountService = v9;

    v11 = dispatch_queue_create("com.apple.PassKitCore.virtualcardmanager.activecardsqueue", 0);
    virtualCardQueue = v6->_virtualCardQueue;
    v6->_virtualCardQueue = v11;

    objc_storeStrong(&v6->_paymentService, service);
  }

  return v6;
}

- (PKVirtualCardManager)init
{
  v3 = +[PKPaymentService paymentService];
  v4 = [(PKVirtualCardManager *)self initWithPaymentService:v3];

  return v4;
}

- (void)activeVirtualCardsWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (PKCurrentPassbookState() >= 2)
    {
      v11 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKVirtualCardManager not returning active virtual cards because Wallet has been deleted.", buf, 2u);
      }

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v7 = dispatch_group_create();
      *buf = 0;
      v25 = buf;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__66;
      v28 = __Block_byref_object_dispose__66;
      v29 = 0;
      dispatch_group_enter(v7);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __65__PKVirtualCardManager_activeVirtualCardsWithOptions_completion___block_invoke;
      v21[3] = &unk_1E79CA7D8;
      v23 = buf;
      v8 = v7;
      v22 = v8;
      [(PKVirtualCardManager *)self accountVirtualCardsWithOptions:options completion:v21];
      dispatch_group_enter(v8);
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x3032000000;
      v19[3] = __Block_byref_object_copy__66;
      v19[4] = __Block_byref_object_dispose__66;
      v20 = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__PKVirtualCardManager_activeVirtualCardsWithOptions_completion___block_invoke_2;
      v16[3] = &unk_1E79CA7D8;
      v18 = v19;
      v9 = v8;
      v17 = v9;
      [(PKVirtualCardManager *)self vpanVirtualCardsWithOptions:options completion:v16];
      virtualCardQueue = self->_virtualCardQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__PKVirtualCardManager_activeVirtualCardsWithOptions_completion___block_invoke_3;
      block[3] = &unk_1E79DEEF8;
      v14 = v19;
      v15 = buf;
      v13 = completionCopy;
      dispatch_group_notify(v9, virtualCardQueue, block);

      _Block_object_dispose(v19, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

void __65__PKVirtualCardManager_activeVirtualCardsWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __65__PKVirtualCardManager_activeVirtualCardsWithOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __65__PKVirtualCardManager_activeVirtualCardsWithOptions_completion___block_invoke_3(void *a1)
{
  if (*(*(a1[5] + 8) + 40) || *(*(a1[6] + 8) + 40))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = v2;
    if (*(*(a1[5] + 8) + 40))
    {
      [v2 unionSet:?];
      v2 = v6;
    }

    if (*(*(a1[6] + 8) + 40))
    {
      [v6 unionSet:?];
      v2 = v6;
    }

    v3 = a1[4];
    v4 = [v2 copy];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    v5 = *(a1[4] + 16);

    v5();
  }
}

- (void)accountVirtualCardsWithOptions:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v7 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Safari fetching active Apple Cards", buf, 2u);
  }

  if ((~optionsCopy & 3) == 0)
  {
    inAppPaymentService = self->_inAppPaymentService;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__PKVirtualCardManager_accountVirtualCardsWithOptions_completion___block_invoke;
    v13[3] = &unk_1E79DEF20;
    v13[4] = self;
    v14 = completionCopy;
    [(PKInAppPaymentService *)inAppPaymentService paymentHardwareStatusWithType:1 completion:v13];
    v9 = v14;
LABEL_12:

    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (optionsCopy)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "CVV not requested, querying keychain", buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PKVirtualCardManager_accountVirtualCardsWithOptions_completion___block_invoke_27;
    v11[3] = &unk_1E79D1300;
    v12 = completionCopy;
    [(PKVirtualCardManager *)self queryKeychainForVirtualCard:v11];
    v9 = v12;
    goto LABEL_12;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Invalid options when requesting virtual cards", buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_13:
}

void __66__PKVirtualCardManager_accountVirtualCardsWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 canDecryptBAAEncryptedData];
  v4 = PKLogFacilityTypeGetObject(0xFuLL);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Device supports CVV AutoFill, fetching credentials from database", buf, 2u);
    }

    v6 = *(*(a1 + 32) + 16);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PKVirtualCardManager_accountVirtualCardsWithOptions_completion___block_invoke_19;
    v12[3] = &unk_1E79C9BC8;
    v7 = &v13;
    v8 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v8;
    [v6 accountsWithPassLocallyProvisionedWithCompletion:v12];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Device does not support CVV AutoFill, fallback to keychain", buf, 2u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__PKVirtualCardManager_accountVirtualCardsWithOptions_completion___block_invoke_25;
    v10[3] = &unk_1E79D1300;
    v7 = &v11;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 queryKeychainForVirtualCard:v10];
  }
}

void __66__PKVirtualCardManager_accountVirtualCardsWithOptions_completion___block_invoke_19(uint64_t a1, void *a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 count];
  if (a3 || !v6)
  {
    v32 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Device does not have account with pass provisioned locally, fallback to keychain", buf, 2u);
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __66__PKVirtualCardManager_accountVirtualCardsWithOptions_completion___block_invoke_23;
    v41[3] = &unk_1E79D1300;
    v33 = *(a1 + 32);
    v42 = *(a1 + 40);
    [v33 queryKeychainForVirtualCard:v41];
    v7 = v42;
  }

  else
  {
    v35 = a1;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v36 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v49;
      v37 = *v49;
      v38 = v8;
      do
      {
        v12 = 0;
        v39 = v10;
        do
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v48 + 1) + 8 * v12);
          if ([v13 type] == 1 && objc_msgSend(v13, "state") == 1 && objc_msgSend(v13, "supportsShowVirtualCard"))
          {
            v40 = v12;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v14 = [v13 creditDetails];
            v15 = [v14 virtualCards];

            v16 = [v15 countByEnumeratingWithState:&v44 objects:v52 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v45;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v45 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v44 + 1) + 8 * i);
                  if ([v20 state] == 1)
                  {
                    v21 = [v20 keychainVirtualCard];
                    v22 = [v21 keychainCardCredentials];
                    [v20 setKeychainCardCredentials:v22];

                    v23 = [v13 feature];
                    v29 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_DISPLAY_NAME", v23, 0, v24, v25, v26, v27, v28, v34);
                    [v20 setDisplayName:v29];

                    [v20 setRequiresAuthentication:1];
                    [v7 addObject:v20];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v44 objects:v52 count:16];
              }

              while (v17);
            }

            v11 = v37;
            v8 = v38;
            v10 = v39;
            v12 = v40;
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [v8 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v10);
    }

    v30 = *(v35 + 40);
    v31 = [v7 copy];
    (*(v30 + 16))(v30, v31);

    v5 = v36;
  }
}

void __66__PKVirtualCardManager_accountVirtualCardsWithOptions_completion___block_invoke_23(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
}

void __66__PKVirtualCardManager_accountVirtualCardsWithOptions_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3);
}

- (void)credentialsForVirtualCard:(id)card authorization:(id)authorization options:(unint64_t)options merchantHost:(id)host completion:(id)completion
{
  optionsCopy = options;
  cardCopy = card;
  authorizationCopy = authorization;
  hostCopy = host;
  completionCopy = completion;
  v16 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Safari fetching virtual card credentials", buf, 2u);
  }

  if (completionCopy)
  {
    if (!authorizationCopy || (optionsCopy & 3) == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Fetching keychain card credentials", buf, 2u);
      }

      keychainCardCredentials = [cardCopy keychainCardCredentials];
      completionCopy[2](completionCopy, keychainCardCredentials, 0);
    }

    else if ((optionsCopy & 3) == 3)
    {
      inAppPaymentService = self->_inAppPaymentService;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __96__PKVirtualCardManager_credentialsForVirtualCard_authorization_options_merchantHost_completion___block_invoke;
      v19[3] = &unk_1E79DEF70;
      v20 = cardCopy;
      selfCopy = self;
      v22 = authorizationCopy;
      v24 = completionCopy;
      v23 = hostCopy;
      [(PKInAppPaymentService *)inAppPaymentService paymentHardwareStatusWithType:1 completion:v19];
    }

    else
    {
      completionCopy[2](completionCopy, 0, 0);
    }
  }
}

void __96__PKVirtualCardManager_credentialsForVirtualCard_authorization_options_merchantHost_completion___block_invoke(uint64_t a1, void *a2)
{
  if (![a2 canDecryptBAAEncryptedData])
  {
    v9 = [*(a1 + 32) type];
    if (v9 < 2)
    {
      v10 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Hardware does not support decrypting virtual card, fallback to Keychain", buf, 2u);
      }

      v11 = *(a1 + 64);
      v12 = [*(a1 + 32) keychainCardCredentials];
      (*(v11 + 16))(v11, v12, 0);

      return;
    }

    if (v9 != 2)
    {
      return;
    }

    v3 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Error: Hardware does not support decrypting virtual card.";
LABEL_26:
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    }

LABEL_27:

    (*(*(a1 + 64) + 16))();
    return;
  }

  v3 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Decrypting virtual card for Safari", buf, 2u);
  }

  v4 = [*(a1 + 32) type];
  switch(v4)
  {
    case 0:
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "Cannot retrieve credentials for PKVirtualCard with unknown type";
        goto LABEL_26;
      }

      goto LABEL_27;
    case 2:
      v14 = +[PKPaymentWebService sharedService];
      v15 = PKVirtualCardEnabledWithWebService(v14);

      if (!v15)
      {
        return;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Card is of VPAN type: Using Payment Service", buf, 2u);
      }

      if (os_variant_has_internal_ui() && PKVirtualCardFakeCredentialsEnabled())
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKVirtualCardFakeCredentialsEnabled is true: Providing demo credentials to Safari", buf, 2u);
        }

        if (PKVirtualCardFakeCredentialsWithDelayEnabled())
        {
          v16 = 1000000000 * (arc4random_uniform(4u) + 3);
        }

        else
        {
          v16 = 0;
        }

        v21 = dispatch_time(0, v16);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __96__PKVirtualCardManager_credentialsForVirtualCard_authorization_options_merchantHost_completion___block_invoke_31;
        block[3] = &unk_1E79C4A40;
        v25 = *(a1 + 32);
        v26 = *(a1 + 64);
        dispatch_after(v21, MEMORY[0x1E69E96A0], block);

        v8 = v25;
      }

      else
      {
        v17 = *(a1 + 32);
        v18 = *(*(a1 + 40) + 24);
        v19 = *(a1 + 48);
        v20 = *(a1 + 56);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __96__PKVirtualCardManager_credentialsForVirtualCard_authorization_options_merchantHost_completion___block_invoke_2;
        v22[3] = &unk_1E79DEF48;
        v23 = *(a1 + 64);
        [v18 vpanCardCredentialsForVirtualCard:v17 authorization:v19 merchantHost:v20 completion:v22];
        v8 = v23;
      }

      break;
    case 1:
      v5 = *(a1 + 32);
      v6 = *(*(a1 + 40) + 16);
      v7 = *(a1 + 48);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __96__PKVirtualCardManager_credentialsForVirtualCard_authorization_options_merchantHost_completion___block_invoke_28;
      v27[3] = &unk_1E79DEF48;
      v28 = *(a1 + 64);
      [v6 cardCredentialsForVirtualCard:v5 authorization:v7 action:2 completion:v27];
      v8 = v28;
      break;
    default:
      return;
  }
}

void __96__PKVirtualCardManager_credentialsForVirtualCard_authorization_options_merchantHost_completion___block_invoke_31(uint64_t a1)
{
  v2 = +[PKVirtualCardCredentials demoVPANCredentials];
  [v2 setCardType:{objc_msgSend(*(a1 + 32), "credentialType")}];
  (*(*(a1 + 40) + 16))();
}

- (id)urlToPassDetailsForVirtualCard:(id)card
{
  cardCopy = card;
  if (+[PKWalletVisibility isWalletVisible])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v4 setScheme:@"wallet"];
    [v4 setHost:@"virtualCard"];
    identifier = [cardCopy identifier];

    v6 = [@"/" stringByAppendingFormat:@"%@/%@", identifier, @"details"];
    [v4 setPath:v6];

    v7 = [v4 URL];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"prefs:root=PASSBOOK&path="];
    [v4 appendString:@"virtualCard"];
    [v4 appendString:@"/"];
    identifier2 = [cardCopy identifier];

    [v4 appendString:identifier2];
    [v4 appendString:@"/"];
    [v4 appendString:@"details"];
    v9 = MEMORY[0x1E695DFF8];
    v10 = [v4 copy];
    v7 = [v9 URLWithString:v10];
  }

  return v7;
}

+ (void)isVPANAutoFillSupported:(id)supported
{
  if (supported)
  {
    supportedCopy = supported;
    v3 = +[PKPaymentWebService sharedService];
    v4 = PKVirtualCardEnabledWithWebService(v3) && PKSecureElementIsAvailable() != 0;

    supportedCopy[2](supportedCopy, v4);
  }
}

- (void)vpanVirtualCardsWithOptions:(unint64_t)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v7 = +[PKPaymentWebService sharedService];
  v8 = PKVirtualCardEnabledWithWebService(v7);

  if (!v8)
  {
LABEL_8:
    completionCopy[2](completionCopy, 0);
    goto LABEL_9;
  }

  v9 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Safari fetching active VPAN virtual cards", buf, 2u);
  }

  if ((optionsCopy & 1) == 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Invalid options for VPAN virtual card request: Need to request PrimaryAccountNumber", buf, 2u);
    }

    goto LABEL_8;
  }

  if (os_variant_has_internal_ui() && PKVirtualCardFakeVirtualCardsEnabled())
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKVirtualCardFakeVirtualCardsEnabled is true: Providing demo virtual cards to Safari", buf, 2u);
    }

    v10 = +[PKVirtualCard demoVPANVirtualCards];
    (completionCopy)[2](completionCopy, v10);
  }

  else
  {
    inAppPaymentService = self->_inAppPaymentService;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PKVirtualCardManager_vpanVirtualCardsWithOptions_completion___block_invoke;
    v12[3] = &unk_1E79DEF20;
    v12[4] = self;
    v13 = completionCopy;
    [(PKInAppPaymentService *)inAppPaymentService paymentHardwareStatusWithType:1 completion:v12];
  }

LABEL_9:
}

void __63__PKVirtualCardManager_vpanVirtualCardsWithOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 canDecryptBAAEncryptedData])
  {
    v3 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__PKVirtualCardManager_vpanVirtualCardsWithOptions_completion___block_invoke_2;
    v6[3] = &unk_1E79DEF98;
    v7 = *(a1 + 40);
    [v3 virtualCardsWithActiveVPAN:v6];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error: Hardware does not support VPAN virtual cards.", v5, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __63__PKVirtualCardManager_vpanVirtualCardsWithOptions_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get VPAN virtual cards %@", &v9, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

- (void)queryKeychainForVirtualCard:(id)card
{
  cardCopy = card;
  accountService = self->_accountService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PKVirtualCardManager_queryKeychainForVirtualCard___block_invoke;
  v7[3] = &unk_1E79D1300;
  v8 = cardCopy;
  v6 = cardCopy;
  [(PKAccountService *)accountService virtualCardsInKeychainWithCompletion:v7];
}

void __52__PKVirtualCardManager_queryKeychainForVirtualCard___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if ([v10 isValidFromKeychain] && objc_msgSend(v10, "state") == 1)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = *(a1 + 32);
    v12 = [v4 copy];
    (*(v11 + 16))(v11, v12);
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Virtual card does not have credentials stored in Keychain", v14, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

@end