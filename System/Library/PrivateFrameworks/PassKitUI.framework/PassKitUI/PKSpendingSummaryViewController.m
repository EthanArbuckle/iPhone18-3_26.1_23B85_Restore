@interface PKSpendingSummaryViewController
- (PKSpendingSummaryViewController)initWithTransactionSourceCollection:(id)a3 familyCollection:(id)a4 avatarManager:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 fetcher:(id)a9 weeks:(id)a10 months:(id)a11 years:(id)a12 type:(unint64_t)a13 unit:(unint64_t)a14 currentMonthTransactions:(id)a15 pendingPayments:(id)a16 upcomingScheduledPayments:(id)a17 dispayType:(unint64_t)a18;
- (PKSpendingSummaryViewControllerDelegate)delegate;
- (double)footerViewContentHeight;
- (id)cachedDataAtIndex:(int64_t)a3;
- (id)loadingDataObjectWithCurrentData:(id)a3 index:(int64_t)a4 swap:(BOOL)a5;
- (id)pkNavigationController;
- (unint64_t)_newDataSetIndexAfterTransitionFromMode:(unint64_t)a3 toMode:(unint64_t)a4;
- (void)_changeModeTo:(unint64_t)a3;
- (void)_reportTappedButtonWithTag:(id)a3;
- (void)_updateBackTitle;
- (void)dealloc;
- (void)didMoveToPrimaryIndex:(int64_t)a3;
- (void)fetchDataAtIndex:(int64_t)a3 completion:(id)a4;
- (void)invalidatedSpendingSummaryOfType:(unint64_t)a3 startingWithDate:(id)a4;
- (void)invalidatedSummariesAvailable;
- (void)prefetchDataIfNecessary;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKSpendingSummaryViewController

- (PKSpendingSummaryViewController)initWithTransactionSourceCollection:(id)a3 familyCollection:(id)a4 avatarManager:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 fetcher:(id)a9 weeks:(id)a10 months:(id)a11 years:(id)a12 type:(unint64_t)a13 unit:(unint64_t)a14 currentMonthTransactions:(id)a15 pendingPayments:(id)a16 upcomingScheduledPayments:(id)a17 dispayType:(unint64_t)a18
{
  v87[3] = *MEMORY[0x1E69E9840];
  v71 = a3;
  v73 = a4;
  v72 = a5;
  v78 = a6;
  v74 = a7;
  v75 = a8;
  v65 = a9;
  v66 = a10;
  v67 = a11;
  v68 = a12;
  v76 = a15;
  v77 = a16;
  v23 = a17;
  v86.receiver = self;
  v86.super_class = PKSpendingSummaryViewController;
  v24 = [(PKHorizontalScrollingViewController *)&v86 init];
  if (!v24)
  {
    goto LABEL_30;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  pendingUpdates = v24->_pendingUpdates;
  v24->_pendingUpdates = v25;

  objc_storeStrong(&v24->_account, a6);
  objc_storeStrong(&v24->_accountUserCollection, a7);
  objc_storeStrong(&v24->_transactionSourceCollection, a3);
  v27 = [(PKTransactionSourceCollection *)v24->_transactionSourceCollection paymentPass];
  pass = v24->_pass;
  v24->_pass = v27;

  v24->_currentSummaryType = a13;
  objc_storeStrong(&v24->_summaryFetcher, a9);
  [(PKSpendingSummaryFetcher *)v24->_summaryFetcher registerObserver:v24];
  objc_storeStrong(&v24->_currentMonthTransactions, a15);
  objc_storeStrong(&v24->_familyCollection, a4);
  objc_storeStrong(&v24->_avatarManager, a5);
  v24->_displayType = a18;
  v24->_lockUpdate._os_unfair_lock_opaque = 0;
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = v24->_pendingUpdates;
  v24->_pendingUpdates = v29;

  objc_storeStrong(&v24->_weeks, a10);
  objc_storeStrong(&v24->_months, a11);
  p_years = &v24->_years;
  objc_storeStrong(&v24->_years, a12);
  currentSummaryType = v24->_currentSummaryType;
  if (currentSummaryType)
  {
    if (currentSummaryType == 2)
    {
      v33 = 4;
    }

    else
    {
      if (currentSummaryType != 1)
      {
        v33 = 0;
        goto LABEL_10;
      }

      v33 = 8;
      p_years = &v24->_months;
    }
  }

  else
  {
    v33 = 0x2000;
    p_years = &v24->_weeks;
  }

  objc_storeStrong(&v24->_currentDataSet, *p_years);
LABEL_10:
  if ([(PKSpendingSummaryViewController *)v24 numberOfItems]< 1)
  {
    v24->_startingIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (a14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24->_startingIndex = [(PKSpendingSummaryViewController *)v24 numberOfItems]- 1;
  }

  else
  {
    v34 = [MEMORY[0x1E695DEE8] currentCalendar];
    v35 = [(PKSpendingSummaryViewController *)v24 numberOfItems];
    while (v35-- >= 1)
    {
      v37 = [(NSArray *)v24->_currentDataSet objectAtIndex:v35];
      v38 = [v34 component:v33 fromDate:v37];

      if (v38 == a14)
      {
        goto LABEL_19;
      }
    }

    v35 = [(PKSpendingSummaryViewController *)v24 numberOfItems]- 1;
LABEL_19:
    v24->_startingIndex = v35;
  }

  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = objc_alloc_init(PKTransactionGroupItemPresenter);
  v41 = objc_alloc_init(PKSpendingSummaryPresenter);
  v42 = 0;
  do
  {
    v43 = [[PKSpendingSingleSummaryViewController alloc] initWithTransationSourceCollection:v71 familyCollection:v73 avatarManager:v72 account:v78 accountUserCollection:v74 physicalCards:v75 transactionGroupPresenter:v40 summaryPresenter:v41 currentMonthTransactions:v76 pendingPayments:v77 upcomingScheduledPayments:v23 displayType:a18];
    [(PKSpendingSingleSummaryViewController *)v43 setSummaryDelegate:v24];
    [v39 addObject:v43];
  }

  while (v42++ < 5 && a18 != 1);
  v46 = [v39 copy];
  emptyViewControllers = v24->_emptyViewControllers;
  v24->_emptyViewControllers = v46;

  if ([v78 supportsSchedulePayment])
  {
    v48 = [PKDashboardViewControllerFooterContainer alloc];
    v49 = [(PKDashboardViewControllerFooterContainer *)v48 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    footerView = v24->_footerView;
    v24->_footerView = v49;
  }

  v51 = [(PKSpendingSummaryViewController *)v24 navigationItem];
  if (!a18)
  {
    [(PKAccount *)v24->_account feature];
    objc_initWeak(&location, v24);
    v58 = objc_alloc(MEMORY[0x1E69DCF38]);
    v52 = MEMORY[0x1E69DC628];
    obja = PKLocalizedFeatureString();
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __261__PKSpendingSummaryViewController_initWithTransactionSourceCollection_familyCollection_avatarManager_account_accountUserCollection_physicalCards_fetcher_weeks_months_years_type_unit_currentMonthTransactions_pendingPayments_upcomingScheduledPayments_dispayType___block_invoke;
    v83[3] = &unk_1E8010A60;
    objc_copyWeak(&v84, &location);
    v53 = [v52 actionWithTitle:obja image:0 identifier:@"week" handler:v83];
    v87[0] = v53;
    v54 = MEMORY[0x1E69DC628];
    v62 = PKLocalizedFeatureString();
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __261__PKSpendingSummaryViewController_initWithTransactionSourceCollection_familyCollection_avatarManager_account_accountUserCollection_physicalCards_fetcher_weeks_months_years_type_unit_currentMonthTransactions_pendingPayments_upcomingScheduledPayments_dispayType___block_invoke_2;
    v81[3] = &unk_1E8010A60;
    objc_copyWeak(&v82, &location);
    v55 = [v54 actionWithTitle:v62 image:0 identifier:@"month" handler:v81];
    v87[1] = v55;
    v59 = MEMORY[0x1E69DC628];
    v61 = PKLocalizedFeatureString();
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __261__PKSpendingSummaryViewController_initWithTransactionSourceCollection_familyCollection_avatarManager_account_accountUserCollection_physicalCards_fetcher_weeks_months_years_type_unit_currentMonthTransactions_pendingPayments_upcomingScheduledPayments_dispayType___block_invoke_3;
    v79[3] = &unk_1E8010A60;
    objc_copyWeak(&v80, &location);
    v60 = [v59 actionWithTitle:v61 image:0 identifier:@"year" handler:v79];
    v87[2] = v60;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:3];
    v69 = [v58 initWithFrame:v56 actions:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

    [v69 setSelectedSegmentIndex:v24->_currentSummaryType];
    [v51 setTitleView:v69];
    [v51 setBackButtonDisplayMode:2];
    [(PKSpendingSummaryViewController *)v24 _updateBackTitle];

    objc_destroyWeak(&v80);
    objc_destroyWeak(&v82);
    objc_destroyWeak(&v84);
    objc_destroyWeak(&location);
  }

LABEL_30:
  return v24;
}

void __261__PKSpendingSummaryViewController_initWithTransactionSourceCollection_familyCollection_avatarManager_account_accountUserCollection_physicalCards_fetcher_weeks_months_years_type_unit_currentMonthTransactions_pendingPayments_upcomingScheduledPayments_dispayType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _changeModeTo:0];
    WeakRetained = v2;
  }
}

