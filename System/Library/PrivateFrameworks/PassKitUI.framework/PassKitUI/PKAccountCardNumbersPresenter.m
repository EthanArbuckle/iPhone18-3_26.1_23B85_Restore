@interface PKAccountCardNumbersPresenter
+ (void)authAndDecryptWithVirtualCard:(id)a3 completion:(id)a4;
- (BOOL)_supportsManualEntry;
- (PKAccountCardNumbersPresenter)initWithVirtualCard:(id)a3 physicalCard:(id)a4 account:(id)a5 peerPaymentAccount:(id)a6 pass:(id)a7 context:(int64_t)a8;
- (void)_prepareAuthForVirtualCard:(id)a3 completion:(id)a4;
- (void)presentCardNumbersWithCompletion:(id)a3;
@end

@implementation PKAccountCardNumbersPresenter

- (PKAccountCardNumbersPresenter)initWithVirtualCard:(id)a3 physicalCard:(id)a4 account:(id)a5 peerPaymentAccount:(id)a6 pass:(id)a7 context:(int64_t)a8
{
  v24 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v25.receiver = self;
  v25.super_class = PKAccountCardNumbersPresenter;
  v18 = [(PKAccountCardNumbersPresenter *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_virtualCard, a3);
    objc_storeStrong(&v19->_physicalCard, a4);
    objc_storeStrong(&v19->_account, a5);
    objc_storeStrong(&v19->_peerPaymentAccount, a6);
    objc_storeStrong(&v19->_pass, a7);
    v19->_context = a8;
    v20 = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v19->_accountService;
    v19->_accountService = v20;

    v19->_isLoadingVirtualCard = 0;
  }

  return v19;
}

- (void)presentCardNumbersWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    peerPaymentAccount = self->_peerPaymentAccount;
    if (peerPaymentAccount)
    {
      v6 = [(PKPeerPaymentAccount *)peerPaymentAccount state]== 3 || [(PKPeerPaymentAccount *)self->_peerPaymentAccount state]== 4;
    }

    else
    {
      v6 = 0;
    }

    v7 = [MEMORY[0x1E69B8EF8] sharedService];
    if (PKVirtualCardEnabledWithWebService() && ([(PKAccount *)self->_account supportsShowVirtualCard]& 1) == 0 && [(PKPaymentPass *)self->_pass hasActiveVirtualCard])
    {

      if (!v6)
      {
        objc_initWeak(location, self);
        self->_isLoadingVirtualCard = 1;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke;
        v29[3] = &unk_1E8019BD0;
        objc_copyWeak(&v31, location);
        v29[4] = self;
        v30 = v4;
        [PKCardNumbersAuthentication authenticationContextLocationBased:1 featureIdentifier:1 completion:v29];

        v8 = &v31;
LABEL_20:
        objc_destroyWeak(v8);
        objc_destroyWeak(location);
        goto LABEL_24;
      }
    }

    else
    {
    }

    if (([(PKAccount *)self->_account supportsShowVirtualCard]& 1) == 0)
    {
      objc_initWeak(location, self);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_18;
      v25[3] = &unk_1E8019C20;
      objc_copyWeak(&v27, location);
      v25[4] = self;
      v28 = v6;
      v26 = v4;
      [PKCardNumbersAuthentication authenticationContextLocationBased:1 featureIdentifier:1 completion:v25];

      v8 = &v27;
      goto LABEL_20;
    }

    if ([(PKAccount *)self->_account supportsShowVirtualCard])
    {
      if (!self->_isLoadingVirtualCard)
      {
        self->_isLoadingVirtualCard = 1;
        virtualCard = self->_virtualCard;
        if (!virtualCard)
        {
          v12 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(location[0]) = 0;
            _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Card information selected: no virtual cards on the account, calling create", location, 2u);
          }

          objc_initWeak(location, self);
          accountService = self->_accountService;
          v14 = [(PKAccount *)self->_account accountIdentifier];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_25;
          v19[3] = &unk_1E8019C70;
          objc_copyWeak(&v21, location);
          v20 = v4;
          [(PKAccountService *)accountService createVirtualCard:1 forAccountIdentifier:v14 completion:v19];

          v8 = &v21;
          goto LABEL_20;
        }

        if (![(PKVirtualCard *)virtualCard hasSensitiveCredentials])
        {
          if (PKUIOnlyDemoModeEnabled())
          {
            self->_isLoadingVirtualCard = 0;
            [(PKAccountCardNumbersPresenter *)self _prepareAuthForVirtualCard:self->_virtualCard completion:v4];
            goto LABEL_24;
          }

          v15 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(location[0]) = 0;
            _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Card information selected: attempting to fetch virtual card", location, 2u);
          }

          objc_initWeak(location, self);
          v16 = self->_accountService;
          v17 = [(PKVirtualCard *)self->_virtualCard identifier];
          v18 = [(PKAccount *)self->_account accountIdentifier];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_21;
          v22[3] = &unk_1E8019C70;
          objc_copyWeak(&v24, location);
          v23 = v4;
          [(PKAccountService *)v16 performVirtualCardAction:1 forVirtualCardIdentifier:v17 forAccountIdentifier:v18 completion:v22];

          v8 = &v24;
          goto LABEL_20;
        }

        [(PKAccountCardNumbersPresenter *)self _prepareAuthForVirtualCard:self->_virtualCard completion:v4];
        self->_isLoadingVirtualCard = 0;
      }
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Account doesn't support showing virtual card", location, 2u);
      }

      v11 = [[PKAccountCardNumbersViewController alloc] initWithPass:self->_pass accountService:self->_accountService account:self->_account physicalCard:self->_physicalCard context:self->_context];
      (*(v4 + 2))(v4, v11);
    }
  }

