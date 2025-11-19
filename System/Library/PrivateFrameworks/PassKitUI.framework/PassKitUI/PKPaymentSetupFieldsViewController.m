@interface PKPaymentSetupFieldsViewController
- (BOOL)_allFieldsComplete;
- (BOOL)fieldCellEditableTextFieldShouldBeginEditing:(id)a3;
- (BOOL)fieldCellEditableTextFieldShouldReturn:(id)a3;
- (BOOL)isComplete;
- (BOOL)isEmpty;
- (BOOL)shouldAppearWithFirstEmptyFieldAsFirstResponder;
- (PKPaymentSetupFieldsViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_contextSpecificStringForAggDKey:(id)a3;
- (id)_footerTextForValidationError;
- (id)allCells;
- (id)cellForIdentifier:(id)a3;
- (id)displayedFooterField;
- (id)firstEmptyCell;
- (id)firstEmptyField;
- (id)firstEmptySetupField;
- (id)firstResponderCell;
- (id)footerHyperlinkView;
- (id)footerViewForIdentifier:(id)a3;
- (id)headerView;
- (id)identifierForIndexPath:(id)a3;
- (id)nextResponderCellForCurrentIdentifier:(id)a3;
- (id)readonlyFieldIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)visibleFieldIdentifiers;
- (id)visibleFieldIdentifiersForSection:(unint64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configurePrimaryButton;
- (void)_continueNextActionLoop:(BOOL)a3;
- (void)_destroyNavigationBarButtonItemsAnimated:(BOOL)a3;
- (void)_fieldLabelDidTapButton:(id)a3;
- (void)_handleNextButtonTapped:(id)a3;
- (void)_noteFieldIdentifiersChangedUpdateHeaders:(BOOL)a3;
- (void)_setActivityIndicatorActive:(BOOL)a3 title:(id)a4 subtitle:(id)a5 animated:(BOOL)a6;
- (void)_setCellsEnabled:(BOOL)a3;
- (void)_setIdleTimerDisabled:(BOOL)a3 title:(id)a4 subtitle:(id)a5;
- (void)_setLeftBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)_setNavigationBarEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)_setRightBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)_triggerNextActionLoop:(BOOL)a3;
- (void)_updateErrorFooterIfNeeded;
- (void)_updateNavigationItemAnimated:(BOOL)a3;
- (void)_updatePrimaryButtonState;
- (void)endUserInteraction;
- (void)fieldCell:(id)a3 didTapKeyboardAccessory:(unint64_t)a4;
- (void)fieldCellDidTapButton:(id)a3;
- (void)fieldCellEditableTextFieldDidBeginEditing:(id)a3;
- (void)fieldCellEditableTextFieldDidEndEditing:(id)a3;
- (void)fieldCellEditableTextFieldValueDidChange:(id)a3;
- (void)fieldTextValueDidChangeForField:(id)a3;
- (void)hideActivitySpinner;
- (void)loadView;
- (void)logAnalyticsContextSpecificCheckpointForKey:(id)a3;
- (void)reloadHeaderView;
- (void)resetCellStyling;
- (void)setHeaderViewTitle:(id)a3 subtitle:(id)a4;
- (void)setPreferPrimaryButtonInNavigationBar:(BOOL)a3;
- (void)setPrimaryButtonTitleText:(id)a3;
- (void)setSectionIdentifiers:(id)a3;
- (void)setShowPrimaryButton:(BOOL)a3;
- (void)showCheckmarkAnimated:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPaymentSetupFieldsViewController

- (PKPaymentSetupFieldsViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = PKPaymentSetupFieldsViewController;
  v14 = [(PKPaymentSetupTableViewController *)&v20 initWithContext:a4];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_webService, a3);
    objc_storeWeak(&v15->_setupDelegate, v12);
    v16 = v13;
    if (!v13)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69B8E38]);
    }

    objc_storeStrong(&v15->_fieldsModel, v16);
    if (!v13)
    {
    }

    v17 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    fieldIdentifierToCellMap = v15->_fieldIdentifierToCellMap;
    v15->_fieldIdentifierToCellMap = v17;

    v15->_navigationEnabled = 1;
    v15->_primaryButtonEnabled = 0;
    v15->_cellsAreEnabled = 1;
    v15->_preferPrimaryButtonInNavigationBar = _UISolariumFeatureFlagEnabled() ^ 1;
    v15->_showPrimaryButton = 1;
    v15->_validationErrorCode = 0;
  }

  return v15;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v3 loadView];
  [(PKPaymentSetupFieldsViewController *)self _configurePrimaryButton];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupFieldsViewController *)&v10 viewDidLoad];
  v3 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel visiblePaymentSetupFields];
  v4 = [v3 count];

  if (!v4)
  {
    fieldsModel = self->_fieldsModel;
    v6 = [(PKPaymentSetupFieldsViewController *)self defaultFields];
    [(PKPaymentSetupFieldsModel *)fieldsModel updateWithPaymentSetupFields:v6];
  }

  v7 = [(PKPaymentSetupTableViewController *)self tableView];
  [v7 setAccessibilityIdentifier:*MEMORY[0x1E69B9A78]];
  v8 = [(PKPaymentSetupFieldsViewController *)self headerView];
  [v7 setTableHeaderView:v8];
  v9 = [(PKPaymentSetupFieldsViewController *)self footerView];
  [v7 setTableFooterView:v9];
  [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:0];
  [v7 setSectionHeaderHeight:12.0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v10 viewWillAppear:a3];
  [(PKPaymentSetupFieldsViewController *)self noteFieldIdentifiersChangedAndUpdateHeaders];
  [(PKPaymentSetupFieldsViewController *)self _setPrimaryButtonEnabled:[(PKPaymentSetupFieldsViewController *)self isComplete]];
  if ((!_UISolariumFeatureFlagEnabled() || self->_preferPrimaryButtonInNavigationBar) && [(PKPaymentSetupFieldsViewController *)self shouldAppearWithFirstEmptyFieldAsFirstResponder])
  {
    v4 = [(PKPaymentSetupFieldsViewController *)self firstEmptyField];
    v5 = [v4 window];
    if (v5)
    {
      v6 = v5;
      v7 = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
      v8 = [v7 becomeFirstResponder];

      if (v8)
      {
        return;
      }

      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
        *buf = 138412290;
        v12 = v9;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "[%@ becomeFirstResponder]; failed.", buf, 0xCu);
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v10 viewDidAppear:a3];
  if ((!_UISolariumFeatureFlagEnabled() || self->_preferPrimaryButtonInNavigationBar) && [(PKPaymentSetupFieldsViewController *)self shouldAppearWithFirstEmptyFieldAsFirstResponder])
  {
    v4 = [(PKPaymentSetupFieldsViewController *)self firstEmptyField];
    v5 = [v4 window];
    if (v5)
    {
      v6 = v5;
      v7 = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
      v8 = [v7 becomeFirstResponder];

      if (v8)
      {
        return;
      }

      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
        *buf = 138412290;
        v12 = v9;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "[%@ becomeFirstResponder]; failed.", buf, 0xCu);
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v5 viewWillDisappear:a3];
  v4 = [(PKPaymentSetupTableViewController *)self tableView];
  [v4 resignFirstResponder];

  [(PKPaymentSetupFieldCell *)self->_activeEditingCell resignFirstResponder];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupFieldsViewController *)&v9 viewDidLayoutSubviews];
  v3 = [(PKPaymentSetupFieldsViewController *)self headerView];
  [v3 sizeToFit];

  v4 = [(PKPaymentSetupTableViewController *)self tableView];
  v5 = [(PKPaymentSetupFieldsViewController *)self headerView];
  [v5 bounds];
  [v4 _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v10)];

  v6 = [(PKPaymentSetupFieldsViewController *)self footerView];
  [v6 sizeToFit];

  v7 = [(PKPaymentSetupTableViewController *)self tableView];
  v8 = [(PKPaymentSetupFieldsViewController *)self footerView];
  [v8 bounds];
  [v7 _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v11)];
}

- (BOOL)shouldAppearWithFirstEmptyFieldAsFirstResponder
{
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  [v3 contentSize];
  v5 = v4;

  v6 = [(PKPaymentSetupFieldsViewController *)self view];
  [v6 safeAreaInsets];
  v8 = v7;
  v9 = PKUIGetMinScreenType();
  v10 = (&unk_1BE115DE8 + 8 * v9);
  if (v9 >= 0x14)
  {
    v10 = (MEMORY[0x1E695F060] + 8);
  }

  v11 = *v10;
  [MEMORY[0x1E69DCBB8] defaultSizeForInterfaceOrientation:1];
  v13 = v12;
  v14 = [(PKPaymentSetupFieldsViewController *)self firstEmptySetupField];
  v15 = [v14 isOptional];

  v16 = [(PKPaymentSetupTableViewController *)self footerAttributedText];
  v17 = [v16 length];

  v18 = 0;
  if ((v15 & 1) == 0 && !v17 && v8 + v5 + v13 < v11)
  {
    v18 = !self->_showingActivitySpinner;
  }

  return v18;
}

- (id)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [PKTableHeaderView alloc];
    v5 = [(PKTableHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_headerView;
    self->_headerView = v5;

    [(PKTableHeaderView *)self->_headerView setStyle:3];
    [(PKTableHeaderView *)self->_headerView setShouldReserveSubtitleHeight:1];
    [(PKPaymentSetupFieldsViewController *)self reloadHeaderView];
    headerView = self->_headerView;
  }

  return headerView;
}

- (void)reloadHeaderView
{
  v13 = [(PKPaymentSetupFieldsViewController *)self defaultHeaderViewTitle];
  v3 = [(PKPaymentSetupFieldsViewController *)self defaultHeaderViewSubTitle];
  headerView = self->_headerView;
  if (v13 | v3)
  {
    [(PKTableHeaderView *)headerView setTopPadding:20.0];
  }

  else
  {
    [(PKTableHeaderView *)headerView setTopPadding:0.0];
    [(PKTableHeaderView *)self->_headerView setBottomPadding:0.0];
  }

  v5 = [(PKTableHeaderView *)self->_headerView titleLabel];
  [v5 setText:v13];

  v6 = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [v6 setText:v3];

  v7 = self->_headerView;
  v8 = [(PKPaymentSetupTableViewController *)self tableView];
  [v8 bounds];
  [(PKTableHeaderView *)v7 sizeThatFits:CGRectGetWidth(v15), 3.40282347e38];
  v10 = v9;
  v12 = v11;

  [(PKTableHeaderView *)self->_headerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v10, v12];
}

- (BOOL)isComplete
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v9];
        v11 = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
        v12 = [v11 containsObject:v9];

        LODWORD(v11) = [v10 isOptional];
        v13 = [v10 submissionStringMeetsAllRequirements];
        v14 = [v10 submissionStringMeetsValidationRegex];
        if (v11)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }

        v16 = v15 & v7;
        if ((v12 & 1) == 0)
        {
          v7 = v16;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7 & 1;
}

