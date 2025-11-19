@interface PKPeerPaymentThresholdTopUpController
- (PKPeerPaymentThresholdTopUpController)initWithPeerPaymentAccount:(id)a3 pass:(id)a4 context:(int64_t)a5 passLibraryDataProvider:(id)a6 delegate:(id)a7;
- (id)_messageForErrorCode:(unint64_t)a3;
- (id)_setupCompleteImage;
- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)a3;
- (void)_presentPeerPaymentAddDebitFlow;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)peerPaymentActionController:(id)a3 hasChangedState:(unint64_t)a4;
- (void)peerPaymentActionController:(id)a3 requestPresentViewController:(id)a4;
- (void)presentTopUpFlowForRecurringPayment:(id)a3;
- (void)thresholdTopUpDidSelectCancel:(id)a3;
- (void)thresholdTopUpDidSelectContinue:(id)a3 completion:(id)a4;
- (void)thresholdTopUpDidSelectUpdate:(id)a3 completion:(id)a4;
- (void)thresholdTopUpPerformCancel:(id)a3 completion:(id)a4;
@end

@implementation PKPeerPaymentThresholdTopUpController

- (PKPeerPaymentThresholdTopUpController)initWithPeerPaymentAccount:(id)a3 pass:(id)a4 context:(int64_t)a5 passLibraryDataProvider:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = PKPeerPaymentThresholdTopUpController;
  v15 = [(PKPeerPaymentThresholdTopUpController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pass, a4);
    v16->_context = a5;
    objc_storeStrong(&v16->_account, a3);
    objc_storeWeak(&v16->_delegate, v14);
  }

  return v16;
}

