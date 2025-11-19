@interface PKPeerPaymentActionTransferToBankViewController
- (BOOL)_isCurrentAmountValid;
- (PKPeerPaymentActionTransferToBankViewController)initWithPaymentPass:(id)a3 webService:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6;
- (id)_calculateFee;
- (id)_defaultInstantFundsOutPaymentPass;
- (id)_indexPathForAction:(unint64_t)a3;
- (id)_sectionFooterText;
- (id)_spinnerBarButton;
- (id)_transferBarButton;
- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4;
- (void)_currentAmountDidChangeTo:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4;
- (void)_dismissViewController:(id)a3;
- (void)_doneAction;
- (void)_showNavigationBarSpinner:(BOOL)a3;
- (void)_updateBarButtonEnabledState;
- (void)_updateCurrentAmount:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4;
- (void)_updateTableHeaderHeight;
- (void)dealloc;
- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)a3;
- (void)loadView;
- (void)peerPaymentActionController:(id)a3 hasChangedState:(unint64_t)a4;
- (void)setCardBalance:(id)a3;
- (void)setMaxBalance:(id)a3;
- (void)setMaxLoadAmount:(id)a3;
- (void)setMinBalance:(id)a3;
- (void)setMinLoadAmount:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateAccountValues;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentActionTransferToBankViewController

