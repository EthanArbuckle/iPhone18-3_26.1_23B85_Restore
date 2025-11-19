@interface PKAddBankAccountInformationViewController
- (BOOL)_allCellsHavePastedContent;
- (BOOL)_cellValuesAreValid;
- (BOOL)_isCellValidAtRow:(unint64_t)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (PKAddBankAccountInformationViewController)initWithState:(unint64_t)a3 delegate:(id)a4 bankInformation:(id)a5 accountCountryCode:(id)a6 featureAccount:(id)a7;
- (PKAddBankAccountInformationViewControllerDelegate)delegate;
- (double)_minimumRequiredWidthForCellText:(id)a3 withFont:(id)a4;
- (id)_bankInformationTextForRow:(unint64_t)a3;
- (id)_cellHasPastedContent;
- (id)_countrySpecificLocalizedStringKeyForKey:(id)a3;
- (id)_countrySpecificLocalizedStringKeyForKey:(id)a3 minDigits:(unint64_t)a4 maxDigits:(unint64_t)a5;
- (id)_countrySpecificLocalizedStringKeyForKey:(id)a3 numberOfDigits:(unint64_t)a4;
- (id)_footerView;
- (id)_headerSubTitle;
- (id)_headerTitle;
- (id)_placeholderTextForRow:(unint64_t)a3;
- (id)_textForRow:(unint64_t)a3;
- (id)_userEnteredTextForCellAtRow:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_maxTextLengthForRow:(unint64_t)a3;
- (unint64_t)_minTextLengthForRow:(unint64_t)a3;
- (unint64_t)_rowWithTextField:(id)a3;
- (void)_addPaymentFundingSourceWithCompletion:(id)a3;
- (void)_addToBankCredentialCenter;
- (void)_deleteBankInformation;
- (void)_reloadTableSection;
- (void)_setCellHasPastedContent:(BOOL)a3 forRow:(unint64_t)a4;
- (void)_setContentHidden:(BOOL)a3;
- (void)_setIdleTimerDisabled:(BOOL)a3 title:(id)a4 subtitle:(id)a5;
- (void)_setNavigationBarEnabled:(BOOL)a3;
- (void)_setNavigationBarItemsHidden:(BOOL)a3;
- (void)_setState:(unint64_t)a3;
- (void)_setTableFooterView;
- (void)_setTableViewHeaderActivitySpinnerAnimated:(BOOL)a3 title:(id)a4 subtitle:(id)a5;
- (void)_setText:(id)a3 forForCellAtRow:(unint64_t)a4;
- (void)_showHeaderActivitySpinner;
- (void)_showHowToFindAccountInformationViewController:(id)a3;
- (void)_updateBankAccountInformationWithValues:(id)a3 completion:(id)a4;
- (void)_updateHeaderAndNavigationItems;
- (void)cancel:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)setHeaderViewTitle:(id)a3 subtitle:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textFieldDidClear:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddBankAccountInformationViewController

- (PKAddBankAccountInformationViewController)initWithState:(unint64_t)a3 delegate:(id)a4 bankInformation:(id)a5 accountCountryCode:(id)a6 featureAccount:(id)a7
{
  v45[2] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v43.receiver = self;
  v43.super_class = PKAddBankAccountInformationViewController;
  v16 = [(PKPaymentSetupTableViewController *)&v43 initWithContext:0];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_featureAccount, a7);
    v17->_state = a3;
    objc_storeWeak(&v17->_delegate, v12);
    v18 = [MEMORY[0x1E695DF90] dictionary];
    cells = v17->_cells;
    v17->_cells = v18;

    v20 = v13;
    if (!v13)
    {
      v20 = objc_alloc_init(MEMORY[0x1E69B86A8]);
    }

    objc_storeStrong(&v17->_bankInformation, v20);
    if (!v13)
    {
    }

    v17->_saveToBankCredentialCenter = 1;
    v17->_showDeleteButton = 1;
    if (PKBankCredentialCenterEnabled())
    {
      v21 = objc_alloc_init(MEMORY[0x1E6967E60]);
      fkCredentialImporter = v17->_fkCredentialImporter;
      v17->_fkCredentialImporter = v21;
    }

    v23 = [v14 uppercaseString];
    accountCountryCode = v17->_accountCountryCode;
    v17->_accountCountryCode = v23;

    v25 = [MEMORY[0x1E695DF90] dictionary];
    userEnteredValues = v17->_userEnteredValues;
    v17->_userEnteredValues = v25;

    v17->_isEditingBankInformation = [(PKBankAccountInformation *)v17->_bankInformation isValid];
    [(PKAddBankAccountInformationViewController *)v17 _setNavigationBarItemsHidden:0];
    if (v17->_isEditingBankInformation)
    {
      v27 = v17->_userEnteredValues;
      v44[0] = @"PKAddBankAccountRoutingNumberKey";
      v28 = [(PKBankAccountInformation *)v17->_bankInformation routingNumber];
      v44[1] = @"PKAddBankAccountAccountNumberKey";
      v45[0] = v28;
      v29 = [(PKBankAccountInformation *)v17->_bankInformation accountNumber];
      v45[1] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
      v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17->_state];
      [(NSMutableDictionary *)v27 setObject:v30 forKey:v31];
    }

    v32 = [MEMORY[0x1E695DF70] array];
    v33 = [MEMORY[0x1E695DF70] array];
    v34 = [(PKAddBankAccountInformationViewController *)v17 _textForRow:0];
    [v32 addObject:v34];

    v35 = [(PKAddBankAccountInformationViewController *)v17 _placeholderTextForRow:0];
    [v33 addObject:v35];

    v36 = [(PKAddBankAccountInformationViewController *)v17 _textForRow:1];
    [v32 addObject:v36];

    v37 = [(PKAddBankAccountInformationViewController *)v17 _placeholderTextForRow:1];
    [v33 addObject:v37];

    v38 = [v32 copy];
    cellText = v17->_cellText;
    v17->_cellText = v38;

    v40 = [v33 copy];
    cellPlaceholderText = v17->_cellPlaceholderText;
    v17->_cellPlaceholderText = v40;
  }

  return v17;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKAddBankAccountInformationViewController;
  [(PKPaymentSetupTableViewController *)&v4 dealloc];
}

