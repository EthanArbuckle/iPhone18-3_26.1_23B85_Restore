@interface PKApplyOfferViewController
- (PKApplyOfferViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 applyPage:(id)a6;
- (id)analyticsAdditionalValues;
- (id)analyticsPageTag;
- (void)_openTermsAndConditions;
- (void)_setupForBroadwayApplication:(id)a3;
- (void)_terminateApplyFlowWithoutDeclining;
- (void)_termsAccepted:(BOOL)a3 actionIdentifier:(id)a4;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKApplyOfferViewController

- (PKApplyOfferViewController)initWithController:(id)a3 setupDelegate:(id)a4 context:(int64_t)a5 applyPage:(id)a6
{
  v10 = a3;
  v22.receiver = self;
  v22.super_class = PKApplyOfferViewController;
  v11 = [(PKApplyExplanationViewController *)&v22 initWithController:v10 setupDelegate:a4 context:a5 applyPage:a6];
  if (v11)
  {
    v12 = [v10 featureApplication];
    v13 = [v12 applicationOfferDetails];

    v14 = [v13 detailsInfo];
    v15 = [v13 offerTermsIdentifier];
    offerTermsIdentifier = v11->_offerTermsIdentifier;
    v11->_offerTermsIdentifier = v15;

    v17 = [v10 installmentConfiguration];
    installmentConfiguration = v11->_installmentConfiguration;
    v11->_installmentConfiguration = v17;

    if ([v14 layout])
    {
      v19 = [v14 layout];
    }

    else if (v11->_installmentConfiguration)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v11->_layout = v19;
    v20 = [v10 featureApplication];
    v11->_hasSufficientOTBForInstallment = [v20 hasSufficientOTBForInstallmentConfiguration:v11->_installmentConfiguration];
  }

  return v11;
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
  v5.super_class = PKApplyOfferViewController;
  [(PKApplyOfferViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKApplyOfferViewController;
  [(PKApplyExplanationViewController *)&v8 viewDidLoad];
  v3 = [(PKApplyExplanationViewController *)self controller];
  v4 = [v3 featureApplication];

  v5 = [v4 feature];
  if (v5 <= 5)
  {
    if (v5 == 2)
    {
      [(PKApplyOfferViewController *)self _setupForBroadwayApplication:v4];
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Error: Unsupported feature cannot present UI", v7, 2u);
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyOfferViewController;
  [(PKApplyExplanationViewController *)&v5 viewDidAppear:a3];
  v4 = [(PKApplyExplanationViewController *)self controller];
  [v4 termsShownWithIdentifier:self->_offerTermsIdentifier];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKApplyOfferViewController;
  [(PKApplyOfferViewController *)&v6 viewWillDisappear:a3];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v5 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }
}

- (void)preflightWithCompletion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_heroImage)
  {
    if (v4)
    {
LABEL_3:
      v5[2](v5, 1);
    }
  }

  else
  {
    v6 = [(PKApplyExplanationViewController *)self currentPage];
    v7 = [v6 heroImageURL];

    if (v7)
    {
      v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
      v9 = PKLogFacilityTypeGetObject();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKApplyOfferViewController preflighting", buf, 2u);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__PKApplyOfferViewController_preflightWithCompletion___block_invoke;
        aBlock[3] = &unk_1E8017E48;
        aBlock[4] = self;
        v19 = v7;
        v20 = v5;
        v11 = _Block_copy(aBlock);
        v12 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
        v13 = [v12 cachedDataForURL:v8];

        if (v13)
        {
          v11[2](v11, v13);
        }

        else
        {
          v15 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __54__PKApplyOfferViewController_preflightWithCompletion___block_invoke_2;
          v16[3] = &unk_1E8013E70;
          v17 = v11;
          [v15 downloadFromUrl:v8 completionHandler:v16];
        }
      }

      else
      {
        if (v10)
        {
          *buf = 138412290;
          v22 = v7;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Could not create valid URL for :%@", buf, 0xCu);
        }

        if (v5)
        {
          v5[2](v5, 1);
        }
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKApplyOfferViewController - nothing to preflight", buf, 2u);
      }

      if (v5)
      {
        goto LABEL_3;
      }
    }
  }
}

void __54__PKApplyOfferViewController_preflightWithCompletion___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] imageWithData:v3];
    v5 = a1[4];
    v6 = *(v5 + 1280);
    *(v5 + 1280) = v4;

    v7 = *(a1[4] + 1280);
    v8 = PKLogFacilityTypeGetObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = a1[5];
        *buf = 138543362;
        v17 = v10;
        v11 = "Created image for URL: %{public}@";