- (PKPeerPaymentActionTransferToBankViewController)initWithPaymentPass:(id)a3 webService:(id)a4 passLibraryDataProvider:(id)a5 context:(int64_t)a6
{
  v22.receiver = self;
  v22.super_class = PKPeerPaymentActionTransferToBankViewController;
  v6 = [(PKPeerPaymentActionViewController *)&v22 initWithPaymentPass:a3 webService:a4 passLibraryDataProvider:a5 context:a6];
  v7 = v6;
  if (v6)
  {
    v8 = [(PKPeerPaymentActionViewController *)v6 account];
    v9 = [v8 currentBalance];
    v10 = [v9 currency];
    v11 = PKMutableNumberFormatterForCurrencyCode();
    currencyFormatter = v7->_currencyFormatter;
    v7->_currencyFormatter = v11;

    v13 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    percentageFormatter = v7->_percentageFormatter;
    v7->_percentageFormatter = v13;

    [(NSNumberFormatter *)v7->_percentageFormatter setNumberStyle:3];
    [(NSNumberFormatter *)v7->_percentageFormatter setMaximumFractionDigits:1];
    v15 = [(PKPeerPaymentActionTransferToBankViewController *)v7 _defaultInstantFundsOutPaymentPass];
    defaultInstantFundsOutPaymentPass = v7->_defaultInstantFundsOutPaymentPass;
    v7->_defaultInstantFundsOutPaymentPass = v15;

    v7->_isSmallPhone = PKUIGetMinScreenWidthType() == 0;
    [(PKPeerPaymentActionViewController *)v7 setControllerAction:0];
    v17 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    v7->_usesAccessibilityLayout = UIContentSizeCategoryCompareToCategory(v17, *MEMORY[0x1E69DDC70]) == NSOrderedDescending;

    v18 = [(PKPeerPaymentActionTransferToBankViewController *)v7 navigationItem];
    v19 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPer_5.isa);
    [v18 setTitle:v19];

    v20 = [(PKPeerPaymentActionTransferToBankViewController *)v7 _transferBarButton];
    [v18 setRightBarButtonItem:v20];

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
  v3 = [(PKPeerPaymentActionViewController *)self account];
  v4 = objc_alloc_init(PKPassSnapshotter);
  v5 = [(PKPeerPaymentActionViewController *)self currentAmount];
  v6 = [v3 currentBalance];
  v7 = [v6 currency];
  v8 = PKCurrencyAmountCreate(v5, v7);

  v9 = [(PKPeerPaymentActionTransferToBankViewController *)self _passViewInNavBar];
  v10 = v9;
  if (v9)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    navbarPassView = self->_navbarPassView;
    self->_navbarPassView = v11;

    [(UIImageView *)self->_navbarPassView setContentMode:1];
    [(UIImageView *)self->_navbarPassView setAccessibilityIgnoresInvertColors:1];
    v13 = [(PKPeerPaymentActionViewController *)self pass];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __59__PKPeerPaymentActionTransferToBankViewController_loadView__block_invoke;
    v39[3] = &unk_1E8010A38;
    v39[4] = self;
    [(PKPassSnapshotter *)v4 snapshotWithPass:v13 size:v39 completion:55.0, 55.0];

    v14 = objc_alloc_init(PKAnimatedNavigationBarTitleView);
    passNavbarTitleView = self->_passNavbarTitleView;
    self->_passNavbarTitleView = v14;

    v16 = [(PKPeerPaymentActionTransferToBankViewController *)self navigationItem];
    [v16 pkui_setCenterAlignedTitleView:self->_passNavbarTitleView];

    v17 = [PKEnterCurrencyAmountPassTableHeaderFooterView alloc];
    v18 = 0;
  }

  else
  {
    v17 = [PKEnterCurrencyAmountPassTableHeaderFooterView alloc];
    v18 = [(PKPeerPaymentActionViewController *)self pass];
  }

  v19 = [(PKEnterCurrencyAmountPassTableHeaderFooterView *)v17 initWithCurrenyAmount:v8 pass:v18];
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
  v30 = [MEMORY[0x1E69DC888] clearColor];
  [(UITableView *)v29 setBackgroundColor:v30];

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
  v37 = [(PKPeerPaymentActionTransferToBankViewController *)self view];
  [v37 addSubview:self->_tableView];
  if (self->_footerContainer)
  {
    [v37 addSubview:?];
  }

  [(PKPeerPaymentActionTransferToBankViewController *)self updateAccountValues];
  v38 = [(PKPeerPaymentActionTransferToBankViewController *)self view];
  [v38 setAccessibilityIdentifier:v31];
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
  v3 = [(PKPeerPaymentActionTransferToBankViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(PKPeerPaymentActionTransferToBankViewController *)self _passViewInNavBar])
  {
    v12 = [(PKPeerPaymentActionTransferToBankViewController *)self navigationController];
    v13 = [v12 navigationBar];

    [v13 frame];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKPeerPaymentActionTransferToBankCellReuseIdentifier"];
  v8 = [(PKPeerPaymentActionViewController *)self controllerAction];
  supportedTransferActions = self->_supportedTransferActions;
  v10 = [v6 row];

  v11 = [(NSArray *)supportedTransferActions objectAtIndex:v10];
  v12 = [v11 integerValue];

  if (!v7)
  {
    v7 = [[PKPeerPaymentActionTransferToBankCell alloc] initWithReuseIdentifier:@"PKPeerPaymentActionTransferToBankCellReuseIdentifier"];
  }

  if (v12 == 3)
  {
    v16 = [(PKPeerPaymentActionViewController *)self actionController];
    v17 = [v16 bankInformation];

    if ([v17 isValid])
    {
      v14 = [v17 bankName];
      v18 = MEMORY[0x1E696AEC0];
      v19 = PKPANMask();
      v20 = [v17 accountSuffix];
      v15 = [v18 stringWithFormat:@"%@ %@", v19, v20];
    }

    else
    {
      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_15.isa);
      v15 = 0;
    }

    v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_16.isa);
    v23 = @"PEER_PAYMENT_TRANSFER_TO_BANK_ACCOUNT_CELL_FEE";
    goto LABEL_16;
  }

  if (v12 == 2)
  {
    defaultInstantFundsOutPaymentPass = self->_defaultInstantFundsOutPaymentPass;
    if (defaultInstantFundsOutPaymentPass)
    {
      v14 = [(PKPaymentPass *)defaultInstantFundsOutPaymentPass organizationName];
      v15 = PKSanitizedPrimaryAccountRepresentationForPass();
    }

    else
    {
      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_11.isa);
      v15 = 0;
    }

    v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_12.isa);
    v17 = [(PKPeerPaymentActionTransferToBankViewController *)self _calculateFee];
    if (v17)
    {
      v24 = [(NSNumberFormatter *)self->_currencyFormatter stringFromNumber:v17];
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
  v14 = 0;
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
  [(PKPeerPaymentActionTransferToBankCell *)v7 setTitleText:v14];
  [(PKPeerPaymentActionTransferToBankCell *)v7 setSubtitleText:v15];
  [(PKPeerPaymentActionTransferToBankCell *)v7 setFeeText:v22];
  [(PKPeerPaymentActionTransferToBankCell *)v7 setShowCheckmark:v12 == v8];
  v27 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(PKPeerPaymentActionTransferToBankCell *)v7 setBackgroundColor:v27];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = -[NSArray objectAtIndex:](self->_supportedTransferActions, "objectAtIndex:", [v6 row]);
  v8 = [v7 integerValue];

  v9 = [(PKPeerPaymentActionViewController *)self controllerAction];
  v10 = [(PKPeerPaymentActionViewController *)self actionController];
  if (v8 != v9)
  {
    v11 = [(PKPeerPaymentActionTransferToBankViewController *)self _indexPathForAction:v8];
    v12 = [(PKPeerPaymentActionTransferToBankViewController *)self _indexPathForAction:v9];
    [v10 setControllerAction:v8];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v13 safelyAddObject:v11];
    [v13 safelyAddObject:v12];
    v14 = [v13 copy];
    [v18 reloadRowsAtIndexPaths:v14 withRowAnimation:100];
  }

  [v18 deselectRowAtIndexPath:v6 animated:1];
  [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState];
  if (v8 == 3)
  {
    v16 = [v10 bankInformation];
    v17 = [v16 isValid];

    if (v17)
    {
      goto LABEL_10;
    }

    v15 = [(PKPeerPaymentActionViewController *)self actionController];
    [v15 presentAddBankAccountViewController];
    goto LABEL_9;
  }

  if (v8 == 2 && !self->_defaultInstantFundsOutPaymentPass)
  {
    v15 = [(PKPeerPaymentActionViewController *)self actionController];
    [v15 presentAddDebitCardViewController];
LABEL_9:
  }

