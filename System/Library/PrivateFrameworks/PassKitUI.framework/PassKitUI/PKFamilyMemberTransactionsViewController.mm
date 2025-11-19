@interface PKFamilyMemberTransactionsViewController
- (BOOL)_updateWithTransactionGroups:(id)a3;
- (BOOL)_updateWithTransactions:(id)a3;
- (BOOL)shouldMapSection:(unint64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PKFamilyMemberTransactionsViewController)initWithFamilyMember:(id)a3 familyCollection:(id)a4 transactionSource:(id)a5 account:(id)a6 peerPaymentAccount:(id)a7 peerPaymentWebService:(id)a8 detailViewStyle:(int64_t)a9 paymentServiceDataProvider:(id)a10 mode:(unint64_t)a11;
- (id)_contactKeysToFetch;
- (id)_transactionDetailViewControllerForTransaction:(id)a3;
- (id)_viewControllerForTransactionGroup:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_didSelectRequestStatementAtIndexPath:(id)a3;
- (void)_fetchDataWithCompletion:(id)a3;
- (void)_reloadTransactionGroupsWithCompletion:(id)a3;
- (void)_reloadTransactionsWithCompletion:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)transactionsChanged:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKFamilyMemberTransactionsViewController

- (PKFamilyMemberTransactionsViewController)initWithFamilyMember:(id)a3 familyCollection:(id)a4 transactionSource:(id)a5 account:(id)a6 peerPaymentAccount:(id)a7 peerPaymentWebService:(id)a8 detailViewStyle:(int64_t)a9 paymentServiceDataProvider:(id)a10 mode:(unint64_t)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v45 = a6;
  v44 = a7;
  v43 = a8;
  v42 = a10;
  v46.receiver = self;
  v46.super_class = PKFamilyMemberTransactionsViewController;
  v21 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v46, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 3);
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_familyMember, a3);
    objc_storeStrong(&v22->_familyCollection, a4);
    v22->_detailViewStyle = a9;
    objc_storeStrong(&v22->_peerPaymentAccount, a7);
    objc_storeStrong(&v22->_peerPaymentWebService, a8);
    objc_storeStrong(&v22->_paymentServiceDataProvider, a10);
    v22->_mode = a11;
    objc_storeStrong(&v22->_account, a6);
    v23 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v20];
    transactionSourceCollection = v22->_transactionSourceCollection;
    v22->_transactionSourceCollection = v23;

    v25 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v22->_transactionSourceCollection paymentDataProvider:v22->_paymentServiceDataProvider];
    transactionFetcher = v22->_transactionFetcher;
    v22->_transactionFetcher = v25;

    [(PKDashboardTransactionFetcher *)v22->_transactionFetcher setDelegate:v22];
    v27 = objc_alloc(MEMORY[0x1E69B8740]);
    v28 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v29 = [(PKFamilyMemberTransactionsViewController *)v22 _contactKeysToFetch];
    v30 = [v27 initWithContactStore:v28 keysToFetch:v29];
    contactResolver = v22->_contactResolver;
    v22->_contactResolver = v30;

    v32 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:v22->_contactResolver];
    transactionCellController = v22->_transactionCellController;
    v22->_transactionCellController = v32;

    v34 = [[PKPaymentTransactionDetailsFactory alloc] initWithContactResolver:v22->_contactResolver peerPaymentWebService:v22->_peerPaymentWebService paymentServiceDataProvider:v22->_paymentServiceDataProvider detailViewStyle:v22->_detailViewStyle context:1];
    transactionDetailsFactory = v22->_transactionDetailsFactory;
    v22->_transactionDetailsFactory = v34;

    v36 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterYear = v22->_formatterYear;
    v22->_formatterYear = v36;

    v38 = v22->_formatterYear;
    v39 = objc_alloc(MEMORY[0x1E695DEE8]);
    v40 = [v39 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    [(NSDateFormatter *)v38 setCalendar:v40];

    [(NSDateFormatter *)v22->_formatterYear setLocalizedDateFormatFromTemplate:@"y"];
  }

  return v22;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKFamilyMemberTransactionsViewController;
  [(PKSectionTableViewController *)&v8 viewDidLoad];
  v3 = PKLocalizedPaymentString(&cfstr_TransactionsHe.isa);
  [(PKFamilyMemberTransactionsViewController *)self setTitle:v3];

  v4 = [(PKFamilyMemberTransactionsViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier"];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionStatementTableCellReuseIdentifier"];
  [v4 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v4 pkui_setupForReadableContentGuide];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PKFamilyMemberTransactionsViewController_viewDidLoad__block_invoke;
  v5[3] = &unk_1E8011180;
  objc_copyWeak(&v6, &location);
  [(PKFamilyMemberTransactionsViewController *)self _fetchDataWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__PKFamilyMemberTransactionsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1232] = 1;
    v2 = WeakRetained;
    [WeakRetained updateSectionVisibilityAndReloadIfNecessaryForSections:&unk_1F3CC8678];
    WeakRetained = v2;
  }
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      if (self->_allContentIsLoaded)
      {
        v4 = 1216;
        return [*(&self->super.super.super.super.super.isa + v4) count] != 0;
      }
    }

    else if (!a3 && self->_allContentIsLoaded)
    {
      v4 = 1224;
      return [*(&self->super.super.super.super.super.isa + v4) count] != 0;
    }

    return 0;
  }

  v6 = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
  if ([v6 isOrganizer])
  {
    v5 = self->_mode == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v5 == 3)
  {
    return 0;
  }

  if (v5 == 1)
  {
    if (self->_allContentIsLoaded)
    {
      v6 = 1216;
      goto LABEL_8;
    }

    return 0;
  }

  if (v5)
  {
    return 1;
  }

  if (!self->_allContentIsLoaded)
  {
    return 0;
  }

  v6 = 1224;