- (BOOL)_allFieldsComplete
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v8];
        v10 = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
        v11 = [v10 containsObject:v8];

        v12 = [v9 submissionStringMeetsAllRequirements];
        if ((v11 & 1) == 0 && !v12)
        {
          v13 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (void)_updateErrorFooterIfNeeded
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v7];
        if ([v8 isShowingError])
        {
          v9 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v7];
          v10 = [v9 textFieldObject];

          v4 = [v10 codeOnError];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (self->_validationErrorCode != v4 && !self->_sectionIdentifiers)
  {
    self->_validationErrorCode = v4;
    v11 = [(PKPaymentSetupTableViewController *)self tableView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [v11 _reloadSectionHeaderFooters:v12 withRowAnimation:5];
  }
}

- (void)fieldTextValueDidChangeForField:(id)a3
{
  [(PKPaymentSetupFieldsViewController *)self _setPrimaryButtonEnabled:[(PKPaymentSetupFieldsViewController *)self isComplete]];

  [(PKPaymentSetupFieldsViewController *)self _updateErrorFooterIfNeeded];
}

- (void)setSectionIdentifiers:(id)a3
{
  v8 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sectionIdentifiers, a3);
    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    fieldIdentifierToFooterViewMap = self->_fieldIdentifierToFooterViewMap;
    self->_fieldIdentifierToFooterViewMap = v5;

    v7 = [(PKPaymentSetupTableViewController *)self tableView];
    [v7 reloadData];
  }
}

- (id)displayedFooterField
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(PKPaymentSetupFieldsViewController *)self shouldDisplayFooterField])
  {
    v3 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel footerPaymentSetupField];
    v4 = [v3 copy];

    if (v4 && self->_validationErrorCode)
    {
      v5 = [(PKPaymentSetupFieldsViewController *)self _footerTextForValidationError];
      if (v5)
      {
        v6 = objc_alloc(MEMORY[0x1E696AAB0]);
        v11 = *MEMORY[0x1E69DB650];
        v7 = [MEMORY[0x1E69DC888] systemRedColor];
        v12[0] = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        v9 = [v6 initWithString:v5 attributes:v8];

        [v4 setBody:v9];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_footerTextForValidationError
{
  v3 = self->_validationErrorCode - 60043;
  if (v3 <= 0xA && ((0x683u >> (LOBYTE(self->_validationErrorCode) + 117)) & 1) != 0)
  {
    v4 = PKLocalizedPeerPaymentString(&off_1E801CC40[v3]->isa);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  sectionIdentifiers = self->_sectionIdentifiers;
  if (!sectionIdentifiers)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  v6 = [(NSArray *)sectionIdentifiers objectAtIndexedSubscript:a4];
  v7 = [v6 firstObject];

  v8 = [(PKPaymentSetupFieldsViewController *)self footerViewForIdentifier:v7];
  [v8 frame];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  sectionIdentifiers = self->_sectionIdentifiers;
  if (sectionIdentifiers)
  {
    v6 = [(NSArray *)sectionIdentifiers objectAtIndexedSubscript:a4];
    v7 = [v6 firstObject];

    v8 = [(PKPaymentSetupFieldsViewController *)self footerViewForIdentifier:v7];
  }

  else
  {
    v7 = [(PKPaymentSetupFieldsViewController *)self displayedFooterField:a3];
    if (v7 && [(PKPaymentSetupFieldsViewController *)self shouldDisplayFooterFieldInline:v7])
    {
      v8 = [(PKPaymentSetupFieldsViewController *)self footerHyperlinkView];
      v9 = [v7 body];
      [v8 setAttributedText:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  sectionIdentifiers = self->_sectionIdentifiers;
  if (sectionIdentifiers)
  {
    return [(NSArray *)sectionIdentifiers count];
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (self->_sectionIdentifiers)
  {
    [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:a4];
  }

  else
  {
    [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers:a3];
  }
  v4 = ;
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [(PKPaymentSetupFieldsViewController *)self identifierForIndexPath:a4];
  v6 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v5];
  [v6 setDelegate:self];
  v7 = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
  v8 = [v7 containsObject:v5];

  if (self->_cellsAreEnabled)
  {
    [v6 setEnabled:v8 ^ 1u];
  }

  return v6;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(PKPaymentSetupFieldsViewController *)self identifierForIndexPath:a4];
  v8 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v7];
  [v6 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  [v8 heightForWidth:CGRectGetWidth(v20)];
  v18 = v17;

  return v18;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v25.receiver = self;
  v25.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v25 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:v9];
  v10 = -[PKPaymentSetupFieldsViewController visibleFieldIdentifiersForSection:](self, "visibleFieldIdentifiersForSection:", [v9 section]);
  v11 = [v8 textLabel];
  v12 = [v11 font];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  }

  v15 = v14;

  [(PKPaymentSetupFieldsModel *)self->_fieldsModel minimumRequiredWidthForFieldIdentifiers:v10 withFont:v15];
  PKFloatCeilToPixel(v16, v17);
  [v8 setMinimumTextLabelWidth:?];
  v18 = [v10 objectAtIndex:{objc_msgSend(v9, "row")}];
  v19 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v18];
  v20 = [v9 row] + 1;
  if (v20 >= [v10 count])
  {
    v23 = [v19 isFieldTypeLabel] ^ 1;
LABEL_12:
    v24 = v23;
    goto LABEL_18;
  }

  v21 = [v10 objectAtIndexedSubscript:v20];
  if (v21)
  {
    v22 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v21];
  }

  else
  {
    v22 = 0;
  }

  if ([v19 isFieldTypeLabel])
  {
    if (!v22)
    {
      v23 = 0;
      v24 = 0;
      goto LABEL_18;
    }

    v23 = [v22 isFieldTypeLabel] ^ 1;

    goto LABEL_12;
  }

  if (v22)
  {
    v23 = [v22 isFieldTypeLabel];
  }

  else
  {
    v23 = 1;
  }

  v24 = 1;
LABEL_18:
  [v8 setShouldDrawSeperator:v24];
  [v8 setShouldDrawFullWidthSeperator:v23];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldsViewController;
  v5 = a4;
  v6 = a3;
  [(PKPaymentSetupTableViewController *)&v8 tableView:v6 didSelectRowAtIndexPath:v5];
  v7 = [v6 cellForRowAtIndexPath:{v5, v8.receiver, v8.super_class}];

  [v7 becomeFirstResponder];
}

- (BOOL)fieldCellEditableTextFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  if (!self->_hasScrolledToShowFields)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__PKPaymentSetupFieldsViewController_fieldCellEditableTextFieldShouldBeginEditing___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    self->_hasScrolledToShowFields = 1;
  }

  PKPaymentSetupApplyContextAppearance([(PKPaymentSetupTableViewController *)self context], v4);

  return 1;
}