- (void)loadView
{
  v25.receiver = self;
  v25.super_class = PKAddBankAccountInformationViewController;
  [(PKPaymentSetupTableViewController *)&v25 loadView];
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  v4 = [PKCollapsibleHeaderView alloc];
  v5 = [(PKCollapsibleHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v5;

  v7 = self->_headerView;
  v8 = [(PKAddBankAccountInformationViewController *)self _headerTitle];
  v9 = [(PKAddBankAccountInformationViewController *)self _headerSubTitle];
  [(PKCollapsibleHeaderView *)v7 setTitle:v8 subtitle:v9];

  [(PKCollapsibleHeaderView *)self->_headerView setTitleAccessoriesEnabled:0];
  [(PKCollapsibleHeaderView *)self->_headerView setAdditionalBottomPadding:11.0];
  [v3 setTableHeaderView:self->_headerView];
  v10 = [(PKPaymentSetupTableViewController *)self dockView];
  v11 = [v10 footerView];

  v12 = [v11 primaryButton];
  v13 = [v12 titleLabel];
  v14 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [v13 setText:v14];

  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69DC628];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __53__PKAddBankAccountInformationViewController_loadView__block_invoke;
  v22 = &unk_1E8010A60;
  objc_copyWeak(&v23, &location);
  v16 = [v15 actionWithHandler:&v19];
  [v12 addAction:v16 forControlEvents:{0x2000, v19, v20, v21, v22}];
  [v12 setEnabled:{-[PKAddBankAccountInformationViewController _cellValuesAreValid](self, "_cellValuesAreValid")}];
  if (self->_isEditingBankInformation && self->_showDeleteButton)
  {
    v17 = [v11 secondaryActionButton];
    v18 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_4.isa);
    [v17 setTitle:v18 forState:0];

    [v17 addTarget:self action:sel__deleteBankInformation forControlEvents:0x2000];
  }

  [(PKAddBankAccountInformationViewController *)self _setTableFooterView];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __53__PKAddBankAccountInformationViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _nextAction];
    WeakRetained = v2;
  }
}

- (void)viewWillLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = PKAddBankAccountInformationViewController;
  [(PKPaymentSetupTableViewController *)&v22 viewWillLayoutSubviews];
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  [v3 bounds];
  v5 = v4;
  [(PKCollapsibleHeaderView *)self->_headerView frame];
  v7 = v6;
  v9 = v8;
  v10 = PKSetupViewConstantsViewMargin();
  [(PKCollapsibleHeaderView *)self->_headerView setReadableContentInsets:0.0, v10, 0.0, v10];
  [(PKCollapsibleHeaderView *)self->_headerView sizeThatFits:v5 + v10 * -2.0, 1.79769313e308];
  if (v7 != v12 || v9 != v11)
  {
    headerView = self->_headerView;
    [v3 _rectForTableHeaderView];
    [(PKCollapsibleHeaderView *)headerView setFrame:?];
    [v3 setTableHeaderView:0];
    [v3 setTableHeaderView:self->_headerView];
  }

  v15 = [v3 tableFooterView];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  [v15 sizeThatFits:{v5, 1.79769313e308}];
  if (v15 && (v17 != v20 || v19 != v21))
  {
    [v3 _rectForTableFooterView];
    [v15 setFrame:?];
    [v3 setTableFooterView:0];
    [v3 setTableFooterView:v15];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKAddBankAccountInformationViewController;
  [(PKPaymentSetupTableViewController *)&v7 viewWillAppear:a3];
  v4 = [(PKPaymentSetupTableViewController *)self dockView];
  v5 = [v4 footerView];
  v6 = [v5 primaryButton];
  [v6 setEnabled:{-[PKAddBankAccountInformationViewController _cellValuesAreValid](self, "_cellValuesAreValid")}];
}

- (void)viewDidAppear:(BOOL)a3
{
  v25.receiver = self;
  v25.super_class = PKAddBankAccountInformationViewController;
  [(PKPaymentSetupTableViewController *)&v25 viewDidAppear:a3];
  if (!self->_isEditingBankInformation)
  {
    v4 = [(NSMutableDictionary *)self->_cells objectForKey:&unk_1F3CC7CB8];
    v5 = [v4 editableTextField];
    [v5 becomeFirstResponder];
  }

  if ([(PKBankAccountInformation *)self->_bankInformation type]== 1 && [(PKAddBankAccountInformationViewController *)self offerKeychainPreFill])
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B86A8]);
    if ([v6 isValid])
    {
      [(PKAccount *)self->_featureAccount feature];
      v7 = MEMORY[0x1E69DC650];
      v8 = PKLocalizedFeatureString();
      v9 = PKLocalizedFeatureString();
      v10 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

      v11 = MEMORY[0x1E69DC648];
      v12 = PKLocalizedFeatureString();
      v13 = [v11 actionWithTitle:v12 style:1 handler:0];
      [v10 addAction:v13];

      v14 = MEMORY[0x1E69DC648];
      v15 = PKLocalizedFeatureString();
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __59__PKAddBankAccountInformationViewController_viewDidAppear___block_invoke;
      v22 = &unk_1E8011310;
      v23 = v6;
      v24 = self;
      v16 = [v14 actionWithTitle:v15 style:0 handler:&v19];

      [v10 addAction:{v16, v19, v20, v21, v22}];
      [v10 setPreferredAction:v16];
      [(PKAddBankAccountInformationViewController *)self presentViewController:v10 animated:1 completion:0];
    }
  }

  if ([(PKAccount *)self->_featureAccount type]== 4)
  {
    v17 = [objc_alloc(MEMORY[0x1E69B9178]) initWithType:1];
    assessmentManager = self->_assessmentManager;
    self->_assessmentManager = v17;
  }
}

void __59__PKAddBankAccountInformationViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"PKAddBankAccountRoutingNumberKey";
  v2 = [*(a1 + 32) routingNumber];
  v6[1] = @"PKAddBankAccountAccountNumberKey";
  v7[0] = v2;
  v3 = [*(a1 + 32) accountNumber];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  [*(*(a1 + 40) + 1184) setObject:v4 forKey:&unk_1F3CC7CD0];
  [*(*(a1 + 40) + 1184) setObject:v4 forKey:&unk_1F3CC7CE8];
  [*(*(a1 + 40) + 1184) setObject:v4 forKey:&unk_1F3CC7D00];
  *(*(a1 + 40) + 1194) = 1;
  v5 = [*(a1 + 40) tableView];
  [v5 reloadData];

  *(*(a1 + 40) + 1128) = 3;
  [*(a1 + 40) _setState:*(*(a1 + 40) + 1128)];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_shouldHideContent)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKPeerPaymentBankAccountDetailCell"];
  v8 = [v6 row];

  if (v7)
  {
    v9 = [(PKPeerPaymentBankAccountDetailCell *)v7 editableTextField];
    [v9 setEnabled:1];
  }

  else
  {
    v7 = [[PKPeerPaymentBankAccountDetailCell alloc] initWithStyle:1000 reuseIdentifier:@"PKPeerPaymentBankAccountDetailCell"];
    v10 = [(PKPeerPaymentBankAccountDetailCell *)v7 editableTextField];
    [v10 setDelegate:self];

    v11 = [(PKPeerPaymentBankAccountDetailCell *)v7 editableTextField];
    [v11 setKeyboardType:11];

    [(PKPeerPaymentBankAccountDetailCell *)v7 setShouldDrawSeperator:1];
  }

  v12 = [(PKPeerPaymentBankAccountDetailCell *)v7 editableTextField];
  v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, 0, 4);
  [v12 setFont:v13];

  v14 = [(PKPeerPaymentBankAccountDetailCell *)v7 editableTextField];
  v15 = [(PKAddBankAccountInformationViewController *)self _bankInformationTextForRow:v8];
  [v14 setText:v15];

  v16 = [(PKPeerPaymentBankAccountDetailCell *)v7 textLabel];
  v17 = [(NSArray *)self->_cellText objectAtIndex:v8];
  [v16 setText:v17];

  v18 = [(PKPeerPaymentBankAccountDetailCell *)v7 editableTextField];
  v19 = [(NSArray *)self->_cellPlaceholderText objectAtIndex:v8];
  [v18 setPlaceholder:v19];

  v20 = [(PKPeerPaymentBankAccountDetailCell *)v7 editableTextField];
  v21 = v20;
  v22 = MEMORY[0x1E69B9BA8];
  v23 = MEMORY[0x1E69B93B0];
  if (v8 != 1)
  {
    v23 = MEMORY[0x1E69B9D90];
  }

  if (v8)
  {
    v22 = v23;
  }

  v24 = *v22;
  [v20 setAccessibilityIdentifier:*v22];

  v25 = [(PKPeerPaymentBankAccountDetailCell *)v7 textLabel];
  v26 = [v25 font];

  [(PKAddBankAccountInformationViewController *)self _minimumRequiredWidthForCellText:self->_cellText withFont:v26];
  PKFloatCeilToPixel(v27, v28);
  [(PKPeerPaymentBankAccountDetailCell *)v7 setMinimumTextLabelWidth:?];
  [(PKPeerPaymentBankAccountDetailCell *)v7 setAccessibilityIdentifier:v24];
  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  v30 = *MEMORY[0x1E69DE5C0];
  v31 = [(PKPeerPaymentBankAccountDetailCell *)v7 editableTextField];
  [v29 addObserver:self selector:sel_textFieldDidChange_ name:v30 object:v31];

  cells = self->_cells;
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [(NSMutableDictionary *)cells setObject:v7 forKey:v33];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v13.receiver = self;
  v13.super_class = PKAddBankAccountInformationViewController;
  v8 = a4;
  [(PKPaymentSetupTableViewController *)&v13 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:a5];
  v9 = [v8 textLabel];
  v10 = [v9 font];

  [(PKAddBankAccountInformationViewController *)self _minimumRequiredWidthForCellText:self->_cellText withFont:v10];
  PKFloatCeilToPixel(v11, v12);
  [v8 setMinimumTextLabelWidth:?];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  if (self->_isEditingBankInformation && self->_state == 1)
  {
    v8 = v4;
    v5 = [(PKPaymentSetupTableViewController *)self tableView];
    v6 = [(PKAddBankAccountInformationViewController *)self _footerView];
    [v5 setTableFooterView:v6];

    v7 = [(PKPaymentSetupTableViewController *)self tableView];
    [v7 setNeedsLayout];

    if (!self->_hasInteractedWithCell)
    {
      [(PKAddBankAccountInformationViewController *)self _setText:0 forForCellAtRow:1];
      [(PKAddBankAccountInformationViewController *)self _setText:0 forForCellAtRow:0];
    }

    self->_hasInteractedWithCell = 1;
    v4 = v8;
  }
}

- (void)textFieldDidChange:(id)a3
{
  v6 = [(PKPaymentSetupTableViewController *)self dockView];
  v4 = [v6 footerView];
  v5 = [v4 primaryButton];
  [v5 setEnabled:{-[PKAddBankAccountInformationViewController _cellValuesAreValid](self, "_cellValuesAreValid")}];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = a3;
  v11 = [v10 text];
  v12 = [v11 stringByReplacingCharactersInRange:location withString:{length, v9}];
  v13 = [v12 pk_zString];

  v14 = [(PKAddBankAccountInformationViewController *)self _rowWithTextField:v10];
  v15 = [v13 length];
  v16 = [(PKAddBankAccountInformationViewController *)self _maxTextLengthForRow:v14];
  v17 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v18 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v9];
  v19 = [v17 isSupersetOfSet:v18];
  if (v15 <= v16)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v21 = v13;
    v22 = v9;
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if (!v22 || !v21)
      {

LABEL_13:
        v25 = 0;
        goto LABEL_14;
      }

      v24 = [v21 isEqualToString:v22];

      if (!v24)
      {
        goto LABEL_13;
      }
    }

    v25 = [v23 length] > 1;
LABEL_14:
    [(PKAddBankAccountInformationViewController *)self _setCellHasPastedContent:v25 forRow:v14];
  }

  return v20;
}

- (void)cancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained bankAccountInformationViewControllerChangedBankAccountInformation:self];
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained addBankAccountInformationViewControllerDidFinish:self];
  }

  else
  {
    v4 = [(PKAddBankAccountInformationViewController *)self presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_cellHasPastedContent
{
  v10[2] = *MEMORY[0x1E69E9840];
  cellHasPastedContent = self->_cellHasPastedContent;
  if (!cellHasPastedContent)
  {
    v4 = MEMORY[0x1E695DF90];
    v9[0] = &unk_1F3CC7CD0;
    v9[1] = &unk_1F3CC7CB8;
    v10[0] = MEMORY[0x1E695E110];
    v10[1] = MEMORY[0x1E695E110];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
    v6 = [v4 dictionaryWithDictionary:v5];
    v7 = self->_cellHasPastedContent;
    self->_cellHasPastedContent = v6;

    cellHasPastedContent = self->_cellHasPastedContent;
  }

  return cellHasPastedContent;
}

- (void)_setCellHasPastedContent:(BOOL)a3 forRow:(unint64_t)a4
{
  if (a4 <= 1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = [(PKAddBankAccountInformationViewController *)self _cellHasPastedContent];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [v7 setObject:v9 forKeyedSubscript:v8];
  }
}

- (BOOL)_allCellsHavePastedContent
{
  v3 = [(PKAddBankAccountInformationViewController *)self _cellHasPastedContent];
  v4 = [v3 objectForKeyedSubscript:&unk_1F3CC7CD0];

  v5 = [(PKAddBankAccountInformationViewController *)self _cellHasPastedContent];
  v6 = [v5 objectForKeyedSubscript:&unk_1F3CC7CB8];

  if ([v4 BOOLValue])
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setTableFooterView
{
  if (self->_state != 1 || self->_isEditingBankInformation || self->_shouldHideContent)
  {
    v4 = [(PKPaymentSetupTableViewController *)self tableView];
    [v4 setTableFooterView:0];
  }

  else
  {
    v4 = [(PKPaymentSetupTableViewController *)self tableView];
    v3 = [(PKAddBankAccountInformationViewController *)self _footerView];
    [v4 setTableFooterView:v3];
  }
}

- (unint64_t)_rowWithTextField:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  cells = self->_cells;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PKAddBankAccountInformationViewController__rowWithTextField___block_invoke;
  v9[3] = &unk_1E801F2E0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)cells enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __63__PKAddBankAccountInformationViewController__rowWithTextField___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [a3 editableTextField];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v9 unsignedIntegerValue];
    *a4 = 1;
  }
}

