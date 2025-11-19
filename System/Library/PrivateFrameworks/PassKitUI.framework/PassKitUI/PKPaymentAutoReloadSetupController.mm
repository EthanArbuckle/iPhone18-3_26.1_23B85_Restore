@interface PKPaymentAutoReloadSetupController
+ (BOOL)shouldOfferAutoReloadForPass:(id)a3;
- (PKPaymentAutoReloadSetupController)initWithPass:(id)a3 paymentDataProvider:(id)a4 provisioningController:(id)a5 viewStyle:(int64_t)a6 delegate:(id)a7;
- (id)paymentRequest:(id)a3 threshold:(id)a4 paymentMethodIdentifier:(id)a5;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (void)_createThresholdTopUpSetupViewController;
- (void)_didUpdateAutoReloadWithAmount:(id)a3 threshold:(id)a4 paymentMethodIdentifier:(id)a5 completion:(id)a6;
- (void)_dismissViewController:(id)a3;
- (void)_showGenericErrorAlert:(id)a3;
- (void)autoReloadSetupCompleteViewControllerDidComplete:(int64_t)a3;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)presentAutoTopUpFlow;
- (void)thresholdTopUpDidSelectCancel:(id)a3;
- (void)thresholdTopUpDidSelectContinue:(id)a3 completion:(id)a4;
- (void)thresholdTopUpDidSelectUpdate:(id)a3 completion:(id)a4;
- (void)thresholdTopUpPerformCancel:(id)a3 completion:(id)a4;
- (void)updateAutoReloadSection:(id)a3;
@end

@implementation PKPaymentAutoReloadSetupController

- (PKPaymentAutoReloadSetupController)initWithPass:(id)a3 paymentDataProvider:(id)a4 provisioningController:(id)a5 viewStyle:(int64_t)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  if (self)
  {
    objc_storeStrong(&self->_pass, a3);
    v15 = a7;
    self->_passUpdated = 0;
    objc_storeStrong(&self->_paymentDataProvider, a4);
    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentDataProvider *)self->_paymentDataProvider addDelegate:self];
    }

    v16 = [PKPaymentPassDetailAutoReloadSectionController autoTopUpActionForPass:v13];
    action = self->_action;
    self->_action = v16;

    v18 = [(PKPaymentPass *)self->_pass autoTopUpMerchantTokenIdentifier];
    v19 = v18;
    if (v18)
    {
      LOBYTE(v18) = [(PKPaymentPass *)self->_pass isAutoTopEnabled];
    }

    self->_isWalletAutoTopEnabled = v18;

    self->_viewStyle = a6;
    objc_storeWeak(&self->_delegate, v15);

    if (a5)
    {
      v20 = 2;
    }

    else
    {
      if (!self->_isWalletAutoTopEnabled)
      {
        self->_setupMode = 0;
        goto LABEL_11;
      }

      v20 = 1;
    }

    self->_setupMode = v20;
LABEL_11:
    [(PKPaymentAutoReloadSetupController *)self _createThresholdTopUpSetupViewController];
  }

  return self;
}

+ (BOOL)shouldOfferAutoReloadForPass:(id)a3
{
  v3 = a3;
  v4 = [PKPaymentPassDetailAutoReloadSectionController autoTopUpActionForPass:v3];
  if (v4)
  {
    v5 = [v3 isAutoTopEnabled] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)updateAutoReloadSection:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_pass, a3);
  self->_passUpdated = 1;
  v5 = [PKPaymentPassDetailAutoReloadSectionController autoTopUpActionForPass:v9];
  action = self->_action;
  self->_action = v5;

  v7 = [(PKPaymentPass *)self->_pass autoTopUpMerchantTokenIdentifier];
  v8 = v7;
  if (v7)
  {
    LOBYTE(v7) = [(PKPaymentPass *)self->_pass isAutoTopEnabled];
  }

  self->_isWalletAutoTopEnabled = v7;

  self->_setupMode = self->_isWalletAutoTopEnabled;
  [(PKPaymentAutoReloadSetupController *)self _createThresholdTopUpSetupViewController];
}

