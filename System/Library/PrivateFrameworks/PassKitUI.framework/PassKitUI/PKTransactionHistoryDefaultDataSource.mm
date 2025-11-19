@interface PKTransactionHistoryDefaultDataSource
- (BOOL)_updateGroup:(id)a3 withRegion:(id)a4;
- (BOOL)areTransactionsEditable;
- (BOOL)canDeleteItem:(id)a3;
- (NSString)footerSecondaryTitle;
- (NSString)footerTitle;
- (PKTransactionHistoryDataSourceDelegate)customDelegate;
- (PKTransactionHistoryDefaultDataSource)initWithFetcher:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 featuredTransaction:(id)a9 selectedTransactions:(id)a10 type:(unint64_t)a11;
- (PKTransactionHistoryDefaultDataSource)initWithInstallmentPlan:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8;
- (PKTransactionHistoryDefaultDataSource)initWithTransactionGroup:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 fetcher:(id)a9;
- (PKTransactionHistoryDefaultDataSource)initWithTransactionGroups:(id)a3 headerGroup:(id)a4 regionUpdater:(id)a5 tokens:(id)a6 transactionSourceCollection:(id)a7 familyCollection:(id)a8 account:(id)a9 accountUserCollection:(id)a10 physicalCards:(id)a11;
- (id)_contactKeysToFetch;
- (id)_groupItemForTransaction:(id)a3;
- (id)_headerItem;
- (id)_initWithTransactionSourceCollection:(id)a3 familyCollection:(id)a4 account:(id)a5 accountUserCollection:(id)a6 physicalCards:(id)a7;
- (id)_totalDailyCashRewardsFromTransactions:(id)a3;
- (id)_totalFromGroups:(id)a3;
- (id)_totalPaymentsFromTransactions:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)_totalRewardsFromTransactions:(id)a3;
- (id)_totalSpendingFromTransactions:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)_transactionItemForTransaction:(id)a3 inGroup:(id)a4;
- (id)actionItems;
- (id)footerTextItemForSection:(unint64_t)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)navigationBarTitle;
- (id)titleForSection:(unint64_t)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (void)_handleAccountsChangedNotification:(id)a3;
- (void)_handleCoarseLocationChangedNotification:(id)a3;
- (void)_handleTransactionHistoryUpdated:(id)a3 stateUpdate:(id)a4 reloadBlock:(id)a5;
- (void)_loadContact;
- (void)_loadPeerPaymentPendingRequestForRequestToken:(id)a3;
- (void)_loadTransactionReceipt;
- (void)_notifyContentLoadedIfNecessary;
- (void)_p2pTotalsFromTransactions:(id)a3 received:(id *)a4 sent:(id *)a5;
- (void)_updateFooterTotalFromGroup:(id)a3;
- (void)_updateWithTransactionReceipt:(id)a3;
- (void)bankConnectConsentStatusDidChange:(unint64_t)a3;
- (void)dealloc;
- (void)deleteItem:(id)a3 completionHandler:(id)a4;
- (void)deleteItems:(id)a3;
- (void)didUpdateTransactions:(id)a3;
- (void)loadTransactionsIfNeeded;
- (void)physicalCardsChanged:(id)a3 forAccountIdentifier:(id)a4;
- (void)setDataSourceDelegate:(id)a3;
- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4;
- (void)updateGroup:(id)a3;
- (void)updateGroups:(id)a3 headerGroup:(id)a4;
- (void)updateStateWithBlock:(id)a3 reloadBlock:(id)a4;
- (void)worldRegionUpdated:(id)a3 updatedRegion:(id)a4;
@end

@implementation PKTransactionHistoryDefaultDataSource

- (id)_initWithTransactionSourceCollection:(id)a3 familyCollection:(id)a4 account:(id)a5 accountUserCollection:(id)a6 physicalCards:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v37.receiver = self;
  v37.super_class = PKTransactionHistoryDefaultDataSource;
  v18 = [(PKTransactionHistoryDefaultDataSource *)&v37 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_transactionSourceCollection, a3);
    objc_storeStrong(&v19->_familyCollection, a4);
    objc_storeStrong(&v19->_accountUserCollection, a6);
    v20 = [v17 copy];
    physicalCards = v19->_physicalCards;
    v19->_physicalCards = v20;

    v22 = objc_alloc_init(PKMutableTransactionHistoryState);
    [(PKMutableTransactionHistoryState *)v22 setAccount:v15];
    state = v19->_state;
    v19->_state = &v22->super;
    v24 = v22;

    v25 = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v19->_currentCalendar;
    v19->_currentCalendar = v25;

    v27 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    headerIndexPath = v19->_headerIndexPath;
    v19->_headerIndexPath = v27;

    v29 = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v19->_accountService;
    v19->_accountService = v29;

    [(PKAccountService *)v19->_accountService registerObserver:v19];
    v31 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    dataProvider = v19->_dataProvider;
    v19->_dataProvider = v31;

    [(PKPaymentDataProvider *)v19->_dataProvider addDelegate:v19];
    v33 = [MEMORY[0x1E69B8708] sharedInstance];
    coarseLocationMonitor = v19->_coarseLocationMonitor;
    v19->_coarseLocationMonitor = v33;

    v35 = [MEMORY[0x1E696AD88] defaultCenter];
    [v35 addObserver:v19 selector:sel__handleCoarseLocationChangedNotification_ name:*MEMORY[0x1E69BB7B0] object:v19->_coarseLocationMonitor];
  }

  return v19;
}

- (PKTransactionHistoryDefaultDataSource)initWithFetcher:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 featuredTransaction:(id)a9 selectedTransactions:(id)a10 type:(unint64_t)a11
{
  v56 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v18 = a9;
  v19 = a10;
  v20 = [(PKTransactionHistoryDefaultDataSource *)self _initWithTransactionSourceCollection:a4 familyCollection:a5 account:a6 accountUserCollection:a7 physicalCards:a8];
  v21 = v20;
  if (v20)
  {
    v22 = v20[1];
    [v22 setType:a11];
    [v22 setFeaturedTransaction:v18];
    [v22 setSelectedTransactions:v19];
    objc_storeStrong(&v21->_transactionFetcher, a3);
    [(PKDashboardTransactionFetcher *)v21->_transactionFetcher setDelegate:v21];
    if (a11 == 1)
    {
      v34 = [v18 merchant];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v37 = [v19 transactions];
        v38 = [v37 firstObject];
        v36 = [v38 merchant];
      }

      if (![v36 hasMapsMatch] || objc_msgSend(v36, "shouldIgnoreMapsMatches"))
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v39 = [v19 transactions];
        v40 = [v39 countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v40)
        {
          v41 = v40;
          v49 = v36;
          v42 = *v52;
          while (2)
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v52 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = [*(*(&v51 + 1) + 8 * i) merchant];
              if (([v44 shouldIgnoreMapsMatches] & 1) == 0)
              {
                v45 = [v44 mapsBrand];
                if (v45)
                {
                  v46 = v45;

                  goto LABEL_24;
                }
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v51 objects:v55 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }

          v44 = v49;
        }

        else
        {
          v44 = v36;
        }

LABEL_24:

        v36 = v44;
      }

      merchant = v21->_merchant;
      v21->_merchant = v36;

      [(PKTransactionHistoryDefaultDataSource *)v21 _loadTransactionReceipt];
    }

    else if (!a11)
    {
      v23 = [(PKDashboardTransactionFetcher *)v21->_transactionFetcher counterpartHandles];
      v24 = [v23 anyObject];
      peerPaymentCounterpartHandle = v21->_peerPaymentCounterpartHandle;
      v21->_peerPaymentCounterpartHandle = v24;

      v26 = objc_alloc_init(MEMORY[0x1E695CE18]);
      v27 = objc_alloc(MEMORY[0x1E69B8740]);
      v28 = [(PKTransactionHistoryDefaultDataSource *)v21 _contactKeysToFetch];
      v29 = [v27 initWithContactStore:v26 keysToFetch:v28];
      contactResolver = v21->_contactResolver;
      v21->_contactResolver = v29;

      v31 = objc_alloc_init(PKPeerPaymentCounterpartImageResolver);
      peerPaymentImageResolver = v21->_peerPaymentImageResolver;
      v21->_peerPaymentImageResolver = v31;

      [(PKTransactionHistoryDefaultDataSource *)v21 _loadContact];
      if ([v18 isPeerPaymentGroupRequestReceivedTransaction])
      {
        v33 = [v18 peerPaymentRequestToken];
        [(PKTransactionHistoryDefaultDataSource *)v21 _loadPeerPaymentPendingRequestForRequestToken:v33];
      }
    }

    [(PKTransactionHistoryDefaultDataSource *)v21 _notifyContentLoadedIfNecessary];
  }

  return v21;
}

- (PKTransactionHistoryDefaultDataSource)initWithTransactionGroup:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 fetcher:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a9;
  v19 = [(PKTransactionHistoryDefaultDataSource *)self _initWithTransactionSourceCollection:v16 familyCollection:a5 account:v17 accountUserCollection:a7 physicalCards:a8];
  v20 = v19;
  if (v19)
  {
    v100 = v18;
    v21 = v19[1];
    [v21 setType:2];
    [v21 setGroup:v15];
    [v21 setSelectedTransactions:v15];
    objc_storeStrong(&v20->_transactionFetcher, a9);
    v22 = [v15 type];
    if (PKBankConnectEnabled())
    {
      v23 = [v16 paymentPass];
      v24 = objc_alloc(MEMORY[0x1E6967DA0]);
      v25 = [v23 primaryAccountIdentifier];
      v26 = [v24 initWithPrimaryAccountIdentifier:v25];
      bankConnectAccountsProvider = v20->_bankConnectAccountsProvider;
      v20->_bankConnectAccountsProvider = v26;

      v28 = v20->_bankConnectAccountsProvider;
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __163__PKTransactionHistoryDefaultDataSource_initWithTransactionGroup_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards_fetcher___block_invoke;
      v101[3] = &unk_1E8022B50;
      v105 = v22 == 14;
      v102 = v20;
      v103 = v23;
      v104 = v15;
      v29 = v23;
      [(FKBankConnectAccountsProvider *)v28 accountAndReconsentStatusWithCompletion:v101];
    }

    [(PKTransactionHistoryDefaultDataSource *)v20 _updateFooterTotalFromGroup:v15];
    v30 = [v15 searchQuery];
    v31 = [v30 tokens];
    v32 = [v31 count];

    if (v22 == 14 && v32 == 1)
    {
      v33 = [v15 searchQuery];
      v34 = [v33 displayNameToken];
      v35 = [v34 merchant];
      merchant = v20->_merchant;
      v20->_merchant = v35;

      v37 = [v15 searchQuery];
      v38 = [v37 peerPaymentToken];
      v39 = [v38 group];
      v40 = [v39 handles];
      v41 = [v40 anyObject];
      p_peerPaymentCounterpartHandle = &v20->_peerPaymentCounterpartHandle;
      peerPaymentCounterpartHandle = v20->_peerPaymentCounterpartHandle;
      v20->_peerPaymentCounterpartHandle = v41;
    }

    else
    {
      v44 = v20->_merchant;
      v20->_merchant = 0;

      p_peerPaymentCounterpartHandle = &v20->_peerPaymentCounterpartHandle;
      v37 = v20->_peerPaymentCounterpartHandle;
      v20->_peerPaymentCounterpartHandle = 0;
    }

    if (*p_peerPaymentCounterpartHandle)
    {
      v45 = objc_alloc_init(MEMORY[0x1E695CE18]);
      v46 = objc_alloc(MEMORY[0x1E69B8740]);
      v47 = [(PKTransactionHistoryDefaultDataSource *)v20 _contactKeysToFetch];
      v48 = [v46 initWithContactStore:v45 keysToFetch:v47];
      contactResolver = v20->_contactResolver;
      v20->_contactResolver = v48;

      v50 = objc_alloc_init(PKPeerPaymentCounterpartImageResolver);
      peerPaymentImageResolver = v20->_peerPaymentImageResolver;
      v20->_peerPaymentImageResolver = v50;

      [(PKTransactionHistoryDefaultDataSource *)v20 _loadContact];
    }

    else
    {
      v20->_contactLoaded = 1;
    }

    v18 = v100;
    v52 = [v15 type];
    if (v52 <= 4)
    {
      if (v52 == 2)
      {
        v74 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v20->_transactionSourceCollection paymentDataProvider:0];
        transactionFetcher = v20->_transactionFetcher;
        v20->_transactionFetcher = v74;

        v76 = v20->_transactionFetcher;
        v77 = [v15 startDate];
        v78 = [v15 endDate];
        [(PKDashboardTransactionFetcher *)v76 setLimit:0 startDate:v77 endDate:v78];

        v79 = v20->_transactionFetcher;
        v80 = [v15 transactionTypes];
        [(PKDashboardTransactionFetcher *)v79 filterTypes:v80];

        [(PKDashboardTransactionFetcher *)v20->_transactionFetcher setDelegate:v20];
        v81 = objc_alloc_init(MEMORY[0x1E696AB78]);
        formatterTitle = v20->_formatterTitle;
        v20->_formatterTitle = v81;

        v66 = v20->_formatterTitle;
        v67 = @"MMMM yyyy";
      }

      else
      {
        if (v52 != 3)
        {
LABEL_25:
          v83 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v84 = v20->_formatterTitle;
          v20->_formatterTitle = v83;

          v66 = v20->_formatterTitle;
          v67 = @"MMMM d";
          goto LABEL_26;
        }

        v56 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v20->_transactionSourceCollection paymentDataProvider:0];
        v57 = v20->_transactionFetcher;
        v20->_transactionFetcher = v56;

        v58 = v20->_transactionFetcher;
        v59 = [v15 startDate];
        v60 = [v15 endDate];
        [(PKDashboardTransactionFetcher *)v58 setLimit:0 startDate:v59 endDate:v60];

        [(PKDashboardTransactionFetcher *)v20->_transactionFetcher setDelegate:v20];
        v61 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v62 = v20->_formatterTitle;
        v20->_formatterTitle = v61;

        v63 = v20->_formatterTitle;
        v64 = objc_alloc(MEMORY[0x1E695DEE8]);
        v65 = [v64 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
        [(NSDateFormatter *)v63 setCalendar:v65];

        v66 = v20->_formatterTitle;
        v67 = @"y";
      }

LABEL_26:
      [(NSDateFormatter *)v66 setLocalizedDateFormatFromTemplate:v67];
      goto LABEL_33;
    }

    if (v52 != 5)
    {
      if (v52 == 7)
      {
        v53 = objc_alloc(MEMORY[0x1E69B8788]);
        transactionSourceCollection = v20->_transactionSourceCollection;
        v55 = 11;
        goto LABEL_23;
      }

      if (v52 == 9)
      {
        v53 = objc_alloc(MEMORY[0x1E69B8788]);
        transactionSourceCollection = v20->_transactionSourceCollection;
        v55 = 10;
LABEL_23:
        v72 = [v53 initWithTransactionType:v55 transactionSourceCollection:transactionSourceCollection paymentDataProvider:0];
        v73 = v20->_transactionFetcher;
        v20->_transactionFetcher = v72;

        [(PKDashboardTransactionFetcher *)v20->_transactionFetcher setLimit:0 startDate:0 endDate:0];
        [(PKDashboardTransactionFetcher *)v20->_transactionFetcher setDelegate:v20];
LABEL_33:
        [(PKTransactionHistoryDefaultDataSource *)v20 _notifyContentLoadedIfNecessary];

        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v68 = [v15 startDate];
    v69 = PKStartOfMonth();

    v70 = [v17 type];
    if (v70 == 1)
    {
      v71 = [v17 creditDetails];
    }

    else
    {
      if (v70 != 4)
      {
        v86 = 0;
        goto LABEL_30;
      }

      v71 = [v17 savingsDetails];
    }

    v85 = v71;
    v86 = [v71 createdDate];

LABEL_30:
    v99 = v86;
    if ([v86 compare:v69] == 1)
    {
      v87 = v86;

      v69 = v87;
    }

    v88 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v20->_transactionSourceCollection paymentDataProvider:0];
    v89 = v20->_transactionFetcher;
    v20->_transactionFetcher = v88;

    v90 = v20->_transactionFetcher;
    v91 = [v15 endDate];
    v92 = PKStartOfNextMonth();
    v93 = [v92 dateByAddingTimeInterval:-1.0];
    [(PKDashboardTransactionFetcher *)v90 setLimit:0 startDate:v69 endDate:v93];

    [(PKDashboardTransactionFetcher *)v20->_transactionFetcher setDelegate:v20];
    v94 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v95 = v20->_formatterTitle;
    v20->_formatterTitle = v94;

    [(NSDateFormatter *)v20->_formatterTitle setLocalizedDateFormatFromTemplate:@"MMMM d"];
    v96 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterMonth = v20->_formatterMonth;
    v20->_formatterMonth = v96;

    [(NSDateFormatter *)v20->_formatterMonth setLocalizedDateFormatFromTemplate:@"MMMM"];
    v18 = v100;
    goto LABEL_33;
  }

