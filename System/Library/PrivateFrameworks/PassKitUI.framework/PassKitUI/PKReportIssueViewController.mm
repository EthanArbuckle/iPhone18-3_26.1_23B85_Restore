@interface PKReportIssueViewController
+ (BOOL)canReportIssueForTransaction:(id)a3 bankConnectInstitution:(id)a4 paymentPass:(id)a5;
+ (BOOL)canSelectIssueTypeForTransaction:(id)a3;
- (BOOL)_issueTypeEnabled:(int64_t)a3;
- (BOOL)shouldMapSection:(unint64_t)a3;
- (PKReportIssueViewController)initWithTransaction:(id)a3 transactionSourceCollection:(id)a4 paymentPass:(id)a5 familyCollection:(id)a6 account:(id)a7 accountUserCollection:(id)a8 bankConnectInstitution:(id)a9 physicalCards:(id)a10 detailViewStyle:(int64_t)a11 context:(unint64_t)a12;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_commentsCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_createPrivacyFooterViewForContext:(unint64_t)a3;
- (id)_disputeTypeCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_formattedStatementNameFromRawName:(id)a3;
- (id)_issueTypeCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_mapsIssueCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_reportComments;
- (id)_statementName;
- (id)_statementNameCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)_transactionCellForTableView:(id)a3 atIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)_issueTypeForRowIndex:(int64_t)a3;
- (int64_t)_rowIndexForIssueType:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_numberOfIssueTypesEnabled;
- (void)_cancelButtonTapped:(id)a3;
- (void)_cancelPayment;
- (void)_handleDisputeTypeSelectedInTableView:(id)a3 atIndexPath:(id)a4;
- (void)_handleIssueTypeSelectedInTableView:(id)a3 atIndexPath:(id)a4;
- (void)_handleMapsIssueTypeSelectedInTableView:(id)a3 atIndexPath:(id)a4;
- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 dismissAfter:(BOOL)a5;
- (void)_reportBankConnectIssueToMaps;
- (void)_reportIssueInBusinessChat;
- (void)_reportIssueToMaps;
- (void)_reprocessTransactionMerchantWithIssueReportIdentifier:(id)a3 completion:(id)a4;
- (void)_resetMapsMerchantAndBrandWithIssueReportIdentifier:(id)a3 completion:(id)a4;
- (void)_submitBankConnectTicketToMaps:(id)a3 withCorrelationId:(id)a4;
- (void)_submitButtonTapped:(id)a3;
- (void)_updateNavigationButtons;
- (void)dealloc;
- (void)didUpdateFamilyMembers:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKReportIssueViewController

+ (BOOL)canReportIssueForTransaction:(id)a3 bankConnectInstitution:(id)a4 paymentPass:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 problemReportingEnabled];
  v10 = [v7 bankConnectMetadata];
  v11 = [v10 classifiedByMaps];

  if ([v7 isBankConnectTransaction] && (v9 & v11) == 0 || objc_msgSend(v8, "associatedAccountFeatureIdentifier") == 4)
  {
    v12 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v12 = PKPaymentTransactionSupportsIssueType(v14, v7, v8);
      if (v12)
      {
        break;
      }
    }

    while (v14++ != 5);
  }

  return v12;
}