void __261__PKSpendingSummaryViewController_initWithTransactionSourceCollection_familyCollection_avatarManager_account_accountUserCollection_physicalCards_fetcher_weeks_months_years_type_unit_currentMonthTransactions_pendingPayments_upcomingScheduledPayments_dispayType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _changeModeTo:1];
    WeakRetained = v2;
  }
}

void __261__PKSpendingSummaryViewController_initWithTransactionSourceCollection_familyCollection_avatarManager_account_accountUserCollection_physicalCards_fetcher_weeks_months_years_type_unit_currentMonthTransactions_pendingPayments_upcomingScheduledPayments_dispayType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _changeModeTo:2];
    WeakRetained = v2;
  }
}

- (id)pkNavigationController
{
  v2 = [(PKSpendingSummaryViewController *)self navigationController];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)footerViewContentHeight
{
  footerView = self->_footerView;
  if (!footerView)
  {
    return 0.0;
  }

  v3 = [(PKSpendingSummaryViewController *)self view];
  [v3 bounds];
  [(PKHorizontalScrollingFooterViewProtocol *)footerView sizeThatFits:v4, v5];
  v7 = v6;

  return v7;
}

- (id)cachedDataAtIndex:(int64_t)a3
{
  if (a3 > 0x7FFFFFFFFFFFFFFELL || [(NSArray *)self->_currentDataSet count]<= a3)
  {
    v7 = 0;
  }

  else
  {
    summaryFetcher = self->_summaryFetcher;
    v6 = [(NSArray *)self->_currentDataSet objectAtIndex:a3];
    v7 = [(PKSpendingSummaryFetcher *)summaryFetcher cachedSpendingSummaryStartingWithDate:v6 type:self->_currentSummaryType];
  }

  return v7;
}

- (void)prefetchDataIfNecessary
{
  currentSummaryType = self->_currentSummaryType;
  if (currentSummaryType == 2)
  {
    v5 = 1;
    goto LABEL_11;
  }

  if (currentSummaryType != 1)
  {
    if (currentSummaryType)
    {
      return;
    }

    v4 = [(PKSpendingSummaryViewController *)self _newDataSetIndexAfterTransitionFromMode:0 toMode:2];
    v5 = 0;
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_11;
    }

    v6 = v4;
    v7 = 1;
LABEL_8:
    summaryFetcher = self->_summaryFetcher;
    v10 = [(NSArray *)self->_years objectAtIndex:v6];
    [(PKSpendingSummaryFetcher *)summaryFetcher spendingSummaryStartingWithDate:v10 type:2 includingLastPeriodChange:1 completion:0];

    if (!v7)
    {
LABEL_12:
      if (!v5)
      {
        return;
      }

      goto LABEL_15;
    }

LABEL_11:
    v11 = [(PKSpendingSummaryViewController *)self _newDataSetIndexAfterTransitionFromMode:self->_currentSummaryType toMode:1];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = self->_summaryFetcher;
      v13 = [(NSArray *)self->_months objectAtIndex:v11];
      [(PKSpendingSummaryFetcher *)v12 spendingSummaryStartingWithDate:v13 type:1 includingLastPeriodChange:1 completion:0];

      if ((v5 & 1) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v5 = 1;
  v8 = [(PKSpendingSummaryViewController *)self _newDataSetIndexAfterTransitionFromMode:1 toMode:2];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v8;
    v7 = 0;
    goto LABEL_8;
  }

LABEL_15:
  v14 = [(PKSpendingSummaryViewController *)self _newDataSetIndexAfterTransitionFromMode:self->_currentSummaryType toMode:0];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = self->_summaryFetcher;
    v16 = [(NSArray *)self->_weeks objectAtIndex:v14];
    [(PKSpendingSummaryFetcher *)v15 spendingSummaryStartingWithDate:v16 type:0 includingLastPeriodChange:1 completion:0];
  }
}

