@interface PKPaymentReaderModeDetailsViewController
- (PKPaymentReaderModeDetailsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 product:(id)a5 delegate:(id)a6;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)visibleFieldIdentifiers;
- (void)_downloadCardArtIfNecessary:(id)a3;
- (void)_prepareForProvisioningViewController;
- (void)_pushReaderModeProvisioningWithCompletion:(id)a3;
- (void)_registerLocalDeviceWithCompletion:(id)a3;
- (void)_showTerms;
- (void)handleNextButtonTapped:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PKPaymentReaderModeDetailsViewController

- (PKPaymentReaderModeDetailsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 product:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([objc_opt_class() readerModeProvisioningIsSupported])
  {
    v58.receiver = self;
    v58.super_class = PKPaymentReaderModeDetailsViewController;
    v13 = [(PKPaymentSetupProvisioningFieldsViewController *)&v58 initWithProvisioningController:v10 context:a4 setupDelegate:0];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_product, a5);
      v14->_termsAccepted = 0;
      objc_storeWeak(&v14->_delegate, v12);
      v15 = [(PKPaymentSetupProduct *)v14->_product provisioningMethodMetadataForType:*MEMORY[0x1E69BC148]];
      self = v15;
      v40 = v11;
      if (v15)
      {
        v16 = [(PKPaymentReaderModeDetailsViewController *)v15 requiredFields];
        v17 = [(PKPaymentReaderModeDetailsViewController *)self readerModeResources];
        v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BC168]];
        v19 = [v18 objectForKeyedSubscript:@"welcome"];

        v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69BC140]];
        titleText = v14->_titleText;
        v14->_titleText = v20;

        v22 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69BC138]];
        subtitleText = v14->_subtitleText;
        v14->_subtitleText = v22;
      }

      else
      {
        v16 = [(PKPaymentSetupProduct *)v14->_product requiredFields];
      }

      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v16];
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v57 = 0;
      v50 = 0;
      v51 = &v50;
      v52 = 0x2020000000;
      v53 = 0;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __100__PKPaymentReaderModeDetailsViewController_initWithProvisioningController_context_product_delegate___block_invoke;
      v42[3] = &unk_1E80152D8;
      v41 = v27;
      v43 = v41;
      v28 = v24;
      v44 = v28;
      v29 = v25;
      v45 = v29;
      v30 = v26;
      v46 = v30;
      v48 = &v54;
      v31 = v16;
      v47 = v31;
      v49 = &v50;
      v32 = v28;
      [v31 enumerateObjectsUsingBlock:v42];
      if ((v55[3] & 1) == 0)
      {
        v33 = [v41 copy];
        [v29 addObject:v33];
      }

      if (*(v51 + 24) == 1)
      {
        v34 = [(PKPaymentSetupFieldsViewController *)v14 fieldsModel];
        v35 = [v28 copy];
        [v34 updateWithPaymentSetupFields:v30 footerFields:v35];

        [(PKPaymentSetupFieldsViewController *)v14 setSectionIdentifiers:v29];
      }

      else
      {
        v36 = [(PKPaymentSetupFieldsViewController *)v14 fieldsModel];
        [v36 updateWithPaymentSetupFields:v31];
      }

      v37 = dispatch_group_create();
      nextScreenGroup = v14->_nextScreenGroup;
      v14->_nextScreenGroup = v37;

      [(PKPaymentReaderModeDetailsViewController *)v14 _prepareForProvisioningViewController];
      _Block_object_dispose(&v50, 8);
      _Block_object_dispose(&v54, 8);

      v11 = v40;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __100__PKPaymentReaderModeDetailsViewController_initWithProvisioningController_context_product_delegate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 isFieldTypeLabel])
  {
    v6 = [*(a1 + 32) firstObject];
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      v22[0] = v5;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v8 setValue:v9 forKey:v7];

      v10 = *(a1 + 48);
      v11 = [*(a1 + 32) copy];
      [v10 addObject:v11];

      [*(a1 + 32) removeAllObjects];
      [*(a1 + 56) removeObject:v5];
      *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 64) count] - 1 == a3;
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    else
    {
      if ([*(a1 + 48) count])
      {
        v14 = [*(a1 + 48) lastObject];
      }

      else
      {
        v14 = 0;
      }

      if ([v14 count] && (objc_msgSend(v14, "firstObject"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = v15;
        v16 = objc_alloc(MEMORY[0x1E695DF70]);
        v17 = [*(a1 + 40) objectForKey:v7];
        v18 = [v16 initWithArray:v17];

        [v18 addObject:v5];
        v19 = *(a1 + 40);
        v20 = [v18 copy];
        [v19 setValue:v20 forKey:v7];

        *(*(*(a1 + 72) + 8) + 24) = [v18 count] - 1 == a3;
        *(*(*(a1 + 80) + 8) + 24) = 1;
      }

      else
      {
        v21 = *(a1 + 32);
        v18 = [v5 identifier];
        [v21 addObject:v18];
        v7 = 0;
      }
    }
  }

  else if (([v5 isFieldTypeFooter] & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = [v5 identifier];
    [v12 addObject:v13];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentReaderModeDetailsViewController;
  [(PKPaymentSetupFieldsViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKPaymentReaderModeDetailsViewController;
  [(PKPaymentReaderModeDetailsViewController *)&v8 viewDidDisappear:a3];
  v4 = [(PKPaymentReaderModeDetailsViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 containsObject:self];

  if ((v6 & 1) == 0)
  {
    v7 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
    [v7 resetAllPaymentSetupFieldValues];
  }
}

- (void)handleNextButtonTapped:(id)a3
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PKPaymentReaderModeDetailsViewController_handleNextButtonTapped___block_invoke;
  v4[3] = &unk_1E8013D38;
  v4[4] = self;
  [(PKPaymentReaderModeDetailsViewController *)self _registerLocalDeviceWithCompletion:v4];
}

void __67__PKPaymentReaderModeDetailsViewController_handleNextButtonTapped___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = v5;
  if (a2)
  {
    [v6 _showTerms];
  }

  else
  {
    [v6[171] reportError:v5 context:0];
    v7 = PKAlertForDisplayableErrorWithHandlers(v9, 0, 0, 0);
    v8 = [*(a1 + 32) navigationController];
    [v8 presentViewController:v7 animated:1 completion:0];
  }
}

- (void)_registerLocalDeviceWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69B8EF8] sharedService];
    if ([v5 needsRegistration])
    {
      [(PKPaymentSetupFieldsViewController *)self showActivitySpinnerWithTitle:0 subtitle:0];
      v6 = MEMORY[0x1E69B8D58];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __79__PKPaymentReaderModeDetailsViewController__registerLocalDeviceWithCompletion___block_invoke;
      v7[3] = &unk_1E8015350;
      v8 = v5;
      v9 = self;
      v10 = v4;
      [v6 configureWebServiceIfNecessary:v8 completion:v7];
    }

    else
    {
      (*(v4 + 2))(v4, 1, 0);
    }
  }
}

