@interface PKReportIssueViewController
+ (BOOL)canReportIssueForTransaction:(id)transaction bankConnectInstitution:(id)institution paymentPass:(id)pass;
+ (BOOL)canSelectIssueTypeForTransaction:(id)transaction;
- (BOOL)_issueTypeEnabled:(int64_t)enabled;
- (BOOL)shouldMapSection:(unint64_t)section;
- (PKReportIssueViewController)initWithTransaction:(id)transaction transactionSourceCollection:(id)collection paymentPass:(id)pass familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution physicalCards:(id)self0 detailViewStyle:(int64_t)self1 context:(unint64_t)self2;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_commentsCellForTableView:(id)view atIndexPath:(id)path;
- (id)_createPrivacyFooterViewForContext:(unint64_t)context;
- (id)_disputeTypeCellForTableView:(id)view atIndexPath:(id)path;
- (id)_formattedStatementNameFromRawName:(id)name;
- (id)_issueTypeCellForTableView:(id)view atIndexPath:(id)path;
- (id)_mapsIssueCellForTableView:(id)view atIndexPath:(id)path;
- (id)_reportComments;
- (id)_statementName;
- (id)_statementNameCellForTableView:(id)view atIndexPath:(id)path;
- (id)_transactionCellForTableView:(id)view atIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)_issueTypeForRowIndex:(int64_t)index;
- (int64_t)_rowIndexForIssueType:(int64_t)type;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_numberOfIssueTypesEnabled;
- (void)_cancelButtonTapped:(id)tapped;
- (void)_cancelPayment;
- (void)_handleDisputeTypeSelectedInTableView:(id)view atIndexPath:(id)path;
- (void)_handleIssueTypeSelectedInTableView:(id)view atIndexPath:(id)path;
- (void)_handleMapsIssueTypeSelectedInTableView:(id)view atIndexPath:(id)path;
- (void)_presentAlertWithTitle:(id)title message:(id)message dismissAfter:(BOOL)after;
- (void)_reportBankConnectIssueToMaps;
- (void)_reportIssueInBusinessChat;
- (void)_reportIssueToMaps;
- (void)_reprocessTransactionMerchantWithIssueReportIdentifier:(id)identifier completion:(id)completion;
- (void)_resetMapsMerchantAndBrandWithIssueReportIdentifier:(id)identifier completion:(id)completion;
- (void)_submitBankConnectTicketToMaps:(id)maps withCorrelationId:(id)id;
- (void)_submitButtonTapped:(id)tapped;
- (void)_updateNavigationButtons;
- (void)dealloc;
- (void)didUpdateFamilyMembers:(id)members;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKReportIssueViewController

+ (BOOL)canReportIssueForTransaction:(id)transaction bankConnectInstitution:(id)institution paymentPass:(id)pass
{
  transactionCopy = transaction;
  passCopy = pass;
  problemReportingEnabled = [institution problemReportingEnabled];
  bankConnectMetadata = [transactionCopy bankConnectMetadata];
  classifiedByMaps = [bankConnectMetadata classifiedByMaps];

  if ([transactionCopy isBankConnectTransaction] && (problemReportingEnabled & classifiedByMaps) == 0 || objc_msgSend(passCopy, "associatedAccountFeatureIdentifier") == 4)
  {
    v12 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v12 = PKPaymentTransactionSupportsIssueType(v14, transactionCopy, passCopy);
      if (v12)
      {
        break;
      }
    }

    while (v14++ != 5);
  }

  return v12;
}

+ (BOOL)canSelectIssueTypeForTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionType = [transactionCopy transactionType];
  v5 = 1;
  if (transactionType <= 0x16)
  {
    if (((1 << transactionType) & 0x7FFBFC) != 0)
    {
      goto LABEL_3;
    }

    if (transactionType != 10)
    {
      goto LABEL_4;
    }

    if (!+[PKBusinessChatController deviceSupportsBusinessChat])
    {
LABEL_3:
      v5 = 0;
    }

    else
    {
      payments = [transactionCopy payments];
      firstObject = [payments firstObject];

      if ([firstObject isCurrentlyCancellable])
      {
        v5 = [transactionCopy transactionStatus] != 5;
      }

      else
      {
        v5 = 0;
      }
    }
  }

LABEL_4:

  return v5;
}

- (PKReportIssueViewController)initWithTransaction:(id)transaction transactionSourceCollection:(id)collection paymentPass:(id)pass familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution physicalCards:(id)self0 detailViewStyle:(int64_t)self1 context:(unint64_t)self2
{
  transactionCopy = transaction;
  collectionCopy = collection;
  passCopy = pass;
  familyCollectionCopy = familyCollection;
  accountCopy = account;
  userCollectionCopy = userCollection;
  institutionCopy = institution;
  cardsCopy = cards;
  v45.receiver = self;
  v45.super_class = PKReportIssueViewController;
  v21 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v45, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 6);
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_transaction, transaction);
    objc_storeStrong(&v22->_transactionSourceCollection, collection);
    objc_storeStrong(&v22->_paymentPass, pass);
    objc_storeStrong(&v22->_account, account);
    objc_storeStrong(&v22->_accountUserCollection, userCollection);
    objc_storeStrong(&v22->_bankConnectInstitution, institution);
    v23 = objc_alloc_init(MEMORY[0x1E6967E18]);
    bankConnectPIIStringProcessor = v22->_bankConnectPIIStringProcessor;
    v22->_bankConnectPIIStringProcessor = v23;

    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v22->_paymentService;
    v22->_paymentService = paymentService;

    [(PKPaymentService *)v22->_paymentService registerObserver:v22];
    v27 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:0];
    transactionCellController = v22->_transactionCellController;
    v22->_transactionCellController = v27;

    objc_storeStrong(&v22->_familyCollection, familyCollection);
    v29 = [cardsCopy copy];
    physicalCards = v22->_physicalCards;
    v22->_physicalCards = v29;

    v22->_context = context;
    v31 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v22 action:sel__cancelButtonTapped_];
    cancelButton = v22->_cancelButton;
    v22->_cancelButton = v31;

    v33 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v22 action:sel__submitButtonTapped_];
    submitButton = v22->_submitButton;
    v22->_submitButton = v33;

    navigationItem = [(PKReportIssueViewController *)v22 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    if (context != 1)
    {
      [navigationItem setLeftBarButtonItem:v22->_cancelButton];
    }

    [navigationItem setRightBarButtonItem:{v22->_submitButton, familyCollection}];
    v36 = PKLocalizedPaymentString(&cfstr_TransactionDet_44.isa);
    [navigationItem setTitle:v36];

    v22->_canPerformUnrecognizedTransaction = PKPaymentTransactionSupportsIssueType(1, transactionCopy, v22->_paymentPass);
    v22->_canPerformDispute = PKPaymentTransactionSupportsIssueType(0, transactionCopy, v22->_paymentPass);
    v22->_canPerformOther = PKPaymentTransactionSupportsIssueType(5, transactionCopy, v22->_paymentPass);
    v22->_canPerformIncorrectMerchant = PKPaymentTransactionSupportsIssueType(2, transactionCopy, v22->_paymentPass);
    v22->_canPerformCancelAccountServicePayment = PKPaymentTransactionSupportsIssueType(3, transactionCopy, v22->_paymentPass);
    if (context == 1)
    {
      v22->_selectedIssue = 2;
      v22->_hasIssueSelected = 1;
    }

    if ([(PKReportIssueViewController *)v22 _numberOfIssueTypesEnabled]== 1 && !v22->_hasIssueSelected)
    {
      v37 = 0;
      while (![(PKReportIssueViewController *)v22 _issueTypeEnabled:v37])
      {
        if (++v37 == 6)
        {
          goto LABEL_15;
        }
      }

      v22->_selectedIssue = v37;
      v22->_hasIssueSelected = 1;
    }

LABEL_15:
    [(PKReportIssueViewController *)v22 _updateNavigationButtons];
  }

  return v22;
}