- (void)fetchDataAtIndex:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (a3 > 0x7FFFFFFFFFFFFFFELL || [(NSArray *)self->_currentDataSet count]<= a3)
  {
    v6[2](v6, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    summaryFetcher = self->_summaryFetcher;
    v8 = [(NSArray *)self->_currentDataSet objectAtIndex:a3];
    currentSummaryType = self->_currentSummaryType;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__PKSpendingSummaryViewController_fetchDataAtIndex_completion___block_invoke;
    v10[3] = &unk_1E8014DA8;
    objc_copyWeak(&v12, &location);
    v11 = v6;
    [(PKSpendingSummaryFetcher *)summaryFetcher spendingSummaryStartingWithDate:v8 type:currentSummaryType includingLastPeriodChange:1 completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __63__PKSpendingSummaryViewController_fetchDataAtIndex_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKSpendingSummaryViewController_fetchDataAtIndex_completion___block_invoke_2;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __63__PKSpendingSummaryViewController_fetchDataAtIndex_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([*(a1 + 32) summaryType] == WeakRetained[156])
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
    WeakRetained = v4;
  }
}

- (id)loadingDataObjectWithCurrentData:(id)a3 index:(int64_t)a4 swap:(BOOL)a5
{
  v8 = a3;
  v9 = [(NSArray *)self->_currentDataSet objectAtIndex:a4];
  v10 = [(PKSpendingSummaryFetcher *)self->_summaryFetcher cachedSpendingSummaryStartingWithDate:v9 type:self->_currentSummaryType];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = v12;
  if (a5 || [v12 summaryType] == self->_currentSummaryType && (objc_msgSend(v13, "startDate"), v15 = objc_claimAutoreleasedReturnValue(), v16 = PKEqualObjects(), v15, (v16 & 1) != 0))
  {
    v14 = 0;
    goto LABEL_22;
  }

  v17 = objc_alloc_init(MEMORY[0x1E69B92A0]);
  v14 = v17;
  if (!v10)
  {
    [v17 setSummaryType:self->_currentSummaryType];
    [v14 setStartDate:v9];
    currentSummaryType = self->_currentSummaryType;
    if (currentSummaryType == 2)
    {
      v27 = PKStartOfNextYear();
    }

    else if (currentSummaryType == 1)
    {
      v27 = PKStartOfNextMonth();
    }

    else
    {
      if (currentSummaryType)
      {
        v25 = 0;
        goto LABEL_20;
      }

      v27 = [MEMORY[0x1E69B92A8] nextStartOfWeekFromDate:v9];
    }

    v25 = v27;
LABEL_20:
    v28 = [v25 dateByAddingTimeInterval:-1.0];
    [v14 setEndDate:v28];

    v29 = [(PKSpendingSummaryFetcher *)self->_summaryFetcher accountUser];
    v30 = [v29 altDSID];
    [v14 setAltDSID:v30];

    goto LABEL_21;
  }

  [v17 setSummaryType:{objc_msgSend(v10, "summaryType")}];
  v18 = [v10 startDate];
  [v14 setStartDate:v18];

  v19 = [v10 endDate];
  [v14 setEndDate:v19];

  [v14 setSummaryUnit:{objc_msgSend(v10, "summaryUnit")}];
  v20 = [v10 totalSpending];
  [v14 setTotalSpending:v20];

  v21 = [v10 previousMaxAmount];
  [v14 setPreviousMaxAmount:v21];

  v22 = [v10 previousTotalSpending];
  [v14 setPreviousTotalSpending:v22];

  v23 = [v10 spendingsPerCalendarUnit];
  [v14 setSpendingsPerCalendarUnit:v23];

  v24 = [v10 totalSpendingPerAltDSID];
  [v14 setTotalSpendingPerAltDSID:v24];

  v25 = [v10 altDSID];
  [v14 setAltDSID:v25];
LABEL_21:

  [v14 setIsLoading:1];
LABEL_22:

  return v14;
}

- (void)didMoveToPrimaryIndex:(int64_t)a3
{
  v4 = [(NSArray *)self->_currentDataSet objectAtIndex:a3];
  [(PKSpendingSummaryFetcher *)self->_summaryFetcher prioritizeSpendingSummaryStartingWithDate:v4 type:self->_currentSummaryType];
}

- (void)dealloc
{
  [(PKSpendingSummaryFetcher *)self->_summaryFetcher unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKSpendingSummaryViewController;
  [(PKSpendingSummaryViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKSpendingSummaryViewController;
  [(PKHorizontalScrollingViewController *)&v4 viewDidLoad];
  v3 = [(PKSpendingSummaryViewController *)self view];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9C98]];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKSpendingSummaryViewController;
  [(PKSpendingSummaryViewController *)&v8 viewDidAppear:a3];
  v4 = MEMORY[0x1E69B8540];
  v5 = *MEMORY[0x1E69BABE8];
  v9[0] = *MEMORY[0x1E69BA680];
  v9[1] = v5;
  v6 = *MEMORY[0x1E69BA5B0];
  v10[0] = *MEMORY[0x1E69BA818];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 reportDashboardEventIfNecessary:v7 forPass:self->_pass];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKSpendingSummaryViewController;
  [(PKSpendingSummaryViewController *)&v9 viewDidDisappear:a3];
  v4 = [(PKSpendingSummaryViewController *)self pkNavigationController];
  [v4 promptAppStoreReviewForTrigger:1];

  v5 = MEMORY[0x1E69B8540];
  v6 = *MEMORY[0x1E69BABE8];
  v10[0] = *MEMORY[0x1E69BA680];
  v10[1] = v6;
  v7 = *MEMORY[0x1E69BA5B0];
  v11[0] = *MEMORY[0x1E69BA820];
  v11[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v5 reportDashboardEventIfNecessary:v8 forPass:self->_pass];
}

- (void)_updateBackTitle
{
  if (self->_currentSummaryType > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = PKLocalizedFeatureString();
  }

  v3 = [(PKSpendingSummaryViewController *)self navigationItem];
  [v3 setBackButtonTitle:v4];
}

- (void)_changeModeTo:(unint64_t)a3
{
  if (!self->_transitioningMode)
  {
    self->_transitioningMode = 1;
    [(PKHorizontalScrollingViewController *)self clearPendingDataCollectionViewUpdates];
    [(PKHorizontalScrollingViewController *)self enableScrollView:0];
    currentSummaryType = self->_currentSummaryType;
    if (a3 <= 2)
    {
      v6 = off_1E8014E30[a3];
      v7 = qword_1E8014E48[a3];
      PKSetBroadwaySummaryType();
      self->_currentSummaryType = a3;
      objc_storeStrong(&self->_currentDataSet, *(&self->super.super.super.super.isa + *v6));
      [(PKSpendingSummaryViewController *)self _reportTappedButtonWithTag:*v7];
    }

    [(PKSpendingSummaryViewController *)self _updateBackTitle];
    v8 = [(PKSpendingSummaryViewController *)self _newDataSetIndexAfterTransitionFromMode:currentSummaryType toMode:a3];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(PKSpendingSummaryViewController *)self numberOfItems]- 1;
    }

    [(PKHorizontalScrollingViewController *)self resetVisibleViewControllersWithNewPrimaryIndex:v8];
    [(PKHorizontalScrollingViewController *)self enableScrollView:1];
    self->_transitioningMode = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v10 = WeakRetained;
      [WeakRetained summaryTypeDidChange];
      WeakRetained = v10;
    }
  }
}