LABEL_10:
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:{@"PKPeerPaymentActionTransferToBankFooterReuseIdentifier", a4}];
  v6 = [MEMORY[0x1E69DCC28] footerConfiguration];
  v7 = [(PKPeerPaymentActionTransferToBankViewController *)self _sectionFooterText];
  [v6 setText:v7];

  v8 = [v6 textProperties];
  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC38]);
  [v8 setFont:v9];

  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setColor:v10];

  [v5 setContentConfiguration:v6];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9818]];

  return v5;
}

- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4
{
  v5 = a4;
  if (PKPaymentSetupForceBridgeAppearance() & 1) != 0 || ([(PKPeerPaymentActionViewController *)self context], (PKPaymentSetupContextIsBridge()))
  {
    v6 = 2030;
  }

  else if ([v5 userInterfaceStyle] == 2)
  {
    v6 = 2030;
  }

  else
  {
    v6 = 2010;
  }

  return v6;
}

- (void)peerPaymentActionController:(id)a3 hasChangedState:(unint64_t)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v15 peerPaymentActionController:a3 hasChangedState:?];
  switch(a4)
  {
    case 1uLL:
      v6 = [(PKPeerPaymentActionTransferToBankViewController *)self navigationController];
      [v6 dismissViewControllerAnimated:1 completion:0];

      [(PKPeerPaymentActionTransferToBankViewController *)self _showNavigationBarSpinner:0];
LABEL_6:
      [(PKPeerPaymentActionTransferToBankViewController *)self _showNavigationBarSpinner:0];
      v7 = [(PKPeerPaymentActionViewController *)self actionController];
      v8 = [v7 controllerAction];
      if (v8 == 3)
      {
        v12 = [v7 bankInformation];
        v13 = [v12 isValid];

        if (v13)
        {
LABEL_13:
          [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState];

          return;
        }

        [v7 setControllerAction:0];
        tableView = self->_tableView;
        v10 = [(PKPeerPaymentActionTransferToBankViewController *)self _indexPathForAction:3];
        v16 = v10;
        v11 = &v16;
      }

      else
      {
        if (v8 != 2 || self->_defaultInstantFundsOutPaymentPass)
        {
          goto LABEL_13;
        }

        [v7 setControllerAction:0];
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

- (id)presentationSceneIdentifierForPeerPaymentActionController:(id)a3
{
  v3 = [(PKPeerPaymentActionTransferToBankViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)updateAccountValues
{
  v36.receiver = self;
  v36.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v36 updateAccountValues];
  v3 = [(PKPeerPaymentActionViewController *)self account];
  v4 = [(PKPeerPaymentActionTransferToBankViewController *)self _defaultInstantFundsOutPaymentPass];
  defaultInstantFundsOutPaymentPass = self->_defaultInstantFundsOutPaymentPass;
  self->_defaultInstantFundsOutPaymentPass = v4;

  if (v3)
  {
    v6 = [v3 currentBalance];
    v7 = [v6 amount];
    [(PKPeerPaymentActionTransferToBankViewController *)self setMaxBalance:v7];
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v3 supportsInstantWithdrawal])
    {
      [v8 addObject:&unk_1F3CC7E38];
      v9 = [v3 instantWithdrawalPromotionFeatureDescriptor];
      v10 = [v9 feePercentage];
      feePercentage = self->_feePercentage;
      self->_feePercentage = v10;

      v12 = [v9 minimumFee];
      minimumFee = self->_minimumFee;
      self->_minimumFee = v12;

      v14 = [v9 maximumFee];
      maximumFee = self->_maximumFee;
      self->_maximumFee = v14;
    }

    if ([v3 supportsTransferToBank])
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

    v18 = [(PKPeerPaymentActionViewController *)self actionController];
    v19 = [(NSArray *)self->_supportedTransferActions objectAtIndex:0];
    v20 = [v19 integerValue];

    if (v20 == 3)
    {
      v34 = [v18 bankInformation];
      v35 = [v34 isValid];

      if (!v35)
      {
        goto LABEL_11;
      }
    }

    else if (v20 != 2 || !self->_defaultInstantFundsOutPaymentPass)
    {
      goto LABEL_11;
    }

    [v18 setControllerAction:v20];
LABEL_11:

LABEL_12:
    v21 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    v22 = [v21 enterCurrencyAmountView];

    v23 = [v3 currentBalance];
    v24 = [v23 currency];
    [v22 setCurrency:v24];

    [v22 sizeToFit];
    v25 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    v26 = [v25 balanceView];

    v27 = [v6 currency];
    [v26 setCurrencyCode:v27];

    v28 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
    [v26 setMaxLoadAmount:v28];

    v29 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
    [v26 setMinLoadAmount:v29];

    [v26 setMaxBalance:v7];
    v30 = [(PKPeerPaymentActionViewController *)self minBalance];
    [v26 setMinBalance:v30];

    v31 = [v6 amount];
    [v26 setCardBalance:v31];

    [v26 sizeToFit];
    v32 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:v32 shouldGenerateNewSuggestions:1];

    v33 = [(PKPeerPaymentActionTransferToBankViewController *)self viewIfLoaded];
    [v33 setNeedsLayout];
  }

  [(UITableView *)self->_tableView reloadData];
  [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState];
}