LABEL_7:
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }
    }

    else if (v9)
    {
      v12 = a1[5];
      *buf = 138543362;
      v17 = v12;
      v11 = "Failed to create image for URL: %{public}@";
      goto LABEL_7;
    }
  }

  v13 = a1[6];
  if (v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PKApplyOfferViewController_preflightWithCompletion___block_invoke_22;
    block[3] = &unk_1E8010B50;
    v15 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Offer terms accepted", v16, 2u);
  }

  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = *MEMORY[0x1E69BA440];
  v17[0] = *MEMORY[0x1E69BA680];
  v17[1] = v6;
  v7 = *MEMORY[0x1E69BA288];
  v18[0] = *MEMORY[0x1E69BA6F0];
  v18[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v9 = [v5 initWithDictionary:v8];

  v10 = [(PKApplyOfferViewController *)self analyticsAdditionalValues];
  [v9 addEntriesFromDictionary:v10];

  v11 = [(PKApplyExplanationViewController *)self controller];
  v12 = [(PKApplyExplanationViewController *)self currentPage];
  v13 = [(PKApplyOfferViewController *)self analyticsPageTag];
  [v11 reportAnalyticsDictionaryForPage:v12 pageTag:v13 additionalValues:v9];

  v14 = [(PKApplyExplanationViewController *)self currentPage];
  v15 = [v14 primaryActionIdentifier];
  [(PKApplyOfferViewController *)self _termsAccepted:1 actionIdentifier:v15];
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = *MEMORY[0x1E69BA440];
  v19[0] = *MEMORY[0x1E69BA680];
  v19[1] = v5;
  v6 = *MEMORY[0x1E69BA430];
  v20[0] = *MEMORY[0x1E69BA6F0];
  v20[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v8 = [v4 initWithDictionary:v7];

  v9 = [(PKApplyOfferViewController *)self analyticsAdditionalValues];
  [v8 addEntriesFromDictionary:v9];

  v10 = [(PKApplyExplanationViewController *)self controller];
  v11 = [(PKApplyExplanationViewController *)self currentPage];
  v12 = [(PKApplyOfferViewController *)self analyticsPageTag];
  [v10 reportAnalyticsDictionaryForPage:v11 pageTag:v12 additionalValues:v8];

  installmentConfiguration = self->_installmentConfiguration;
  v14 = PKLogFacilityTypeGetObject();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (installmentConfiguration)
  {
    if (v15)
    {
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Dismissing installment apply without declining", v18, 2u);
    }

    [(PKApplyOfferViewController *)self _terminateApplyFlowWithoutDeclining];
  }

  else
  {
    if (v15)
    {
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Offer terms declined", v18, 2u);
    }

    v16 = [(PKApplyExplanationViewController *)self currentPage];
    v17 = [v16 secondaryActionIdentifier];
    [(PKApplyOfferViewController *)self _termsAccepted:0 actionIdentifier:v17];
  }
}

- (id)analyticsPageTag
{
  if (self->_installmentConfiguration)
  {
    v2 = MEMORY[0x1E69BA1E8];
  }

  else
  {
    v2 = MEMORY[0x1E69BA1F0];
  }

  return *v2;
}

- (id)analyticsAdditionalValues
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = PKFeatureApplicationOfferDetailsInfoLayoutToString();
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69BAA50]];

  v4 = [v2 copy];

  return v4;
}