void __83__PKPaymentSetupFieldsViewController_fieldCellEditableTextFieldShouldBeginEditing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  [v2 scrollToRowAtIndexPath:v1 atScrollPosition:2 animated:1];
}

- (void)fieldCellEditableTextFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  if ([(PKPaymentSetupFieldCell *)v4 usesCustomInputView])
  {
    [(PKPaymentSetupFieldsViewController *)self fieldCellEditableTextFieldValueDidChange:v4];
  }

  activeEditingCell = self->_activeEditingCell;
  self->_activeEditingCell = v4;
}

- (void)fieldCellEditableTextFieldDidEndEditing:(id)a3
{
  v5 = a3;
  if ([v5 usesCustomInputView])
  {
    [(PKPaymentSetupFieldsViewController *)self fieldCellEditableTextFieldValueDidChange:v5];
  }

  [(PKPaymentSetupFieldsViewController *)self _updateErrorFooterIfNeeded];
  activeEditingCell = self->_activeEditingCell;
  self->_activeEditingCell = 0;
}

- (void)fieldCellEditableTextFieldValueDidChange:(id)a3
{
  v4 = [a3 paymentSetupField];
  [(PKPaymentSetupFieldsViewController *)self fieldTextValueDidChangeForField:v4];
}

- (BOOL)fieldCellEditableTextFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 editableTextField];
  v6 = [v5 hasText];

  if (v6)
  {
    v7 = [v4 paymentSetupField];
    v8 = [v7 identifier];
    v9 = [(PKPaymentSetupFieldsViewController *)self nextResponderCellForCurrentIdentifier:v8];

    if (v9)
    {
      [v9 becomeFirstResponder];
    }

    else if ([(PKPaymentSetupFieldsViewController *)self isComplete])
    {
      [(PKPaymentSetupFieldsViewController *)self handleNextButtonTapped:self];
    }
  }

  return 0;
}

- (void)fieldCellDidTapButton:(id)a3
{
  v8 = a3;
  v4 = [v8 paymentSetupField];
  v5 = [v4 isFieldTypeLabel];

  if (v5)
  {
    v6 = [v8 paymentSetupField];
    v7 = [v6 labelFieldObject];

    [(PKPaymentSetupFieldsViewController *)self _fieldLabelDidTapButton:v7];
  }
}

- (void)fieldCell:(id)a3 didTapKeyboardAccessory:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v10 = v6;
    v7 = [v6 paymentSetupField];
    v8 = [v7 identifier];
    v9 = [(PKPaymentSetupFieldsViewController *)self nextResponderCellForCurrentIdentifier:v8];

    if (v9)
    {
      [v9 becomeFirstResponder];
    }

    else if ([(PKPaymentSetupFieldsViewController *)self isComplete]&& ![(PKPaymentSetupFieldsViewController *)self requiresExplicitPrimaryAction])
    {
      [(PKPaymentSetupFieldsViewController *)self _handleNextButtonTapped:self];
    }

    else
    {
      [v10 resignFirstResponder];
    }

    v6 = v10;
  }
}

- (void)_fieldLabelDidTapButton:(id)a3
{
  v4 = a3;
  v13 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKPaymentSetupTableViewController *)self context]];
  v5 = [v4 detailTitle];
  [(PKPaymentMoreInformationViewController *)v13 setDetailTitle:v5];

  v6 = [v4 detailSubtitle];
  [(PKPaymentMoreInformationViewController *)v13 setDetailSubtitle:v6];

  v7 = [v4 detailBody];
  [(PKPaymentMoreInformationViewController *)v13 setDetailBody:v7];

  v8 = [v4 businessChatIntentName];
  [(PKPaymentMoreInformationViewController *)v13 setBusinessChatIntentName:v8];

  v9 = [v4 businessChatButtonTitle];
  [(PKPaymentMoreInformationViewController *)v13 setBusinessChatButtonTitle:v9];

  v10 = [v4 businessChatIdentifier];

  [(PKPaymentMoreInformationViewController *)v13 setBusinessChatIdentifier:v10];
  v11 = [[PKNavigationController alloc] initWithRootViewController:v13];
  v12 = [(PKPaymentSetupFieldsViewController *)self navigationController];
  [v12 presentModalViewController:v11 withPaymentSetupContext:{-[PKPaymentSetupTableViewController context](self, "context")}];
}