LABEL_34:

  return v20;
}

void __163__PKTransactionHistoryDefaultDataSource_initWithTransactionGroup_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards_fetcher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __163__PKTransactionHistoryDefaultDataSource_initWithTransactionGroup_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards_fetcher___block_invoke_2;
  v9[3] = &unk_1E8016FE8;
  v10 = v5;
  v11 = *(a1 + 32);
  v12 = v6;
  v15 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __163__PKTransactionHistoryDefaultDataSource_initWithTransactionGroup_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards_fetcher___block_invoke_2(uint64_t a1)
{
  v15 = [*(a1 + 32) account];
  v2 = [*(a1 + 32) consentStatus];
  v3 = [*(a1 + 32) institution];
  v4 = *(a1 + 40);
  v5 = *(v4 + 208);
  *(v4 + 208) = v3;

  v6 = v15;
  if (*(a1 + 48))
  {
    v7 = 1;
  }

  else
  {
    v7 = v15 == 0;
  }

  v8 = !v7 && v2 == 0;
  if (v8 && (*(a1 + 72) & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x1E6967DE8]);
    v10 = [*(a1 + 56) primaryAccountIdentifier];
    v11 = [*(a1 + 64) startDate];
    v12 = [v9 initWithPrimaryAccountIdentifier:v10 dateFromYear:v11 groupType:0];
    v13 = *(a1 + 40);
    v14 = *(v13 + 200);
    *(v13 + 200) = v12;

    [*(*(a1 + 40) + 200) setDelegate:?];
    [*(*(a1 + 40) + 200) performFetchAndStartObservingNotifications];
    v6 = v15;
  }
}

- (void)loadTransactionsIfNeeded
{
  v3 = [(PKTransactionHistoryState *)self->_state transactionHistory];

  if (!v3)
  {
    transactionFetcher = self->_transactionFetcher;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__PKTransactionHistoryDefaultDataSource_loadTransactionsIfNeeded__block_invoke;
    v5[3] = &unk_1E8014878;
    v5[4] = self;
    [(PKDashboardTransactionFetcher *)transactionFetcher reloadTransactionsWithCompletion:v5];
  }
}

- (void)updateGroup:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PKTransactionHistoryDefaultDataSource_updateGroup___block_invoke;
  v6[3] = &unk_1E8022B78;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(PKTransactionHistoryDefaultDataSource *)self updateStateWithBlock:v6 reloadBlock:&__block_literal_global_228];
}

uint64_t __53__PKTransactionHistoryDefaultDataSource_updateGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGroup:v3];
  [v4 setSelectedTransactions:*(a1 + 32)];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v5 _updateFooterTotalFromGroup:v6];
}

- (void)_updateFooterTotalFromGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 totalAmount];
  p_footerTotal = &self->_footerTotal;
  footerTotal = self->_footerTotal;
  self->_footerTotal = v5;

  if (!self->_footerTotal)
  {
    v8 = [v4 transactions];
    v9 = [v8 count];

    if (v9)
    {
      if ([v4 type] == 14)
      {
        v10 = [v4 searchQuery];
        v11 = [v10 peerPaymentToken];
        v12 = [v11 group];

        if (v12)
        {
          v25 = 0;
          obj = 0;
          v13 = [v4 transactions];
          [(PKTransactionHistoryDefaultDataSource *)self _p2pTotalsFromTransactions:v13 received:&obj sent:&v25];

          v14 = [obj amount];
          self->_hasReceived = [v14 pk_isPositiveNumber];

          v15 = [v25 amount];
          self->_hasSent = [v15 pk_isPositiveNumber];

          hasSent = self->_hasSent;
          if (self->_hasReceived)
          {
            objc_storeStrong(&self->_footerTotal, obj);
            if (hasSent)
            {
              v17 = v25;
              p_footerTotal = &self->_footerSecondaryTotal;
LABEL_11:
              v23 = v17;
              v24 = *p_footerTotal;
              *p_footerTotal = v23;
            }
          }

          else if (self->_hasSent)
          {
            v17 = v25;
            goto LABEL_11;
          }

          goto LABEL_13;
        }
      }

      v18 = [v4 transactions];
      v19 = [v4 startDate];
      v20 = [v4 endDate];
      v21 = [(PKTransactionHistoryDefaultDataSource *)self _totalSpendingFromTransactions:v18 startDate:v19 endDate:v20];
      v22 = self->_footerTotal;
      self->_footerTotal = v21;
    }
  }

LABEL_13:
}

- (PKTransactionHistoryDefaultDataSource)initWithInstallmentPlan:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8
{
  v14 = a3;
  v15 = [(PKTransactionHistoryDefaultDataSource *)self _initWithTransactionSourceCollection:a4 familyCollection:a5 account:a6 accountUserCollection:a7 physicalCards:a8];
  v16 = v15;
  if (v15)
  {
    v17 = v15[1];
    [v17 setType:3];
    [v17 setAssociatedInstallmentPlan:v14];
    v18 = [objc_alloc(MEMORY[0x1E69B8788]) initWithInstallmentPlan:v14 transactionSourceCollection:v16->_transactionSourceCollection paymentDataProvider:0];
    transactionFetcher = v16->_transactionFetcher;
    v16->_transactionFetcher = v18;

    [(PKDashboardTransactionFetcher *)v16->_transactionFetcher setLimit:0 startDate:0 endDate:0];
    [(PKDashboardTransactionFetcher *)v16->_transactionFetcher setDelegate:v16];
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v16 selector:sel__handleAccountsChangedNotification_ name:*MEMORY[0x1E69B9E60] object:0];

    v21 = [(PKTransactionHistoryDefaultDataSource *)v16 actionItems];
    v22 = v16->_transactionFetcher;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __154__PKTransactionHistoryDefaultDataSource_initWithInstallmentPlan_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards___block_invoke;
    v25[3] = &unk_1E801F078;
    v26 = v16;
    v27 = v21;
    v23 = v21;
    [(PKDashboardTransactionFetcher *)v22 reloadTransactionsWithCompletion:v25];
  }

  return v16;
}

void __154__PKTransactionHistoryDefaultDataSource_initWithInstallmentPlan_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __154__PKTransactionHistoryDefaultDataSource_initWithInstallmentPlan_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards___block_invoke_2;
  v4[3] = &unk_1E8022BC0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _handleTransactionHistoryUpdated:a2 stateUpdate:v4 reloadBlock:&__block_literal_global_183_1];
}

void __154__PKTransactionHistoryDefaultDataSource_initWithInstallmentPlan_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD50];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  [v4 addIndex:3];
  [v4 addIndex:4];
  [v3 reloadSections:v4];
}

- (PKTransactionHistoryDefaultDataSource)initWithTransactionGroups:(id)a3 headerGroup:(id)a4 regionUpdater:(id)a5 tokens:(id)a6 transactionSourceCollection:(id)a7 familyCollection:(id)a8 account:(id)a9 accountUserCollection:(id)a10 physicalCards:(id)a11
{
  v17 = a3;
  v18 = a4;
  v39 = a5;
  v38 = a6;
  v19 = [(PKTransactionHistoryDefaultDataSource *)self _initWithTransactionSourceCollection:a7 familyCollection:a8 account:a9 accountUserCollection:a10 physicalCards:a11];
  v20 = v19;
  if (v19)
  {
    v21 = v19[1];
    [v21 setType:4];
    [v21 setGroup:v18];
    [v21 setGroups:v17];
    objc_storeStrong(&v20->_tokens, a6);
    v22 = [(PKTransactionHistoryDefaultDataSource *)v20 _totalFromGroups:v17];
    footerTotal = v20->_footerTotal;
    v20->_footerTotal = v22;

    v24 = [v18 type];
    v25 = [v18 searchQuery];
    v26 = [v25 tokens];
    v27 = [v26 count];

    if (v24 == 14 && v27 == 1)
    {
      v28 = [v18 searchQuery];
      v29 = [v28 displayNameToken];
      v30 = [v29 merchant];
      merchant = v20->_merchant;
      v20->_merchant = v30;
    }

    else
    {
      v28 = v20->_merchant;
      v20->_merchant = 0;
    }

    objc_storeStrong(&v20->_regionUpdater, a5);
    [(PKWorldRegionUpdater *)v20->_regionUpdater addObserver:v20];
    if ([v18 type] == 3)
    {
      v32 = objc_alloc_init(MEMORY[0x1E696AB78]);
      formatterTitle = v20->_formatterTitle;
      v20->_formatterTitle = v32;

      v34 = v20->_formatterTitle;
      v35 = objc_alloc(MEMORY[0x1E695DEE8]);
      v36 = [v35 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      [(NSDateFormatter *)v34 setCalendar:v36];

      [(NSDateFormatter *)v20->_formatterTitle setLocalizedDateFormatFromTemplate:@"y"];
    }

    v20->_contactLoaded = 1;
    [(PKTransactionHistoryDefaultDataSource *)v20 _notifyContentLoadedIfNecessary];
  }

  return v20;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(PKAccountService *)self->_accountService unregisterObserver:self];
  [(PKPaymentDataProvider *)self->_dataProvider removeDelegate:self];
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryDefaultDataSource;
  [(PKTransactionHistoryDefaultDataSource *)&v4 dealloc];
}

- (void)updateGroups:(id)a3 headerGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PKTransactionHistoryDefaultDataSource_updateGroups_headerGroup___block_invoke;
  v10[3] = &unk_1E8022BE8;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
  [(PKTransactionHistoryDefaultDataSource *)self updateStateWithBlock:v10 reloadBlock:&__block_literal_global_188];
}

void __66__PKTransactionHistoryDefaultDataSource_updateGroups_headerGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setGroup:v3];
  [v4 setGroups:*(a1 + 40)];

  v5 = [*(a1 + 48) _totalFromGroups:*(a1 + 40)];
  v6 = *(a1 + 48);
  v7 = *(v6 + 248);
  *(v6 + 248) = v5;
}

