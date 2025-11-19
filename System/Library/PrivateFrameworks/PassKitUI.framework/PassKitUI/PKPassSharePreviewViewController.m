@interface PKPassSharePreviewViewController
- (PKPassSharePreviewViewController)initWithSharesController:(id)a3 context:(id)a4 delegate:(id)a5;
- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4;
- (void)_cancelPressed;
- (void)_continueButtonPressed;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contextDidChange;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4;
- (void)loadView;
- (void)searchController:(id)a3 didAddRecipient:(id)a4;
- (void)setShowHeaderSpinner:(BOOL)a3;
- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)a3;
- (void)sharePreviewSectionControllerDidSelectShowContactPicker:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPassSharePreviewViewController

- (PKPassSharePreviewViewController)initWithSharesController:(id)a3 context:(id)a4 delegate:(id)a5
{
  v37[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v36.receiver = self;
  v36.super_class = PKPassSharePreviewViewController;
  v12 = [(PKPaymentSetupOptionsViewController *)&v36 initWithContext:0];
  v13 = v12;
  if (v12)
  {
    v35 = v10;
    objc_storeStrong(&v12->_sharesController, a3);
    objc_storeStrong(&v13->_context, a4);
    objc_storeWeak(&v13->_delegate, v11);
    v14 = objc_alloc_init(PKPassSnapshotter);
    passSnapshotter = v13->_passSnapshotter;
    v13->_passSnapshotter = v14;

    v16 = objc_alloc(MEMORY[0x1E69B8A38]);
    v17 = [(PKPassShareInitiationContext *)v13->_context composedShare];
    v18 = [v17 sharedEntitlements];
    v19 = [(PKSharedPassSharesController *)v13->_sharesController shareableEntitlements];
    v20 = [(PKSharedPassSharesController *)v13->_sharesController possiblePredefinedEntitlements];
    v21 = [v16 initWithSharedEntitlements:v18 availableEntitlements:v19 predefinedSharedEntitlements:v20 editable:1];
    entitlementComposer = v13->_entitlementComposer;
    v13->_entitlementComposer = v21;

    [(PKPassEntitlementsComposer *)v13->_entitlementComposer setMaxSelectionCount:[(PKSharedPassSharesController *)v13->_sharesController maxEntitlementSelectionCount]];
    v23 = [(PKPassEntitlementsComposer *)v13->_entitlementComposer predefinedEntitlementEntries];
    if ([v23 count])
    {
      v24 = v13->_entitlementComposer;
      v25 = [v23 objectAtIndexedSubscript:0];
      v26 = [(PKPassEntitlementsComposer *)v24 viewForPredefined:v25];

      [v26 setEnabled:1];
    }

    v27 = [PKSharePreviewOverviewSectionController alloc];
    v28 = [(PKSharedPassSharesController *)v13->_sharesController pass];
    v10 = v35;
    v29 = -[PKSharePreviewOverviewSectionController initWithInitiationContext:accessType:entitlementComposer:delegate:](v27, "initWithInitiationContext:accessType:entitlementComposer:delegate:", v35, [v28 accessType], v13->_entitlementComposer, v13);
    overviewSectionController = v13->_overviewSectionController;
    v13->_overviewSectionController = v29;

    v31 = [[PKSharePreviewAdditionalSecuritySectionController alloc] initWithInitiationContext:v13->_context delegate:v13];
    additionalSecuritySectionController = v13->_additionalSecuritySectionController;
    v13->_additionalSecuritySectionController = v31;

    [(PKDynamicCollectionViewController *)v13 setUseItemIdentityWhenUpdating:1];
    [(PKPassSharePreviewViewController *)v13 setModalPresentationStyle:6];
    v37[0] = v13->_overviewSectionController;
    v37[1] = v13->_additionalSecuritySectionController;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    [(PKPaymentSetupOptionsViewController *)v13 setSections:v33 animated:0];
  }

  return v13;
}

- (void)loadView
{
  v30.receiver = self;
  v30.super_class = PKPassSharePreviewViewController;
  [(PKDynamicCollectionViewController *)&v30 loadView];
  v3 = [(PKPassSharePreviewViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  [v3 setLeftBarButtonItem:v4];

  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  v7 = [v5 initWithTitle:v6 style:0 target:self action:sel__continueButtonPressed];
  [v3 setRightBarButtonItem:v7];

  v8 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v9 = PKLocalizationKeyForPassType();
  v10 = PKLocalizedShareableCredentialString(v9);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v10];

  v11 = PKLocalizationKeyForPassType();
  v12 = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  [v12 shareability];
  CanAllowResharing = PKSharingCapabilityShareabilityCanAllowResharing();

  if ([v8 isCarKeyPass] && CanAllowResharing)
  {
    v14 = [v11 stringByAppendingString:@"_VEHICLE"];

    v11 = v14;
  }

  v15 = PKLocalizedShareableCredentialString(v11);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v15];

  v16 = [(PKPaymentSetupOptionsViewController *)self headerView];
  v17 = [[PKHeroCardExplanationHeaderView alloc] initWithImage:0];
  [(PKHeroCardExplanationHeaderView *)v17 setPadding:1];
  v18 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKHeroCardExplanationHeaderView *)v17 setBackgroundColor:v18];

  [(PKHeroCardExplanationHeaderView *)v17 setSize:0];
  [v16 setTopArtView:v17];
  passSnapshotter = self->_passSnapshotter;
  v20 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __44__PKPassSharePreviewViewController_loadView__block_invoke;
  v27 = &unk_1E8010AB0;
  v28 = v17;
  v29 = self;
  v21 = v17;
  [(PKPassSnapshotter *)passSnapshotter snapshotWithPass:v20 size:&v24 completion:142.0, 90.0];

  [v16 setAdditionalBottomPadding:{5.0, v24, v25, v26, v27}];
  v22 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v23 = [v22 footerView];
  [v22 setPrimaryButton:0];
  [v23 setSetUpLaterButton:0];
}