- (void)dealloc
{
  [(PKPaymentService *)self->_paymentService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKReportIssueViewController;
  [(PKSectionTableViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKReportIssueViewController;
  [(PKSectionTableViewController *)&v5 viewDidLoad];
  tableView = [(PKReportIssueViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKReportIssueCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKTransactionCellReuseIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKTransactionCommentsCellReuseIdentifier"];
  if (self->_context != 1 && [(PKAccount *)self->_account feature]== 2 && ![PKReportIssueViewController canSelectIssueTypeForTransaction:self->_transaction])
  {
    self->_selectedIssue = 5;
    self->_hasIssueSelected = 1;
    [(PKReportIssueViewController *)self _reportIssueInBusinessChat];
  }

  view = [(PKReportIssueViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9B68]];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKReportIssueViewController;
  [(PKReportIssueViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKReportIssueViewController *)self tableView];
    navigationItem = [(PKReportIssueViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKReportIssueViewController *)self view];
  [view setNeedsLayout];
}

- (id)_createPrivacyFooterViewForContext:(unint64_t)context
{
  v4 = [MEMORY[0x1E69B7D48] pk_privacyFlowForContext:context];
  if (v4)
  {
    v5 = PKLocalizedBankConnectString(&cfstr_BankConnectRap.isa);
    localizedButtonTitle = [v4 localizedButtonTitle];
    v7 = localizedButtonTitle;
    if (v5)
    {
      v8 = PKLocalizedBankConnectString(&cfstr_BankConnectRap_0.isa, &stru_1F3BD6370.isa, v5, localizedButtonTitle);
    }

    else
    {
      v8 = localizedButtonTitle;
    }

    v10 = v8;
    v11 = MEMORY[0x1E695DFF8];
    v12 = MEMORY[0x1E696AEC0];
    identifier = [v4 identifier];
    v14 = [v12 stringWithFormat:@"onboarding:%@", identifier];
    v15 = [v11 URLWithString:v14];

    v9 = objc_alloc_init(PKFooterHyperlinkView);
    v16 = PKAttributedStringByAddingLinkToSubstring(v10, v7, v15);
    [(PKFooterHyperlinkView *)v9 setAttributedText:v16];

    v17 = PKGenericOnboardingPresenter(self, 0);
    v18 = PKOpenOnboardingHyperlinkAction(v17);
    [(PKFooterHyperlinkView *)v9 setAction:v18];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_statementName
{
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  rawName = [merchant rawName];
  v4 = rawName;
  if (rawName)
  {
    name = rawName;
  }

  else
  {
    name = [merchant name];
  }

  v6 = name;

  return v6;
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  v4 = 0;
  context = self->_context;
  if (section <= 2)
  {
    if (section)
    {
      if (section != 1)
      {
        if (section != 2)
        {
          return v4;
        }

        if ([(PKReportIssueViewController *)self _numberOfIssueTypesEnabled])
        {
          v6 = context == 1;
        }

        else
        {
          v6 = 1;
        }

        return !v6;
      }

      merchant = [(PKPaymentTransaction *)self->_transaction merchant];
      _statementName = [(PKReportIssueViewController *)self _statementName];
      if (!_statementName)
      {
        v4 = 0;
LABEL_33:

        return v4;
      }

      displayName = [merchant displayName];
      v10 = _statementName;
      v11 = displayName;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        v4 = context != 1;
        if (!v11)
        {

          goto LABEL_32;
        }

        v13 = [v10 isEqualToString:v11];

        if (!v13)
        {
          goto LABEL_32;
        }
      }

      v4 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v6 = context == 1;
    return !v6;
  }

  if (section - 4 >= 2)
  {
    if (section != 3)
    {
      return v4;
    }

    if (!self->_hasIssueSelected)
    {
      return 0;
    }

    if (self->_selectedIssue)
    {
      v6 = 1;
    }

    else
    {
      v6 = context == 1;
    }

    return !v6;
  }

  return self->_hasIssueSelected && self->_selectedIssue == 2 || context == 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
  result = 1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        return 4;
      case 4:
        return 3;
      case 5:
        return result;
    }

    return 0;
  }

  if (v5 < 2)
  {
    return result;
  }

  if (v5 != 2)
  {
    return 0;
  }

  return [(PKReportIssueViewController *)self _numberOfIssueTypesEnabled];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  v9 = 0;
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:
        v10 = [(PKReportIssueViewController *)self _disputeTypeCellForTableView:viewCopy atIndexPath:pathCopy];
        break;
      case 4:
        v10 = [(PKReportIssueViewController *)self _mapsIssueCellForTableView:viewCopy atIndexPath:pathCopy];
        break;
      case 5:
        v10 = [(PKReportIssueViewController *)self _commentsCellForTableView:viewCopy atIndexPath:pathCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v10 = [(PKReportIssueViewController *)self _statementNameCellForTableView:viewCopy atIndexPath:pathCopy];
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_15;
      }

      v10 = [(PKReportIssueViewController *)self _issueTypeCellForTableView:viewCopy atIndexPath:pathCopy];
    }
  }

  else
  {
    v10 = [(PKReportIssueViewController *)self _transactionCellForTableView:viewCopy atIndexPath:pathCopy];
  }

  v9 = v10;
LABEL_15:

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(PKSectionTableViewController *)self sectionForIndex:section]- 1;
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = PKLocalizedPaymentString(&off_1E80213E8[v4]->isa);
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  switch(v7)
  {
    case 4uLL:
      [(PKReportIssueViewController *)self _handleMapsIssueTypeSelectedInTableView:viewCopy atIndexPath:pathCopy];
      break;
    case 3uLL:
      [(PKReportIssueViewController *)self _handleDisputeTypeSelectedInTableView:viewCopy atIndexPath:pathCopy];
      break;
    case 2uLL:
      [(PKReportIssueViewController *)self _handleIssueTypeSelectedInTableView:viewCopy atIndexPath:pathCopy];
      break;
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [path section]);
  result = *MEMORY[0x1E69DE3D0];
  if (v4 == 5)
  {
    return 200.0;
  }

  return result;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([(PKSectionTableViewController *)self sectionForIndex:section]== 5 && [(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
  {
    v5 = [(PKReportIssueViewController *)self _createPrivacyFooterViewForContext:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didUpdateFamilyMembers:(id)members
{
  membersCopy = members;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKReportIssueViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = membersCopy;
  selfCopy = self;
  v5 = membersCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __54__PKReportIssueViewController_didUpdateFamilyMembers___block_invoke(uint64_t a1)
{
  obj = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 1176), obj);
    [*(a1 + 40) reloadSection:0];
  }
}

- (void)_handleIssueTypeSelectedInTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[PKReportIssueViewController _issueTypeForRowIndex:](self, "_issueTypeForRowIndex:", [pathCopy row]);
  v8 = v7;
  if (self->_hasIssueSelected)
  {
    if (v7 == self->_selectedIssue)
    {
      goto LABEL_5;
    }

    v9 = [MEMORY[0x1E696AC88] indexPathForRow:-[PKReportIssueViewController _rowIndexForIssueType:](self inSection:{"_rowIndexForIssueType:"), -[PKSectionTableViewController indexForSection:](self, "indexForSection:", 2)}];
    v10 = [viewCopy cellForRowAtIndexPath:v9];

    [v10 setAccessoryType:0];
  }

  v11 = [MEMORY[0x1E696AC88] indexPathForRow:-[PKReportIssueViewController _rowIndexForIssueType:](self inSection:{"_rowIndexForIssueType:", v8), -[PKSectionTableViewController indexForSection:](self, "indexForSection:", 2)}];
  v12 = [viewCopy cellForRowAtIndexPath:v11];

  [v12 setAccessoryType:3];
  self->_hasIssueSelected = 1;
  self->_selectedIssue = v8;
  self->_hasMapsIssueSelected = 0;
  self->_hasDisputeTypeSelected = 0;
  [(PKReportIssueViewController *)self _updateNavigationButtons];
  [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForSections:&unk_1F3CC86A8];

LABEL_5:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)_handleDisputeTypeSelectedInTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  v8 = v7;
  if (self->_hasDisputeTypeSelected)
  {
    selectedDisputeType = self->_selectedDisputeType;
    if (v7 == selectedDisputeType)
    {
      goto LABEL_5;
    }

    v10 = [MEMORY[0x1E696AC88] indexPathForRow:selectedDisputeType inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 3)}];
    v11 = [viewCopy cellForRowAtIndexPath:v10];

    [v11 setAccessoryType:0];
  }

  v12 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 3)}];
  v13 = [viewCopy cellForRowAtIndexPath:v12];

  [v13 setAccessoryType:3];
  self->_hasDisputeTypeSelected = 1;
  self->_selectedDisputeType = v8;
  [(PKReportIssueViewController *)self _updateNavigationButtons];