LABEL_8:
  v7 = *(&self->super.super.super.super.super.isa + v6);

  return [v7 count];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  if (v8 == 2)
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionStatementTableCellReuseIdentifier" forIndexPath:v7];
    v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_3.isa);
    v17 = [v9 textLabel];
    [v17 setText:v10];
    v23 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v17 setTextColor:v23];

    if (self->_requestingStatement)
    {
      v24 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v24 startAnimating];
      [v9 setAccessoryView:v24];
      v25 = [v9 textLabel];
      v26 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [v25 setTextColor:v26];

      v27 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_4.isa);
      [v25 setText:v27];
    }

    else
    {
      sentStatement = self->_sentStatement;
      [v9 setAccessoryView:0];
      v21 = v9;
      if (!sentStatement)
      {
        v22 = 0;
LABEL_9:
        [v21 setAccessoryType:v22];
        goto LABEL_18;
      }

      [v9 setAccessoryType:3];
      v24 = [v9 textLabel];
      v29 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [v24 setTextColor:v29];

      v25 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_5.isa);
      [v24 setText:v25];
    }

    goto LABEL_18;
  }

  if (v8 == 1)
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionForYearTableCellReuseIdentifier"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKPaymentTransactionForYearTableCellReuseIdentifier"];
    }

    v10 = -[NSArray objectAtIndexedSubscript:](self->_transactionGroups, "objectAtIndexedSubscript:", [v7 row]);
    formatterYear = self->_formatterYear;
    v15 = [v10 startDate];
    v16 = [(NSDateFormatter *)formatterYear stringFromDate:v15];
    v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas.isa, &stru_1F3BD5BF0.isa, v16);

    v18 = [v9 textLabel];
    [v18 setText:v17];

    v19 = [v9 detailTextLabel];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v10, "transactionCount")];
    [v19 setText:v20];

    v21 = v9;
    v22 = 1;
    goto LABEL_9;
  }

  if (v8)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v9 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier" forIndexPath:v7];
  v10 = -[NSArray objectAtIndexedSubscript:](self->_transactions, "objectAtIndexedSubscript:", [v7 row]);
  v11 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider deviceName];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = PKDeviceName();
  }

  v17 = v13;

  transactionSourceCollection = self->_transactionSourceCollection;
  v31 = [v10 transactionSourceIdentifier];
  v32 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:v31];

  [(PKPaymentTransactionCellController *)self->_transactionCellController configureCell:v9 forTransaction:v10 transactionSource:v32 familyMember:self->_familyMember account:self->_account detailStyle:self->_detailViewStyle deviceName:v17 avatarViewDelegate:self];
