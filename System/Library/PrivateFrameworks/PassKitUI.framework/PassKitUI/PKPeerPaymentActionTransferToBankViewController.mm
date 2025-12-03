@interface PKPeerPaymentActionTransferToBankViewController
- (BOOL)_isCurrentAmountValid;
- (PKPeerPaymentActionTransferToBankViewController)initWithPaymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context;
- (id)_calculateFee;
- (id)_defaultInstantFundsOutPaymentPass;
- (id)_indexPathForAction:(unint64_t)action;
- (id)_sectionFooterText;
- (id)_spinnerBarButton;
- (id)_transferBarButton;
- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection;
- (void)_currentAmountDidChangeTo:(id)to shouldGenerateNewSuggestions:(BOOL)suggestions;
- (void)_dismissViewController:(id)controller;
- (void)_doneAction;
- (void)_showNavigationBarSpinner:(BOOL)spinner;
- (void)_updateBarButtonEnabledState;
- (void)_updateCurrentAmount:(id)amount shouldGenerateNewSuggestions:(BOOL)suggestions;
- (void)_updateTableHeaderHeight;
- (void)dealloc;
- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)snapshot;
- (void)loadView;
- (void)peerPaymentActionController:(id)controller hasChangedState:(unint64_t)state;
- (void)setCardBalance:(id)balance;
- (void)setMaxBalance:(id)balance;
- (void)setMaxLoadAmount:(id)amount;
- (void)setMinBalance:(id)balance;
- (void)setMinLoadAmount:(id)amount;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateAccountValues;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentActionTransferToBankViewController

- (PKPeerPaymentActionTransferToBankViewController)initWithPaymentPass:(id)pass webService:(id)service passLibraryDataProvider:(id)provider context:(int64_t)context
{
  v22.receiver = self;
  v22.super_class = PKPeerPaymentActionTransferToBankViewController;
  v6 = [(PKPeerPaymentActionViewController *)&v22 initWithPaymentPass:pass webService:service passLibraryDataProvider:provider context:context];
  v7 = v6;
  if (v6)
  {
    account = [(PKPeerPaymentActionViewController *)v6 account];
    currentBalance = [account currentBalance];
    currency = [currentBalance currency];
    v11 = PKMutableNumberFormatterForCurrencyCode();
    currencyFormatter = v7->_currencyFormatter;
    v7->_currencyFormatter = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    percentageFormatter = v7->_percentageFormatter;
    v7->_percentageFormatter = v13;

    [(NSNumberFormatter *)v7->_percentageFormatter setNumberStyle:3];
    [(NSNumberFormatter *)v7->_percentageFormatter setMaximumFractionDigits:1];
    _defaultInstantFundsOutPaymentPass = [(PKPeerPaymentActionTransferToBankViewController *)v7 _defaultInstantFundsOutPaymentPass];
    defaultInstantFundsOutPaymentPass = v7->_defaultInstantFundsOutPaymentPass;
    v7->_defaultInstantFundsOutPaymentPass = _defaultInstantFundsOutPaymentPass;

    v7->_isSmallPhone = PKUIGetMinScreenWidthType() == 0;
    [(PKPeerPaymentActionViewController *)v7 setControllerAction:0];
    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    v7->_usesAccessibilityLayout = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC70]) == NSOrderedDescending;

    navigationItem = [(PKPeerPaymentActionTransferToBankViewController *)v7 navigationItem];
    v19 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer_5.isa);
    [navigationItem setTitle:v19];

    _transferBarButton = [(PKPeerPaymentActionTransferToBankViewController *)v7 _transferBarButton];
    [navigationItem setRightBarButtonItem:_transferBarButton];

    [(PKPeerPaymentActionTransferToBankViewController *)v7 _updateBarButtonEnabledState];
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v2 dealloc];
}

