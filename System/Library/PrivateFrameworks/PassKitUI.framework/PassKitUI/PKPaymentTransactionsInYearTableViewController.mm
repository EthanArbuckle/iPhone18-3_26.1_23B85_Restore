@interface PKPaymentTransactionsInYearTableViewController
+ (id)titleForYear:(id)a3;
- (PKPaymentTransactionsInYearTableViewController)initWithDateFromYear:(id)a3 calendar:(id)a4 transactionSourceCollection:(id)a5 familyCollection:(id)a6 detailViewStyle:(int64_t)a7 paymentServiceDataProvider:(id)a8 contactResolver:(id)a9 peerPaymentWebService:(id)a10 account:(id)a11;
- (id)_transactionDetailViewControllerForTransaction:(id)a3;
- (id)_transactionMonthFormatter;
- (id)_withdrawalFeeMonthYearFormatter;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_fetchDataAndRevealContent;
- (void)_fetchDataWithCompletion:(id)a3;
- (void)_loadBankConnectAccountWithCompletion:(id)a3;
- (void)_updateWithTransactions:(id)a3 completion:(id)a4;
- (void)bankConnectConsentStatusDidChange:(unint64_t)a3;
- (void)didUpdateTransactions:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)transactionsChanged:(id)a3;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentTransactionsInYearTableViewController

- (PKPaymentTransactionsInYearTableViewController)initWithDateFromYear:(id)a3 calendar:(id)a4 transactionSourceCollection:(id)a5 familyCollection:(id)a6 detailViewStyle:(int64_t)a7 paymentServiceDataProvider:(id)a8 contactResolver:(id)a9 peerPaymentWebService:(id)a10 account:(id)a11
{
  v17 = a3;
  v35 = a4;
  v34 = a5;
  v30 = a6;
  v33 = a6;
  v32 = a8;
  v18 = a9;
  v31 = a10;
  v19 = a11;
  v36.receiver = self;
  v36.super_class = PKPaymentTransactionsInYearTableViewController;
  v20 = -[PKPaymentTransactionsInYearTableViewController initWithStyle:](&v36, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior]);
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_dateFromYear, a3);
    objc_storeStrong(&v21->_calendar, a4);
    objc_storeStrong(&v21->_transactionSourceCollection, a5);
    objc_storeStrong(&v21->_paymentServiceDataProvider, a8);
    objc_storeStrong(&v21->_contactResolver, a9);
    objc_storeStrong(&v21->_peerPaymentWebService, a10);
    v21->_detailViewStyle = a7;
    objc_storeStrong(&v21->_familyCollection, v30);
    v22 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:v18];
    transactionCellController = v21->_transactionCellController;
    v21->_transactionCellController = v22;

    v24 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v21->_transactionSourceCollection paymentDataProvider:v21->_paymentServiceDataProvider];
    transactionFetcher = v21->_transactionFetcher;
    v21->_transactionFetcher = v24;

    [(PKDashboardTransactionFetcher *)v21->_transactionFetcher setDelegate:v21];
    v26 = [[PKPaymentTransactionDetailsFactory alloc] initWithContactResolver:v21->_contactResolver peerPaymentWebService:v21->_peerPaymentWebService paymentServiceDataProvider:v21->_paymentServiceDataProvider detailViewStyle:v21->_detailViewStyle context:0];
    transactionDetailsFactory = v21->_transactionDetailsFactory;
    v21->_transactionDetailsFactory = v26;

    objc_storeStrong(&v21->_account, a11);
  }

  return v21;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionsInYearTableViewController;
  [(PKPaymentTransactionsInYearTableViewController *)&v9 viewDidLoad];
  v3 = [objc_opt_class() titleForYear:self->_dateFromYear];
  v4 = [(PKPaymentTransactionsInYearTableViewController *)self navigationItem];
  [v4 setTitle:v3];

  v5 = [(PKPaymentTransactionsInYearTableViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier"];
  [v5 setRowHeight:*MEMORY[0x1E69DE3D0]];
  if (_UISolariumFeatureFlagEnabled())
  {
    [v5 setSeparatorInset:{0.0, 67.0, 0.0, 16.0}];
  }

  [v5 pkui_setupForReadableContentGuide];
  [(PKPaymentTransactionsInYearTableViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  if (self->_detailViewStyle == 2 || !PKBankConnectEnabled())
  {
    [(PKPaymentTransactionsInYearTableViewController *)self _fetchDataAndRevealContent];
  }

  else
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__PKPaymentTransactionsInYearTableViewController_viewDidLoad__block_invoke;
    v6[3] = &unk_1E8011180;
    objc_copyWeak(&v7, &location);
    [(PKPaymentTransactionsInYearTableViewController *)self _loadBankConnectAccountWithCompletion:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __61__PKPaymentTransactionsInYearTableViewController_viewDidLoad__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _fetchDataAndRevealContent];
  }
}

- (void)_loadBankConnectAccountWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v6 = [v5 primaryAccountIdentifier];

  v7 = [objc_alloc(MEMORY[0x1E6967DA0]) initWithPrimaryAccountIdentifier:v6];
  bankConnectAccountsProvider = self->_bankConnectAccountsProvider;
  self->_bankConnectAccountsProvider = v7;

  [(FKBankConnectAccountsProvider *)self->_bankConnectAccountsProvider setDelegate:self];
  objc_initWeak(&location, self);
  v9 = self->_bankConnectAccountsProvider;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__PKPaymentTransactionsInYearTableViewController__loadBankConnectAccountWithCompletion___block_invoke;
  v12[3] = &unk_1E80225E8;
  objc_copyWeak(&v16, &location);
  v10 = v6;
  v13 = v10;
  v14 = self;
  v11 = v4;
  v15 = v11;
  [(FKBankConnectAccountsProvider *)v9 accountAndReconsentStatusWithCompletion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __88__PKPaymentTransactionsInYearTableViewController__loadBankConnectAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__PKPaymentTransactionsInYearTableViewController__loadBankConnectAccountWithCompletion___block_invoke_2;
  v12[3] = &unk_1E8020B68;
  objc_copyWeak(&v18, (a1 + 56));
  v13 = v5;
  v14 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  objc_destroyWeak(&v18);
}

void __88__PKPaymentTransactionsInYearTableViewController__loadBankConnectAccountWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = [*(a1 + 32) consentStatus];
    if (*(a1 + 40) || (v4 = v3, [*(a1 + 32) account], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5) || v4)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v6 = [*(a1 + 32) institution];
      v7 = v14[150];
      v14[150] = v6;

      v8 = [objc_alloc(MEMORY[0x1E6967DE8]) initWithPrimaryAccountIdentifier:*(a1 + 48) dateFromYear:*(*(a1 + 56) + 1040) groupType:1];
      v9 = objc_loadWeakRetained((a1 + 72));
      [v8 setDelegate:v9];

      [v8 performFetchAndStartObservingNotifications];
      v10 = v14[149];
      v14[149] = v8;
      v11 = v8;

      v12 = [*(a1 + 32) institution];
      v13 = v14[150];
      v14[150] = v12;

      (*(*(a1 + 64) + 16))();
    }

    WeakRetained = v14;
  }
}