void __44__PKPassSharePreviewViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PKPassSharePreviewViewController_loadView__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __44__PKPassSharePreviewViewController_loadView__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCardImage:*(a1 + 40)];
  v2 = [*(a1 + 48) view];
  [v2 setNeedsLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPassSharePreviewViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 viewWillAppear:a3];
  [(PKPassSharePreviewViewController *)self contextDidChange];
  v4 = [(PKPassSharePreviewViewController *)self sheetPresentationController];
  [v4 setDelegate:self];
}

- (void)_continueButtonPressed
{
  context = self->_context;
  v8 = 0;
  v4 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v5 = [(PKPassShareInitiationContext *)context isShareConfiguredEnoughToBeSentOverChannelWithDisplayableError:&v8 pass:v4];
  v6 = v8;

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sharePreviewViewControllerDidContinue:self];
  }

  else
  {
    WeakRetained = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
    [(PKPassSharePreviewViewController *)self presentViewController:WeakRetained animated:1 completion:0];
  }
}

- (void)_cancelPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sharePreviewViewControllerDidCancel:self];
}

- (void)contextDidChange
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [(PKPassEntitlementsComposer *)self->_entitlementComposer composeSharedEntitlements];
  v4 = [(PKPassShareInitiationContext *)self->_context composedShare];
  [v4 setSharedEntitlements:v3];

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Entitlements To Shares: %@", &v6, 0xCu);
  }

  [(PKSharePreviewOverviewSectionController *)self->_overviewSectionController setContext:self->_context];
  [(PKSharePreviewOverviewSectionController *)self->_overviewSectionController reloadItemsAnimated:0];
}

- (void)setShowHeaderSpinner:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = PKPassSharePreviewViewController;
  [(PKPaymentSetupOptionsViewController *)&v9 setShowHeaderSpinner:?];
  v5 = [(PKPassSharePreviewViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:!v3];

  v7 = [v5 leftBarButtonItem];
  [v7 setEnabled:!v3];

  v8 = [(PKPassSharePreviewViewController *)self view];
  [v8 setUserInteractionEnabled:!v3];
}

- (void)sharePreviewSectionControllerDidSelectShowContactPicker:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69963C0]) initWithSearchType:5];
  contactSearchController = self->_contactSearchController;
  self->_contactSearchController = v4;

  v6 = self->_contactSearchController;
  v7 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewC.isa);
  [(CNAutocompleteSearchController *)v6 setSuggestionsHeaderTitleOverride:v7];

  [(CNAutocompleteSearchController *)self->_contactSearchController setDelegate:self];
  v11 = [(CNAutocompleteSearchController *)self->_contactSearchController navigationItem];
  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__closeContactPicker];
  [v11 setRightBarButtonItem:v8];

  v9 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewS_1.isa);
  [v11 setTitle:v9];

  v10 = [[PKNavigationController alloc] initWithRootViewController:self->_contactSearchController];
  [(PKPassSharePreviewViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)a3
{
  v8 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v4 = [(PKPassEntitlementsComposer *)self->_entitlementComposer predefinedEntitlementEntries];

  if (v4)
  {
    v5 = [[PKPassSharePredefinedEntitlementSelectionViewController alloc] initWithMode:0 entitlementComposer:self->_entitlementComposer pass:v8];
  }

  else
  {
    v5 = -[PKPassShareEntitlementSelectionViewController initWithAccessType:mode:entitlementComposer:]([PKPassShareEntitlementSelectionViewController alloc], "initWithAccessType:mode:entitlementComposer:", [v8 accessType], 0, self->_entitlementComposer);
  }

  v6 = v5;
  v7 = [(PKPassSharePreviewViewController *)self navigationController];
  [v7 pushViewController:v6 animated:1];
}

- (id)searchController:(id)a3 composeRecipientForAddress:(id)a4
{
  v4 = MEMORY[0x1E6996408];
  v5 = a4;
  v6 = [[v4 alloc] initWithContact:0 address:v5 kind:2];

  return v6;
}

- (void)searchController:(id)a3 didAddRecipient:(id)a4
{
  v10 = a4;
  [a3 dismissViewControllerAnimated:1 completion:0];
  v6 = [v10 displayString];
  if (![v6 length])
  {
    v7 = [v10 address];

    v6 = v7;
  }

  context = self->_context;
  v9 = [v10 contact];
  [(PKPassShareInitiationContext *)context setRecipient:v9 fallbackNickname:v6];

  [(PKPassSharePreviewViewController *)self contextDidChange];
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)a3 anchoredToView:(id)a4
{
  v5 = MEMORY[0x1E695D120];
  v6 = a4;
  v8 = [[v5 alloc] initWithNibName:0 bundle:0];
  [v8 setDelegate:self];
  [v8 setEditing:0];
  v7 = [v8 popoverPresentationController];
  [v7 setSourceView:v6];

  [(CNAutocompleteSearchController *)self->_contactSearchController presentViewController:v8 animated:1 completion:0];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v5 = MEMORY[0x1E6996408];
  v6 = a4;
  v7 = [[v5 alloc] initWithContact:v6 address:0 kind:2];

  [(PKPassSharePreviewViewController *)self searchController:self->_contactSearchController didAddRecipient:v7];
}

@end