+ (BOOL)canSelectIssueTypeForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 transactionType];
  v5 = 1;
  if (v4 <= 0x16)
  {
    if (((1 << v4) & 0x7FFBFC) != 0)
    {
      goto LABEL_3;
    }

    if (v4 != 10)
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
      v7 = [v3 payments];
      v8 = [v7 firstObject];

      if ([v8 isCurrentlyCancellable])
      {
        v5 = [v3 transactionStatus] != 5;
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

- (PKReportIssueViewController)initWithTransaction:(id)a3 transactionSourceCollection:(id)a4 paymentPass:(id)a5 familyCollection:(id)a6 account:(id)a7 accountUserCollection:(id)a8 bankConnectInstitution:(id)a9 physicalCards:(id)a10 detailViewStyle:(int64_t)a11 context:(unint64_t)a12
{
  v19 = a3;
  v44 = a4;
  v43 = a5;
  v42 = a6;
  v41 = a7;
  v40 = a8;
  v39 = a9;
  v20 = a10;
  v45.receiver = self;
  v45.super_class = PKReportIssueViewController;
  v21 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v45, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 6);
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_transaction, a3);
    objc_storeStrong(&v22->_transactionSourceCollection, a4);
    objc_storeStrong(&v22->_paymentPass, a5);
    objc_storeStrong(&v22->_account, a7);
    objc_storeStrong(&v22->_accountUserCollection, a8);
    objc_storeStrong(&v22->_bankConnectInstitution, a9);
    v23 = objc_alloc_init(MEMORY[0x1E6967E18]);
    bankConnectPIIStringProcessor = v22->_bankConnectPIIStringProcessor;
    v22->_bankConnectPIIStringProcessor = v23;

    v25 = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v22->_paymentService;
    v22->_paymentService = v25;

    [(PKPaymentService *)v22->_paymentService registerObserver:v22];
    v27 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:0];
    transactionCellController = v22->_transactionCellController;
    v22->_transactionCellController = v27;

    objc_storeStrong(&v22->_familyCollection, a6);
    v29 = [v20 copy];
    physicalCards = v22->_physicalCards;
    v22->_physicalCards = v29;

    v22->_context = a12;
    v31 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v22 action:sel__cancelButtonTapped_];
    cancelButton = v22->_cancelButton;
    v22->_cancelButton = v31;

    v33 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v22 action:sel__submitButtonTapped_];
    submitButton = v22->_submitButton;
    v22->_submitButton = v33;

    v35 = [(PKReportIssueViewController *)v22 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [v35 pkui_setupScrollEdgeChromelessAppearance];
      [v35 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    if (a12 != 1)
    {
      [v35 setLeftBarButtonItem:v22->_cancelButton];
    }

    [v35 setRightBarButtonItem:{v22->_submitButton, a6}];
    v36 = PKLocalizedPaymentString(&cfstr_TransactionDet_44.isa);
    [v35 setTitle:v36];

    v22->_canPerformUnrecognizedTransaction = PKPaymentTransactionSupportsIssueType(1, v19, v22->_paymentPass);
    v22->_canPerformDispute = PKPaymentTransactionSupportsIssueType(0, v19, v22->_paymentPass);
    v22->_canPerformOther = PKPaymentTransactionSupportsIssueType(5, v19, v22->_paymentPass);
    v22->_canPerformIncorrectMerchant = PKPaymentTransactionSupportsIssueType(2, v19, v22->_paymentPass);
    v22->_canPerformCancelAccountServicePayment = PKPaymentTransactionSupportsIssueType(3, v19, v22->_paymentPass);
    if (a12 == 1)
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
  v3 = [(PKReportIssueViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKReportIssueCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKTransactionCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKTransactionCommentsCellReuseIdentifier"];
  if (self->_context != 1 && [(PKAccount *)self->_account feature]== 2 && ![PKReportIssueViewController canSelectIssueTypeForTransaction:self->_transaction])
  {
    self->_selectedIssue = 5;
    self->_hasIssueSelected = 1;
    [(PKReportIssueViewController *)self _reportIssueInBusinessChat];
  }

  v4 = [(PKReportIssueViewController *)self view];
  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9B68]];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKReportIssueViewController;
  [(PKReportIssueViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKReportIssueViewController *)self tableView];
    v4 = [(PKReportIssueViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKReportIssueViewController *)self view];
  [v3 setNeedsLayout];
}

- (id)_createPrivacyFooterViewForContext:(unint64_t)a3
{
  v4 = [MEMORY[0x1E69B7D48] pk_privacyFlowForContext:a3];
  if (v4)
  {
    v5 = PKLocalizedBankConnectString(&cfstr_BankConnectRap.isa);
    v6 = [v4 localizedButtonTitle];
    v7 = v6;
    if (v5)
    {
      v8 = PKLocalizedBankConnectString(&cfstr_BankConnectRap_0.isa, &stru_1F3BD6370.isa, v5, v6);
    }

    else
    {
      v8 = v6;
    }

    v10 = v8;
    v11 = MEMORY[0x1E695DFF8];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v4 identifier];
    v14 = [v12 stringWithFormat:@"onboarding:%@", v13];
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
  v2 = [(PKPaymentTransaction *)self->_transaction merchant];
  v3 = [v2 rawName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 name];
  }

  v6 = v5;

  return v6;
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  v4 = 0;
  context = self->_context;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
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

      v7 = [(PKPaymentTransaction *)self->_transaction merchant];
      v8 = [(PKReportIssueViewController *)self _statementName];
      if (!v8)
      {
        v4 = 0;
LABEL_33:

        return v4;
      }

      v9 = [v7 displayName];
      v10 = v8;
      v11 = v9;
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

  if (a3 - 4 >= 2)
  {
    if (a3 != 3)
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  v9 = 0;
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:
        v10 = [(PKReportIssueViewController *)self _disputeTypeCellForTableView:v6 atIndexPath:v7];
        break;
      case 4:
        v10 = [(PKReportIssueViewController *)self _mapsIssueCellForTableView:v6 atIndexPath:v7];
        break;
      case 5:
        v10 = [(PKReportIssueViewController *)self _commentsCellForTableView:v6 atIndexPath:v7];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (v8)
  {
    if (v8 == 1)
    {
      v10 = [(PKReportIssueViewController *)self _statementNameCellForTableView:v6 atIndexPath:v7];
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_15;
      }

      v10 = [(PKReportIssueViewController *)self _issueTypeCellForTableView:v6 atIndexPath:v7];
    }
  }

  else
  {
    v10 = [(PKReportIssueViewController *)self _transactionCellForTableView:v6 atIndexPath:v7];
  }

  v9 = v10;
LABEL_15:

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(PKSectionTableViewController *)self sectionForIndex:a4]- 1;
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v6 section]);
  switch(v7)
  {
    case 4uLL:
      [(PKReportIssueViewController *)self _handleMapsIssueTypeSelectedInTableView:v8 atIndexPath:v6];
      break;
    case 3uLL:
      [(PKReportIssueViewController *)self _handleDisputeTypeSelectedInTableView:v8 atIndexPath:v6];
      break;
    case 2uLL:
      [(PKReportIssueViewController *)self _handleIssueTypeSelectedInTableView:v8 atIndexPath:v6];
      break;
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [a4 section]);
  result = *MEMORY[0x1E69DE3D0];
  if (v4 == 5)
  {
    return 200.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 5 && [(PKPaymentTransaction *)self->_transaction isBankConnectTransaction])
  {
    v5 = [(PKReportIssueViewController *)self _createPrivacyFooterViewForContext:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didUpdateFamilyMembers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__PKReportIssueViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)_handleIssueTypeSelectedInTableView:(id)a3 atIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = -[PKReportIssueViewController _issueTypeForRowIndex:](self, "_issueTypeForRowIndex:", [v6 row]);
  v8 = v7;
  if (self->_hasIssueSelected)
  {
    if (v7 == self->_selectedIssue)
    {
      goto LABEL_5;
    }

    v9 = [MEMORY[0x1E696AC88] indexPathForRow:-[PKReportIssueViewController _rowIndexForIssueType:](self inSection:{"_rowIndexForIssueType:"), -[PKSectionTableViewController indexForSection:](self, "indexForSection:", 2)}];
    v10 = [v13 cellForRowAtIndexPath:v9];

    [v10 setAccessoryType:0];
  }

  v11 = [MEMORY[0x1E696AC88] indexPathForRow:-[PKReportIssueViewController _rowIndexForIssueType:](self inSection:{"_rowIndexForIssueType:", v8), -[PKSectionTableViewController indexForSection:](self, "indexForSection:", 2)}];
  v12 = [v13 cellForRowAtIndexPath:v11];

  [v12 setAccessoryType:3];
  self->_hasIssueSelected = 1;
  self->_selectedIssue = v8;
  self->_hasMapsIssueSelected = 0;
  self->_hasDisputeTypeSelected = 0;
  [(PKReportIssueViewController *)self _updateNavigationButtons];
  [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForSections:&unk_1F3CC86A8];

LABEL_5:
  [v13 deselectRowAtIndexPath:v6 animated:1];
}