- (void)_fetchDataAndRevealContent
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PKPaymentTransactionsInYearTableViewController__fetchDataAndRevealContent__block_invoke;
  v3[3] = &unk_1E80113B0;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(PKPaymentTransactionsInYearTableViewController *)self _fetchDataWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __76__PKPaymentTransactionsInYearTableViewController__fetchDataAndRevealContent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E69DD250];
    v4 = [*(a1 + 32) tableView];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __76__PKPaymentTransactionsInYearTableViewController__fetchDataAndRevealContent__block_invoke_2;
    v5[3] = &unk_1E8010970;
    v5[4] = *(a1 + 32);
    [v3 transitionWithView:v4 duration:5242880 options:v5 animations:0 completion:0.3];

    WeakRetained[1168] = 1;
    [WeakRetained setNeedsUpdateContentUnavailableConfiguration];
  }
}

void __76__PKPaymentTransactionsInYearTableViewController__fetchDataAndRevealContent__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) tableView];
  [v1 reloadData];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  if (self->_contentRevealed)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __98__PKPaymentTransactionsInYearTableViewController_updateContentUnavailableConfigurationUsingState___block_invoke;
    v5[3] = &unk_1E8010970;
    v5[4] = self;
    [MEMORY[0x1E69DD250] pkui_animateUsingOptions:0 animations:v5 completion:0];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC8C8] loadingConfiguration];
    [(PKPaymentTransactionsInYearTableViewController *)self setContentUnavailableConfiguration:v4];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(NSArray *)self->_transactionsByMonth count];
  if ([(NSArray *)self->_instantWithdrawalFeesTransactionGroups count])
  {
    return v4 + 1;
  }

  else
  {
    return v4;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(PKPaymentTransactionsInYearTableViewController *)self _sectionTypeForSection:a4];
  if (v6 == 1)
  {
    instantWithdrawalFeesTransactionGroups = self->_instantWithdrawalFeesTransactionGroups;

    return [(NSArray *)instantWithdrawalFeesTransactionGroups count];
  }

  else if (v6)
  {
    return 0;
  }

  else
  {
    v7 = [(NSArray *)self->_transactionsByMonth objectAtIndexedSubscript:a4];
    v8 = [v7 count];

    return v8;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKPaymentTransactionsInYearTableViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [v7 section]);
  if (v8 == 1)
  {
    v9 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentInstantWithdrawalTableCellReuseIdentifier"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKPaymentInstantWithdrawalTableCellReuseIdentifier"];
    }

    v10 = -[NSArray objectAtIndex:](self->_instantWithdrawalFeesTransactionGroups, "objectAtIndex:", [v7 row]);
    v15 = [v7 row];
    if (v15 == [(NSArray *)self->_instantWithdrawalFeesTransactionGroups count]- 1)
    {
      v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_12.isa);
    }

    else
    {
      v16 = [(PKPaymentTransactionsInYearTableViewController *)self _withdrawalFeeMonthYearFormatter];
      v17 = [v10 startDate];
      v11 = [v16 stringFromDate:v17];
    }

    v18 = [v9 textLabel];
    [v18 setText:v11];

    v19 = [v9 detailTextLabel];
    v20 = [v10 totalAmount];
    v21 = [v20 formattedStringValue];
    [v19 setText:v21];
  }

  else
  {
    if (v8)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v9 = [v6 dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier" forIndexPath:v7];
    v10 = -[NSArray objectAtIndexedSubscript:](self->_transactionsByMonth, "objectAtIndexedSubscript:", [v7 section]);
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
    v12 = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider deviceName];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = PKDeviceName();
    }

    v19 = v14;

    transactionSourceCollection = self->_transactionSourceCollection;
    v23 = [v11 transactionSourceIdentifier];
    v20 = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:v23];

    v21 = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForTransactionSource:v20];
    [(PKPaymentTransactionCellController *)self->_transactionCellController configureCell:v9 forTransaction:v11 transactionSource:v20 familyMember:v21 account:self->_account detailStyle:self->_detailViewStyle deviceName:v19 avatarViewDelegate:self];
  }