- (void)_handleNextButtonTapped:(id)a3
{
  if (self->_primaryButtonEnabled)
  {
    v5 = a3;
    v6 = [(PKPaymentSetupTableViewController *)self tableView];
    v7 = [(PKPaymentSetupTableViewController *)self tableView];
    [v7 safeAreaInsets];
    [v6 setContentOffset:1 animated:{0.0, -v8}];

    v9 = [(PKPaymentSetupFieldsViewController *)self navigationController];
    v10 = [v9 navigationBar];
    [v10 setUserInteractionEnabled:0];

    v11 = [(PKPaymentSetupTableViewController *)self tableView];
    v12 = [v11 firstResponder];
    [v12 resignFirstResponder];

    [(PKPaymentSetupFieldsViewController *)self handleNextButtonTapped:v5];
    v14 = [(PKPaymentSetupFieldsViewController *)self navigationController];
    v13 = [v14 navigationBar];
    [v13 setUserInteractionEnabled:1];
  }
}

- (void)_triggerNextActionLoop:(BOOL)a3
{
  if (!self->_performingNextActionLoop)
  {
    self->_performingNextActionLoop = 1;
    [(PKPaymentSetupFieldsViewController *)self _continueNextActionLoop:a3];
  }
}

- (void)_continueNextActionLoop:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PKPaymentSetupFieldsViewController__continueNextActionLoop___block_invoke;
  aBlock[3] = &unk_1E80148F0;
  objc_copyWeak(&v12, &location);
  v5 = _Block_copy(aBlock);
  v6 = [v5 copy];

  v7 = _Block_copy(v6);
  currentNextActionBlock = self->_currentNextActionBlock;
  self->_currentNextActionBlock = v7;

  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__PKPaymentSetupFieldsViewController__continueNextActionLoop___block_invoke_4;
    v9[3] = &unk_1E8010DD0;
    v9[4] = self;
    v10 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }

  else
  {
    [(PKPaymentSetupFieldsViewController *)self handleNextActionWithCompletion:v6];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __62__PKPaymentSetupFieldsViewController__continueNextActionLoop___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPaymentSetupFieldsViewController__continueNextActionLoop___block_invoke_2;
  block[3] = &unk_1E8018A78;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __62__PKPaymentSetupFieldsViewController__continueNextActionLoop___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    WeakRetained[1233] = v4;
    if (*(a1 + 32))
    {
      if ((v4 & 1) == 0 && [WeakRetained isShowingActivitySpinner])
      {
        [v3 hideActivitySpinner];
      }

      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __62__PKPaymentSetupFieldsViewController__continueNextActionLoop___block_invoke_3;
      v7[3] = &unk_1E80111A8;
      objc_copyWeak(&v8, (a1 + 40));
      v9 = *(a1 + 48);
      [v3 handleNextActionError:v5 shouldContinue:v6 withCompletion:v7];
      objc_destroyWeak(&v8);
    }

    else if (v4)
    {
      [WeakRetained _continueNextActionLoop:1];
    }

    else if ([WeakRetained isShowingActivitySpinner])
    {
      [v3 hideActivitySpinner];
    }
  }
}

void __62__PKPaymentSetupFieldsViewController__continueNextActionLoop___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v3 = WeakRetained;
    [WeakRetained _continueNextActionLoop:1];
    WeakRetained = v3;
  }
}

- (void)hideActivitySpinner
{
  v3 = [(PKPaymentSetupFieldsViewController *)self defaultHeaderViewSubTitle];
  [(PKPaymentSetupFieldsViewController *)self hideActivitySpinnerWithTitle:0 subtitle:v3 animated:1];
}

- (void)_setActivityIndicatorActive:(BOOL)a3 title:(id)a4 subtitle:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  self->_showingActivitySpinner = a3;
  v10 = a5;
  v11 = a4;
  v19 = [(PKPaymentSetupFieldsViewController *)self headerView];
  v12 = [v19 activityIndicator];
  v13 = [(PKPaymentSetupTableViewController *)self dockView];
  v14 = [v13 hasPrimaryButton];
  v15 = [(PKPaymentSetupFieldsViewController *)self view];
  [v15 setUserInteractionEnabled:v8 ^ 1];

  v16 = [(PKPaymentSetupTableViewController *)self tableView];
  [v16 resignFirstResponder];

  [(PKPaymentSetupFieldsViewController *)self _setNavigationBarEnabled:v8 ^ 1 animated:v6];
  [v13 setButtonsEnabled:v8 ^ 1];
  [v19 setButtonsEnabled:v8 ^ 1];
  if (!_UISolariumFeatureFlagEnabled() || self->_preferPrimaryButtonInNavigationBar || ((v14 ^ 1) & 1) != 0)
  {
    if (v8)
    {
      if (([v12 isAnimating] & 1) == 0)
      {
        [v12 startAnimating];
      }
    }

    else
    {
      [v12 stopAnimating];
    }

    if (v14)
    {
      v18 = [v13 primaryButton];
      [v18 setShowSpinner:0];
    }
  }

  else
  {
    v17 = [v13 primaryButton];
    [v17 setShowSpinner:v8];

    [v12 stopAnimating];
  }

  [(PKPaymentSetupFieldsViewController *)self setHeaderViewTitle:v11 subtitle:v10];
  [(PKPaymentSetupFieldsViewController *)self _setIdleTimerDisabled:v8 title:v11 subtitle:v10];
}

