@interface PKBillingAddressViewController
- (BOOL)_showCurrentAddress;
- (BOOL)shouldMapSection:(unint64_t)section;
- (PKBillingAddressViewController)initWithConfiguration:(id)configuration handler:(id)handler;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_currentBillingAddressCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)_enterNewBillingAddressCellForRowIndex:(int64_t)index tableView:(id)view;
- (id)requiredBillingAddressKeys;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)modalPresentationStyle;
- (void)_cancelButtonTapped;
- (void)_didSelectChangeAddress;
- (void)_loadUserInfo;
- (void)addressEditorViewController:(id)controller selectedContact:(id)contact;
- (void)addressEditorViewControllerDidCancel:(id)cancel;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PKBillingAddressViewController

- (PKBillingAddressViewController)initWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v29.receiver = self;
  v29.super_class = PKBillingAddressViewController;
  v8 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v29, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 2);
  if (v8)
  {
    v8->_featureIdentifier = [configurationCopy featureIdentifier];
    v8->_detailViewStyle = [configurationCopy detailViewStyle];
    v9 = [handlerCopy copy];
    handler = v8->_handler;
    v8->_handler = v9;

    billingAddress = [configurationCopy billingAddress];
    currentBillingAddress = v8->_currentBillingAddress;
    v8->_currentBillingAddress = billingAddress;

    accountService = [configurationCopy accountService];
    accountService = v8->_accountService;
    v8->_accountService = accountService;

    account = [configurationCopy account];
    account = v8->_account;
    v8->_account = account;

    userInfo = [configurationCopy userInfo];
    peerPaymentUserInfo = v8->_peerPaymentUserInfo;
    v8->_peerPaymentUserInfo = userInfo;

    peerPaymentAccount = [configurationCopy peerPaymentAccount];
    peerPaymentAccount = v8->_peerPaymentAccount;
    v8->_peerPaymentAccount = peerPaymentAccount;

    peerPaymentService = [configurationCopy peerPaymentService];
    peerPaymentService = v8->_peerPaymentService;
    v8->_peerPaymentService = peerPaymentService;

    paymentPass = [configurationCopy paymentPass];
    paymentPass = v8->_paymentPass;
    v8->_paymentPass = paymentPass;

    [(PKBillingAddressViewController *)v8 _loadUserInfo];
    v25 = v8->_peerPaymentService;
    if (v25)
    {
      [(PKPeerPaymentService *)v25 registerObserver:v8];
    }

    if ([configurationCopy showCancelButton])
    {
      navigationItem = [(PKBillingAddressViewController *)v8 navigationItem];
      v27 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v8 action:sel__cancelButtonTapped];
      [navigationItem setLeftBarButtonItem:v27];
    }
  }

  return v8;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKBillingAddressViewController;
  [(PKSectionTableViewController *)&v6 viewDidLoad];
  tableView = [(PKBillingAddressViewController *)self tableView];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  navigationItem = [(PKBillingAddressViewController *)self navigationItem];
  v5 = PKLocalizedFeatureString();
  [navigationItem setTitle:v5];
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  if (section == 1)
  {
    return 1;
  }

  if (section)
  {
    return 0;
  }

  return [(PKBillingAddressViewController *)self _showCurrentAddress];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  if (v8 == 1)
  {
    v9 = -[PKBillingAddressViewController _enterNewBillingAddressCellForRowIndex:tableView:](self, "_enterNewBillingAddressCellForRowIndex:tableView:", [pathCopy row], viewCopy);
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = -[PKBillingAddressViewController _currentBillingAddressCellForRowIndex:tableView:](self, "_currentBillingAddressCellForRowIndex:tableView:", [pathCopy row], viewCopy);
LABEL_5:
    v10 = v9;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section && (section != 1 || (peerPaymentAccount = self->_peerPaymentAccount) != 0 && ![(PKPeerPaymentAccount *)peerPaymentAccount isEligibleForUserInfoUpdates]))
  {
    v8 = 0;
  }

  else
  {
    v8 = PKLocalizedFeatureString();
  }

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (section <= 2)
  {
    [view sectionHeaderHeight];
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]) == 1)
  {
    [(PKBillingAddressViewController *)self _didSelectChangeAddress];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  if (-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]) || self->_loadingNewBillingContact)
  {
    v9 = 0;
    text = 0;
  }

  else
  {
    v14 = [viewCopy cellForRowAtIndexPath:pathCopy];
    contentConfiguration = [v14 contentConfiguration];
    text = [contentConfiguration text];

    v9 = 1;
  }

  if ([text length])
  {
    if (v9)
    {
LABEL_6:
      v11 = MEMORY[0x1E69DC8D8];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __92__PKBillingAddressViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
      v16[3] = &unk_1E8016090;
      v17 = text;
      v12 = [v11 configurationWithIdentifier:0 previewProvider:0 actionProvider:v16];

      goto LABEL_9;
    }
  }

  else
  {

    text = 0;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

id __92__PKBillingAddressViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32) && (v4 = MEMORY[0x1E69DC628], PKLocalizedString(&cfstr_MenuActionCopy.isa), v5 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.document"], v6 = objc_claimAutoreleasedReturnValue(), v12[0] = MEMORY[0x1E69E9820], v12[1] = 3221225472, v12[2] = __92__PKBillingAddressViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2, v12[3] = &unk_1E8016068, v13 = *(a1 + 32), objc_msgSend(v4, "actionWithTitle:image:identifier:handler:", v5, v6, 0, v12), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, v13, v7))
  {
    v8 = MEMORY[0x1E69DCC60];
    v14[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10 = [v8 menuWithTitle:&stru_1F3BD7330 children:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __92__PKBillingAddressViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

- (void)addressEditorViewController:(id)controller selectedContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  presentingViewController = [controllerCopy presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  v9 = self->_currentBillingAddress;
  currentBillingAddress = self->_currentBillingAddress;
  self->_currentBillingAddress = 0;

  if (self->_accountService)
  {
    self->_loadingNewBillingContact = 1;
    [(PKSectionTableViewController *)self reloadSection:0];
    objc_initWeak(&location, self);
    accountService = self->_accountService;
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    v13 = v22;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78__PKBillingAddressViewController_addressEditorViewController_selectedContact___block_invoke;
    v22[3] = &unk_1E80223C0;
    objc_copyWeak(&v24, &location);
    v23 = v9;
    [(PKAccountService *)accountService updateUserInfoForAccountIdentifier:accountIdentifier contact:contactCopy completion:v22];

    v14 = v23;
LABEL_5:

    objc_destroyWeak(v13 + 5);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  if (self->_peerPaymentService)
  {
    v15 = [MEMORY[0x1E69B9018] userInfoFromContact:contactCopy];
    peerPaymentUserInfo = self->_peerPaymentUserInfo;
    self->_peerPaymentUserInfo = v15;

    objc_storeStrong(&self->_currentBillingAddress, contact);
    objc_initWeak(&location, self);
    peerPaymentService = self->_peerPaymentService;
    v18 = self->_peerPaymentUserInfo;
    v13 = v19;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__PKBillingAddressViewController_addressEditorViewController_selectedContact___block_invoke_3;
    v19[3] = &unk_1E80110E0;
    objc_copyWeak(&v21, &location);
    v20 = contactCopy;
    [(PKPeerPaymentService *)peerPaymentService insertOrUpdateUserInfo:v18 completion:v19];
    v14 = v20;
    goto LABEL_5;
  }

LABEL_6:
}

void __78__PKBillingAddressViewController_addressEditorViewController_selectedContact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__PKBillingAddressViewController_addressEditorViewController_selectedContact___block_invoke_2;
    v9[3] = &unk_1E8011C98;
    v9[4] = WeakRetained;
    v10 = v5;
    v11 = v6;
    v12 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

uint64_t __78__PKBillingAddressViewController_addressEditorViewController_selectedContact___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 1128) = 0;
  v2 = *(a1 + 40);
  if (v2 && !*(a1 + 48))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v3 = *(v5 + 1136);
    *(v5 + 1136) = v6;
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 1136), *(a1 + 56));
    v3 = [PKAccountFlowController displayableErrorForError:*(a1 + 48) featureIdentifier:*(*(a1 + 32) + 1104) genericErrorTitle:0 genericErrorMessage:0];
    v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
    [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
  }

  [*(a1 + 32) reloadSection:0];
  v7 = *(*(*(a1 + 32) + 1120) + 16);

  return v7();
}

void __78__PKBillingAddressViewController_addressEditorViewController_selectedContact___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __78__PKBillingAddressViewController_addressEditorViewController_selectedContact___block_invoke_4;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __78__PKBillingAddressViewController_addressEditorViewController_selectedContact___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if ([WeakRetained isSectionMapped:0])
    {
      [v2 reloadSection:0];
    }

    else
    {
      [v2 reloadData];
    }

    (*(v2[140] + 16))();
    WeakRetained = v2;
  }
}