- (void)enterCurrencyAmountPassViewDidLoadPassSnapshot:(id)a3
{
  [(PKPeerPaymentActionTransferToBankViewController *)self _updateTableHeaderHeight];
  v4 = [(PKPeerPaymentActionTransferToBankViewController *)self viewIfLoaded];
  [v4 setNeedsLayout];
}

- (void)setMaxBalance:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self maxBalance];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setMaxBalance:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    v7 = [v6 balanceView];
    [v7 setMaxBalance:v4];

    v8 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:v8 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinBalance:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self minBalance];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setMinBalance:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    v7 = [v6 balanceView];
    [v7 setMinBalance:v4];

    v8 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:v8 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMaxLoadAmount:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setMaxLoadAmount:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    v7 = [v6 balanceView];
    [v7 setMaxLoadAmount:v4];

    v8 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:v8 shouldGenerateNewSuggestions:1];
  }
}

- (void)setMinLoadAmount:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setMinLoadAmount:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    v7 = [v6 balanceView];
    [v7 setMinLoadAmount:v4];

    v8 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:v8 shouldGenerateNewSuggestions:1];
  }
}

- (void)setCardBalance:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v9.receiver = self;
  v9.super_class = PKPeerPaymentActionTransferToBankViewController;
  [(PKPeerPaymentActionViewController *)&v9 setCardBalance:v4];
  if (v5 != v4 && ([v4 isEqualToNumber:v5] & 1) == 0)
  {
    v6 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
    v7 = [v6 balanceView];
    [v7 setCardBalance:v4];

    v8 = [(PKPeerPaymentActionViewController *)self currentAmount];
    [(PKPeerPaymentActionTransferToBankViewController *)self _updateCurrentAmount:v8 shouldGenerateNewSuggestions:1];
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
  v3 = [(PKPeerPaymentActionTransferToBankViewController *)self navigationItem];
  v11 = [v3 rightBarButtonItem];

  v4 = [(PKPeerPaymentActionViewController *)self account];

  if (v4)
  {
    v5 = [(PKPeerPaymentActionTransferToBankViewController *)self _isCurrentAmountValid];
    v6 = [(PKPeerPaymentActionViewController *)self controllerAction];
    if (v6 == 2)
    {
      v9 = self->_defaultInstantFundsOutPaymentPass != 0;
    }

    else if (v6 == 3)
    {
      v7 = [(PKPeerPaymentActionViewController *)self actionController];
      v8 = [v7 bankInformation];
      v9 = [v8 isValid];
    }

    else
    {
      v9 = 0;
    }

    v10 = v5 & v9;
  }

  else
  {
    v10 = 0;
  }

  [v11 setEnabled:v10];
}

