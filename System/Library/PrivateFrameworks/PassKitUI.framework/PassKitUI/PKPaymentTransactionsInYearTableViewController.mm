@interface PKPaymentTransactionsInYearTableViewController
+ (id)titleForYear:(id)year;
- (PKPaymentTransactionsInYearTableViewController)initWithDateFromYear:(id)year calendar:(id)calendar transactionSourceCollection:(id)collection familyCollection:(id)familyCollection detailViewStyle:(int64_t)style paymentServiceDataProvider:(id)provider contactResolver:(id)resolver peerPaymentWebService:(id)self0 account:(id)self1;
- (id)_transactionDetailViewControllerForTransaction:(id)transaction;
- (id)_transactionMonthFormatter;
- (id)_withdrawalFeeMonthYearFormatter;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_fetchDataAndRevealContent;
- (void)_fetchDataWithCompletion:(id)completion;
- (void)_loadBankConnectAccountWithCompletion:(id)completion;
- (void)_updateWithTransactions:(id)transactions completion:(id)completion;
- (void)bankConnectConsentStatusDidChange:(unint64_t)change;
- (void)didUpdateTransactions:(id)transactions;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)transactionsChanged:(id)changed;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)viewDidLoad;
@end

@implementation PKPaymentTransactionsInYearTableViewController