- (void)loadView
{
  v40.receiver = self;
  v40.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v40 loadView];
  account = [(PKPeerPaymentActionViewController *)self account];
  v4 = objc_alloc_init(PKPassSnapshotter);
  currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
  currentBalance = [account currentBalance];
  currency = [currentBalance currency];
  v8 = PKCurrencyAmountCreate(currentAmount, currency);

  _passViewInNavBar = [(PKPeerPaymentActionTransferToBankViewController *)self _passViewInNavBar];
  v10 = _passViewInNavBar;
  if (_passViewInNavBar)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    navbarPassView = self->_navbarPassView;
    self->_navbarPassView = v11;

    [(UIImageView *)self->_navbarPassView setContentMode:1];
    [(UIImageView *)self->_navbarPassView setAccessibilityIgnoresInvertColors:1];
    pass = [(PKPeerPaymentActionViewController *)self pass];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __59__PKPeerPaymentActionTransferToBankViewController_loadView__block_invoke;
    v39[3] = &unk_1E8010A38;
    v39[4] = self;
    [(PKPassSnapshotter *)v4 snapshotWithPass:pass size:v39 completion:55.0, 55.0];

    v14 = objc_alloc_init(PKAnimatedNavigationBarTitleView);
    passNavbarTitleView = self->_passNavbarTitleView;
    self->_passNavbarTitleView = v14;

    navigationItem = [(PKPeerPaymentActionTransferToBankViewController *)self navigationItem];
    [navigationItem pkui_setCenterAlignedTitleView:self->_passNavbarTitleView];

    v17 = [PKEnterCurrencyAmountPassTableHeaderFooterView alloc];
    pass2 = 0;
  }

  else
  {
    v17 = [PKEnterCurrencyAmountPassTableHeaderFooterView alloc];
    pass2 = [(PKPeerPaymentActionViewController *)self pass];
  }

  v19 = [(PKEnterCurrencyAmountPassTableHeaderFooterView *)v17 initWithCurrenyAmount:v8 pass:pass2];
  tableHeaderView = self->_tableHeaderView;
  self->_tableHeaderView = v19;

  if (!v10)
  {
  }

  [(PKEnterCurrencyAmountPassTableHeaderFooterView *)self->_tableHeaderView setDelegate:self];
  v21 = objc_alloc(MEMORY[0x1E69DD020]);
  v22 = [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1];
  v23 = *MEMORY[0x1E695F058];
  v24 = *(MEMORY[0x1E695F058] + 8);
  v25 = *(MEMORY[0x1E695F058] + 16);
  v26 = *(MEMORY[0x1E695F058] + 24);
  v27 = [v21 initWithFrame:v22 style:{*MEMORY[0x1E695F058], v24, v25, v26}];
  tableView = self->_tableView;
  self->_tableView = v27;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  v29 = self->_tableView;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITableView *)v29 setBackgroundColor:clearColor];

  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [(UITableView *)self->_tableView setTableHeaderView:self->_tableHeaderView];
  v31 = *MEMORY[0x1E69B9D70];
  [(UITableView *)self->_tableView setAccessibilityIdentifier:*MEMORY[0x1E69B9D70]];
  if (PKPeerPaymentFDICSignageEnabled())
  {
    if (PKPeerPaymentAccountIsFDICInsured())
    {
      v32 = [[PKFDICSignageView alloc] initWithFeature:1 displayingBankName:1];
      fdicView = self->_fdicView;
      self->_fdicView = v32;

      v34 = [[PKDashboardViewControllerFooterContainer alloc] initWithFrame:v23, v24, v25, v26];
      footerContainer = self->_footerContainer;
      self->_footerContainer = v34;

      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setMinimumFooterHeight:0.0];
      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:self->_fdicView];
      if ((PKIsVision() & 1) == 0)
      {
        v36 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithScrollView:self->_tableView edge:4 style:0];
        [(PKDashboardViewControllerFooterContainer *)self->_footerContainer addInteraction:v36];
      }
    }
  }

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"PKPeerPaymentActionTransferToBankFooterReuseIdentifier"];
  view = [(PKPeerPaymentActionTransferToBankViewController *)self view];
  [view addSubview:self->_tableView];
  if (self->_footerContainer)
  {
    [view addSubview:?];
  }

  [(PKPeerPaymentActionTransferToBankViewController *)self updateAccountValues];
  view2 = [(PKPeerPaymentActionTransferToBankViewController *)self view];
  [view2 setAccessibilityIdentifier:v31];
}