LABEL_5:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)_handleMapsIssueTypeSelectedInTableView:(id)view atIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  v8 = v7;
  if (self->_hasMapsIssueSelected)
  {
    selectedMapsIssue = self->_selectedMapsIssue;
    if (v7 == selectedMapsIssue)
    {
      goto LABEL_5;
    }

    v10 = [MEMORY[0x1E696AC88] indexPathForRow:selectedMapsIssue inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 4)}];
    v11 = [viewCopy cellForRowAtIndexPath:v10];

    [v11 setAccessoryType:0];
  }

  v12 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 4)}];
  v13 = [viewCopy cellForRowAtIndexPath:v12];

  [v13 setAccessoryType:3];
  self->_hasMapsIssueSelected = 1;
  self->_selectedMapsIssue = v8;
  [(PKReportIssueViewController *)self _updateNavigationButtons];

LABEL_5:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)_transactionCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"PKTransactionCellReuseIdentifier" forIndexPath:path];
  transactionSourceCollection = self->_transactionSourceCollection;
  transactionSourceIdentifier = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v8 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

  v9 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForTransactionSource:v8];
  [(PKPaymentTransactionCellController *)self->_transactionCellController configureCell:v5 forTransaction:self->_transaction transactionSource:v8 familyMember:v9 account:self->_account detailStyle:0 deviceName:0 avatarViewDelegate:0];
  transactionView = [v5 transactionView];
  [transactionView setShowsDisclosureView:0];

  return v5;
}

- (id)_statementNameCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"PKReportIssueCellReuseIdentifier" forIndexPath:path];
  if (!self->_statementName)
  {
    _statementName = [(PKReportIssueViewController *)self _statementName];
    v7 = [(PKReportIssueViewController *)self _formattedStatementNameFromRawName:_statementName];
    uppercaseString = [v7 uppercaseString];
    statementName = self->_statementName;
    self->_statementName = uppercaseString;
  }

  textLabel = [v5 textLabel];
  [textLabel setText:self->_statementName];

  [v5 setAccessoryType:0];
  PKAccessibilityIDCellSet(v5, *MEMORY[0x1E69B9CB0]);

  return v5;
}

- (id)_issueTypeCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKReportIssueCellReuseIdentifier" forIndexPath:pathCopy];
  v8 = [pathCopy row];

  v9 = [(PKReportIssueViewController *)self _issueTypeForRowIndex:v8];
  v10 = v9;
  if (v9 > 5)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v11 = qword_1E8021440[v9];
    v12 = PKLocalizedPaymentString(&off_1E8021410[v9]->isa);
    v13 = *v11;
  }

  textLabel = [v7 textLabel];
  [textLabel setText:v12];

  if (self->_hasIssueSelected)
  {
    if (self->_selectedIssue == v10)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  [v7 setAccessoryType:v15];
  PKAccessibilityIDCellSet(v7, v13);

  return v7;
}