- (double)_minimumRequiredWidthForCellText:(id)a3 withFont:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v21 = *MEMORY[0x1E69DB648];
  v22[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * i) sizeWithAttributes:{v7, v16}];
        if (v14 > v12)
        {
          v12 = v14;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (void)textFieldDidClear:(id)a3
{
  v4 = [(PKAddBankAccountInformationViewController *)self _rowWithTextField:a3];

  [(PKAddBankAccountInformationViewController *)self _setCellHasPastedContent:0 forRow:v4];
}

- (BOOL)_cellValuesAreValid
{
  v3 = [(PKAddBankAccountInformationViewController *)self _isAccountNumberCellValid];
  if (v3)
  {

    LOBYTE(v3) = [(PKAddBankAccountInformationViewController *)self _isRoutingNumberCellValid];
  }

  return v3;
}

- (BOOL)_isCellValidAtRow:(unint64_t)a3
{
  v5 = [(PKAddBankAccountInformationViewController *)self _userEnteredTextForCellAtRow:?];
  v6 = [v5 length];
  if (v6 >= [(PKAddBankAccountInformationViewController *)self _minTextLengthForRow:a3])
  {
    v8 = [v5 length];
    v7 = v8 <= [(PKAddBankAccountInformationViewController *)self _maxTextLengthForRow:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_userEnteredTextForCellAtRow:(unint64_t)a3
{
  cells = self->_cells;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)cells objectForKey:v4];

  v6 = [v5 editableTextField];
  v7 = [v6 text];

  return v7;
}

- (void)_setText:(id)a3 forForCellAtRow:(unint64_t)a4
{
  cells = self->_cells;
  v7 = MEMORY[0x1E696AD98];
  v8 = a3;
  v9 = [v7 numberWithUnsignedInteger:a4];
  v11 = [(NSMutableDictionary *)cells objectForKey:v9];

  v10 = [v11 editableTextField];
  [v10 setText:v8];

  [(PKAddBankAccountInformationViewController *)self _setCellHasPastedContent:0 forRow:a4];
}

- (void)_setState:(unint64_t)a3
{
  state = a3;
  v60[2] = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    v5 = [(PKAddBankAccountInformationViewController *)self _userEnteredTextForCellAtRow:1];
    v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

    v8 = [(PKAddBankAccountInformationViewController *)self _userEnteredTextForCellAtRow:0];
    v9 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];

    if (state == 1)
    {
      self->_state = 1;
    }

    else
    {
      userEnteredValues = self->_userEnteredValues;
      v59[0] = @"PKAddBankAccountRoutingNumberKey";
      v59[1] = @"PKAddBankAccountAccountNumberKey";
      v60[0] = v10;
      v60[1] = v7;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_state];
      [(NSMutableDictionary *)userEnteredValues setObject:v12 forKey:v13];

      self->_state = state;
      if (state == 2 && [(PKAddBankAccountInformationViewController *)self _allCellsHavePastedContent])
      {
        self->_state = 3;
        v14 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Skipping Bank Account 'confirm' step since both fields have were pasted into", buf, 2u);
        }
      }
    }

    state = self->_state;
  }

  if (state == 4)
  {
    self->_state = 2;
    [(PKAddBankAccountInformationViewController *)self _updateHeaderAndNavigationItems];
    [(PKAddBankAccountInformationViewController *)self _setTableFooterView];
  }

  else if (state == 3)
  {
    v15 = [MEMORY[0x1E695DFA8] set];
    v16 = [MEMORY[0x1E695DFA8] set];
    *buf = 0;
    v54 = buf;
    v55 = 0x2020000000;
    v56 = [(NSMutableDictionary *)self->_userEnteredValues count]!= 0;
    v17 = self->_userEnteredValues;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __55__PKAddBankAccountInformationViewController__setState___block_invoke;
    v49[3] = &unk_1E801F308;
    v18 = v15;
    v50 = v18;
    v19 = v16;
    v51 = v19;
    v52 = buf;
    [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v49];
    if (v54[24])
    {
      v20 = [(PKPaymentSetupTableViewController *)self tableView];
      [(PKAddBankAccountInformationViewController *)self _showHeaderActivitySpinner];
      [(PKAddBankAccountInformationViewController *)self _setNavigationBarItemsHidden:1];
      [v20 setUserInteractionEnabled:0];
      v21 = [(NSMutableDictionary *)self->_cells objectForKey:&unk_1F3CC7CD0];
      v22 = [v21 editableTextField];
      [v22 setEnabled:0];

      v23 = [(NSMutableDictionary *)self->_cells objectForKey:&unk_1F3CC7CB8];
      v24 = [v23 editableTextField];
      [v24 setEnabled:0];

      v57[0] = @"PKAddBankAccountAccountNumberKey";
      v25 = [v18 anyObject];
      v57[1] = @"PKAddBankAccountRoutingNumberKey";
      v58[0] = v25;
      v26 = [v19 anyObject];
      v58[1] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __55__PKAddBankAccountInformationViewController__setState___block_invoke_3;
      aBlock[3] = &unk_1E801F330;
      aBlock[4] = self;
      v28 = v20;
      v47 = v28;
      v29 = _Block_copy(aBlock);
      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __55__PKAddBankAccountInformationViewController__setState___block_invoke_6;
      v43 = &unk_1E8010DD0;
      v44 = self;
      v30 = v29;
      v45 = v30;
      [(PKAddBankAccountInformationViewController *)self _updateBankAccountInformationWithValues:v27 completion:&v40];
    }

    else
    {
      v31 = MEMORY[0x1E69DC650];
      v32 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_5.isa);
      v33 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_6.isa);
      v28 = [v31 alertControllerWithTitle:v32 message:v33 preferredStyle:1];

      v34 = MEMORY[0x1E69DC648];
      v35 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_7.isa);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __55__PKAddBankAccountInformationViewController__setState___block_invoke_2;
      v48[3] = &unk_1E80112E8;
      v48[4] = self;
      v36 = [v34 actionWithTitle:v35 style:0 handler:v48];
      [v28 addAction:v36];

      [(PKAddBankAccountInformationViewController *)self presentViewController:v28 animated:1 completion:0];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(PKAddBankAccountInformationViewController *)self _updateHeaderAndNavigationItems];
    [(PKAddBankAccountInformationViewController *)self _setTableFooterView];
    [(PKAddBankAccountInformationViewController *)self _reloadTableSection];
  }

  v37 = [(PKPaymentSetupTableViewController *)self dockView:v40];
  v38 = [v37 footerView];

  [v38 setSecondaryActionButton:0];
  v39 = [v38 primaryButton];
  [v39 setEnabled:{-[PKAddBankAccountInformationViewController _cellValuesAreValid](self, "_cellValuesAreValid")}];
}