- (void)setHeaderViewTitle:(id)a3 subtitle:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(PKPaymentSetupFieldsViewController *)self headerView];
  v8 = v17;
  if (!v17)
  {
    v8 = [(PKPaymentSetupFieldsViewController *)self defaultHeaderViewTitle];
  }

  v18 = v8;
  v9 = [v7 titleLabel];
  [v9 setText:v18];

  if (v6)
  {
    v10 = [v7 subtitleLabel];
    [v10 setText:v6];
  }

  v11 = [(PKPaymentSetupTableViewController *)self tableView];
  [v7 frame];
  v13 = v12;
  [v11 bounds];
  [v7 sizeThatFits:{v14, 1.79769313e308}];
  if (v15 > v13)
  {
    v16 = v15;
    [v11 _rectForTableHeaderView];
    [v7 setFrame:?];
    [v11 _tableHeaderHeightDidChangeToHeight:v16];
  }

  [v7 setNeedsLayout];
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
    v19 = @"PaymentCardVerification";
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Payment Setup has %@ the Idle Timer. (For: %@ - %@) - %@.", &v12, 0x2Au);
  }

  v11 = [MEMORY[0x1E69DC668] sharedApplication];
  [v11 _setIdleTimerDisabled:v6 forReason:@"PaymentCardVerification"];
}

- (void)showCheckmarkAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKPaymentSetupFieldsViewController *)self headerView];
  [v4 showCheckmark:1 animated:v3];
  [v4 setNeedsLayout];
}

- (void)endUserInteraction
{
  [(PKPaymentSetupFieldsViewController *)self _setNavigationBarEnabled:0 animated:0];
  [(PKPaymentSetupFieldsViewController *)self _destroyNavigationBarButtonItemsAnimated:0];
  v3 = [(PKPaymentSetupFieldsViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(PKPaymentSetupFieldsViewController *)self footerView];
  [v4 setButtonsEnabled:0];

  v5 = [(PKPaymentSetupTableViewController *)self dockView];
  [v5 setButtonsEnabled:0];
}

- (void)_setNavigationBarEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_navigationEnabled != a3)
  {
    v4 = a4;
    self->_navigationEnabled = a3;
    v8 = [(PKPaymentSetupFieldsViewController *)self navigationController];
    v6 = [v8 navigationBar];
    [v6 setUserInteractionEnabled:self->_navigationEnabled];

    v7 = [v8 interactivePopGestureRecognizer];
    [v7 setEnabled:self->_navigationEnabled];

    [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:v4];
  }
}

- (void)_setLeftBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 copy];
  leftBarButtonItems = self->_leftBarButtonItems;
  self->_leftBarButtonItems = v6;

  [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:v4];
}

- (void)_setRightBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 copy];
  rightBarButtonItems = self->_rightBarButtonItems;
  self->_rightBarButtonItems = v6;

  [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:v4];
}

- (void)_destroyNavigationBarButtonItemsAnimated:(BOOL)a3
{
  v3 = a3;
  leftBarButtonItems = self->_leftBarButtonItems;
  if (leftBarButtonItems)
  {
    v6 = 1;
  }

  else
  {
    v6 = self->_rightBarButtonItems != 0;
  }

  self->_leftBarButtonItems = 0;

  rightBarButtonItems = self->_rightBarButtonItems;
  self->_rightBarButtonItems = 0;

  self->_primaryButtonEnabled = 0;
  if (v6)
  {

    [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:v3];
  }
}

- (void)_updateNavigationItemAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKPaymentSetupFieldsViewController *)self navigationItem];
  v15 = v5;
  if (self->_hidesBackButton)
  {
    [v5 setHidesBackButton:1 animated:v3];
  }

  else
  {
    navigationEnabled = self->_navigationEnabled;
    if ([v5 hidesBackButton] == navigationEnabled)
    {
      [v15 setHidesBackButton:navigationEnabled ^ 1u animated:v3];
    }
  }

  if (self->_navigationEnabled)
  {
    leftBarButtonItems = self->_leftBarButtonItems;
  }

  else
  {
    leftBarButtonItems = 0;
  }

  v8 = leftBarButtonItems;
  v9 = [v15 leftBarButtonItems];
  v10 = PKEqualObjects();

  if ((v10 & 1) == 0)
  {
    [v15 setLeftBarButtonItems:v8 animated:v3];
  }

  if (self->_navigationEnabled)
  {
    rightBarButtonItems = self->_rightBarButtonItems;
  }

  else
  {
    rightBarButtonItems = 0;
  }

  v12 = rightBarButtonItems;

  v13 = [v15 rightBarButtonItems];
  v14 = PKEqualObjects();

  if ((v14 & 1) == 0)
  {
    [v15 setRightBarButtonItems:v12 animated:v3];
  }

  [(PKPaymentSetupFieldsViewController *)self _updatePrimaryButtonState];
}

- (void)_updatePrimaryButtonState
{
  if ([(PKPaymentSetupFieldsViewController *)self isViewLoaded])
  {
    if (self->_preferPrimaryButtonInNavigationBar)
    {
      rightBarButton = self->_rightBarButton;
      primaryButtonEnabled = self->_primaryButtonEnabled;

      [(UIBarButtonItem *)rightBarButton setEnabled:primaryButtonEnabled];
    }

    else
    {
      v6 = [(PKPaymentSetupTableViewController *)self dockView];
      if ([v6 hasPrimaryButton])
      {
        v5 = [v6 primaryButton];
        [v5 setEnabled:self->_primaryButtonEnabled];
      }
    }
  }
}

- (void)setShowPrimaryButton:(BOOL)a3
{
  if (self->_showPrimaryButton == !a3)
  {
    self->_showPrimaryButton = a3;
    [(PKPaymentSetupFieldsViewController *)self _configurePrimaryButton];
  }
}

