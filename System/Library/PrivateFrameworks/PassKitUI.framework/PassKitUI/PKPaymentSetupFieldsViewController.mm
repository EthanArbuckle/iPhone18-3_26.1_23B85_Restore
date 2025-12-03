@interface PKPaymentSetupFieldsViewController
- (BOOL)_allFieldsComplete;
- (BOOL)fieldCellEditableTextFieldShouldBeginEditing:(id)editing;
- (BOOL)fieldCellEditableTextFieldShouldReturn:(id)return;
- (BOOL)isComplete;
- (BOOL)isEmpty;
- (BOOL)shouldAppearWithFirstEmptyFieldAsFirstResponder;
- (PKPaymentSetupFieldsViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (PKPaymentSetupViewControllerDelegate)setupDelegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_contextSpecificStringForAggDKey:(id)key;
- (id)_footerTextForValidationError;
- (id)allCells;
- (id)cellForIdentifier:(id)identifier;
- (id)displayedFooterField;
- (id)firstEmptyCell;
- (id)firstEmptyField;
- (id)firstEmptySetupField;
- (id)firstResponderCell;
- (id)footerHyperlinkView;
- (id)footerViewForIdentifier:(id)identifier;
- (id)headerView;
- (id)identifierForIndexPath:(id)path;
- (id)nextResponderCellForCurrentIdentifier:(id)identifier;
- (id)readonlyFieldIdentifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)visibleFieldIdentifiers;
- (id)visibleFieldIdentifiersForSection:(unint64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configurePrimaryButton;
- (void)_continueNextActionLoop:(BOOL)loop;
- (void)_destroyNavigationBarButtonItemsAnimated:(BOOL)animated;
- (void)_fieldLabelDidTapButton:(id)button;
- (void)_handleNextButtonTapped:(id)tapped;
- (void)_noteFieldIdentifiersChangedUpdateHeaders:(BOOL)headers;
- (void)_setActivityIndicatorActive:(BOOL)active title:(id)title subtitle:(id)subtitle animated:(BOOL)animated;
- (void)_setCellsEnabled:(BOOL)enabled;
- (void)_setIdleTimerDisabled:(BOOL)disabled title:(id)title subtitle:(id)subtitle;
- (void)_setLeftBarButtonItems:(id)items animated:(BOOL)animated;
- (void)_setNavigationBarEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)_setRightBarButtonItems:(id)items animated:(BOOL)animated;
- (void)_triggerNextActionLoop:(BOOL)loop;
- (void)_updateErrorFooterIfNeeded;
- (void)_updateNavigationItemAnimated:(BOOL)animated;
- (void)_updatePrimaryButtonState;
- (void)endUserInteraction;
- (void)fieldCell:(id)cell didTapKeyboardAccessory:(unint64_t)accessory;
- (void)fieldCellDidTapButton:(id)button;
- (void)fieldCellEditableTextFieldDidBeginEditing:(id)editing;
- (void)fieldCellEditableTextFieldDidEndEditing:(id)editing;
- (void)fieldCellEditableTextFieldValueDidChange:(id)change;
- (void)fieldTextValueDidChangeForField:(id)field;
- (void)hideActivitySpinner;
- (void)loadView;
- (void)logAnalyticsContextSpecificCheckpointForKey:(id)key;
- (void)reloadHeaderView;
- (void)resetCellStyling;
- (void)setHeaderViewTitle:(id)title subtitle:(id)subtitle;
- (void)setPreferPrimaryButtonInNavigationBar:(BOOL)bar;
- (void)setPrimaryButtonTitleText:(id)text;
- (void)setSectionIdentifiers:(id)identifiers;
- (void)setShowPrimaryButton:(BOOL)button;
- (void)showCheckmarkAnimated:(BOOL)animated;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPaymentSetupFieldsViewController

- (PKPaymentSetupFieldsViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  serviceCopy = service;
  delegateCopy = delegate;
  modelCopy = model;
  v20.receiver = self;
  v20.super_class = PKPaymentSetupFieldsViewController;
  v14 = [(PKPaymentSetupTableViewController *)&v20 initWithContext:context];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_webService, service);
    objc_storeWeak(&v15->_setupDelegate, delegateCopy);
    v16 = modelCopy;
    if (!modelCopy)
    {
      v16 = objc_alloc_init(MEMORY[0x1E69B8E38]);
    }

    objc_storeStrong(&v15->_fieldsModel, v16);
    if (!modelCopy)
    {
    }

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    fieldIdentifierToCellMap = v15->_fieldIdentifierToCellMap;
    v15->_fieldIdentifierToCellMap = strongToStrongObjectsMapTable;

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
  visiblePaymentSetupFields = [(PKPaymentSetupFieldsModel *)self->_fieldsModel visiblePaymentSetupFields];
  v4 = [visiblePaymentSetupFields count];

  if (!v4)
  {
    fieldsModel = self->_fieldsModel;
    defaultFields = [(PKPaymentSetupFieldsViewController *)self defaultFields];
    [(PKPaymentSetupFieldsModel *)fieldsModel updateWithPaymentSetupFields:defaultFields];
  }

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView setAccessibilityIdentifier:*MEMORY[0x1E69B9A78]];
  headerView = [(PKPaymentSetupFieldsViewController *)self headerView];
  [tableView setTableHeaderView:headerView];
  footerView = [(PKPaymentSetupFieldsViewController *)self footerView];
  [tableView setTableFooterView:footerView];
  [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:0];
  [tableView setSectionHeaderHeight:12.0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v10 viewWillAppear:appear];
  [(PKPaymentSetupFieldsViewController *)self noteFieldIdentifiersChangedAndUpdateHeaders];
  [(PKPaymentSetupFieldsViewController *)self _setPrimaryButtonEnabled:[(PKPaymentSetupFieldsViewController *)self isComplete]];
  if ((!_UISolariumFeatureFlagEnabled() || self->_preferPrimaryButtonInNavigationBar) && [(PKPaymentSetupFieldsViewController *)self shouldAppearWithFirstEmptyFieldAsFirstResponder])
  {
    firstEmptyField = [(PKPaymentSetupFieldsViewController *)self firstEmptyField];
    window = [firstEmptyField window];
    if (window)
    {
      v6 = window;
      firstEmptyCell = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
      becomeFirstResponder = [firstEmptyCell becomeFirstResponder];

      if (becomeFirstResponder)
      {
        return;
      }

      firstEmptyField = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(firstEmptyField, OS_LOG_TYPE_DEFAULT))
      {
        firstEmptyCell2 = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
        *buf = 138412290;
        v12 = firstEmptyCell2;
        _os_log_impl(&dword_1BD026000, firstEmptyField, OS_LOG_TYPE_DEFAULT, "[%@ becomeFirstResponder]; failed.", buf, 0xCu);
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v10 viewDidAppear:appear];
  if ((!_UISolariumFeatureFlagEnabled() || self->_preferPrimaryButtonInNavigationBar) && [(PKPaymentSetupFieldsViewController *)self shouldAppearWithFirstEmptyFieldAsFirstResponder])
  {
    firstEmptyField = [(PKPaymentSetupFieldsViewController *)self firstEmptyField];
    window = [firstEmptyField window];
    if (window)
    {
      v6 = window;
      firstEmptyCell = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
      becomeFirstResponder = [firstEmptyCell becomeFirstResponder];

      if (becomeFirstResponder)
      {
        return;
      }

      firstEmptyField = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(firstEmptyField, OS_LOG_TYPE_DEFAULT))
      {
        firstEmptyCell2 = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
        *buf = 138412290;
        v12 = firstEmptyCell2;
        _os_log_impl(&dword_1BD026000, firstEmptyField, OS_LOG_TYPE_DEFAULT, "[%@ becomeFirstResponder]; failed.", buf, 0xCu);
      }
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v5 viewWillDisappear:disappear];
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView resignFirstResponder];

  [(PKPaymentSetupFieldCell *)self->_activeEditingCell resignFirstResponder];
}

- (void)viewDidLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupFieldsViewController *)&v9 viewDidLayoutSubviews];
  headerView = [(PKPaymentSetupFieldsViewController *)self headerView];
  [headerView sizeToFit];

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  headerView2 = [(PKPaymentSetupFieldsViewController *)self headerView];
  [headerView2 bounds];
  [tableView _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v10)];

  footerView = [(PKPaymentSetupFieldsViewController *)self footerView];
  [footerView sizeToFit];

  tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
  footerView2 = [(PKPaymentSetupFieldsViewController *)self footerView];
  [footerView2 bounds];
  [tableView2 _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v11)];
}

