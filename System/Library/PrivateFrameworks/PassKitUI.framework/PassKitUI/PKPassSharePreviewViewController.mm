@interface PKPassSharePreviewViewController
- (PKPassSharePreviewViewController)initWithSharesController:(id)controller context:(id)context delegate:(id)delegate;
- (id)searchController:(id)controller composeRecipientForAddress:(id)address;
- (void)_cancelPressed;
- (void)_continueButtonPressed;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contextDidChange;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view;
- (void)loadView;
- (void)searchController:(id)controller didAddRecipient:(id)recipient;
- (void)setShowHeaderSpinner:(BOOL)spinner;
- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)entitlements;
- (void)sharePreviewSectionControllerDidSelectShowContactPicker:(id)picker;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKPassSharePreviewViewController

- (PKPassSharePreviewViewController)initWithSharesController:(id)controller context:(id)context delegate:(id)delegate
{
  v37[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  contextCopy = context;
  delegateCopy = delegate;
  v36.receiver = self;
  v36.super_class = PKPassSharePreviewViewController;
  v12 = [(PKPaymentSetupOptionsViewController *)&v36 initWithContext:0];
  v13 = v12;
  if (v12)
  {
    v35 = contextCopy;
    objc_storeStrong(&v12->_sharesController, controller);
    objc_storeStrong(&v13->_context, context);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = objc_alloc_init(PKPassSnapshotter);
    passSnapshotter = v13->_passSnapshotter;
    v13->_passSnapshotter = v14;

    v16 = objc_alloc(MEMORY[0x1E69B8A38]);
    composedShare = [(PKPassShareInitiationContext *)v13->_context composedShare];
    sharedEntitlements = [composedShare sharedEntitlements];
    shareableEntitlements = [(PKSharedPassSharesController *)v13->_sharesController shareableEntitlements];
    possiblePredefinedEntitlements = [(PKSharedPassSharesController *)v13->_sharesController possiblePredefinedEntitlements];
    v21 = [v16 initWithSharedEntitlements:sharedEntitlements availableEntitlements:shareableEntitlements predefinedSharedEntitlements:possiblePredefinedEntitlements editable:1];
    entitlementComposer = v13->_entitlementComposer;
    v13->_entitlementComposer = v21;

    [(PKPassEntitlementsComposer *)v13->_entitlementComposer setMaxSelectionCount:[(PKSharedPassSharesController *)v13->_sharesController maxEntitlementSelectionCount]];
    predefinedEntitlementEntries = [(PKPassEntitlementsComposer *)v13->_entitlementComposer predefinedEntitlementEntries];
    if ([predefinedEntitlementEntries count])
    {
      v24 = v13->_entitlementComposer;
      v25 = [predefinedEntitlementEntries objectAtIndexedSubscript:0];
      v26 = [(PKPassEntitlementsComposer *)v24 viewForPredefined:v25];

      [v26 setEnabled:1];
    }

    v27 = [PKSharePreviewOverviewSectionController alloc];
    pass = [(PKSharedPassSharesController *)v13->_sharesController pass];
    contextCopy = v35;
    v29 = -[PKSharePreviewOverviewSectionController initWithInitiationContext:accessType:entitlementComposer:delegate:](v27, "initWithInitiationContext:accessType:entitlementComposer:delegate:", v35, [pass accessType], v13->_entitlementComposer, v13);
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
  navigationItem = [(PKPassSharePreviewViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  [navigationItem setLeftBarButtonItem:v4];

  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  v7 = [v5 initWithTitle:v6 style:0 target:self action:sel__continueButtonPressed];
  [navigationItem setRightBarButtonItem:v7];

  pass = [(PKSharedPassSharesController *)self->_sharesController pass];
  v9 = PKLocalizationKeyForPassType();
  v10 = PKLocalizedShareableCredentialString(v9);
  [(PKPaymentSetupOptionsViewController *)self setTitleText:v10];

  v11 = PKLocalizationKeyForPassType();
  globalView = [(PKPassEntitlementsComposer *)self->_entitlementComposer globalView];
  [globalView shareability];
  CanAllowResharing = PKSharingCapabilityShareabilityCanAllowResharing();

  if ([pass isCarKeyPass] && CanAllowResharing)
  {
    v14 = [v11 stringByAppendingString:@"_VEHICLE"];

    v11 = v14;
  }

  v15 = PKLocalizedShareableCredentialString(v11);
  [(PKPaymentSetupOptionsViewController *)self setSubtitleText:v15];

  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  v17 = [[PKHeroCardExplanationHeaderView alloc] initWithImage:0];
  [(PKHeroCardExplanationHeaderView *)v17 setPadding:1];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKHeroCardExplanationHeaderView *)v17 setBackgroundColor:systemBackgroundColor];

  [(PKHeroCardExplanationHeaderView *)v17 setSize:0];
  [headerView setTopArtView:v17];
  passSnapshotter = self->_passSnapshotter;
  pass2 = [(PKSharedPassSharesController *)self->_sharesController pass];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __44__PKPassSharePreviewViewController_loadView__block_invoke;
  v27 = &unk_1E8010AB0;
  v28 = v17;
  selfCopy = self;
  v21 = v17;
  [(PKPassSnapshotter *)passSnapshotter snapshotWithPass:pass2 size:&v24 completion:142.0, 90.0];

  [headerView setAdditionalBottomPadding:{5.0, v24, v25, v26, v27}];
  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  footerView = [dockView footerView];
  [dockView setPrimaryButton:0];
  [footerView setSetUpLaterButton:0];
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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPassSharePreviewViewController;
  [(PKPaymentSetupOptionsViewController *)&v5 viewWillAppear:appear];
  [(PKPassSharePreviewViewController *)self contextDidChange];
  sheetPresentationController = [(PKPassSharePreviewViewController *)self sheetPresentationController];
  [sheetPresentationController setDelegate:self];
}

- (void)_continueButtonPressed
{
  context = self->_context;
  v8 = 0;
  pass = [(PKSharedPassSharesController *)self->_sharesController pass];
  v5 = [(PKPassShareInitiationContext *)context isShareConfiguredEnoughToBeSentOverChannelWithDisplayableError:&v8 pass:pass];
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
  composeSharedEntitlements = [(PKPassEntitlementsComposer *)self->_entitlementComposer composeSharedEntitlements];
  composedShare = [(PKPassShareInitiationContext *)self->_context composedShare];
  [composedShare setSharedEntitlements:composeSharedEntitlements];

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = composeSharedEntitlements;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Entitlements To Shares: %@", &v6, 0xCu);
  }

  [(PKSharePreviewOverviewSectionController *)self->_overviewSectionController setContext:self->_context];
  [(PKSharePreviewOverviewSectionController *)self->_overviewSectionController reloadItemsAnimated:0];
}

- (void)setShowHeaderSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  v9.receiver = self;
  v9.super_class = PKPassSharePreviewViewController;
  [(PKPaymentSetupOptionsViewController *)&v9 setShowHeaderSpinner:?];
  navigationItem = [(PKPassSharePreviewViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:!spinnerCopy];

  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:!spinnerCopy];

  view = [(PKPassSharePreviewViewController *)self view];
  [view setUserInteractionEnabled:!spinnerCopy];
}