- (void)_createThresholdTopUpSetupViewController
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentPassAction *)self->_action autoTopUpItem];
  v4 = [v3 defaultAmountSuggestions];

  v5 = [(PKPaymentPassAction *)self->_action autoTopUpItem];
  v6 = [v5 defaultThresholdSuggestions];

  v7 = [(PKPaymentPassAction *)self->_action autoTopUpItem];
  v8 = [v7 currency];
  currency = self->_currency;
  self->_currency = v8;

  if (!self->_isWalletAutoTopEnabled)
  {
    v21 = 0;
    v22 = 0;
    goto LABEL_33;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v10 = [(PKPaymentPass *)self->_pass autoTopUpFields];
  v11 = [v10 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v11)
  {
    v12 = v11;
    v56 = v4;
    v13 = v6;
    v14 = *v62;
    v15 = *MEMORY[0x1E69BBB80];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v61 + 1) + 8 * i);
        v18 = [v17 key];
        v19 = [v18 isEqualToString:v15];

        if (v19)
        {
          v23 = objc_alloc(MEMORY[0x1E696AB90]);
          v24 = MEMORY[0x1E696AD98];
          [v17 threshold];
          v25 = [v24 numberWithDouble:?];
          v26 = v25;
          if (v25)
          {
            [v25 decimalValue];
          }

          else
          {
            buf = 0uLL;
            v67 = 0;
          }

          v6 = v13;
          v21 = [v23 initWithDecimal:&buf];

          v27 = objc_alloc(MEMORY[0x1E696AB90]);
          v28 = MEMORY[0x1E696AD98];
          [v17 amount];
          v29 = [v28 numberWithDouble:?];
          v30 = v29;
          v4 = v56;
          if (v29)
          {
            [v29 decimalValue];
          }

          else
          {
            buf = 0uLL;
            v67 = 0;
          }

          v20 = [v27 initWithDecimal:&buf];

          goto LABEL_20;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v20 = 0;
    v21 = 0;
    v6 = v13;
    v4 = v56;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

LABEL_20:

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = [(PKPaymentPass *)self->_pass balances];
  v22 = [v31 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v22)
  {
    v32 = *v58;
    while (2)
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(v31);
        }

        v34 = [*(*(&v57 + 1) + 8 * j) paymentMethod];
        if (![v34 type])
        {
          v22 = [v34 name];
          v35 = [v34 fpanIdentifier];
          originalPaymentMethodIdentifier = self->_originalPaymentMethodIdentifier;
          self->_originalPaymentMethodIdentifier = v35;

          goto LABEL_30;
        }
      }

      v22 = [v31 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  if (!v20)
  {
LABEL_33:
    if ([v4 count] < 2)
    {
      v38 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v4 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v39;
        _os_log_impl(&dword_1BD026000, v38, OS_LOG_TYPE_DEFAULT, "PKPaymentAutoReloadSetupController: defaultAmountSuggestions count [%lu] is less than 2 items per spec. Need to update server configuration for the actions.json.", &buf, 0xCu);
      }

      v20 = 0;
      goto LABEL_52;
    }

    v20 = [v4 firstObject];
    if (v21)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (v21)
  {
    goto LABEL_37;
  }

LABEL_35:
  if ([v6 count] < 2)
  {
    v38 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [v6 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v55;
      _os_log_impl(&dword_1BD026000, v38, OS_LOG_TYPE_DEFAULT, "PKPaymentAutoReloadSetupController: no defaultThresholdSuggestions [%lu] is less than 2 items per spec. Need to update server configuration for the actions.json.", &buf, 0xCu);
    }

    v21 = 0;
    goto LABEL_52;
  }

  v21 = [v6 firstObject];
LABEL_37:
  if (!self->_passUpdated)
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  }

  thresholdTopUpSetupViewController = self->_thresholdTopUpSetupViewController;
  if (thresholdTopUpSetupViewController)
  {
    [(PKThresholdTopUpSetupViewController *)thresholdTopUpSetupViewController updateTopUpAmount:v20 threshold:v21 paymentMethodName:v22 paymentMethodIdentifier:self->_originalPaymentMethodIdentifier setupMode:self->_setupMode];
  }

  else
  {
    v40 = [[PKThresholdTopUpSetupViewController alloc] initWithAmountSuggestions:v4 selectedAmount:v20 thresholdSuggestions:v6 selectedThreshold:v21 currencyCode:self->_currency paymentMethodName:v22 paymentMethodIdentifier:self->_originalPaymentMethodIdentifier mode:self->_setupMode viewStyle:self->_viewStyle delegate:self];
    v41 = self->_thresholdTopUpSetupViewController;
    self->_thresholdTopUpSetupViewController = v40;
  }

  v42 = self->_thresholdTopUpSetupViewController;
  v43 = [(PKPaymentAutoReloadSetupController *)self paymentRequest:v20 threshold:v21 paymentMethodIdentifier:self->_originalPaymentMethodIdentifier];
  [(PKThresholdTopUpSetupViewController *)v42 setPaymentRequest:v43];

  v44 = self->_thresholdTopUpSetupViewController;
  v45 = PKLocalizedPaymentString(&cfstr_PassDetailsAmo.isa);
  [(PKThresholdTopUpSetupViewController *)v44 setAmountTitle:v45];

  v46 = self->_thresholdTopUpSetupViewController;
  v47 = PKLocalizedPaymentString(&cfstr_PassDetailsMin.isa);
  [(PKThresholdTopUpSetupViewController *)v46 setThresholdTitle:v47];

  v49 = self->_thresholdTopUpSetupViewController;
  setupMode = self->_setupMode;
  v50 = PKLocalizedPaymentString(&cfstr_PassDetailsAut.isa);
  if (setupMode != 1)
  {
    [(PKPaymentSetupOptionsViewController *)v49 setTitleText:v50];

    v54 = self->_thresholdTopUpSetupViewController;
    v38 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_12.isa);
    [(PKPaymentSetupOptionsViewController *)v54 setSubtitleText:v38];
    goto LABEL_52;
  }

  [(PKThresholdTopUpSetupViewController *)v49 setTitle:v50];

  v51 = self->_thresholdTopUpSetupViewController;
  v52 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_10.isa);
  [(PKThresholdTopUpSetupViewController *)v51 setCancelTitle:v52];

  if ([v22 length])
  {
    v53 = self->_thresholdTopUpSetupViewController;
    v38 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_11.isa);
    [(PKThresholdTopUpSetupViewController *)v53 setPaymentMethodTitle:v38];