LABEL_15:

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(PKPaymentTransactionsInYearTableViewController *)self _sectionTypeForSection:a4];
  if (v6 == 1)
  {
    v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_13.isa);
  }

  else if (v6)
  {
    v11 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_transactionsByMonth objectAtIndexedSubscript:a4];
    v8 = [v7 firstObject];
    v9 = [v8 transactionDate];
    v10 = [(PKPaymentTransactionsInYearTableViewController *)self _transactionMonthFormatter];
    v11 = [v10 stringFromDate:v9];
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a4;
  [a3 deselectRowAtIndexPath:v12 animated:1];
  v6 = -[PKPaymentTransactionsInYearTableViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [v12 section]);
  v7 = v12;
  if (!v6)
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_transactionsByMonth, "objectAtIndexedSubscript:", [v12 section]);
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v12, "row")}];
    v10 = [(PKPaymentTransactionsInYearTableViewController *)self _transactionDetailViewControllerForTransaction:v9];
    v11 = [(PKPaymentTransactionsInYearTableViewController *)self navigationController];
    if ([v11 pk_settings_useStateDrivenNavigation])
    {
      [v11 pk_settings_pushViewController:v10];
    }

    else
    {
      [v11 pushViewController:v10 animated:1];
    }

    v7 = v12;
  }
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  if (-[PKPaymentTransactionsInYearTableViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [v10 section]))
  {
    v11 = 0;
  }

  else
  {
    v12 = -[NSArray objectAtIndexedSubscript:](self->_transactionsByMonth, "objectAtIndexedSubscript:", [v10 section]);
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];
    v14 = [v9 cellForRowAtIndexPath:v10];
    v15 = v14;
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && ([v14 transactionView], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "shouldShowTransactionPreviewForTouchAtPoint:inView:", v9, x, y), v17, v18) && (-[PKPaymentTransactionsInYearTableViewController _transactionDetailViewControllerForTransaction:](self, "_transactionDetailViewControllerForTransaction:", v13), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v20 = MEMORY[0x1E69DC8D8];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __108__PKPaymentTransactionsInYearTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
      v23[3] = &unk_1E8017C60;
      v24 = v19;
      v21 = v19;
      v11 = [v20 configurationWithIdentifier:0 previewProvider:v23 actionProvider:&__block_literal_global_223];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)_transactionDetailViewControllerForTransaction:(id)a3
{
  v4 = a3;
  if (self->_peerPaymentWebService)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA128], 0);
  }

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
  account = self->_account;
  bankConnectInstitution = self->_bankConnectInstitution;
  v13 = [(PKPaymentTransactionsInYearTableViewController *)self navigationController];
  v14 = [(PKPaymentTransactionDetailsFactory *)transactionDetailsFactory viewControllerForTransaction:v4 sourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:0 bankConnectInstitution:bankConnectInstitution physicalCards:0 group:v7 navigationController:v13];

  return v14;
}