- (BOOL)areTransactionsEditable
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(PKTransactionHistoryState *)self->_state transactionHistory];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDeletable])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (NSString)footerTitle
{
  v3 = self->_state;
  v4 = [(PKTransactionHistoryState *)v3 transactionHistory];
  v5 = [(PKTransactionHistoryState *)v3 group];
  v6 = [(PKTransactionHistoryState *)v3 selectedTransactions];
  v7 = v6;
  if (!v4)
  {
    v8 = [v6 transactions];
    if ([v8 count])
    {
    }

    else
    {
      v9 = [(PKTransactionHistoryState *)v3 groups];
      v10 = [v9 count];

      if (!v10)
      {
        goto LABEL_61;
      }
    }
  }

  v11 = [(PKTransactionHistoryState *)v3 type];
  if (v11 == 1)
  {
    v21 = [v7 transactions];
    v22 = [v21 count];

    if (v22)
    {
      v23 = [v7 startDate];
      v24 = v7;
      goto LABEL_23;
    }

    v34 = [(PKTransactionHistoryState *)v3 featuredTransaction];

    if (v34)
    {
      v35 = [(PKTransactionHistoryState *)v3 featuredTransaction];
      v23 = [v35 transactionDate];

      v26 = [MEMORY[0x1E695DEE8] currentCalendar];
      v36 = [MEMORY[0x1E695DF00] date];
      v32 = [v26 components:14 fromDate:v36];

      if (![v26 date:v23 matchesComponents:v32])
      {
        v46 = PKLocalizedFeatureString();
        v47 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v47 setLocalizedDateFormatFromTemplate:@"MMMM"];
        v54 = [v47 stringFromDate:v23];
        v56 = v23;
        v48 = v46;
        v14 = PKStringWithValidatedFormat();

        v23 = v56;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    if (v4)
    {
      v41 = [v4 lastObject];
      v23 = [v41 transactionDate];

      v42 = [v4 firstObject];
      v26 = [v42 transactionDate];

      v14 = 0;
      if (v23 && v26)
      {
        v43 = [MEMORY[0x1E695DF00] date];
        if ([v26 compare:v43] == -1)
        {
          v44 = v43;
        }

        else
        {
          v44 = v26;
        }

        v45 = v44;

        v14 = PKDateRangeStringFromDateToDate();

        v26 = v45;
      }

      goto LABEL_55;
    }

    goto LABEL_66;
  }

  if (v11 != 4 && v11 != 2)
  {
    goto LABEL_61;
  }

  v13 = [v5 type];
  v14 = 0;
  if (v13 <= 8)
  {
    if (v13 < 2)
    {
      goto LABEL_32;
    }

    if (v13 == 5)
    {
      v19 = [MEMORY[0x1E695DEE8] currentCalendar];
      v40 = [v5 startDate];
      if ([v19 isDateInToday:v40])
      {
        v14 = PKLocalizedString(&cfstr_RelativeDateTo.isa);
      }

      else
      {
        if ([v19 isDateInYesterday:v40])
        {
          PKRelativeDateStringWithFullDateForUnits();
        }

        else
        {
          [(NSDateFormatter *)self->_formatterTitle stringFromDate:v40];
        }
        v53 = ;
        v14 = [v53 pk_uppercaseFirstStringForPreferredLocale];
      }

      goto LABEL_72;
    }

    if (v13 != 7)
    {
      goto LABEL_62;
    }

    v27 = [(PKTransactionHistoryState *)v3 account];
    v28 = [v27 feature];

    if (v28 == 5)
    {
      v52 = [MEMORY[0x1E695DF00] date];
      v23 = PKYearStringFromDate();

      v14 = PKLocalizedFeatureString();
      goto LABEL_56;
    }

    if (v28 != 2)
    {
      goto LABEL_61;
    }

LABEL_66:
    v14 = PKLocalizedFeatureString();
    goto LABEL_62;
  }

  if (v13 > 0x10)
  {
    goto LABEL_62;
  }

  if (((1 << v13) & 0x1AC00) != 0)
  {
LABEL_32:
    v29 = [v5 startDate];
    if (v29)
    {
      v30 = v29;
      v31 = [v5 endDate];

      if (v31)
      {
        v23 = [v5 startDate];
        v26 = [v5 endDate];
LABEL_35:
        v14 = PKDateRangeStringFromDateToDate();
LABEL_55:

LABEL_56:
        goto LABEL_62;
      }
    }

    if ([v4 count])
    {
      v23 = [v4 lastObject];
      v26 = [v23 transactionDate];
      v32 = [v4 firstObject];
      v33 = [v32 transactionDate];
      v14 = PKDateRangeStringFromDateToDate();
      goto LABEL_38;
    }

LABEL_61:
    v14 = 0;
    goto LABEL_62;
  }

  if (v13 == 9)
  {
    v37 = [v7 transactions];
    v38 = [v37 firstObject];
    v23 = [v38 transactionDate];

    v26 = [MEMORY[0x1E695DEE8] currentCalendar];
    v39 = [MEMORY[0x1E695DF00] date];
    v32 = [v26 components:14 fromDate:v39];

    if ([v26 date:v23 matchesComponents:v32])
    {
LABEL_43:
      v14 = PKLocalizedFeatureString();
      goto LABEL_54;
    }

    v33 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v33 setLocalizedDateFormatFromTemplate:@"MMMM"];
    v55 = [v33 stringFromDate:v23];
    v14 = PKLocalizedFeatureString();

LABEL_38:
LABEL_54:

    goto LABEL_55;
  }

  if (v13 != 14)
  {
    goto LABEL_62;
  }

  v15 = [v5 searchQuery];
  v16 = [v15 peerPaymentToken];

  if (!v16)
  {
    v49 = [(PKCurrencyAmount *)self->_footerTotal amount];
    v50 = [v49 pk_isZeroNumber];

    if (v50)
    {
      goto LABEL_61;
    }

    v23 = [v5 startDate];
    v24 = v5;
LABEL_23:
    v25 = [v24 endDate];
    v26 = v25;
    v14 = 0;
    if (!v23 || !v25)
    {
      goto LABEL_55;
    }

    goto LABEL_35;
  }

  if ([v5 type] == 14)
  {
    v17 = [v5 searchQuery];
    v18 = [v17 peerPaymentToken];
    v19 = [v18 group];

    if (v19)
    {
      if (self->_hasReceived)
      {
        v20 = @"TRANSACTIONS_TOTAL_RECEIVED";
LABEL_76:
        v14 = PKLocalizedPeerPaymentString(&v20->isa);
        goto LABEL_72;
      }

      if (self->_hasSent)
      {
        v20 = @"TRANSACTIONS_TOTAL_SENT";
        goto LABEL_76;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v14 = 0;
LABEL_72:

LABEL_62:

  return v14;
}

- (NSString)footerSecondaryTitle
{
  v3 = [(PKTransactionHistoryState *)self->_state type];
  if (v3 == 1)
  {
    footerSecondaryTotal = self->_footerSecondaryTotal;
    if (footerSecondaryTotal)
    {
      v12 = [(PKCurrencyAmount *)footerSecondaryTotal amount];
      v13 = [MEMORY[0x1E696AB90] zero];
      v14 = [v12 isEqual:v13];

      if ((v14 & 1) == 0)
      {
        v10 = PKLocalizedFeatureString();
        goto LABEL_27;
      }
    }

LABEL_10:
    v10 = 0;
    goto LABEL_27;
  }

  if (v3 != 2)
  {
    goto LABEL_10;
  }

  v4 = [(PKTransactionHistoryState *)self->_state group];
  v5 = [v4 type];
  if (v5 == 14)
  {
    v17 = [v4 searchQuery];
    v10 = [v17 peerPaymentToken];

    if (!v10)
    {
      goto LABEL_26;
    }

    if ([v4 type] == 14)
    {
      v18 = [v4 searchQuery];
      v19 = [v18 peerPaymentToken];
      v20 = [v19 group];

      if (v20 && self->_hasReceived && self->_hasSent)
      {
        v10 = PKLocalizedPeerPaymentString(&cfstr_TransactionsTo_1.isa);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      v20 = 0;
    }

    v10 = 0;
    goto LABEL_25;
  }

  if (v5 != 7)
  {
    if (v5 == 5)
    {
      v6 = [v4 startDate];
      v7 = [MEMORY[0x1E695DEE8] currentCalendar];
      v8 = [MEMORY[0x1E695DF00] date];
      v9 = [v7 components:14 fromDate:v8];

      if ([v7 date:v6 matchesComponents:v9])
      {
        v10 = PKLocalizedFeatureString();
      }

      else
      {
        v21 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v21 setLocalizedDateFormatFromTemplate:@"MMMM"];
        v23 = [v21 stringFromDate:v6];
        v10 = PKLocalizedFeatureString();
      }

      goto LABEL_26;
    }

    goto LABEL_14;
  }

  v15 = [(PKTransactionHistoryState *)self->_state account];
  v16 = [v15 feature];

  if (v16 != 5)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_26;
  }

  v10 = PKLocalizedFeatureString();
LABEL_26:

LABEL_27:

  return v10;
}

- (id)navigationBarTitle
{
  v3 = self->_state;
  v4 = [(PKTransactionHistoryState *)v3 group];
  v5 = [(PKTransactionHistoryState *)v3 type];
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 != 2 && v5 != 4)
    {
      if (v5 != 3)
      {
        goto LABEL_45;
      }

      v12 = [(PKTransactionHistoryState *)v3 associatedInstallmentPlan];
      v13 = [v12 product];
      v14 = [v13 model];
      goto LABEL_14;
    }

    v6 = 0;
    switch([v4 type])
    {
      case 0:
        [v4 merchantCategory];
        v11 = PKLocalizedStringFromMerchantCategory();
        goto LABEL_24;
      case 1:
        v12 = [v4 merchant];
        v27 = [v12 displayName];
        goto LABEL_43;
      case 2:
      case 3:
        formatterTitle = self->_formatterTitle;
        v9 = [v4 startDate];
        v10 = [(NSDateFormatter *)formatterTitle stringFromDate:v9];
        v6 = [v10 pk_uppercaseFirstStringForPreferredLocale];

        goto LABEL_45;
      case 4:
      case 5:
      case 6:
      case 8:
      case 9:
      case 10:
      case 11:
        v11 = PKLocalizedFeatureString();
        goto LABEL_24;
      case 7:
        v12 = [(PKTransactionHistoryState *)self->_state account];
        [v12 feature];
        goto LABEL_21;
      case 13:
        v12 = [v4 regions];
        v13 = [v12 firstObject];
        v14 = [v13 localizedName];
        goto LABEL_14;
      case 14:
        v12 = [v4 searchQuery];
        v18 = [v12 tokens];
        v19 = [v18 count];

        if (v19 != 1)
        {
          goto LABEL_42;
        }

        v20 = [v12 locationTokens];
        v21 = [v20 count];

        if (v21)
        {
          v22 = [v12 locationTokens];
          v23 = [v22 lastObject];
          v24 = [v23 group];
          v25 = [v24 regions];
          v26 = [v25 firstObject];

          v6 = [v26 localizedName];

          goto LABEL_44;
        }

        v28 = [v12 categoryToken];

        if (v28)
        {
          v29 = [v12 categoryToken];
          v30 = [v29 group];
          [v30 merchantCategory];

          v27 = PKLocalizedStringFromMerchantCategory();
          goto LABEL_43;
        }

        v31 = [v12 transactionTypes];
        v32 = [v31 count];

        if (v32)
        {
          v33 = [v12 transactionTypes];
          v34 = [v33 firstObject];
          v35 = [v34 integerValue];

          if (v35 > 6)
          {
            if (v35 != 7)
            {
              if (v35 == 11)
              {
                v13 = [(PKTransactionHistoryState *)self->_state account];
                [v13 feature];
                v14 = PKLocalizedFeatureString();
LABEL_14:
                v6 = v14;

LABEL_44:
                goto LABEL_45;
              }

              if (v35 != 10)
              {
                goto LABEL_42;
              }
            }
          }

          else if (v35 != 1)
          {
            if (v35 == 5)
            {
              v36 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
              goto LABEL_51;
            }

            if (v35 == 6)
            {
              v36 = @"TRANSACTION_TYPE_TOP_UP";
LABEL_51:
              v27 = PKLocalizedPaymentString(&v36->isa);
              goto LABEL_43;
            }

LABEL_42:
            v27 = PKLocalizedString(&cfstr_SearchResults.isa);
            goto LABEL_43;
          }
        }

        else
        {
          v37 = [v12 transactionSources];
          v38 = [v37 count];

          if (!v38)
          {
            goto LABEL_42;
          }

          v39 = [v12 transactionSources];
          v40 = [v39 firstObject];
          v41 = [v40 integerValue];

          if (v41 != 6 && v41 != 5)
          {
            goto LABEL_42;
          }
        }

LABEL_21:
        v27 = PKLocalizedFeatureString();
LABEL_43:
        v6 = v27;
        goto LABEL_44;
      default:
        goto LABEL_45;
    }
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v11 = [(PKMerchant *)self->_merchant displayName];
LABEL_24:
      v6 = v11;
    }
  }

  else
  {
    v6 = self->_peerPaymentCounterpartHandle;
    v15 = [(PKTransactionHistoryState *)v3 featuredTransaction];
    v16 = [v15 peerPaymentPaymentMode];

    if (v16 != 2)
    {
      v17 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v6 contact:self->_contact];

      v6 = v17;
    }
  }

LABEL_45:

  return v6;
}