- (unint64_t)_newDataSetIndexAfterTransitionFromMode:(unint64_t)a3 toMode:(unint64_t)a4
{
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [(PKHorizontalScrollingViewController *)self primaryIndex];
  switch(a3)
  {
    case 0uLL:
      v10 = [(NSArray *)self->_weeks objectAtIndex:v9];
      if (a4 == 1)
      {
        v20 = [(NSArray *)self->_months count];
        v11 = [v7 components:14 fromDate:v10];
        if (v20)
        {
          v15 = 0;
          while (1)
          {
            v21 = [(NSArray *)self->_months objectAtIndex:v15];
            v22 = [v7 date:v21 matchesComponents:v11];

            if (v22)
            {
              goto LABEL_48;
            }

            if (v20 == ++v15)
            {
              goto LABEL_38;
            }
          }
        }
      }

      else
      {
        v23 = [(NSArray *)self->_years count];
        v11 = [v7 components:6 fromDate:v10];
        if (v23)
        {
          v15 = 0;
          while (1)
          {
            v24 = [(NSArray *)self->_years objectAtIndex:v15];
            v25 = [v7 date:v24 matchesComponents:v11];

            if (v25)
            {
              goto LABEL_48;
            }

            if (v23 == ++v15)
            {
              goto LABEL_38;
            }
          }
        }
      }

      goto LABEL_38;
    case 1uLL:
      v10 = [(NSArray *)self->_months objectAtIndex:v9];
      if (a4)
      {
        v11 = [v7 components:6 fromDate:v10];
        v16 = [(NSArray *)self->_years count];
        if (v16)
        {
          v17 = v16;
          v15 = 0;
          while (1)
          {
            v18 = [(NSArray *)self->_years objectAtIndex:v15];
            v19 = [v7 date:v18 matchesComponents:v11];

            if (v19)
            {
              goto LABEL_48;
            }

            if (v17 == ++v15)
            {
              goto LABEL_38;
            }
          }
        }

        goto LABEL_38;
      }

      v11 = [v7 components:14 fromDate:v10];
      v41 = v8;
      v32 = [v7 date:v8 matchesComponents:v11];
      v33 = [(NSArray *)self->_weeks count];
      v27 = v33;
      if ((v32 & 1) == 0)
      {
        if (v33)
        {
          v40 = v10;
          v36 = 0;
          v15 = 0;
          v29 = 0x7FFFFFFFFFFFFFFFLL;
          while (1)
          {
            v37 = [(NSArray *)self->_weeks objectAtIndex:v15, v40];
            v38 = [v7 date:v37 matchesComponents:v11];

            if (v38)
            {
              ++v36;
              v29 = v15;
              if (v36 == 3)
              {
                goto LABEL_45;
              }
            }

            if (v27 == ++v15)
            {
LABEL_44:
              v15 = v29;
              goto LABEL_45;
            }
          }
        }

        goto LABEL_46;
      }

LABEL_33:
      v15 = v27 - 1;
LABEL_47:
      v8 = v41;
      goto LABEL_48;
    case 2uLL:
      v10 = [(NSArray *)self->_years objectAtIndex:v9];
      v11 = [v7 components:6 fromDate:v10];
      v12 = [v7 date:v8 matchesComponents:v11];
      if (a4 == 1)
      {
        v13 = [(NSArray *)self->_months count];
        v14 = v13;
        if (v12)
        {
          v15 = v13 - 1;
LABEL_48:

          goto LABEL_49;
        }

        if (v13)
        {
          v15 = 0;
          do
          {
            v34 = [(NSArray *)self->_months objectAtIndex:v15];
            v35 = [v7 date:v34 matchesComponents:v11];

            if (v35)
            {
              goto LABEL_48;
            }
          }

          while (v14 != ++v15);
        }

LABEL_38:
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_48;
      }

      v41 = v8;
      v26 = [(NSArray *)self->_weeks count];
      v27 = v26;
      if ((v12 & 1) == 0)
      {
        if (v26)
        {
          v40 = v10;
          v28 = 0;
          v15 = 0;
          v29 = 0x7FFFFFFFFFFFFFFFLL;
          while (1)
          {
            v30 = [(NSArray *)self->_weeks objectAtIndex:v15, v40];
            v31 = [v7 date:v30 matchesComponents:v11];

            if (v31)
            {
              ++v28;
              v29 = v15;
              if (v28 == 3)
              {
                break;
              }
            }

            if (v27 == ++v15)
            {
              goto LABEL_44;
            }
          }

LABEL_45:
          v10 = v40;
          v8 = v41;
          goto LABEL_48;
        }

LABEL_46:
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_47;
      }

      goto LABEL_33;
  }

  v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_49:

  return v15;
}