LABEL_24:
}

void __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_2;
    block[3] = &unk_1E80135E0;
    block[4] = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    v11 = WeakRetained;
    v12 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 64) = 0;
  if (*(a1 + 40) && !*(a1 + 48))
  {
    v6 = [[PKAccountCardNumbersViewController alloc] initWithPass:*(*(a1 + 56) + 40) localAuthenticationContext:*(a1 + 40) virtualCard:*(*(a1 + 56) + 8) context:*(*(a1 + 56) + 48)];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Card information selected: unable to present card numbers UI because auth failed with error: %@", buf, 0xCu);
    }

    if ([*(a1 + 48) pk_shouldSuppressAfterAuthenticationPolicyWasLocationBased:1])
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v4 = +[PKCardNumbersAuthentication genericDisplayableVirtualCardError];
      v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
      (*(*(a1 + 64) + 16))();
    }
  }
}

void __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_2_19;
    v9[3] = &unk_1E8019BF8;
    v10 = v5;
    v11 = v6;
    v12 = WeakRetained;
    v8 = *(a1 + 40);
    v13 = *(a1 + 32);
    v15 = *(a1 + 56);
    v14 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_2_19(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v6 = -[PKAccountOtherCardNumbersViewController initWithPaymentPass:account:context:localAuthContext:supportsManualFPANEntry:preferDefaultTitle:]([PKAccountOtherCardNumbersViewController alloc], "initWithPaymentPass:account:context:localAuthContext:supportsManualFPANEntry:preferDefaultTitle:", *(*(a1 + 48) + 40), 0, *(*(a1 + 48) + 48), *(a1 + 32), [*(a1 + 56) _supportsManualEntry], *(a1 + 72));
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Card information selected: unable to present card numbers UI because auth failed with error: %@", buf, 0xCu);
    }

    if ([*(a1 + 40) pk_shouldSuppressAfterAuthenticationPolicyWasLocationBased:1])
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v4 = +[PKCardNumbersAuthentication genericDisplayableVirtualCardError];
      v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
      (*(*(a1 + 64) + 16))();
    }
  }
}

void __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_21(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_2_22;
  block[3] = &unk_1E8019C48;
  objc_copyWeak(&v18, (a1 + 40));
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v17 = *(a1 + 32);
  v10 = v8;
  v11 = v9;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
}

void __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_2_22(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 64) = 0;
    v4 = *(a1 + 32);
    if (v4 && !*(a1 + 40))
    {
      objc_storeStrong(WeakRetained + 1, v4);
      objc_storeStrong(v3 + 3, *(a1 + 48));
      if ([v3[1] hasSensitiveCredentials])
      {
        [v3 _prepareAuthForVirtualCard:v3[1] completion:*(a1 + 56)];
        goto LABEL_8;
      }

      v7 = [[PKAccountCardNumbersViewController alloc] initWithPass:v3[5] accountService:v3[7] account:v3[3] cardCredentials:0 virtualCard:v3[1] physicalCard:v3[2] context:v3[6]];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        *buf = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Card information selected: unable to present card numbers UI because virtual card action failed with error: %@", buf, 0xCu);
      }

      v7 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", *(a1 + 40), [v3[3] feature], 0, 0);
      v8 = PKAlertForDisplayableErrorWithHandlers(v7, 0, 0, 0);
      (*(*(a1 + 56) + 16))();
    }
  }

LABEL_8:
}

void __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_25(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_2_26;
  block[3] = &unk_1E8019C48;
  objc_copyWeak(&v18, (a1 + 40));
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v17 = *(a1 + 32);
  v10 = v8;
  v11 = v9;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
}