- (void)setDataSourceDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  if (self->_contentIsLoaded)
  {
    [v4 contentIsLoaded];
  }
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = self->_state;
  v6 = [(PKTransactionHistoryState *)v5 associatedInstallmentPlan];
  v7 = [(PKTransactionHistoryState *)v5 featuredTransaction];
  v8 = [(PKTransactionHistoryState *)v5 peerPaymentPendingRequest];
  v9 = [v4 section];
  v10 = 0;
  if (v9 > 2)
  {
    if (v9 <= 4)
    {
      if (v9 != 3)
      {
        v11 = [(PKTransactionHistoryState *)v5 actionItems];
        v10 = [v11 objectAtIndex:{objc_msgSend(v4, "item")}];

        goto LABEL_49;
      }

      v31 = [v4 item];
      if (v31 != 1)
      {
        if (!v31)
        {
          v10 = objc_alloc_init(PKDashboardInstallmentPlanStatusItem);
          [(PKDashboardInstallmentPlanStatusItem *)v10 setInstallmentPlan:v6];
          v32 = [(PKTransactionHistoryState *)v5 account];
          [(PKDashboardInstallmentPlanStatusItem *)v10 setAccount:v32];

          [(PKDashboardInstallmentPlanStatusItem *)v10 setTransactionSourceCollection:self->_transactionSourceCollection];
          [(PKDashboardInstallmentPlanStatusItem *)v10 setAccountUserCollection:self->_accountUserCollection];
          [(PKDashboardInstallmentPlanStatusItem *)v10 setFamilyMemberCollection:self->_familyCollection];
          goto LABEL_49;
        }

        goto LABEL_31;
      }

      v10 = objc_alloc_init(PKDashboardTextActionItem);
      [(PKDashboardInstallmentPlanStatusItem *)v10 setLayoutStyle:0];
      v39 = PKLocalizedFeatureString();
      [(PKDashboardInstallmentPlanStatusItem *)v10 setTitle:v39];

      v14 = [v6 totalAmount];
      if (v14)
      {
        v40 = [v6 currencyCode];

        if (v40)
        {
          v41 = [v6 totalAmount];
          v42 = [v6 currencyCode];
          v43 = PKCurrencyAmountCreate(v41, v42);

          v14 = [v43 formattedStringValue];
        }

        else
        {
          v14 = 0;
        }
      }

      [(PKDashboardInstallmentPlanStatusItem *)v10 setSubtitle:v14];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __57__PKTransactionHistoryDefaultDataSource_itemAtIndexPath___block_invoke_2;
      v64[3] = &unk_1E8022C38;
      v65 = v5;
      v66 = v6;
      v67 = self;
      [(PKDashboardInstallmentPlanStatusItem *)v10 setAction:v64];

      goto LABEL_48;
    }

    if (v9 == 5)
    {
      v33 = [v4 row];
      v34 = [(PKTransactionHistoryState *)v5 transactionHistory];
      v35 = [v34 count];

      if (v33 < v35)
      {
        v36 = [(PKTransactionHistoryState *)v5 transactionHistory];
        v37 = [v36 objectAtIndex:v33];

        v10 = [(PKTransactionHistoryDefaultDataSource *)self _transactionItemForTransaction:v37 inGroup:0];

        goto LABEL_49;
      }

      goto LABEL_31;
    }

    if (v9 != 6)
    {
      goto LABEL_49;
    }

    v17 = [v4 row];
    v18 = [(PKTransactionHistoryState *)v5 groups];
    v19 = [v18 count];

    if (v17 < v19)
    {
      v20 = [(PKTransactionHistoryState *)v5 groups];
      v14 = [v20 objectAtIndex:v17];

      if (self->_regionUpdater && [v14 type] == 13)
      {
        regionUpdater = self->_regionUpdater;
        v22 = [v14 regions];
        v23 = [v22 firstObject];
        [(PKWorldRegionUpdater *)regionUpdater updateCoordinatesForWorldRegionIfNeeded:v23];
      }

      v24 = [(PKTransactionHistoryDefaultDataSource *)self _groupItemForTransaction:v14];
      goto LABEL_47;
    }

LABEL_31:
    v10 = 0;
    goto LABEL_49;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        goto LABEL_49;
      }

      v12 = [v4 row];
      v13 = [(PKTransactionHistoryState *)v5 selectedTransactions];
      v14 = [v13 transactions];

      if (v12 < [v14 count])
      {
        v15 = [v14 objectAtIndex:v12];
        v16 = [(PKTransactionHistoryState *)v5 selectedTransactions];
        v10 = [(PKTransactionHistoryDefaultDataSource *)self _transactionItemForTransaction:v15 inGroup:v16];

LABEL_48:
        goto LABEL_49;
      }

      goto LABEL_31;
    }

    v38 = [v4 row];
    if (v38 != 1)
    {
      if (!v38)
      {
        v10 = [(PKTransactionHistoryDefaultDataSource *)self _transactionItemForTransaction:v7 inGroup:0];
        [(PKDashboardInstallmentPlanStatusItem *)v10 setIsFeaturedTransaction:1];
        goto LABEL_49;
      }

      v45 = [v4 row];
      if (v6)
      {
        goto LABEL_45;
      }

      goto LABEL_38;
    }

    v44 = [v7 preferredLocation];

    if (v44)
    {
      v10 = objc_alloc_init(PKDashboardTransactionMapItem);
      [(PKDashboardInstallmentPlanStatusItem *)v10 setTransaction:v7];
      goto LABEL_49;
    }

    if (v6)
    {
      v10 = objc_alloc_init(PKDashboardTransactionInstallmentItem);
      [(PKDashboardInstallmentPlanStatusItem *)v10 setInstallmentPlan:v6];
      v47 = [(PKTransactionHistoryState *)self->_state account];
      [(PKDashboardInstallmentPlanStatusItem *)v10 setAccount:v47];

      [(PKDashboardInstallmentPlanStatusItem *)v10 setTransactionSourceCollection:self->_transactionSourceCollection];
      goto LABEL_49;
    }

    v51 = [(PKTransactionHistoryState *)v5 associatedReceipt];

    if (!v51)
    {
      if (v8)
      {
        v10 = objc_alloc_init(PKDashboardTextActionItem);
        peerPaymentPendingRequestGroupName = self->_peerPaymentPendingRequestGroupName;
        if (peerPaymentPendingRequestGroupName)
        {
          v55 = peerPaymentPendingRequestGroupName;
        }

        else
        {
          v55 = PKLocalizedPeerPaymentString(&cfstr_GroupedPayment_3.isa);
        }

        v56 = v55;
        v57 = PKPeerPaymentTotalAmountReceivedForPendingRequest(v8);
        v58 = v57;
        if (v57)
        {
          v59 = [v57 minimalFormattedStringValue];
          v63 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen.isa, &stru_1F3BD5BF0.isa, v59);
        }

        else
        {
          v63 = 0;
        }

        [(PKDashboardInstallmentPlanStatusItem *)v10 setTitle:v56];
        v60 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
        [(PKDashboardInstallmentPlanStatusItem *)v10 setTitleFont:v60];

        [(PKDashboardInstallmentPlanStatusItem *)v10 setSubtitle:v63];
        v61 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(PKDashboardInstallmentPlanStatusItem *)v10 setSubtitleColor:v61];

        v62 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
        [(PKDashboardInstallmentPlanStatusItem *)v10 setSubtitleFont:v62];

        [(PKDashboardInstallmentPlanStatusItem *)v10 setActionStyle:0];
        [(PKDashboardInstallmentPlanStatusItem *)v10 setDisclosureAlignment:1];
        [(PKDashboardInstallmentPlanStatusItem *)v10 setLayoutStyle:2];
        objc_initWeak(&location, self);
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __57__PKTransactionHistoryDefaultDataSource_itemAtIndexPath___block_invoke;
        v68[3] = &unk_1E8022C10;
        objc_copyWeak(&v69, &location);
        [(PKDashboardInstallmentPlanStatusItem *)v10 setAction:v68];
        objc_destroyWeak(&v69);
        objc_destroyWeak(&location);

        goto LABEL_49;
      }

      v45 = [v4 row];
LABEL_38:
      v46 = [v7 preferredLocation];
      if (v46)
      {
      }

      else
      {
        v48 = [(PKTransactionHistoryState *)v5 associatedReceipt];

        if (!v48)
        {
          v49 = v45 - 1;
          goto LABEL_46;
        }
      }

LABEL_45:
      v49 = v45 - 2;
LABEL_46:
      v14 = [(PKTransactionHistoryState *)v5 featuredTransactionActions];
      v24 = [v14 objectAtIndex:v49];
LABEL_47:
      v10 = v24;
      goto LABEL_48;
    }

    v10 = objc_alloc_init(PKDashboardTransactionReceiptItem);
    v52 = [(PKTransactionHistoryState *)v5 associatedReceipt];
    [(PKDashboardInstallmentPlanStatusItem *)v10 setReceipt:v52];

    [(PKDashboardInstallmentPlanStatusItem *)v10 setTransaction:v7];
    [(PKDashboardInstallmentPlanStatusItem *)v10 setTransactionSourceCollection:self->_transactionSourceCollection];
    [(PKDashboardInstallmentPlanStatusItem *)v10 setFamilyCollection:self->_familyCollection];
    v53 = [(PKTransactionHistoryState *)self->_state account];
    [(PKDashboardInstallmentPlanStatusItem *)v10 setAccount:v53];

    [(PKDashboardInstallmentPlanStatusItem *)v10 setAccountUserCollection:self->_accountUserCollection];
    [(PKDashboardInstallmentPlanStatusItem *)v10 setPhysicalCards:self->_physicalCards];
  }

  else
  {
    if ([(PKTransactionHistoryState *)v5 type]== 4)
    {
      if (self->_regionUpdater)
      {
        v25 = [(PKTransactionHistoryState *)v5 group];
        v26 = [v25 type];

        if (v26 == 13)
        {
          v27 = self->_regionUpdater;
          v28 = [(PKTransactionHistoryState *)v5 group];
          v29 = [v28 regions];
          v30 = [v29 firstObject];
          [(PKWorldRegionUpdater *)v27 updateCoordinatesForWorldRegionIfNeeded:v30];
        }
      }
    }

    v10 = [(PKTransactionHistoryDefaultDataSource *)self _headerItem];
  }

LABEL_49:

  return v10;
}

void __57__PKTransactionHistoryDefaultDataSource_itemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 1);
    v6 = [PKPeerPaymentGroupedPaymentsViewController alloc];
    v7 = [v5 peerPaymentPendingRequest];
    v8 = [(PKPeerPaymentGroupedPaymentsViewController *)v6 initWithRequest:v7 transactionSourceCollection:v4[4] context:1];

    v9 = [v11 pkui_viewControllerFromResponderChain];
    v10 = [v9 navigationController];
    [v10 pushViewController:v8 animated:1];
  }
}

void __57__PKTransactionHistoryDefaultDataSource_itemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PKInstallmentPlanDetailsViewController alloc];
  v5 = [*(a1 + 32) account];
  v8 = [(PKInstallmentPlanDetailsViewController *)v4 initWithAccount:v5 installmentPlan:*(a1 + 40) accountService:*(*(a1 + 48) + 176) accountUserCollection:*(*(a1 + 48) + 88) familyMemberCollection:*(*(a1 + 48) + 48) transactionSourceCollection:*(*(a1 + 48) + 32)];

  v6 = [v3 pkui_viewControllerFromResponderChain];

  v7 = [v6 navigationController];
  [v7 pushViewController:v8 animated:1];
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  v4 = self->_state;
  v5 = [(PKTransactionHistoryState *)v4 type];
  v6 = 0;
  if (a3 <= 2)
  {
    if (!a3)
    {
      v10 = v5 == 4 || v5 == 2;
      if (!v10 || (-[PKTransactionHistoryState group](v4, "group"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 type], v11, (v12 & 0xFFFFFFFFFFFFFFFELL) != 2))
      {
        v6 = 1;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v8 = [(PKTransactionHistoryState *)v4 selectedTransactions];
        v9 = [v8 transactions];
        v6 = [v9 count];

LABEL_25:
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (v5 == 2)
    {
      goto LABEL_27;
    }

    v6 = [(PKTransactionHistoryState *)v4 featuredTransaction];

    if (!v6)
    {
      goto LABEL_28;
    }

    v16 = [(PKTransactionHistoryState *)v4 featuredTransaction];
    v17 = [v16 preferredLocation];
    if (v17 || ([(PKTransactionHistoryState *)v4 associatedInstallmentPlan], (v17 = objc_claimAutoreleasedReturnValue()) != 0) || ([(PKTransactionHistoryState *)v4 associatedReceipt], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v19 = [(PKTransactionHistoryState *)v4 peerPaymentPendingRequest];

      if (!v19)
      {
        v18 = 1;
        goto LABEL_35;
      }
    }

    v18 = 2;
LABEL_35:
    v8 = [(PKTransactionHistoryState *)v4 featuredTransactionActions];
    v6 = [v8 count] + v18;
    goto LABEL_25;
  }

  if (a3 <= 4)
  {
    if (a3 != 3)
    {
      v7 = [(PKTransactionHistoryState *)v4 actionItems];
LABEL_24:
      v8 = v7;
      v6 = [v7 count];
      goto LABEL_25;
    }

    if (v5 == 3)
    {
      v13 = [(PKTransactionHistoryState *)v4 account];
      v14 = [v13 accessLevel];

      if (v14 == 1)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_28;
    }

LABEL_27:
    v6 = 0;
    goto LABEL_28;
  }

  if (a3 == 5)
  {
    v7 = [(PKTransactionHistoryState *)v4 transactionHistory];
    goto LABEL_24;
  }

  if (a3 == 6)
  {
    v7 = [(PKTransactionHistoryState *)v4 groups];
    goto LABEL_24;
  }

LABEL_28:

  return v6;
}

- (id)titleForSection:(unint64_t)a3
{
  v5 = self->_state;
  v6 = [(PKTransactionHistoryState *)v5 selectedTransactions];
  v7 = [v6 endDate];
  v8 = 0;
  if (a3 > 4)
  {
    if (a3 != 5)
    {
      if (a3 != 6)
      {
        goto LABEL_64;
      }

      v12 = [(PKTransactionHistoryState *)v5 groups];
      v13 = [v12 count];

      if (!v13)
      {
        goto LABEL_63;
      }

      v14 = [(PKTransactionHistoryState *)v5 groups];
      v15 = [v14 firstObject];
      v16 = [v15 type];

      v8 = 0;
      if (v16 <= 11)
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_64;
          }

          v17 = @"SEARCH_TITLE_MERCHANTS";
        }

        else
        {
          v17 = @"SEARCH_TITLE_CATEGORIES";
        }

        goto LABEL_44;
      }

      if (v16 != 12)
      {
        if (v16 == 13)
        {
          v17 = @"SEARCH_TITLE_LOCATION";
          goto LABEL_44;
        }

        if (v16 != 16)
        {
          goto LABEL_64;
        }
      }

      v17 = @"SEARCH_TITLE_PEOPLE";
LABEL_44:
      v27 = PKLocalizedString(&v17->isa);
      goto LABEL_61;
    }

    if (!self->_contentIsLoaded)
    {
      goto LABEL_63;
    }

    v20 = [(PKTransactionHistoryState *)v5 transactionHistory];
    v21 = [v20 count];

    if (!v21)
    {
      goto LABEL_63;
    }

    v22 = [(PKTransactionHistoryState *)v5 type];
    v8 = 0;
    if (v22 <= 1)
    {
      if (v22)
      {
        if (v22 != 1)
        {
          goto LABEL_64;
        }

        v23 = @"PAYMENT_TRANSACTION_HISTORY";
        goto LABEL_60;
      }

      goto LABEL_58;
    }

    if (v22 == 2)
    {
      v29 = [(PKTransactionHistoryState *)v5 group];
      v30 = [v29 type];

      if (v30 <= 6)
      {
        if ((v30 - 2) < 2)
        {
          goto LABEL_63;
        }

        if (v30 != 5)
        {
          goto LABEL_59;
        }

        v31 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
        v32 = [v31 components:8 fromDate:v7];
        [v32 month];

        v18 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
        v28 = PKLocalizedString(v18);
        goto LABEL_46;
      }

      if (v30 != 9)
      {
        if (v30 != 7)
        {
          goto LABEL_59;
        }

LABEL_58:
        v23 = @"PEER_PAYMENT_HISTORY";
LABEL_60:
        v27 = PKLocalizedPaymentString(&v23->isa);
LABEL_61:
        v19 = v27;
        if (v27)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }
    }

    else if (v22 != 3)
    {
      goto LABEL_64;
    }

    v27 = PKLocalizedFeatureString();
    goto LABEL_61;
  }

  if (a3 == 1)
  {
    v18 = [(PKTransactionHistoryState *)v5 featuredTransaction];
    if ([(NSString *)v18 transactionType]!= 3 || [(NSString *)v18 peerPaymentType]!= 3 || [(NSString *)v18 transactionStatus])
    {
      v19 = 0;
      goto LABEL_47;
    }

    v28 = PKLocalizedPaymentString(&cfstr_PeerPaymentPen_13.isa);
    goto LABEL_46;
  }

  if (a3 != 2)
  {
    goto LABEL_64;
  }

  v9 = [v6 transactions];
  v10 = [v9 count];

  if (!v10)
  {
    goto LABEL_63;
  }

  v11 = [v6 type];
  v8 = 0;
  if (v11 <= 5)
  {
    if (v11 < 2 || v11 == 4)
    {
      goto LABEL_37;
    }

    if (v11 != 5)
    {
      goto LABEL_64;
    }

    if ([(NSCalendar *)self->_currentCalendar isDateInToday:v7])
    {
      v17 = @"RELATIVE_DATE_RECEIVED_TODAY";
      goto LABEL_44;
    }

    if ([(NSCalendar *)self->_currentCalendar isDateInYesterday:v7])
    {
      v17 = @"RELATIVE_DATE_RECEIVED_YESTERDAY";
      goto LABEL_44;
    }

    v18 = [(NSDateFormatter *)self->_formatterTitle stringFromDate:v7];
    v28 = PKLocalizedString(&cfstr_RelativeDateRe_1.isa, &stru_1F3BD5BF0.isa, v18);
LABEL_46:
    v19 = v28;
LABEL_47:

    if (v19)
    {
LABEL_62:
      v8 = [PKDashboardHeaderTextItem itemWithHeaderText:v19];

      goto LABEL_64;
    }

LABEL_63:
    v8 = 0;
    goto LABEL_64;
  }

  if (v11 > 0x10)
  {
    goto LABEL_64;
  }

  if (((1 << v11) & 0x18140) != 0)
  {
LABEL_37:
    v24 = [(PKTransactionHistoryState *)v5 transactionHistory];
    v25 = [v24 count];

    if (v25)
    {
      v18 = [v6 startDate];
      v26 = [v6 endDate];
      v19 = PKDateRangeStringFromDateToDate();

      goto LABEL_47;
    }

LABEL_59:
    v23 = @"PAYMENT_TRANSACTIONS";
    goto LABEL_60;
  }

  if (v11 == 12)
  {
    v27 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionHis.isa);
    goto LABEL_61;
  }

  if (v11 == 14)
  {
    goto LABEL_59;
  }

