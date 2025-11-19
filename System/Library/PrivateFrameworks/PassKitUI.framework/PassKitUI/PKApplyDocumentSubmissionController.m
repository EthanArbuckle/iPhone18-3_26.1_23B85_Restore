@interface PKApplyDocumentSubmissionController
- (PKApplyDocumentSubmissionController)initWithController:(id)a3 setupDelegate:(id)a4 documentPage:(id)a5;
- (id)nextViewController;
- (void)_cancelledConfirmed;
- (void)_featureApplicationUpdated;
- (void)contactApplePressed;
- (void)dealloc;
- (void)removeApplicationUpdateObserver;
- (void)uploadID;
- (void)userWantsToCancel;
@end

@implementation PKApplyDocumentSubmissionController

- (PKApplyDocumentSubmissionController)initWithController:(id)a3 setupDelegate:(id)a4 documentPage:(id)a5
{
  v9 = a3;
  obj = a5;
  v10 = a5;
  v11 = a4;
  v12 = [v9 context];
  v13 = [v10 acceptableDocuments];
  v14 = [v9 featureIdentifier];
  v15 = [v9 localizationBundle];
  v16 = [v9 preferredLanguage];
  v21.receiver = self;
  v21.super_class = PKApplyDocumentSubmissionController;
  v17 = [(PKPaymentDocumentSubmissionController *)&v21 initWithSetupDelegate:v11 context:v12 acceptableDocuments:v13 featureIdentifier:v14 localizationBundle:v15 preferredLanguage:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_applyController, a3);
    objc_storeStrong(&v17->_documentPage, obj);
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v17 selector:sel__featureApplicationUpdated name:@"PKApplyControllerUpdatedNotification" object:0];
  }

  return v17;
}

- (void)dealloc
{
  [(PKApplyDocumentSubmissionController *)self removeApplicationUpdateObserver];
  v3.receiver = self;
  v3.super_class = PKApplyDocumentSubmissionController;
  [(PKApplyDocumentSubmissionController *)&v3 dealloc];
}

- (void)removeApplicationUpdateObserver
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"PKApplyControllerUpdatedNotification" object:0];
}

- (id)nextViewController
{
  v3 = self->_nextViewController;
  nextViewController = self->_nextViewController;
  self->_nextViewController = 0;

  if (!v3)
  {
    v6.receiver = self;
    v6.super_class = PKApplyDocumentSubmissionController;
    v3 = [(PKPaymentDocumentSubmissionController *)&v6 nextViewController];
  }

  return v3;
}

- (void)uploadID
{
  if ([(PKPaymentDocumentSubmissionController *)self state]!= 5)
  {
    [(PKPaymentDocumentSubmissionController *)self setState:5];
    self->_isLoading = 1;
    objc_initWeak(&location, self);
    applyController = self->_applyController;
    documentPage = self->_documentPage;
    v5 = [(PKPaymentDocumentSubmissionController *)self selectedDocument];
    v6 = [(PKPaymentDocumentSubmissionController *)self frontID];
    v7 = [(PKPaymentDocumentSubmissionController *)self backID];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PKApplyDocumentSubmissionController_uploadID__block_invoke;
    v8[3] = &unk_1E801F0A0;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    [(PKApplyController *)applyController submitDocumentPage:documentPage selectedDocument:v5 frontImage:v6 backImage:v7 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __47__PKApplyDocumentSubmissionController_uploadID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained state];
    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    [v10 setIdleTimerDisabled:0];

    if (v6)
    {
      v11 = [v6 userInfo];
      v12 = *MEMORY[0x1E696AA08];
      v13 = [v11 objectForKey:*MEMORY[0x1E696AA08]];

      v14 = [v13 domain];
      v15 = [v14 isEqualToString:*MEMORY[0x1E6997D50]];

      if (v15)
      {
        v16 = [v13 code];
        if (v16 == 40102)
        {
          v17 = v8;
          v18 = 8;
        }

        else if (v16 == 40101)
        {
          v17 = v8;
          v18 = 4;
        }

        else
        {
          v17 = v8;
          v18 = 11;
        }

        [v17 setState:v18];
      }

      else
      {
        v21 = [v6 userInfo];
        v22 = [v21 objectForKey:v12];

        v23 = [v22 code];
        v24 = 11;
        if (v23 == 60059)
        {
          v24 = 8;
        }

        if (v23 == 60058)
        {
          v25 = 4;
        }

        else
        {
          v25 = v24;
        }

        [v8 setState:v25];
      }
    }

    else
    {
      if (v26)
      {
        [v8 removeApplicationUpdateObserver];
        objc_storeStrong(v8 + 13, a2);
        v19 = v8;
        v20 = 7;
      }

      else
      {
        v19 = v8;
        v20 = 6;
      }

      [v19 setState:v20];
    }

    if (v9 != [v8 state])
    {
      [v8 stateChanged];
    }

    *(*(a1 + 32) + 128) = 0;
  }
}