- (id)_disputeTypeCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKReportIssueCellReuseIdentifier" forIndexPath:pathCopy];
  v8 = [pathCopy row];

  if (v8 > 3)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v9 = qword_1E8021490[v8];
    v10 = PKLocalizedPaymentString(&off_1E8021470[v8]->isa);
    v11 = *v9;
  }

  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  if (self->_hasDisputeTypeSelected)
  {
    if (self->_selectedDisputeType == v8)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  PKAccessibilityIDCellSet(v7, v11);

  return v7;
}

- (id)_mapsIssueCellForTableView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKReportIssueCellReuseIdentifier" forIndexPath:pathCopy];
  v8 = [pathCopy row];

  if (v8 > 2)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v9 = qword_1E80214C8[v8];
    v10 = PKLocalizedPaymentString(&off_1E80214B0[v8]->isa);
    v11 = *v9;
  }

  textLabel = [v7 textLabel];
  [textLabel setText:v10];

  if (self->_hasMapsIssueSelected)
  {
    if (self->_selectedMapsIssue == v8)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  PKAccessibilityIDCellSet(v7, v11);

  return v7;
}

- (id)_commentsCellForTableView:(id)view atIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:@"PKTransactionCommentsCellReuseIdentifier" forIndexPath:path];
  textView = [v5 textView];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = PKLocalizedPaymentString(&cfstr_TransactionDet_67.isa);
  v9 = [v7 initWithString:v8];

  [textView setAttributedPlaceholder:v9];
  [textView setDelegate:self];
  [textView setAccessibilityIdentifier:*MEMORY[0x1E69B9600]];

  return v5;
}

- (id)_formattedStatementNameFromRawName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:nameCopy];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  [v5 setCharactersToBeSkipped:whitespaceAndNewlineCharacterSet];
  v15 = 0;
  v7 = [v5 scanUpToCharactersFromSet:whitespaceAndNewlineCharacterSet intoString:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    do
    {
      if ([v9 length])
      {
        if ([v5 isAtEnd])
        {
          v10 = &stru_1F3BD7330;
        }

        else
        {
          v10 = @" ";
        }

        [v4 appendFormat:@"%@%@", v9, v10];
      }

      v15 = v9;
      v11 = [v5 scanUpToCharactersFromSet:whitespaceAndNewlineCharacterSet intoString:&v15];
      v12 = v15;

      v9 = v12;
    }

    while ((v11 & 1) != 0);
  }

  else
  {
    v12 = v8;
  }

  v13 = [v4 copy];

  return v13;
}

- (unint64_t)_numberOfIssueTypesEnabled
{
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += [(PKReportIssueViewController *)self _issueTypeEnabled:v3++];
  }

  while (v3 != 6);
  return v4;
}

- (int64_t)_issueTypeForRowIndex:(int64_t)index
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKReportIssueViewController *)self _issueTypeEnabled:v5])
    {
      if (v6 == index)
      {
        return v5;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 6);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)_rowIndexForIssueType:(int64_t)type
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKReportIssueViewController *)self _issueTypeEnabled:v5])
    {
      if (type == v5)
      {
        return v6;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 6);
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_issueTypeEnabled:(int64_t)enabled
{
  if (enabled > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&self->super.super.super.super.super.isa + *off_1E80214E0[enabled]);
  }

  return v3 & 1;
}

- (void)_updateNavigationButtons
{
  [(UIBarButtonItem *)self->_cancelButton setEnabled:!self->_reportingIssue];
  if (self->_hasIssueSelected && !self->_reportingIssue)
  {
    selectedIssue = self->_selectedIssue;
    if (selectedIssue)
    {
      if (selectedIssue == 2)
      {
        if ([(PKSectionTableViewController *)self isSectionMapped:5])
        {
          tableView = [(PKReportIssueViewController *)self tableView];
          v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 5)}];
          v9 = [tableView cellForRowAtIndexPath:v8];

          textView = [v9 textView];
          text = [textView text];
          v12 = [text length] != 0;
        }

        else
        {
          v12 = 0;
        }

        hasDisputeTypeSelected = self->_hasMapsIssueSelected && v12;
      }

      else
      {
        hasDisputeTypeSelected = 1;
      }
    }

    else
    {
      hasDisputeTypeSelected = self->_hasDisputeTypeSelected;
    }
  }

  else
  {
    hasDisputeTypeSelected = 0;
  }

  [(UIBarButtonItem *)self->_submitButton setEnabled:hasDisputeTypeSelected & 1];
  if (self->_reportingIssue)
  {
    navigationItem2 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [navigationItem2 startAnimating];
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:navigationItem2];
    navigationItem = [(PKReportIssueViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v4];
  }

  else
  {
    navigationItem2 = [(PKReportIssueViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:self->_submitButton];
  }
}