LABEL_64:

  return v8;
}

- (id)footerTextItemForSection:(unint64_t)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v4 = [(PKTransactionHistoryState *)self->_state featuredTransaction];
    v5 = [v4 preferredLocation];
    if (v5)
    {
      v6 = v5;
      v7 = [(PKCoarseLocationMonitor *)self->_coarseLocationMonitor coarseLocationEnabled];

      if (v7)
      {
        v8 = PKLocalizedPaymentString(&cfstr_CoarseLocation.isa);
        v9 = PKLocalizedPaymentString(&cfstr_CoarseLocation_0.isa, &stru_1F3BD5BF0.isa, v8);
        v10 = [PKDashboardFooterTextItem itemWithFooterText:v9];
        v11 = [MEMORY[0x1E69DC888] linkColor];
        [v10 setLinkTextColor:v11];

        v12 = [[PKTextRangeHyperlink alloc] initWithLinkText:v8 action:&__block_literal_global_341];
        v15[0] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [v10 setSources:v13];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

void __66__PKTransactionHistoryDefaultDataSource_footerTextItemForSection___block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/LOCATION"];
  v1 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [v0 absoluteString];
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_1BD026000, v1, OS_LOG_TYPE_DEFAULT, "Opening URL: %@", &v3, 0xCu);
  }

  PKOpenURL();
}

- (void)updateStateWithBlock:(id)a3 reloadBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PKTransactionHistoryDefaultDataSource_updateStateWithBlock_reloadBlock___block_invoke;
  v11[3] = &unk_1E8022C60;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [WeakRetained performBatchUpdates:v11 completion:0];
}

void __74__PKTransactionHistoryDefaultDataSource_updateStateWithBlock_reloadBlock___block_invoke(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[6];
  WeakRetained = objc_loadWeakRetained((a1[4] + 128));
  (*(v2 + 16))(v2, WeakRetained);
}

- (id)_totalSpendingFromTransactions:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v29 = a4;
  v28 = a5;
  if ([v7 count])
  {
    v8 = [MEMORY[0x1E696AB90] zero];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v27 = v7;
      v11 = 0;
      if (v29)
      {
        v12 = v28 == 0;
      }

      else
      {
        v12 = 1;
      }

      v13 = *v32;
      v14 = !v12;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [v16 transactionType];
          if (v17 <= 0xD)
          {
            if (((1 << v17) & 0x2882) != 0 || !v17 && ((v23 = [v16 transactionStatus], v23 <= 8) ? (v24 = ((1 << v23) & 0x103) == 0) : (v24 = 1), !v24))
            {
              if (!v14)
              {
                goto LABEL_17;
              }

              v18 = [v16 transactionDate];
              if ([v18 compare:v29] != -1)
              {
                v19 = [v18 compare:v28];

                if (v19 == 1)
                {
                  continue;
                }

LABEL_17:
                v18 = [v16 amount];
                if (v18)
                {
                  v20 = [(NSDecimalNumber *)v8 decimalNumberByAdding:v18];

                  v8 = v20;
                }

                v21 = [v16 currencyCode];
                v22 = v21;
                if (v11)
                {
                  if (v21 && ![v11 isEqualToString:v21])
                  {

                    v7 = v27;
                    goto LABEL_39;
                  }
                }

                else
                {
                  v11 = v21;
                }
              }

              continue;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (!v10)
        {

          if (v11)
          {
            v25 = PKCurrencyAmountCreate(v8, v11);
          }

          else
          {
            v25 = 0;
          }

          v7 = v27;
          goto LABEL_40;
        }
      }
    }

    v11 = 0;
LABEL_39:

    v25 = 0;
LABEL_40:
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_totalPaymentsFromTransactions:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v32 = a5;
  if ([v7 count])
  {
    v9 = [MEMORY[0x1E696AB90] zero];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v11)
    {
      goto LABEL_31;
    }

    v12 = v11;
    v13 = *v34;
    if (v8)
    {
      v14 = v32 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    v16 = v15 ^ 1;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        v19 = [v18 transactionType];
        if (v19 == 10 || v19 == 0)
        {
          v21 = [v18 transactionStatus];
          if (v21 > 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v16;
          }

          if (v22)
          {
            if (v21 > 1)
            {
              continue;
            }

LABEL_26:
            v25 = [v18 amount];
            v23 = [v25 pk_absoluteValue];

            if (v23)
            {
              v26 = [(NSDecimalNumber *)v9 decimalNumberByAdding:v23];

              v9 = v26;
            }

LABEL_28:

            continue;
          }

          v23 = [v18 transactionDate];
          if ([v23 compare:v8] == -1)
          {
            goto LABEL_28;
          }

          v24 = [v23 compare:v32];

          if (v24 != 1)
          {
            goto LABEL_26;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v12)
      {
LABEL_31:

        v27 = [v10 firstObject];
        v28 = [v27 currencyCode];
        v29 = PKCurrencyAmountCreate(v9, v28);

        v7 = v31;
        goto LABEL_33;
      }
    }
  }

  v29 = 0;
LABEL_33:

  return v29;
}

- (id)_totalRewardsFromTransactions:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E696AB90] zero];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = v6;
    v8 = *v20;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 transactionType] == 8)
        {
          v11 = [v10 amount];
          goto LABEL_14;
        }

        if (![v10 transactionType])
        {
          v11 = [v10 rewardsTotalAmount];
LABEL_14:
          v13 = v11;
          v12 = [v11 pk_absoluteValue];

          if (!v12)
          {
            continue;
          }

LABEL_15:
          v14 = [(NSDecimalNumber *)v4 decimalNumberByAdding:v12];

          v4 = v14;
          continue;
        }

        if ([v10 transactionType] == 14)
        {
          v12 = [v10 rewardsTotalAmount];
          if (v12)
          {
            goto LABEL_15;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v7)
      {
LABEL_18:

        v15 = [v5 firstObject];
        v16 = [v15 currencyCode];
        v17 = PKCurrencyAmountCreate(v4, v16);

        goto LABEL_20;
      }
    }
  }

  v17 = 0;
LABEL_20:

  return v17;
}

- (id)_totalDailyCashRewardsFromTransactions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E696AB90] zero];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) rewardsTotalAmount];
          if (v10)
          {
            v11 = [(NSDecimalNumber *)v4 decimalNumberByAdding:v10];

            v4 = v11;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = [v5 firstObject];
    v13 = [v12 currencyCode];
    v14 = PKCurrencyAmountCreate(v4, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_totalFromGroups:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 totalAmount];
  v6 = [v5 currency];

  if (v6)
  {
    v31 = v6;
    v32 = [MEMORY[0x1E696AB90] zero];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v30 = v3;
    v7 = v3;
    v38 = [v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (!v38)
    {
      goto LABEL_36;
    }

    v37 = *v48;
    v34 = v7;
    while (1)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(v7);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        if ([v9 type] == 13)
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v10 = [v9 regions];
          v35 = [v10 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v35)
          {
            v11 = *v44;
            v33 = *v44;
            do
            {
              v12 = 0;
              do
              {
                if (*v44 != v11)
                {
                  objc_enumerationMutation(v10);
                }

                v36 = v12;
                v13 = *(*(&v43 + 1) + 8 * v12);
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                v14 = v7;
                v15 = [v14 countByEnumeratingWithState:&v39 objects:v51 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v40;
                  while (2)
                  {
                    for (j = 0; j != v16; ++j)
                    {
                      if (*v40 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = *(*(&v39 + 1) + 8 * j);
                      if (v19 != v9)
                      {
                        v20 = [v19 regions];
                        v21 = [v13 isIncludedInRegions:v20];

                        if (v21)
                        {
                          v7 = v34;
                          goto LABEL_33;
                        }
                      }
                    }

                    v16 = [v14 countByEnumeratingWithState:&v39 objects:v51 count:16];
                    if (v16)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v12 = v36 + 1;
                v11 = v33;
                v7 = v34;
              }

              while (v36 + 1 != v35);
              v35 = [v10 countByEnumeratingWithState:&v43 objects:v52 count:16];
            }

            while (v35);
          }
        }

        v22 = [v9 totalAmount];
        v10 = v22;
        if (v22)
        {
          v23 = [v22 currency];
          v14 = v31;
          v24 = v23;
          v25 = v24;
          if (v14 == v24)
          {

LABEL_32:
            v14 = [v10 amount];
            v27 = [v32 decimalNumberByAdding:v14];

            v32 = v27;
LABEL_33:

            goto LABEL_34;
          }

          if (!v24)
          {
            goto LABEL_33;
          }

          v26 = [v14 isEqualToString:v24];

          if (v26)
          {
            goto LABEL_32;
          }
        }

LABEL_34:
      }

      v38 = [v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (!v38)
      {
LABEL_36:

        v6 = v31;
        v28 = PKCurrencyAmountMake();

        v3 = v30;
        goto LABEL_38;
      }
    }
  }

  v28 = 0;
LABEL_38:

  return v28;
}

- (void)_p2pTotalsFromTransactions:(id)a3 received:(id *)a4 sent:(id *)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 count];
  if (a5 || a4 || v8)
  {
    v34 = a4;
    v35 = a5;
    v38 = [MEMORY[0x1E696AB90] zero];
    v37 = [MEMORY[0x1E696AB90] zero];
    v9 = [v7 firstObject];
    v10 = [v9 currencyCode];

    context = objc_autoreleasePoolPush();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v41;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v40 + 1) + 8 * v15);
        if ([v16 transactionType] != 3)
        {
          goto LABEL_27;
        }

        v17 = [v16 currencyCode];
        v18 = v10;
        v19 = v17;
        v20 = v19;
        if (v18 == v19)
        {
        }

        else
        {
          if (!v10 || !v19)
          {

LABEL_34:
            v33 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1BD026000, v33, OS_LOG_TYPE_DEFAULT, "Found different currency codes in p2p transactions.", buf, 2u);
            }

            objc_autoreleasePoolPop(context);
            v30 = v37;
            v27 = v38;
            goto LABEL_37;
          }

          v21 = [v18 isEqualToString:v19];

          if ((v21 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v22 = [v16 subtotalAmount];
        if (v22)
        {
          v23 = v22;
          if (([v22 pk_isNotANumber] & 1) != 0 || objc_msgSend(v16, "transactionStatus") != 1)
          {
            v24 = v23;
          }

          else
          {
            v24 = [v23 pk_absoluteValue];

            v25 = [v16 peerPaymentType];
            if (v25 == 2)
            {
              v26 = v38;
              v38 = [v38 decimalNumberByAdding:v24];
              goto LABEL_25;
            }

            if (v25 == 1)
            {
              v26 = v37;
              v37 = [v37 decimalNumberByAdding:v24];
LABEL_25:
            }
          }
        }

        else
        {
          v24 = 0;
        }

LABEL_27:
        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v13)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    objc_autoreleasePoolPop(context);
    v27 = v38;
    if (v34)
    {
      v28 = PKCurrencyAmountMake();
      v29 = *v34;
      *v34 = v28;
    }

    v30 = v37;
    if (v35)
    {
      v31 = PKCurrencyAmountMake();
      v32 = *v35;
      *v35 = v31;
    }

LABEL_37:
  }
}

- (id)_transactionItemForTransaction:(id)a3 inGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 searchQuery];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 domain] == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = self->_transactionSourceCollection;
  v12 = [v7 transactionSourceCollection];
  v13 = v12;
  if (v10 && !v11 && v12)
  {
    v14 = [v6 transactionSourceIdentifier];
    v11 = [v13 transactionSourceForTransactionSourceIdentifier:v14];

    if (v11)
    {
      v15 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v11];
    }

    else
    {
      v15 = v13;
    }
  }

  else
  {
    if ([v7 type] != 5)
    {
      goto LABEL_13;
    }

    v15 = [(PKDashboardTransactionFetcher *)self->_transactionFetcher cashbackTransactionSourceCollection];
  }

  v16 = v15;

  v11 = v16;
LABEL_13:
  v17 = [PKDashboardPaymentTransactionItem alloc];
  familyCollection = self->_familyCollection;
  v19 = [(PKTransactionHistoryState *)self->_state account];
  v20 = [(PKDashboardPaymentTransactionItem *)v17 initWithTransactionSourceCollection:v11 familyCollection:familyCollection transaction:v6 account:v19 accountUserCollection:self->_accountUserCollection bankConnectInstitution:self->_bankConnectInstitution];

  [(PKDashboardPaymentTransactionItem *)v20 setPhysicalCards:self->_physicalCards];
  [(PKDashboardPaymentTransactionItem *)v20 setShouldDisplayTransactionSource:v10];
  if ([v6 transactionType] == 9)
  {
    transactionFetcher = self->_transactionFetcher;
    v22 = [v6 identifier];
    v23 = [(PKDashboardTransactionFetcher *)transactionFetcher cashbackGroupForTransactionWithIdentifier:v22 cashbackTransactionSourceCollection:0];
    [(PKDashboardPaymentTransactionItem *)v20 setGroup:v23];
  }

  v24 = [v6 secondaryFundingSourceFPANIdentifier];
  if (v24)
  {
    sourcesPerFundingSourceIdentifier = self->_sourcesPerFundingSourceIdentifier;
    if (!sourcesPerFundingSourceIdentifier)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v27 = self->_sourcesPerFundingSourceIdentifier;
      self->_sourcesPerFundingSourceIdentifier = v26;

      sourcesPerFundingSourceIdentifier = self->_sourcesPerFundingSourceIdentifier;
    }

    v28 = [(NSMutableDictionary *)sourcesPerFundingSourceIdentifier objectForKey:v24];
    if (!v28)
    {
      v29 = [MEMORY[0x1E69B8A58] sharedInstance];
      v30 = [v29 passWithFPANIdentifier:v24];

      if (v30)
      {
        v31 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v30];
      }

      else
      {
        v31 = [MEMORY[0x1E695DFB0] null];
      }

      v28 = v31;
      [(NSMutableDictionary *)self->_sourcesPerFundingSourceIdentifier setObject:v31 forKey:v24];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKDashboardPaymentTransactionItem *)v20 setSecondaryTransactionSource:v28];
    }
  }

  return v20;
}