LABEL_52:
  }
}

- (void)presentAutoTopUpFlow
{
  if (self->_thresholdTopUpSetupViewController)
  {
    setupMode = self->_setupMode;
    if (setupMode == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        return;
      }

      v9 = objc_loadWeakRetained(&self->_delegate);
      [(PKNavigationController *)v9 autoReloadSetupController:self requestsPushViewController:self->_thresholdTopUpSetupViewController];
    }

    else
    {
      if (setupMode)
      {
        return;
      }

      v4 = objc_loadWeakRetained(&self->_delegate);
      v5 = objc_opt_respondsToSelector();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v9 = [[PKNavigationController alloc] initWithRootViewController:self->_thresholdTopUpSetupViewController];
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 autoReloadSetupController:self requestsPresentViewController:v9];
    }
  }
}

- (void)autoReloadSetupCompleteViewControllerDidComplete:(int64_t)a3
{
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
LABEL_9:
        v11 = objc_loadWeakRetained(&self->_delegate);
        [v11 autoReloadSetupControllerDidCompleteWithAmount:self->_currentAmount threshold:self->_currentThreshold];
        goto LABEL_10;
      }

      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 autoReloadSetupController:self requestsPopViewController:self->_thresholdTopUpSetupViewController];
    }

    else
    {
      if (a3)
      {
        return;
      }

      v4 = objc_loadWeakRetained(&self->_delegate);
      v5 = objc_opt_respondsToSelector();

      if ((v5 & 1) == 0)
      {
        goto LABEL_9;
      }

      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 autoReloadSetupController:self requestsDismissViewController:self->_thresholdTopUpSetupViewController];
    }

    goto LABEL_9;
  }

  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    return;
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportPageCompleted:0 context:0];
  v11 = objc_loadWeakRetained(&self->_delegate);
  [v11 autoReloadSetupControllerDidCancel:self];