- (void)_cancelButtonTapped:(id)tapped
{
  presentingViewController = [(PKReportIssueViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_submitButtonTapped:(id)tapped
{
  if (self->_hasIssueSelected)
  {
    if ([(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
    {
      if (self->_selectedIssue == 2)
      {

        [(PKReportIssueViewController *)self _reportBankConnectIssueToMaps];
      }
    }

    else if (self->_canPerformCancelAccountServicePayment)
    {
      if (!self->_cancelingPayment)
      {
        self->_cancelingPayment = 1;
        v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        activityIndicator = self->_activityIndicator;
        self->_activityIndicator = v4;

        [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
        navigationItem = [(PKReportIssueViewController *)self navigationItem];
        v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_activityIndicator];
        [navigationItem setRightBarButtonItem:v7];

        v8 = MEMORY[0x1E69DC650];
        v9 = PKLocalizedFeatureString();
        v10 = PKLocalizedFeatureString();
        v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

        v12 = MEMORY[0x1E69DC648];
        v13 = PKLocalizedFeatureString();
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __51__PKReportIssueViewController__submitButtonTapped___block_invoke;
        v20[3] = &unk_1E80112E8;
        v20[4] = self;
        v14 = [v12 actionWithTitle:v13 style:2 handler:v20];
        [v11 addAction:v14];

        v15 = MEMORY[0x1E69DC648];
        v16 = PKLocalizedFeatureString();
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __51__PKReportIssueViewController__submitButtonTapped___block_invoke_2;
        v19[3] = &unk_1E80112E8;
        v19[4] = self;
        v17 = [v15 actionWithTitle:v16 style:1 handler:v19];
        [v11 addAction:v17];

        [(PKReportIssueViewController *)self presentViewController:v11 animated:1 completion:0];
      }
    }

    else
    {
      selectedIssue = self->_selectedIssue;
      if (selectedIssue <= 5)
      {
        if (selectedIssue == 2)
        {

          [(PKReportIssueViewController *)self _reportIssueToMaps];
        }

        else
        {

          [(PKReportIssueViewController *)self _reportIssueInBusinessChat];
        }
      }
    }
  }
}

uint64_t __51__PKReportIssueViewController__submitButtonTapped___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _reportIssueInBusinessChat];
  *(*(a1 + 32) + 1280) = 0;
  return result;
}

- (void)_cancelPayment
{
  payments = [(PKPaymentTransaction *)self->_transaction payments];
  firstObject = [payments firstObject];

  v5 = objc_alloc_init(MEMORY[0x1E69B8480]);
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [v5 setAccountIdentifier:accountIdentifier];

  accountBaseURL = [(PKAccount *)self->_account accountBaseURL];
  [v5 setBaseURL:accountBaseURL];

  referenceIdentifier = [firstObject referenceIdentifier];
  [v5 setPaymentReferenceIdentifier:referenceIdentifier];

  objc_initWeak(&location, self);
  paymentWebService = self->_paymentWebService;
  if (!paymentWebService)
  {
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    v11 = self->_paymentWebService;
    self->_paymentWebService = mEMORY[0x1E69B8EF8];

    paymentWebService = self->_paymentWebService;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__PKReportIssueViewController__cancelPayment__block_invoke;
  v12[3] = &unk_1E8016198;
  objc_copyWeak(&v13, &location);
  v12[4] = self;
  [(PKPaymentWebService *)paymentWebService cancelPaymentWithRequest:v5 completion:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __45__PKReportIssueViewController__cancelPayment__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Cancel Payment => %@:%@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PKReportIssueViewController__cancelPayment__block_invoke_156;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v13, (a1 + 40));
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __45__PKReportIssueViewController__cancelPayment__block_invoke_156(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[1280] = 0;
    v4 = [WeakRetained navigationItem];
    [v4 setRightBarButtonItem:*(v3 + 150)];

    if (*(a1 + 32))
    {
      v5 = MEMORY[0x1E69DC650];
      v6 = PKLocalizedFeatureString();
      v7 = PKLocalizedFeatureString();
      v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

      v9 = MEMORY[0x1E69DC648];
      v10 = PKLocalizedFeatureString();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __45__PKReportIssueViewController__cancelPayment__block_invoke_2;
      v19[3] = &unk_1E80112E8;
      v19[4] = v3;
      v11 = [v9 actionWithTitle:v10 style:0 handler:v19];
      [v8 addAction:v11];

      v12 = MEMORY[0x1E69DC648];
      v13 = PKLocalizedFeatureString();
      v14 = [v12 actionWithTitle:v13 style:1 handler:0];
      [v8 addAction:v14];

      [v3 presentViewController:v8 animated:1 completion:0];
    }

    else
    {
      v15 = *(*(a1 + 40) + 1152);
      v16 = *(v3 + 138);
      v8 = v15;
      [v16 setTransactionStatus:5];
      v17 = [v16 transactionSourceIdentifier];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __45__PKReportIssueViewController__cancelPayment__block_invoke_3;
      v18[3] = &unk_1E8016170;
      v18[4] = v3;
      [v8 insertOrUpdatePaymentTransaction:v16 forTransactionSourceIdentifier:v17 completion:v18];
    }
  }
}

void __45__PKReportIssueViewController__cancelPayment__block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PKReportIssueViewController__cancelPayment__block_invoke_4;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __45__PKReportIssueViewController__cancelPayment__block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)_reportIssueInBusinessChat
{
  if (+[PKBusinessChatController deviceSupportsBusinessChat]&& !self->_reportingIssue)
  {
    selectedIssue = self->_selectedIssue;
    if ((selectedIssue - 3) >= 3)
    {
      if (selectedIssue)
      {
        if (selectedIssue == 1)
        {
          v4 = 0;
        }

        else
        {
          v4 = 5;
        }
      }

      else
      {
        selectedDisputeType = self->_selectedDisputeType;
        if (selectedDisputeType < 4)
        {
          v4 = selectedDisputeType + 1;
        }

        else
        {
          v4 = 5;
        }
      }
    }

    else if ([(PKPaymentTransaction *)self->_transaction transactionType]== 10)
    {
      v4 = 9;
    }

    else
    {
      v4 = 5;
    }

    self->_reportingIssue = 1;
    [(PKReportIssueViewController *)self _updateNavigationButtons];
    v6 = [(PKAccountUserCollection *)self->_accountUserCollection accountUserForTransaction:self->_transaction];
    familyCollection = self->_familyCollection;
    altDSID = [v6 altDSID];
    v9 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:altDSID];

    v10 = [PKBusinessChatTransactionDisputeContext alloc];
    paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    v12 = [(PKBusinessChatTransactionDisputeContext *)v10 initWithPaymentPass:paymentPass transaction:self->_transaction account:self->_account accountUser:v6 familyMember:v9 physicalCards:self->_physicalCards intent:v4];

    if (!self->_businessChatController)
    {
      v13 = objc_alloc_init(PKBusinessChatController);
      businessChatController = self->_businessChatController;
      self->_businessChatController = v13;
    }

    objc_initWeak(&location, self);
    v15 = self->_businessChatController;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__PKReportIssueViewController__reportIssueInBusinessChat__block_invoke;
    v16[3] = &unk_1E8011338;
    objc_copyWeak(&v17, &location);
    [(PKBusinessChatController *)v15 openBusinessChatWithContext:v12 completion:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __57__PKReportIssueViewController__reportIssueInBusinessChat__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKReportIssueViewController__reportIssueInBusinessChat__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __57__PKReportIssueViewController__reportIssueInBusinessChat__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[1264] = 0;
    v5 = WeakRetained;
    [WeakRetained _updateNavigationButtons];
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
      [v5 presentViewController:v4 animated:1 completion:0];
    }

    else
    {
      v4 = [v5 presentingViewController];
      [v4 dismissViewControllerAnimated:1 completion:0];
    }

    WeakRetained = v5;
  }
}

- (void)_resetMapsMerchantAndBrandWithIssueReportIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  paymentService = self->_paymentService;
  transaction = self->_transaction;
  identifierCopy = identifier;
  identifier = [(PKPaymentTransaction *)transaction identifier];
  transactionSourceIdentifier = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PKReportIssueViewController__resetMapsMerchantAndBrandWithIssueReportIdentifier_completion___block_invoke;
  v13[3] = &unk_1E8021350;
  v14 = completionCopy;
  v12 = completionCopy;
  [(PKPaymentService *)paymentService removeMapsDataForTransactionWithIdentifier:identifier forTransactionSourceIdentifier:transactionSourceIdentifier issueReportIdentifier:identifierCopy completion:v13];
}

uint64_t __94__PKReportIssueViewController__resetMapsMerchantAndBrandWithIssueReportIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)_reprocessTransactionMerchantWithIssueReportIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  transactionSourceIdentifier = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v9 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];
  paymentPass = [v9 paymentPass];

  v11 = objc_alloc(MEMORY[0x1E69B92D8]);
  transaction = self->_transaction;
  devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
  v14 = [v11 initWithTransaction:transaction paymentApplication:devicePrimaryPaymentApplication];

  v15 = [objc_alloc(MEMORY[0x1E69B89B0]) initWithSource:v14];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__PKReportIssueViewController__reprocessTransactionMerchantWithIssueReportIdentifier_completion___block_invoke;
  v19[3] = &unk_1E8021378;
  v19[4] = self;
  v20 = identifierCopy;
  v21 = transactionSourceIdentifier;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = transactionSourceIdentifier;
  v18 = identifierCopy;
  [v15 startLookupWithCompletion:v19];
}