- (id)_groupItemForTransaction:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
  [(PKDashboardPaymentTransactionGroupItem *)v5 setTransactionSourceCollection:self->_transactionSourceCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setFamilyCollection:self->_familyCollection];
  v6 = [(PKTransactionHistoryState *)self->_state account];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setAccount:v6];

  [(PKDashboardPaymentTransactionGroupItem *)v5 setAccountUserCollection:self->_accountUserCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setPhysicalCards:self->_physicalCards];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setGroup:v4];

  [(PKDashboardPaymentTransactionGroupItem *)v5 setTokens:self->_tokens];

  return v5;
}

- (id)_headerItem
{
  v3 = self->_state;
  v4 = [(PKTransactionHistoryState *)v3 type];
  v5 = 0;
  if (v4 > 1)
  {
    if (v4 != 2 && v4 != 4)
    {
      if (v4 != 3)
      {
        goto LABEL_31;
      }

      v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:4];
      v17 = [(PKTransactionHistoryState *)v3 associatedInstallmentPlan];
      v18 = [v17 product];
      [(PKTransactionHistoryHeaderItem *)v5 setInstallmentProduct:v18];
      goto LABEL_29;
    }

    v7 = [(PKTransactionHistoryState *)v3 group];
    if ([v7 type] == 14)
    {
      v8 = [v7 searchQuery];
      v9 = [v8 tokens];
      v10 = [v9 count];

      v11 = [v7 searchQuery];
      v12 = [v11 displayNameToken];
      v13 = [v12 merchant];

      v14 = [v7 searchQuery];
      v15 = [v14 peerPaymentToken];
      v16 = [v15 group];

      if (v10 == 1 && v13)
      {
        v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:0];
        [(PKTransactionHistoryHeaderItem *)v5 setMerchant:v13];
LABEL_27:

        goto LABEL_31;
      }

      if (v10 == 1 && v16)
      {
        v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:1];
        v23 = [v16 handles];
        v24 = [v23 anyObject];
        [(PKTransactionHistoryHeaderItem *)v5 setPeerPaymentCounterpartHandle:v24];

        [(PKTransactionHistoryHeaderItem *)v5 setContact:self->_contact];
        goto LABEL_27;
      }
    }

    else
    {
      v16 = 0;
      v13 = 0;
    }

    v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:2];
    [(PKTransactionHistoryHeaderItem *)v5 setTransactionGroup:v7];
    v19 = [(PKTransactionHistoryState *)self->_state account];

    if (v19)
    {
      v20 = [(PKTransactionHistoryState *)self->_state account];
      -[PKTransactionHistoryHeaderItem setFeatureIdentifier:](v5, "setFeatureIdentifier:", [v20 feature]);
    }

    else
    {
      v25 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
      v26 = [v25 hasAssociatedPeerPaymentAccount];

      if (v26)
      {
        [(PKTransactionHistoryHeaderItem *)v5 setFeatureIdentifier:1];
      }
    }

    v27 = [(PKTransactionHistoryState *)self->_state transactionHistory];
    -[PKTransactionHistoryHeaderItem setHistoryCount:](v5, "setHistoryCount:", [v7 transactionCount] + objc_msgSend(v27, "count"));

    goto LABEL_27;
  }

  if (!v4)
  {
    v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:1];
    v21 = [(PKDashboardTransactionFetcher *)self->_transactionFetcher counterpartHandles];
    v22 = [v21 anyObject];
    [(PKTransactionHistoryHeaderItem *)v5 setPeerPaymentCounterpartHandle:v22];

    [(PKTransactionHistoryHeaderItem *)v5 setContact:self->_contact];
    goto LABEL_31;
  }

  if (v4 != 1)
  {
    goto LABEL_31;
  }

  v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:0];
  [(PKTransactionHistoryHeaderItem *)v5 setMerchant:self->_merchant];
  v17 = [(PKTransactionHistoryState *)v3 featuredTransaction];
  if (!v17)
  {
    v18 = [(PKTransactionHistoryState *)v3 selectedTransactions];
    v28 = [v18 transactions];
    v29 = [v28 firstObject];
    [(PKTransactionHistoryHeaderItem *)v5 setTransaction:v29];

LABEL_29:
    goto LABEL_30;
  }

  [(PKTransactionHistoryHeaderItem *)v5 setTransaction:v17];
LABEL_30:

LABEL_31:

  return v5;
}

- (void)_loadContact
{
  v3 = [(PKTransactionHistoryState *)self->_state featuredTransaction];
  v4 = [v3 peerPaymentCounterpartImageRecordIdentifier];

  v5 = [(PKTransactionHistoryState *)self->_state featuredTransaction];
  v6 = [v5 peerPaymentPaymentMode];

  if (v6 == 2 && v4 != 0)
  {
    if ([(PKPeerPaymentCounterpartImageResolver *)self->_peerPaymentImageResolver hasCachedImageDataForIdentifier:v4])
    {
      v10 = [(PKPeerPaymentCounterpartImageResolver *)self->_peerPaymentImageResolver counterpartImageDataForIdentifier:v4];
      v11 = objc_alloc_init(MEMORY[0x1E695CF18]);
      [(CNContact *)v11 setImageData:v10];
      contact = self->_contact;
      self->_contact = v11;

      self->_contactLoaded = 1;
      [(PKTransactionHistoryDefaultDataSource *)self _notifyContentLoadedIfNecessary];

      goto LABEL_14;
    }

    objc_initWeak(&location, self);
    peerPaymentImageResolver = self->_peerPaymentImageResolver;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__PKTransactionHistoryDefaultDataSource__loadContact__block_invoke;
    v19[3] = &unk_1E8022C88;
    objc_copyWeak(&v20, &location);
    [(PKPeerPaymentCounterpartImageResolver *)peerPaymentImageResolver counterpartImageDataForIdentifier:v4 completion:v19];
    v14 = &v20;
LABEL_13:
    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
    goto LABEL_14;
  }

  if (self->_peerPaymentCounterpartHandle)
  {
    if (![(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:?])
    {
      objc_initWeak(&location, self);
      contactResolver = self->_contactResolver;
      peerPaymentCounterpartHandle = self->_peerPaymentCounterpartHandle;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __53__PKTransactionHistoryDefaultDataSource__loadContact__block_invoke_3;
      v17[3] = &unk_1E8022CB0;
      objc_copyWeak(&v18, &location);
      [(PKContactResolver *)contactResolver contactForHandle:peerPaymentCounterpartHandle withCompletion:v17];
      v14 = &v18;
      goto LABEL_13;
    }

    v8 = [(PKContactResolver *)self->_contactResolver contactForHandle:self->_peerPaymentCounterpartHandle];
    v9 = self->_contact;
    self->_contact = v8;

    self->_contactLoaded = 1;
    [(PKTransactionHistoryDefaultDataSource *)self _notifyContentLoadedIfNecessary];
  }

LABEL_14:
}

void __53__PKTransactionHistoryDefaultDataSource__loadContact__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PKTransactionHistoryDefaultDataSource__loadContact__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __53__PKTransactionHistoryDefaultDataSource__loadContact__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (*(a1 + 32))
    {
      v3 = objc_alloc_init(MEMORY[0x1E695CF18]);
      [v3 setImageData:*(a1 + 32)];
      v4 = v5[29];
      v5[29] = v3;

      WeakRetained = v5;
    }

    WeakRetained[185] = 1;
    [v5 _notifyContentLoadedIfNecessary];
    WeakRetained = v5;
  }
}

void __53__PKTransactionHistoryDefaultDataSource__loadContact__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PKTransactionHistoryDefaultDataSource__loadContact__block_invoke_4;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __53__PKTransactionHistoryDefaultDataSource__loadContact__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 29, *(a1 + 32));
    *(v3 + 185) = 1;
    [v3 _notifyContentLoadedIfNecessary];
    WeakRetained = v3;
  }
}

- (void)_loadPeerPaymentPendingRequestForRequestToken:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__59;
  v17[4] = __Block_byref_object_dispose__59;
  v18 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke;
  v13[3] = &unk_1E801D128;
  v6 = v4;
  v14 = v6;
  objc_copyWeak(&v16, &location);
  v15 = v17;
  [v5 addOperation:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_4;
  v11[3] = &unk_1E801B6D0;
  objc_copyWeak(&v12, &location);
  v11[4] = v17;
  [v5 addOperation:v11];
  v7 = [MEMORY[0x1E695DFB0] null];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_6;
  v9[3] = &unk_1E8022D78;
  objc_copyWeak(&v10, &location);
  v9[4] = v17;
  v8 = [v5 evaluateWithInput:v7 completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v16);

  _Block_object_dispose(v17, 8);
  objc_destroyWeak(&location);
}

void __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69B9000] sharedInstance];
  v20[0] = *(a1 + 32);
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_2;
  v15[3] = &unk_1E8022D00;
  objc_copyWeak(&v19, (a1 + 48));
  v12 = v9;
  v17 = v12;
  v13 = v8;
  v14 = *(a1 + 40);
  v16 = v13;
  v18 = v14;
  [v10 peerPaymentPendingRequestsForRequestTokens:v11 completion:v15];

  objc_destroyWeak(&v19);
}

void __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_3;
  block[3] = &unk_1E8022CD8;
  objc_copyWeak(&v12, (a1 + 56));
  v8 = v3;
  v10 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v9 = v4;
  v11 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && [*(a1 + 32) count] == 1)
  {
    v2 = [*(a1 + 32) firstObject];
    v3 = *(*(a1 + 56) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  (*(*(a1 + 48) + 16))();
}

void __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [*(*(*(a1 + 32) + 8) + 40) groupID];
  v10 = v9;
  if (WeakRetained && v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_5;
    v11[3] = &unk_1E8022D28;
    v11[4] = WeakRetained;
    v13 = v7;
    v12 = v6;
    PKPeerPaymentMessagesChatNameAndImageDataForGroupIdentifier(v10, v11);
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v4;
    objc_storeStrong((v5 + 224), a2);
    (*(*(a1 + 48) + 16))();
    v4 = v6;
  }
}

void __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_6(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_7;
  v2[3] = &unk_1E801CB28;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
}

void __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_8;
  v3[3] = &unk_1E8022D50;
  v3[4] = *(a1 + 32);
  [WeakRetained updateStateWithBlock:v3 reloadBlock:&__block_literal_global_363];
}

void __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AC90];
  v3 = a2;
  v4 = [v2 indexSetWithIndex:1];
  [v3 reloadSections:v4];
}

- (void)_loadTransactionReceipt
{
  v3 = [(PKTransactionHistoryState *)self->_state featuredTransaction];
  v4 = [v3 associatedReceiptUniqueID];

  if (v4)
  {
    objc_initWeak(&location, self);
    dataProvider = self->_dataProvider;
    v6 = [(PKTransactionHistoryState *)self->_state featuredTransaction];
    v7 = [v6 identifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PKTransactionHistoryDefaultDataSource__loadTransactionReceipt__block_invoke;
    v8[3] = &unk_1E8022DA0;
    objc_copyWeak(&v9, &location);
    [(PKPaymentDataProvider *)dataProvider transactionReceiptForTransactionWithIdentifier:v7 updateIfNecessary:1 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __64__PKTransactionHistoryDefaultDataSource__loadTransactionReceipt__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKTransactionHistoryDefaultDataSource__loadTransactionReceipt__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __64__PKTransactionHistoryDefaultDataSource__loadTransactionReceipt__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateWithTransactionReceipt:*(a1 + 32)];
}

- (void)transactionWithIdentifier:(id)a3 didDownloadTransactionReceipt:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(PKTransactionHistoryState *)self->_state featuredTransaction];
    v9 = [v8 identifier];
    v10 = v6;
    v11 = v9;
    v12 = v11;
    if (v11 == v10)
    {
    }

    else
    {
      if (!v10 || !v11)
      {

        goto LABEL_10;
      }

      v13 = [v10 isEqualToString:v11];

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PKTransactionHistoryDefaultDataSource_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke;
    block[3] = &unk_1E80110E0;
    objc_copyWeak(&v16, &location);
    v15 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

LABEL_10:
}

void __97__PKTransactionHistoryDefaultDataSource_transactionWithIdentifier_didDownloadTransactionReceipt___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateWithTransactionReceipt:*(a1 + 32)];
}

- (void)_updateWithTransactionReceipt:(id)a3
{
  v4 = a3;
  v5 = [v4 lineItems];
  v6 = [v5 firstObject];
  v7 = [v6 image];

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__PKTransactionHistoryDefaultDataSource__updateWithTransactionReceipt___block_invoke;
    v8[3] = &unk_1E8022BC0;
    v9 = v4;
    [(PKTransactionHistoryDefaultDataSource *)self updateStateWithBlock:v8 reloadBlock:&__block_literal_global_368];
  }
}

void __71__PKTransactionHistoryDefaultDataSource__updateWithTransactionReceipt___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AC90];
  v3 = a2;
  v4 = [v2 indexSetWithIndex:1];
  [v3 reloadSections:v4];
}

- (void)_notifyContentLoadedIfNecessary
{
  if (!self->_contentIsLoaded)
  {
    v3 = [(PKTransactionHistoryState *)self->_state type];
    v4 = v3 > 4 || ((1 << v3) & 0x15) == 0;
    if (v4 || self->_contactLoaded)
    {
      self->_contentIsLoaded = 1;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __72__PKTransactionHistoryDefaultDataSource__notifyContentLoadedIfNecessary__block_invoke;
      v5[3] = &unk_1E8022BC0;
      v5[4] = self;
      [(PKTransactionHistoryDefaultDataSource *)self updateStateWithBlock:v5 reloadBlock:&__block_literal_global_370_0];
    }
  }
}

void __72__PKTransactionHistoryDefaultDataSource__notifyContentLoadedIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v5 = v2;
    v6 = v5;
    if (a2)
    {
      if (v5[104] == 1)
      {
        [a2 setType:{objc_msgSend(v5, "type")}];
      }

      if (v6[105] == 1)
      {
        v7 = [v6 featuredTransaction];
        [a2 setFeaturedTransaction:v7];
      }

      if (v6[106] == 1)
      {
        v8 = [v6 selectedTransactions];
        [a2 setSelectedTransactions:v8];
      }

      if (v6[107] == 1)
      {
        v9 = [v6 associatedInstallmentPlan];
        [a2 setAssociatedInstallmentPlan:v9];
      }

      if (v6[108] == 1)
      {
        v10 = [v6 associatedReceipt];
        [a2 setAssociatedReceipt:v10];
      }

      if (v6[109] == 1)
      {
        v11 = [v6 featuredTransactionActions];
        [a2 setFeaturedTransactionActions:v11];
      }

      if (v6[110] == 1)
      {
        v12 = [v6 actionItems];
        [a2 setActionItems:v12];
      }

      if (v6[111] == 1)
      {
        v13 = [v6 group];
        [a2 setGroup:v13];
      }

      if (v6[112] == 1)
      {
        v14 = [v6 groups];
        [a2 setGroups:v14];
      }

      if (v6[113] == 1)
      {
        v15 = [v6 transactionHistory];
        [a2 setTransactionHistory:v15];
      }

      if (v6[114] == 1)
      {
        v16 = [v6 account];
        [a2 setAccount:v16];
      }

      if (v6[115] == 1)
      {
        v17 = [v6 peerPaymentPendingRequest];
        [a2 setPeerPaymentPendingRequest:v17];
      }
    }

    v18 = *(a1 + 32);
    v19 = *(v18 + 16);
    *(v18 + 16) = 0;

    *(*(a1 + 32) + 24) = 1;
  }
}