LABEL_10:
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__PKPaymentAutoReloadSetupController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __94__PKPaymentAutoReloadSetupController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) uniqueID];
  v3 = PKEqualObjects();

  if (v3)
  {
    *(*(a1 + 32) + 65) = 1;
    v4 = *(a1 + 32);
    if (*(v4 + 112))
    {
      *(v4 + 64) = 0;
      v5 = *(a1 + 32);
      v6 = *(v5 + 128);
      if (v6)
      {
        dispatch_source_cancel(v6);
        v7 = *(a1 + 32);
        v8 = *(v7 + 128);
        *(v7 + 128) = 0;

        v5 = *(a1 + 32);
      }

      (*(*(v5 + 112) + 16))();
      v9 = *(a1 + 32);
      v10 = *(v9 + 112);
      *(v9 + 112) = 0;

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = objc_loadWeakRetained((*(a1 + 32) + 104));
        [v13 autoReloadSetupControllerDidCancel:*(a1 + 32)];
      }

      v14 = *(a1 + 32);

      [v14 autoReloadSetupCompleteViewControllerDidComplete];
    }
  }
}

- (void)thresholdTopUpDidSelectCancel:(id)a3
{
  reporter = self->_reporter;
  v5 = a3;
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:3];
  [(PKPaymentAutoReloadSetupController *)self _dismissViewController:v5];
}

- (void)thresholdTopUpPerformCancel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_passUpdated = 0;
  objc_initWeak(&location, self);
  paymentDataProvider = self->_paymentDataProvider;
  v9 = [(PKPaymentPass *)self->_pass uniqueID];
  v10 = [(PKPaymentPass *)self->_pass autoTopUpBalanceIdentifiers];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__PKPaymentAutoReloadSetupController_thresholdTopUpPerformCancel_completion___block_invoke;
  v12[3] = &unk_1E8010F30;
  objc_copyWeak(&v14, &location);
  v11 = v7;
  v12[4] = self;
  v13 = v11;
  [(PKPaymentDataProvider *)paymentDataProvider cancelAutoTopUpForPassWithUniqueIdentifier:v9 balanceIdentifiers:v10 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __77__PKPaymentAutoReloadSetupController_thresholdTopUpPerformCancel_completion___block_invoke(uint64_t a1, char a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKPaymentAutoReloadSetupController_thresholdTopUpPerformCancel_completion___block_invoke_2;
  v5[3] = &unk_1E8020C68;
  objc_copyWeak(&v7, (a1 + 48));
  v4 = *(a1 + 40);
  v8 = a2;
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __77__PKPaymentAutoReloadSetupController_thresholdTopUpPerformCancel_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_7:
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 1);
    }

    goto LABEL_13;
  }

  if (*(a1 + 56) != 1)
  {
    v8 = MEMORY[0x1E69DC650];
    v9 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_13.isa);
    v10 = [*(*(a1 + 32) + 40) localizedDescription];
    v11 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_14.isa, &stru_1F3BD5BF0.isa, v10);
    v12 = [v8 alertControllerWithTitle:v9 message:v11 preferredStyle:1];

    v13 = MEMORY[0x1E69DC648];
    v14 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_15.isa);
    v15 = [v13 actionWithTitle:v14 style:1 handler:0];
    [v12 addAction:v15];

    v16 = *(*(a1 + 32) + 88);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __77__PKPaymentAutoReloadSetupController_thresholdTopUpPerformCancel_completion___block_invoke_4;
    v26[3] = &unk_1E8010B50;
    v27 = *(a1 + 40);
    [v16 presentViewController:v12 animated:1 completion:v26];

    goto LABEL_13;
  }

  if (*(WeakRetained + 65) == 1)
  {
    *(WeakRetained + 64) = 0;
    v4 = objc_loadWeakRetained(WeakRetained + 13);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(v3 + 13);
      [v6 autoReloadSetupControllerDidCancel:*(a1 + 32)];
    }

    [v3 autoReloadSetupCompleteViewControllerDidComplete];
    goto LABEL_7;
  }

  v17 = _Block_copy(*(a1 + 40));
  v18 = v3[14];
  v3[14] = v17;

  v19 = v3[16];
  if (v19)
  {
    dispatch_source_cancel(v19);
    v20 = v3[16];
    v3[16] = 0;
  }

  objc_initWeak(&location, v3);
  v21 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v22 = v3[16];
  v3[16] = v21;

  v23 = v3[16];
  v24 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v25 = v3[16];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __77__PKPaymentAutoReloadSetupController_thresholdTopUpPerformCancel_completion___block_invoke_3;
  handler[3] = &unk_1E80110E0;
  objc_copyWeak(&v29, &location);
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(v25, handler);
  dispatch_resume(v3[16]);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
LABEL_13:
}