- (void)setPreferPrimaryButtonInNavigationBar:(BOOL)a3
{
  if (self->_preferPrimaryButtonInNavigationBar == !a3)
  {
    self->_preferPrimaryButtonInNavigationBar = a3;
    [(PKPaymentSetupFieldsViewController *)self _configurePrimaryButton];
  }
}

- (void)setPrimaryButtonTitleText:(id)a3
{
  v4 = a3;
  if (self->_preferPrimaryButtonInNavigationBar)
  {
    [(UIBarButtonItem *)self->_rightBarButton setTitle:v4];
  }

  else
  {
    v5 = [(PKPaymentSetupTableViewController *)self dockView];
    v6 = [v5 primaryButton];

    [v6 setTitle:v4 forState:0];
  }

  primaryButtonTitleText = self->_primaryButtonTitleText;
  self->_primaryButtonTitleText = v4;
}

- (void)_configurePrimaryButton
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(PKPaymentSetupFieldsViewController *)self isViewLoaded])
  {
    v3 = [(PKPaymentSetupTableViewController *)self dockView];
    [v3 setPrimaryButton:0];

    rightBarButtonItems = self->_rightBarButtonItems;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__PKPaymentSetupFieldsViewController__configurePrimaryButton__block_invoke;
    v16[3] = &unk_1E801CC20;
    v16[4] = self;
    v5 = [(NSArray *)rightBarButtonItems pk_objectsPassingTest:v16];
    rightBarButton = self->_rightBarButton;
    self->_rightBarButton = 0;

    [(PKPaymentSetupFieldsViewController *)self _setRightBarButtonItems:v5 animated:0];
    if (self->_showPrimaryButton)
    {
      if (self->_preferPrimaryButtonInNavigationBar)
      {
        primaryButtonTitleText = self->_primaryButtonTitleText;
        if (primaryButtonTitleText)
        {
          v8 = primaryButtonTitleText;
        }

        else
        {
          v8 = PKLocalizedPaymentString(&cfstr_Next.isa);
        }

        v9 = v8;
        v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v8 style:2 target:self action:sel__handleNextButtonTapped_];
        v15 = self->_rightBarButton;
        self->_rightBarButton = v14;

        [(UIBarButtonItem *)self->_rightBarButton setAccessibilityIdentifier:*MEMORY[0x1E69B9990]];
        v17[0] = self->_rightBarButton;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        [(PKPaymentSetupFieldsViewController *)self _setRightBarButtonItems:v11 animated:0];
      }

      else
      {
        v9 = [(PKPaymentSetupTableViewController *)self dockView];
        v10 = [v9 primaryButton];
        v11 = v10;
        v12 = self->_primaryButtonTitleText;
        if (v12)
        {
          [v10 setTitle:v12 forState:0];
        }

        [v11 addTarget:self action:sel__handleNextButtonTapped_ forControlEvents:0x2000];
        v13 = [(PKPaymentSetupFieldsViewController *)self view];
        [v13 setNeedsLayout];
      }

      [(PKPaymentSetupFieldsViewController *)self _updatePrimaryButtonState];
    }
  }
}

- (id)visibleFieldIdentifiersForSection:(unint64_t)a3
{
  sectionIdentifiers = self->_sectionIdentifiers;
  if (sectionIdentifiers && [(NSArray *)sectionIdentifiers count]> a3)
  {
    v6 = [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:a3];
  }

  else
  {
    v6 = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  }

  return v6;
}

- (id)visibleFieldIdentifiers
{
  v2 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  v3 = [v2 visibleSetupFieldIdentifiers];

  return v3;
}

- (id)readonlyFieldIdentifiers
{
  v2 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  v3 = [v2 readonlySetupFieldIdentifiers];

  return v3;
}

- (void)_noteFieldIdentifiersChangedUpdateHeaders:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(PKPaymentSetupFieldsViewController *)self firstResponderCell];
  v6 = v5;
  if (v5)
  {
    [v5 setCanResignFirstResponder:0];
  }

  v7 = [(PKPaymentSetupTableViewController *)self tableView];
  [v7 reloadData];

  if (v3)
  {
    [(PKPaymentSetupFieldsViewController *)self reloadHeaderView];
  }

  if (v6)
  {
    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__PKPaymentSetupFieldsViewController__noteFieldIdentifiersChangedUpdateHeaders___block_invoke;
    block[3] = &unk_1E8010970;
    v15 = v6;
    v9 = MEMORY[0x1E69E96A0];
    dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  }

  v10 = [(PKPaymentSetupFieldsViewController *)self displayedFooterField];
  if (v10 && ![(PKPaymentSetupFieldsViewController *)self shouldDisplayFooterFieldInline:v10])
  {
    v11 = [v10 body];
    [(PKPaymentSetupTableViewController *)self setFooterAttributedText:v11];
  }

  else
  {
    [(PKPaymentSetupTableViewController *)self setFooterAttributedText:0];
  }

  if (self->_preferPrimaryButtonInNavigationBar)
  {
    v12 = [(PKPaymentSetupFieldsViewController *)self navigationItem];
    v13 = [v12 rightBarButtonItem];
    [v13 setEnabled:{-[PKPaymentSetupFieldsViewController isComplete](self, "isComplete")}];
  }
}