void __97__PKReportIssueViewController__reprocessTransactionMerchantWithIssueReportIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKReportIssueViewController__reprocessTransactionMerchantWithIssueReportIdentifier_completion___block_invoke_2;
  block[3] = &unk_1E80135E0;
  v11 = v3;
  v9 = *(a1 + 32);
  v4 = *(&v9 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v12 = v9;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __97__PKReportIssueViewController__reprocessTransactionMerchantWithIssueReportIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = *(a1 + 40);
  if (v2 == 2)
  {
    v4 = [v3[138] merchant];
    v5 = [*(a1 + 32) merchant];
    v6 = [*(a1 + 32) brand];
    v7 = [v5 identifier];
    v8 = [v4 mapsMerchant];
    if (v7 == [v8 identifier])
    {
      v9 = [v6 identifier];
      v10 = [v4 mapsBrand];
      v11 = [v10 identifier];

      if (v9 == v11 && (!(v5 | v6) || ![v4 mapsDataIsFromLocalMatch]))
      {
        [*(a1 + 40) _resetMapsMerchantAndBrandWithIssueReportIdentifier:*(a1 + 48) completion:*(a1 + 64)];
LABEL_12:

        return;
      }
    }

    else
    {
    }

    [v4 setMapsMerchant:v5];
    [v4 setMapsBrand:v6];
    [v4 setFallbackcategory:{objc_msgSend(*(a1 + 32), "fallbackCategory")}];
    [v4 setMapsDataIsFromLocalMatch:0];
    [*(*(a1 + 40) + 1104) setIssueReportIdentifier:*(a1 + 48)];
    v14 = *(a1 + 40);
    v15 = *(v14 + 1152);
    v16 = *(v14 + 1104);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __97__PKReportIssueViewController__reprocessTransactionMerchantWithIssueReportIdentifier_completion___block_invoke_3;
    v18[3] = &unk_1E8021350;
    v17 = *(a1 + 56);
    v19 = *(a1 + 64);
    [v15 insertOrUpdatePaymentTransaction:v16 forTransactionSourceIdentifier:v17 completion:v18];

    goto LABEL_12;
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 64);

  [v3 _resetMapsMerchantAndBrandWithIssueReportIdentifier:v12 completion:v13];
}