void __77__PKPaymentAutoReloadSetupController_thresholdTopUpPerformCancel_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(WeakRetained + 64) = 0;
    v2 = *(WeakRetained + 16);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(WeakRetained + 16);
      *(WeakRetained + 16) = 0;
    }

    v4 = *(WeakRetained + 14);
    if (v4)
    {
      (*(v4 + 16))(v4, 1);
      v5 = *(WeakRetained + 14);
      *(WeakRetained + 14) = 0;
    }

    v6 = objc_loadWeakRetained(WeakRetained + 13);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(WeakRetained + 13);
      [v8 autoReloadSetupControllerDidCancel:*(a1 + 32)];
    }

    [WeakRetained autoReloadSetupCompleteViewControllerDidComplete];
  }
}

uint64_t __77__PKPaymentAutoReloadSetupController_thresholdTopUpPerformCancel_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)thresholdTopUpDidSelectContinue:(id)a3 completion:(id)a4
{
  reporter = self->_reporter;
  v7 = a4;
  v8 = a3;
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:0];
  v12 = [v8 currentAmount];
  v9 = [v8 currentThreshold];
  v10 = [v8 selectedPass];

  v11 = [v10 primaryAccountIdentifier];
  [(PKPaymentAutoReloadSetupController *)self _didUpdateAutoReloadWithAmount:v12 threshold:v9 paymentMethodIdentifier:v11 completion:v7];
}

- (void)thresholdTopUpDidSelectUpdate:(id)a3 completion:(id)a4
{
  reporter = self->_reporter;
  v7 = a4;
  v8 = a3;
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:1];
  v12 = [v8 currentAmount];
  v9 = [v8 currentThreshold];
  v10 = [v8 selectedPass];

  v11 = [v10 primaryAccountIdentifier];
  [(PKPaymentAutoReloadSetupController *)self _didUpdateAutoReloadWithAmount:v12 threshold:v9 paymentMethodIdentifier:v11 completion:v7];
}

- (void)_dismissViewController:(id)a3
{
  v13 = a3;
  v4 = [v13 mode];
  switch(v4)
  {
    case 2:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = objc_loadWeakRetained(&self->_delegate);
        [v12 autoReloadSetupControllerDidCancel:self];

        [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportPageCompleted:0 context:0];
      }

      break;
    case 1:
      v8 = objc_loadWeakRetained(&self->_delegate);
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        break;
      }

      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 autoReloadSetupController:self requestsPopViewController:v13];
      goto LABEL_8;
    case 0:
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 autoReloadSetupController:self requestsDismissViewController:v13];
LABEL_8:
      }

      break;
  }
}