- (BOOL)shouldAppearWithFirstEmptyFieldAsFirstResponder
{
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView contentSize];
  v5 = v4;

  view = [(PKPaymentSetupFieldsViewController *)self view];
  [view safeAreaInsets];
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
  firstEmptySetupField = [(PKPaymentSetupFieldsViewController *)self firstEmptySetupField];
  isOptional = [firstEmptySetupField isOptional];

  footerAttributedText = [(PKPaymentSetupTableViewController *)self footerAttributedText];
  v17 = [footerAttributedText length];

  v18 = 0;
  if ((isOptional & 1) == 0 && !v17 && v8 + v5 + v13 < v11)
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
  defaultHeaderViewTitle = [(PKPaymentSetupFieldsViewController *)self defaultHeaderViewTitle];
  defaultHeaderViewSubTitle = [(PKPaymentSetupFieldsViewController *)self defaultHeaderViewSubTitle];
  headerView = self->_headerView;
  if (defaultHeaderViewTitle | defaultHeaderViewSubTitle)
  {
    [(PKTableHeaderView *)headerView setTopPadding:20.0];
  }

  else
  {
    [(PKTableHeaderView *)headerView setTopPadding:0.0];
    [(PKTableHeaderView *)self->_headerView setBottomPadding:0.0];
  }

  titleLabel = [(PKTableHeaderView *)self->_headerView titleLabel];
  [titleLabel setText:defaultHeaderViewTitle];

  subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [subtitleLabel setText:defaultHeaderViewSubTitle];

  v7 = self->_headerView;
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView bounds];
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
  visibleFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v4 = [visibleFieldIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(visibleFieldIdentifiers);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v9];
        readonlyFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
        v12 = [readonlyFieldIdentifiers containsObject:v9];

        LODWORD(readonlyFieldIdentifiers) = [v10 isOptional];
        submissionStringMeetsAllRequirements = [v10 submissionStringMeetsAllRequirements];
        submissionStringMeetsValidationRegex = [v10 submissionStringMeetsValidationRegex];
        if (readonlyFieldIdentifiers)
        {
          v15 = submissionStringMeetsValidationRegex;
        }

        else
        {
          v15 = submissionStringMeetsAllRequirements;
        }

        v16 = v15 & v7;
        if ((v12 & 1) == 0)
        {
          v7 = v16;
        }
      }

      v5 = [visibleFieldIdentifiers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  visibleFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v4 = [visibleFieldIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(visibleFieldIdentifiers);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v8];
        readonlyFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
        v11 = [readonlyFieldIdentifiers containsObject:v8];

        submissionStringMeetsAllRequirements = [v9 submissionStringMeetsAllRequirements];
        if ((v11 & 1) == 0 && !submissionStringMeetsAllRequirements)
        {
          v13 = 0;
          goto LABEL_12;
        }
      }

      v5 = [visibleFieldIdentifiers countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  visibleFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  codeOnError = [visibleFieldIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (codeOnError)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != codeOnError; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(visibleFieldIdentifiers);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v7];
        if ([v8 isShowingError])
        {
          v9 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v7];
          textFieldObject = [v9 textFieldObject];

          codeOnError = [textFieldObject codeOnError];
          goto LABEL_11;
        }
      }

      codeOnError = [visibleFieldIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (codeOnError)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (self->_validationErrorCode != codeOnError && !self->_sectionIdentifiers)
  {
    self->_validationErrorCode = codeOnError;
    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [tableView _reloadSectionHeaderFooters:v12 withRowAnimation:5];
  }
}

- (void)fieldTextValueDidChangeForField:(id)field
{
  [(PKPaymentSetupFieldsViewController *)self _setPrimaryButtonEnabled:[(PKPaymentSetupFieldsViewController *)self isComplete]];

  [(PKPaymentSetupFieldsViewController *)self _updateErrorFooterIfNeeded];
}

- (void)setSectionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sectionIdentifiers, identifiers);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    fieldIdentifierToFooterViewMap = self->_fieldIdentifierToFooterViewMap;
    self->_fieldIdentifierToFooterViewMap = strongToStrongObjectsMapTable;

    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (id)displayedFooterField
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(PKPaymentSetupFieldsViewController *)self shouldDisplayFooterField])
  {
    footerPaymentSetupField = [(PKPaymentSetupFieldsModel *)self->_fieldsModel footerPaymentSetupField];
    v4 = [footerPaymentSetupField copy];

    if (v4 && self->_validationErrorCode)
    {
      _footerTextForValidationError = [(PKPaymentSetupFieldsViewController *)self _footerTextForValidationError];
      if (_footerTextForValidationError)
      {
        v6 = objc_alloc(MEMORY[0x1E696AAB0]);
        v11 = *MEMORY[0x1E69DB650];
        systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
        v12[0] = systemRedColor;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        v9 = [v6 initWithString:_footerTextForValidationError attributes:v8];

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

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  sectionIdentifiers = self->_sectionIdentifiers;
  if (!sectionIdentifiers)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  v6 = [(NSArray *)sectionIdentifiers objectAtIndexedSubscript:section];
  firstObject = [v6 firstObject];

  v8 = [(PKPaymentSetupFieldsViewController *)self footerViewForIdentifier:firstObject];
  [v8 frame];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  sectionIdentifiers = self->_sectionIdentifiers;
  if (sectionIdentifiers)
  {
    v6 = [(NSArray *)sectionIdentifiers objectAtIndexedSubscript:section];
    firstObject = [v6 firstObject];

    footerHyperlinkView = [(PKPaymentSetupFieldsViewController *)self footerViewForIdentifier:firstObject];
  }

  else
  {
    firstObject = [(PKPaymentSetupFieldsViewController *)self displayedFooterField:view];
    if (firstObject && [(PKPaymentSetupFieldsViewController *)self shouldDisplayFooterFieldInline:firstObject])
    {
      footerHyperlinkView = [(PKPaymentSetupFieldsViewController *)self footerHyperlinkView];
      body = [firstObject body];
      [footerHyperlinkView setAttributedText:body];
    }

    else
    {
      footerHyperlinkView = 0;
    }
  }

  return footerHyperlinkView;
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (self->_sectionIdentifiers)
  {
    [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:section];
  }

  else
  {
    [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers:view];
  }
  v4 = ;
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [(PKPaymentSetupFieldsViewController *)self identifierForIndexPath:path];
  v6 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v5];
  [v6 setDelegate:self];
  readonlyFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
  v8 = [readonlyFieldIdentifiers containsObject:v5];

  if (self->_cellsAreEnabled)
  {
    [v6 setEnabled:v8 ^ 1u];
  }

  return v6;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(PKPaymentSetupFieldsViewController *)self identifierForIndexPath:path];
  v8 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:v7];
  [viewCopy bounds];
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v25.receiver = self;
  v25.super_class = PKPaymentSetupFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v25 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:pathCopy];
  v10 = -[PKPaymentSetupFieldsViewController visibleFieldIdentifiersForSection:](self, "visibleFieldIdentifiersForSection:", [pathCopy section]);
  textLabel = [cellCopy textLabel];
  font = [textLabel font];
  v13 = font;
  if (font)
  {
    v14 = font;
  }

  else
  {
    v14 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  }

  v15 = v14;

  [(PKPaymentSetupFieldsModel *)self->_fieldsModel minimumRequiredWidthForFieldIdentifiers:v10 withFont:v15];
  PKFloatCeilToPixel(v16, v17);
  [cellCopy setMinimumTextLabelWidth:?];
  v18 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  v19 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:v18];
  v20 = [pathCopy row] + 1;
  if (v20 >= [v10 count])
  {
    isFieldTypeLabel = [v19 isFieldTypeLabel] ^ 1;
LABEL_12:
    v24 = isFieldTypeLabel;
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
      isFieldTypeLabel = 0;
      v24 = 0;
      goto LABEL_18;
    }

    isFieldTypeLabel = [v22 isFieldTypeLabel] ^ 1;

    goto LABEL_12;
  }

  if (v22)
  {
    isFieldTypeLabel = [v22 isFieldTypeLabel];
  }

  else
  {
    isFieldTypeLabel = 1;
  }

  v24 = 1;