void __55__PKAddBankAccountInformationViewController__setState___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v8 = [v6 objectForKey:@"PKAddBankAccountAccountNumberKey"];
  v7 = [v6 objectForKey:@"PKAddBankAccountRoutingNumberKey"];

  [*(a1 + 32) addObject:v8];
  [*(a1 + 40) addObject:v7];
  if ([*(a1 + 32) count] != 1 || objc_msgSend(*(a1 + 40), "count") != 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }
}

uint64_t __55__PKAddBankAccountInformationViewController__setState___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1184) removeAllObjects];
  [*(a1 + 32) _setText:0 forForCellAtRow:1];
  [*(a1 + 32) _setText:0 forForCellAtRow:0];
  v2 = *(a1 + 32);

  return [v2 _setState:1];
}

void __55__PKAddBankAccountInformationViewController__setState___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKAddBankAccountInformationViewController__setState___block_invoke_4;
  v10[3] = &unk_1E8011C98;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __55__PKAddBankAccountInformationViewController__setState___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _hideHeaderActivitySpinner];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    if (v2[151])
    {
      v4 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", v3, [v2[151] feature], 0, 0);
      v5 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
      [*(*(a1 + 32) + 1184) removeAllObjects];
      [*(a1 + 32) _setState:1];
      [*(a1 + 32) _updateHeaderAndNavigationItems];
      [*(a1 + 32) presentViewController:v5 animated:1 completion:0];

      v2 = *(a1 + 32);
    }

    [v2 _setContentHidden:0];
    [*(a1 + 32) _setNavigationBarItemsHidden:0];
    v6 = *(a1 + 56);

    [v6 setUserInteractionEnabled:1];
  }

  else
  {
    [v2 _addToBankCredentialCenter];
    v7 = *(a1 + 48);
    if (v7 && [v7 verificationType] == 2)
    {
      v12 = [[PKApplyVerificationTrialDepositViewController alloc] initWithSetupDelegate:*(a1 + 32) context:0 verificationPage:*(a1 + 48) account:*(*(a1 + 32) + 1208)];
      v8 = [*(a1 + 32) navigationController];
      if ([v8 pk_settings_useStateDrivenNavigation])
      {
        [v8 pk_settings_pushViewController:v12];
      }

      else
      {
        [v8 pushViewController:v12 animated:1];
      }
    }

    else
    {
      [*(*(a1 + 32) + 1112) setTitleAccessoriesEnabled:1];
      [*(*(a1 + 32) + 1112) showCheckmark:1 animated:1];
      if (*(*(a1 + 32) + 1192))
      {
        v9 = @"PEER_PAYMENT_BANK_DONE";
      }

      else
      {
        v9 = @"PEER_PAYMENT_BANK_INFO_ADDED";
      }

      v10 = PKLocalizedPeerPaymentString(&v9->isa);
      [*(a1 + 32) setHeaderViewTitle:v10 subtitle:&stru_1F3BD7330];
      v11 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__PKAddBankAccountInformationViewController__setState___block_invoke_5;
      block[3] = &unk_1E8010970;
      block[4] = *(a1 + 32);
      dispatch_after(v11, MEMORY[0x1E69E96A0], block);
    }
  }
}

void __55__PKAddBankAccountInformationViewController__setState___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1232));
  [WeakRetained bankAccountInformationViewControllerChangedBankAccountInformation:*(a1 + 32)];
  [*(a1 + 32) cancel:0];
}

uint64_t __55__PKAddBankAccountInformationViewController__setState___block_invoke_6(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1136) type] == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v2 _addPaymentFundingSourceWithCompletion:v3];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }
}

- (void)_reloadTableSection
{
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v3 reloadSections:v4 withRowAnimation:2];

  v6 = [(NSMutableDictionary *)self->_cells objectForKey:&unk_1F3CC7CB8];
  v5 = [v6 editableTextField];
  [v5 becomeFirstResponder];
}

- (id)_bankInformationTextForRow:(unint64_t)a3
{
  userEnteredValues = self->_userEnteredValues;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_state];
  v7 = [(NSMutableDictionary *)userEnteredValues objectForKey:v6];

  if (!a3)
  {
    v8 = @"PKAddBankAccountRoutingNumberKey";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v8 = @"PKAddBankAccountAccountNumberKey";
LABEL_5:
    v9 = [v7 objectForKey:v8];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  if (self->_state == 1 && [v9 length] || self->_prefilledFromKeychain)
  {
    v10 = PKSanitizedBankAccountNumber();

    v9 = v10;
  }

  return v9;
}

- (id)_textForRow:(unint64_t)a3
{
  if (!a3)
  {
    v5 = @"PEER_PAYMENT_BANK_INFO_ROUTING_NUMBER_FIELD_TITLE";
LABEL_5:
    v6 = [(PKAddBankAccountInformationViewController *)self _countrySpecificLocalizedStringKeyForKey:v5, v3];

    return v6;
  }

  if (a3 == 1)
  {
    v5 = @"PEER_PAYMENT_BANK_INFO_ACCOUNT_NUMBER_FIELD_TITLE";
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (id)_placeholderTextForRow:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(PKAddBankAccountInformationViewController *)self _countrySpecificLocalizedStringKeyForKey:@"PEER_PAYMENT_BANK_INFO_ACCOUNT_NUMBER_FIELD_PLACEHOLDER" minDigits:4 maxDigits:17];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PKAddBankAccountInformationViewController *)self _countrySpecificLocalizedStringKeyForKey:@"PEER_PAYMENT_BANK_INFO_ROUTING_NUMBER_FIELD_PLACEHOLDER" numberOfDigits:9];
  }

  return v3;
}