- (id)paymentRequest:(id)a3 threshold:(id)a4 paymentMethodIdentifier:(id)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v67 = a5;
  currency = self->_currency;
  v11 = objc_alloc(MEMORY[0x1E69B8780]);
  v12 = v11;
  v68 = v9;
  if (currency)
  {
    v13 = [v11 initWithAmount:v8 currency:self->_currency exponent:0];
    currentAmount = self->_currentAmount;
    self->_currentAmount = v13;

    v15 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v9 currency:self->_currency exponent:0];
    currentThreshold = self->_currentThreshold;
    self->_currentThreshold = v15;
  }

  else
  {
    v17 = [(PKThresholdTopUpSetupViewController *)self->_thresholdTopUpSetupViewController currentAmount];
    v18 = [v12 initWithAmount:v17 currency:self->_currency exponent:0];
    v19 = self->_currentAmount;
    self->_currentAmount = v18;

    v20 = objc_alloc(MEMORY[0x1E69B8780]);
    currentThreshold = [(PKThresholdTopUpSetupViewController *)self->_thresholdTopUpSetupViewController currentThreshold];
    v21 = [v20 initWithAmount:currentThreshold currency:self->_currency exponent:0];
    v22 = self->_currentThreshold;
    self->_currentThreshold = v21;
  }

  v69 = v8;

  v66 = self;
  v23 = [(PKPaymentPass *)self->_pass autoTopUpFields];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v71;
    v28 = *MEMORY[0x1E69BBB88];
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v71 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v30 = *(*(&v70 + 1) + 8 * i);
        v31 = [v30 key];
        v32 = [v31 isEqualToString:v28];

        if (v32)
        {
          v33 = MEMORY[0x1E695DFF8];
          v34 = [v30 link];
          v35 = [v33 URLWithString:v34];

          v26 = v35;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v25);
  }

  else
  {
    v26 = 0;
  }

  v36 = [(PKPaymentPass *)v66->_pass transactionServiceURL];
  v37 = PKLocalizedPaymentString(&cfstr_PassDetailsRel.isa);
  v63 = [(PKPaymentPass *)v66->_pass organizationName];
  v38 = [MEMORY[0x1E69B8690] summaryItemWithLabel:v37 amount:v69 type:0];
  [v38 setThresholdAmount:v68];
  v64 = v37;
  v39 = [objc_alloc(MEMORY[0x1E69B8688]) initWithPaymentDescription:v37 automaticReloadBilling:v38 managementURL:v26];
  v65 = v36;
  [v39 setTokenNotificationURL:v36];
  v40 = [(PKPaymentPass *)v66->_pass localizedDescription];
  v41 = PKLocalizedPaymentString(&cfstr_PassDetailsAut_16.isa, &stru_1F3BD5BF0.isa, v40);
  [v39 setBillingAgreement:v41];

  v42 = [(PKPaymentPassAction *)v66->_action autoTopUpItem];
  v43 = [v42 serviceProviderData];
  v44 = [v43 mutableCopy];

  [v44 setObject:v69 forKey:*MEMORY[0x1E69BC3E8]];
  [v44 setObject:v68 forKey:*MEMORY[0x1E69BC3F0]];
  [v44 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69BC400]];
  if (v67)
  {
    v45 = *MEMORY[0x1E69BBBB8];
    v46 = v44;
    originalPaymentMethodIdentifier = v67;
LABEL_18:
    [v46 setObject:originalPaymentMethodIdentifier forKey:v45];
    goto LABEL_19;
  }

  originalPaymentMethodIdentifier = v66->_originalPaymentMethodIdentifier;
  v45 = *MEMORY[0x1E69BBBB8];
  v46 = v44;
  if (originalPaymentMethodIdentifier)
  {
    goto LABEL_18;
  }

  [v44 setValue:0 forKey:v45];
LABEL_19:
  v48 = objc_alloc_init(MEMORY[0x1E69B8A10]);
  v49 = [(PKPaymentPassAction *)v66->_action actionDescription];
  [v48 setItemDescription:v49];

  v50 = [v44 copy];
  [v48 setServiceProviderData:v50];

  v51 = [(PKPaymentPassAction *)v66->_action serviceProviderIdentifier];
  [v48 setServiceProviderIdentifier:v51];

  v52 = [objc_alloc(MEMORY[0x1E69B9218]) initWithServiceProviderOrder:v48];
  [v52 setCurrencyCode:v66->_currency];
  v53 = [(PKPaymentPassAction *)v66->_action serviceProviderAcceptedNetworks];
  [v52 setSupportedNetworks:v53];

  [v52 setMerchantCapabilities:{-[PKPaymentPassAction serviceProviderCapabilities](v66->_action, "serviceProviderCapabilities")}];
  v54 = [(PKPaymentPassAction *)v66->_action serviceProviderCountryCode];
  [v52 setCountryCode:v54];

  v55 = [(PKPaymentPassAction *)v66->_action serviceProviderSupportedCountries];
  [v52 setSupportedCountries:v55];

  v56 = [v38 copy];
  v57 = [(PKPaymentPassAction *)v66->_action serviceProviderLocalizedDisplayName];
  v58 = v57;
  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = v63;
  }

  v60 = v59;

  [v56 setLabel:v60];
  v74 = v56;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  [v52 setPaymentSummaryItems:v61];

  [v52 setAutomaticReloadPaymentRequest:v39];
  [v52 setConfirmationStyle:1];

  return v52;
}