LABEL_18:
  [cellCopy setShouldDrawSeperator:v24];
  [cellCopy setShouldDrawFullWidthSeperator:isFieldTypeLabel];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldsViewController;
  pathCopy = path;
  viewCopy = view;
  [(PKPaymentSetupTableViewController *)&v8 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v7 = [viewCopy cellForRowAtIndexPath:{pathCopy, v8.receiver, v8.super_class}];

  [v7 becomeFirstResponder];
}

- (BOOL)fieldCellEditableTextFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
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

  PKPaymentSetupApplyContextAppearance([(PKPaymentSetupTableViewController *)self context], editingCopy);

  return 1;
}

void __83__PKPaymentSetupFieldsViewController_fieldCellEditableTextFieldShouldBeginEditing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  [v2 scrollToRowAtIndexPath:v1 atScrollPosition:2 animated:1];
}

- (void)fieldCellEditableTextFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  if ([(PKPaymentSetupFieldCell *)editingCopy usesCustomInputView])
  {
    [(PKPaymentSetupFieldsViewController *)self fieldCellEditableTextFieldValueDidChange:editingCopy];
  }

  activeEditingCell = self->_activeEditingCell;
  self->_activeEditingCell = editingCopy;
}

- (void)fieldCellEditableTextFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  if ([editingCopy usesCustomInputView])
  {
    [(PKPaymentSetupFieldsViewController *)self fieldCellEditableTextFieldValueDidChange:editingCopy];
  }

  [(PKPaymentSetupFieldsViewController *)self _updateErrorFooterIfNeeded];
  activeEditingCell = self->_activeEditingCell;
  self->_activeEditingCell = 0;
}

- (void)fieldCellEditableTextFieldValueDidChange:(id)change
{
  paymentSetupField = [change paymentSetupField];
  [(PKPaymentSetupFieldsViewController *)self fieldTextValueDidChangeForField:paymentSetupField];
}