void __59__PKPeerPaymentActionTransferToBankViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PKPeerPaymentActionTransferToBankViewController_loadView__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __59__PKPeerPaymentActionTransferToBankViewController_loadView__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1160) setImage:*(a1 + 40)];
  [*(*(a1 + 32) + 1144) setTitleView:*(*(a1 + 32) + 1160) animated:0];
  v2 = [*(a1 + 32) viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v33.receiver = self;
  v33.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionTransferToBankViewController *)&v33 viewWillLayoutSubviews];
  view = [(PKPeerPaymentActionTransferToBankViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(PKPeerPaymentActionTransferToBankViewController *)self _passViewInNavBar])
  {
    navigationController = [(PKPeerPaymentActionTransferToBankViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    [navigationBar frame];
    [(PKAnimatedNavigationBarTitleView *)self->_passNavbarTitleView setFrame:0.0, 0.0, v14 + v14];
  }

  [(UITableView *)self->_tableView setFrame:v5, v7, v9, v11];
  [(PKPeerPaymentActionTransferToBankViewController *)self _updateTableHeaderHeight];
  v15 = PKSetupListViewConstantsViewMargin();
  [(UITableView *)self->_tableView _sectionContentInset];
  [(UITableView *)self->_tableView _setSectionContentInset:?];
  if (self->_footerContainer)
  {
    v16 = PKTableViewCellTextInset();
    [(PKFDICSignageView *)self->_fdicView setContentInsets:12.0, v15 + v16, 12.0, v15 + v16];
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer sizeThatFits:v9, v11];
    v18 = v17;
    v20 = v19;
    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setFrame:v5, CGRectGetMaxY(v34) - v20, v18, v20];
    [(UITableView *)self->_tableView contentInset];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [(UITableView *)self->_tableView verticalScrollIndicatorInsets];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [(UITableView *)self->_tableView setContentInset:v22, v24, v20, v26];
    [(UITableView *)self->_tableView setScrollIndicatorInsets:v28, v30, v20, v32];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPeerPaymentActionTransferToBankCellReuseIdentifier"];
  controllerAction = [(PKPeerPaymentActionViewController *)self controllerAction];
  supportedTransferActions = self->_supportedTransferActions;
  v10 = [pathCopy row];

  v11 = [(NSArray *)supportedTransferActions objectAtIndex:v10];
  integerValue = [v11 integerValue];

  if (!v7)
  {
    v7 = [[PKPeerPaymentActionTransferToBankCell alloc] initWithReuseIdentifier:@"PKPeerPaymentActionTransferToBankCellReuseIdentifier"];
  }

  if (integerValue == 3)
  {
    actionController = [(PKPeerPaymentActionViewController *)self actionController];
    bankInformation = [actionController bankInformation];

    if ([bankInformation isValid])
    {
      bankName = [bankInformation bankName];
      v18 = MEMORY[0x1E696AEC0];
      v19 = PKPANMask();
      accountSuffix = [bankInformation accountSuffix];
      v15 = [v18 stringWithFormat:@"%@ %@", v19, accountSuffix];
    }

    else
    {
      bankName = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_15.isa);
      v15 = 0;
    }

    v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_16.isa);
    v23 = @"PEER_PAYMENT_TRANSFER_TO_BANK_ACCOUNT_CELL_FEE";
    goto LABEL_16;
  }

  if (integerValue == 2)
  {
    defaultInstantFundsOutPaymentPass = self->_defaultInstantFundsOutPaymentPass;
    if (defaultInstantFundsOutPaymentPass)
    {
      bankName = [(PKPaymentPass *)defaultInstantFundsOutPaymentPass organizationName];
      v15 = PKSanitizedPrimaryAccountRepresentationForPass();
    }

    else
    {
      bankName = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_11.isa);
      v15 = 0;
    }

    v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_12.isa);
    bankInformation = [(PKPeerPaymentActionTransferToBankViewController *)self _calculateFee];
    if (bankInformation)
    {
      v24 = [(NSNumberFormatter *)self->_currencyFormatter stringFromNumber:bankInformation];
      v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_13.isa, &stru_1F3BD5BF0.isa, v24);

LABEL_17:
      goto LABEL_18;
    }

    v23 = @"PEER_PAYMENT_TRANSFER_TO_BANK_DEBIT_CARD_CELL_FEE_DEFAULT";