uint64_t __97__PKReportIssueViewController__reprocessTransactionMerchantWithIssueReportIdentifier_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (void)_reportBankConnectIssueToMaps
{
  if (self->_reportingIssue || !self->_hasMapsIssueSelected)
  {
    return;
  }

  self->_reportingIssue = 1;
  [(PKReportIssueViewController *)self _updateNavigationButtons];
  selectedMapsIssue = self->_selectedMapsIssue;
  if (selectedMapsIssue > 2)
  {
    v124 = 0;
  }

  else
  {
    v124 = qword_1BE116760[selectedMapsIssue];
  }

  transaction = self->_transaction;
  bankConnectInstitution = self->_bankConnectInstitution;
  _reportComments = [(PKReportIssueViewController *)self _reportComments];
  bankConnectPIIStringProcessor = self->_bankConnectPIIStringProcessor;
  paymentPass = self->_paymentPass;
  v9 = transaction;
  v10 = bankConnectInstitution;
  v120 = _reportComments;
  v11 = bankConnectPIIStringProcessor;
  v12 = paymentPass;
  merchant = [(PKPaymentTransaction *)v9 merchant];
  mapsMerchant = [merchant mapsMerchant];
  mapsBrand = [merchant mapsBrand];
  postalAddress = [mapsMerchant postalAddress];
  if (postalAddress)
  {
    v16 = MEMORY[0x1E695CF68];
    postalAddress2 = [mapsMerchant postalAddress];
    v18 = [v16 stringFromPostalAddress:postalAddress2 style:0];
  }

  else
  {
    v18 = 0;
  }

  location = [(PKPaymentTransaction *)v9 location];
  [location coordinate];
  v21 = v20;
  v23 = v22;

  v112 = objc_alloc(off_1EE9A1E60());
  industryCode = [merchant industryCode];
  if ([mapsMerchant identifier])
  {
    v24 = mapsMerchant;
  }

  else
  {
    v24 = mapsBrand;
  }

  identifier = [v24 identifier];
  name = [merchant name];
  rawName = [merchant rawName];
  industryCategory = [merchant industryCategory];
  v119 = merchant;
  originURL = [merchant originURL];
  absoluteString = [originURL absoluteString];
  v25 = &stru_1F3BD7330;
  v117 = v18;
  if (v18)
  {
    v25 = v18;
  }

  v105 = v25;
  transactionDate = [(PKPaymentTransaction *)v9 transactionDate];
  [transactionDate timeIntervalSince1970];
  v27 = v26;
  [(PKPaymentTransaction *)v9 transactionType];
  v106 = PKPaymentTransactionTypeToString();
  v28 = v9;
  v29 = v11;
  v30 = v12;
  v116 = v10;
  bankConnectMetadata = [(PKPaymentTransaction *)v28 bankConnectMetadata];
  v32 = objc_alloc(MEMORY[0x1E695DFD8]);
  issuerCountryCode = [(PKPaymentPass *)v30 issuerCountryCode];
  v34 = [v32 initWithObjects:{issuerCountryCode, 0}];

  merchantProvidedDescription = [(PKPaymentTransaction *)v28 merchantProvidedDescription];
  v100 = [(FKPIIStringProcessor *)v29 redactFromString:merchantProvidedDescription forCountryCodes:v34];

  originalTransactionDescription = [bankConnectMetadata originalTransactionDescription];
  v101 = v34;
  v37 = [(FKPIIStringProcessor *)v29 redactFromString:originalTransactionDescription forCountryCodes:v34];

  v38 = objc_alloc_init(off_1EE9A1E68());
  transactionType = [(PKPaymentTransaction *)v28 transactionType];
  v40 = 0;
  if (transactionType <= 0x16)
  {
    v40 = qword_1BE116648[transactionType];
  }

  [v38 setTransactionType:v40];
  [v38 setBankTransactionDescription:v37];
  transactionDate2 = [(PKPaymentTransaction *)v28 transactionDate];
  [transactionDate2 timeIntervalSinceReferenceDate];
  [v38 setTransactionTimestamp:?];

  bankMerchantCategoryCode = [bankConnectMetadata bankMerchantCategoryCode];
  integerValue = [bankMerchantCategoryCode integerValue];
  v104 = bankConnectMetadata;
  if (integerValue)
  {
    [v38 setIndustryCode:integerValue];
  }

  else
  {
    merchant2 = [(PKPaymentTransaction *)v28 merchant];
    [v38 setIndustryCode:{objc_msgSend(merchant2, "industryCode")}];
  }

  [v38 setEnableBrandMuidFallback:1];
  currencyCode = [(PKPaymentTransaction *)v28 currencyCode];
  [v38 setTransactionCurrencyCode:currencyCode];

  transactionStatus = [(PKPaymentTransaction *)v28 transactionStatus];
  v118 = mapsMerchant;
  v99 = v37;
  selfCopy = self;
  if (transactionStatus > 3)
  {
    v47 = 0;
  }

  else
  {
    v47 = qword_1BE116700[transactionStatus];
  }

  [v38 setTransactionStatus:v47];
  v48 = v28;
  v49 = off_1EE9A1E70;
  v50 = v29;
  v51 = v30;
  v52 = objc_alloc_init(v49());
  bankConnectMetadata2 = [(PKPaymentTransaction *)v48 bankConnectMetadata];
  v102 = v48;
  merchant3 = [(PKPaymentTransaction *)v48 merchant];
  bankMerchantAddress = [bankConnectMetadata2 bankMerchantAddress];
  bankMerchantName = [bankConnectMetadata2 bankMerchantName];
  v57 = objc_alloc(MEMORY[0x1E695DFD8]);
  issuerCountryCode2 = [(PKPaymentPass *)v51 issuerCountryCode];
  v122 = v51;

  v59 = [v57 initWithObjects:{issuerCountryCode2, 0}];
  v60 = [(FKPIIStringProcessor *)v50 redactFromString:bankMerchantName forCountryCodes:v59];
  v103 = v50;

  v98 = bankConnectMetadata2;
  bankMerchantNumber = [bankConnectMetadata2 bankMerchantNumber];
  [v52 setMerchantId:bankMerchantNumber];

  [v52 setMerchantDoingBusinessAsName:v60];
  [v52 setMerchantEnhancedName:v60];
  city = [bankMerchantAddress city];
  if (city)
  {
    [v52 setMerchantCity:city];
  }

  else
  {
    city2 = [merchant3 city];
    [v52 setMerchantCity:city2];
  }

  v64 = merchant3;

  rawCity = [merchant3 rawCity];
  [v52 setMerchantRawCity:rawCity];

  v66 = bankMerchantAddress;
  state = [bankMerchantAddress state];
  v68 = selfCopy;
  if (state)
  {
    [v52 setMerchantState:state];
  }

  else
  {
    state2 = [v64 state];
    [v52 setMerchantState:state2];
  }

  rawState = [v64 rawState];
  [v52 setMerchantRawState:rawState];

  postalCode = [v66 postalCode];
  if (postalCode)
  {
    [v52 setMerchantZip:postalCode];
  }

  else
  {
    v72 = [v64 zip];
    [v52 setMerchantZip:v72];
  }

  street = [v66 street];
  [v52 setMerchantAddress:street];

  street2 = [v66 street];
  [v52 setMerchantRawAddress:street2];

  [v52 setMerchantCleanConfidenceLevel:{objc_msgSend(v64, "cleanConfidenceLevel")}];
  rawCANL = [v64 rawCANL];
  [v52 setMerchantCanl:rawCANL];

  clearingNetworkData = [(PKPaymentTransaction *)v102 clearingNetworkData];

  if (clearingNetworkData)
  {
    v77 = MEMORY[0x1E696ACB0];
    clearingNetworkData2 = [(PKPaymentTransaction *)v102 clearingNetworkData];
LABEL_36:
    v80 = clearingNetworkData2;
    v81 = [clearingNetworkData2 dataUsingEncoding:4];
    v82 = [v77 JSONObjectWithData:v81 options:0 error:0];

    if (v82)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v83 = [v82 objectForKeyedSubscript:*MEMORY[0x1E69BC2E0]];
        if (v83)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v84 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v83 options:0 error:0];
            v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v84 encoding:4];
            [v52 setMerchantAdditionalData:v85];

            v68 = selfCopy;
          }
        }

        v86 = [v82 objectForKeyedSubscript:*MEMORY[0x1E69BC2D0]];
        [v52 setMerchantCountryCode:v86];

        v87 = [v82 objectForKeyedSubscript:*MEMORY[0x1E69BC2D8]];
        [v52 setMerchantType:v87];
      }
    }

    goto LABEL_43;
  }

  authNetworkData = [(PKPaymentTransaction *)v102 authNetworkData];

  if (authNetworkData)
  {
    v77 = MEMORY[0x1E696ACB0];
    clearingNetworkData2 = [(PKPaymentTransaction *)v102 authNetworkData];
    goto LABEL_36;
  }

  v82 = 0;
LABEL_43:

  [v38 setMerchantInformation:v52];
  [v38 setBankTransactionDescriptionClean:v100];
  institutionIdentifier = [(FKInstitution *)v116 institutionIdentifier];

  [v38 setBankIdentifier:institutionIdentifier];
  v125 = [v112 initForMerchantIssue:v124 merchantIndustryCode:industryCode mapsIdentifier:identifier merchantName:name merchantRawName:rawName merchantIndustryCategory:industryCategory merchantURL:v27 merchantFormattedAddress:v21 transactionTime:v23 transactionType:absoluteString transactionLocation:v105 bankTransactionInformation:{v106, v38}];

  if (v125)
  {
    issueReportIdentifier = [(PKPaymentTransaction *)v102 issueReportIdentifier];
    if (![issueReportIdentifier length])
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      issueReportIdentifier = uUIDString;
    }

    [v125 setIsAppleCard:0];
    transactionSource = [(PKPaymentTransaction *)v102 transactionSource];
    [(PKPaymentTransaction *)v102 transactionType];
    if ((transactionSource - 1) > 7)
    {
      v93 = 0;
    }

    else
    {
      v93 = qword_1BE116720[transactionSource - 1];
    }

    [v125 setLookupTransactionType:v93];
    if ([(PKPaymentTransaction *)v102 hasEffectiveTransactionSource])
    {
      v94 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v119, "adamIdentifier")}];
      stringValue = [v94 stringValue];
      [v125 setMerchantAdamId:stringValue];
    }

    [v125 setCorrelationId:issueReportIdentifier];
    [v125 setReportersComment:v120];
  }

  v96 = _MergedGlobals_19_0(v125, 1);
  correlationId = [v125 correlationId];
  [(PKReportIssueViewController *)v68 _submitBankConnectTicketToMaps:v96 withCorrelationId:correlationId];
}