- (BOOL)fieldCellEditableTextFieldShouldReturn:(id)return
{
  returnCopy = return;
  editableTextField = [returnCopy editableTextField];
  hasText = [editableTextField hasText];

  if (hasText)
  {
    paymentSetupField = [returnCopy paymentSetupField];
    identifier = [paymentSetupField identifier];
    v9 = [(PKPaymentSetupFieldsViewController *)self nextResponderCellForCurrentIdentifier:identifier];

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

- (void)fieldCellDidTapButton:(id)button
{
  buttonCopy = button;
  paymentSetupField = [buttonCopy paymentSetupField];
  isFieldTypeLabel = [paymentSetupField isFieldTypeLabel];

  if (isFieldTypeLabel)
  {
    paymentSetupField2 = [buttonCopy paymentSetupField];
    labelFieldObject = [paymentSetupField2 labelFieldObject];

    [(PKPaymentSetupFieldsViewController *)self _fieldLabelDidTapButton:labelFieldObject];
  }
}

- (void)fieldCell:(id)cell didTapKeyboardAccessory:(unint64_t)accessory
{
  cellCopy = cell;
  if (accessory == 1)
  {
    v10 = cellCopy;
    paymentSetupField = [cellCopy paymentSetupField];
    identifier = [paymentSetupField identifier];
    v9 = [(PKPaymentSetupFieldsViewController *)self nextResponderCellForCurrentIdentifier:identifier];

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

    cellCopy = v10;
  }
}

- (void)_fieldLabelDidTapButton:(id)button
{
  buttonCopy = button;
  v13 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKPaymentSetupTableViewController *)self context]];
  detailTitle = [buttonCopy detailTitle];
  [(PKPaymentMoreInformationViewController *)v13 setDetailTitle:detailTitle];

  detailSubtitle = [buttonCopy detailSubtitle];
  [(PKPaymentMoreInformationViewController *)v13 setDetailSubtitle:detailSubtitle];

  detailBody = [buttonCopy detailBody];
  [(PKPaymentMoreInformationViewController *)v13 setDetailBody:detailBody];

  businessChatIntentName = [buttonCopy businessChatIntentName];
  [(PKPaymentMoreInformationViewController *)v13 setBusinessChatIntentName:businessChatIntentName];

  businessChatButtonTitle = [buttonCopy businessChatButtonTitle];
  [(PKPaymentMoreInformationViewController *)v13 setBusinessChatButtonTitle:businessChatButtonTitle];

  businessChatIdentifier = [buttonCopy businessChatIdentifier];

  [(PKPaymentMoreInformationViewController *)v13 setBusinessChatIdentifier:businessChatIdentifier];
  v11 = [[PKNavigationController alloc] initWithRootViewController:v13];
  navigationController = [(PKPaymentSetupFieldsViewController *)self navigationController];
  [navigationController presentModalViewController:v11 withPaymentSetupContext:{-[PKPaymentSetupTableViewController context](self, "context")}];
}

- (void)_handleNextButtonTapped:(id)tapped
{
  if (self->_primaryButtonEnabled)
  {
    tappedCopy = tapped;
    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView2 safeAreaInsets];
    [tableView setContentOffset:1 animated:{0.0, -v8}];

    navigationController = [(PKPaymentSetupFieldsViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setUserInteractionEnabled:0];

    tableView3 = [(PKPaymentSetupTableViewController *)self tableView];
    firstResponder = [tableView3 firstResponder];
    [firstResponder resignFirstResponder];

    [(PKPaymentSetupFieldsViewController *)self handleNextButtonTapped:tappedCopy];
    navigationController2 = [(PKPaymentSetupFieldsViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setUserInteractionEnabled:1];
  }
}

- (void)_triggerNextActionLoop:(BOOL)loop
{
  if (!self->_performingNextActionLoop)
  {
    self->_performingNextActionLoop = 1;
    [(PKPaymentSetupFieldsViewController *)self _continueNextActionLoop:loop];
  }
}

- (void)_continueNextActionLoop:(BOOL)loop
{
  loopCopy = loop;
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

  if (loopCopy)
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
  defaultHeaderViewSubTitle = [(PKPaymentSetupFieldsViewController *)self defaultHeaderViewSubTitle];
  [(PKPaymentSetupFieldsViewController *)self hideActivitySpinnerWithTitle:0 subtitle:defaultHeaderViewSubTitle animated:1];
}

- (void)_setActivityIndicatorActive:(BOOL)active title:(id)title subtitle:(id)subtitle animated:(BOOL)animated
{
  animatedCopy = animated;
  activeCopy = active;
  self->_showingActivitySpinner = active;
  subtitleCopy = subtitle;
  titleCopy = title;
  headerView = [(PKPaymentSetupFieldsViewController *)self headerView];
  activityIndicator = [headerView activityIndicator];
  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  hasPrimaryButton = [dockView hasPrimaryButton];
  view = [(PKPaymentSetupFieldsViewController *)self view];
  [view setUserInteractionEnabled:activeCopy ^ 1];

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView resignFirstResponder];

  [(PKPaymentSetupFieldsViewController *)self _setNavigationBarEnabled:activeCopy ^ 1 animated:animatedCopy];
  [dockView setButtonsEnabled:activeCopy ^ 1];
  [headerView setButtonsEnabled:activeCopy ^ 1];
  if (!_UISolariumFeatureFlagEnabled() || self->_preferPrimaryButtonInNavigationBar || ((hasPrimaryButton ^ 1) & 1) != 0)
  {
    if (activeCopy)
    {
      if (([activityIndicator isAnimating] & 1) == 0)
      {
        [activityIndicator startAnimating];
      }
    }

    else
    {
      [activityIndicator stopAnimating];
    }

    if (hasPrimaryButton)
    {
      primaryButton = [dockView primaryButton];
      [primaryButton setShowSpinner:0];
    }
  }

  else
  {
    primaryButton2 = [dockView primaryButton];
    [primaryButton2 setShowSpinner:activeCopy];

    [activityIndicator stopAnimating];
  }

  [(PKPaymentSetupFieldsViewController *)self setHeaderViewTitle:titleCopy subtitle:subtitleCopy];
  [(PKPaymentSetupFieldsViewController *)self _setIdleTimerDisabled:activeCopy title:titleCopy subtitle:subtitleCopy];
}