- (void)_setupForBroadwayApplication:(id)a3
{
  v4 = a3;
  v59 = [(PKApplyExplanationViewController *)self currentPage];
  v5 = [(PKExplanationViewController *)self explanationView];
  v6 = [v4 feature];
  v7 = [v4 applicationOfferDetails];
  v62 = [v7 detailsInfo];
  v8 = [(PKApplyExplanationViewController *)self controller];
  v63 = [v8 preferredLanguage];

  v9 = [(PKApplyOfferViewController *)self heroImage];
  v10 = [v4 applicationType];
  v11 = self->_layout == 2 || v10 == 2;
  v55 = v9;
  if (v11)
  {
    v12 = PKFeatureApplicationHeaderImageWithImage(v6, v9);
    [v5 setImage:v12];
    [v5 setTopMargin:30.0];
  }

  else
  {
    if (v9)
    {
      [v5 setImage:v9];
      goto LABEL_11;
    }

    v12 = PKProvisioningSecondaryBackgroundColor();
    [v5 setTopBackgroundColor:v12];
    v13 = [[PKApplyHeroCardView alloc] initWithFeatureIdentifier:v6];
    [(PKApplyHeroCardView *)v13 setBackgroundColor:v12];
    [v5 setHeroView:v13];
  }

LABEL_11:
  v14 = [v7 aprForPurchase];
  v57 = v14;
  if (v14)
  {
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v16 setNumberStyle:3];
    if (([v15 pk_isIntegralNumber] & 1) == 0)
    {
      [v16 setMinimumFractionDigits:2];
    }

    v56 = [v16 stringFromNumber:v57];
  }

  else
  {
    v56 = @"-";
  }

  objc_initWeak(location, self);
  v17 = MEMORY[0x1E69DC628];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __59__PKApplyOfferViewController__setupForBroadwayApplication___block_invoke;
  v64[3] = &unk_1E8010A60;
  objc_copyWeak(&v65, location);
  v61 = [v17 actionWithHandler:v64];
  v18 = [v62 disclosureTitle];
  v19 = v18;
  if (v18)
  {
    v60 = v18;
  }

  else
  {
    v60 = PKLocalizedApplyFeatureString();
  }

  v20 = objc_alloc_init(PKApplyOfferCreditCardView);
  offerView = self->_offerView;
  self->_offerView = v20;

  v58 = PKOBKLearnMoreButton(@"info.circle.fill", v60, v61);
  v22 = [v5 dockView];
  [v22 setAdditionalView:v58];

  v23 = [v59 body];
  if (self->_layout != 2)
  {
    v24 = [v7 currencyCode];
    v52 = PKMutableNumberFormatterForCurrencyCode();
    v50 = [v52 minimumFractionDigits];
    v25 = [(PKApplyOfferCreditCardView *)self->_offerView creditLimitTitleLabel];
    v26 = PKLocalizedApplyFeatureString();
    [v25 setText:v26];

    v54 = [v7 creditLimit];
    v53 = @"-";
    if (v24 && v54)
    {
      if ([v54 pk_isIntegralNumber])
      {
        v27 = 0;
      }

      else
      {
        v27 = v50;
      }

      [v52 setMinimumFractionDigits:v27];
      v53 = [v52 stringFromNumber:v54];
    }

    v28 = [(PKApplyOfferCreditCardView *)self->_offerView creditLimitLabel];
    [v28 setText:v53];

    v29 = [(PKApplyOfferCreditCardView *)self->_offerView aprForPurchaseTitleLabel];
    v30 = PKLocalizedApplyFeatureString();
    [v29 setText:v30];

    v31 = [(PKApplyOfferCreditCardView *)self->_offerView aprForPurchaseLabel];
    [v31 setText:v56];

    v32 = [v4 applicationType];
    if (v32 < 2)
    {
      v36 = [(PKApplyOfferCreditCardView *)self->_offerView feeTitleLabel];
      v37 = PKLocalizedApplyFeatureString();
      [v36 setText:v37];
      v51 = v24;

      v38 = [v7 annualFee];
      v39 = [MEMORY[0x1E696AB90] zero];
      v40 = [v38 isEqualToNumber:v39];

      if (v40)
      {
        v41 = PKLocalizedApplyFeatureString();
      }

      else
      {
        v41 = @"-";
        if (v51 && v38)
        {
          v42 = PKMutableNumberFormatterForCurrencyCode();
          if ([v38 pk_isIntegralNumber])
          {
            v43 = 0;
          }

          else
          {
            v43 = v50;
          }

          [v42 setMinimumFractionDigits:v43];
          v41 = [v42 stringFromNumber:v38];
        }
      }

      v44 = [(PKApplyOfferCreditCardView *)self->_offerView feeLabel];
      [v44 setText:v41];
    }

    else
    {
      if (v32 - 2 > 1)
      {
LABEL_42:

        goto LABEL_43;
      }

      v33 = [v7 balance];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = [MEMORY[0x1E696AB90] zero];
      }

      v41 = v35;

      v45 = [(PKApplyOfferCreditCardView *)self->_offerView feeTitleLabel];
      v46 = PKLocalizedApplyFeatureString();
      [v45 setText:v46];
      v51 = v24;

      v47 = [v7 currencyCode];
      v48 = PKCurrencyAmountMake();
      v38 = [v48 formattedStringValue];

      v44 = [(PKApplyOfferCreditCardView *)self->_offerView feeLabel];
      [v44 setText:v38];
    }

    v24 = v51;
    goto LABEL_42;
  }

LABEL_43:
  v49 = [(PKApplyOfferCreditCardView *)self->_offerView bodyLabel];
  [v49 setText:v23];

  [v5 setBodyView:self->_offerView];
  objc_destroyWeak(&v65);
  objc_destroyWeak(location);
}