- (void)_submitBankConnectTicketToMaps:(id)maps withCorrelationId:(id)id
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PKReportIssueViewController__submitBankConnectTicketToMaps_withCorrelationId___block_invoke;
  v4[3] = &unk_1E80213A0;
  v4[4] = self;
  [maps submitWithHandler:v4 networkActivity:0];
}

void __80__PKReportIssueViewController__submitBankConnectTicketToMaps_withCorrelationId___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__PKReportIssueViewController__submitBankConnectTicketToMaps_withCorrelationId___block_invoke_2;
  v8[3] = &unk_1E8010A10;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __80__PKReportIssueViewController__submitBankConnectTicketToMaps_withCorrelationId___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Submitted merchant issue to maps with error: %@", &v10, 0xCu);
  }

  v4 = *(a1 + 32);
  *(*(a1 + 40) + 1264) = 0;
  [*(a1 + 40) _updateNavigationButtons];
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = @"TRANSACTION_DETAILS_REPORT_PROBLEM_ERROR_TITLE";
  }

  else
  {
    v6 = @"TRANSACTION_DETAILS_REPORT_PROBLEM_SUCCESS_TITLE";
  }

  if (v4)
  {
    v7 = @"TRANSACTION_DETAILS_REPORT_PROBLEM_ERROR_MESSAGE";
  }

  else
  {
    v7 = @"TRANSACTION_DETAILS_REPORT_PROBLEM_SUCCESS_MESSAGE";
  }

  v8 = PKLocalizedPaymentString(&v6->isa);
  v9 = PKLocalizedPaymentString(&v7->isa);
  [v5 _presentAlertWithTitle:v8 message:v9 dismissAfter:1];
}

- (void)_reportIssueToMaps
{
  if (!self->_reportingIssue && self->_hasMapsIssueSelected)
  {
    self->_reportingIssue = 1;
    [(PKReportIssueViewController *)self _updateNavigationButtons];
    selectedMapsIssue = self->_selectedMapsIssue;
    if (selectedMapsIssue > 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = qword_1BE116760[selectedMapsIssue];
    }

    _reportComments = [(PKReportIssueViewController *)self _reportComments];
    v6 = [objc_alloc(MEMORY[0x1E696F448]) initForMerchantIssue:v4 transaction:self->_transaction account:self->_account comments:_reportComments];
    mEMORY[0x1E696F298] = [MEMORY[0x1E696F298] sharedService];
    v8 = [mEMORY[0x1E696F298] feedbackTicketForWalletRAPReport:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PKReportIssueViewController__reportIssueToMaps__block_invoke;
    v10[3] = &unk_1E80213C8;
    v10[4] = self;
    v11 = v6;
    v9 = v6;
    [v8 submitWithHandler:v10 networkActivity:0];
  }
}

void __49__PKReportIssueViewController__reportIssueToMaps__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PKReportIssueViewController__reportIssueToMaps__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49__PKReportIssueViewController__reportIssueToMaps__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Submitted merchant issue to maps with error: %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v4[1264] = 0;
    [*(a1 + 40) _updateNavigationButtons];
    v5 = *(a1 + 40);
    v6 = PKLocalizedPaymentString(&cfstr_TransactionDet_70.isa);
    v7 = PKLocalizedPaymentString(&cfstr_TransactionDet_71.isa);
    [v5 _presentAlertWithTitle:v6 message:v7 dismissAfter:1];
  }

  else
  {
    v8 = [*(a1 + 48) correlationId];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__PKReportIssueViewController__reportIssueToMaps__block_invoke_191;
    v9[3] = &unk_1E8011D28;
    v9[4] = *(a1 + 40);
    [v4 _reprocessTransactionMerchantWithIssueReportIdentifier:v8 completion:v9];
  }
}

void __49__PKReportIssueViewController__reportIssueToMaps__block_invoke_191(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PKReportIssueViewController__reportIssueToMaps__block_invoke_2_192;
  v2[3] = &unk_1E8013F80;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __49__PKReportIssueViewController__reportIssueToMaps__block_invoke_2_192(uint64_t a1)
{
  *(*(a1 + 32) + 1264) = 0;
  [*(a1 + 32) _updateNavigationButtons];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = @"TRANSACTION_DETAILS_REPORT_PROBLEM_SUCCESS_TITLE";
  }

  else
  {
    v4 = @"TRANSACTION_DETAILS_REPORT_PROBLEM_ERROR_TITLE";
  }

  if (v2)
  {
    v5 = @"TRANSACTION_DETAILS_REPORT_PROBLEM_SUCCESS_MESSAGE";
  }

  else
  {
    v5 = @"TRANSACTION_DETAILS_REPORT_PROBLEM_ERROR_MESSAGE";
  }

  v7 = PKLocalizedPaymentString(&v4->isa);
  v6 = PKLocalizedPaymentString(&v5->isa);
  [v3 _presentAlertWithTitle:v7 message:v6 dismissAfter:1];
}

- (id)_reportComments
{
  if ([(PKSectionTableViewController *)self isSectionMapped:5])
  {
    tableView = [(PKReportIssueViewController *)self tableView];
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 5)}];
    v5 = [tableView cellForRowAtIndexPath:v4];

    textView = [v5 textView];
    text = [textView text];

    if (!text || ![text length])
    {

      text = 0;
    }
  }

  else
  {
    text = 0;
  }

  return text;
}

- (void)_presentAlertWithTitle:(id)title message:(id)message dismissAfter:(BOOL)after
{
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:title message:message preferredStyle:1];
  v8 = MEMORY[0x1E69DC648];
  v9 = PKLocalizedPaymentString(&cfstr_TransactionDet_45.isa);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PKReportIssueViewController__presentAlertWithTitle_message_dismissAfter___block_invoke;
  v11[3] = &unk_1E8016148;
  afterCopy = after;
  v11[4] = self;
  v10 = [v8 actionWithTitle:v9 style:0 handler:v11];
  [v7 addAction:v10];

  [(PKReportIssueViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __75__PKReportIssueViewController__presentAlertWithTitle_message_dismissAfter___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) presentingViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

@end