- (void)presentTopUpFlowForRecurringPayment:(id)a3
{
  v4 = [MEMORY[0x1E69B9000] sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKPeerPaymentThresholdTopUpController_presentTopUpFlowForRecurringPayment___block_invoke;
  v5[3] = &unk_1E8014878;
  v5[4] = self;
  [v4 recurringPaymentsWithCompletion:v5];
}

void __77__PKPeerPaymentThresholdTopUpController_presentTopUpFlowForRecurringPayment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKPeerPaymentThresholdTopUpController_presentTopUpFlowForRecurringPayment___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __77__PKPeerPaymentThresholdTopUpController_presentTopUpFlowForRecurringPayment___block_invoke_2(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v72 = a1;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v5)
  {
    v6 = *v79;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v79 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v78 + 1) + 8 * i);
        if ([v8 type] == 3)
        {
          objc_storeStrong((*(v72 + 32) + 64), v8);
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v78 objects:v82 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v77 = 0;
  v9 = [*(*(v72 + 32) + 16) thresholdTopUpFeatureDescriptor];
  v10 = [v9 amountSuggestions];
  v71 = [v9 thresholdSuggestions];
  if ([v10 count])
  {
    v11 = [v71 count] == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(*(v72 + 32) + 16);
  v76 = 0;
  v13 = [PKPeerPaymentActionController canPerformPeerPaymentAction:1 account:v12 unableReason:&v77 displayableError:&v76];
  v70 = v76;
  v14 = *(*(v72 + 32) + 64);
  if ((v14 == 0) & ~v13 | v11)
  {
    objc_initWeak(&location, *(v72 + 32));
    v15 = v77;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __77__PKPeerPaymentThresholdTopUpController_presentTopUpFlowForRecurringPayment___block_invoke_4;
    v73[3] = &unk_1E8010998;
    objc_copyWeak(&v74, &location);
    v16 = [PKPeerPaymentActionController alertControllerForPeerPaymentActionUnableReason:v15 displayableError:v70 addCardActionHandler:v73];
    WeakRetained = objc_loadWeakRetained((*(v72 + 32) + 8));
    [WeakRetained thresholdTopUpController:*(v72 + 32) requestsPresentViewController:v16];

    objc_destroyWeak(&v74);
    objc_destroyWeak(&location);
  }

  else if (v14)
  {
    v18 = [v14 fundingSource];
    v69 = [v18 name];

    v19 = [PKThresholdTopUpSetupViewController alloc];
    v20 = [*(*(v72 + 32) + 64) amount];
    v21 = [*(*(v72 + 32) + 64) threshold];
    v22 = [*(*(v72 + 32) + 16) currentBalance];
    v23 = [v22 currency];
    v24 = [*(*(v72 + 32) + 64) fundingSource];
    v25 = [v24 fpanIdentifier];
    v26 = [(PKThresholdTopUpSetupViewController *)v19 initWithAmountSuggestions:v10 selectedAmount:v20 thresholdSuggestions:v71 selectedThreshold:v21 currencyCode:v23 paymentMethodName:v69 paymentMethodIdentifier:v25 mode:1 viewStyle:0 delegate:*(v72 + 32)];

    objc_storeWeak((*(v72 + 32) + 24), v26);
    v27 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadCrea.isa);
    [(PKThresholdTopUpSetupViewController *)v26 setTitle:v27];

    v28 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadAmou.isa);
    [(PKThresholdTopUpSetupViewController *)v26 setAmountTitle:v28];

    v29 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadThre.isa);
    [(PKThresholdTopUpSetupViewController *)v26 setThresholdTitle:v29];

    if (([*(*(v72 + 32) + 64) actions] & 2) != 0)
    {
      v30 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadCanc.isa);
      [(PKThresholdTopUpSetupViewController *)v26 setCancelTitle:v30];
    }

    if ([v69 length])
    {
      v31 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadPaym.isa);
      [(PKThresholdTopUpSetupViewController *)v26 setPaymentMethodTitle:v31];
    }

    v32 = [*(*(v72 + 32) + 64) lastExecutedTransaction];
    v33 = [*(*(v72 + 32) + 64) status];
    if (v32)
    {
      v34 = v33;
      if ((v33 - 3) <= 1 && [v32 status] == 3)
      {
        v35 = v34 == 4;
        v36 = [v32 errorCode];
        v37 = objc_alloc_init(MEMORY[0x1E695DFA0]);
        v38 = objc_alloc_init(PKDashboardPassMessage);
        v39 = [v32 identifier];
        [(PKDashboardPassMessage *)v38 setIdentifier:v39];

        if (v35)
        {
          v40 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadErro.isa);
          [(PKDashboardPassMessage *)v38 setTitle:v40];

          v41 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadErro_0.isa);
          [(PKDashboardPassMessage *)v38 setMessage:v41];

          [(PKThresholdTopUpSetupViewController *)v26 setEditingUnavailable:1];
        }

        else
        {
          v52 = [*(v72 + 32) _titleForErrorCode:v36];
          [(PKDashboardPassMessage *)v38 setTitle:v52];

          v53 = [*(v72 + 32) _messageForErrorCode:v36];
          [(PKDashboardPassMessage *)v38 setMessage:v53];

          if ([v32 exceedsAppleCashLimits])
          {
            v54 = PKLocalizedPeerPaymentRecurringString(&cfstr_PaymentErrorLe.isa);
            [(PKDashboardPassMessage *)v38 setButtonTitle:v54];

            [(PKDashboardPassMessage *)v38 setActionOnButtonPress:&__block_literal_global_75];
          }
        }

        v55 = PKPassKitUIBundle();
        v56 = [v55 URLForResource:@"MessageAlert" withExtension:@"pdf"];

        v57 = PKUIScreenScale();
        v58 = PKUIImageFromPDF(v56, 45.0, 45.0, v57);
        [(PKDashboardPassMessage *)v38 setImage:v58];
        [v37 addObject:v38];
        [(PKThresholdTopUpSetupViewController *)v26 setMessages:v37];
      }
    }

    v59 = [*(*(v72 + 32) + 16) loadFromCardFeatureDescriptor];
    v60 = [v59 supportedFundingSourceCountryCodes];
    v61 = v60;
    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v63 = MEMORY[0x1E695DFD8];
      v64 = [*(*(v72 + 32) + 16) countryCode];
      v62 = [v63 setWithObject:v64];
    }

    v65 = objc_alloc_init(MEMORY[0x1E69B8FE8]);
    v66 = [v59 merchantIdentifier];
    [v65 setMerchantIdentifier:v66];

    v67 = [v59 supportedNetworks];
    [v65 setSupportedNetworks:v67];

    [v65 setMerchantCapabilities:{objc_msgSend(v59, "merchantCapabilities")}];
    [v65 setSupportedCountries:v62];
    [v65 setPeerPaymentType:6];
    [(PKThresholdTopUpSetupViewController *)v26 setPaymentRequest:v65];
    v68 = objc_loadWeakRetained((*(v72 + 32) + 8));
    [v68 thresholdTopUpController:*(v72 + 32) requestsPushViewController:v26];
  }

  else
  {
    v42 = [PKThresholdTopUpSetupViewController alloc];
    v43 = [*(*(v72 + 32) + 16) currentBalance];
    v44 = [v43 currency];
    v45 = [(PKThresholdTopUpSetupViewController *)v42 initWithAmountSuggestions:v10 selectedAmount:0 thresholdSuggestions:v71 selectedThreshold:0 currencyCode:v44 paymentMethodName:0 paymentMethodIdentifier:0 mode:0 viewStyle:0 delegate:*(v72 + 32)];

    objc_storeWeak((*(v72 + 32) + 24), v45);
    v46 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadCrea.isa);
    [(PKPaymentSetupOptionsViewController *)v45 setTitleText:v46];

    v47 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadCrea_0.isa);
    [(PKPaymentSetupOptionsViewController *)v45 setSubtitleText:v47];

    v48 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadAmou.isa);
    [(PKThresholdTopUpSetupViewController *)v45 setAmountTitle:v48];

    v49 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadThre.isa);
    [(PKThresholdTopUpSetupViewController *)v45 setThresholdTitle:v49];

    v50 = [[PKNavigationController alloc] initWithRootViewController:v45];
    if ([(UIViewController *)v45 pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [(PKNavigationController *)v50 setModalPresentationStyle:2];
    }

    v51 = objc_loadWeakRetained((*(v72 + 32) + 8));
    [v51 thresholdTopUpController:*(v72 + 32) requestsPresentViewController:v50];
  }
}