- (void)setHeaderViewTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  headerView = [(PKPaymentSetupFieldsViewController *)self headerView];
  defaultHeaderViewTitle = titleCopy;
  if (!titleCopy)
  {
    defaultHeaderViewTitle = [(PKPaymentSetupFieldsViewController *)self defaultHeaderViewTitle];
  }

  v18 = defaultHeaderViewTitle;
  titleLabel = [headerView titleLabel];
  [titleLabel setText:v18];

  if (subtitleCopy)
  {
    subtitleLabel = [headerView subtitleLabel];
    [subtitleLabel setText:subtitleCopy];
  }

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [headerView frame];
  v13 = v12;
  [tableView bounds];
  [headerView sizeThatFits:{v14, 1.79769313e308}];
  if (v15 > v13)
  {
    v16 = v15;
    [tableView _rectForTableHeaderView];
    [headerView setFrame:?];
    [tableView _tableHeaderHeightDidChangeToHeight:v16];
  }

  [headerView setNeedsLayout];
}

- (void)_setIdleTimerDisabled:(BOOL)disabled title:(id)title subtitle:(id)subtitle
{
  disabledCopy = disabled;
  v20 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"enabled";
    v12 = 138413058;
    if (disabledCopy)
    {
      v10 = @"disabled";
    }

    v13 = v10;
    v14 = 2112;
    v15 = titleCopy;
    v16 = 2112;
    v17 = subtitleCopy;
    v18 = 2112;
    v19 = @"PaymentCardVerification";
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Payment Setup has %@ the Idle Timer. (For: %@ - %@) - %@.", &v12, 0x2Au);
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _setIdleTimerDisabled:disabledCopy forReason:@"PaymentCardVerification"];
}

- (void)showCheckmarkAnimated:(BOOL)animated
{
  animatedCopy = animated;
  headerView = [(PKPaymentSetupFieldsViewController *)self headerView];
  [headerView showCheckmark:1 animated:animatedCopy];
  [headerView setNeedsLayout];
}

- (void)endUserInteraction
{
  [(PKPaymentSetupFieldsViewController *)self _setNavigationBarEnabled:0 animated:0];
  [(PKPaymentSetupFieldsViewController *)self _destroyNavigationBarButtonItemsAnimated:0];
  view = [(PKPaymentSetupFieldsViewController *)self view];
  [view setUserInteractionEnabled:0];

  footerView = [(PKPaymentSetupFieldsViewController *)self footerView];
  [footerView setButtonsEnabled:0];

  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  [dockView setButtonsEnabled:0];
}

- (void)_setNavigationBarEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_navigationEnabled != enabled)
  {
    animatedCopy = animated;
    self->_navigationEnabled = enabled;
    navigationController = [(PKPaymentSetupFieldsViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setUserInteractionEnabled:self->_navigationEnabled];

    interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer setEnabled:self->_navigationEnabled];

    [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:animatedCopy];
  }
}

- (void)_setLeftBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [items copy];
  leftBarButtonItems = self->_leftBarButtonItems;
  self->_leftBarButtonItems = v6;

  [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:animatedCopy];
}

- (void)_setRightBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [items copy];
  rightBarButtonItems = self->_rightBarButtonItems;
  self->_rightBarButtonItems = v6;

  [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:animatedCopy];
}

- (void)_destroyNavigationBarButtonItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

    [(PKPaymentSetupFieldsViewController *)self _updateNavigationItemAnimated:animatedCopy];
  }
}