- (id)footerHyperlinkView
{
  footerHyperlinkView = self->_footerHyperlinkView;
  if (!footerHyperlinkView)
  {
    v4 = objc_alloc_init(PKFooterHyperlinkView);
    v5 = self->_footerHyperlinkView;
    self->_footerHyperlinkView = v4;

    v6 = PKGenericOnboardingPresenter(self, 0);
    v7 = [(PKPaymentSetupTableViewController *)self context];
    v8 = [(PKPaymentSetupFieldsViewController *)self navigationController];
    v9 = PKOpenURLModallyHyperlinkAction(v7, v8);
    v10 = PKGenericHyperlinkAction(v6, v9);
    [(PKFooterHyperlinkView *)self->_footerHyperlinkView setAction:v10];

    footerHyperlinkView = self->_footerHyperlinkView;
  }

  return footerHyperlinkView;
}

- (id)footerViewForIdentifier:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMapTable *)self->_fieldIdentifierToFooterViewMap objectForKey:v4];
  v6 = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  v7 = [v6 footerFieldForIdentifier:v4];

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v9 = [(PKPaymentSetupTableViewController *)self tableView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;

    v14 = [(PKPaymentSetupTableViewController *)self tableView];
    [v14 _sectionContentInset];
    v16 = v15;
    v18 = v17;

    v19 = v13 - v16 - v18;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = v7;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      v24 = 0.0;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v34 + 1) + 8 * i);
          v27 = objc_alloc_init(PKPaymentSetupFieldFooterView);
          [(PKPaymentSetupFieldFooterView *)v27 setField:v26];
          [(PKPaymentSetupFieldFooterView *)v27 setDelegate:self];
          [(PKPaymentSetupFieldFooterView *)v27 sizeThatFits:v19, 1.79769313e308];
          v29 = v28;
          [(PKPaymentSetupFieldFooterView *)v27 setFrame:v11, v24, v30, v28];
          v24 = v24 + v29;
          [v5 addSubview:v27];
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    else
    {
      v24 = 0.0;
    }

    [v5 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v19, v24}];
    [(NSMapTable *)self->_fieldIdentifierToFooterViewMap setObject:v5 forKey:v4];
    v7 = v33;
  }

  v31 = v5;

  return v5;
}

- (id)identifierForIndexPath:(id)a3
{
  sectionIdentifiers = self->_sectionIdentifiers;
  v5 = a3;
  v6 = v5;
  if (sectionIdentifiers)
  {
    -[NSArray objectAtIndexedSubscript:](sectionIdentifiers, "objectAtIndexedSubscript:", [v5 section]);
  }

  else
  {
    [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  }
  v7 = ;
  v8 = [v6 row];

  v9 = [v7 objectAtIndex:v8];

  return v9;
}

- (void)_setCellsEnabled:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_cellsAreEnabled == !a3)
  {
    v3 = a3;
    v5 = [(PKPaymentSetupFieldsViewController *)self allCells];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setUserInteractionEnabled:v3];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    self->_cellsAreEnabled = v3;
  }
}

- (id)cellForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_fieldIdentifierToCellMap objectForKey:v4];
  v6 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v4];
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    v5 = [PKPaymentSetupFieldCell paymentSetupFieldCellForField:v6 fromTableView:0];
    if (v5)
    {
      [(NSMapTable *)self->_fieldIdentifierToCellMap setObject:v5 forKey:v4];
      [v5 setEnabled:self->_cellsAreEnabled];
    }
  }

  [v5 setPaymentSetupField:v7];

  return v5;
}

- (id)nextResponderCellForCurrentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v6 = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
  v7 = [v5 pk_arrayByRemovingObjectsInArray:v6];

  v8 = [v7 indexOfObject:v4];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (v9 = v8 + 1, v9 >= [v7 count]))
  {
    v11 = 0;
  }

  else
  {
    v10 = [v7 objectAtIndex:v9];
    v11 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v10];
  }

  return v11;
}

- (id)firstEmptyCell
{
  v3 = [(PKPaymentSetupFieldsViewController *)self firstEmptySetupField];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identifier];
    v6 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)firstEmptySetupField
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:v8];
        if (([v9 isFieldTypeLabel] & 1) == 0)
        {
          v10 = [v9 submissionString];
          if ([v10 length])
          {
          }

          else
          {
            v11 = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
            v12 = [v11 containsObject:v8];

            if (!v12)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)firstResponderCell
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v4 = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
  v5 = [v3 pk_arrayByRemovingObjectsInArray:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:*(*(&v15 + 1) + 8 * v10), v15];
      if ([v11 isFirstResponder])
      {
        break;
      }

      v12 = [v11 editableTextField];
      v13 = [v12 isFirstResponder];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v11 = 0;
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allCells
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMapTable *)self->_fieldIdentifierToCellMap objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v9;
}

- (id)firstEmptyField
{
  v2 = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
  v3 = [v2 editableTextField];

  return v3;
}

- (BOOL)isEmpty
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = ![(PKPaymentSetupFieldsViewController *)self isComplete];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*(*(&v13 + 1) + 8 * i)];
        if (([v9 isFieldTypeLabel] & 1) == 0)
        {
          v10 = [v9 submissionString];
          v11 = [v10 length] == 0;

          LOBYTE(v3) = v11 & v3;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3 & 1;
}

- (void)resetCellStyling
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(PKPaymentSetupFieldsViewController *)self allCells];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) resetTextFieldStyling];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_contextSpecificStringForAggDKey:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"%@.%ld", v5, -[PKPaymentSetupTableViewController context](self, "context")];

  return v6;
}

- (void)logAnalyticsContextSpecificCheckpointForKey:(id)a3
{
  v3 = [(PKPaymentSetupFieldsViewController *)self _contextSpecificStringForAggDKey:a3];
  MEMORY[0x1BFB41980](v3, 0);
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end