- (void)addressEditorViewControllerDidCancel:(id)cancel
{
  presentingViewController = [cancel presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_loadUserInfo
{
  featureIdentifier = self->_featureIdentifier;
  if (featureIdentifier == 1)
  {
    if (!self->_peerPaymentService)
    {
      return;
    }

    self->_loadingNewBillingContact = 1;
    objc_initWeak(&location, self);
    peerPaymentService = self->_peerPaymentService;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PKBillingAddressViewController__loadUserInfo__block_invoke_3;
    v8[3] = &unk_1E8022410;
    objc_copyWeak(&v9, &location);
    [(PKPeerPaymentService *)peerPaymentService userInfoWithCompletion:v8];
    v6 = &v9;
    goto LABEL_7;
  }

  if (featureIdentifier == 2 && self->_accountService)
  {
    self->_loadingNewBillingContact = 1;
    objc_initWeak(&location, self);
    accountService = self->_accountService;
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__PKBillingAddressViewController__loadUserInfo__block_invoke;
    v10[3] = &unk_1E80223E8;
    objc_copyWeak(&v11, &location);
    v10[4] = self;
    [(PKAccountService *)accountService userInfoForAccountIdentifier:accountIdentifier forceFetch:1 completion:v10];

    v6 = &v11;
LABEL_7:
    objc_destroyWeak(v6);
    objc_destroyWeak(&location);
  }
}

void __47__PKBillingAddressViewController__loadUserInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PKBillingAddressViewController__loadUserInfo__block_invoke_2;
  v9[3] = &unk_1E8014828;
  objc_copyWeak(&v12, (a1 + 40));
  v9[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v12);
}

void __47__PKBillingAddressViewController__loadUserInfo__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && *(*(a1 + 32) + 1152))
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 40) creditUserInfo];
    v4 = [v3 primaryUser];

    if (v4 && !*(a1 + 48))
    {
      objc_storeStrong(v5 + 142, v4);
      (*(v5[140] + 2))();
    }

    *(v5 + 1128) = 0;
    [v5 reloadSection:0];

    WeakRetained = v5;
  }
}