- (void)contactApplePressed
{
  if (+[PKBusinessChatController deviceSupportsBusinessChat])
  {
    v3 = [(PKApplyController *)self->_applyController featureApplication];
    v4 = [v3 businessChatIdentifier];

    if (v4)
    {
      if (!self->_businessChatController)
      {
        v5 = objc_alloc_init(PKBusinessChatController);
        businessChatController = self->_businessChatController;
        self->_businessChatController = v5;
      }

      v7 = [[PKBuinessChatApplyContext alloc] initWithIdentifier:v4 intent:2];
      v8 = self->_businessChatController;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__PKApplyDocumentSubmissionController_contactApplePressed__block_invoke;
      v9[3] = &unk_1E8013908;
      v9[4] = self;
      [(PKBusinessChatController *)v8 openBusinessChatWithContext:v7 completion:v9];
    }
  }
}

void __58__PKApplyDocumentSubmissionController_contactApplePressed__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__PKApplyDocumentSubmissionController_contactApplePressed__block_invoke_2;
    v7[3] = &unk_1E8010A10;
    v5 = v3;
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void __58__PKApplyDocumentSubmissionController_contactApplePressed__block_invoke_2(uint64_t a1)
{
  v3 = PKAlertForDisplayableErrorWithHandlers(*(a1 + 32), 0, 0, 0);
  v2 = [*(a1 + 40) delegate];
  [v2 presentViewController:v3 animated:1 completion:0];
}

- (void)_featureApplicationUpdated
{
  v21 = *MEMORY[0x1E69E9840];
  isLoading = self->_isLoading;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isLoading)
  {
    if (v5)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@ Application update received but current view controller is loading - skipping update", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@ Application update received presenting next step", buf, 0xCu);
    }

    v10 = [(PKPaymentDocumentSubmissionController *)self delegate];
    applyController = self->_applyController;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __65__PKApplyDocumentSubmissionController__featureApplicationUpdated__block_invoke;
    v16 = &unk_1E8010A10;
    v17 = v10;
    v18 = self;
    v4 = v10;
    v12 = [(PKApplyController *)applyController applicationUpdatedAlertControllerWithHandler:&v13];
    [v4 presentViewController:v12 animated:1 completion:0, v13, v14, v15, v16];
  }
}

void __65__PKApplyDocumentSubmissionController__featureApplicationUpdated__block_invoke(uint64_t a1)
{
  [*(a1 + 32) captureController:*(a1 + 40) showLoading:1];
  v2 = *(*(a1 + 40) + 96);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PKApplyDocumentSubmissionController__featureApplicationUpdated__block_invoke_2;
  v5[3] = &unk_1E801CDE0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 nextViewControllerWithCompletion:v5];
}

void __65__PKApplyDocumentSubmissionController__featureApplicationUpdated__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) captureController:*(a1 + 40) showLoading:0];
  if (v8)
  {
    v6 = [*(a1 + 32) navigationController];
    [v6 pk_presentPaymentSetupViewController:v8 animated:1 completion:0];
  }

  else if (v5)
  {
    v7 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
    [*(a1 + 32) presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [*(a1 + 40) terminateSetupFlow];
  }
}

- (void)_cancelledConfirmed
{
  v2.receiver = self;
  v2.super_class = PKApplyDocumentSubmissionController;
  [(PKPaymentDocumentSubmissionController *)&v2 userWantsToCancel];
}

- (void)userWantsToCancel
{
  if (!self->_isCancelling)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PKApplyDocumentSubmissionController_userWantsToCancel__block_invoke;
    aBlock[3] = &unk_1E8010970;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    v4 = [(PKPaymentDocumentSubmissionController *)self delegate];
    v5 = [(PKApplyController *)self->_applyController cancelAlertWithContinueAction:v3];
    if (v5)
    {
      [v4 presentViewController:v5 animated:1 completion:0];
    }

    else
    {
      v3[2](v3);
    }
  }
}

void __56__PKApplyDocumentSubmissionController_userWantsToCancel__block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(v1 + 96);
  v4 = *(v1 + 120);
  v5 = *MEMORY[0x1E69BA440];
  v13[0] = *MEMORY[0x1E69BA680];
  v13[1] = v5;
  v6 = *MEMORY[0x1E69BA448];
  v14[0] = *MEMORY[0x1E69BA6F0];
  v14[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v3 reportAnalyticsDictionaryForPage:v4 pageTag:*MEMORY[0x1E69BA1C0] additionalValues:v7];

  v8 = [*v2 delegate];
  [v8 captureController:*v2 showLoading:1];

  *(*v2 + 129) = 1;
  objc_initWeak(&location, *v2);
  v9 = *(*v2 + 12);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__PKApplyDocumentSubmissionController_userWantsToCancel__block_invoke_2;
  v10[3] = &unk_1E80162F0;
  objc_copyWeak(&v11, &location);
  [v9 withdrawApplicationWithCompletion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __56__PKApplyDocumentSubmissionController_userWantsToCancel__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained delegate];
    [v8 captureController:v7 showLoading:0];
    v7[129] = 0;
    if (v10)
    {
      v9 = [v8 navigationController];
      [v9 pk_presentPaymentSetupViewController:v10 animated:1 completion:0];
    }

    else
    {
      if (!v5)
      {
        [v7 _cancelledConfirmed];
        goto LABEL_7;
      }

      v9 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
      [v8 presentViewController:v9 animated:1 completion:0];
    }

LABEL_7:
  }
}

@end