- (void)_didUpdateAutoReloadWithAmount:(id)a3 threshold:(id)a4 paymentMethodIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PKPaymentAutoReloadSetupController *)self paymentRequest:v10 threshold:v11 paymentMethodIdentifier:v12];
  if (self->_paymentAuthCompletionHandler)
  {
    if (v13)
    {
      v13[2](v13, 0);
    }
  }

  else
  {
    v15 = _Block_copy(v13);
    paymentAuthCompletionHandler = self->_paymentAuthCompletionHandler;
    self->_paymentAuthCompletionHandler = v15;

    v17 = [objc_alloc(MEMORY[0x1E69B8B60]) initWithPaymentRequest:v14];
    [v17 setDelegate:self];
    [v17 _setPrivateDelegate:self];
    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __114__PKPaymentAutoReloadSetupController__didUpdateAutoReloadWithAmount_threshold_paymentMethodIdentifier_completion___block_invoke;
    v18[3] = &unk_1E8011180;
    objc_copyWeak(&v19, &location);
    [v17 presentWithCompletion:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __114__PKPaymentAutoReloadSetupController__didUpdateAutoReloadWithAmount_threshold_paymentMethodIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __114__PKPaymentAutoReloadSetupController__didUpdateAutoReloadWithAmount_threshold_paymentMethodIdentifier_completion___block_invoke_2;
  v4[3] = &unk_1E8013F80;
  v5 = a2;
  v4[4] = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __114__PKPaymentAutoReloadSetupController__didUpdateAutoReloadWithAmount_threshold_paymentMethodIdentifier_completion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1BD026000, v2, OS_LOG_TYPE_ERROR, "Error: Device failed to present payment coordinator!", v6, 2u);
    }

    [*(a1 + 32) _showGenericErrorAlert:0];
    v3 = *(*(a1 + 32) + 120);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
      v4 = *(a1 + 32);
      v5 = *(v4 + 120);
      *(v4 + 120) = 0;
    }
  }
}

- (void)_showGenericErrorAlert:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B8D08] displayableErrorForAction:self->_action andReason:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportError:v5 context:0];
  v6 = MEMORY[0x1E69DC650];
  v7 = [v5 localizedDescription];
  v8 = [v5 localizedRecoverySuggestion];
  v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PKPaymentAutoReloadSetupController__showGenericErrorAlert___block_invoke;
  v14[3] = &unk_1E8011248;
  v15 = v4;
  v12 = v4;
  v13 = [v10 actionWithTitle:v11 style:1 handler:v14];
  [v9 addAction:v13];

  [(PKThresholdTopUpSetupViewController *)self->_thresholdTopUpSetupViewController presentViewController:v9 animated:1 completion:0];
}

uint64_t __61__PKPaymentAutoReloadSetupController__showGenericErrorAlert___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v5 = MEMORY[0x1E69B8B80];
  v6 = a5;
  v7 = objc_alloc_init(v5);
  [v7 setStatus:1];
  v6[2](v6, v7);
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__PKPaymentAutoReloadSetupController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [a3 dismissWithCompletion:v3];
}

void __79__PKPaymentAutoReloadSetupController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPaymentAutoReloadSetupController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __79__PKPaymentAutoReloadSetupController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    *(v2 + 56) = 0;

    v4 = *(a1 + 32);
    if (*(v4 + 96) == 2)
    {
      WeakRetained = objc_loadWeakRetained((v4 + 104));
      [WeakRetained autoReloadSetupControllerDidCompleteWithAmount:*(*(a1 + 32) + 8) threshold:*(*(a1 + 32) + 16)];

      [*(*(a1 + 32) + 136) reportPageCompleted:1 context:0];
    }

    else
    {
      v6 = [[PKPaymentAutoReloadSetupCompleteViewController alloc] initWithPass:*(*(a1 + 32) + 40) amount:*(*(a1 + 32) + 8) threshold:*(*(a1 + 32) + 16) setupMode:*(*(a1 + 32) + 96) paymentDataProvider:*(*(a1 + 32) + 80) delegate:?];
      v7 = [*(*(a1 + 32) + 88) navigationController];
      if ([v7 pk_settings_useStateDrivenNavigation])
      {
        [v7 pk_settings_pushViewController:v6];
      }

      else
      {
        [v7 pushViewController:v6 animated:1];
      }
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 120);
  if (v9)
  {
    (*(v9 + 16))(v9, *(v8 + 56) != 0);
    v10 = *(a1 + 32);
    v11 = *(v10 + 120);
    *(v10 + 120) = 0;
  }
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  v3 = [(PKThresholdTopUpSetupViewController *)self->_thresholdTopUpSetupViewController view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5
{
  v9 = a4;
  if (v9)
  {
    objc_storeStrong(&self->_completedAutoReload, a4);
    v8 = a5;
    v8[2](v8, 0);
  }

  else
  {
    (*(a5 + 2))(a5, 1);
  }
}

@end