- (void)_doneAction
{
  [(PKPeerPaymentActionTransferToBankViewController *)self _showNavigationBarSpinner:1];
  v8 = [(PKPeerPaymentActionViewController *)self currentAmount];
  v3 = [(PKPeerPaymentActionViewController *)self account];
  v4 = [v3 currentBalance];
  v5 = [v4 currency];

  v6 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:v8 currency:v5 exponent:0];
  v7 = [(PKPeerPaymentActionViewController *)self actionController];
  [v7 performActionWithCurrencyAmount:v6];
}

- (void)_updateCurrentAmount:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PKPeerPaymentActionViewController *)self setCurrentAmount:v6];
  v9 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
  v7 = [v9 balanceView];
  [v7 subtractAmountFromBalance:v6];

  v8 = [v9 enterCurrencyAmountView];
  [v8 setCurrentAmount:v6];

  [(PKPeerPaymentActionTransferToBankViewController *)self _currentAmountDidChangeTo:v6 shouldGenerateNewSuggestions:v4];
}

- (void)_currentAmountDidChangeTo:(id)a3 shouldGenerateNewSuggestions:(BOOL)a4
{
  [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState:a3];
  v5 = [(PKPeerPaymentActionTransferToBankViewController *)self viewIfLoaded];
  [v5 setNeedsLayout];
}

- (BOOL)_isCurrentAmountValid
{
  v3 = [(PKPeerPaymentActionViewController *)self currentAmount];
  v4 = [(PKPeerPaymentActionViewController *)self cardBalance];
  v5 = [(PKPeerPaymentActionViewController *)self minBalance];
  v6 = [(PKPeerPaymentActionViewController *)self maxBalance];
  v7 = [(PKPeerPaymentActionViewController *)self minLoadAmount];
  v8 = [(PKPeerPaymentActionViewController *)self maxLoadAmount];
  v9 = [v4 decimalNumberBySubtracting:v3];
  v10 = [MEMORY[0x1E696AB90] notANumber];
  v11 = [v3 isEqualToNumber:v10];

  v12 = [MEMORY[0x1E696AB90] zero];
  v13 = [v3 compare:v12];

  if (!v13 || v8 && [v8 compare:v3] == -1 || v7 && objc_msgSend(v7, "compare:", v3) == 1 || v5 && objc_msgSend(v5, "compare:", v9) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11 ^ 1;
    if (v6)
    {
      v14 &= [v6 compare:v9] != -1;
    }
  }

  return v14;
}

- (id)_indexPathForAction:(unint64_t)a3
{
  supportedTransferActions = self->_supportedTransferActions;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
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
    v3 = [(PKPeerPaymentActionViewController *)self currentAmount];
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
    v14 = [(PKPeerPaymentActionTransferToBankViewController *)self viewIfLoaded];
    [v14 setNeedsLayout];
  }
}

- (id)_sectionFooterText
{
  v3 = [(PKPeerPaymentActionViewController *)self account];
  v4 = [v3 supportsInstantWithdrawal];

  if (!v4)
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
  v3 = [(PKPeerPaymentActionViewController *)self account];
  v4 = [v3 supportsInstantWithdrawal];

  if (v4)
  {
    v5 = [(PKPeerPaymentActionViewController *)self account];
    v6 = [v5 instantWithdrawalPromotionFeatureDescriptor];

    v7 = objc_alloc_init(MEMORY[0x1E69B8FE8]);
    v8 = [v6 supportedNetworks];
    [v7 setSupportedNetworks:v8];

    [v7 setSupportsInstantFundsIn:1];
    [v7 setPeerPaymentType:5];
    v9 = [MEMORY[0x1E69B8A58] sharedInstance];
    v10 = [v9 _defaultPaymentPassForPaymentRequest:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_dismissViewController:(id)a3
{
  v6 = a3;
  v4 = [v6 presentingViewController];

  if (v4)
  {
    [v6 presentingViewController];
  }

  else
  {
    [(PKPeerPaymentActionTransferToBankViewController *)self navigationController];
  }
  v5 = ;
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)_showNavigationBarSpinner:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPeerPaymentActionTransferToBankViewController *)self _amountPassView];
  v6 = [v5 enterCurrencyAmountView];
  v7 = !v3;
  [v6 setEnabled:!v3];

  [(UITableView *)self->_tableView setAllowsSelection:!v3];
  v8 = [(PKPeerPaymentActionTransferToBankViewController *)self navigationItem];
  if (v7)
  {
    [(PKPeerPaymentActionTransferToBankViewController *)self _transferBarButton];
  }

  else
  {
    [(PKPeerPaymentActionTransferToBankViewController *)self _spinnerBarButton];
  }
  v9 = ;
  [v8 setRightBarButtonItem:v9];

  [(PKPeerPaymentActionTransferToBankViewController *)self _updateBarButtonEnabledState];
}

@end