- (void)_updateNavigationItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationItem = [(PKPaymentSetupFieldsViewController *)self navigationItem];
  v15 = navigationItem;
  if (self->_hidesBackButton)
  {
    [navigationItem setHidesBackButton:1 animated:animatedCopy];
  }

  else
  {
    navigationEnabled = self->_navigationEnabled;
    if ([navigationItem hidesBackButton] == navigationEnabled)
    {
      [v15 setHidesBackButton:navigationEnabled ^ 1u animated:animatedCopy];
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
  leftBarButtonItems = [v15 leftBarButtonItems];
  v10 = PKEqualObjects();

  if ((v10 & 1) == 0)
  {
    [v15 setLeftBarButtonItems:v8 animated:animatedCopy];
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

  rightBarButtonItems = [v15 rightBarButtonItems];
  v14 = PKEqualObjects();

  if ((v14 & 1) == 0)
  {
    [v15 setRightBarButtonItems:v12 animated:animatedCopy];
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
      dockView = [(PKPaymentSetupTableViewController *)self dockView];
      if ([dockView hasPrimaryButton])
      {
        primaryButton = [dockView primaryButton];
        [primaryButton setEnabled:self->_primaryButtonEnabled];
      }
    }
  }
}

- (void)setShowPrimaryButton:(BOOL)button
{
  if (self->_showPrimaryButton == !button)
  {
    self->_showPrimaryButton = button;
    [(PKPaymentSetupFieldsViewController *)self _configurePrimaryButton];
  }
}

- (void)setPreferPrimaryButtonInNavigationBar:(BOOL)bar
{
  if (self->_preferPrimaryButtonInNavigationBar == !bar)
  {
    self->_preferPrimaryButtonInNavigationBar = bar;
    [(PKPaymentSetupFieldsViewController *)self _configurePrimaryButton];
  }
}

- (void)setPrimaryButtonTitleText:(id)text
{
  textCopy = text;
  if (self->_preferPrimaryButtonInNavigationBar)
  {
    [(UIBarButtonItem *)self->_rightBarButton setTitle:textCopy];
  }

  else
  {
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    primaryButton = [dockView primaryButton];

    [primaryButton setTitle:textCopy forState:0];
  }

  primaryButtonTitleText = self->_primaryButtonTitleText;
  self->_primaryButtonTitleText = textCopy;
}

- (void)_configurePrimaryButton
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(PKPaymentSetupFieldsViewController *)self isViewLoaded])
  {
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    [dockView setPrimaryButton:0];

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

        dockView2 = v8;
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
        dockView2 = [(PKPaymentSetupTableViewController *)self dockView];
        primaryButton = [dockView2 primaryButton];
        v11 = primaryButton;
        v12 = self->_primaryButtonTitleText;
        if (v12)
        {
          [primaryButton setTitle:v12 forState:0];
        }

        [v11 addTarget:self action:sel__handleNextButtonTapped_ forControlEvents:0x2000];
        view = [(PKPaymentSetupFieldsViewController *)self view];
        [view setNeedsLayout];
      }

      [(PKPaymentSetupFieldsViewController *)self _updatePrimaryButtonState];
    }
  }
}

- (id)visibleFieldIdentifiersForSection:(unint64_t)section
{
  sectionIdentifiers = self->_sectionIdentifiers;
  if (sectionIdentifiers && [(NSArray *)sectionIdentifiers count]> section)
  {
    visibleFieldIdentifiers = [(NSArray *)self->_sectionIdentifiers objectAtIndexedSubscript:section];
  }

  else
  {
    visibleFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  }

  return visibleFieldIdentifiers;
}

- (id)visibleFieldIdentifiers
{
  fieldsModel = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  visibleSetupFieldIdentifiers = [fieldsModel visibleSetupFieldIdentifiers];

  return visibleSetupFieldIdentifiers;
}

- (id)readonlyFieldIdentifiers
{
  fieldsModel = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  readonlySetupFieldIdentifiers = [fieldsModel readonlySetupFieldIdentifiers];

  return readonlySetupFieldIdentifiers;
}

- (void)_noteFieldIdentifiersChangedUpdateHeaders:(BOOL)headers
{
  headersCopy = headers;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  firstResponderCell = [(PKPaymentSetupFieldsViewController *)self firstResponderCell];
  v6 = firstResponderCell;
  if (firstResponderCell)
  {
    [firstResponderCell setCanResignFirstResponder:0];
  }

  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView reloadData];

  if (headersCopy)
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

  displayedFooterField = [(PKPaymentSetupFieldsViewController *)self displayedFooterField];
  if (displayedFooterField && ![(PKPaymentSetupFieldsViewController *)self shouldDisplayFooterFieldInline:displayedFooterField])
  {
    body = [displayedFooterField body];
    [(PKPaymentSetupTableViewController *)self setFooterAttributedText:body];
  }

  else
  {
    [(PKPaymentSetupTableViewController *)self setFooterAttributedText:0];
  }

  if (self->_preferPrimaryButtonInNavigationBar)
  {
    navigationItem = [(PKPaymentSetupFieldsViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:{-[PKPaymentSetupFieldsViewController isComplete](self, "isComplete")}];
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
    context = [(PKPaymentSetupTableViewController *)self context];
    navigationController = [(PKPaymentSetupFieldsViewController *)self navigationController];
    v9 = PKOpenURLModallyHyperlinkAction(context, navigationController);
    v10 = PKGenericHyperlinkAction(v6, v9);
    [(PKFooterHyperlinkView *)self->_footerHyperlinkView setAction:v10];

    footerHyperlinkView = self->_footerHyperlinkView;
  }

  return footerHyperlinkView;
}

- (id)footerViewForIdentifier:(id)identifier
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSMapTable *)self->_fieldIdentifierToFooterViewMap objectForKey:identifierCopy];
  fieldsModel = [(PKPaymentSetupFieldsViewController *)self fieldsModel];
  v7 = [fieldsModel footerFieldForIdentifier:identifierCopy];

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
    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView bounds];
    v11 = v10;
    v13 = v12;

    tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView2 _sectionContentInset];
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
    [(NSMapTable *)self->_fieldIdentifierToFooterViewMap setObject:v5 forKey:identifierCopy];
    v7 = v33;
  }

  v31 = v5;

  return v5;
}