- (void)_showHeaderActivitySpinner
{
  v3 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_14.isa);
  [(PKAddBankAccountInformationViewController *)self _setTableViewHeaderActivitySpinnerAnimated:1 title:v3 subtitle:&stru_1F3BD7330];
}

- (void)_setTableViewHeaderActivitySpinnerAnimated:(BOOL)a3 title:(id)a4 subtitle:(id)a5
{
  v6 = a3;
  v8 = !a3;
  v9 = a5;
  v11 = a4;
  v10 = [(PKAddBankAccountInformationViewController *)self view];
  [v10 setUserInteractionEnabled:v8];

  [(PKAddBankAccountInformationViewController *)self _setNavigationBarEnabled:v8];
  if (!v8)
  {
    [(PKAddBankAccountInformationViewController *)self _setContentHidden:1];
  }

  if ([(PKCollapsibleHeaderView *)self->_headerView showSpinner]!= v6)
  {
    [(PKCollapsibleHeaderView *)self->_headerView setTitleAccessoriesEnabled:v6];
  }

  [(PKCollapsibleHeaderView *)self->_headerView setShowSpinner:v6];
  [(PKAddBankAccountInformationViewController *)self setHeaderViewTitle:v11 subtitle:v9];
  [(PKAddBankAccountInformationViewController *)self _setIdleTimerDisabled:v6 title:v11 subtitle:v9];
}

- (void)setHeaderViewTitle:(id)a3 subtitle:(id)a4
{
  [(PKCollapsibleHeaderView *)self->_headerView setTitle:a3 subtitle:a4];
  v10 = [(PKPaymentSetupTableViewController *)self tableView];
  headerView = self->_headerView;
  [v10 bounds];
  [(PKCollapsibleHeaderView *)headerView sizeThatFits:v6, 1.79769313e308];
  v8 = v7;
  v9 = self->_headerView;
  [v10 _rectForTableHeaderView];
  [(PKCollapsibleHeaderView *)v9 setFrame:?];
  [v10 _tableHeaderHeightDidChangeToHeight:v8];
  [(PKCollapsibleHeaderView *)self->_headerView setNeedsLayout];
}

- (void)_setContentHidden:(BOOL)a3
{
  if (self->_shouldHideContent != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_shouldHideContent = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__PKAddBankAccountInformationViewController__setContentHidden___block_invoke;
    v5[3] = &unk_1E8010970;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

uint64_t __63__PKAddBankAccountInformationViewController__setContentHidden___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v2 reloadSections:v3 withRowAnimation:5];

  v4 = *(a1 + 32);

  return [v4 _setTableFooterView];
}

- (void)_setIdleTimerDisabled:(BOOL)a3 title:(id)a4 subtitle:(id)a5
{
  v6 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"enabled";
    v12 = 138413058;
    if (v6)
    {
      v10 = @"disabled";
    }

    v13 = v10;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = @"PKAddBankAccountInformation";
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Payment Setup has %@ the Idle Timer. (For: %@ - %@) - %@.", &v12, 0x2Au);
  }

  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  [v11 _setIdleTimerDisabled:v6 forReason:@"PKAddBankAccountInformation"];
}

- (void)_setNavigationBarEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = [(PKAddBankAccountInformationViewController *)self navigationController];
  v5 = [v10 navigationBar];
  [v5 setUserInteractionEnabled:v3];

  v6 = [v10 interactivePopGestureRecognizer];
  [v6 setEnabled:v3];

  v7 = [(PKAddBankAccountInformationViewController *)self navigationItem];
  v8 = v7;
  v9 = !v3 || self->_state == 3;
  [v7 setHidesBackButton:v9 animated:1];
}

- (void)_setNavigationBarItemsHidden:(BOOL)a3
{
  v3 = a3;
  v6 = [(PKAddBankAccountInformationViewController *)self navigationItem];
  if (v3)
  {
    [v6 setLeftBarButtonItem:0];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    [v6 setLeftBarButtonItem:v5];
  }
}

- (void)_deleteBankInformation
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_4.isa);
  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_15.isa);
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_16.isa);
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_17.isa);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKAddBankAccountInformationViewController__deleteBankInformation__block_invoke;
  v13[3] = &unk_1E80112E8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:2 handler:v13];
  [v6 addAction:v12];

  [(PKAddBankAccountInformationViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __67__PKAddBankAccountInformationViewController__deleteBankInformation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1136) deleteAllBankInformation];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1232));
  [WeakRetained bankAccountInformationViewControllerChangedBankAccountInformation:*(a1 + 32)];
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_updateBankAccountInformationWithValues:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKey:@"PKAddBankAccountAccountNumberKey"];
  v9 = [v7 objectForKey:@"PKAddBankAccountRoutingNumberKey"];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__PKAddBankAccountInformationViewController__updateBankAccountInformationWithValues_completion___block_invoke;
  aBlock[3] = &unk_1E801F358;
  aBlock[4] = self;
  v10 = v9;
  v27 = v10;
  v11 = v8;
  v28 = v11;
  v12 = v6;
  v29 = v12;
  v13 = _Block_copy(aBlock);
  if (self->_featureAccount)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69B8478]);
    [v14 setCountryCode:self->_accountCountryCode];
    [v14 setQuery:v10];
    v15 = [(PKAccount *)self->_featureAccount accountBaseURL];
    [v14 setBaseURL:v15];

    v16 = [MEMORY[0x1E69B8EF8] sharedService];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __96__PKAddBankAccountInformationViewController__updateBankAccountInformationWithValues_completion___block_invoke_2;
    v22[3] = &unk_1E801F380;
    v23 = v10;
    v24 = self;
    v25 = v13;
    v17 = v13;
    [v16 accountBankLookupWithRequest:v14 completion:v22];
  }

  else
  {
    v14 = [MEMORY[0x1E69B9020] sharedService];
    accountCountryCode = self->_accountCountryCode;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __96__PKAddBankAccountInformationViewController__updateBankAccountInformationWithValues_completion___block_invoke_196;
    v19[3] = &unk_1E801F3A8;
    v20 = v10;
    v21 = v13;
    v16 = v13;
    [v14 peerPaymentBankLookupWithCountryCode:accountCountryCode query:v20 completion:v19];

    v17 = v20;
  }
}

