@interface PKApplyTermsVerifyingViewController
- (PKApplyTermsVerifyingViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 termsIdentifiers:(id)a6 applyPage:(id)a7;
- (void)_processTerms;
- (void)_showActivationSpinner:(BOOL)a3;
- (void)_terminateSetupFlow;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKApplyTermsVerifyingViewController

- (PKApplyTermsVerifyingViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 termsIdentifiers:(id)a6 applyPage:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = PKApplyTermsVerifyingViewController;
  v16 = [(PKExplanationViewController *)&v22 initWithContext:a5];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_applyController, v12);
    v18 = [v14 copy];
    termsIdentifiers = v17->_termsIdentifiers;
    v17->_termsIdentifiers = v18;

    objc_storeStrong(&v17->_setupDelegate, a4);
    WeakRetained = objc_loadWeakRetained(&v17->_applyController);
    v17->_featureIdentifier = [WeakRetained featureIdentifier];

    objc_storeStrong(&v17->_applyPage, a7);
  }

  return v17;
}

- (void)dealloc
{
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v4 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = PKApplyTermsVerifyingViewController;
  [(PKApplyTermsVerifyingViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PKApplyTermsVerifyingViewController;
  [(PKExplanationViewController *)&v11 viewDidLoad];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  v3 = [(PKApplyTermsVerifyingViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [(PKExplanationViewController *)self explanationView];
  [v4 setShowPrivacyView:0];
  v5 = [v4 dockView];
  [v5 setPrimaryButton:0];
  v6 = [v5 footerView];
  [v6 setSetUpLaterButton:0];
  [(PKApplyTermsVerifyingViewController *)self _showActivationSpinner:1];
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  v8 = [WeakRetained preferredLanguage];

  v9 = PKLocalizedApplyFeatureString();
  [v4 setTitleText:v9];

  v10 = PKLocalizedApplyFeatureString();
  [v4 setBodyText:v10];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKApplyTermsVerifyingViewController;
  [(PKApplyTermsVerifyingViewController *)&v8 viewDidAppear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  [WeakRetained applyFlowDidAppear];

  [(PKApplyTermsVerifyingViewController *)self _processTerms];
  v5 = objc_loadWeakRetained(&self->_applyController);
  v6 = *MEMORY[0x1E69BA208];
  v9 = *MEMORY[0x1E69BA680];
  v10[0] = *MEMORY[0x1E69BA818];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 reportAnalyticsDictionaryForPage:0 pageTag:v6 additionalValues:v7];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKApplyTermsVerifyingViewController;
  [(PKApplyTermsVerifyingViewController *)&v9 viewWillDisappear:a3];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v5 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_applyController);
  v7 = *MEMORY[0x1E69BA208];
  v10 = *MEMORY[0x1E69BA680];
  v11[0] = *MEMORY[0x1E69BA820];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [WeakRetained reportAnalyticsDictionaryForPage:0 pageTag:v7 additionalValues:v8];
}

- (void)_processTerms
{
  if (!self->_isProcessingTerms)
  {
    if (!self->_inUseAssertion)
    {
      v3 = MEMORY[0x1E695FBE0];
      v4 = PKPassKitCoreBundle();
      v5 = [v3 newAssertionForBundle:v4 withReason:@"Acceping application terms"];
      inUseAssertion = self->_inUseAssertion;
      self->_inUseAssertion = v5;
    }

    WeakRetained = objc_loadWeakRetained(&self->_applyController);
    v8 = [WeakRetained preferredLanguage];

    self->_isProcessingTerms = 1;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke;
    aBlock[3] = &unk_1E8022A88;
    objc_copyWeak(&v25, &location);
    v9 = v8;
    v23 = v9;
    v24 = self;
    v10 = _Block_copy(aBlock);
    if ([(NSSet *)self->_termsIdentifiers count]< 2)
    {
      applyPage = self->_applyPage;
      v11 = objc_loadWeakRetained(&self->_applyController);
      if (applyPage)
      {
        v14 = self->_applyPage;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_13;
        v18[3] = &unk_1E8022AB0;
        v19 = v10;
        [v11 submitFieldsPage:v14 completion:v18];
        v12 = &v19;
      }

      else
      {
        v15 = [(NSSet *)self->_termsIdentifiers anyObject];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_15;
        v16[3] = &unk_1E8022AB0;
        v17 = v10;
        [v11 termsAccepted:1 termsIdentifier:v15 secondaryIdentifier:0 actionIdentifier:0 completion:v16];
        v12 = &v17;
      }
    }

    else
    {
      v11 = objc_loadWeakRetained(&self->_applyController);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_11;
      v20[3] = &unk_1E8022AB0;
      v21 = v10;
      [v11 nextViewControllerWithCompletion:v20];
      v12 = &v21;
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [MEMORY[0x1E69B87F0] sharedInstance];
      [v8 completedDiscoveryItemCTAWithCompletion:0];

      v9 = objc_loadWeakRetained(WeakRetained + 135);
      v10 = [v9 featureApplication];
      v11 = [v10 applicationState];

      if (v11 != 6)
      {
        v29 = [WeakRetained navigationController];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_3;
        v51[3] = &unk_1E8011D28;
        v52 = WeakRetained;
        [v29 pk_presentPaymentSetupViewController:v5 animated:1 completion:v51];

        v12 = v52;
        goto LABEL_12;
      }

      v12 = [WeakRetained explanationView];
      v13 = PKLocalizedApplyFeatureString();
      [v12 setTitleText:v13];

      v14 = PKLocalizedApplyFeatureString();
      [v12 setBodyText:v14];

      v15 = [v12 bodyText];
      if ([v15 length])
      {
        v16 = 4;
      }

      else
      {
        v16 = 1;
      }

      [v12 setTitleAlignment:v16];

      [WeakRetained _showActivationSpinner:0];
      v17 = [WeakRetained explanationView];
      [v17 setShowCheckmark:1];

      v18 = [WeakRetained navigationController];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_2;
      v53[3] = &unk_1E8011D28;
      v54 = WeakRetained;
      [v18 pk_presentPaymentSetupViewController:v5 animated:1 delay:2000000000 completion:v53];

      v19 = v54;
    }

    else if (v6)
    {
      v12 = PKTitleForDisplayableError();
      v39 = MEMORY[0x1BFB42D10](v6);
      v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v12 message:v39 preferredStyle:1];
      v21 = MEMORY[0x1E69DC648];
      v22 = PKLocalizedApplyFeatureString();
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_4;
      v49[3] = &unk_1E80112E8;
      v23 = WeakRetained;
      v50 = v23;
      v24 = [v21 actionWithTitle:v22 style:0 handler:v49];
      [v20 addAction:v24];

      v25 = MEMORY[0x1E69DC648];
      v26 = PKLocalizedApplyFeatureString();
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_5;
      v47[3] = &unk_1E80112E8;
      v27 = v23;
      v48 = v27;
      v28 = [v25 actionWithTitle:v26 style:1 handler:v47];
      [v20 addAction:v28];

      [v27 presentViewController:v20 animated:1 completion:0];
      v19 = v39;
    }

    else
    {
      v30 = objc_loadWeakRetained((*(a1 + 40) + 1080));
      v12 = [v30 account];

      if (!v12)
      {
        *(WeakRetained + 1104) = 0;
        [WeakRetained _showActivationSpinner:0];
        [WeakRetained _terminateSetupFlow];
        goto LABEL_12;
      }

      if (*(*(a1 + 40) + 1112) != 5)
      {
        v32 = [WeakRetained explanationView];
        v33 = PKLocalizedApplyFeatureString();
        [v32 setTitleText:v33];

        v34 = PKLocalizedApplyFeatureString();
        [v32 setBodyText:v34];

        v35 = [v32 bodyText];
        if ([v35 length])
        {
          v36 = 4;
        }

        else
        {
          v36 = 1;
        }

        [v32 setTitleAlignment:v36];

        [WeakRetained _showActivationSpinner:0];
        v37 = [WeakRetained explanationView];
        [v37 setShowCheckmark:1];

        v38 = dispatch_time(0, 2000000000);
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_6;
        v45[3] = &unk_1E8010970;
        v46 = WeakRetained;
        dispatch_after(v38, MEMORY[0x1E69E96A0], v45);

        goto LABEL_12;
      }

      v31 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_7;
      block[3] = &unk_1E8022A60;
      v41 = v12;
      objc_copyWeak(&v44, (a1 + 48));
      v42 = WeakRetained;
      v43 = *(a1 + 32);
      dispatch_after(v31, MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v44);
      v19 = v41;
    }

LABEL_12:
  }
}

uint64_t __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_2(uint64_t result, char a2)
{
  *(*(result + 32) + 1104) = 0;
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _terminateSetupFlow];
  }

  return result;
}