- (BOOL)canDeleteItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 transaction];
    v5 = [v4 isDeletable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)deleteItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 transaction];
  if (v7 && (-[PKTransactionHistoryState transactionHistory](self->_state, "transactionHistory"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 indexOfObject:v7], v8, v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__PKTransactionHistoryDefaultDataSource_deleteItem_completionHandler___block_invoke;
    v14[3] = &unk_1E8022B78;
    v14[4] = self;
    v10 = v7;
    v15 = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PKTransactionHistoryDefaultDataSource_deleteItem_completionHandler___block_invoke_2;
    v13[3] = &__block_descriptor_40_e41_v16__0___PKDashboardDataSourceDelegate__8l;
    v13[4] = v9;
    [(PKTransactionHistoryDefaultDataSource *)self updateStateWithBlock:v14 reloadBlock:v13];
    if (v6)
    {
      v6[2](v6, 1);
    }

    dataProvider = self->_dataProvider;
    v12 = [v10 identifier];
    [(PKPaymentDataProvider *)dataProvider deletePaymentTransactionWithIdentifier:v12];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

void __70__PKTransactionHistoryDefaultDataSource_deleteItem_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 transactionHistory];
  v7 = [v5 mutableCopy];

  [v7 removeObject:*(a1 + 40)];
  v6 = [v7 copy];
  [v4 setTransactionHistory:v6];
}

void __70__PKTransactionHistoryDefaultDataSource_deleteItem_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AC88];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 indexPathForItem:v3 inSection:5];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v4 deleteItemsAtIndexPaths:v6];
}

- (void)deleteItems:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = self;
  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = [(PKTransactionHistoryState *)self->_state transactionHistory];
  v23 = [v5 mutableCopy];

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 transaction];
          v14 = [v13 identifier];

          [v25 addObject:v14];
          v15 = [(PKTransactionHistoryState *)v24->_state transactionHistory];
          v16 = [v12 transaction];
          v17 = [v15 indexOfObject:v16];

          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [MEMORY[0x1E696AC88] indexPathForItem:v17 inSection:5];
            [v22 addObject:v18];
          }

          v19 = [v12 transaction];
          [v23 removeObject:v19];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __53__PKTransactionHistoryDefaultDataSource_deleteItems___block_invoke;
  v28[3] = &unk_1E8022BC0;
  v29 = v23;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __53__PKTransactionHistoryDefaultDataSource_deleteItems___block_invoke_2;
  v26[3] = &unk_1E8022DE8;
  v27 = v22;
  v20 = v22;
  v21 = v23;
  [(PKTransactionHistoryDefaultDataSource *)v24 updateStateWithBlock:v28 reloadBlock:v26];
  [(PKPaymentDataProvider *)v24->_dataProvider deletePaymentTransactionsWithIdentifiers:v25];
}

void __53__PKTransactionHistoryDefaultDataSource_deleteItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v3 setTransactionHistory:v4];
}

- (void)_handleTransactionHistoryUpdated:(id)a3 stateUpdate:(id)a4 reloadBlock:(id)a5
{
  v188[1] = *MEMORY[0x1E69E9840];
  v139 = a3;
  v122 = a4;
  v125 = a5;
  val = self;
  v137 = self->_state;
  v8 = [(PKTransactionHistoryState *)v137 featuredTransaction];
  v132 = [(PKTransactionHistoryState *)v137 associatedInstallmentPlan];
  v128 = [(PKTransactionHistoryState *)v137 featuredTransactionActions];
  v136 = [(PKTransactionHistoryState *)v137 selectedTransactions];
  v123 = [(PKTransactionHistoryState *)v137 group];
  v126 = [(PKTransactionHistoryState *)v137 transactionHistory];
  v127 = [(PKTransactionHistoryState *)v137 account];
  if (v8)
  {
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 3221225472;
    v177[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke;
    v177[3] = &unk_1E8022E10;
    v9 = v8;
    v178 = v9;
    v10 = [v139 indexOfObjectPassingTest:v177];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v124 = 0;
    }

    else
    {
      v12 = [v139 objectAtIndex:v10];
      v13 = PKEqualObjects();
      if ((v13 & 1) == 0)
      {
        v14 = v12;

        v9 = v14;
      }

      v124 = v13 ^ 1;
    }

    v11 = v9;
  }

  else
  {
    v124 = 0;
    v11 = 0;
  }

  v134 = v11;
  if ([v11 transactionType] == 13 || !objc_msgSend(v134, "transactionType"))
  {
    v15 = [v134 referenceIdentifier];
    v16 = [v127 creditDetails];
    v17 = [v16 installmentPlans];
    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_2;
    v175[3] = &unk_1E8022E38;
    v18 = v15;
    v176 = v18;
    v19 = [v17 objectsPassingTest:v175];

    if ([v19 count] == 1)
    {
      v20 = [v19 anyObject];

      v124 = 1;
    }

    else
    {
      v20 = v132;
    }

    v132 = v20;
    if (v20)
    {
      v21 = objc_alloc_init(PKDashboardTextActionItem);
      [(PKDashboardTextActionItem *)v21 setLayoutStyle:0];
      v22 = PKLocalizedFeatureString();
      [(PKDashboardTextActionItem *)v21 setTitle:v22];

      objc_initWeak(location, val);
      v173[0] = MEMORY[0x1E69E9820];
      v173[1] = 3221225472;
      v173[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_3;
      v173[3] = &unk_1E8022C10;
      objc_copyWeak(&v174, location);
      [(PKDashboardTextActionItem *)v21 setAction:v173];
      v188[0] = v21;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:1];

      objc_destroyWeak(&v174);
      objc_destroyWeak(location);

      v124 = 1;
      v128 = v23;
    }
  }

  if (v136)
  {
    v24 = [v136 transactions];
    v25 = [v24 mutableCopy];

    if (![v25 count])
    {
      goto LABEL_27;
    }

    v26 = 0;
    v27 = 0;
    v28 = MEMORY[0x1E69E9820];
    do
    {
      v29 = [v25 objectAtIndex:v27];
      v171[0] = v28;
      v171[1] = 3221225472;
      v171[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_4;
      v171[3] = &unk_1E8022E10;
      v30 = v29;
      v172 = v30;
      v31 = [v139 indexOfObjectPassingTest:v171];
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = [v139 objectAtIndex:v31];
        if ((PKEqualObjects() & 1) == 0)
        {
          [v25 replaceObjectAtIndex:v27 withObject:v32];
          v26 = 1;
        }
      }

      ++v27;
    }

    while (v27 < [v25 count]);
    if (v26)
    {
      v33 = [v25 copy];
      [v136 setTransactions:v33];

      v120 = 1;
    }

    else
    {
LABEL_27:
      v120 = 0;
    }
  }

  else
  {
    v120 = 0;
  }

  v34 = [(PKTransactionHistoryState *)v137 type];
  if (v34 != 2)
  {
    if (v34 == 1)
    {
      if (v134)
      {
        v35 = [v134 transactionDate];
        v36 = [MEMORY[0x1E695DEE8] currentCalendar];
        v37 = [MEMORY[0x1E695DF00] date];
        v38 = [v36 components:14 fromDate:v37];
        [v36 date:v35 matchesComponents:v38];
        v39 = PKStartOfMonth();
        v40 = PKStartOfNextMonth();
        v41 = [v40 dateByAddingTimeInterval:-1.0];
        obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:v139 startDate:v39 endDate:v41];
      }

      else
      {
        v53 = [v136 totalAmount];

        if (v53)
        {
          obj = [v136 totalAmount];
        }

        else if (v139)
        {
          v69 = [v139 lastObject];
          v70 = [v69 transactionDate];

          v71 = [v139 firstObject];
          v72 = [v71 transactionDate];

          obj = 0;
          if (v70 && v72)
          {
            v73 = [MEMORY[0x1E695DF00] date];
            if ([v72 compare:v73] == -1)
            {
              v74 = v73;
            }

            else
            {
              v74 = v72;
            }

            v75 = v74;

            obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:v139 startDate:v70 endDate:v75];
          }

          else
          {
            v75 = v72;
          }
        }

        else
        {
          obj = 0;
        }
      }

      v130 = [(PKTransactionHistoryDefaultDataSource *)val _totalDailyCashRewardsFromTransactions:?];
LABEL_75:
      v67 = 0;
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v42 = [v136 type];
  if (v42 <= 6)
  {
    if ((v42 - 2) < 2)
    {
      obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:v139 startDate:0 endDate:0];
LABEL_82:
      v67 = 0;
      v130 = 0;
      goto LABEL_84;
    }

    v43 = v136;
    if (v42 == 5)
    {
      v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v55 = v139;
      v56 = [v55 countByEnumeratingWithState:&v167 objects:v187 count:16];
      if (v56)
      {
        v57 = *v168;
        do
        {
          for (i = 0; i != v56; ++i)
          {
            if (*v168 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v59 = *(*(&v167 + 1) + 8 * i);
            if ([v59 transactionType] == 9)
            {
              transactionFetcher = val->_transactionFetcher;
              v61 = [v59 identifier];
              v62 = [(PKDashboardTransactionFetcher *)transactionFetcher cashbackGroupForTransactionWithIdentifier:v61 cashbackTransactionSourceCollection:0];

              v63 = [v62 transactions];
              [v54 addObjectsFromArray:v63];
            }
          }

          v56 = [v55 countByEnumeratingWithState:&v167 objects:v187 count:16];
        }

        while (v56);
      }

      obj = [v123 totalAmount];
      v139 = [v54 copy];

      v130 = [(PKTransactionHistoryDefaultDataSource *)val _totalRewardsFromTransactions:v139];

      goto LABEL_75;
    }

    goto LABEL_56;
  }

  v43 = v136;
  if (v42 == 7)
  {
    v64 = [v127 feature];
    v65 = [MEMORY[0x1E695DF00] date];
    if (v64 == 5)
    {
      v66 = [v127 savingsDetails];
      v78 = PKStartOfYear();
      obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:v139 startDate:v78 endDate:v65];
      v79 = [v66 createdDate];
      v80 = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:v139 startDate:v79 endDate:v65];

      if ((PKEqualObjects() & 1) != 0 || ([v80 amount], v81 = objc_claimAutoreleasedReturnValue(), v82 = objc_msgSend(v81, "pk_isPositiveNumber"), v81, !v82))
      {
        v130 = 0;
      }

      else
      {
        v130 = v80;
      }

      v67 = 1;
    }

    else
    {
      if (v64 != 2)
      {
        v67 = 0;
        v130 = 0;
        obj = 0;
LABEL_79:

        goto LABEL_84;
      }

      v66 = PKStartOfYear();
      obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:v139 startDate:v66 endDate:v65];
      v67 = 0;
      v130 = 0;
    }

    goto LABEL_79;
  }

  if (v42 == 9)
  {
    v44 = [v136 transactions];
    v45 = [v44 firstObject];
    v46 = [v45 transactionDate];

    v47 = [MEMORY[0x1E695DEE8] currentCalendar];
    v48 = [MEMORY[0x1E695DF00] date];
    v49 = [v47 components:14 fromDate:v48];
    [v47 date:v46 matchesComponents:v49];
    v50 = PKStartOfMonth();
    v51 = PKStartOfNextMonth();
    v52 = [v51 dateByAddingTimeInterval:-1.0];
    obj = [(PKTransactionHistoryDefaultDataSource *)val _totalPaymentsFromTransactions:v139 startDate:v50 endDate:v52];

    goto LABEL_82;
  }

LABEL_56:
  v68 = [v43 totalAmount];

  if (v68)
  {
    obj = [v136 totalAmount];
    goto LABEL_82;
  }

  if ([v139 count])
  {
    v76 = [v123 startDate];
    v77 = [v123 endDate];
    obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:v139 startDate:v76 endDate:v77];

    goto LABEL_82;
  }

  v83 = [v123 transactions];
  v84 = [v83 count];

  if (v84)
  {
    v85 = [v123 transactions];
    v86 = [v123 startDate];
    v87 = [v123 endDate];
    obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:v85 startDate:v86 endDate:v87];

    goto LABEL_82;
  }

LABEL_83:
  v67 = 0;
  v130 = 0;
  obj = 0;