uint64_t __96__PKAddBankAccountInformationViewController__updateBankAccountInformationWithValues_completion___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 1136);
  v5 = a2;
  [v4 setRoutingNumber:v3];
  [*(a1[4] + 1136) setAccountNumber:a1[6]];
  [*(a1[4] + 1136) setBankName:v5];

  result = a1[7];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __96__PKAddBankAccountInformationViewController__updateBankAccountInformationWithValues_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 success];
  if (v6 || (v7 & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Error looking up bank name with query: %@, error: %@", &v14, 0x16u);
    }
  }

  v10 = [v5 displayName];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    [*(a1[5] + 1208) feature];
    v12 = PKLocalizedFeatureString();
  }

  v13 = v12;

  (*(a1[6] + 16))();
}

void __96__PKAddBankAccountInformationViewController__updateBankAccountInformationWithValues_completion___block_invoke_196(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 success];
  if (v6 || (v7 & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Error looking up bank name with query: %@, error: %@", &v12, 0x16u);
    }
  }

  v10 = [v5 displayName];
  if (v10)
  {
    [v5 displayName];
  }

  else
  {
    PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_18.isa);
  }
  v11 = ;

  (*(*(a1 + 40) + 16))();
}

- (void)_addPaymentFundingSourceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = objc_alloc_init(MEMORY[0x1E69B8488]);
  [v6 setDestination:2];
  v7 = [(PKAccount *)self->_featureAccount accountBaseURL];
  [v6 setBaseURL:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke;
  v10[3] = &unk_1E801F498;
  v10[4] = self;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [v9 accountServiceCertificatesWithRequest:v6 completion:v10];
}

void __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__45;
    v21[4] = __Block_byref_object_dispose__45;
    v22 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__45;
    v19[4] = __Block_byref_object_dispose__45;
    v20 = 0;
    if ([*(*(a1 + 32) + 1208) type] == 4)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_203;
      v18[3] = &unk_1E801F3F8;
      v18[4] = v21;
      [v8 addOperation:v18];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_3;
      v17[3] = &unk_1E8016750;
      v17[4] = *(a1 + 32);
      v17[5] = v19;
      [v8 addOperation:v17];
    }

    v9 = [MEMORY[0x1E695DFB0] null];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_5;
    v11[3] = &unk_1E801F470;
    v11[4] = *(a1 + 32);
    v12 = v5;
    v15 = v21;
    v16 = v19;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v10 = [v8 evaluateWithInput:v9 completion:v11];

    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);
  }
}

void __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_203(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69B8EF8] sharedService];
  v9 = [v8 targetDevice];
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_2;
    v10[3] = &unk_1E801F3D0;
    v13 = *(a1 + 32);
    v12 = v7;
    v11 = v6;
    [v9 paymentWebService:v8 deviceMetadataWithFields:251 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 1216);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_4;
  v12[3] = &unk_1E801F420;
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v8 waitForAssessmentWithCompletion:v12];
}

void __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1208) accountIdentifier];
  v3 = [objc_alloc(MEMORY[0x1E69B83A8]) initWithType:1];
  v4 = objc_alloc_init(MEMORY[0x1E69B83A0]);
  [v4 setAccountIdentifier:v2];
  v5 = [*(*(a1 + 32) + 1136) bankName];
  [v4 setName:v5];

  v6 = [*(*(a1 + 32) + 1136) accountNumber];
  [v4 setAccountNumber:v6];

  v7 = [*(*(a1 + 32) + 1136) routingNumber];
  [v4 setRoutingNumber:v7];

  [v3 setFundingDetails:v4];
  v8 = objc_alloc_init(MEMORY[0x1E69B8460]);
  [v8 setAccountIdentifier:v2];
  v9 = [*(*(a1 + 32) + 1208) accountBaseURL];
  [v8 setBaseURL:v9];

  [v8 setFundingSource:v3];
  [v8 setCertificatesResponse:*(a1 + 40)];
  v10 = [*(*(a1 + 32) + 1208) addFundingSourceFeatureDescriptor];
  v11 = [v10 fundingSourceTermsIdentifier];
  [v8 setFundingSourceTermsIdentifier:v11];

  [v8 setDeviceMetadata:*(*(*(a1 + 64) + 8) + 40)];
  [v8 setOdiAssessment:*(*(*(a1 + 72) + 8) + 40)];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_6;
  v13[3] = &unk_1E801F448;
  v13[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  v14 = *(a1 + 56);
  [v12 addFundingSourceWithRequest:v8 completion:v13];
}

void __84__PKAddBankAccountInformationViewController__addPaymentFundingSourceWithCompletion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  if (!v26 || v5)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1232));
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = objc_loadWeakRetained((*(a1 + 32) + 1232));
      [v24 addBankAccountInformationViewController:*(a1 + 32) didFailWithError:v5];
    }

    v25 = *(a1 + 40);
    v6 = [v26 confirmationPage];
    (*(v25 + 16))(v25, v6, v5);
  }

  else
  {
    v6 = [v26 fundingSource];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1208);
    if (v8)
    {
      v9 = [v8 accountIdentifier];
      v10 = [v6 identifier];
      PKSetLastBankAccountIdentifierForAccountTransfer();

      v7 = *(a1 + 32);
    }

    v11 = objc_loadWeakRetained((v7 + 1232));
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained((*(a1 + 32) + 1232));
      [v13 addBankAccountInformationViewController:*(a1 + 32) didAddFundingSource:v6];
    }

    v14 = *(*(a1 + 32) + 1216);
    if (v14)
    {
      [v14 provideSessionFeedbackIngested];
    }

    v15 = objc_alloc_init(MEMORY[0x1E69B86A8]);
    [v15 updateToLatestKeychainData];
    if (([v15 isValid] & 1) == 0)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69B86A8]);
      v17 = [*(*(a1 + 32) + 1136) accountNumber];
      [v16 setAccountNumber:v17];

      v18 = [*(*(a1 + 32) + 1136) routingNumber];
      [v16 setRoutingNumber:v18];

      v19 = [*(*(a1 + 32) + 1136) bankName];
      [v16 setBankName:v19];
    }

    v20 = *(a1 + 40);
    v21 = [v26 confirmationPage];
    (*(v20 + 16))(v20, v21, 0);
  }
}