- (void)_handleDisputeTypeSelectedInTableView:(id)a3 atIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = v7;
  if (self->_hasDisputeTypeSelected)
  {
    selectedDisputeType = self->_selectedDisputeType;
    if (v7 == selectedDisputeType)
    {
      goto LABEL_5;
    }

    v10 = [MEMORY[0x1E696AC88] indexPathForRow:selectedDisputeType inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 3)}];
    v11 = [v14 cellForRowAtIndexPath:v10];

    [v11 setAccessoryType:0];
  }

  v12 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 3)}];
  v13 = [v14 cellForRowAtIndexPath:v12];

  [v13 setAccessoryType:3];
  self->_hasDisputeTypeSelected = 1;
  self->_selectedDisputeType = v8;
  [(PKReportIssueViewController *)self _updateNavigationButtons];

LABEL_5:
  [v14 deselectRowAtIndexPath:v6 animated:1];
}

- (void)_handleMapsIssueTypeSelectedInTableView:(id)a3 atIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = v7;
  if (self->_hasMapsIssueSelected)
  {
    selectedMapsIssue = self->_selectedMapsIssue;
    if (v7 == selectedMapsIssue)
    {
      goto LABEL_5;
    }

    v10 = [MEMORY[0x1E696AC88] indexPathForRow:selectedMapsIssue inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 4)}];
    v11 = [v14 cellForRowAtIndexPath:v10];

    [v11 setAccessoryType:0];
  }

  v12 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 4)}];
  v13 = [v14 cellForRowAtIndexPath:v12];

  [v13 setAccessoryType:3];
  self->_hasMapsIssueSelected = 1;
  self->_selectedMapsIssue = v8;
  [(PKReportIssueViewController *)self _updateNavigationButtons];