void __77__PKPeerPaymentThresholdTopUpController_presentTopUpFlowForRecurringPayment___block_invoke_3()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/en-us/HT207884"];
  PKOpenURL();
}

void __77__PKPeerPaymentThresholdTopUpController_presentTopUpFlowForRecurringPayment___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentPeerPaymentAddDebitFlow];
}

- (id)_messageForErrorCode:(unint64_t)a3
{
  v3 = @"AUTO_RELOAD_ERROR_PROBLEM_MESSAGE_CUMULATIVE_LIMIT";
  if (a3 - 40305 > 1)
  {
    v3 = @"AUTO_RELOAD_ERROR_PROBLEM_MESSAGE_PAYMENT_METHOD";
  }

  if (a3 - 40340 >= 4)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"AUTO_RELOAD_ERROR_PROBLEM_MESSAGE_FRAUD";
  }

  v5 = PKLocalizedPeerPaymentRecurringString(&v4->isa);

  return v5;
}

- (void)_presentPeerPaymentAddDebitFlow
{
  v4 = [PKPeerPaymentActionController startProvisionToAddDebitWithNetworkAllowlist:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained thresholdTopUpController:self requestsPresentViewController:v4];
}

- (void)thresholdTopUpDidSelectCancel:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained thresholdTopUpController:self requestsDismissViewController:v4];
}

- (void)thresholdTopUpPerformCancel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPeerPaymentRecurringPayment *)self->_existingTopUp identifier];
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Cancelling threshold top up", buf, 2u);
  }

  v10 = [MEMORY[0x1E69B9020] sharedService];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__PKPeerPaymentThresholdTopUpController_thresholdTopUpPerformCancel_completion___block_invoke;
  v14[3] = &unk_1E8017498;
  v15 = v8;
  v16 = self;
  v17 = v6;
  v18 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v8;
  [v10 peerPaymentRecurringPaymentPerformAction:2 identifier:v13 completion:v14];
}

void __80__PKPeerPaymentThresholdTopUpController_thresholdTopUpPerformCancel_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__PKPeerPaymentThresholdTopUpController_thresholdTopUpPerformCancel_completion___block_invoke_3;
    v15[3] = &unk_1E8012300;
    v8 = v6;
    v9 = *(a1 + 40);
    v16 = v8;
    v17 = v9;
    v18 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], v15);

    v10 = v16;
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Deleting threshold top up from database", buf, 2u);
    }

    v12 = [MEMORY[0x1E69B9000] sharedInstance];
    v23[0] = *(a1 + 32);
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PKPeerPaymentThresholdTopUpController_thresholdTopUpPerformCancel_completion___block_invoke_125;
    v19[3] = &unk_1E8012300;
    v14 = *(a1 + 48);
    v19[4] = *(a1 + 40);
    v20 = v14;
    v21 = *(a1 + 56);
    [v12 deleteRecurringPaymentsForIdentifiers:v13 completion:v19];

    v10 = v20;
  }
}

void __80__PKPeerPaymentThresholdTopUpController_thresholdTopUpPerformCancel_completion___block_invoke_125(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PKPeerPaymentThresholdTopUpController_thresholdTopUpPerformCancel_completion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PKPeerPaymentThresholdTopUpController_thresholdTopUpPerformCancel_completion___block_invoke_2(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_loadWeakRetained((a1[4] + 8));
    [v2 thresholdTopUpController:a1[4] requestsPopViewController:a1[5]];
  }

  v3 = a1[6];
  if (v3)
  {
    (*(v3 + 16))(v3, 1);
  }
}