void __79__PKPaymentReaderModeDetailsViewController__registerLocalDeviceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) registrationSetupSupportedInRegion])
  {
    v4 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:*(a1 + 32)];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__PKPaymentReaderModeDetailsViewController__registerLocalDeviceWithCompletion___block_invoke_2;
    v9[3] = &unk_1E8015328;
    v5 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v4;
    v11 = v5;
    v6 = v4;
    [v6 validatePreconditionsAndRegister:v9];
  }

  else
  {
    [*(a1 + 40) hideActivitySpinner];
    v7 = *(a1 + 48);
    v8 = PKDisplayableErrorForCommonType();
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __79__PKPaymentReaderModeDetailsViewController__registerLocalDeviceWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKPaymentReaderModeDetailsViewController__registerLocalDeviceWithCompletion___block_invoke_3;
  block[3] = &unk_1E8015300;
  block[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v12 = a2;
  v11 = v6;
  v9 = v5;
  v10 = *(a1 + 40);
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __79__PKPaymentReaderModeDetailsViewController__registerLocalDeviceWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) hideActivitySpinner];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)_showTerms
{
  v3 = [(PKPaymentSetupProduct *)self->_product termsURL];
  v4 = v3;
  if (v3 && !self->_termsAccepted)
  {
    [(PKPaymentSetupFieldsViewController *)self showActivitySpinnerWithTitle:0 subtitle:0];
    v6 = [PKProvisioningTermsPresenter alloc];
    v7 = [(PKPaymentSetupFieldsViewController *)self webService];
    v8 = [v7 context];
    v9 = -[PKProvisioningTermsPresenter initWithAllowNonSecureHTTP:paymentSetupContext:](v6, "initWithAllowNonSecureHTTP:paymentSetupContext:", [v8 devSigned], -[PKPaymentSetupTableViewController context](self, "context"));
    termsPresenter = self->_termsPresenter;
    self->_termsPresenter = v9;

    v11 = self->_termsPresenter;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__PKPaymentReaderModeDetailsViewController__showTerms__block_invoke;
    v15[3] = &unk_1E8013D38;
    v15[4] = self;
    [(PKProvisioningTermsPresenter *)v11 presentWithTermsUrl:v4 forViewController:self completion:v15];
  }

  else
  {
    nextScreenGroup = self->_nextScreenGroup;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PKPaymentReaderModeDetailsViewController__showTerms__block_invoke_5;
    block[3] = &unk_1E8010A10;
    v13 = v3;
    v14 = self;
    dispatch_group_notify(nextScreenGroup, MEMORY[0x1E69E96A0], block);
  }
}

void __54__PKPaymentReaderModeDetailsViewController__showTerms__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 1312);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKPaymentReaderModeDetailsViewController__showTerms__block_invoke_2;
  block[3] = &unk_1E8013D60;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_group_notify(v7, MEMORY[0x1E69E96A0], block);
}