+ (id)titleForYear:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc(MEMORY[0x1E695DEE8]);
  v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v5 setCalendar:v7];

  [v5 setLocalizedDateFormatFromTemplate:@"y"];
  v8 = [v5 stringFromDate:v4];

  v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas.isa, &stru_1F3BD5BF0.isa, v8);

  return v9;
}

- (id)_transactionMonthFormatter
{
  transactionMonthFormatter = self->_transactionMonthFormatter;
  if (!transactionMonthFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_transactionMonthFormatter;
    self->_transactionMonthFormatter = v4;

    [(NSDateFormatter *)self->_transactionMonthFormatter setCalendar:self->_calendar];
    [(NSDateFormatter *)self->_transactionMonthFormatter setLocalizedDateFormatFromTemplate:@"LLLL"];
    transactionMonthFormatter = self->_transactionMonthFormatter;
  }

  return transactionMonthFormatter;
}

- (id)_withdrawalFeeMonthYearFormatter
{
  withdrawalFeeMonthYearFormatter = self->_withdrawalFeeMonthYearFormatter;
  if (!withdrawalFeeMonthYearFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_withdrawalFeeMonthYearFormatter;
    self->_withdrawalFeeMonthYearFormatter = v4;

    [(NSDateFormatter *)self->_withdrawalFeeMonthYearFormatter setCalendar:self->_calendar];
    [(NSDateFormatter *)self->_withdrawalFeeMonthYearFormatter setLocalizedDateFormatFromTemplate:@"LLLL yyyy"];
    withdrawalFeeMonthYearFormatter = self->_withdrawalFeeMonthYearFormatter;
  }

  return withdrawalFeeMonthYearFormatter;
}

- (void)_fetchDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSCalendar *)self->_calendar components:6 fromDate:self->_dateFromYear];
  calendar = self->_calendar;
  v7 = [MEMORY[0x1E695DF00] distantPast];
  v8 = [(NSCalendar *)calendar nextDateAfterDate:v7 matchingComponents:v5 options:4098];

  v9 = [(NSCalendar *)self->_calendar dateByAddingUnit:4 value:1 toDate:v8 options:4098];
  v10 = [(PKAccount *)self->_account createdDate];
  v11 = v10;
  if (v10 && [v10 compare:v8] == 1 && objc_msgSend(v11, "compare:", v9) == -1)
  {
    v12 = v11;

    v8 = v12;
  }

  [(PKDashboardTransactionFetcher *)self->_transactionFetcher setLimit:0 startDate:v8 endDate:v9];
  transactionFetcher = self->_transactionFetcher;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__PKPaymentTransactionsInYearTableViewController__fetchDataWithCompletion___block_invoke;
  v15[3] = &unk_1E8010DF8;
  v15[4] = self;
  v16 = v4;
  v14 = v4;
  [(PKDashboardTransactionFetcher *)transactionFetcher reloadTransactionsWithCompletion:v15];
}