- (void)invalidatedSpendingSummaryOfType:(unint64_t)a3 startingWithDate:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  os_unfair_lock_lock(&self->_lockUpdate);
  v8 = [(NSMutableDictionary *)self->_pendingUpdates objectForKey:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)self->_pendingUpdates setObject:v8 forKey:v7];
  }

  if ([v8 containsObject:v6])
  {
    os_unfair_lock_unlock(&self->_lockUpdate);
  }

  else
  {
    [v8 addObject:v6];
    os_unfair_lock_unlock(&self->_lockUpdate);
    v9 = dispatch_time(0, 3000000000);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__PKSpendingSummaryViewController_invalidatedSpendingSummaryOfType_startingWithDate___block_invoke;
    v10[3] = &unk_1E8014DD0;
    v10[4] = self;
    v11 = v7;
    v12 = v6;
    v13 = a3;
    dispatch_after(v9, MEMORY[0x1E69E96A0], v10);
  }
}

void __85__PKSpendingSummaryViewController_invalidatedSpendingSummaryOfType_startingWithDate___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 1280));
  v7 = [*(*(a1 + 32) + 1288) objectForKey:*(a1 + 40)];
  [v7 removeObject:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 32) + 1280));
  v2 = *(a1 + 32);
  if (*(a1 + 56) == *(v2 + 1248))
  {
    v3 = [*(v2 + 1240) indexOfObject:*(a1 + 48)];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v3;
      v5 = [*(a1 + 32) visibleIndices];
      v6 = [v5 containsIndex:v4];

      if (v6)
      {
        [*(a1 + 32) reloadDataForViewControllerAtIndex:v4 swap:0];
      }
    }
  }
}