- (PKPaymentTransactionsInYearTableViewController)initWithDateFromYear:(id)year calendar:(id)calendar transactionSourceCollection:(id)collection familyCollection:(id)familyCollection detailViewStyle:(int64_t)style paymentServiceDataProvider:(id)provider contactResolver:(id)resolver peerPaymentWebService:(id)self0 account:(id)self1
{
  yearCopy = year;
  calendarCopy = calendar;
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  familyCollectionCopy2 = familyCollection;
  providerCopy = provider;
  resolverCopy = resolver;
  serviceCopy = service;
  accountCopy = account;
  v36.receiver = self;
  v36.super_class = PKPaymentTransactionsInYearTableViewController;
  v20 = -[PKPaymentTransactionsInYearTableViewController initWithStyle:](&v36, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior]);
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_dateFromYear, year);
    objc_storeStrong(&v21->_calendar, calendar);
    objc_storeStrong(&v21->_transactionSourceCollection, collection);
    objc_storeStrong(&v21->_paymentServiceDataProvider, provider);
    objc_storeStrong(&v21->_contactResolver, resolver);
    objc_storeStrong(&v21->_peerPaymentWebService, service);
    v21->_detailViewStyle = style;
    objc_storeStrong(&v21->_familyCollection, familyCollectionCopy);
    v22 = [[PKPaymentTransactionCellController alloc] initWithContactResolver:resolverCopy];
    transactionCellController = v21->_transactionCellController;
    v21->_transactionCellController = v22;

    v24 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v21->_transactionSourceCollection paymentDataProvider:v21->_paymentServiceDataProvider];
    transactionFetcher = v21->_transactionFetcher;
    v21->_transactionFetcher = v24;

    [(PKDashboardTransactionFetcher *)v21->_transactionFetcher setDelegate:v21];
    v26 = [[PKPaymentTransactionDetailsFactory alloc] initWithContactResolver:v21->_contactResolver peerPaymentWebService:v21->_peerPaymentWebService paymentServiceDataProvider:v21->_paymentServiceDataProvider detailViewStyle:v21->_detailViewStyle context:0];
    transactionDetailsFactory = v21->_transactionDetailsFactory;
    v21->_transactionDetailsFactory = v26;

    objc_storeStrong(&v21->_account, account);
  }

  return v21;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionsInYearTableViewController;
  [(PKPaymentTransactionsInYearTableViewController *)&v9 viewDidLoad];
  v3 = [objc_opt_class() titleForYear:self->_dateFromYear];
  navigationItem = [(PKPaymentTransactionsInYearTableViewController *)self navigationItem];
  [navigationItem setTitle:v3];

  tableView = [(PKPaymentTransactionsInYearTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier"];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  if (_UISolariumFeatureFlagEnabled())
  {
    [tableView setSeparatorInset:{0.0, 67.0, 0.0, 16.0}];
  }

  [tableView pkui_setupForReadableContentGuide];
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

- (void)_loadBankConnectAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  primaryAccountIdentifier = [paymentPass primaryAccountIdentifier];

  v7 = [objc_alloc(MEMORY[0x1E6967DA0]) initWithPrimaryAccountIdentifier:primaryAccountIdentifier];
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
  v10 = primaryAccountIdentifier;
  v13 = v10;
  selfCopy = self;
  v11 = completionCopy;
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

- (void)updateContentUnavailableConfigurationUsingState:(id)state
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
    loadingConfiguration = [MEMORY[0x1E69DC8C8] loadingConfiguration];
    [(PKPaymentTransactionsInYearTableViewController *)self setContentUnavailableConfiguration:loadingConfiguration];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = [(PKPaymentTransactionsInYearTableViewController *)self _sectionTypeForSection:section];
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
    v7 = [(NSArray *)self->_transactionsByMonth objectAtIndexedSubscript:section];
    v8 = [v7 count];

    return v8;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKPaymentTransactionsInYearTableViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [pathCopy section]);
  if (v8 == 1)
  {
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentInstantWithdrawalTableCellReuseIdentifier"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"PKPaymentInstantWithdrawalTableCellReuseIdentifier"];
    }

    v10 = -[NSArray objectAtIndex:](self->_instantWithdrawalFeesTransactionGroups, "objectAtIndex:", [pathCopy row]);
    v15 = [pathCopy row];
    if (v15 == [(NSArray *)self->_instantWithdrawalFeesTransactionGroups count]- 1)
    {
      v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_12.isa);
    }

    else
    {
      _withdrawalFeeMonthYearFormatter = [(PKPaymentTransactionsInYearTableViewController *)self _withdrawalFeeMonthYearFormatter];
      startDate = [v10 startDate];
      v11 = [_withdrawalFeeMonthYearFormatter stringFromDate:startDate];
    }

    textLabel = [v9 textLabel];
    [textLabel setText:v11];

    detailTextLabel = [v9 detailTextLabel];
    totalAmount = [v10 totalAmount];
    formattedStringValue = [totalAmount formattedStringValue];
    [detailTextLabel setText:formattedStringValue];
  }

  else
  {
    if (v8)
    {
      v9 = 0;
      goto LABEL_15;
    }

    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPaymentTransactionTableCellReuseIdentifier" forIndexPath:pathCopy];
    v10 = -[NSArray objectAtIndexedSubscript:](self->_transactionsByMonth, "objectAtIndexedSubscript:", [pathCopy section]);
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    deviceName = [(PKPaymentDataProvider *)self->_paymentServiceDataProvider deviceName];
    v13 = deviceName;
    if (deviceName)
    {
      v14 = deviceName;
    }

    else
    {
      v14 = PKDeviceName();
    }

    detailTextLabel = v14;

    transactionSourceCollection = self->_transactionSourceCollection;
    transactionSourceIdentifier = [v11 transactionSourceIdentifier];
    totalAmount = [(PKTransactionSourceCollection *)transactionSourceCollection transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

    formattedStringValue = [(PKFamilyMemberCollection *)self->_familyCollection familyMemberForTransactionSource:totalAmount];
    [(PKPaymentTransactionCellController *)self->_transactionCellController configureCell:v9 forTransaction:v11 transactionSource:totalAmount familyMember:formattedStringValue account:self->_account detailStyle:self->_detailViewStyle deviceName:detailTextLabel avatarViewDelegate:self];
  }

LABEL_15:

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v6 = [(PKPaymentTransactionsInYearTableViewController *)self _sectionTypeForSection:section];
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
    v7 = [(NSArray *)self->_transactionsByMonth objectAtIndexedSubscript:section];
    firstObject = [v7 firstObject];
    transactionDate = [firstObject transactionDate];
    _transactionMonthFormatter = [(PKPaymentTransactionsInYearTableViewController *)self _transactionMonthFormatter];
    v11 = [_transactionMonthFormatter stringFromDate:transactionDate];
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v6 = -[PKPaymentTransactionsInYearTableViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [pathCopy section]);
  v7 = pathCopy;
  if (!v6)
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_transactionsByMonth, "objectAtIndexedSubscript:", [pathCopy section]);
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    v10 = [(PKPaymentTransactionsInYearTableViewController *)self _transactionDetailViewControllerForTransaction:v9];
    navigationController = [(PKPaymentTransactionsInYearTableViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v10];
    }

    else
    {
      [navigationController pushViewController:v10 animated:1];
    }

    v7 = pathCopy;
  }
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pathCopy = path;
  if (-[PKPaymentTransactionsInYearTableViewController _sectionTypeForSection:](self, "_sectionTypeForSection:", [pathCopy section]))
  {
    v11 = 0;
  }

  else
  {
    v12 = -[NSArray objectAtIndexedSubscript:](self->_transactionsByMonth, "objectAtIndexedSubscript:", [pathCopy section]);
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    v14 = [viewCopy cellForRowAtIndexPath:pathCopy];
    v15 = v14;
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && ([v14 transactionView], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "shouldShowTransactionPreviewForTouchAtPoint:inView:", viewCopy, x, y), v17, v18) && (-[PKPaymentTransactionsInYearTableViewController _transactionDetailViewControllerForTransaction:](self, "_transactionDetailViewControllerForTransaction:", v13), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (id)_transactionDetailViewControllerForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (self->_peerPaymentWebService)
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69BA128], 0);
  }

  if ([transactionCopy transactionType] == 9)
  {
    transactionFetcher = self->_transactionFetcher;
    identifier = [transactionCopy identifier];
    v7 = [(PKDashboardTransactionFetcher *)transactionFetcher cashbackGroupForTransactionWithIdentifier:identifier cashbackTransactionSourceCollection:0];
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
  navigationController = [(PKPaymentTransactionsInYearTableViewController *)self navigationController];
  v14 = [(PKPaymentTransactionDetailsFactory *)transactionDetailsFactory viewControllerForTransaction:transactionCopy sourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:0 bankConnectInstitution:bankConnectInstitution physicalCards:0 group:v7 navigationController:navigationController];

  return v14;
}