LABEL_16:
    v22 = PKLocalizedPeerPaymentString(&v23->isa);
    goto LABEL_17;
  }

  v21 = 0;
  v22 = 0;
  v15 = 0;
  bankName = 0;
LABEL_18:
  if ([v15 length] && objc_msgSend(v21, "length"))
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", v15, v21];
  }

  else
  {
    if (![v21 length])
    {
      goto LABEL_24;
    }

    v25 = v21;
  }

  v26 = v25;

  v15 = v26;
LABEL_24:
  [(PKPeerPaymentActionTransferToBankCell *)v7 setTitleText:bankName];
  [(PKPeerPaymentActionTransferToBankCell *)v7 setSubtitleText:v15];
  [(PKPeerPaymentActionTransferToBankCell *)v7 setFeeText:v22];
  [(PKPeerPaymentActionTransferToBankCell *)v7 setShowCheckmark:integerValue == controllerAction];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(PKPeerPaymentActionTransferToBankCell *)v7 setBackgroundColor:secondarySystemBackgroundColor];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[NSArray objectAtIndex:](self->_supportedTransferActions, "objectAtIndex:", [pathCopy row]);
  integerValue = [v7 integerValue];

  controllerAction = [(PKPeerPaymentActionViewController *)self controllerAction];
  actionController = [(PKPeerPaymentActionViewController *)self actionController];
  if (integerValue != controllerAction)
  {
    v11 = [(PKPeerPaymentActionTransferToBankViewController *)self _indexPathForAction:integerValue];
    v12 = [(PKPeerPaymentActionTransferToBankViewController *)self _indexPathForAction:controllerAction];
    [actionController setControllerAction:integerValue];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v13 safelyAddObject:v11];
    [v13 safelyAddObject:v12];
    v14 = [v13 copy];
    [viewCopy reloadRowsAtIndexPaths:v14 withRowAnimation:100];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState];
  if (integerValue == 3)
  {
    bankInformation = [actionController bankInformation];
    isValid = [bankInformation isValid];

    if (isValid)
    {
      goto LABEL_10;
    }

    actionController2 = [(PKPeerPaymentActionViewController *)self actionController];
    [actionController2 presentAddBankAccountViewController];
    goto LABEL_9;
  }

  if (integerValue == 2 && !self->_defaultInstantFundsOutPaymentPass)
  {
    actionController2 = [(PKPeerPaymentActionViewController *)self actionController];
    [actionController2 presentAddDebitCardViewController];
LABEL_9:
  }

LABEL_10:
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = [view dequeueReusableHeaderFooterViewWithIdentifier:{@"PKPeerPaymentActionTransferToBankFooterReuseIdentifier", section}];
  footerConfiguration = [MEMORY[0x1E69DCC28] footerConfiguration];
  _sectionFooterText = [(PKPeerPaymentActionTransferToBankViewController *)self _sectionFooterText];
  [footerConfiguration setText:_sectionFooterText];

  textProperties = [footerConfiguration textProperties];
  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC38]);
  [textProperties setFont:v9];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [textProperties setColor:secondaryLabelColor];

  [v5 setContentConfiguration:footerConfiguration];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9818]];

  return v5;
}

- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (PKPaymentSetupForceBridgeAppearance() & 1) != 0 || ([(PKPeerPaymentActionViewController *)self context], (PKPaymentSetupContextIsBridge()))
  {
    v6 = 2030;
  }

  else if ([collectionCopy userInterfaceStyle] == 2)
  {
    v6 = 2030;
  }

  else
  {
    v6 = 2010;
  }

  return v6;
}