void __66__PKAccountCardNumbersPresenter_presentCardNumbersWithCompletion___block_invoke_2_26(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 64) = 0;
    v4 = *(a1 + 32);
    if (v4 && !*(a1 + 40))
    {
      objc_storeStrong(WeakRetained + 1, v4);
      objc_storeStrong(v3 + 3, *(a1 + 48));
      if ([v3[1] hasSensitiveCredentials])
      {
        [v3 _prepareAuthForVirtualCard:v3[1] completion:*(a1 + 56)];
        goto LABEL_8;
      }

      v7 = [[PKAccountCardNumbersViewController alloc] initWithPass:v3[5] accountService:v3[7] account:v3[3] cardCredentials:0 virtualCard:v3[1] physicalCard:v3[2] context:v3[6]];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        *buf = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Unable to present card numbers UI because create virtual card failed with error: %@", buf, 0xCu);
      }

      v7 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", *(a1 + 40), [v3[3] feature], 0, 0);
      v8 = PKAlertForDisplayableErrorWithHandlers(v7, 0, 0, 0);
      (*(*(a1 + 56) + 16))();
    }
  }

LABEL_8:
}

- (void)_prepareAuthForVirtualCard:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to auth to decrypt virtual card", buf, 2u);
  }

  objc_initWeak(buf, self);
  v9 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PKAccountCardNumbersPresenter__prepareAuthForVirtualCard_completion___block_invoke;
  v12[3] = &unk_1E8019C98;
  objc_copyWeak(&v15, buf);
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [v9 authAndDecryptWithVirtualCard:v10 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __71__PKAccountCardNumbersPresenter__prepareAuthForVirtualCard_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__PKAccountCardNumbersPresenter__prepareAuthForVirtualCard_completion___block_invoke_2;
    v11[3] = &unk_1E80173A8;
    v12 = v7;
    v13 = v8;
    v14 = WeakRetained;
    v15 = a1[4];
    v16 = v9;
    v17 = a1[5];
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __71__PKAccountCardNumbersPresenter__prepareAuthForVirtualCard_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v8 = [PKAccountCardNumbersViewController alloc];
    v9 = *(a1 + 48);
    v7 = [(PKAccountCardNumbersViewController *)v8 initWithPass:v9[5] accountService:v9[7] account:v9[3] cardCredentials:*(a1 + 32) virtualCard:*(a1 + 56) physicalCard:v9[2] context:v9[6]];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Auth and decrypt virtual card failed with error: %@", buf, 0xCu);
    }

    v4 = [*(a1 + 64) domain];
    v5 = [v4 isEqualToString:*MEMORY[0x1E69B9E00]];

    if (v5)
    {
      v6 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", *(a1 + 64), [*(*(a1 + 48) + 24) feature], 0, 0);
      v7 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
    }

    else
    {
      v7 = 0;
    }
  }

  (*(*(a1 + 72) + 16))();
}

+ (void)authAndDecryptWithVirtualCard:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKAccountCardNumbersPresenter_authAndDecryptWithVirtualCard_completion___block_invoke;
    v7[3] = &unk_1E8019CE8;
    v8 = v5;
    v9 = v6;
    [PKCardNumbersAuthentication authenticationContextLocationBased:1 featureIdentifier:2 completion:v7];
  }
}

void __74__PKAccountCardNumbersPresenter_authAndDecryptWithVirtualCard_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 externalizedContext];
  if (v7)
  {
    if (PKUIOnlyDemoModeEnabled())
    {
      if (*(a1 + 40))
      {
        v8 = objc_alloc_init(MEMORY[0x1E69B9340]);
        [v8 setPrimaryAccountNumber:@"1234567890"];
        [v8 setCardSecurityCode:@"123"];
        [v8 setCardType:3];
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      v10 = [MEMORY[0x1E69B8400] sharedInstance];
      v11 = *(a1 + 32);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __74__PKAccountCardNumbersPresenter_authAndDecryptWithVirtualCard_completion___block_invoke_2;
      v12[3] = &unk_1E8019CC0;
      v13 = v5;
      v14 = *(a1 + 40);
      [v10 cardCredentialsForVirtualCard:v11 authorization:v7 action:1 completion:v12];
    }
  }

  else if (*(a1 + 40))
  {
    if ([v6 pk_shouldSuppressAfterAuthenticationPolicyWasLocationBased:1])
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v6, v9);
  }
}

void __74__PKAccountCardNumbersPresenter_authAndDecryptWithVirtualCard_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 invalidate];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    if (!v11 || v5)
    {
      v8 = 0;
      v9 = v5;
      v10 = v5;
    }

    else
    {
      v8 = v11;
      v9 = 0;
      v10 = 0;
    }

    (*(v7 + 16))(v7, v8, v9, v10);
  }
}

- (BOOL)_supportsManualEntry
{
  v3 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  v4 = [v3 paymentType];

  v5 = PKFPANAutoFillEnabled();
  if (v5)
  {
    LOBYTE(v5) = !self->_account && !self->_peerPaymentAccount && (v4 - 1) < 2;
  }

  return v5;
}

@end