+ (id)titleForYear:(id)year
{
  v3 = MEMORY[0x1E696AB78];
  yearCopy = year;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc(MEMORY[0x1E695DEE8]);
  v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v5 setCalendar:v7];

  [v5 setLocalizedDateFormatFromTemplate:@"y"];
  v8 = [v5 stringFromDate:yearCopy];

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

- (void)_fetchDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NSCalendar *)self->_calendar components:6 fromDate:self->_dateFromYear];
  calendar = self->_calendar;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v8 = [(NSCalendar *)calendar nextDateAfterDate:distantPast matchingComponents:v5 options:4098];

  v9 = [(NSCalendar *)self->_calendar dateByAddingUnit:4 value:1 toDate:v8 options:4098];
  createdDate = [(PKAccount *)self->_account createdDate];
  v11 = createdDate;
  if (createdDate && [createdDate compare:v8] == 1 && objc_msgSend(v11, "compare:", v9) == -1)
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
  v16 = completionCopy;
  v14 = completionCopy;
  [(PKDashboardTransactionFetcher *)transactionFetcher reloadTransactionsWithCompletion:v15];
}

- (void)_updateWithTransactions:(id)transactions completion:(id)completion
{
  v50[1] = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  completionCopy = completion;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"transactionDate" ascending:0];
  v50[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
  v10 = [transactionsCopy sortedArrayUsingDescriptors:v9];

  v11 = 0x1E695D000uLL;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![v10 count])
  {
    goto LABEL_16;
  }

  v34 = completionCopy;
  v36 = v8;
  v37 = transactionsCopy;
  firstObject = [v10 firstObject];
  transactionDate = [firstObject transactionDate];

  v14 = 1048;
  v15 = [(NSCalendar *)self->_calendar components:14 fromDate:transactionDate];
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
    v19 = transactionDate;
    do
    {
      if (*v46 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v45 + 1) + 8 * v18);
      transactionDate = [v20 transactionDate];

      if (([*(&self->super.super.super.super.isa + v14) date:transactionDate matchesComponents:v15] & 1) == 0)
      {
        if (![v16 count])
        {
          goto LABEL_11;
        }

        v21 = [v16 copy];
        [v38 addObject:v21];

        v22 = objc_alloc_init(*(v11 + 3952));
        v23 = [*(&self->super.super.super.super.isa + v14) components:14 fromDate:transactionDate];
        v24 = v15;
        v25 = v17;
        v26 = v14;
        v27 = v11;
        selfCopy = self;
        v29 = v23;

        v16 = v22;
        v30 = v29;
        self = selfCopy;
        v11 = v27;
        v14 = v26;
        v17 = v25;
        v15 = v30;
      }

      [v16 addObject:v20];
LABEL_11:
      ++v18;
      v19 = transactionDate;
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
  transactionsCopy = v37;
  completionCopy = v34;
  v10 = v35;
LABEL_16:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPaymentTransactionsInYearTableViewController__updateWithTransactions_completion___block_invoke;
  block[3] = &unk_1E8012300;
  v42 = v38;
  selfCopy2 = self;
  v44 = completionCopy;
  v32 = completionCopy;
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

- (void)transactionsChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  if (self->_contentRevealed)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__PKPaymentTransactionsInYearTableViewController_transactionsChanged___block_invoke;
    v5[3] = &unk_1E8011180;
    objc_copyWeak(&v6, &location);
    [(PKPaymentTransactionsInYearTableViewController *)self _updateWithTransactions:changedCopy completion:v5];
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

- (void)didUpdateTransactions:(id)transactions
{
  v23 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  if (!self->_contentRevealed)
  {
    self->_contentRevealed = 1;
    [(PKPaymentTransactionsInYearTableViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(transactionsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = transactionsCopy;
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
  transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  uniqueID = [paymentPass uniqueID];
  paymentServiceDataProvider = self->_paymentServiceDataProvider;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PKPaymentTransactionsInYearTableViewController_didUpdateTransactions___block_invoke;
  v17[3] = &unk_1E8014878;
  v17[4] = self;
  [v12 augmentTransactionsIfNeeded:v5 transactionSourceIdentifiers:transactionSourceIdentifiers passUniqueID:uniqueID usingDataProvider:paymentServiceDataProvider completion:v17];
}

- (void)bankConnectConsentStatusDidChange:(unint64_t)change
{
  if (change)
  {
    navigationController = [(PKPaymentTransactionsInYearTableViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_popViewController];
    }

    else
    {
      v3 = [navigationController popViewControllerAnimated:1];
    }
  }
}

@end