- (void)_updateWithTransactions:(id)a3 completion:(id)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"transactionDate" ascending:0];
  v50[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
  v10 = [v6 sortedArrayUsingDescriptors:v9];

  v11 = 0x1E695D000uLL;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![v10 count])
  {
    goto LABEL_16;
  }

  v34 = v7;
  v36 = v8;
  v37 = v6;
  v12 = [v10 firstObject];
  v13 = [v12 transactionDate];

  v14 = 1048;
  v15 = [(NSCalendar *)self->_calendar components:14 fromDate:v13];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v35 = v10;
  obj = v10;
  v40 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v40)
  {
    goto LABEL_13;
  }

  v17 = *v46;
  do
  {
    v18 = 0;
    v19 = v13;
    do
    {
      if (*v46 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v45 + 1) + 8 * v18);
      v13 = [v20 transactionDate];

      if (([*(&self->super.super.super.super.isa + v14) date:v13 matchesComponents:v15] & 1) == 0)
      {
        if (![v16 count])
        {
          goto LABEL_11;
        }

        v21 = [v16 copy];
        [v38 addObject:v21];

        v22 = objc_alloc_init(*(v11 + 3952));
        v23 = [*(&self->super.super.super.super.isa + v14) components:14 fromDate:v13];
        v24 = v15;
        v25 = v17;
        v26 = v14;
        v27 = v11;
        v28 = self;
        v29 = v23;

        v16 = v22;
        v30 = v29;
        self = v28;
        v11 = v27;
        v14 = v26;
        v17 = v25;
        v15 = v30;
      }

      [v16 addObject:v20];
LABEL_11:
      ++v18;
      v19 = v13;
    }

    while (v40 != v18);
    v40 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v40);
LABEL_13:

  if ([v16 count])
  {
    v31 = [v16 copy];
    [v38 addObject:v31];
  }

  v8 = v36;
  v6 = v37;
  v7 = v34;
  v10 = v35;
LABEL_16:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentTransactionsInYearTableViewController__updateWithTransactions_completion___block_invoke;
  block[3] = &unk_1E8012300;
  v42 = v38;
  v43 = self;
  v44 = v7;
  v32 = v7;
  v33 = v38;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__PKPaymentTransactionsInYearTableViewController__updateWithTransactions_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = v2;
  v4 = *(a1 + 40);
  v11 = v2;
  if (*(v4 + 1056))
  {
    v5 = [v2 isEqualToArray:?];
    v3 = v11;
    v6 = v5 ^ 1u;
    v4 = *(a1 + 40);
  }

  else
  {
    v6 = 1;
  }

  objc_storeStrong((v4 + 1056), v3);
  v7 = [*(*(a1 + 40) + 1144) instantWithdrawalFeesTransactionGroups];
  v8 = *(a1 + 40);
  v9 = *(v8 + 1064);
  *(v8 + 1064) = v7;

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v6);
  }
}

- (void)transactionsChanged:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (self->_contentRevealed)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__PKPaymentTransactionsInYearTableViewController_transactionsChanged___block_invoke;
    v5[3] = &unk_1E8011180;
    objc_copyWeak(&v6, &location);
    [(PKPaymentTransactionsInYearTableViewController *)self _updateWithTransactions:v4 completion:v5];
    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&location);
}

void __70__PKPaymentTransactionsInYearTableViewController_transactionsChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained tableView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

- (void)didUpdateTransactions:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_contentRevealed)
  {
    self->_contentRevealed = 1;
    [(PKPaymentTransactionsInYearTableViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E69B8EA8] transactionFromFKPaymentTransaction:*(*(&v18 + 1) + 8 * i) institution:self->_bankConnectInstitution];
        [v5 safelyAddObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x1E69B8EA8];
  v13 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  v14 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v15 = [v14 uniqueID];
  paymentServiceDataProvider = self->_paymentServiceDataProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PKPaymentTransactionsInYearTableViewController_didUpdateTransactions___block_invoke;
  v17[3] = &unk_1E8014878;
  v17[4] = self;
  [v12 augmentTransactionsIfNeeded:v5 transactionSourceIdentifiers:v13 passUniqueID:v15 usingDataProvider:paymentServiceDataProvider completion:v17];
}

- (void)bankConnectConsentStatusDidChange:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(PKPaymentTransactionsInYearTableViewController *)self navigationController];
    if ([v4 pk_settings_useStateDrivenNavigation])
    {
      [v4 pk_settings_popViewController];
    }

    else
    {
      v3 = [v4 popViewControllerAnimated:1];
    }
  }
}

@end