- (void)peerPaymentActionController:(id)controller hasChangedState:(unint64_t)state
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v15 peerPaymentActionController:controller hasChangedState:?];
  switch(state)
  {
    case 1uLL:
      navigationController = [(PKPeerPaymentActionTransferToBankViewController *)self navigationController];
      [navigationController dismissViewControllerAnimated:1 completion:0];

      [(PKPeerPaymentActionTransferToBankViewController *)self _showNavigationBarSpinner:0];
LABEL_6:
      [(PKPeerPaymentActionTransferToBankViewController *)self _showNavigationBarSpinner:0];
      actionController = [(PKPeerPaymentActionViewController *)self actionController];
      controllerAction = [actionController controllerAction];
      if (controllerAction == 3)
      {
        bankInformation = [actionController bankInformation];
        isValid = [bankInformation isValid];

        if (isValid)
        {
LABEL_13:
          [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState];

          return;
        }

        [actionController setControllerAction:0];
        tableView = self->_tableView;
        v10 = [(PKPeerPaymentActionTransferToBankViewController *)self _indexPathForAction:3];
        v16 = v10;
        v11 = &v16;
      }

      else
      {
        if (controllerAction != 2 || self->_defaultInstantFundsOutPaymentPass)
        {
          goto LABEL_13;
        }

        [actionController setControllerAction:0];
        tableView = self->_tableView;
        v10 = [(PKPeerPaymentActionTransferToBankViewController *)self _indexPathForAction:2];
        v17[0] = v10;
        v11 = v17;
      }

      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [(UITableView *)tableView reloadRowsAtIndexPaths:v14 withRowAnimation:0];

      goto LABEL_13;
    case 5uLL:
      goto LABEL_6;
    case 2uLL:
      [(PKPeerPaymentActionTransferToBankViewController *)self _showNavigationBarSpinner:0];
      break;
  }
}

- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)controller
{
  view = [(PKPeerPaymentActionTransferToBankViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)updateAccountValues
{
  v36.receiver = self;
  v36.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v36 updateAccountValues];
  account = [(PKPeerPaymentActionViewController *)self account];
  _defaultInstantFundsOutPaymentPass = [(PKPeerPaymentActionTransferToBankViewController *)self _defaultInstantFundsOutPaymentPass];
  defaultInstantFundsOutPaymentPass = self->_defaultInstantFundsOutPaymentPass;
  self->_defaultInstantFundsOutPaymentPass = _defaultInstantFundsOutPaymentPass;

  if (account)
  {
    currentBalance = [account currentBalance];
    amount = [currentBalance amount];
    [(PKPeerPaymentActionTransferToBankViewController *)self setMaxBalance:amount];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([account supportsInstantWithdrawal])
    {
      [v8 addObject:&unk_1F3CC7E38];
      instantWithdrawalPromotionFeatureDescriptor = [account instantWithdrawalPromotionFeatureDescriptor];
      feePercentage = [instantWithdrawalPromotionFeatureDescriptor feePercentage];
      feePercentage = self->_feePercentage;
      self->_feePercentage = feePercentage;

      minimumFee = [instantWithdrawalPromotionFeatureDescriptor minimumFee];
      minimumFee = self->_minimumFee;
      self->_minimumFee = minimumFee;

      maximumFee = [instantWithdrawalPromotionFeatureDescriptor maximumFee];
      maximumFee = self->_maximumFee;
      self->_maximumFee = maximumFee;
    }

    if ([account supportsTransferToBank])
    {
      [v8 addObject:&unk_1F3CC7E50];
    }

    v16 = [v8 copy];
    supportedTransferActions = self->_supportedTransferActions;
    self->_supportedTransferActions = v16;

    if ([(NSArray *)self->_supportedTransferActions count]!= 1)
    {
      goto LABEL_12;
    }

    actionController = [(PKPeerPaymentActionViewController *)self actionController];
    v19 = [(NSArray *)self->_supportedTransferActions objectAtIndex:0];
    integerValue = [v19 integerValue];

    if (integerValue == 3)
    {
      bankInformation = [actionController bankInformation];
      isValid = [bankInformation isValid];

      if (!isValid)
      {
        goto LABEL_11;
      }
    }

    else if (integerValue != 2 || !self->_defaultInstantFundsOutPaymentPass)
    {
      goto LABEL_11;
    }

    [actionController setControllerAction:integerValue];
LABEL_11:

LABEL_12:
    _amountPassView = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    enterCurrencyAmountView = [_amountPassView enterCurrencyAmountView];

    currentBalance2 = [account currentBalance];
    currency = [currentBalance2 currency];
    [enterCurrencyAmountView setCurrency:currency];

    [enterCurrencyAmountView sizeToFit];
    _amountPassView2 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    balanceView = [_amountPassView2 balanceView];

    currency2 = [currentBalance currency];
    [balanceView setCurrencyCode:currency2];

    maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
    [balanceView setMaxLoadAmount:maxLoadAmount];

    minLoadAmount = [(PKPeerPaymentActionViewController *)self minLoadAmount];
    [balanceView setMinLoadAmount:minLoadAmount];

    [balanceView setMaxBalance:amount];
    minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
    [balanceView setMinBalance:minBalance];

    amount2 = [currentBalance amount];
    [balanceView setCardBalance:amount2];

    [balanceView sizeToFit];
    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];

    viewIfLoaded = [(PKPeerPaymentActionTransferToBankViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }

  [(UITableView *)self->_tableView reloadData];
  [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState];
}

- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)snapshot
{
  [(PKPeerPaymentActionTransferToBankViewController *)self _updateTableHeaderHeight];
  viewIfLoaded = [(PKPeerPaymentActionTransferToBankViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)setMaxBalance:(id)balance
{
  balanceCopy = balance;
  maxBalance = [(PKPeerPaymentActionViewController *)self maxBalance];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setMaxBalance:balanceCopy];
  if (maxBalance != balanceCopy && ([balanceCopy isEqualToNumber:maxBalance] & 1) == 0)
  {
    _amountPassView = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    balanceView = [_amountPassView balanceView];
    [balanceView setMaxBalance:balanceCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinBalance:(id)balance
{
  balanceCopy = balance;
  minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setMinBalance:balanceCopy];
  if (minBalance != balanceCopy && ([balanceCopy isEqualToNumber:minBalance] & 1) == 0)
  {
    _amountPassView = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    balanceView = [_amountPassView balanceView];
    [balanceView setMinBalance:balanceCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (void)setMaxLoadAmount:(id)amount
{
  amountCopy = amount;
  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setMaxLoadAmount:amountCopy];
  if (maxLoadAmount != amountCopy && ([amountCopy isEqualToNumber:maxLoadAmount] & 1) == 0)
  {
    _amountPassView = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    balanceView = [_amountPassView balanceView];
    [balanceView setMaxLoadAmount:amountCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinLoadAmount:(id)amount
{
  amountCopy = amount;
  minLoadAmount = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setMinLoadAmount:amountCopy];
  if (minLoadAmount != amountCopy && ([amountCopy isEqualToNumber:minLoadAmount] & 1) == 0)
  {
    _amountPassView = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    balanceView = [_amountPassView balanceView];
    [balanceView setMinLoadAmount:amountCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (void)setCardBalance:(id)balance
{
  balanceCopy = balance;
  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setCardBalance:balanceCopy];
  if (cardBalance != balanceCopy && ([balanceCopy isEqualToNumber:cardBalance] & 1) == 0)
  {
    _amountPassView = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    balanceView = [_amountPassView balanceView];
    [balanceView setCardBalance:balanceCopy];

    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:currentAmount shouldGenerateNewSuggestions:1];
  }
}

- (id)_transferBarButton
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC628];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __69__PKPeerPaymentActionTransferToBankViewController__transferBarButton__block_invoke;
  v10 = &unk_1E8010A60;
  objc_copyWeak(&v11, &location);
  v3 = [v2 actionWithHandler:&v7];
  v4 = objc_alloc(MEMORY[0x1E69DC708]);
  v5 = [v4 initWithBarButtonSystemItem:0 primaryAction:{v3, v7, v8, v9, v10}];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9D68]];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

void __69__PKPeerPaymentActionTransferToBankViewController__transferBarButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _doneAction];
}

- (id)_spinnerBarButton
{
  v2 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v2];
  [v2 startAnimating];

  return v3;
}

- (void)_updateBarButtonEnabledState
{
  navigationItem = [(PKPeerPaymentActionTransferToBankViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  account = [(PKPeerPaymentActionViewController *)self account];

  if (account)
  {
    _isCurrentAmountValid = [(PKPeerPaymentActionTransferToBankViewController *)self _isCurrentAmountValid];
    controllerAction = [(PKPeerPaymentActionViewController *)self controllerAction];
    if (controllerAction == 2)
    {
      isValid = self->_defaultInstantFundsOutPaymentPass != 0;
    }

    else if (controllerAction == 3)
    {
      actionController = [(PKPeerPaymentActionViewController *)self actionController];
      bankInformation = [actionController bankInformation];
      isValid = [bankInformation isValid];
    }

    else
    {
      isValid = 0;
    }

    v10 = _isCurrentAmountValid & isValid;
  }

  else
  {
    v10 = 0;
  }

  [rightBarButtonItem setEnabled:v10];
}

- (void)_doneAction
{
  [(PKPeerPaymentActionTransferToBankViewController *)self _showNavigationBarSpinner:1];
  currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
  account = [(PKPeerPaymentActionViewController *)self account];
  currentBalance = [account currentBalance];
  currency = [currentBalance currency];

  v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:currentAmount currency:currency exponent:0];
  actionController = [(PKPeerPaymentActionViewController *)self actionController];
  [actionController performActionWithCurrencyAmount:v6];
}

- (void)_updateCurrentAmount:(id)amount shouldGenerateNewSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  amountCopy = amount;
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:amountCopy];
  _amountPassView = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
  balanceView = [_amountPassView balanceView];
  [balanceView subtractAmountFromBalance:amountCopy];

  enterCurrencyAmountView = [_amountPassView enterCurrencyAmountView];
  [enterCurrencyAmountView setCurrentAmount:amountCopy];

  [(PKPeerPaymentActionTransferToBankViewController *)self _currentAmountDidChangeTo:amountCopy shouldGenerateNewSuggestions:suggestionsCopy];
}

- (void)_currentAmountDidChangeTo:(id)to shouldGenerateNewSuggestions:(BOOL)suggestions
{
  [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState:to];
  viewIfLoaded = [(PKPeerPaymentActionTransferToBankViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (BOOL)_isCurrentAmountValid
{
  currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
  cardBalance = [(PKPeerPaymentActionViewController *)self cardBalance];
  minBalance = [(PKPeerPaymentActionViewController *)self minBalance];
  maxBalance = [(PKPeerPaymentActionViewController *)self maxBalance];
  minLoadAmount = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  maxLoadAmount = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v9 = [cardBalance decimalNumberBySubtracting:currentAmount];
  notANumber = [MEMORY[0x1E696AB90] notANumber];
  v11 = [currentAmount isEqualToNumber:notANumber];

  zero = [MEMORY[0x1E696AB90] zero];
  v13 = [currentAmount compare:zero];

  if (!v13 || maxLoadAmount && [maxLoadAmount compare:currentAmount] == -1 || minLoadAmount && objc_msgSend(minLoadAmount, "compare:", currentAmount) == 1 || minBalance && objc_msgSend(minBalance, "compare:", v9) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 ^ 1;
    if (maxBalance)
    {
      v14 &= [maxBalance compare:v9] != -1;
    }
  }

  return v14;
}

- (id)_indexPathForAction:(unint64_t)action
{
  supportedTransferActions = self->_supportedTransferActions;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:action];
  v5 = [(NSArray *)supportedTransferActions indexOfObject:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:v5 inSection:0];
  }

  return v6;
}

- (id)_calculateFee
{
  if (self->_feePercentage)
  {
    currentAmount = [(PKPeerPaymentActionViewController *)self currentAmount];
    v4 = PKCurrencyDecimalAmountMultiplyAndRound();

    if (self->_maximumFee && [v4 compare:?] == 1)
    {
      v5 = self->_maximumFee;

      v4 = v5;
    }

    if (self->_minimumFee && [v4 compare:?] == -1)
    {
      v6 = self->_minimumFee;

      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateTableHeaderHeight
{
  [(UITableView *)self->_tableView bounds];
  v4 = v3;
  [(PKEnterCurrencyAmountPassTableHeaderFooterView *)self->_tableHeaderView frame];
  v6 = v5;
  v8 = v7;
  [(PKEnterCurrencyAmountPassTableHeaderFooterView *)self->_tableHeaderView sizeThatFits:v4, 1.79769313e308];
  if (v6 != v10 || v8 != v9)
  {
    v12 = v9;
    tableHeaderView = self->_tableHeaderView;
    [(UITableView *)self->_tableView _rectForTableHeaderView];
    [(PKEnterCurrencyAmountPassTableHeaderFooterView *)tableHeaderView setBounds:?];
    [(UITableView *)self->_tableView _tableHeaderHeightDidChangeToHeight:v12];
    viewIfLoaded = [(PKPeerPaymentActionTransferToBankViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];
  }
}

- (id)_sectionFooterText
{
  account = [(PKPeerPaymentActionViewController *)self account];
  supportsInstantWithdrawal = [account supportsInstantWithdrawal];

  if (!supportsInstantWithdrawal)
  {
    v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_23.isa);
    goto LABEL_15;
  }

  v5 = [(NSNumberFormatter *)self->_percentageFormatter stringFromNumber:self->_feePercentage];
  v6 = [(NSNumberFormatter *)self->_currencyFormatter stringFromNumber:self->_maximumFee];
  v7 = [(NSNumberFormatter *)self->_currencyFormatter stringFromNumber:self->_minimumFee];
  v8 = v7;
  if (self->_feePercentage)
  {
    minimumFee = self->_minimumFee;
    if (self->_maximumFee)
    {
      if (minimumFee)
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_18.isa, &stru_1F3BDAC30.isa, v5, v7, v6);
        v11 = LABEL_13:;
        goto LABEL_14;
      }

      v14 = v5;
      v15 = v6;
      v12 = @"PEER_PAYMENT_TRANSFER_TO_BANK_FOOTER_TEXT_SUPPORTS_INSTANT_TRANSFER_FEE_WITH_MAXIMUM";
    }

    else
    {
      if (!minimumFee)
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_21.isa, &stru_1F3BD5BF0.isa, v5);
        goto LABEL_13;
      }

      v14 = v5;
      v15 = v7;
      v12 = @"PEER_PAYMENT_TRANSFER_TO_BANK_FOOTER_TEXT_SUPPORTS_INSTANT_TRANSFER_FEE_WITH_MINIMUM";
    }

    PKLocalizedPeerPaymentString(&v12->isa, &stru_1F3BD6370.isa, v14, v15);
    goto LABEL_13;
  }

  v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_22.isa);
LABEL_14:
  v10 = v11;

LABEL_15:

  return v10;
}

- (id)_defaultInstantFundsOutPaymentPass
{
  account = [(PKPeerPaymentActionViewController *)self account];
  supportsInstantWithdrawal = [account supportsInstantWithdrawal];

  if (supportsInstantWithdrawal)
  {
    account2 = [(PKPeerPaymentActionViewController *)self account];
    instantWithdrawalPromotionFeatureDescriptor = [account2 instantWithdrawalPromotionFeatureDescriptor];

    v7 = objc_alloc_init(MEMORY[0x1E69B8FE8]);
    supportedNetworks = [instantWithdrawalPromotionFeatureDescriptor supportedNetworks];
    [v7 setSupportedNetworks:supportedNetworks];

    [v7 setSupportsInstantFundsIn:1];
    [v7 setPeerPaymentType:5];
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v10 = [mEMORY[0x1E69B8A58] _defaultPaymentPassForPaymentRequest:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_dismissViewController:(id)controller
{
  controllerCopy = controller;
  presentingViewController = [controllerCopy presentingViewController];

  if (presentingViewController)
  {
    [controllerCopy presentingViewController];
  }

  else
  {
    [(PKPeerPaymentActionTransferToBankViewController *)self navigationController];
  }
  v5 = ;
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)_showNavigationBarSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  _amountPassView = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
  enterCurrencyAmountView = [_amountPassView enterCurrencyAmountView];
  v7 = !spinnerCopy;
  [enterCurrencyAmountView setEnabled:!spinnerCopy];

  [(UITableView *)self->_tableView setAllowsSelection:!spinnerCopy];
  navigationItem = [(PKPeerPaymentActionTransferToBankViewController *)self navigationItem];
  if (v7)
  {
    [(PKPeerPaymentActionTransferToBankViewController *)self _transferBarButton];
  }

  else
  {
    [(PKPeerPaymentActionTransferToBankViewController *)self _spinnerBarButton];
  }
  v9 = ;
  [navigationItem setRightBarButtonItem:v9];

  [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState];
}

@end