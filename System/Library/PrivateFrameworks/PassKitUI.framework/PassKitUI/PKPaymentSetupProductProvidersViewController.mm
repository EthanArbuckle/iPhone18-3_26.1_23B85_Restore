@interface PKPaymentSetupProductProvidersViewController
- (PKPaymentSetupProductProvidersViewController)initWithProduct:(id)product showOtherProviders:(BOOL)providers context:(int64_t)context;
- (PKPaymentSetupProductProvidersViewControllerDelegate)flowDelegate;
- (void)didSelectProviderWithSetupMethod:(id)method;
- (void)preflightWithCompletion:(id)completion;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupProductProvidersViewController

- (PKPaymentSetupProductProvidersViewController)initWithProduct:(id)product showOtherProviders:(BOOL)providers context:(int64_t)context
{
  productCopy = product;
  v13.receiver = self;
  v13.super_class = PKPaymentSetupProductProvidersViewController;
  v10 = [(PKPaymentSetupOptionsViewController *)&v13 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_product, product);
    v11->_setupContext = context;
    v11->_showOtherProviders = providers;
    [(PKDynamicCollectionViewController *)v11 setUseItemIdentityWhenUpdating:1];
  }

  return v11;
}

- (void)preflightWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    v18 = completionCopy;
    v6 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PKPaymentSetupProduct *)self->_product setupProductMethods];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        v12 = 0;
        do
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * v12);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke;
          v25[3] = &unk_1E8015210;
          v25[4] = v13;
          v25[5] = self;
          v26 = v7;
          v27 = v8;
          [v6 addOperation:v25];

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v10);
    }

    null = [MEMORY[0x1E695DFB0] null];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke_26;
    v21[3] = &unk_1E801AF90;
    v21[4] = self;
    v22 = v7;
    v23 = v8;
    v5 = v19;
    v24 = v19;
    v15 = v8;
    v16 = v7;
    v17 = [v6 evaluateWithInput:null completion:v21];
  }
}

void __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) type];
  if (v8 == 6)
  {
    if (*(*(a1 + 40) + 1328) == 1)
    {
      v9 = *(a1 + 32);
      v17 = [v9 appClipLaunchURL];
      if (!v17)
      {
        v7[2](v7, v6, 0);
      }

      v15 = [objc_alloc(MEMORY[0x1E6994678]) initWithURL:v17];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke_3;
      v18[3] = &unk_1E80211B0;
      v19 = *(a1 + 56);
      v20 = v17;
      v22 = v7;
      v21 = v6;
      v14 = v17;
      [(PKLinkedApplication *)v15 requestMetadataWithCompletion:v18];

      v16 = v19;
      goto LABEL_10;
    }

LABEL_11:
    v7[2](v7, v6, 0);
    goto LABEL_12;
  }

  if (v8 != 5)
  {
    goto LABEL_11;
  }

  v9 = *(a1 + 32);
  v10 = [v9 associatedStoreIdentifiers];
  if (!v10)
  {
    v7[2](v7, v6, 0);
  }

  v11 = [PKLinkedApplication alloc];
  v12 = [v9 appLaunchURL];
  v13 = [(PKLinkedApplication *)v11 initWithStoreIDs:v10 defaultLaunchURL:v12];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke_2;
  v23[3] = &unk_1E8021160;
  v24 = v13;
  v25 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v26 = *(a1 + 48);
  v27 = v10;
  v29 = v7;
  v28 = v6;
  v14 = v10;
  v15 = v13;
  [(PKLinkedApplication *)v15 reloadApplicationStateIfNecessaryWithCompletion:v23];

  v16 = v24;
LABEL_10:

LABEL_12:
}

uint64_t __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) state] == 1 && objc_msgSend(*(a1 + 32), "canOpenApplication"))
  {
    if ([*(a1 + 32) isInstalled])
    {
      *(*(a1 + 40) + 1344) = 1;
      [*(a1 + 48) setSupported:1];
    }

    [*(a1 + 56) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 64)];
  }

  v2 = *(*(a1 + 80) + 16);

  return v2();
}

void __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke_4;
  v9[3] = &unk_1E8021188;
  v10 = v5;
  v11 = a1[4];
  v12 = a1[5];
  v13 = v6;
  v15 = a1[7];
  v14 = a1[6];
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) setObject:v2 forKeyedSubscript:*(a1 + 48)];
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "App Clip not available with error: %@", &v6, 0xCu);
    }
  }

  return (*(*(a1 + 72) + 16))();
}

uint64_t __72__PKPaymentSetupProductProvidersViewController_preflightWithCompletion___block_invoke_26(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1312);
  *(v3 + 1312) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1320);
  *(v6 + 1320) = v5;

  if ([*(*(a1 + 32) + 1312) count] || objc_msgSend(*(*(a1 + 32) + 1320), "count"))
  {
    v8 = *(*(a1 + 56) + 16);
  }

  else
  {
    v8 = *(*(a1 + 56) + 16);
  }

  return v8();
}