void __47__PKBillingAddressViewController__loadUserInfo__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__55;
    v14 = __Block_byref_object_dispose__55;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__PKBillingAddressViewController__loadUserInfo__block_invoke_170;
    aBlock[3] = &unk_1E8022410;
    objc_copyWeak(&v9, (a1 + 32));
    v15 = _Block_copy(aBlock);
    v5 = [WeakRetained[146] isEligibleForUserInfoUpdates];
    if (v5)
    {
      v5 = [v3 isOutOfDate];
    }

    if (!v3 || v5)
    {
      v6 = WeakRetained[147];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __47__PKBillingAddressViewController__loadUserInfo__block_invoke_3_173;
      v7[3] = &unk_1E8022438;
      v7[4] = &v10;
      [v6 fetchUserInfoWithCompletion:v7];
    }

    else
    {
      (*(v11[5] + 16))();
    }

    _Block_object_dispose(&v10, 8);

    objc_destroyWeak(&v9);
  }
}

void __47__PKBillingAddressViewController__loadUserInfo__block_invoke_170(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PKBillingAddressViewController__loadUserInfo__block_invoke_2_171;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __47__PKBillingAddressViewController__loadUserInfo__block_invoke_2_171(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 145, *(a1 + 32));
    v2 = [*(a1 + 32) contact];
    if (v2)
    {
      objc_storeStrong(WeakRetained + 142, v2);
      (*(WeakRetained[140] + 2))();
    }

    *(WeakRetained + 1128) = 0;
    [WeakRetained reloadSection:0];
  }
}