- (void)invalidatedSummariesAvailable
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKSpendingSummaryViewController_invalidatedSummariesAvailable__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__PKSpendingSummaryViewController_invalidatedSummariesAvailable__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1176);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PKSpendingSummaryViewController_invalidatedSummariesAvailable__block_invoke_2;
  v4[3] = &unk_1E8014DF8;
  v4[4] = v1;
  return [v2 availableSummaries:v4];
}

void __64__PKSpendingSummaryViewController_invalidatedSummariesAvailable__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKSpendingSummaryViewController_invalidatedSummariesAvailable__block_invoke_3;
  v13[3] = &unk_1E8011C98;
  v13[4] = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

void __64__PKSpendingSummaryViewController_invalidatedSummariesAvailable__block_invoke_3(id *a1)
{
  v6 = [*(a1[4] + 155) objectAtIndex:{objc_msgSend(a1[4], "primaryIndex")}];
  objc_storeStrong(a1[4] + 150, a1[5]);
  v2 = a1 + 6;
  objc_storeStrong(a1[4] + 151, a1[6]);
  objc_storeStrong(a1[4] + 152, a1[7]);
  v3 = a1[4];
  v4 = *(v3 + 156);
  switch(v4)
  {
    case 0:
      v2 = a1 + 5;
      goto LABEL_7;
    case 2:
      v2 = a1 + 7;
      goto LABEL_7;
    case 1:
LABEL_7:
      objc_storeStrong(v3 + 155, *v2);
      v3 = a1[4];
      break;
  }

  v5 = [*(v3 + 155) indexOfObject:v6];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([a1[4] numberOfItems] < 1)
    {
      v5 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = [a1[4] numberOfItems] - 1;
    }
  }

  [a1[4] updateScrollViewContentOffsetWithNewPrimaryIndex:v5];
}

- (void)_reportTappedButtonWithTag:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69BA680];
  v10[0] = *MEMORY[0x1E69BABE8];
  v10[1] = v4;
  v5 = *MEMORY[0x1E69BA6F0];
  v11[0] = *MEMORY[0x1E69BA5B0];
  v11[1] = v5;
  v6 = MEMORY[0x1E69B8540];
  v10[2] = *MEMORY[0x1E69BA440];
  v11[2] = a3;
  v7 = MEMORY[0x1E695DF20];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v6 reportDashboardEventIfNecessary:v9 forPass:self->_pass];
}

- (PKSpendingSummaryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end