LABEL_84:
  if (v134)
  {
    v88 = [v139 pk_arrayByRemovingObject:?];

    v139 = v88;
  }

  if (v136)
  {
    v89 = [v136 transactions];
    v90 = [v139 pk_arrayByRemovingObjectsInArray:v89];

    v139 = v90;
  }

  objc_storeStrong(&val->_footerTotal, obj);
  objc_storeStrong(&val->_footerSecondaryTotal, v130);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_5;
  aBlock[3] = &unk_1E8022E60;
  v135 = v134;
  v162 = v135;
  v121 = v132;
  v163 = v121;
  v133 = v128;
  v164 = v133;
  v91 = v139;
  v165 = v91;
  v140 = v122;
  v166 = v140;
  v92 = _Block_copy(aBlock);
  if (val->_contentIsLoaded)
  {
    if (PKBankConnectEnabled() && [v91 count] && (objc_msgSend(v91, "firstObject"), v93 = objc_claimAutoreleasedReturnValue(), v94 = objc_msgSend(v93, "isBankConnectTransaction"), v93, v94))
    {
      v95 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldItems:v126 andNewItems:v91 inSection:5];
      v96 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v97 = [v95 deletedIndexPaths];
        v98 = [v97 count];
        v99 = [v95 insertedIndexPaths];
        v129 = [v99 count];
        v100 = [v95 movedFromIndexPaths];
        v101 = [v100 count];
        v102 = [v95 changedIndexPaths];
        v103 = [v102 count];
        *location = 134218752;
        *&location[4] = v98;
        v181 = 2048;
        v182 = v129;
        v183 = 2048;
        v184 = v101;
        v185 = 2048;
        v186 = v103;
        _os_log_impl(&dword_1BD026000, v96, OS_LOG_TYPE_DEFAULT, "Bank Connect history transactions batch updates: %ld deletions, %ld insertions, %ld moves, %ld updates", location, 0x2Au);
      }

      v159[0] = MEMORY[0x1E69E9820];
      v159[1] = 3221225472;
      v159[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_382;
      v159[3] = &unk_1E8022E88;
      v160 = v92;
      v155[0] = MEMORY[0x1E69E9820];
      v155[1] = 3221225472;
      v155[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_2_383;
      v155[3] = &unk_1E8022EB0;
      v156 = v95;
      v157 = val;
      v158 = v125;
      v104 = v95;
      [(PKTransactionHistoryDefaultDataSource *)val updateStateWithBlock:v159 reloadBlock:v155];
      WeakRetained = objc_loadWeakRetained(&val->_customDelegate);
      [WeakRetained transactionHistoryUpdated];
    }

    else
    {
      v153[0] = MEMORY[0x1E69E9820];
      v153[1] = 3221225472;
      v153[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_3_384;
      v153[3] = &unk_1E8022E88;
      v154 = v92;
      v145[0] = MEMORY[0x1E69E9820];
      v145[1] = 3221225472;
      v145[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_4_385;
      v145[3] = &unk_1E8022ED8;
      v108 = v91;
      v146 = v108;
      v147 = v126;
      v150 = v124;
      v148 = v136;
      v151 = v120;
      v152 = v67;
      v149 = v125;
      [(PKTransactionHistoryDefaultDataSource *)val updateStateWithBlock:v153 reloadBlock:v145];
      if ([v135 isPeerPaymentGroupRequestReceivedTransaction])
      {
        v109 = [v135 peerPaymentRequestToken];
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v110 = v108;
        v111 = [v110 countByEnumeratingWithState:&v141 objects:v179 count:16];
        if (v111)
        {
          v112 = *v142;
          while (2)
          {
            for (j = 0; j != v111; ++j)
            {
              if (*v142 != v112)
              {
                objc_enumerationMutation(v110);
              }

              v114 = [*(*(&v141 + 1) + 8 * j) peerPaymentRequestToken];
              v115 = v109;
              v116 = v115;
              if (v114 == v115)
              {

LABEL_112:
                [(PKTransactionHistoryDefaultDataSource *)val _loadPeerPaymentPendingRequestForRequestToken:v116];
                goto LABEL_113;
              }

              if (v109 && v114)
              {
                v117 = [v114 isEqualToString:v115];

                if (v117)
                {
                  goto LABEL_112;
                }
              }

              else
              {
              }
            }

            v111 = [v110 countByEnumeratingWithState:&v141 objects:v179 count:16];
            if (v111)
            {
              continue;
            }

            break;
          }
        }

LABEL_113:
      }

      v118 = objc_loadWeakRetained(&val->_customDelegate);
      [v118 transactionHistoryUpdated];

      v119 = objc_loadWeakRetained(&val->_delegate);
      [v119 updateContent];
    }
  }

  else
  {
    v106 = objc_alloc_init(PKTransactionHistoryStateChanges);
    stagedStateChanges = val->_stagedStateChanges;
    val->_stagedStateChanges = v106;

    (*(v92 + 2))(v92, val->_stagedStateChanges);
    [(PKTransactionHistoryDefaultDataSource *)val _notifyContentLoadedIfNecessary];
  }
}

uint64_t __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if (v8 && v9)
    {
      v11 = [v8 isEqualToString:v9];
    }
  }

  if (v11)
  {
    *a4 = 1;
  }

  return v11;
}

uint64_t __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 transactionReferenceIdentifier];

  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  return v6;
}

void __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [PKTransactionHistoryViewController alloc];
    v5 = [WeakRetained[1] associatedInstallmentPlan];
    v6 = WeakRetained[4];
    v7 = WeakRetained[6];
    v8 = [WeakRetained[1] account];
    v9 = [(PKTransactionHistoryViewController *)v4 initWithInstallmentPlan:v5 transactionSourceCollection:v6 familyCollection:v7 account:v8 accountUserCollection:WeakRetained[11] physicalCards:WeakRetained[12]];

    v10 = [v12 pkui_viewControllerFromResponderChain];
    v11 = [v10 navigationController];
    [v11 pushViewController:v9 animated:1];
  }
}

uint64_t __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [*(a1 + 32) identifier];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0;
    if (v8 && v9)
    {
      v11 = [v8 isEqualToString:v9];
    }
  }

  if (v11)
  {
    *a4 = 1;
  }

  return v11;
}

void __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setFeaturedTransaction:*(a1 + 32)];
  [v5 setAssociatedInstallmentPlan:*(a1 + 40)];
  [v5 setFeaturedTransactionActions:*(a1 + 48)];
  v3 = [*(a1 + 56) copy];
  [v5 setTransactionHistory:v3];

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_2_383(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) deletedIndexPaths];
  [v3 deleteItemsAtIndexPaths:v4];

  v5 = [*(a1 + 32) insertedIndexPaths];
  [v3 insertItemsAtIndexPaths:v5];

  v6 = [*(a1 + 32) movedFromIndexPaths];
  v7 = [*(a1 + 32) movedToIndexPaths];
  if ([v6 count])
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      v10 = [v7 objectAtIndexedSubscript:v8];
      [v3 moveItemAtIndexPath:v9 toIndexPath:v10];

      ++v8;
    }

    while ([v6 count] > v8);
  }

  v11 = [*(a1 + 32) changedIndexPaths];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [*(a1 + 40) itemAtIndexPath:v16];
        [v3 itemChanged:v17 atIndexPath:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    (*(v18 + 16))(v18, v3);
  }
}

void __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_4_385(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (([*(a1 + 32) isEqualToArray:*(a1 + 40)] & 1) == 0)
  {
    [v3 addIndex:5];
  }

  if (*(a1 + 64) == 1)
  {
    [v3 addIndex:1];
  }

  v4 = v6;
  if (*(a1 + 48) && *(a1 + 65) == 1)
  {
    [v3 addIndex:2];
    v4 = v6;
  }

  if (*(a1 + 66) == 1)
  {
    [v3 addIndex:0];
    v4 = v6;
  }

  [v4 reloadSections:v3];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (id)_contactKeysToFetch
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v11[0] = v2;
  v3 = _MergedGlobals_3_10();
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [v4 _supportsForceTouch]);
  v11[1] = v5;
  v6 = [off_1EE9A1EA8() descriptorForRequiredKeys];
  v11[2] = v6;
  v7 = [off_1EE9A1EB0() descriptorForRequiredKeys];
  v8 = *MEMORY[0x1E695C208];
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = *MEMORY[0x1E695C330];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

- (void)_handleAccountsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(PKTransactionHistoryState *)self->_state account];
  v6 = [v5 accountIdentifier];

  objc_initWeak(&location, self);
  accountService = self->_accountService;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke;
  v8[3] = &unk_1E8017060;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [(PKAccountService *)accountService accountWithIdentifier:v6 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke_2;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
}

void __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained[1] type] == 3)
  {
    v4 = [v3[1] associatedInstallmentPlan];
    v5 = [v4 identifier];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [*(a1 + 32) creditDetails];
    v7 = [v6 installmentPlans];

    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = *v25;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v11 identifier];
          v13 = [v5 isEqualToString:v12];

          if (v13)
          {
            v8 = v11;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v14 = [v3 actionItems];
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(v16 + 104);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke_3;
    v20[3] = &unk_1E8022F00;
    v20[4] = v16;
    v21 = v15;
    v22 = v8;
    v23 = v14;
    v18 = v14;
    v19 = v8;
    [v17 reloadTransactionsWithCompletion:v20];
  }
}

void __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke_4;
  v5[3] = &unk_1E8022BE8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 _handleTransactionHistoryUpdated:a2 stateUpdate:v5 reloadBlock:&__block_literal_global_389];
}

void __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  [v3 setAccount:a1[4]];
  if (a1[5])
  {
    [v3 setAssociatedInstallmentPlan:?];
  }

  [v3 setActionItems:a1[6]];
}

void __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD50];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  [v4 addIndex:3];
  [v4 addIndex:4];
  [v3 reloadSections:v4];
}

- (void)_handleCoarseLocationChangedNotification:(id)a3
{
  v4 = [a3 object];
  coarseLocationMonitor = self->_coarseLocationMonitor;

  if (v4 == coarseLocationMonitor)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PKTransactionHistoryDefaultDataSource__handleCoarseLocationChangedNotification___block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __82__PKTransactionHistoryDefaultDataSource__handleCoarseLocationChangedNotification___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  [WeakRetained reloadSections:v3];
}

- (id)actionItems
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKTransactionHistoryState *)self->_state associatedInstallmentPlan];
  v4 = [(PKTransactionHistoryState *)self->_state account];
  v5 = [v3 remainingAmount];
  v6 = [MEMORY[0x1E696AB90] zero];
  v7 = [v5 compare:v6];

  v8 = [MEMORY[0x1E69B8770] shouldDisplayAccountInformationForTransactionSourceCollection:self->_transactionSourceCollection withAccount:v4];
  if ([v4 supportsSchedulePayment])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9 && v7 == 1;
  if (v10 && [v3 state] == 2)
  {
    v11 = objc_alloc_init(PKDashboardTextActionItem);
    v12 = PKLocalizedFeatureString();
    [(PKDashboardTextActionItem *)v11 setTitle:v12];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__PKTransactionHistoryDefaultDataSource_actionItems__block_invoke;
    v15[3] = &unk_1E8022F28;
    v15[4] = self;
    [(PKDashboardTextActionItem *)v11 setAction:v15];
    [(PKDashboardTextActionItem *)v11 setLayoutStyle:0];
    [(PKDashboardTextActionItem *)v11 setActionStyle:1];
    v16[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __52__PKTransactionHistoryDefaultDataSource_actionItems__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!*(*(a1 + 32) + 136))
  {
    v4 = [PKAccountServiceAccountResolutionController alloc];
    v5 = [*(*(a1 + 32) + 8) account];
    v6 = [(PKAccountServiceAccountResolutionController *)v4 initWithAccount:v5 accountUserCollection:*(*(a1 + 32) + 88) transactionSourceCollection:*(*(a1 + 32) + 32)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 136);
    *(v7 + 136) = v6;

    v9 = *(*(a1 + 32) + 136);
    v10 = [v3 pkui_viewControllerFromResponderChain];
    [v9 setPresentingViewController:v10];
  }

  v11 = objc_alloc_init(MEMORY[0x1E69B8408]);
  v12 = [*(*(a1 + 32) + 8) associatedInstallmentPlan];
  [v11 setEarlyInstallmentPlan:v12];

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(*(a1 + 32) + 8) associatedInstallmentPlan];
    v15 = [v14 identifier];
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Presenting bill payment for early installment payment with identifier %@", &v16, 0xCu);
  }

  [*(*(a1 + 32) + 136) presentFlowForAccountResolution:1 configuration:v11 completion:0];
}

- (void)worldRegionUpdated:(id)a3 updatedRegion:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKTransactionHistoryDefaultDataSource_worldRegionUpdated_updatedRegion___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __74__PKTransactionHistoryDefaultDataSource_worldRegionUpdated_updatedRegion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(*(a1 + 32) + 8) groups];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([*(a1 + 32) _updateGroup:v8 withRegion:*(a1 + 40)])
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
          v10 = [*(a1 + 32) _groupItemForTransaction:v8];
          v11 = [MEMORY[0x1E696AC88] indexPathForRow:v5 inSection:6];
          [WeakRetained itemChanged:v10 atIndexPath:v11];
        }

        ++v5;
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  if ([*(*(a1 + 32) + 8) type] == 4)
  {
    v12 = [*(*(a1 + 32) + 8) group];
    v13 = [v12 type];

    if (v13 == 13)
    {
      v14 = *(a1 + 32);
      v15 = [v14[1] group];
      LODWORD(v14) = [v14 _updateGroup:v15 withRegion:*(a1 + 40)];

      if (v14)
      {
        v16 = objc_loadWeakRetained((*(a1 + 32) + 128));
        v17 = [*(a1 + 32) _headerItem];
        v18 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
        [v16 itemChanged:v17 atIndexPath:v18];
      }
    }
  }
}

- (BOOL)_updateGroup:(id)a3 withRegion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 type] == 13)
  {
    v7 = [v6 identifier];
    v8 = [v5 regions];
    v9 = [v8 mutableCopy];

    if ([v9 count])
    {
      v10 = 0;
      while (1)
      {
        v11 = [v9 objectAtIndex:v10];
        v12 = [v11 identifier];
        v13 = v7;
        v14 = v13;
        if (v12 == v13)
        {
          break;
        }

        if (v7 && v12)
        {
          v15 = [v12 isEqualToString:v13];

          if (v15)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        if (++v10 >= [v9 count])
        {
          goto LABEL_11;
        }
      }

LABEL_14:
      [v9 replaceObjectAtIndex:v10 withObject:v6];
      v17 = [v9 copy];
      [v5 setRegions:v17];

      v16 = 1;
    }

    else
    {
LABEL_11:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)didUpdateTransactions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (PKBankConnectEnabled())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MEMORY[0x1E69B8EA8] transactionFromFKPaymentTransaction:*(*(&v17 + 1) + 8 * v10) institution:self->_bankConnectInstitution];
          [v5 safelyAddObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = MEMORY[0x1E69B8EA8];
    v13 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
    v14 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    v15 = [v14 uniqueID];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__PKTransactionHistoryDefaultDataSource_didUpdateTransactions___block_invoke;
    v16[3] = &unk_1E8014878;
    v16[4] = self;
    [v12 augmentTransactionsIfNeeded:v5 transactionSourceIdentifiers:v13 passUniqueID:v15 usingDataProvider:0 completion:v16];
  }
}

- (void)bankConnectConsentStatusDidChange:(unint64_t)a3
{
  v5 = PKBankConnectEnabled();
  if (a3 && v5)
  {
    v6 = MEMORY[0x1E695E0F0];

    [(PKTransactionHistoryDefaultDataSource *)self _handleTransactionHistoryUpdated:v6];
  }
}

- (void)physicalCardsChanged:(id)a3 forAccountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKTransactionHistoryDefaultDataSource_physicalCardsChanged_forAccountIdentifier___block_invoke;
  v10[3] = &unk_1E8011828;
  objc_copyWeak(&v13, &location);
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __83__PKTransactionHistoryDefaultDataSource_physicalCardsChanged_forAccountIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained[1] account];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [v2 accountIdentifier];
    v6 = v4;
    v7 = v5;
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      if (!v6 || !v7)
      {

        goto LABEL_10;
      }

      v9 = [v6 isEqualToString:v7];

      if (!v9)
      {
        goto LABEL_11;
      }
    }

    objc_storeStrong(WeakRetained + 12, *(a1 + 40));
    v10 = objc_loadWeakRetained(WeakRetained + 15);
    [v10 transactionHistoryUpdated];

    v8 = objc_loadWeakRetained(WeakRetained + 16);
    [v8 updateContent];
LABEL_10:
  }

LABEL_11:
}

- (PKTransactionHistoryDataSourceDelegate)customDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customDelegate);

  return WeakRetained;
}

@end