void __80__PKPeerPaymentThresholdTopUpController_thresholdTopUpPerformCancel_completion___block_invoke_3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling threshold top up failed with error %@", &v8, 0xCu);
  }

  v4 = [MEMORY[0x1E69B8F28] displayableErrorForError:a1[4]];
  v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, &__block_literal_global_131, 0);
  WeakRetained = objc_loadWeakRetained((a1[5] + 8));
  [WeakRetained thresholdTopUpController:a1[5] requestsPresentViewController:v5];

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }
}

- (void)thresholdTopUpDidSelectContinue:(id)a3 completion:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_actionCompletedBlock)
  {
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }

  else
  {
    v8 = _Block_copy(v6);
    actionCompletedBlock = self->_actionCompletedBlock;
    self->_actionCompletedBlock = v8;

    v10 = [MEMORY[0x1E69B9020] sharedService];
    v11 = [[PKPeerPaymentActionController alloc] initWithPaymentPass:self->_pass webService:v10 context:self->_context passLibraryDataProvider:self->_passLibraryDataProvider delegate:self];
    controller = self->_controller;
    self->_controller = v11;

    [(PKPeerPaymentActionController *)self->_controller setControllerAction:1];
    v13 = [(PKPeerPaymentAccount *)self->_account currentBalance];
    v14 = [v13 currency];

    v15 = self->_controller;
    WeakRetained = objc_loadWeakRetained(&self->_vc);
    v17 = [WeakRetained currentThreshold];
    v18 = PKCurrencyAmountMake();
    [(PKPeerPaymentActionController *)v15 setThresholdAmount:v18];

    v19 = self->_controller;
    v20 = objc_loadWeakRetained(&self->_vc);
    v21 = [v20 currentAmount];
    v22 = PKCurrencyAmountMake();
    [(PKPeerPaymentActionController *)v19 performActionWithCurrencyAmount:v22];
  }
}

- (void)thresholdTopUpDidSelectUpdate:(id)a3 completion:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_actionCompletedBlock)
  {
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }

  else
  {
    v8 = _Block_copy(v6);
    actionCompletedBlock = self->_actionCompletedBlock;
    self->_actionCompletedBlock = v8;

    v10 = [MEMORY[0x1E69B9020] sharedService];
    v11 = [[PKPeerPaymentActionController alloc] initWithPaymentPass:self->_pass webService:v10 context:self->_context passLibraryDataProvider:self->_passLibraryDataProvider delegate:self];
    controller = self->_controller;
    self->_controller = v11;

    [(PKPeerPaymentActionController *)self->_controller setControllerAction:1];
    v13 = [(PKPeerPaymentAccount *)self->_account currentBalance];
    v14 = [v13 currency];

    v15 = self->_controller;
    v16 = [(PKPeerPaymentRecurringPayment *)self->_existingTopUp identifier];
    [(PKPeerPaymentActionController *)v15 setRecurringPaymentIdentifier:v16];

    v17 = self->_controller;
    WeakRetained = objc_loadWeakRetained(&self->_vc);
    v19 = [WeakRetained currentThreshold];
    v20 = PKCurrencyAmountMake();
    [(PKPeerPaymentActionController *)v17 setThresholdAmount:v20];

    v21 = self->_controller;
    v22 = objc_loadWeakRetained(&self->_vc);
    v23 = [v22 selectedPass];
    [(PKPeerPaymentActionController *)v21 setAlternateFundingSource:v23];

    v24 = self->_controller;
    v25 = objc_loadWeakRetained(&self->_vc);
    v26 = [v25 currentAmount];
    v27 = PKCurrencyAmountMake();
    [(PKPeerPaymentActionController *)v24 performActionWithCurrencyAmount:v27];
  }
}