LABEL_5:
  [v14 deselectRowAtIndexPath:v6 animated:1];
}

- (id)_transactionCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"PKTransactionCellReuseIdentifier" forIndexPath:a4];
  transactionSourceCollection = self->_transactionSourceCollection;
  v7 = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v8 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:v7];

  v9 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForTransactionSource:v8];
  [(PKPaymentTransactionCellController *)self->_transactionCellController configureCell:v5 forTransaction:self->_transaction transactionSource:v8 familyMember:v9 account:self->_account detailStyle:0 deviceName:0 avatarViewDelegate:0];
  v10 = [v5 transactionView];
  [v10 setShowsDisclosureView:0];

  return v5;
}

- (id)_statementNameCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"PKReportIssueCellReuseIdentifier" forIndexPath:a4];
  if (!self->_statementName)
  {
    v6 = [(PKReportIssueViewController *)self _statementName];
    v7 = [(PKReportIssueViewController *)self _formattedStatementNameFromRawName:v6];
    v8 = [v7 uppercaseString];
    statementName = self->_statementName;
    self->_statementName = v8;
  }

  v10 = [v5 textLabel];
  [v10 setText:self->_statementName];

  [v5 setAccessoryType:0];
  PKAccessibilityIDCellSet(v5, *MEMORY[0x1E69B9CB0]);

  return v5;
}