LABEL_18:

LABEL_19:

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 1)
  {
    v4 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_6.isa);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a4;
  [a3 deselectRowAtIndexPath:v12 animated:1];
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v12 section]);
  if (v6 == 2)
  {
    [(PKFamilyMemberTransactionsViewController *)self _didSelectRequestStatementAtIndexPath:v12];
  }

  else
  {
    if (v6 == 1)
    {
      v8 = -[NSArray objectAtIndexedSubscript:](self->_transactionGroups, "objectAtIndexedSubscript:", [v12 row]);
      v9 = [(PKFamilyMemberTransactionsViewController *)self _viewControllerForTransactionGroup:v8];
    }

    else
    {
      v7 = v12;
      if (v6)
      {
        goto LABEL_9;
      }

      v8 = -[NSArray objectAtIndexedSubscript:](self->_transactions, "objectAtIndexedSubscript:", [v12 row]);
      v9 = [(PKFamilyMemberTransactionsViewController *)self _transactionDetailViewControllerForTransaction:v8];
    }

    v10 = v9;
    v11 = [(PKFamilyMemberTransactionsViewController *)self navigationController];
    [v11 pushViewController:v10 animated:1];
  }

  v7 = v12;
LABEL_9:
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [a4 section]);
  if (v5 != 3)
  {
    if (v5 != 2)
    {
      return 1;
    }

    if (!self->_requestingStatement)
    {
      return !self->_sentStatement;
    }
  }

  return 0;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  if (-[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v10 section]))
  {
    v11 = 0;
  }

  else
  {
    v12 = -[NSArray objectAtIndexedSubscript:](self->_transactions, "objectAtIndexedSubscript:", [v10 row]);
    v13 = [v9 cellForRowAtIndexPath:v10];
    v14 = v13;
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15 && ([v13 transactionView], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "shouldShowTransactionPreviewForTouchAtPoint:inView:", v9, x, y), v16, v17) && (-[PKFamilyMemberTransactionsViewController _transactionDetailViewControllerForTransaction:](self, "_transactionDetailViewControllerForTransaction:", v12), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = MEMORY[0x1E69DC8D8];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __102__PKFamilyMemberTransactionsViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
      v22[3] = &unk_1E8017C60;
      v23 = v18;
      v20 = v18;
      v11 = [v19 configurationWithIdentifier:0 previewProvider:v22 actionProvider:&__block_literal_global_206];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)transactionsChanged:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__PKFamilyMemberTransactionsViewController_transactionsChanged___block_invoke;
  v3[3] = &unk_1E8011D28;
  v3[4] = self;
  [(PKFamilyMemberTransactionsViewController *)self _fetchDataWithCompletion:v3];
}

uint64_t __64__PKFamilyMemberTransactionsViewController_transactionsChanged___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) updateSectionVisibilityAndReloadIfNecessaryForSections:&unk_1F3CC8690];
  }

  return result;
}

- (void)_didSelectRequestStatementAtIndexPath:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  peerPaymentAccount = self->_peerPaymentAccount;
  v5 = [(PKFamilyMember *)self->_familyMember altDSID];
  v6 = [(PKPeerPaymentAccount *)peerPaymentAccount peerPaymentAccountWithAltDSID:v5];

  v7 = [v6 identifier];
  if (v7)
  {
    v8 = PKPrimaryAppleAccountEmail();
    if (!v8)
    {
      v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma.isa);
      v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_6.isa);
      v23 = PKDisplayableErrorCustom();

      v24 = PKAlertForDisplayableErrorWithHandlers(v23, 0, 0, 0);
      [(PKFamilyMemberTransactionsViewController *)self presentViewController:v24 animated:1 completion:0];

      goto LABEL_9;
    }

    v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_7.isa);
    v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_8.isa, &stru_1F3BD5BF0.isa, v8);
    v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v10 preferredStyle:1];
    v12 = MEMORY[0x1E69DC648];
    v13 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_9.isa);
    v14 = [v12 actionWithTitle:v13 style:1 handler:0];

    v15 = MEMORY[0x1E69DC648];
    v16 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_10.isa);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __82__PKFamilyMemberTransactionsViewController__didSelectRequestStatementAtIndexPath___block_invoke;
    v25[3] = &unk_1E8010D38;
    v25[4] = self;
    v26 = v7;
    v8 = v8;
    v27 = v8;
    v17 = [v15 actionWithTitle:v16 style:0 handler:v25];

    [v11 addAction:v14];
    [v11 addAction:v17];
    [v11 setPreferredAction:v17];
    PKAccessibilityIDAlertSet(v11, *MEMORY[0x1E69B9618]);
    [(PKFamilyMemberTransactionsViewController *)self presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Cannot request statement for family member if the account identifier is not defined for accounts %@", buf, 0xCu);
    }

    v19 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma.isa);
    v20 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_0.isa);
    v8 = PKDisplayableErrorCustom();

    v9 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
    [(PKFamilyMemberTransactionsViewController *)self presentViewController:v9 animated:1 completion:0];
  }