- (id)identifierForIndexPath:(id)path
{
  sectionIdentifiers = self->_sectionIdentifiers;
  pathCopy = path;
  v6 = pathCopy;
  if (sectionIdentifiers)
  {
    -[NSArray objectAtIndexedSubscript:](sectionIdentifiers, "objectAtIndexedSubscript:", [pathCopy section]);
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

- (void)_setCellsEnabled:(BOOL)enabled
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_cellsAreEnabled == !enabled)
  {
    enabledCopy = enabled;
    allCells = [(PKPaymentSetupFieldsViewController *)self allCells];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [allCells countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allCells);
          }

          [*(*(&v10 + 1) + 8 * v9++) setUserInteractionEnabled:enabledCopy];
        }

        while (v7 != v9);
        v7 = [allCells countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    self->_cellsAreEnabled = enabledCopy;
  }
}

- (id)cellForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMapTable *)self->_fieldIdentifierToCellMap objectForKey:identifierCopy];
  v6 = [(PKPaymentSetupFieldsViewController *)self fieldForIdentifier:identifierCopy];
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
      [(NSMapTable *)self->_fieldIdentifierToCellMap setObject:v5 forKey:identifierCopy];
      [v5 setEnabled:self->_cellsAreEnabled];
    }
  }

  [v5 setPaymentSetupField:v7];

  return v5;
}

- (id)nextResponderCellForCurrentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  visibleFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  readonlyFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
  v7 = [visibleFieldIdentifiers pk_arrayByRemovingObjectsInArray:readonlyFieldIdentifiers];

  v8 = [v7 indexOfObject:identifierCopy];
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
  firstEmptySetupField = [(PKPaymentSetupFieldsViewController *)self firstEmptySetupField];
  v4 = firstEmptySetupField;
  if (firstEmptySetupField)
  {
    identifier = [firstEmptySetupField identifier];
    v6 = [(PKPaymentSetupFieldsViewController *)self cellForIdentifier:identifier];
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
  visibleFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v4 = [visibleFieldIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(visibleFieldIdentifiers);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:v8];
        if (([v9 isFieldTypeLabel] & 1) == 0)
        {
          submissionString = [v9 submissionString];
          if ([submissionString length])
          {
          }

          else
          {
            readonlyFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
            v12 = [readonlyFieldIdentifiers containsObject:v8];

            if (!v12)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [visibleFieldIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  visibleFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  readonlyFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self readonlyFieldIdentifiers];
  v5 = [visibleFieldIdentifiers pk_arrayByRemovingObjectsInArray:readonlyFieldIdentifiers];

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

      editableTextField = [v11 editableTextField];
      isFirstResponder = [editableTextField isFirstResponder];

      if (isFirstResponder)
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
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  objectEnumerator = [(NSMapTable *)self->_fieldIdentifierToCellMap objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [array addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v9;
}

- (id)firstEmptyField
{
  firstEmptyCell = [(PKPaymentSetupFieldsViewController *)self firstEmptyCell];
  editableTextField = [firstEmptyCell editableTextField];

  return editableTextField;
}

- (BOOL)isEmpty
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = ![(PKPaymentSetupFieldsViewController *)self isComplete];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  visibleFieldIdentifiers = [(PKPaymentSetupFieldsViewController *)self visibleFieldIdentifiers];
  v5 = [visibleFieldIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(visibleFieldIdentifiers);
        }

        v9 = [(PKPaymentSetupFieldsModel *)self->_fieldsModel paymentSetupFieldWithIdentifier:*(*(&v13 + 1) + 8 * i)];
        if (([v9 isFieldTypeLabel] & 1) == 0)
        {
          submissionString = [v9 submissionString];
          v11 = [submissionString length] == 0;

          LOBYTE(v3) = v11 & v3;
        }
      }

      v6 = [visibleFieldIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  allCells = [(PKPaymentSetupFieldsViewController *)self allCells];
  v3 = [allCells countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(allCells);
        }

        [*(*(&v7 + 1) + 8 * v6++) resetTextFieldStyling];
      }

      while (v4 != v6);
      v4 = [allCells countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_contextSpecificStringForAggDKey:(id)key
{
  v4 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  v6 = [v4 stringWithFormat:@"%@.%ld", keyCopy, -[PKPaymentSetupTableViewController context](self, "context")];

  return v6;
}

- (void)logAnalyticsContextSpecificCheckpointForKey:(id)key
{
  v3 = [(PKPaymentSetupFieldsViewController *)self _contextSpecificStringForAggDKey:key];
  MEMORY[0x1BFB41980](v3, 0);
}

- (PKPaymentSetupViewControllerDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end