uint64_t __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_3(uint64_t result, char a2)
{
  *(*(result + 32) + 1104) = 0;
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _terminateSetupFlow];
  }

  return result;
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_7(id *a1)
{
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__58;
  v33[4] = __Block_byref_object_dispose__58;
  v34 = 0;
  v2 = [MEMORY[0x1E69B8400] sharedInstance];
  v3 = [a1[4] accountIdentifier];
  v4 = [MEMORY[0x1E695DF00] date];
  PKSetLastDeviceEventDateForAccountIdentifier();

  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_52;
  v29[3] = &unk_1E8012D58;
  v6 = v2;
  v30 = v6;
  v7 = v3;
  v31 = v7;
  v32 = v33;
  [v5 addOperation:v29];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_56;
  v25[3] = &unk_1E8014470;
  v28 = v33;
  v8 = v6;
  v26 = v8;
  v9 = v7;
  v27 = v9;
  [v5 addOperation:v25];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_59;
  v22[3] = &unk_1E80145B0;
  v10 = v8;
  v23 = v10;
  v11 = v9;
  v24 = v11;
  [v5 addOperation:v22];
  v12 = [MEMORY[0x1E695DFB0] null];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_2_64;
  v15[3] = &unk_1E8022A38;
  objc_copyWeak(&v21, a1 + 7);
  v13 = v11;
  v16 = v13;
  v20 = v33;
  v17 = a1[5];
  v18 = a1[6];
  v19 = a1[4];
  v14 = [v5 evaluateWithInput:v12 completion:v15];

  objc_destroyWeak(&v21);
  _Block_object_dispose(v33, 8);
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_52(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = a1[4];
  v8 = a1[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_2_53;
  v14[3] = &unk_1E8022950;
  v10 = v8;
  v11 = a1[6];
  v17 = v7;
  v18 = v11;
  v15 = v10;
  v16 = v6;
  v12 = v6;
  v13 = v7;
  [v9 accountWithIdentifier:v10 completion:v14];
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_2_53(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Created account with identifier %@ is missing on device with error %@", &v12, 0x16u);
    }
  }

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  (*(a1[6] + 16))();
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_56(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    (*(v9 + 2))(v9, v8, 0);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Updating accounts because the new account is missing on device", buf, 2u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_57;
    v15[3] = &unk_1E8022978;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v16 = v13;
    v19 = v14;
    v18 = v10;
    v17 = v8;
    [v12 updateAccountsWithCompletion:v15];
  }
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_57(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Could not update accounts with error %@", buf, 0xCu);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 accountIdentifier];
        v15 = a1[4];
        v16 = v14;
        v17 = v15;
        v18 = v17;
        if (v16 == v17)
        {

LABEL_19:
          v21 = *(a1[7] + 8);
          v22 = v13;
          v16 = *(v21 + 40);
          *(v21 + 40) = v22;
LABEL_20:

          continue;
        }

        if (v16)
        {
          v19 = v17 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {

          goto LABEL_20;
        }

        v20 = [v16 isEqualToString:v17];

        if (v20)
        {
          goto LABEL_19;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  (*(a1[6] + 16))();
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_59(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_2_60;
  v12[3] = &unk_1E8014420;
  v14 = v6;
  v15 = v7;
  v13 = v8;
  v10 = v6;
  v11 = v7;
  [v9 updatePaymentFundingSourcesForAccountIdentifier:v13 force:1 completion:v12];
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_2_60(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Could not update bank accounts with error %@", &v9, 0xCu);
    }
  }

  if ([v5 count])
  {
    v8 = [v5 pk_arrayByApplyingBlock:&__block_literal_global_226];
    PKSetFundingSourceIdsMigratedToSavings();
  }

  (*(*(a1 + 48) + 16))();
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_2_64(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_3_65;
  v8[3] = &unk_1E8022A10;
  objc_copyWeak(&v12, (a1 + 72));
  v2 = *(a1 + 32);
  v11 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v12);
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_3_65(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    PKSetAccountServiceIsNewAccountWithAccountIdentifier();
    v3 = *(a1 + 64);
    if (*(*(v3 + 8) + 40))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_4_66;
      aBlock[3] = &unk_1E80229C0;
      aBlock[4] = v3;
      v4 = _Block_copy(aBlock);
      v5 = [MEMORY[0x1E69B9000] sharedInstance];
      v6 = [v5 account];

      v7 = [v6 currentBalance];
      v8 = objc_alloc_init(PKPassPresentationContext);
      [(PKPassPresentationContext *)v8 setPresentationSource:1];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_6_75;
      v28[3] = &unk_1E8014D58;
      v29 = *(a1 + 40);
      v30 = *(a1 + 48);
      v9 = v4;
      v33 = v9;
      v10 = v8;
      v31 = v10;
      v32 = WeakRetained;
      v11 = _Block_copy(v28);
      v12 = [v7 amount];
      v13 = [MEMORY[0x1E696AB90] zero];
      v14 = [v12 compare:v13];

      if (v14 == 1)
      {
        v15 = objc_alloc_init(MEMORY[0x1E69B84E0]);
        v16 = [*(a1 + 56) accountBaseURL];
        [v15 setBaseURL:v16];

        v17 = [*(a1 + 56) accountIdentifier];
        [v15 setAccountIdentifier:v17];

        [v15 setType:2];
        [v15 setCurrencyAmount:v7];
        v18 = [MEMORY[0x1E69B8EF8] sharedService];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_8;
        v25[3] = &unk_1E80229E8;
        v26 = v10;
        v27 = v11;
        [v18 transferEligibilityWithRequest:v15 completion:v25];
      }

      else
      {
        v11[2](v11);
      }
    }

    else
    {
      v9 = [*(a1 + 40) explanationView];
      v19 = PKLocalizedApplyFeatureString();
      [v9 setTitleText:v19];

      v20 = PKLocalizedApplyFeatureString();
      [v9 setBodyText:v20];

      v21 = [v9 bodyText];
      if ([v21 length])
      {
        v22 = 4;
      }

      else
      {
        v22 = 1;
      }

      [v9 setTitleAlignment:v22];

      [*(a1 + 40) _showActivationSpinner:0];
      v23 = dispatch_time(0, 2000000000);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_10;
      v24[3] = &unk_1E8010970;
      v24[4] = WeakRetained;
      dispatch_after(v23, MEMORY[0x1E69E96A0], v24);
    }
  }
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_4_66(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(*(a1 + 32) + 8) + 40) feature];
  v8 = [v6 presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 dashboardPassGroupViewController];
    v10 = 0;
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      v10 = v8;
      if (!v10)
      {
        goto LABEL_11;
      }

LABEL_10:
      [v10 presentFeatureSetupOrFeaturePass:v7 referrerIdentifier:0 presentationContext:v5 completion:0];
      v9 = 0;
      goto LABEL_12;
    }

    v11 = v8;
    v9 = [v11 dashboardPassGroupViewController];
    v10 = [v11 passGroupsViewController];

    if (!v9)
    {
LABEL_3:
      if (!v10)
      {
LABEL_11:
        [v6 _terminateSetupFlow];
        v9 = 0;
        v10 = 0;
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  v12 = objc_alloc_init(PKAccountViewInterfaceConfiguration);
  [(PKAccountViewInterfaceConfiguration *)v12 setAccount:*(*(*(a1 + 32) + 8) + 40)];
  [(PKAccountViewInterfaceConfiguration *)v12 setDestination:0];
  [(PKAccountViewInterfaceConfiguration *)v12 setViewStyle:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_5_71;
  v13[3] = &unk_1E8011D28;
  v14 = v6;
  [(PKDashboardPassGroupViewController *)v9 presentAccountWithConfiguration:v12 presentationContext:v5 animated:0 completion:v13];

LABEL_12:
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_6_75(uint64_t a1)
{
  v2 = [*(a1 + 32) explanationView];
  v3 = PKLocalizedApplyFeatureString();
  [v2 setTitleText:v3];

  v4 = PKLocalizedApplyFeatureString();
  [v2 setBodyText:v4];

  v5 = [v2 bodyText];
  if ([v5 length])
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  [v2 setTitleAlignment:v6];

  [*(a1 + 32) _showActivationSpinner:0];
  v7 = [*(a1 + 32) explanationView];
  [v7 setShowCheckmark:1];

  v8 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_7_76;
  block[3] = &unk_1E8017D20;
  v14 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = v9;
  v13 = v10;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_9;
  v9[3] = &unk_1E8011D78;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_9(uint64_t a1)
{
  if ([*(a1 + 32) eligibility] == 1 && !*(a1 + 40))
  {
    [*(a1 + 48) setPresentationSource:2];
  }

  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_12;
  block[3] = &unk_1E8017D20;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_14;
  block[3] = &unk_1E8017D20;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PKApplyTermsVerifyingViewController__processTerms__block_invoke_16;
  block[3] = &unk_1E8017D20;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_showActivationSpinner:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v4 = [(PKExplanationViewController *)self explanationView];
  [v4 setShowSpinner:v3];
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v5 _setIdleTimerDisabled:v3 forReason:@"Submitting Application Terms"];

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"enabled";
    if (v3)
    {
      v7 = @"disabled";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = @"Submitting Application Terms";
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Idle timer is: %@ for reason: %@", &v9, 0x16u);
  }

  v8 = [v4 dockView];
  [v8 setButtonsEnabled:v3 ^ 1];
}

- (void)_terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating setup flow", v6, 2u);
  }

  setupDelegate = self->_setupDelegate;
  if (setupDelegate)
  {
    [(PKPaymentSetupViewControllerDelegate *)setupDelegate viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    v5 = [(PKApplyTermsVerifyingViewController *)self presentingViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

@end