- (id)_issueTypeCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKReportIssueCellReuseIdentifier" forIndexPath:v6];
  v8 = [v6 row];

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

  v14 = [v7 textLabel];
  [v14 setText:v12];

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

- (id)_disputeTypeCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKReportIssueCellReuseIdentifier" forIndexPath:v6];
  v8 = [v6 row];

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

  v12 = [v7 textLabel];
  [v12 setText:v10];

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

- (id)_mapsIssueCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PKReportIssueCellReuseIdentifier" forIndexPath:v6];
  v8 = [v6 row];

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

  v12 = [v7 textLabel];
  [v12 setText:v10];

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

- (id)_commentsCellForTableView:(id)a3 atIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:@"PKTransactionCommentsCellReuseIdentifier" forIndexPath:a4];
  v6 = [v5 textView];
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = PKLocalizedPaymentString(&cfstr_TransactionDet_67.isa);
  v9 = [v7 initWithString:v8];

  [v6 setAttributedPlaceholder:v9];
  [v6 setDelegate:self];
  [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9600]];

  return v5;
}

- (id)_formattedStatementNameFromRawName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v3];
  v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  [v5 setCharactersToBeSkipped:v6];
  v15 = 0;
  v7 = [v5 scanUpToCharactersFromSet:v6 intoString:&v15];
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
      v11 = [v5 scanUpToCharactersFromSet:v6 intoString:&v15];
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

- (int64_t)_issueTypeForRowIndex:(int64_t)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKReportIssueViewController *)self _issueTypeEnabled:v5])
    {
      if (v6 == a3)
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

- (int64_t)_rowIndexForIssueType:(int64_t)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    if ([(PKReportIssueViewController *)self _issueTypeEnabled:v5])
    {
      if (a3 == v5)
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

- (BOOL)_issueTypeEnabled:(int64_t)a3
{
  if (a3 > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&self->super.super.super.super.super.isa + *off_1E80214E0[a3]);
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
          v7 = [(PKReportIssueViewController *)self tableView];
          v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 5)}];
          v9 = [v7 cellForRowAtIndexPath:v8];

          v10 = [v9 textView];
          v11 = [v10 text];
          v12 = [v11 length] != 0;
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
    v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v13 startAnimating];
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v13];
    v5 = [(PKReportIssueViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v4];
  }

  else
  {
    v13 = [(PKReportIssueViewController *)self navigationItem];
    [v13 setRightBarButtonItem:self->_submitButton];
  }
}