- (void)_didSelectChangeAddress
{
  v35[1] = *MEMORY[0x1E69E9840];
  peerPaymentAccount = self->_peerPaymentAccount;
  if (peerPaymentAccount && (v4 = [(PKPeerPaymentAccount *)peerPaymentAccount isEligibleForUserInfoUpdates], !self->_accountService) && (v4 & 1) != 0)
  {
    objc_initWeak(&location, self);
    v5 = [PKPeerPaymentUpdateUserInfoCoordinator alloc];
    v6 = self->_peerPaymentAccount;
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    detailViewStyle = self->_detailViewStyle;
    v9 = 3;
    if (detailViewStyle != 1)
    {
      v9 = 0;
    }

    if (detailViewStyle == 2)
    {
      v10 = 4;
    }

    else
    {
      v10 = v9;
    }

    v11 = [(PKPeerPaymentUpdateUserInfoCoordinator *)v5 initWithAccount:v6 webService:mEMORY[0x1E69B9020] setupContext:v10];
    updateUserInfoCoordinator = self->_updateUserInfoCoordinator;
    self->_updateUserInfoCoordinator = v11;

    v13 = self->_updateUserInfoCoordinator;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __57__PKBillingAddressViewController__didSelectChangeAddress__block_invoke;
    v32[3] = &unk_1E8011338;
    objc_copyWeak(&v33, &location);
    [(PKPeerPaymentUpdateUserInfoCoordinator *)v13 presentUpdateUserInfoFlowFromPresentingViewController:self completion:v32];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else if (PKStoreDemoModeEnabled())
  {
    v31 = PKUIStoreDemoGatewayViewController();
    [(PKBillingAddressViewController *)self presentViewController:v31 animated:1 completion:0];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695CF30]);
    creditDetails = [(PKAccount *)self->_account creditDetails];
    countryCode = [creditDetails countryCode];
    [v14 setISOCountryCode:countryCode];

    v17 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v18 = MEMORY[0x1E695CEE0];
    v19 = *MEMORY[0x1E695CB60];
    v20 = [v14 copy];
    v21 = [v18 labeledValueWithLabel:v19 value:v20];

    v35[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [v17 setPostalAddresses:v22];

    v23 = [PKAddressEditorViewController alloc];
    v24 = [v17 copy];
    requiredBillingAddressKeys = [(PKBillingAddressViewController *)self requiredBillingAddressKeys];
    v26 = [(PKAddressEditorViewController *)v23 initWithContact:v24 requiredKeys:requiredBillingAddressKeys highlightedKeys:MEMORY[0x1E695E0F0] errors:MEMORY[0x1E695E0F0] style:1];

    [(PKAddressEditorViewController *)v26 setDelegate:self];
    [(PKAddressEditorViewController *)v26 setCountryIsEditable:0];
    [(PKAddressEditorViewController *)v26 setModalPresentationStyle:[(PKBillingAddressViewController *)self modalPresentationStyle]];
    view = [(PKAddressEditorViewController *)v26 view];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [view setBackgroundColor:systemBackgroundColor];

    v29 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v26];
    navigationController = [(PKBillingAddressViewController *)self navigationController];
    [navigationController presentViewController:v29 animated:1 completion:0];
  }
}

void __57__PKBillingAddressViewController__didSelectChangeAddress__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__PKBillingAddressViewController__didSelectChangeAddress__block_invoke_2;
    v4[3] = &unk_1E80110E0;
    objc_copyWeak(&v6, (a1 + 32));
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);

    objc_destroyWeak(&v6);
  }
}

void __57__PKBillingAddressViewController__didSelectChangeAddress__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [MEMORY[0x1E69B8F28] displayableErrorForError:*(a1 + 32)];
    v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
    [v5 presentViewController:v4 animated:1 completion:0];

    WeakRetained = v5;
  }
}

- (id)_currentBillingAddressCellForRowIndex:(int64_t)index tableView:(id)view
{
  v5 = [view dequeueReusableCellWithIdentifier:@"PKBillingAddressCurrentAddress"];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PKBillingAddressCurrentAddress"];
  }

  if (self->_loadingNewBillingContact)
  {
    valueCellConfiguration = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [valueCellConfiguration startAnimating];
    [v5 setEditingAccessoryView:valueCellConfiguration];
    [v5 setAccessoryView:valueCellConfiguration];
  }

  else
  {
    valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
    textProperties = [valueCellConfiguration textProperties];
    [textProperties setNumberOfLines:0];
    pkFormattedContactAddressWithoutName = [(CNContact *)self->_currentBillingAddress pkFormattedContactAddressWithoutName];
    [valueCellConfiguration setText:pkFormattedContactAddressWithoutName];

    [v5 setContentConfiguration:valueCellConfiguration];
    [v5 setEditingAccessoryView:0];
    [v5 setAccessoryView:0];
  }

  return v5;
}

- (id)_enterNewBillingAddressCellForRowIndex:(int64_t)index tableView:(id)view
{
  v5 = [view dequeueReusableCellWithIdentifier:@"PKBillingAddressUpdateAddress"];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKBillingAddressUpdateAddress"];
    textLabel = [v5 textLabel];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [textLabel setTextColor:systemBlueColor];
  }

  [(PKBillingAddressViewController *)self _showCurrentAddress];
  textLabel2 = [v5 textLabel];
  v9 = PKLocalizedFeatureString();
  [textLabel2 setText:v9];

  return v5;
}

- (id)requiredBillingAddressKeys
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695CC00];
  v6[0] = *MEMORY[0x1E695CC30];
  v6[1] = v2;
  v3 = *MEMORY[0x1E695CC18];
  v6[2] = *MEMORY[0x1E695CC28];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

- (int64_t)modalPresentationStyle
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    return 16;
  }

  else
  {
    return 5;
  }
}

- (void)_cancelButtonTapped
{
  presentingViewController = [(PKBillingAddressViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)_showCurrentAddress
{
  if (self->_featureIdentifier != 1)
  {
    return 1;
  }

  billingAddress = [(PKPeerPaymentUserInfo *)self->_peerPaymentUserInfo billingAddress];
  v3 = billingAddress != 0;

  return v3;
}

@end