- (void)viewDidLoad
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKPaymentSetupProductProvidersViewController;
  [(PKPaymentSetupOptionsViewController *)&v14 viewDidLoad];
  [(PKDynamicCollectionViewController *)self setRetainCellSelectionCellOnReload:1];
  if (self->_showOtherProviders)
  {
    view = [(PKPaymentSetupProductProvidersViewController *)self view];
    [view setAccessibilityIdentifier:@"other-providers"];

    v4 = PKLocalizedPaymentString(&cfstr_Providers.isa);
    [(PKPaymentSetupOptionsViewController *)self setTitleText:v4];

    displayName = [(PKPaymentSetupProduct *)self->_product displayName];
    v6 = PKLocalizedPaymentString(&cfstr_ProvidersSubti.isa, &stru_1F3BD5BF0.isa, displayName);
    [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v6];
  }

  else
  {
    displayName2 = [(PKPaymentSetupProduct *)self->_product displayName];
    [(PKPaymentSetupOptionsViewController *)self setTitleText:displayName2];

    configuration = [(PKPaymentSetupProduct *)self->_product configuration];
    type = [configuration type];

    if (type == 3)
    {
      v10 = @"SELECT_TRANSIT_CARD_SUBTITLE";
    }

    else
    {
      v10 = @"SELECT_PAYMENT_CARD_SUBTITLE";
    }

    displayName = PKLocalizedPaymentString(&v10->isa);
    [(PKPaymentSetupOptionsViewController *)self setSubtitleText:displayName];
  }

  v11 = [[PKPaymentSetupProductProvidersSectionController alloc] initWithProduct:self->_product linkedApplications:self->_linkedApplications clipMetadata:self->_clipMetadata showOtherProviders:self->_showOtherProviders delegate:self];
  productProvidersSectionController = self->_productProvidersSectionController;
  self->_productProvidersSectionController = v11;

  if (self->_productProvidersSectionController)
  {
    v15[0] = self->_productProvidersSectionController;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(PKPaymentSetupOptionsViewController *)self setSections:v13 animated:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupProductProvidersViewController;
  [(PKPaymentSetupOptionsViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)didSelectProviderWithSetupMethod:(id)method
{
  v21[1] = *MEMORY[0x1E69E9840];
  methodCopy = method;
  if ([methodCopy type] == 2)
  {
    v5 = MEMORY[0x1E69BB570];
    goto LABEL_5;
  }

  if ([methodCopy type] == 1)
  {
    v5 = MEMORY[0x1E69BB520];
LABEL_5:
    v6 = *v5;
    v7 = 0;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if ([methodCopy type] == 5)
  {
    associatedStoreIdentifiers = [methodCopy associatedStoreIdentifiers];
    if (!associatedStoreIdentifiers)
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_25;
    }

    appClipLaunchURL = [(NSDictionary *)self->_linkedApplications objectForKeyedSubscript:associatedStoreIdentifiers];
    displayName = [appClipLaunchURL displayName];
    isInstalled = [appClipLaunchURL isInstalled];
    v14 = MEMORY[0x1E69BB4B8];
    if (!isInstalled)
    {
      v14 = MEMORY[0x1E69BB4B0];
    }

    v6 = *v14;
    goto LABEL_23;
  }

  if ([methodCopy type] != 6)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_26;
  }

  v6 = *MEMORY[0x1E69BB488];
  associatedStoreIdentifiers = methodCopy;
  appClipLaunchURL = [associatedStoreIdentifiers appClipLaunchURL];
  if (appClipLaunchURL)
  {
    v15 = [(NSDictionary *)self->_clipMetadata objectForKeyedSubscript:appClipLaunchURL];
    fullAppName = [v15 fullAppName];
    v17 = fullAppName;
    if (fullAppName)
    {
      localizedTitle = fullAppName;
    }

    else
    {
      localizedTitle = [associatedStoreIdentifiers localizedTitle];
    }

    displayName = localizedTitle;

LABEL_23:
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v6, displayName];

    goto LABEL_24;
  }

  v7 = 0;
LABEL_24:

LABEL_25:
  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_6:
  reporter = self->_reporter;
  if (v7)
  {
    v20 = *MEMORY[0x1E69BB170];
    v21[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportOtherButtonPressed:v6 context:v9];
  }

  else
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportOtherButtonPressed:v6];
  }

LABEL_26:
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained setupProductProvidersViewController:self didSelectMethod:methodCopy];
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  animatedCopy = animated;
  iCopy = i;
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView setUserInteractionEnabled:!iCopy];

  if (!iCopy)
  {
    productProvidersSectionController = self->_productProvidersSectionController;

    [(PKPaymentSetupProductProvidersSectionController *)productProvidersSectionController hideLoadingIndicatorsAnimated:animatedCopy];
  }
}

- (PKPaymentSetupProductProvidersViewControllerDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end