- (void)_cancelButtonTapped:(id)a3
{
  v3 = [(PKReportIssueViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_submitButtonTapped:(id)a3
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
        v6 = [(PKReportIssueViewController *)self navigationItem];
        v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_activityIndicator];
        [v6 setRightBarButtonItem:v7];

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
  v3 = [(PKPaymentTransaction *)self->_transaction payments];
  v4 = [v3 firstObject];

  v5 = objc_alloc_init(MEMORY[0x1E69B8480]);
  v6 = [(PKAccount *)self->_account accountIdentifier];
  [v5 setAccountIdentifier:v6];

  v7 = [(PKAccount *)self->_account accountBaseURL];
  [v5 setBaseURL:v7];

  v8 = [v4 referenceIdentifier];
  [v5 setPaymentReferenceIdentifier:v8];

  objc_initWeak(&location, self);
  paymentWebService = self->_paymentWebService;
  if (!paymentWebService)
  {
    v10 = [MEMORY[0x1E69B8EF8] sharedService];
    v11 = self->_paymentWebService;
    self->_paymentWebService = v10;

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
    v8 = [v6 altDSID];
    v9 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:v8];

    v10 = [PKBusinessChatTransactionDisputeContext alloc];
    v11 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    v12 = [(PKBusinessChatTransactionDisputeContext *)v10 initWithPaymentPass:v11 transaction:self->_transaction account:self->_account accountUser:v6 familyMember:v9 physicalCards:self->_physicalCards intent:v4];

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

- (void)_resetMapsMerchantAndBrandWithIssueReportIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  paymentService = self->_paymentService;
  transaction = self->_transaction;
  v9 = a3;
  v10 = [(PKPaymentTransaction *)transaction identifier];
  v11 = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PKReportIssueViewController__resetMapsMerchantAndBrandWithIssueReportIdentifier_completion___block_invoke;
  v13[3] = &unk_1E8021350;
  v14 = v6;
  v12 = v6;
  [(PKPaymentService *)paymentService removeMapsDataForTransactionWithIdentifier:v10 forTransactionSourceIdentifier:v11 issueReportIdentifier:v9 completion:v13];
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

- (void)_reprocessTransactionMerchantWithIssueReportIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentTransaction *)self->_transaction transactionSourceIdentifier];
  v9 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceForTransactionSourceIdentifier:v8];
  v10 = [v9 paymentPass];

  v11 = objc_alloc(MEMORY[0x1E69B92D8]);
  transaction = self->_transaction;
  v13 = [v10 devicePrimaryPaymentApplication];
  v14 = [v11 initWithTransaction:transaction paymentApplication:v13];

  v15 = [objc_alloc(MEMORY[0x1E69B89B0]) initWithSource:v14];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__PKReportIssueViewController__reprocessTransactionMerchantWithIssueReportIdentifier_completion___block_invoke;
  v19[3] = &unk_1E8021378;
  v19[4] = self;
  v20 = v6;
  v21 = v8;
  v22 = v7;
  v16 = v7;
  v17 = v8;
  v18 = v6;
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
  v6 = [(PKReportIssueViewController *)self _reportComments];
  bankConnectPIIStringProcessor = self->_bankConnectPIIStringProcessor;
  paymentPass = self->_paymentPass;
  v9 = transaction;
  v10 = bankConnectInstitution;
  v120 = v6;
  v11 = bankConnectPIIStringProcessor;
  v12 = paymentPass;
  v13 = [(PKPaymentTransaction *)v9 merchant];
  v14 = [v13 mapsMerchant];
  v123 = [v13 mapsBrand];
  v15 = [v14 postalAddress];
  if (v15)
  {
    v16 = MEMORY[0x1E695CF68];
    v17 = [v14 postalAddress];
    v18 = [v16 stringFromPostalAddress:v17 style:0];
  }

  else
  {
    v18 = 0;
  }

  v19 = [(PKPaymentTransaction *)v9 location];
  [v19 coordinate];
  v21 = v20;
  v23 = v22;

  v112 = objc_alloc(off_1EE9A1E60());
  v111 = [v13 industryCode];
  if ([v14 identifier])
  {
    v24 = v14;
  }

  else
  {
    v24 = v123;
  }

  v109 = [v24 identifier];
  v115 = [v13 name];
  v114 = [v13 rawName];
  v113 = [v13 industryCategory];
  v119 = v13;
  v110 = [v13 originURL];
  v108 = [v110 absoluteString];
  v25 = &stru_1F3BD7330;
  v117 = v18;
  if (v18)
  {
    v25 = v18;
  }

  v105 = v25;
  v107 = [(PKPaymentTransaction *)v9 transactionDate];
  [v107 timeIntervalSince1970];
  v27 = v26;
  [(PKPaymentTransaction *)v9 transactionType];
  v106 = PKPaymentTransactionTypeToString();
  v28 = v9;
  v29 = v11;
  v30 = v12;
  v116 = v10;
  v31 = [(PKPaymentTransaction *)v28 bankConnectMetadata];
  v32 = objc_alloc(MEMORY[0x1E695DFD8]);
  v33 = [(PKPaymentPass *)v30 issuerCountryCode];
  v34 = [v32 initWithObjects:{v33, 0}];

  v35 = [(PKPaymentTransaction *)v28 merchantProvidedDescription];
  v100 = [(FKPIIStringProcessor *)v29 redactFromString:v35 forCountryCodes:v34];

  v36 = [v31 originalTransactionDescription];
  v101 = v34;
  v37 = [(FKPIIStringProcessor *)v29 redactFromString:v36 forCountryCodes:v34];

  v38 = objc_alloc_init(off_1EE9A1E68());
  v39 = [(PKPaymentTransaction *)v28 transactionType];
  v40 = 0;
  if (v39 <= 0x16)
  {
    v40 = qword_1BE116648[v39];
  }

  [v38 setTransactionType:v40];
  [v38 setBankTransactionDescription:v37];
  v41 = [(PKPaymentTransaction *)v28 transactionDate];
  [v41 timeIntervalSinceReferenceDate];
  [v38 setTransactionTimestamp:?];

  v42 = [v31 bankMerchantCategoryCode];
  v43 = [v42 integerValue];
  v104 = v31;
  if (v43)
  {
    [v38 setIndustryCode:v43];
  }

  else
  {
    v44 = [(PKPaymentTransaction *)v28 merchant];
    [v38 setIndustryCode:{objc_msgSend(v44, "industryCode")}];
  }

  [v38 setEnableBrandMuidFallback:1];
  v45 = [(PKPaymentTransaction *)v28 currencyCode];
  [v38 setTransactionCurrencyCode:v45];

  v46 = [(PKPaymentTransaction *)v28 transactionStatus];
  v118 = v14;
  v99 = v37;
  v121 = self;
  if (v46 > 3)
  {
    v47 = 0;
  }

  else
  {
    v47 = qword_1BE116700[v46];
  }

  [v38 setTransactionStatus:v47];
  v48 = v28;
  v49 = off_1EE9A1E70;
  v50 = v29;
  v51 = v30;
  v52 = objc_alloc_init(v49());
  v53 = [(PKPaymentTransaction *)v48 bankConnectMetadata];
  v102 = v48;
  v54 = [(PKPaymentTransaction *)v48 merchant];
  v55 = [v53 bankMerchantAddress];
  v56 = [v53 bankMerchantName];
  v57 = objc_alloc(MEMORY[0x1E695DFD8]);
  v58 = [(PKPaymentPass *)v51 issuerCountryCode];
  v122 = v51;

  v59 = [v57 initWithObjects:{v58, 0}];
  v60 = [(FKPIIStringProcessor *)v50 redactFromString:v56 forCountryCodes:v59];
  v103 = v50;

  v98 = v53;
  v61 = [v53 bankMerchantNumber];
  [v52 setMerchantId:v61];

  [v52 setMerchantDoingBusinessAsName:v60];
  [v52 setMerchantEnhancedName:v60];
  v62 = [v55 city];
  if (v62)
  {
    [v52 setMerchantCity:v62];
  }

  else
  {
    v63 = [v54 city];
    [v52 setMerchantCity:v63];
  }

  v64 = v54;

  v65 = [v54 rawCity];
  [v52 setMerchantRawCity:v65];

  v66 = v55;
  v67 = [v55 state];
  v68 = v121;
  if (v67)
  {
    [v52 setMerchantState:v67];
  }

  else
  {
    v69 = [v64 state];
    [v52 setMerchantState:v69];
  }

  v70 = [v64 rawState];
  [v52 setMerchantRawState:v70];

  v71 = [v66 postalCode];
  if (v71)
  {
    [v52 setMerchantZip:v71];
  }

  else
  {
    v72 = [v64 zip];
    [v52 setMerchantZip:v72];
  }

  v73 = [v66 street];
  [v52 setMerchantAddress:v73];

  v74 = [v66 street];
  [v52 setMerchantRawAddress:v74];

  [v52 setMerchantCleanConfidenceLevel:{objc_msgSend(v64, "cleanConfidenceLevel")}];
  v75 = [v64 rawCANL];
  [v52 setMerchantCanl:v75];

  v76 = [(PKPaymentTransaction *)v102 clearingNetworkData];

  if (v76)
  {
    v77 = MEMORY[0x1E696ACB0];
    v78 = [(PKPaymentTransaction *)v102 clearingNetworkData];
LABEL_36:
    v80 = v78;
    v81 = [v78 dataUsingEncoding:4];
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

            v68 = v121;
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

  v79 = [(PKPaymentTransaction *)v102 authNetworkData];

  if (v79)
  {
    v77 = MEMORY[0x1E696ACB0];
    v78 = [(PKPaymentTransaction *)v102 authNetworkData];
    goto LABEL_36;
  }

  v82 = 0;
LABEL_43:

  [v38 setMerchantInformation:v52];
  [v38 setBankTransactionDescriptionClean:v100];
  v88 = [(FKInstitution *)v116 institutionIdentifier];

  [v38 setBankIdentifier:v88];
  v125 = [v112 initForMerchantIssue:v124 merchantIndustryCode:v111 mapsIdentifier:v109 merchantName:v115 merchantRawName:v114 merchantIndustryCategory:v113 merchantURL:v27 merchantFormattedAddress:v21 transactionTime:v23 transactionType:v108 transactionLocation:v105 bankTransactionInformation:{v106, v38}];

  if (v125)
  {
    v89 = [(PKPaymentTransaction *)v102 issueReportIdentifier];
    if (![v89 length])
    {
      v90 = [MEMORY[0x1E696AFB0] UUID];
      v91 = [v90 UUIDString];

      v89 = v91;
    }

    [v125 setIsAppleCard:0];
    v92 = [(PKPaymentTransaction *)v102 transactionSource];
    [(PKPaymentTransaction *)v102 transactionType];
    if ((v92 - 1) > 7)
    {
      v93 = 0;
    }

    else
    {
      v93 = qword_1BE116720[v92 - 1];
    }

    [v125 setLookupTransactionType:v93];
    if ([(PKPaymentTransaction *)v102 hasEffectiveTransactionSource])
    {
      v94 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v119, "adamIdentifier")}];
      v95 = [v94 stringValue];
      [v125 setMerchantAdamId:v95];
    }

    [v125 setCorrelationId:v89];
    [v125 setReportersComment:v120];
  }

  v96 = _MergedGlobals_19_0(v125, 1);
  v97 = [v125 correlationId];
  [(PKReportIssueViewController *)v68 _submitBankConnectTicketToMaps:v96 withCorrelationId:v97];
}