- (void)sharePreviewSectionControllerDidSelectShowContactPicker:(id)picker
{
  v4 = [objc_alloc(MEMORY[0x1E69963C0]) initWithSearchType:5];
  contactSearchController = self->_contactSearchController;
  self->_contactSearchController = v4;

  v6 = self->_contactSearchController;
  v7 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewC.isa);
  [(CNAutocompleteSearchController *)v6 setSuggestionsHeaderTitleOverride:v7];

  [(CNAutocompleteSearchController *)self->_contactSearchController setDelegate:self];
  navigationItem = [(CNAutocompleteSearchController *)self->_contactSearchController navigationItem];
  v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__closeContactPicker];
  [navigationItem setRightBarButtonItem:v8];

  v9 = PKLocalizedShareableCredentialString(&cfstr_ShareOverviewS_1.isa);
  [navigationItem setTitle:v9];

  v10 = [[PKNavigationController alloc] initWithRootViewController:self->_contactSearchController];
  [(PKPassSharePreviewViewController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)entitlements
{
  pass = [(PKSharedPassSharesController *)self->_sharesController pass];
  predefinedEntitlementEntries = [(PKPassEntitlementsComposer *)self->_entitlementComposer predefinedEntitlementEntries];

  if (predefinedEntitlementEntries)
  {
    v5 = [[PKPassSharePredefinedEntitlementSelectionViewController alloc] initWithMode:0 entitlementComposer:self->_entitlementComposer pass:pass];
  }

  else
  {
    v5 = -[PKPassShareEntitlementSelectionViewController initWithAccessType:mode:entitlementComposer:]([PKPassShareEntitlementSelectionViewController alloc], "initWithAccessType:mode:entitlementComposer:", [pass accessType], 0, self->_entitlementComposer);
  }

  v6 = v5;
  navigationController = [(PKPassSharePreviewViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (id)searchController:(id)controller composeRecipientForAddress:(id)address
{
  v4 = MEMORY[0x1E6996408];
  addressCopy = address;
  v6 = [[v4 alloc] initWithContact:0 address:addressCopy kind:2];

  return v6;
}

- (void)searchController:(id)controller didAddRecipient:(id)recipient
{
  recipientCopy = recipient;
  [controller dismissViewControllerAnimated:1 completion:0];
  displayString = [recipientCopy displayString];
  if (![displayString length])
  {
    address = [recipientCopy address];

    displayString = address;
  }

  context = self->_context;
  contact = [recipientCopy contact];
  [(PKPassShareInitiationContext *)context setRecipient:contact fallbackNickname:displayString];

  [(PKPassSharePreviewViewController *)self contextDidChange];
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller anchoredToView:(id)view
{
  v5 = MEMORY[0x1E695D120];
  viewCopy = view;
  v8 = [[v5 alloc] initWithNibName:0 bundle:0];
  [v8 setDelegate:self];
  [v8 setEditing:0];
  popoverPresentationController = [v8 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  [(CNAutocompleteSearchController *)self->_contactSearchController presentViewController:v8 animated:1 completion:0];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v5 = MEMORY[0x1E6996408];
  contactCopy = contact;
  v7 = [[v5 alloc] initWithContact:contactCopy address:0 kind:2];

  [(PKPassSharePreviewViewController *)self searchController:self->_contactSearchController didAddRecipient:v7];
}

@end