- (void)peerPaymentActionController:(id)a3 hasChangedState:(unint64_t)a4
{
  v6 = a3;
  if (!a4)
  {
    v12 = [MEMORY[0x1E69B9000] sharedInstance];
    v13 = [(PKPeerPaymentAccount *)self->_account currentBalance];
    v10 = [v13 currency];

    WeakRetained = objc_loadWeakRetained(&self->_vc);
    v15 = [WeakRetained currentAmount];
    v16 = PKCurrencyAmountMake();

    v17 = objc_loadWeakRetained(&self->_vc);
    v18 = [v17 currentThreshold];
    v19 = PKCurrencyAmountMake();

    v20 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "Updating local threshold top up", buf, 2u);
    }

    v21 = [v6 recurringPaymentIdentifier];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __85__PKPeerPaymentThresholdTopUpController_peerPaymentActionController_hasChangedState___block_invoke;
    v25[3] = &unk_1E80174E0;
    v25[4] = self;
    v26 = v16;
    v27 = v19;
    v28 = v12;
    v22 = v12;
    v23 = v19;
    v24 = v16;
    [v22 updateAutoReloadAmount:v24 threshold:v23 identifier:v21 completion:v25];

    goto LABEL_10;
  }

  actionCompletedBlock = self->_actionCompletedBlock;
  if (actionCompletedBlock)
  {
    actionCompletedBlock[2](actionCompletedBlock, 0);
    v8 = self->_actionCompletedBlock;
    self->_actionCompletedBlock = 0;
  }

  if (a4 - 3 <= 1)
  {
    v9 = objc_loadWeakRetained(&self->_vc);
    v10 = [v9 navigationController];

    v11 = [v10 presentedViewController];

    if (v11)
    {
      [v10 dismissViewControllerAnimated:1 completion:0];
    }

LABEL_10:
  }
}

void __85__PKPeerPaymentThresholdTopUpController_peerPaymentActionController_hasChangedState___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPeerPaymentThresholdTopUpController_peerPaymentActionController_hasChangedState___block_invoke_2;
  block[3] = &unk_1E8011C98;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__PKPeerPaymentThresholdTopUpController_peerPaymentActionController_hasChangedState___block_invoke_2(id *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 9);
  if (v3)
  {
    (*(v3 + 16))(v3, 1);
    v4 = a1[4];
    v5 = v4[9];
    v4[9] = 0;

    v2 = a1[4];
  }

  WeakRetained = objc_loadWeakRetained(v2 + 3);
  v7 = [WeakRetained mode];

  if (!v7)
  {
    v8 = [[PKExplanationViewController alloc] initWithContext:*(a1[4] + 4)];
    [(PKExplanationViewController *)v8 setShowCancelButton:0];
    v9 = [(PKExplanationViewController *)v8 navigationItem];
    [v9 setHidesBackButton:1];

    v10 = [(PKExplanationViewController *)v8 explanationView];
    [v10 setShowPrivacyView:0];
    [v10 setDelegate:a1[4]];
    [v10 setImageStyle:1];
    v11 = [a1[4] _setupCompleteImage];
    [v10 setImage:v11];

    v12 = [a1[5] minimalFormattedStringValue];
    v13 = [a1[6] minimalFormattedStringValue];
    v14 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadSetu_1.isa, &stru_1F3BD6370.isa, v12, v13);
    [v10 setBodyText:v14];

    [v10 setShowCheckmark:1];
    v15 = [v10 dockView];
    v16 = [v15 primaryButton];
    v17 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadSetu_2.isa);
    [v16 setTitle:v17 forState:0];

    v18 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadSetu_3.isa);
    [v10 setTitleText:v18];

    v19 = objc_loadWeakRetained(a1[4] + 3);
    v20 = [v19 navigationController];

    if ([v20 pk_settings_useStateDrivenNavigation])
    {
      [v20 pk_settings_pushViewController:v8];
    }

    else
    {
      [v20 pushViewController:v8 animated:1];
    }
  }

  v21 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v21, OS_LOG_TYPE_DEFAULT, "Updating recurring peer payments following successful setup", buf, 2u);
  }

  return [a1[7] updateRecurringPaymentsWithCompletion:&__block_literal_global_149_0];
}

void __85__PKPeerPaymentThresholdTopUpController_peerPaymentActionController_hasChangedState___block_invoke_146()
{
  v0 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BD026000, v0, OS_LOG_TYPE_DEFAULT, "Updated recurring peer payments after successful setup", v1, 2u);
  }
}

- (id)_setupCompleteImage
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:60.0];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"dollarsign.arrow.circlepath" withConfiguration:v2];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [v3 imageWithTintColor:v4];

  v6 = [MEMORY[0x1E69DC888] blackColor];
  v7 = PKUIImageWithBackgroundAndCornerRadius(v5, v6, 80.0, 80.0, 0.0);

  return v7;
}

- (void)peerPaymentActionController:(id)a3 requestPresentViewController:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_vc);
  v6 = [WeakRetained navigationController];

  if (v6)
  {
    [v6 presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 thresholdTopUpController:self requestsPresentViewController:v8];
  }
}

- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained presentationSceneIdentifierForTopUpController:self];

  return v5;
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained thresholdTopUpControllerCompletedSetup:self];
}

@end