- (void)_submitBankConnectTicketToMaps:(id)a3 withCorrelationId:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PKReportIssueViewController__submitBankConnectTicketToMaps_withCorrelationId___block_invoke;
  v4[3] = &unk_1E80213A0;
  v4[4] = self;
  [a3 submitWithHandler:v4 networkActivity:0];
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

    v5 = [(PKReportIssueViewController *)self _reportComments];
    v6 = [objc_alloc(MEMORY[0x1E696F448]) initForMerchantIssue:v4 transaction:self->_transaction account:self->_account comments:v5];
    v7 = [MEMORY[0x1E696F298] sharedService];
    v8 = [v7 feedbackTicketForWalletRAPReport:v6];
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
    v3 = [(PKReportIssueViewController *)self tableView];
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 5)}];
    v5 = [v3 cellForRowAtIndexPath:v4];

    v6 = [v5 textView];
    v7 = [v6 text];

    if (!v7 || ![v7 length])
    {

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_presentAlertWithTitle:(id)a3 message:(id)a4 dismissAfter:(BOOL)a5
{
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v8 = MEMORY[0x1E69DC648];
  v9 = PKLocalizedPaymentString(&cfstr_TransactionDet_45.isa);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PKReportIssueViewController__presentAlertWithTitle_message_dismissAfter___block_invoke;
  v11[3] = &unk_1E8016148;
  v12 = a5;
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