void __54__PKPaymentReaderModeDetailsViewController__showTerms__block_invoke_2(uint64_t a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1336);
  *(v2 + 1336) = 0;

  v4 = *(*(a1 + 32) + 1368);
  v5 = *MEMORY[0x1E69BA680];
  v17[0] = *MEMORY[0x1E69BA7F0];
  v6 = *MEMORY[0x1E69BB308];
  v16[0] = v5;
  v16[1] = v6;
  v7 = PKAnalyticsReportSwitchToggleResultValue();
  v17[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v4 reportEvent:v8];

  if (*(a1 + 48) == 1)
  {
    *(*(a1 + 32) + 1352) = 1;
    v9 = *(a1 + 32);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__PKPaymentReaderModeDetailsViewController__showTerms__block_invoke_3;
    v15[3] = &unk_1E8010970;
    v15[4] = v9;
    [v9 _pushReaderModeProvisioningWithCompletion:v15];
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [MEMORY[0x1E69B90E8] errorWithUnderlyingError:v10 defaultSeverity:1];
      v12 = [v11 displayableError];

      [*(*(a1 + 32) + 1368) reportError:v12 context:0];
      v13 = PKAlertForDisplayableErrorWithHandlers(v12, 0, 0, 0);
      v14 = [*(a1 + 32) navigationController];
      [v14 presentViewController:v13 animated:1 completion:0];

      [*(a1 + 32) hideActivitySpinner];
    }

    else
    {
      [*(a1 + 32) hideActivitySpinner];
    }
  }
}

void __54__PKPaymentReaderModeDetailsViewController__showTerms__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PKPaymentReaderModeDetailsViewController__showTerms__block_invoke_4;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __54__PKPaymentReaderModeDetailsViewController__showTerms__block_invoke_5(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Skipping Terms & Conditions because no termsURL was set", v4, 2u);
    }
  }

  return [*(a1 + 40) _pushReaderModeProvisioningWithCompletion:0];
}

- (void)_prepareForProvisioningViewController
{
  dispatch_group_enter(self->_nextScreenGroup);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__PKPaymentReaderModeDetailsViewController__prepareForProvisioningViewController__block_invoke;
  v3[3] = &unk_1E8011D28;
  v3[4] = self;
  [(PKPaymentReaderModeDetailsViewController *)self _downloadCardArtIfNecessary:v3];
}

void __81__PKPaymentReaderModeDetailsViewController__prepareForProvisioningViewController__block_invoke(uint64_t a1, char a2)
{
  dispatch_group_leave(*(*(a1 + 32) + 1312));
  if ((a2 & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Failed to load either digital/plastic card images", v4, 2u);
    }
  }
}

- (void)_pushReaderModeProvisioningWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, a2);
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportPageCompleted:1 context:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained readerModeViewController:self didFinishWithSuccess:1];
}

- (void)_downloadCardArtIfNecessary:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  product = self->_product;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PKPaymentReaderModeDetailsViewController__downloadCardArtIfNecessary___block_invoke;
  v17[3] = &unk_1E8013A10;
  v7 = v5;
  v18 = v7;
  v8 = [(PKPaymentSetupProduct *)product plasticCardCachedImage:v17];
  dispatch_group_enter(v7);
  v9 = self->_product;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PKPaymentReaderModeDetailsViewController__downloadCardArtIfNecessary___block_invoke_2;
  v15[3] = &unk_1E8013A10;
  v16 = v7;
  v10 = v7;
  v11 = [(PKPaymentSetupProduct *)v9 digitalCardCachedImage:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PKPaymentReaderModeDetailsViewController__downloadCardArtIfNecessary___block_invoke_3;
  v13[3] = &unk_1E8010E20;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v13);
}

uint64_t __72__PKPaymentReaderModeDetailsViewController__downloadCardArtIfNecessary___block_invoke_3(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(*(result + 32) + 1360) imageAssets];
    if ([v2 digitalCardImage])
    {
      v3 = [*(*(v1 + 32) + 1360) imageAssets];
      [v3 plasticCardImage];
    }

    v4 = *(*(v1 + 40) + 16);

    return v4();
  }

  return result;
}

- (id)visibleFieldIdentifiers
{
  v2 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  v3 = [v2 visibleSetupFieldIdentifiers];

  return v3;
}

- (id)defaultHeaderViewTitle
{
  titleText = self->_titleText;
  if (titleText)
  {
    v3 = titleText;
  }

  else
  {
    v4 = [(PKPaymentSetupProduct *)self->_product displayName];
    v3 = PKLocalizedPaymentString(&cfstr_ReaderModeDeta.isa, &stru_1F3BD5BF0.isa, v4);
  }

  return v3;
}

- (id)defaultHeaderViewSubTitle
{
  subtitleText = self->_subtitleText;
  if (subtitleText)
  {
    v3 = subtitleText;
  }

  else
  {
    v3 = PKLocalizedPaymentString(&cfstr_ReaderModeDeta_0.isa);
  }

  return v3;
}

@end