void __59__PKApplyOfferViewController__setupForBroadwayApplication___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openTermsAndConditions];
}

- (void)_openTermsAndConditions
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = *MEMORY[0x1E69BB170];
  v19[0] = *MEMORY[0x1E69BA680];
  v19[1] = v4;
  v5 = *MEMORY[0x1E69BB310];
  v20[0] = *MEMORY[0x1E69BA7C8];
  v20[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v7 = [v3 initWithDictionary:v6];

  v8 = [(PKApplyOfferViewController *)self analyticsAdditionalValues];
  [v7 addEntriesFromDictionary:v8];

  v9 = [(PKApplyExplanationViewController *)self controller];
  v10 = [(PKApplyExplanationViewController *)self currentPage];
  v11 = [(PKApplyOfferViewController *)self analyticsPageTag];
  [v9 reportAnalyticsDictionaryForPage:v10 pageTag:v11 additionalValues:v7];

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Opening offer terms and conditions", v18, 2u);
  }

  v13 = [PKApplyTermsAndConditionsViewController alloc];
  v14 = [(PKApplyExplanationViewController *)self controller];
  v15 = [(PKApplyExplanationViewController *)self setupDelegate];
  v16 = [(PKApplyTermsAndConditionsViewController *)v13 initWithController:v14 setupDelegate:v15 context:[(PKExplanationViewController *)self context] termsIdentifier:self->_offerTermsIdentifier];

  [(PKFeatureTermsAndConditionsViewController *)v16 setUseModalPresentation:1];
  v17 = [(PKApplyOfferViewController *)self navigationController];
  [v17 pk_presentPaymentSetupViewController:v16 animated:1 completion:0];
}

- (void)_terminateApplyFlowWithoutDeclining
{
  v3 = [(PKApplyExplanationViewController *)self setupDelegate];
  v4 = v3;
  if (self->_installmentConfiguration)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    [(PKApplyExplanationViewController *)self terminateSetupFlow];
  }

  else
  {
    v6 = [(PKApplyExplanationViewController *)self controller];
    v7 = [v6 featureApplication];

    [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PKApplyOfferViewController__terminateApplyFlowWithoutDeclining__block_invoke;
    v8[3] = &unk_1E8010998;
    objc_copyWeak(&v9, &location);
    [v4 viewController:self canProceedWithInstallment:0 featureApplication:v7 completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __65__PKApplyOfferViewController__terminateApplyFlowWithoutDeclining__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKApplyOfferViewController__terminateApplyFlowWithoutDeclining__block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __65__PKApplyOfferViewController__terminateApplyFlowWithoutDeclining__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showNavigationBarSpinner:0];
    [v2 terminateSetupFlow];
    WeakRetained = v2;
  }
}

- (void)_termsAccepted:(BOOL)a3 actionIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!self->_inUseAssertion)
  {
    v7 = MEMORY[0x1E695FBE0];
    v8 = PKPassKitCoreBundle();
    v9 = [v7 newAssertionForBundle:v8 withReason:@"Accepting application terms"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v9;
  }

  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  v11 = [(PKApplyExplanationViewController *)self controller];
  offerTermsIdentifier = self->_offerTermsIdentifier;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke;
  v13[3] = &unk_1E801CA18;
  objc_copyWeak(&v14, &location);
  v15 = v4;
  v13[4] = self;
  [v11 termsAccepted:v4 termsIdentifier:offerTermsIdentifier secondaryIdentifier:0 actionIdentifier:v6 completion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 48) == 1 && *(*(a1 + 32) + 1264))
    {
      v8 = [MEMORY[0x1E695DF00] date];
      PKSharedCacheSetObjectForKey();
    }

    v9 = [*(a1 + 32) setupDelegate];
    v10 = v9;
    if (*(*(a1 + 32) + 1264))
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      [WeakRetained handleNextViewController:v5 displayableError:v6];
    }

    else
    {
      v12 = [WeakRetained controller];
      v13 = [v12 featureApplication];

      if (*(a1 + 48) == 1)
      {
        v14 = *(*(a1 + 32) + 1272);
      }

      else
      {
        v14 = 0;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke_2;
      v15[3] = &unk_1E8010A88;
      v16 = WeakRetained;
      v17 = v5;
      v18 = v6;
      [v10 viewController:v16 canProceedWithInstallment:v14 & 1 featureApplication:v13 completion:v15];
    }
  }
}

void __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke_2(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke_3;
  block[3] = &unk_1E8010A88;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end