LABEL_9:
}

void __82__PKFamilyMemberTransactionsViewController__didSelectRequestStatementAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 1234) = 1;
  [*(a1 + 32) updateSectionVisibilityAndReloadIfNecessaryForSection:2];
  objc_initWeak(&location, *(a1 + 32));
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 1128);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__PKFamilyMemberTransactionsViewController__didSelectRequestStatementAtIndexPath___block_invoke_2;
  v7[3] = &unk_1E8020AD8;
  objc_copyWeak(&v8, &location);
  [v5 peerPaymentRequestStatementForAccountIdentifier:v4 emailAddress:v6 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __82__PKFamilyMemberTransactionsViewController__didSelectRequestStatementAtIndexPath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKFamilyMemberTransactionsViewController__didSelectRequestStatementAtIndexPath___block_invoke_3;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __82__PKFamilyMemberTransactionsViewController__didSelectRequestStatementAtIndexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    WeakRetained[1234] = 0;
    if (*(a1 + 32))
    {
      v3 = *(a1 + 40) == 0;
    }

    else
    {
      v3 = 0;
    }

    v9 = WeakRetained;
    if (v3)
    {
      WeakRetained[1235] = 1;
    }

    else
    {
      v4 = [MEMORY[0x1E69B8F28] displayableErrorForError:?];
      if (!*(a1 + 40))
      {
        v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma.isa);
        v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentEma_0.isa);
        v7 = PKDisplayableErrorCustom();

        v4 = v7;
      }

      v8 = PKAlertForDisplayableErrorWithHandlers(v4, 0, 0, 0);
      [v9 presentViewController:v8 animated:1 completion:0];
    }

    [v9 updateSectionVisibilityAndReloadIfNecessaryForSection:2];
    WeakRetained = v9;
  }
}