- (void)_addToBankCredentialCenter
{
  if (self->_saveToBankCredentialCenter)
  {
    v4 = objc_alloc(MEMORY[0x1E6967D78]);
    v5 = [(PKBankAccountInformation *)self->_bankInformation accountNumber];
    v6 = [(PKBankAccountInformation *)self->_bankInformation routingNumber];
    v9 = [v4 initWithAccountNumber:v5 routingNumber:v6];

    fkCredentialImporter = self->_fkCredentialImporter;
    v8 = [(PKBankAccountInformation *)self->_bankInformation bankName];
    [(FKWalletBankCredentialImporter *)fkCredentialImporter insertCredentialFromACHPaymentInformation:v9 bankName:v8 completion:&__block_literal_global_185];
  }
}

void __71__PKAddBankAccountInformationViewController__addToBankCredentialCenter__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Failed to insert bank credential from bank information: %@", &v4, 0xCu);
    }
  }
}

- (id)_headerSubTitle
{
  state = self->_state;
  if (state == 1)
  {
    v4 = @"PEER_PAYMENT_BANK_INFO_COMPLETE_ACCOUNT_INFO";
LABEL_5:
    v5 = PKLocalizedPeerPaymentString(&v4->isa);

    return v5;
  }

  if (state == 2)
  {
    v4 = @"PEER_PAYMENT_BANK_INFO_CONFIRM_ACCOUNT_NUMBER";
    goto LABEL_5;
  }

  v5 = &stru_1F3BD7330;

  return v5;
}

- (void)_updateHeaderAndNavigationItems
{
  v3 = [(PKAddBankAccountInformationViewController *)self _headerTitle];
  v4 = [(PKAddBankAccountInformationViewController *)self _headerSubTitle];
  [(PKAddBankAccountInformationViewController *)self setHeaderViewTitle:v3 subtitle:v4];

  v7 = [(PKPaymentSetupTableViewController *)self dockView];
  v5 = [v7 footerView];
  v6 = [v5 primaryButton];
  [v6 setEnabled:{-[PKAddBankAccountInformationViewController _cellValuesAreValid](self, "_cellValuesAreValid")}];
}

- (id)_headerTitle
{
  if (self->_isEditingBankInformation)
  {
    v2 = @"PEER_PAYMENT_PERFORM_ACTION_EDIT_BANK_ACCOUNT";
  }

  else
  {
    v2 = @"PEER_PAYMENT_PERFORM_ACTION_ADD_BANK_ACCOUNT";
  }

  v3 = PKLocalizedPeerPaymentString(&v2->isa);

  return v3;
}

- (id)_footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC628];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __56__PKAddBankAccountInformationViewController__footerView__block_invoke;
    v19 = &unk_1E8010A60;
    objc_copyWeak(&v20, &location);
    v5 = [v4 actionWithHandler:&v16];
    v6 = [PKFindBankAccountInformationFooterView alloc];
    v7 = [(PKFindBankAccountInformationFooterView *)v6 initWithFrame:v5 action:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v16, v17, v18, v19];
    v8 = self->_footerView;
    self->_footerView = v7;

    v9 = self->_footerView;
    v10 = [(PKPaymentSetupTableViewController *)self tableView];
    [v10 bounds];
    [(PKFindBankAccountInformationFooterView *)v9 sizeThatFits:CGRectGetWidth(v23), 3.40282347e38];
    v12 = v11;
    v14 = v13;

    [(PKFindBankAccountInformationFooterView *)self->_footerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v14];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    footerView = self->_footerView;
  }

  return footerView;
}

void __56__PKAddBankAccountInformationViewController__footerView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _showHowToFindAccountInformationViewController:v4];
}

- (void)_showHowToFindAccountInformationViewController:(id)a3
{
  v12 = [[PKExplanationViewController alloc] initWithContext:0];
  v4 = [(PKExplanationViewController *)v12 explanationView];
  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_21.isa);
  [v4 setTitleText:v5];

  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_22.isa);
  [v4 setBodyText:v6];

  v7 = PKOBKHeaderTitleFont();
  [v4 setTitleFont:v7];

  [v4 setBodyTextAlignment:PKOBKTextAlignment()];
  [(PKExplanationViewController *)v12 setShowDoneButton:1];
  [(PKExplanationViewController *)v12 setShowCancelButton:0];
  [v4 setShowPrivacyView:0];
  v8 = [v4 dockView];
  [v8 setPrimaryButton:0];

  v9 = PKUIImageNamed(@"CheckInfo");
  [v4 setImage:v9];

  v10 = [[PKNavigationController alloc] initWithRootViewController:v12];
  [(PKNavigationController *)v10 setSupportedInterfaceOrientations:2];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKNavigationController *)v10 setModalPresentationStyle:2];
  }

  v11 = [(PKAddBankAccountInformationViewController *)self navigationController];
  [v11 presentViewController:v10 animated:1 completion:0];
}

- (unint64_t)_minTextLengthForRow:(unint64_t)a3
{
  if (a3)
  {
    return 4 * (a3 == 1);
  }

  else
  {
    return 9;
  }
}

- (unint64_t)_maxTextLengthForRow:(unint64_t)a3
{
  v3 = 17;
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 9;
  }
}

- (id)_countrySpecificLocalizedStringKeyForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingFormat:@"_%@", self->_accountCountryCode];
  v6 = PKLocalizedPeerPaymentString(v5);

  if (!v6)
  {
    v7 = [v4 stringByAppendingString:@"_DEFAULT"];
    v6 = PKLocalizedPeerPaymentString(v7);
  }

  return v6;
}

- (id)_countrySpecificLocalizedStringKeyForKey:(id)a3 numberOfDigits:(unint64_t)a4
{
  v6 = MEMORY[0x1E696ADA0];
  v7 = MEMORY[0x1E696AD98];
  v8 = a3;
  v9 = [v7 numberWithUnsignedInteger:a4];
  v10 = [v6 localizedStringFromNumber:v9 numberStyle:0];

  v11 = [(PKAddBankAccountInformationViewController *)self _countrySpecificLocalizedStringKeyForKey:v8];

  v12 = PKStringWithValidatedFormat();

  return v12;
}

- (id)_countrySpecificLocalizedStringKeyForKey:(id)a3 minDigits:(unint64_t)a4 maxDigits:(unint64_t)a5
{
  v8 = MEMORY[0x1E696ADA0];
  v9 = MEMORY[0x1E696AD98];
  v10 = a3;
  v11 = [v9 numberWithUnsignedInteger:a4];
  v12 = [v8 localizedStringFromNumber:v11 numberStyle:0];

  v13 = MEMORY[0x1E696ADA0];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v15 = [v13 localizedStringFromNumber:v14 numberStyle:0];

  v16 = [(PKAddBankAccountInformationViewController *)self _countrySpecificLocalizedStringKeyForKey:v10];

  v17 = PKStringWithValidatedFormat();

  return v17;
}

- (PKAddBankAccountInformationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end