- (id)_viewControllerForTransactionGroup:(id)a3
{
  v4 = a3;
  if ([v4 type] == 3)
  {
    v5 = [PKPaymentTransactionsInYearTableViewController alloc];
    v6 = [v4 startDate];
    v7 = [MEMORY[0x1E695DEE8] currentCalendar];
    v8 = [(PKPaymentTransactionsInYearTableViewController *)v5 initWithDateFromYear:v6 calendar:v7 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection detailViewStyle:self->_detailViewStyle paymentServiceDataProvider:self->_paymentServiceDataProvider contactResolver:self->_contactResolver peerPaymentWebService:self->_peerPaymentWebService account:self->_account];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_transactionDetailViewControllerForTransaction:(id)a3
{
  v4 = a3;
  if ([v4 transactionType] == 9)
  {
    transactionFetcher = self->_transactionFetcher;
    v6 = [v4 identifier];
    v7 = [(PKDashboardTransactionFetcher *)transactionFetcher cashbackGroupForTransactionWithIdentifier:v6 cashbackTransactionSourceCollection:0];
  }

  else
  {
    v7 = 0;
  }

  transactionDetailsFactory = self->_transactionDetailsFactory;
  transactionSourceCollection = self->_transactionSourceCollection;
  familyCollection = self->_familyCollection;
  v11 = [(PKFamilyMemberTransactionsViewController *)self navigationController];
  v12 = [(PKPaymentTransactionDetailsFactory *)transactionDetailsFactory viewControllerForTransaction:v4 sourceCollection:transactionSourceCollection familyCollection:familyCollection account:0 accountUserCollection:0 bankConnectInstitution:0 physicalCards:0 group:v7 navigationController:v11];

  return v12;
}

- (void)_fetchDataWithCompletion:(id)a3
{
  v4 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PKFamilyMemberTransactionsViewController__fetchDataWithCompletion___block_invoke;
  v15[3] = &unk_1E8015898;
  v17 = v18;
  v6 = v5;
  v16 = v6;
  [(PKFamilyMemberTransactionsViewController *)self _reloadTransactionsWithCompletion:v15];
  dispatch_group_enter(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__PKFamilyMemberTransactionsViewController__fetchDataWithCompletion___block_invoke_2;
  v12[3] = &unk_1E8015898;
  v14 = v18;
  v7 = v6;
  v13 = v7;
  [(PKFamilyMemberTransactionsViewController *)self _reloadTransactionGroupsWithCompletion:v12];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__PKFamilyMemberTransactionsViewController__fetchDataWithCompletion___block_invoke_3;
  v9[3] = &unk_1E8017240;
  v10 = v4;
  v11 = v18;
  v8 = v4;
  dispatch_group_notify(v7, MEMORY[0x1E69E96A0], v9);

  _Block_object_dispose(v18, 8);
}

void __69__PKFamilyMemberTransactionsViewController__fetchDataWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 24);
  }

  *(v2 + 24) = v3 & 1;
  dispatch_group_leave(*(a1 + 32));
}

void __69__PKFamilyMemberTransactionsViewController__fetchDataWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 24);
  }

  *(v2 + 24) = v3 & 1;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __69__PKFamilyMemberTransactionsViewController__fetchDataWithCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

- (void)_reloadTransactionsWithCompletion:(id)a3
{
  v4 = a3;
  transactionFetcher = self->_transactionFetcher;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__PKFamilyMemberTransactionsViewController__reloadTransactionsWithCompletion___block_invoke;
  v7[3] = &unk_1E8010DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PKDashboardTransactionFetcher *)transactionFetcher reloadTransactionsWithCompletion:v7];
}

void __78__PKFamilyMemberTransactionsViewController__reloadTransactionsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PKFamilyMemberTransactionsViewController__reloadTransactionsWithCompletion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__PKFamilyMemberTransactionsViewController__reloadTransactionsWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateWithTransactions:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_reloadTransactionGroupsWithCompletion:(id)a3
{
  v4 = a3;
  transactionFetcher = self->_transactionFetcher;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__PKFamilyMemberTransactionsViewController__reloadTransactionGroupsWithCompletion___block_invoke;
  v7[3] = &unk_1E8010DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PKDashboardTransactionFetcher *)transactionFetcher transactionCountByPeriod:4 withCompletion:v7];
}

void __83__PKFamilyMemberTransactionsViewController__reloadTransactionGroupsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKFamilyMemberTransactionsViewController__reloadTransactionGroupsWithCompletion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __83__PKFamilyMemberTransactionsViewController__reloadTransactionGroupsWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateWithTransactionGroups:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)_updateWithTransactions:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transactions)
  {
    v6 = [v4 isEqualToArray:?] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v7 = [v5 copy];
  transactions = self->_transactions;
  self->_transactions = v7;

  return v6;
}

- (BOOL)_updateWithTransactionGroups:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transactionGroups)
  {
    v6 = [v4 isEqualToArray:?] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v7 = [v5 copy];
  transactionGroups = self->_transactionGroups;
  self->_transactionGroups = v7;

  return v6;
}

- (id)_contactKeysToFetch
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v11[0] = v2;
  v3 = _MergedGlobals_7_3();
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [v4 _supportsForceTouch]);
  v11[1] = v5;
  v6 = [off_1EE9A1E40() descriptorForRequiredKeys];
  v11[2] = v6;
  v7 = [off_1EE9A1E48() descriptorForRequiredKeys];
  v8 = *MEMORY[0x1E695C208];
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = *MEMORY[0x1E695C330];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

@end