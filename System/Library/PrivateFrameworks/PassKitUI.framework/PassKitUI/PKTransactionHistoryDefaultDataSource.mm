@interface PKTransactionHistoryDefaultDataSource
- (BOOL)_updateGroup:(id)group withRegion:(id)region;
- (BOOL)areTransactionsEditable;
- (BOOL)canDeleteItem:(id)item;
- (NSString)footerSecondaryTitle;
- (NSString)footerTitle;
- (PKTransactionHistoryDataSourceDelegate)customDelegate;
- (PKTransactionHistoryDefaultDataSource)initWithFetcher:(id)fetcher transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards featuredTransaction:(id)transaction selectedTransactions:(id)self0 type:(unint64_t)self1;
- (PKTransactionHistoryDefaultDataSource)initWithInstallmentPlan:(id)plan transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards;
- (PKTransactionHistoryDefaultDataSource)initWithTransactionGroup:(id)group transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards fetcher:(id)fetcher;
- (PKTransactionHistoryDefaultDataSource)initWithTransactionGroups:(id)groups headerGroup:(id)group regionUpdater:(id)updater tokens:(id)tokens transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)self0 physicalCards:(id)self1;
- (id)_contactKeysToFetch;
- (id)_groupItemForTransaction:(id)transaction;
- (id)_headerItem;
- (id)_initWithTransactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards;
- (id)_totalDailyCashRewardsFromTransactions:(id)transactions;
- (id)_totalFromGroups:(id)groups;
- (id)_totalPaymentsFromTransactions:(id)transactions startDate:(id)date endDate:(id)endDate;
- (id)_totalRewardsFromTransactions:(id)transactions;
- (id)_totalSpendingFromTransactions:(id)transactions startDate:(id)date endDate:(id)endDate;
- (id)_transactionItemForTransaction:(id)transaction inGroup:(id)group;
- (id)actionItems;
- (id)footerTextItemForSection:(unint64_t)section;
- (id)itemAtIndexPath:(id)path;
- (id)navigationBarTitle;
- (id)titleForSection:(unint64_t)section;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (void)_handleAccountsChangedNotification:(id)notification;
- (void)_handleCoarseLocationChangedNotification:(id)notification;
- (void)_handleTransactionHistoryUpdated:(id)updated stateUpdate:(id)update reloadBlock:(id)block;
- (void)_loadContact;
- (void)_loadPeerPaymentPendingRequestForRequestToken:(id)token;
- (void)_loadTransactionReceipt;
- (void)_notifyContentLoadedIfNecessary;
- (void)_p2pTotalsFromTransactions:(id)transactions received:(id *)received sent:(id *)sent;
- (void)_updateFooterTotalFromGroup:(id)group;
- (void)_updateWithTransactionReceipt:(id)receipt;
- (void)bankConnectConsentStatusDidChange:(unint64_t)change;
- (void)dealloc;
- (void)deleteItem:(id)item completionHandler:(id)handler;
- (void)deleteItems:(id)items;
- (void)didUpdateTransactions:(id)transactions;
- (void)loadTransactionsIfNeeded;
- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier;
- (void)setDataSourceDelegate:(id)delegate;
- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt;
- (void)updateGroup:(id)group;
- (void)updateGroups:(id)groups headerGroup:(id)group;
- (void)updateStateWithBlock:(id)block reloadBlock:(id)reloadBlock;
- (void)worldRegionUpdated:(id)updated updatedRegion:(id)region;
@end

@implementation PKTransactionHistoryDefaultDataSource

- (id)_initWithTransactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards
{
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  accountCopy = account;
  userCollectionCopy = userCollection;
  cardsCopy = cards;
  v37.receiver = self;
  v37.super_class = PKTransactionHistoryDefaultDataSource;
  v18 = [(PKTransactionHistoryDefaultDataSource *)&v37 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_transactionSourceCollection, collection);
    objc_storeStrong(&v19->_familyCollection, familyCollection);
    objc_storeStrong(&v19->_accountUserCollection, userCollection);
    v20 = [cardsCopy copy];
    physicalCards = v19->_physicalCards;
    v19->_physicalCards = v20;

    v22 = objc_alloc_init(PKMutableTransactionHistoryState);
    [(PKMutableTransactionHistoryState *)v22 setAccount:accountCopy];
    state = v19->_state;
    v19->_state = &v22->super;
    v24 = v22;

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v19->_currentCalendar;
    v19->_currentCalendar = currentCalendar;

    v27 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    headerIndexPath = v19->_headerIndexPath;
    v19->_headerIndexPath = v27;

    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v19->_accountService;
    v19->_accountService = mEMORY[0x1E69B8400];

    [(PKAccountService *)v19->_accountService registerObserver:v19];
    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    dataProvider = v19->_dataProvider;
    v19->_dataProvider = defaultDataProvider;

    [(PKPaymentDataProvider *)v19->_dataProvider addDelegate:v19];
    mEMORY[0x1E69B8708] = [MEMORY[0x1E69B8708] sharedInstance];
    coarseLocationMonitor = v19->_coarseLocationMonitor;
    v19->_coarseLocationMonitor = mEMORY[0x1E69B8708];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v19 selector:sel__handleCoarseLocationChangedNotification_ name:*MEMORY[0x1E69BB7B0] object:v19->_coarseLocationMonitor];
  }

  return v19;
}

- (PKTransactionHistoryDefaultDataSource)initWithFetcher:(id)fetcher transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards featuredTransaction:(id)transaction selectedTransactions:(id)self0 type:(unint64_t)self1
{
  v56 = *MEMORY[0x1E69E9840];
  fetcherCopy = fetcher;
  transactionCopy = transaction;
  transactionsCopy = transactions;
  v20 = [(PKTransactionHistoryDefaultDataSource *)self _initWithTransactionSourceCollection:collection familyCollection:familyCollection account:account accountUserCollection:userCollection physicalCards:cards];
  v21 = v20;
  if (v20)
  {
    v22 = v20[1];
    [v22 setType:type];
    [v22 setFeaturedTransaction:transactionCopy];
    [v22 setSelectedTransactions:transactionsCopy];
    objc_storeStrong(&v21->_transactionFetcher, fetcher);
    [(PKDashboardTransactionFetcher *)v21->_transactionFetcher setDelegate:v21];
    if (type == 1)
    {
      merchant = [transactionCopy merchant];
      v35 = merchant;
      if (merchant)
      {
        merchant2 = merchant;
      }

      else
      {
        transactions = [transactionsCopy transactions];
        firstObject = [transactions firstObject];
        merchant2 = [firstObject merchant];
      }

      if (![merchant2 hasMapsMatch] || objc_msgSend(merchant2, "shouldIgnoreMapsMatches"))
      {
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        transactions2 = [transactionsCopy transactions];
        v40 = [transactions2 countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v40)
        {
          v41 = v40;
          v49 = merchant2;
          v42 = *v52;
          while (2)
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v52 != v42)
              {
                objc_enumerationMutation(transactions2);
              }

              merchant3 = [*(*(&v51 + 1) + 8 * i) merchant];
              if (([merchant3 shouldIgnoreMapsMatches] & 1) == 0)
              {
                mapsBrand = [merchant3 mapsBrand];
                if (mapsBrand)
                {
                  v46 = mapsBrand;

                  goto LABEL_24;
                }
              }
            }

            v41 = [transactions2 countByEnumeratingWithState:&v51 objects:v55 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }

          merchant3 = v49;
        }

        else
        {
          merchant3 = merchant2;
        }

LABEL_24:

        merchant2 = merchant3;
      }

      merchant = v21->_merchant;
      v21->_merchant = merchant2;

      [(PKTransactionHistoryDefaultDataSource *)v21 _loadTransactionReceipt];
    }

    else if (!type)
    {
      counterpartHandles = [(PKDashboardTransactionFetcher *)v21->_transactionFetcher counterpartHandles];
      anyObject = [counterpartHandles anyObject];
      peerPaymentCounterpartHandle = v21->_peerPaymentCounterpartHandle;
      v21->_peerPaymentCounterpartHandle = anyObject;

      v26 = objc_alloc_init(MEMORY[0x1E695CE18]);
      v27 = objc_alloc(MEMORY[0x1E69B8740]);
      _contactKeysToFetch = [(PKTransactionHistoryDefaultDataSource *)v21 _contactKeysToFetch];
      v29 = [v27 initWithContactStore:v26 keysToFetch:_contactKeysToFetch];
      contactResolver = v21->_contactResolver;
      v21->_contactResolver = v29;

      v31 = objc_alloc_init(PKPeerPaymentCounterpartImageResolver);
      peerPaymentImageResolver = v21->_peerPaymentImageResolver;
      v21->_peerPaymentImageResolver = v31;

      [(PKTransactionHistoryDefaultDataSource *)v21 _loadContact];
      if ([transactionCopy isPeerPaymentGroupRequestReceivedTransaction])
      {
        peerPaymentRequestToken = [transactionCopy peerPaymentRequestToken];
        [(PKTransactionHistoryDefaultDataSource *)v21 _loadPeerPaymentPendingRequestForRequestToken:peerPaymentRequestToken];
      }
    }

    [(PKTransactionHistoryDefaultDataSource *)v21 _notifyContentLoadedIfNecessary];
  }

  return v21;
}

- (PKTransactionHistoryDefaultDataSource)initWithTransactionGroup:(id)group transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards fetcher:(id)fetcher
{
  groupCopy = group;
  collectionCopy = collection;
  accountCopy = account;
  fetcherCopy = fetcher;
  v19 = [(PKTransactionHistoryDefaultDataSource *)self _initWithTransactionSourceCollection:collectionCopy familyCollection:familyCollection account:accountCopy accountUserCollection:userCollection physicalCards:cards];
  v20 = v19;
  if (v19)
  {
    v100 = fetcherCopy;
    v21 = v19[1];
    [v21 setType:2];
    [v21 setGroup:groupCopy];
    [v21 setSelectedTransactions:groupCopy];
    objc_storeStrong(&v20->_transactionFetcher, fetcher);
    type = [groupCopy type];
    if (PKBankConnectEnabled())
    {
      paymentPass = [collectionCopy paymentPass];
      v24 = objc_alloc(MEMORY[0x1E6967DA0]);
      primaryAccountIdentifier = [paymentPass primaryAccountIdentifier];
      v26 = [v24 initWithPrimaryAccountIdentifier:primaryAccountIdentifier];
      bankConnectAccountsProvider = v20->_bankConnectAccountsProvider;
      v20->_bankConnectAccountsProvider = v26;

      v28 = v20->_bankConnectAccountsProvider;
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __163__PKTransactionHistoryDefaultDataSource_initWithTransactionGroup_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards_fetcher___block_invoke;
      v101[3] = &unk_1E8022B50;
      v105 = type == 14;
      v102 = v20;
      v103 = paymentPass;
      v104 = groupCopy;
      v29 = paymentPass;
      [(FKBankConnectAccountsProvider *)v28 accountAndReconsentStatusWithCompletion:v101];
    }

    [(PKTransactionHistoryDefaultDataSource *)v20 _updateFooterTotalFromGroup:groupCopy];
    searchQuery = [groupCopy searchQuery];
    tokens = [searchQuery tokens];
    v32 = [tokens count];

    if (type == 14 && v32 == 1)
    {
      searchQuery2 = [groupCopy searchQuery];
      displayNameToken = [searchQuery2 displayNameToken];
      merchant = [displayNameToken merchant];
      merchant = v20->_merchant;
      v20->_merchant = merchant;

      searchQuery3 = [groupCopy searchQuery];
      peerPaymentToken = [searchQuery3 peerPaymentToken];
      group = [peerPaymentToken group];
      handles = [group handles];
      anyObject = [handles anyObject];
      p_peerPaymentCounterpartHandle = &v20->_peerPaymentCounterpartHandle;
      peerPaymentCounterpartHandle = v20->_peerPaymentCounterpartHandle;
      v20->_peerPaymentCounterpartHandle = anyObject;
    }

    else
    {
      v44 = v20->_merchant;
      v20->_merchant = 0;

      p_peerPaymentCounterpartHandle = &v20->_peerPaymentCounterpartHandle;
      searchQuery3 = v20->_peerPaymentCounterpartHandle;
      v20->_peerPaymentCounterpartHandle = 0;
    }

    if (*p_peerPaymentCounterpartHandle)
    {
      v45 = objc_alloc_init(MEMORY[0x1E695CE18]);
      v46 = objc_alloc(MEMORY[0x1E69B8740]);
      _contactKeysToFetch = [(PKTransactionHistoryDefaultDataSource *)v20 _contactKeysToFetch];
      v48 = [v46 initWithContactStore:v45 keysToFetch:_contactKeysToFetch];
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

    fetcherCopy = v100;
    type2 = [groupCopy type];
    if (type2 <= 4)
    {
      if (type2 == 2)
      {
        v74 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v20->_transactionSourceCollection paymentDataProvider:0];
        transactionFetcher = v20->_transactionFetcher;
        v20->_transactionFetcher = v74;

        v76 = v20->_transactionFetcher;
        startDate = [groupCopy startDate];
        endDate = [groupCopy endDate];
        [(PKDashboardTransactionFetcher *)v76 setLimit:0 startDate:startDate endDate:endDate];

        v79 = v20->_transactionFetcher;
        transactionTypes = [groupCopy transactionTypes];
        [(PKDashboardTransactionFetcher *)v79 filterTypes:transactionTypes];

        [(PKDashboardTransactionFetcher *)v20->_transactionFetcher setDelegate:v20];
        v81 = objc_alloc_init(MEMORY[0x1E696AB78]);
        formatterTitle = v20->_formatterTitle;
        v20->_formatterTitle = v81;

        v66 = v20->_formatterTitle;
        v67 = @"MMMM yyyy";
      }

      else
      {
        if (type2 != 3)
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
        startDate2 = [groupCopy startDate];
        endDate2 = [groupCopy endDate];
        [(PKDashboardTransactionFetcher *)v58 setLimit:0 startDate:startDate2 endDate:endDate2];

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

    if (type2 != 5)
    {
      if (type2 == 7)
      {
        v53 = objc_alloc(MEMORY[0x1E69B8788]);
        transactionSourceCollection = v20->_transactionSourceCollection;
        v55 = 11;
        goto LABEL_23;
      }

      if (type2 == 9)
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

    startDate3 = [groupCopy startDate];
    v69 = PKStartOfMonth();

    type3 = [accountCopy type];
    if (type3 == 1)
    {
      creditDetails = [accountCopy creditDetails];
    }

    else
    {
      if (type3 != 4)
      {
        createdDate = 0;
        goto LABEL_30;
      }

      creditDetails = [accountCopy savingsDetails];
    }

    v85 = creditDetails;
    createdDate = [creditDetails createdDate];

LABEL_30:
    v99 = createdDate;
    if ([createdDate compare:v69] == 1)
    {
      v87 = createdDate;

      v69 = v87;
    }

    v88 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v20->_transactionSourceCollection paymentDataProvider:0];
    v89 = v20->_transactionFetcher;
    v20->_transactionFetcher = v88;

    v90 = v20->_transactionFetcher;
    endDate3 = [groupCopy endDate];
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
    fetcherCopy = v100;
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
  transactionHistory = [(PKTransactionHistoryState *)self->_state transactionHistory];

  if (!transactionHistory)
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

- (void)updateGroup:(id)group
{
  groupCopy = group;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PKTransactionHistoryDefaultDataSource_updateGroup___block_invoke;
  v6[3] = &unk_1E8022B78;
  v7 = groupCopy;
  selfCopy = self;
  v5 = groupCopy;
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

- (void)_updateFooterTotalFromGroup:(id)group
{
  groupCopy = group;
  totalAmount = [groupCopy totalAmount];
  p_footerTotal = &self->_footerTotal;
  footerTotal = self->_footerTotal;
  self->_footerTotal = totalAmount;

  if (!self->_footerTotal)
  {
    transactions = [groupCopy transactions];
    v9 = [transactions count];

    if (v9)
    {
      if ([groupCopy type] == 14)
      {
        searchQuery = [groupCopy searchQuery];
        peerPaymentToken = [searchQuery peerPaymentToken];
        group = [peerPaymentToken group];

        if (group)
        {
          v25 = 0;
          obj = 0;
          transactions2 = [groupCopy transactions];
          [(PKTransactionHistoryDefaultDataSource *)self _p2pTotalsFromTransactions:transactions2 received:&obj sent:&v25];

          amount = [obj amount];
          self->_hasReceived = [amount pk_isPositiveNumber];

          amount2 = [v25 amount];
          self->_hasSent = [amount2 pk_isPositiveNumber];

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

      transactions3 = [groupCopy transactions];
      startDate = [groupCopy startDate];
      endDate = [groupCopy endDate];
      v21 = [(PKTransactionHistoryDefaultDataSource *)self _totalSpendingFromTransactions:transactions3 startDate:startDate endDate:endDate];
      v22 = self->_footerTotal;
      self->_footerTotal = v21;
    }
  }

LABEL_13:
}

- (PKTransactionHistoryDefaultDataSource)initWithInstallmentPlan:(id)plan transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards
{
  planCopy = plan;
  v15 = [(PKTransactionHistoryDefaultDataSource *)self _initWithTransactionSourceCollection:collection familyCollection:familyCollection account:account accountUserCollection:userCollection physicalCards:cards];
  v16 = v15;
  if (v15)
  {
    v17 = v15[1];
    [v17 setType:3];
    [v17 setAssociatedInstallmentPlan:planCopy];
    v18 = [objc_alloc(MEMORY[0x1E69B8788]) initWithInstallmentPlan:planCopy transactionSourceCollection:v16->_transactionSourceCollection paymentDataProvider:0];
    transactionFetcher = v16->_transactionFetcher;
    v16->_transactionFetcher = v18;

    [(PKDashboardTransactionFetcher *)v16->_transactionFetcher setLimit:0 startDate:0 endDate:0];
    [(PKDashboardTransactionFetcher *)v16->_transactionFetcher setDelegate:v16];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__handleAccountsChangedNotification_ name:*MEMORY[0x1E69B9E60] object:0];

    actionItems = [(PKTransactionHistoryDefaultDataSource *)v16 actionItems];
    v22 = v16->_transactionFetcher;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __154__PKTransactionHistoryDefaultDataSource_initWithInstallmentPlan_transactionSourceCollection_familyCollection_account_accountUserCollection_physicalCards___block_invoke;
    v25[3] = &unk_1E801F078;
    v26 = v16;
    v27 = actionItems;
    v23 = actionItems;
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

- (PKTransactionHistoryDefaultDataSource)initWithTransactionGroups:(id)groups headerGroup:(id)group regionUpdater:(id)updater tokens:(id)tokens transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)self0 physicalCards:(id)self1
{
  groupsCopy = groups;
  groupCopy = group;
  updaterCopy = updater;
  tokensCopy = tokens;
  v19 = [(PKTransactionHistoryDefaultDataSource *)self _initWithTransactionSourceCollection:collection familyCollection:familyCollection account:account accountUserCollection:userCollection physicalCards:cards];
  v20 = v19;
  if (v19)
  {
    v21 = v19[1];
    [v21 setType:4];
    [v21 setGroup:groupCopy];
    [v21 setGroups:groupsCopy];
    objc_storeStrong(&v20->_tokens, tokens);
    v22 = [(PKTransactionHistoryDefaultDataSource *)v20 _totalFromGroups:groupsCopy];
    footerTotal = v20->_footerTotal;
    v20->_footerTotal = v22;

    type = [groupCopy type];
    searchQuery = [groupCopy searchQuery];
    tokens = [searchQuery tokens];
    v27 = [tokens count];

    if (type == 14 && v27 == 1)
    {
      searchQuery2 = [groupCopy searchQuery];
      displayNameToken = [searchQuery2 displayNameToken];
      merchant = [displayNameToken merchant];
      merchant = v20->_merchant;
      v20->_merchant = merchant;
    }

    else
    {
      searchQuery2 = v20->_merchant;
      v20->_merchant = 0;
    }

    objc_storeStrong(&v20->_regionUpdater, updater);
    [(PKWorldRegionUpdater *)v20->_regionUpdater addObserver:v20];
    if ([groupCopy type] == 3)
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PKAccountService *)self->_accountService unregisterObserver:self];
  [(PKPaymentDataProvider *)self->_dataProvider removeDelegate:self];
  v4.receiver = self;
  v4.super_class = PKTransactionHistoryDefaultDataSource;
  [(PKTransactionHistoryDefaultDataSource *)&v4 dealloc];
}

- (void)updateGroups:(id)groups headerGroup:(id)group
{
  groupsCopy = groups;
  groupCopy = group;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PKTransactionHistoryDefaultDataSource_updateGroups_headerGroup___block_invoke;
  v10[3] = &unk_1E8022BE8;
  v11 = groupCopy;
  v12 = groupsCopy;
  selfCopy = self;
  v8 = groupsCopy;
  v9 = groupCopy;
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
  transactionHistory = [(PKTransactionHistoryState *)self->_state transactionHistory];
  v3 = [transactionHistory countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(transactionHistory);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDeletable])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [transactionHistory countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  transactionHistory = [(PKTransactionHistoryState *)v3 transactionHistory];
  group = [(PKTransactionHistoryState *)v3 group];
  selectedTransactions = [(PKTransactionHistoryState *)v3 selectedTransactions];
  v7 = selectedTransactions;
  if (!transactionHistory)
  {
    transactions = [selectedTransactions transactions];
    if ([transactions count])
    {
    }

    else
    {
      groups = [(PKTransactionHistoryState *)v3 groups];
      v10 = [groups count];

      if (!v10)
      {
        goto LABEL_61;
      }
    }
  }

  type = [(PKTransactionHistoryState *)v3 type];
  if (type == 1)
  {
    transactions2 = [v7 transactions];
    v22 = [transactions2 count];

    if (v22)
    {
      startDate = [v7 startDate];
      v24 = v7;
      goto LABEL_23;
    }

    featuredTransaction = [(PKTransactionHistoryState *)v3 featuredTransaction];

    if (featuredTransaction)
    {
      featuredTransaction2 = [(PKTransactionHistoryState *)v3 featuredTransaction];
      startDate = [featuredTransaction2 transactionDate];

      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      firstObject2 = [currentCalendar components:14 fromDate:date];

      if (![currentCalendar date:startDate matchesComponents:firstObject2])
      {
        v46 = PKLocalizedFeatureString();
        v47 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v47 setLocalizedDateFormatFromTemplate:@"MMMM"];
        v54 = [v47 stringFromDate:startDate];
        v56 = startDate;
        v48 = v46;
        pk_uppercaseFirstStringForPreferredLocale = PKStringWithValidatedFormat();

        startDate = v56;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    if (transactionHistory)
    {
      lastObject = [transactionHistory lastObject];
      startDate = [lastObject transactionDate];

      firstObject = [transactionHistory firstObject];
      currentCalendar = [firstObject transactionDate];

      pk_uppercaseFirstStringForPreferredLocale = 0;
      if (startDate && currentCalendar)
      {
        date2 = [MEMORY[0x1E695DF00] date];
        if ([currentCalendar compare:date2] == -1)
        {
          v44 = date2;
        }

        else
        {
          v44 = currentCalendar;
        }

        v45 = v44;

        pk_uppercaseFirstStringForPreferredLocale = PKDateRangeStringFromDateToDate();

        currentCalendar = v45;
      }

      goto LABEL_55;
    }

    goto LABEL_66;
  }

  if (type != 4 && type != 2)
  {
    goto LABEL_61;
  }

  type2 = [group type];
  pk_uppercaseFirstStringForPreferredLocale = 0;
  if (type2 <= 8)
  {
    if (type2 < 2)
    {
      goto LABEL_32;
    }

    if (type2 == 5)
    {
      currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
      startDate2 = [group startDate];
      if ([currentCalendar2 isDateInToday:startDate2])
      {
        pk_uppercaseFirstStringForPreferredLocale = PKLocalizedString(&cfstr_RelativeDateTo.isa);
      }

      else
      {
        if ([currentCalendar2 isDateInYesterday:startDate2])
        {
          PKRelativeDateStringWithFullDateForUnits();
        }

        else
        {
          [(NSDateFormatter *)self->_formatterTitle stringFromDate:startDate2];
        }
        v53 = ;
        pk_uppercaseFirstStringForPreferredLocale = [v53 pk_uppercaseFirstStringForPreferredLocale];
      }

      goto LABEL_72;
    }

    if (type2 != 7)
    {
      goto LABEL_62;
    }

    account = [(PKTransactionHistoryState *)v3 account];
    feature = [account feature];

    if (feature == 5)
    {
      date3 = [MEMORY[0x1E695DF00] date];
      startDate = PKYearStringFromDate();

      pk_uppercaseFirstStringForPreferredLocale = PKLocalizedFeatureString();
      goto LABEL_56;
    }

    if (feature != 2)
    {
      goto LABEL_61;
    }

LABEL_66:
    pk_uppercaseFirstStringForPreferredLocale = PKLocalizedFeatureString();
    goto LABEL_62;
  }

  if (type2 > 0x10)
  {
    goto LABEL_62;
  }

  if (((1 << type2) & 0x1AC00) != 0)
  {
LABEL_32:
    startDate3 = [group startDate];
    if (startDate3)
    {
      v30 = startDate3;
      endDate = [group endDate];

      if (endDate)
      {
        startDate = [group startDate];
        currentCalendar = [group endDate];
LABEL_35:
        pk_uppercaseFirstStringForPreferredLocale = PKDateRangeStringFromDateToDate();
LABEL_55:

LABEL_56:
        goto LABEL_62;
      }
    }

    if ([transactionHistory count])
    {
      startDate = [transactionHistory lastObject];
      currentCalendar = [startDate transactionDate];
      firstObject2 = [transactionHistory firstObject];
      transactionDate = [firstObject2 transactionDate];
      pk_uppercaseFirstStringForPreferredLocale = PKDateRangeStringFromDateToDate();
      goto LABEL_38;
    }

LABEL_61:
    pk_uppercaseFirstStringForPreferredLocale = 0;
    goto LABEL_62;
  }

  if (type2 == 9)
  {
    transactions3 = [v7 transactions];
    firstObject3 = [transactions3 firstObject];
    startDate = [firstObject3 transactionDate];

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date4 = [MEMORY[0x1E695DF00] date];
    firstObject2 = [currentCalendar components:14 fromDate:date4];

    if ([currentCalendar date:startDate matchesComponents:firstObject2])
    {
LABEL_43:
      pk_uppercaseFirstStringForPreferredLocale = PKLocalizedFeatureString();
      goto LABEL_54;
    }

    transactionDate = objc_alloc_init(MEMORY[0x1E696AB78]);
    [transactionDate setLocalizedDateFormatFromTemplate:@"MMMM"];
    v55 = [transactionDate stringFromDate:startDate];
    pk_uppercaseFirstStringForPreferredLocale = PKLocalizedFeatureString();

LABEL_38:
LABEL_54:

    goto LABEL_55;
  }

  if (type2 != 14)
  {
    goto LABEL_62;
  }

  searchQuery = [group searchQuery];
  peerPaymentToken = [searchQuery peerPaymentToken];

  if (!peerPaymentToken)
  {
    amount = [(PKCurrencyAmount *)self->_footerTotal amount];
    pk_isZeroNumber = [amount pk_isZeroNumber];

    if (pk_isZeroNumber)
    {
      goto LABEL_61;
    }

    startDate = [group startDate];
    v24 = group;
LABEL_23:
    endDate2 = [v24 endDate];
    currentCalendar = endDate2;
    pk_uppercaseFirstStringForPreferredLocale = 0;
    if (!startDate || !endDate2)
    {
      goto LABEL_55;
    }

    goto LABEL_35;
  }

  if ([group type] == 14)
  {
    searchQuery2 = [group searchQuery];
    peerPaymentToken2 = [searchQuery2 peerPaymentToken];
    currentCalendar2 = [peerPaymentToken2 group];

    if (currentCalendar2)
    {
      if (self->_hasReceived)
      {
        v20 = @"TRANSACTIONS_TOTAL_RECEIVED";
LABEL_76:
        pk_uppercaseFirstStringForPreferredLocale = PKLocalizedPeerPaymentString(&v20->isa);
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
    currentCalendar2 = 0;
  }

  pk_uppercaseFirstStringForPreferredLocale = 0;
LABEL_72:

LABEL_62:

  return pk_uppercaseFirstStringForPreferredLocale;
}

- (NSString)footerSecondaryTitle
{
  type = [(PKTransactionHistoryState *)self->_state type];
  if (type == 1)
  {
    footerSecondaryTotal = self->_footerSecondaryTotal;
    if (footerSecondaryTotal)
    {
      amount = [(PKCurrencyAmount *)footerSecondaryTotal amount];
      zero = [MEMORY[0x1E696AB90] zero];
      v14 = [amount isEqual:zero];

      if ((v14 & 1) == 0)
      {
        peerPaymentToken = PKLocalizedFeatureString();
        goto LABEL_27;
      }
    }

LABEL_10:
    peerPaymentToken = 0;
    goto LABEL_27;
  }

  if (type != 2)
  {
    goto LABEL_10;
  }

  group = [(PKTransactionHistoryState *)self->_state group];
  type2 = [group type];
  if (type2 == 14)
  {
    searchQuery = [group searchQuery];
    peerPaymentToken = [searchQuery peerPaymentToken];

    if (!peerPaymentToken)
    {
      goto LABEL_26;
    }

    if ([group type] == 14)
    {
      searchQuery2 = [group searchQuery];
      peerPaymentToken2 = [searchQuery2 peerPaymentToken];
      group2 = [peerPaymentToken2 group];

      if (group2 && self->_hasReceived && self->_hasSent)
      {
        peerPaymentToken = PKLocalizedPeerPaymentString(&cfstr_TransactionsTo_1.isa);
LABEL_25:

        goto LABEL_26;
      }
    }

    else
    {
      group2 = 0;
    }

    peerPaymentToken = 0;
    goto LABEL_25;
  }

  if (type2 != 7)
  {
    if (type2 == 5)
    {
      startDate = [group startDate];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      v9 = [currentCalendar components:14 fromDate:date];

      if ([currentCalendar date:startDate matchesComponents:v9])
      {
        peerPaymentToken = PKLocalizedFeatureString();
      }

      else
      {
        v21 = objc_alloc_init(MEMORY[0x1E696AB78]);
        [v21 setLocalizedDateFormatFromTemplate:@"MMMM"];
        v23 = [v21 stringFromDate:startDate];
        peerPaymentToken = PKLocalizedFeatureString();
      }

      goto LABEL_26;
    }

    goto LABEL_14;
  }

  account = [(PKTransactionHistoryState *)self->_state account];
  feature = [account feature];

  if (feature != 5)
  {
LABEL_14:
    peerPaymentToken = 0;
    goto LABEL_26;
  }

  peerPaymentToken = PKLocalizedFeatureString();
LABEL_26:

LABEL_27:

  return peerPaymentToken;
}

- (id)navigationBarTitle
{
  v3 = self->_state;
  group = [(PKTransactionHistoryState *)v3 group];
  type = [(PKTransactionHistoryState *)v3 type];
  pk_uppercaseFirstStringForPreferredLocale = 0;
  if (type > 1)
  {
    if (type != 2 && type != 4)
    {
      if (type != 3)
      {
        goto LABEL_45;
      }

      associatedInstallmentPlan = [(PKTransactionHistoryState *)v3 associatedInstallmentPlan];
      product = [associatedInstallmentPlan product];
      model = [product model];
      goto LABEL_14;
    }

    pk_uppercaseFirstStringForPreferredLocale = 0;
    switch([group type])
    {
      case 0:
        [group merchantCategory];
        displayName2 = PKLocalizedStringFromMerchantCategory();
        goto LABEL_24;
      case 1:
        associatedInstallmentPlan = [group merchant];
        displayName = [associatedInstallmentPlan displayName];
        goto LABEL_43;
      case 2:
      case 3:
        formatterTitle = self->_formatterTitle;
        startDate = [group startDate];
        v10 = [(NSDateFormatter *)formatterTitle stringFromDate:startDate];
        pk_uppercaseFirstStringForPreferredLocale = [v10 pk_uppercaseFirstStringForPreferredLocale];

        goto LABEL_45;
      case 4:
      case 5:
      case 6:
      case 8:
      case 9:
      case 10:
      case 11:
        displayName2 = PKLocalizedFeatureString();
        goto LABEL_24;
      case 7:
        associatedInstallmentPlan = [(PKTransactionHistoryState *)self->_state account];
        [associatedInstallmentPlan feature];
        goto LABEL_21;
      case 13:
        associatedInstallmentPlan = [group regions];
        product = [associatedInstallmentPlan firstObject];
        model = [product localizedName];
        goto LABEL_14;
      case 14:
        associatedInstallmentPlan = [group searchQuery];
        tokens = [associatedInstallmentPlan tokens];
        v19 = [tokens count];

        if (v19 != 1)
        {
          goto LABEL_42;
        }

        locationTokens = [associatedInstallmentPlan locationTokens];
        v21 = [locationTokens count];

        if (v21)
        {
          locationTokens2 = [associatedInstallmentPlan locationTokens];
          lastObject = [locationTokens2 lastObject];
          group2 = [lastObject group];
          regions = [group2 regions];
          firstObject = [regions firstObject];

          pk_uppercaseFirstStringForPreferredLocale = [firstObject localizedName];

          goto LABEL_44;
        }

        categoryToken = [associatedInstallmentPlan categoryToken];

        if (categoryToken)
        {
          categoryToken2 = [associatedInstallmentPlan categoryToken];
          group3 = [categoryToken2 group];
          [group3 merchantCategory];

          displayName = PKLocalizedStringFromMerchantCategory();
          goto LABEL_43;
        }

        transactionTypes = [associatedInstallmentPlan transactionTypes];
        v32 = [transactionTypes count];

        if (v32)
        {
          transactionTypes2 = [associatedInstallmentPlan transactionTypes];
          firstObject2 = [transactionTypes2 firstObject];
          integerValue = [firstObject2 integerValue];

          if (integerValue > 6)
          {
            if (integerValue != 7)
            {
              if (integerValue == 11)
              {
                product = [(PKTransactionHistoryState *)self->_state account];
                [product feature];
                model = PKLocalizedFeatureString();
LABEL_14:
                pk_uppercaseFirstStringForPreferredLocale = model;

LABEL_44:
                goto LABEL_45;
              }

              if (integerValue != 10)
              {
                goto LABEL_42;
              }
            }
          }

          else if (integerValue != 1)
          {
            if (integerValue == 5)
            {
              v36 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
              goto LABEL_51;
            }

            if (integerValue == 6)
            {
              v36 = @"TRANSACTION_TYPE_TOP_UP";
LABEL_51:
              displayName = PKLocalizedPaymentString(&v36->isa);
              goto LABEL_43;
            }

LABEL_42:
            displayName = PKLocalizedString(&cfstr_SearchResults.isa);
            goto LABEL_43;
          }
        }

        else
        {
          transactionSources = [associatedInstallmentPlan transactionSources];
          v38 = [transactionSources count];

          if (!v38)
          {
            goto LABEL_42;
          }

          transactionSources2 = [associatedInstallmentPlan transactionSources];
          firstObject3 = [transactionSources2 firstObject];
          integerValue2 = [firstObject3 integerValue];

          if (integerValue2 != 6 && integerValue2 != 5)
          {
            goto LABEL_42;
          }
        }

LABEL_21:
        displayName = PKLocalizedFeatureString();
LABEL_43:
        pk_uppercaseFirstStringForPreferredLocale = displayName;
        goto LABEL_44;
      default:
        goto LABEL_45;
    }
  }

  if (type)
  {
    if (type == 1)
    {
      displayName2 = [(PKMerchant *)self->_merchant displayName];
LABEL_24:
      pk_uppercaseFirstStringForPreferredLocale = displayName2;
    }
  }

  else
  {
    pk_uppercaseFirstStringForPreferredLocale = self->_peerPaymentCounterpartHandle;
    featuredTransaction = [(PKTransactionHistoryState *)v3 featuredTransaction];
    peerPaymentPaymentMode = [featuredTransaction peerPaymentPaymentMode];

    if (peerPaymentPaymentMode != 2)
    {
      v17 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:pk_uppercaseFirstStringForPreferredLocale contact:self->_contact];

      pk_uppercaseFirstStringForPreferredLocale = v17;
    }
  }

LABEL_45:

  return pk_uppercaseFirstStringForPreferredLocale;
}

- (void)setDataSourceDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (self->_contentIsLoaded)
  {
    [delegateCopy contentIsLoaded];
  }
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = self->_state;
  associatedInstallmentPlan = [(PKTransactionHistoryState *)v5 associatedInstallmentPlan];
  featuredTransaction = [(PKTransactionHistoryState *)v5 featuredTransaction];
  peerPaymentPendingRequest = [(PKTransactionHistoryState *)v5 peerPaymentPendingRequest];
  section = [pathCopy section];
  _headerItem = 0;
  if (section > 2)
  {
    if (section <= 4)
    {
      if (section != 3)
      {
        actionItems = [(PKTransactionHistoryState *)v5 actionItems];
        _headerItem = [actionItems objectAtIndex:{objc_msgSend(pathCopy, "item")}];

        goto LABEL_49;
      }

      item = [pathCopy item];
      if (item != 1)
      {
        if (!item)
        {
          _headerItem = objc_alloc_init(PKDashboardInstallmentPlanStatusItem);
          [(PKDashboardInstallmentPlanStatusItem *)_headerItem setInstallmentPlan:associatedInstallmentPlan];
          account = [(PKTransactionHistoryState *)v5 account];
          [(PKDashboardInstallmentPlanStatusItem *)_headerItem setAccount:account];

          [(PKDashboardInstallmentPlanStatusItem *)_headerItem setTransactionSourceCollection:self->_transactionSourceCollection];
          [(PKDashboardInstallmentPlanStatusItem *)_headerItem setAccountUserCollection:self->_accountUserCollection];
          [(PKDashboardInstallmentPlanStatusItem *)_headerItem setFamilyMemberCollection:self->_familyCollection];
          goto LABEL_49;
        }

        goto LABEL_31;
      }

      _headerItem = objc_alloc_init(PKDashboardTextActionItem);
      [(PKDashboardInstallmentPlanStatusItem *)_headerItem setLayoutStyle:0];
      v39 = PKLocalizedFeatureString();
      [(PKDashboardInstallmentPlanStatusItem *)_headerItem setTitle:v39];

      totalAmount = [associatedInstallmentPlan totalAmount];
      if (totalAmount)
      {
        currencyCode = [associatedInstallmentPlan currencyCode];

        if (currencyCode)
        {
          totalAmount2 = [associatedInstallmentPlan totalAmount];
          currencyCode2 = [associatedInstallmentPlan currencyCode];
          v43 = PKCurrencyAmountCreate(totalAmount2, currencyCode2);

          totalAmount = [v43 formattedStringValue];
        }

        else
        {
          totalAmount = 0;
        }
      }

      [(PKDashboardInstallmentPlanStatusItem *)_headerItem setSubtitle:totalAmount];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __57__PKTransactionHistoryDefaultDataSource_itemAtIndexPath___block_invoke_2;
      v64[3] = &unk_1E8022C38;
      v65 = v5;
      v66 = associatedInstallmentPlan;
      selfCopy = self;
      [(PKDashboardInstallmentPlanStatusItem *)_headerItem setAction:v64];

      goto LABEL_48;
    }

    if (section == 5)
    {
      v33 = [pathCopy row];
      transactionHistory = [(PKTransactionHistoryState *)v5 transactionHistory];
      v35 = [transactionHistory count];

      if (v33 < v35)
      {
        transactionHistory2 = [(PKTransactionHistoryState *)v5 transactionHistory];
        v37 = [transactionHistory2 objectAtIndex:v33];

        _headerItem = [(PKTransactionHistoryDefaultDataSource *)self _transactionItemForTransaction:v37 inGroup:0];

        goto LABEL_49;
      }

      goto LABEL_31;
    }

    if (section != 6)
    {
      goto LABEL_49;
    }

    v17 = [pathCopy row];
    groups = [(PKTransactionHistoryState *)v5 groups];
    v19 = [groups count];

    if (v17 < v19)
    {
      groups2 = [(PKTransactionHistoryState *)v5 groups];
      totalAmount = [groups2 objectAtIndex:v17];

      if (self->_regionUpdater && [totalAmount type] == 13)
      {
        regionUpdater = self->_regionUpdater;
        regions = [totalAmount regions];
        firstObject = [regions firstObject];
        [(PKWorldRegionUpdater *)regionUpdater updateCoordinatesForWorldRegionIfNeeded:firstObject];
      }

      v24 = [(PKTransactionHistoryDefaultDataSource *)self _groupItemForTransaction:totalAmount];
      goto LABEL_47;
    }

LABEL_31:
    _headerItem = 0;
    goto LABEL_49;
  }

  if (section)
  {
    if (section != 1)
    {
      if (section != 2)
      {
        goto LABEL_49;
      }

      v12 = [pathCopy row];
      selectedTransactions = [(PKTransactionHistoryState *)v5 selectedTransactions];
      totalAmount = [selectedTransactions transactions];

      if (v12 < [totalAmount count])
      {
        v15 = [totalAmount objectAtIndex:v12];
        selectedTransactions2 = [(PKTransactionHistoryState *)v5 selectedTransactions];
        _headerItem = [(PKTransactionHistoryDefaultDataSource *)self _transactionItemForTransaction:v15 inGroup:selectedTransactions2];

LABEL_48:
        goto LABEL_49;
      }

      goto LABEL_31;
    }

    v38 = [pathCopy row];
    if (v38 != 1)
    {
      if (!v38)
      {
        _headerItem = [(PKTransactionHistoryDefaultDataSource *)self _transactionItemForTransaction:featuredTransaction inGroup:0];
        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setIsFeaturedTransaction:1];
        goto LABEL_49;
      }

      v45 = [pathCopy row];
      if (associatedInstallmentPlan)
      {
        goto LABEL_45;
      }

      goto LABEL_38;
    }

    preferredLocation = [featuredTransaction preferredLocation];

    if (preferredLocation)
    {
      _headerItem = objc_alloc_init(PKDashboardTransactionMapItem);
      [(PKDashboardInstallmentPlanStatusItem *)_headerItem setTransaction:featuredTransaction];
      goto LABEL_49;
    }

    if (associatedInstallmentPlan)
    {
      _headerItem = objc_alloc_init(PKDashboardTransactionInstallmentItem);
      [(PKDashboardInstallmentPlanStatusItem *)_headerItem setInstallmentPlan:associatedInstallmentPlan];
      account2 = [(PKTransactionHistoryState *)self->_state account];
      [(PKDashboardInstallmentPlanStatusItem *)_headerItem setAccount:account2];

      [(PKDashboardInstallmentPlanStatusItem *)_headerItem setTransactionSourceCollection:self->_transactionSourceCollection];
      goto LABEL_49;
    }

    associatedReceipt = [(PKTransactionHistoryState *)v5 associatedReceipt];

    if (!associatedReceipt)
    {
      if (peerPaymentPendingRequest)
      {
        _headerItem = objc_alloc_init(PKDashboardTextActionItem);
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
        v57 = PKPeerPaymentTotalAmountReceivedForPendingRequest(peerPaymentPendingRequest);
        v58 = v57;
        if (v57)
        {
          minimalFormattedStringValue = [v57 minimalFormattedStringValue];
          v63 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
        }

        else
        {
          v63 = 0;
        }

        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setTitle:v56];
        v60 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setTitleFont:v60];

        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setSubtitle:v63];
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setSubtitleColor:secondaryLabelColor];

        v62 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setSubtitleFont:v62];

        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setActionStyle:0];
        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setDisclosureAlignment:1];
        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setLayoutStyle:2];
        objc_initWeak(&location, self);
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __57__PKTransactionHistoryDefaultDataSource_itemAtIndexPath___block_invoke;
        v68[3] = &unk_1E8022C10;
        objc_copyWeak(&v69, &location);
        [(PKDashboardInstallmentPlanStatusItem *)_headerItem setAction:v68];
        objc_destroyWeak(&v69);
        objc_destroyWeak(&location);

        goto LABEL_49;
      }

      v45 = [pathCopy row];
LABEL_38:
      preferredLocation2 = [featuredTransaction preferredLocation];
      if (preferredLocation2)
      {
      }

      else
      {
        associatedReceipt2 = [(PKTransactionHistoryState *)v5 associatedReceipt];

        if (!associatedReceipt2)
        {
          v49 = v45 - 1;
          goto LABEL_46;
        }
      }

LABEL_45:
      v49 = v45 - 2;
LABEL_46:
      totalAmount = [(PKTransactionHistoryState *)v5 featuredTransactionActions];
      v24 = [totalAmount objectAtIndex:v49];
LABEL_47:
      _headerItem = v24;
      goto LABEL_48;
    }

    _headerItem = objc_alloc_init(PKDashboardTransactionReceiptItem);
    associatedReceipt3 = [(PKTransactionHistoryState *)v5 associatedReceipt];
    [(PKDashboardInstallmentPlanStatusItem *)_headerItem setReceipt:associatedReceipt3];

    [(PKDashboardInstallmentPlanStatusItem *)_headerItem setTransaction:featuredTransaction];
    [(PKDashboardInstallmentPlanStatusItem *)_headerItem setTransactionSourceCollection:self->_transactionSourceCollection];
    [(PKDashboardInstallmentPlanStatusItem *)_headerItem setFamilyCollection:self->_familyCollection];
    account3 = [(PKTransactionHistoryState *)self->_state account];
    [(PKDashboardInstallmentPlanStatusItem *)_headerItem setAccount:account3];

    [(PKDashboardInstallmentPlanStatusItem *)_headerItem setAccountUserCollection:self->_accountUserCollection];
    [(PKDashboardInstallmentPlanStatusItem *)_headerItem setPhysicalCards:self->_physicalCards];
  }

  else
  {
    if ([(PKTransactionHistoryState *)v5 type]== 4)
    {
      if (self->_regionUpdater)
      {
        group = [(PKTransactionHistoryState *)v5 group];
        type = [group type];

        if (type == 13)
        {
          v27 = self->_regionUpdater;
          group2 = [(PKTransactionHistoryState *)v5 group];
          regions2 = [group2 regions];
          firstObject2 = [regions2 firstObject];
          [(PKWorldRegionUpdater *)v27 updateCoordinatesForWorldRegionIfNeeded:firstObject2];
        }
      }
    }

    _headerItem = [(PKTransactionHistoryDefaultDataSource *)self _headerItem];
  }

LABEL_49:

  return _headerItem;
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

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  v4 = self->_state;
  type = [(PKTransactionHistoryState *)v4 type];
  featuredTransaction = 0;
  if (section <= 2)
  {
    if (!section)
    {
      v10 = type == 4 || type == 2;
      if (!v10 || (-[PKTransactionHistoryState group](v4, "group"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 type], v11, (v12 & 0xFFFFFFFFFFFFFFFELL) != 2))
      {
        featuredTransaction = 1;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (section != 1)
    {
      if (section == 2)
      {
        selectedTransactions = [(PKTransactionHistoryState *)v4 selectedTransactions];
        transactions = [selectedTransactions transactions];
        featuredTransaction = [transactions count];

LABEL_25:
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (type == 2)
    {
      goto LABEL_27;
    }

    featuredTransaction = [(PKTransactionHistoryState *)v4 featuredTransaction];

    if (!featuredTransaction)
    {
      goto LABEL_28;
    }

    featuredTransaction2 = [(PKTransactionHistoryState *)v4 featuredTransaction];
    preferredLocation = [featuredTransaction2 preferredLocation];
    if (preferredLocation || ([(PKTransactionHistoryState *)v4 associatedInstallmentPlan], (preferredLocation = objc_claimAutoreleasedReturnValue()) != 0) || ([(PKTransactionHistoryState *)v4 associatedReceipt], (preferredLocation = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      peerPaymentPendingRequest = [(PKTransactionHistoryState *)v4 peerPaymentPendingRequest];

      if (!peerPaymentPendingRequest)
      {
        v18 = 1;
        goto LABEL_35;
      }
    }

    v18 = 2;
LABEL_35:
    selectedTransactions = [(PKTransactionHistoryState *)v4 featuredTransactionActions];
    featuredTransaction = [selectedTransactions count] + v18;
    goto LABEL_25;
  }

  if (section <= 4)
  {
    if (section != 3)
    {
      actionItems = [(PKTransactionHistoryState *)v4 actionItems];
LABEL_24:
      selectedTransactions = actionItems;
      featuredTransaction = [actionItems count];
      goto LABEL_25;
    }

    if (type == 3)
    {
      account = [(PKTransactionHistoryState *)v4 account];
      accessLevel = [account accessLevel];

      if (accessLevel == 1)
      {
        featuredTransaction = 2;
      }

      else
      {
        featuredTransaction = 1;
      }

      goto LABEL_28;
    }

LABEL_27:
    featuredTransaction = 0;
    goto LABEL_28;
  }

  if (section == 5)
  {
    actionItems = [(PKTransactionHistoryState *)v4 transactionHistory];
    goto LABEL_24;
  }

  if (section == 6)
  {
    actionItems = [(PKTransactionHistoryState *)v4 groups];
    goto LABEL_24;
  }

LABEL_28:

  return featuredTransaction;
}

- (id)titleForSection:(unint64_t)section
{
  v5 = self->_state;
  selectedTransactions = [(PKTransactionHistoryState *)v5 selectedTransactions];
  endDate = [selectedTransactions endDate];
  v8 = 0;
  if (section > 4)
  {
    if (section != 5)
    {
      if (section != 6)
      {
        goto LABEL_64;
      }

      groups = [(PKTransactionHistoryState *)v5 groups];
      v13 = [groups count];

      if (!v13)
      {
        goto LABEL_63;
      }

      groups2 = [(PKTransactionHistoryState *)v5 groups];
      firstObject = [groups2 firstObject];
      type = [firstObject type];

      v8 = 0;
      if (type <= 11)
      {
        if (type)
        {
          if (type != 1)
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

      if (type != 12)
      {
        if (type == 13)
        {
          v17 = @"SEARCH_TITLE_LOCATION";
          goto LABEL_44;
        }

        if (type != 16)
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

    transactionHistory = [(PKTransactionHistoryState *)v5 transactionHistory];
    v21 = [transactionHistory count];

    if (!v21)
    {
      goto LABEL_63;
    }

    type2 = [(PKTransactionHistoryState *)v5 type];
    v8 = 0;
    if (type2 <= 1)
    {
      if (type2)
      {
        if (type2 != 1)
        {
          goto LABEL_64;
        }

        v23 = @"PAYMENT_TRANSACTION_HISTORY";
        goto LABEL_60;
      }

      goto LABEL_58;
    }

    if (type2 == 2)
    {
      group = [(PKTransactionHistoryState *)v5 group];
      type3 = [group type];

      if (type3 <= 6)
      {
        if ((type3 - 2) < 2)
        {
          goto LABEL_63;
        }

        if (type3 != 5)
        {
          goto LABEL_59;
        }

        v31 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
        v32 = [v31 components:8 fromDate:endDate];
        [v32 month];

        featuredTransaction = PKGregorianMonthSpecificLocalizedStringKeyForKey();
        v28 = PKLocalizedString(featuredTransaction);
        goto LABEL_46;
      }

      if (type3 != 9)
      {
        if (type3 != 7)
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

    else if (type2 != 3)
    {
      goto LABEL_64;
    }

    v27 = PKLocalizedFeatureString();
    goto LABEL_61;
  }

  if (section == 1)
  {
    featuredTransaction = [(PKTransactionHistoryState *)v5 featuredTransaction];
    if ([(NSString *)featuredTransaction transactionType]!= 3 || [(NSString *)featuredTransaction peerPaymentType]!= 3 || [(NSString *)featuredTransaction transactionStatus])
    {
      v19 = 0;
      goto LABEL_47;
    }

    v28 = PKLocalizedPaymentString(&cfstr_PeerPaymentPen_13.isa);
    goto LABEL_46;
  }

  if (section != 2)
  {
    goto LABEL_64;
  }

  transactions = [selectedTransactions transactions];
  v10 = [transactions count];

  if (!v10)
  {
    goto LABEL_63;
  }

  type4 = [selectedTransactions type];
  v8 = 0;
  if (type4 <= 5)
  {
    if (type4 < 2 || type4 == 4)
    {
      goto LABEL_37;
    }

    if (type4 != 5)
    {
      goto LABEL_64;
    }

    if ([(NSCalendar *)self->_currentCalendar isDateInToday:endDate])
    {
      v17 = @"RELATIVE_DATE_RECEIVED_TODAY";
      goto LABEL_44;
    }

    if ([(NSCalendar *)self->_currentCalendar isDateInYesterday:endDate])
    {
      v17 = @"RELATIVE_DATE_RECEIVED_YESTERDAY";
      goto LABEL_44;
    }

    featuredTransaction = [(NSDateFormatter *)self->_formatterTitle stringFromDate:endDate];
    v28 = PKLocalizedString(&cfstr_RelativeDateRe_1.isa, &stru_1F3BD5BF0.isa, featuredTransaction);
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

  if (type4 > 0x10)
  {
    goto LABEL_64;
  }

  if (((1 << type4) & 0x18140) != 0)
  {
LABEL_37:
    transactionHistory2 = [(PKTransactionHistoryState *)v5 transactionHistory];
    v25 = [transactionHistory2 count];

    if (v25)
    {
      featuredTransaction = [selectedTransactions startDate];
      endDate2 = [selectedTransactions endDate];
      v19 = PKDateRangeStringFromDateToDate();

      goto LABEL_47;
    }

LABEL_59:
    v23 = @"PAYMENT_TRANSACTIONS";
    goto LABEL_60;
  }

  if (type4 == 12)
  {
    v27 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionHis.isa);
    goto LABEL_61;
  }

  if (type4 == 14)
  {
    goto LABEL_59;
  }

LABEL_64:

  return v8;
}

- (id)footerTextItemForSection:(unint64_t)section
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (section == 1)
  {
    featuredTransaction = [(PKTransactionHistoryState *)self->_state featuredTransaction];
    preferredLocation = [featuredTransaction preferredLocation];
    if (preferredLocation)
    {
      v6 = preferredLocation;
      coarseLocationEnabled = [(PKCoarseLocationMonitor *)self->_coarseLocationMonitor coarseLocationEnabled];

      if (coarseLocationEnabled)
      {
        v8 = PKLocalizedPaymentString(&cfstr_CoarseLocation.isa);
        v9 = PKLocalizedPaymentString(&cfstr_CoarseLocation_0.isa, &stru_1F3BD5BF0.isa, v8);
        v10 = [PKDashboardFooterTextItem itemWithFooterText:v9];
        linkColor = [MEMORY[0x1E69DC888] linkColor];
        [v10 setLinkTextColor:linkColor];

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

- (void)updateStateWithBlock:(id)block reloadBlock:(id)reloadBlock
{
  blockCopy = block;
  reloadBlockCopy = reloadBlock;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__PKTransactionHistoryDefaultDataSource_updateStateWithBlock_reloadBlock___block_invoke;
  v11[3] = &unk_1E8022C60;
  v11[4] = self;
  v12 = blockCopy;
  v13 = reloadBlockCopy;
  v9 = reloadBlockCopy;
  v10 = blockCopy;
  [WeakRetained performBatchUpdates:v11 completion:0];
}

void __74__PKTransactionHistoryDefaultDataSource_updateStateWithBlock_reloadBlock___block_invoke(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[6];
  WeakRetained = objc_loadWeakRetained((a1[4] + 128));
  (*(v2 + 16))(v2, WeakRetained);
}

- (id)_totalSpendingFromTransactions:(id)transactions startDate:(id)date endDate:(id)endDate
{
  v36 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  dateCopy = date;
  endDateCopy = endDate;
  if ([transactionsCopy count])
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = transactionsCopy;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v27 = transactionsCopy;
      v11 = 0;
      if (dateCopy)
      {
        v12 = endDateCopy == 0;
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
          transactionType = [v16 transactionType];
          if (transactionType <= 0xD)
          {
            if (((1 << transactionType) & 0x2882) != 0 || !transactionType && ((v23 = [v16 transactionStatus], v23 <= 8) ? (v24 = ((1 << v23) & 0x103) == 0) : (v24 = 1), !v24))
            {
              if (!v14)
              {
                goto LABEL_17;
              }

              transactionDate = [v16 transactionDate];
              if ([transactionDate compare:dateCopy] != -1)
              {
                v19 = [transactionDate compare:endDateCopy];

                if (v19 == 1)
                {
                  continue;
                }

LABEL_17:
                transactionDate = [v16 amount];
                if (transactionDate)
                {
                  v20 = [(NSDecimalNumber *)zero decimalNumberByAdding:transactionDate];

                  zero = v20;
                }

                currencyCode = [v16 currencyCode];
                v22 = currencyCode;
                if (v11)
                {
                  if (currencyCode && ![v11 isEqualToString:currencyCode])
                  {

                    transactionsCopy = v27;
                    goto LABEL_39;
                  }
                }

                else
                {
                  v11 = currencyCode;
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
            v25 = PKCurrencyAmountCreate(zero, v11);
          }

          else
          {
            v25 = 0;
          }

          transactionsCopy = v27;
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

- (id)_totalPaymentsFromTransactions:(id)transactions startDate:(id)date endDate:(id)endDate
{
  v38 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  dateCopy = date;
  endDateCopy = endDate;
  if ([transactionsCopy count])
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = transactionsCopy;
    v10 = transactionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v11)
    {
      goto LABEL_31;
    }

    v12 = v11;
    v13 = *v34;
    if (dateCopy)
    {
      v14 = endDateCopy == 0;
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
        transactionType = [v18 transactionType];
        if (transactionType == 10 || transactionType == 0)
        {
          transactionStatus = [v18 transactionStatus];
          if (transactionStatus > 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v16;
          }

          if (v22)
          {
            if (transactionStatus > 1)
            {
              continue;
            }

LABEL_26:
            amount = [v18 amount];
            pk_absoluteValue = [amount pk_absoluteValue];

            if (pk_absoluteValue)
            {
              v26 = [(NSDecimalNumber *)zero decimalNumberByAdding:pk_absoluteValue];

              zero = v26;
            }

LABEL_28:

            continue;
          }

          pk_absoluteValue = [v18 transactionDate];
          if ([pk_absoluteValue compare:dateCopy] == -1)
          {
            goto LABEL_28;
          }

          v24 = [pk_absoluteValue compare:endDateCopy];

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

        firstObject = [v10 firstObject];
        currencyCode = [firstObject currencyCode];
        v29 = PKCurrencyAmountCreate(zero, currencyCode);

        transactionsCopy = v31;
        goto LABEL_33;
      }
    }
  }

  v29 = 0;
LABEL_33:

  return v29;
}

- (id)_totalRewardsFromTransactions:(id)transactions
{
  v24 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  if ([transactionsCopy count])
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = transactionsCopy;
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
          amount = [v10 amount];
          goto LABEL_14;
        }

        if (![v10 transactionType])
        {
          amount = [v10 rewardsTotalAmount];
LABEL_14:
          v13 = amount;
          pk_absoluteValue = [amount pk_absoluteValue];

          if (!pk_absoluteValue)
          {
            continue;
          }

LABEL_15:
          v14 = [(NSDecimalNumber *)zero decimalNumberByAdding:pk_absoluteValue];

          zero = v14;
          continue;
        }

        if ([v10 transactionType] == 14)
        {
          pk_absoluteValue = [v10 rewardsTotalAmount];
          if (pk_absoluteValue)
          {
            goto LABEL_15;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v7)
      {
LABEL_18:

        firstObject = [v5 firstObject];
        currencyCode = [firstObject currencyCode];
        v17 = PKCurrencyAmountCreate(zero, currencyCode);

        goto LABEL_20;
      }
    }
  }

  v17 = 0;
LABEL_20:

  return v17;
}

- (id)_totalDailyCashRewardsFromTransactions:(id)transactions
{
  v21 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  if ([transactionsCopy count])
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = transactionsCopy;
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

          rewardsTotalAmount = [*(*(&v16 + 1) + 8 * i) rewardsTotalAmount];
          if (rewardsTotalAmount)
          {
            v11 = [(NSDecimalNumber *)zero decimalNumberByAdding:rewardsTotalAmount];

            zero = v11;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    firstObject = [v5 firstObject];
    currencyCode = [firstObject currencyCode];
    v14 = PKCurrencyAmountCreate(zero, currencyCode);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_totalFromGroups:(id)groups
{
  v54 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  firstObject = [groupsCopy firstObject];
  totalAmount = [firstObject totalAmount];
  currency = [totalAmount currency];

  if (currency)
  {
    v31 = currency;
    zero = [MEMORY[0x1E696AB90] zero];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v30 = groupsCopy;
    v7 = groupsCopy;
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
          regions = [v9 regions];
          v35 = [regions countByEnumeratingWithState:&v43 objects:v52 count:16];
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
                  objc_enumerationMutation(regions);
                }

                v36 = v12;
                v13 = *(*(&v43 + 1) + 8 * v12);
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                amount = v7;
                v15 = [amount countByEnumeratingWithState:&v39 objects:v51 count:16];
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
                        objc_enumerationMutation(amount);
                      }

                      v19 = *(*(&v39 + 1) + 8 * j);
                      if (v19 != v9)
                      {
                        regions2 = [v19 regions];
                        v21 = [v13 isIncludedInRegions:regions2];

                        if (v21)
                        {
                          v7 = v34;
                          goto LABEL_33;
                        }
                      }
                    }

                    v16 = [amount countByEnumeratingWithState:&v39 objects:v51 count:16];
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
              v35 = [regions countByEnumeratingWithState:&v43 objects:v52 count:16];
            }

            while (v35);
          }
        }

        totalAmount2 = [v9 totalAmount];
        regions = totalAmount2;
        if (totalAmount2)
        {
          currency2 = [totalAmount2 currency];
          amount = v31;
          v24 = currency2;
          v25 = v24;
          if (amount == v24)
          {

LABEL_32:
            amount = [regions amount];
            v27 = [zero decimalNumberByAdding:amount];

            zero = v27;
LABEL_33:

            goto LABEL_34;
          }

          if (!v24)
          {
            goto LABEL_33;
          }

          v26 = [amount isEqualToString:v24];

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

        currency = v31;
        v28 = PKCurrencyAmountMake();

        groupsCopy = v30;
        goto LABEL_38;
      }
    }
  }

  v28 = 0;
LABEL_38:

  return v28;
}

- (void)_p2pTotalsFromTransactions:(id)transactions received:(id *)received sent:(id *)sent
{
  v45 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  v8 = [transactionsCopy count];
  if (sent || received || v8)
  {
    receivedCopy = received;
    sentCopy = sent;
    zero = [MEMORY[0x1E696AB90] zero];
    zero2 = [MEMORY[0x1E696AB90] zero];
    firstObject = [transactionsCopy firstObject];
    currencyCode = [firstObject currencyCode];

    context = objc_autoreleasePoolPush();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = transactionsCopy;
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

        currencyCode2 = [v16 currencyCode];
        v18 = currencyCode;
        v19 = currencyCode2;
        v20 = v19;
        if (v18 == v19)
        {
        }

        else
        {
          if (!currencyCode || !v19)
          {

LABEL_34:
            v33 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1BD026000, v33, OS_LOG_TYPE_DEFAULT, "Found different currency codes in p2p transactions.", buf, 2u);
            }

            objc_autoreleasePoolPop(context);
            v30 = zero2;
            v27 = zero;
            goto LABEL_37;
          }

          v21 = [v18 isEqualToString:v19];

          if ((v21 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        subtotalAmount = [v16 subtotalAmount];
        if (subtotalAmount)
        {
          v23 = subtotalAmount;
          if (([subtotalAmount pk_isNotANumber] & 1) != 0 || objc_msgSend(v16, "transactionStatus") != 1)
          {
            pk_absoluteValue = v23;
          }

          else
          {
            pk_absoluteValue = [v23 pk_absoluteValue];

            peerPaymentType = [v16 peerPaymentType];
            if (peerPaymentType == 2)
            {
              v26 = zero;
              zero = [zero decimalNumberByAdding:pk_absoluteValue];
              goto LABEL_25;
            }

            if (peerPaymentType == 1)
            {
              v26 = zero2;
              zero2 = [zero2 decimalNumberByAdding:pk_absoluteValue];
LABEL_25:
            }
          }
        }

        else
        {
          pk_absoluteValue = 0;
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
    v27 = zero;
    if (receivedCopy)
    {
      v28 = PKCurrencyAmountMake();
      v29 = *receivedCopy;
      *receivedCopy = v28;
    }

    v30 = zero2;
    if (sentCopy)
    {
      v31 = PKCurrencyAmountMake();
      v32 = *sentCopy;
      *sentCopy = v31;
    }

LABEL_37:
  }
}

- (id)_transactionItemForTransaction:(id)transaction inGroup:(id)group
{
  transactionCopy = transaction;
  groupCopy = group;
  searchQuery = [groupCopy searchQuery];
  v9 = searchQuery;
  if (searchQuery)
  {
    v10 = [searchQuery domain] == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = self->_transactionSourceCollection;
  transactionSourceCollection = [groupCopy transactionSourceCollection];
  v13 = transactionSourceCollection;
  if (v10 && !v11 && transactionSourceCollection)
  {
    transactionSourceIdentifier = [transactionCopy transactionSourceIdentifier];
    v11 = [v13 transactionSourceForTransactionSourceIdentifier:transactionSourceIdentifier];

    if (v11)
    {
      cashbackTransactionSourceCollection = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v11];
    }

    else
    {
      cashbackTransactionSourceCollection = v13;
    }
  }

  else
  {
    if ([groupCopy type] != 5)
    {
      goto LABEL_13;
    }

    cashbackTransactionSourceCollection = [(PKDashboardTransactionFetcher *)self->_transactionFetcher cashbackTransactionSourceCollection];
  }

  v16 = cashbackTransactionSourceCollection;

  v11 = v16;
LABEL_13:
  v17 = [PKDashboardPaymentTransactionItem alloc];
  familyCollection = self->_familyCollection;
  account = [(PKTransactionHistoryState *)self->_state account];
  v20 = [(PKDashboardPaymentTransactionItem *)v17 initWithTransactionSourceCollection:v11 familyCollection:familyCollection transaction:transactionCopy account:account accountUserCollection:self->_accountUserCollection bankConnectInstitution:self->_bankConnectInstitution];

  [(PKDashboardPaymentTransactionItem *)v20 setPhysicalCards:self->_physicalCards];
  [(PKDashboardPaymentTransactionItem *)v20 setShouldDisplayTransactionSource:v10];
  if ([transactionCopy transactionType] == 9)
  {
    transactionFetcher = self->_transactionFetcher;
    identifier = [transactionCopy identifier];
    v23 = [(PKDashboardTransactionFetcher *)transactionFetcher cashbackGroupForTransactionWithIdentifier:identifier cashbackTransactionSourceCollection:0];
    [(PKDashboardPaymentTransactionItem *)v20 setGroup:v23];
  }

  secondaryFundingSourceFPANIdentifier = [transactionCopy secondaryFundingSourceFPANIdentifier];
  if (secondaryFundingSourceFPANIdentifier)
  {
    sourcesPerFundingSourceIdentifier = self->_sourcesPerFundingSourceIdentifier;
    if (!sourcesPerFundingSourceIdentifier)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v27 = self->_sourcesPerFundingSourceIdentifier;
      self->_sourcesPerFundingSourceIdentifier = v26;

      sourcesPerFundingSourceIdentifier = self->_sourcesPerFundingSourceIdentifier;
    }

    v28 = [(NSMutableDictionary *)sourcesPerFundingSourceIdentifier objectForKey:secondaryFundingSourceFPANIdentifier];
    if (!v28)
    {
      mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
      v30 = [mEMORY[0x1E69B8A58] passWithFPANIdentifier:secondaryFundingSourceFPANIdentifier];

      if (v30)
      {
        null = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v30];
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v28 = null;
      [(NSMutableDictionary *)self->_sourcesPerFundingSourceIdentifier setObject:null forKey:secondaryFundingSourceFPANIdentifier];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKDashboardPaymentTransactionItem *)v20 setSecondaryTransactionSource:v28];
    }
  }

  return v20;
}

- (id)_groupItemForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
  [(PKDashboardPaymentTransactionGroupItem *)v5 setTransactionSourceCollection:self->_transactionSourceCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setFamilyCollection:self->_familyCollection];
  account = [(PKTransactionHistoryState *)self->_state account];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setAccount:account];

  [(PKDashboardPaymentTransactionGroupItem *)v5 setAccountUserCollection:self->_accountUserCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setPhysicalCards:self->_physicalCards];
  [(PKDashboardPaymentTransactionGroupItem *)v5 setGroup:transactionCopy];

  [(PKDashboardPaymentTransactionGroupItem *)v5 setTokens:self->_tokens];

  return v5;
}

- (id)_headerItem
{
  v3 = self->_state;
  type = [(PKTransactionHistoryState *)v3 type];
  v5 = 0;
  if (type > 1)
  {
    if (type != 2 && type != 4)
    {
      if (type != 3)
      {
        goto LABEL_31;
      }

      v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:4];
      associatedInstallmentPlan = [(PKTransactionHistoryState *)v3 associatedInstallmentPlan];
      product = [associatedInstallmentPlan product];
      [(PKTransactionHistoryHeaderItem *)v5 setInstallmentProduct:product];
      goto LABEL_29;
    }

    group = [(PKTransactionHistoryState *)v3 group];
    if ([group type] == 14)
    {
      searchQuery = [group searchQuery];
      tokens = [searchQuery tokens];
      v10 = [tokens count];

      searchQuery2 = [group searchQuery];
      displayNameToken = [searchQuery2 displayNameToken];
      merchant = [displayNameToken merchant];

      searchQuery3 = [group searchQuery];
      peerPaymentToken = [searchQuery3 peerPaymentToken];
      group2 = [peerPaymentToken group];

      if (v10 == 1 && merchant)
      {
        v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:0];
        [(PKTransactionHistoryHeaderItem *)v5 setMerchant:merchant];
LABEL_27:

        goto LABEL_31;
      }

      if (v10 == 1 && group2)
      {
        v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:1];
        handles = [group2 handles];
        anyObject = [handles anyObject];
        [(PKTransactionHistoryHeaderItem *)v5 setPeerPaymentCounterpartHandle:anyObject];

        [(PKTransactionHistoryHeaderItem *)v5 setContact:self->_contact];
        goto LABEL_27;
      }
    }

    else
    {
      group2 = 0;
      merchant = 0;
    }

    v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:2];
    [(PKTransactionHistoryHeaderItem *)v5 setTransactionGroup:group];
    account = [(PKTransactionHistoryState *)self->_state account];

    if (account)
    {
      account2 = [(PKTransactionHistoryState *)self->_state account];
      -[PKTransactionHistoryHeaderItem setFeatureIdentifier:](v5, "setFeatureIdentifier:", [account2 feature]);
    }

    else
    {
      paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
      hasAssociatedPeerPaymentAccount = [paymentPass hasAssociatedPeerPaymentAccount];

      if (hasAssociatedPeerPaymentAccount)
      {
        [(PKTransactionHistoryHeaderItem *)v5 setFeatureIdentifier:1];
      }
    }

    transactionHistory = [(PKTransactionHistoryState *)self->_state transactionHistory];
    -[PKTransactionHistoryHeaderItem setHistoryCount:](v5, "setHistoryCount:", [group transactionCount] + objc_msgSend(transactionHistory, "count"));

    goto LABEL_27;
  }

  if (!type)
  {
    v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:1];
    counterpartHandles = [(PKDashboardTransactionFetcher *)self->_transactionFetcher counterpartHandles];
    anyObject2 = [counterpartHandles anyObject];
    [(PKTransactionHistoryHeaderItem *)v5 setPeerPaymentCounterpartHandle:anyObject2];

    [(PKTransactionHistoryHeaderItem *)v5 setContact:self->_contact];
    goto LABEL_31;
  }

  if (type != 1)
  {
    goto LABEL_31;
  }

  v5 = [[PKTransactionHistoryHeaderItem alloc] initWithType:0];
  [(PKTransactionHistoryHeaderItem *)v5 setMerchant:self->_merchant];
  associatedInstallmentPlan = [(PKTransactionHistoryState *)v3 featuredTransaction];
  if (!associatedInstallmentPlan)
  {
    product = [(PKTransactionHistoryState *)v3 selectedTransactions];
    transactions = [product transactions];
    firstObject = [transactions firstObject];
    [(PKTransactionHistoryHeaderItem *)v5 setTransaction:firstObject];

LABEL_29:
    goto LABEL_30;
  }

  [(PKTransactionHistoryHeaderItem *)v5 setTransaction:associatedInstallmentPlan];
LABEL_30:

LABEL_31:

  return v5;
}

- (void)_loadContact
{
  featuredTransaction = [(PKTransactionHistoryState *)self->_state featuredTransaction];
  peerPaymentCounterpartImageRecordIdentifier = [featuredTransaction peerPaymentCounterpartImageRecordIdentifier];

  featuredTransaction2 = [(PKTransactionHistoryState *)self->_state featuredTransaction];
  peerPaymentPaymentMode = [featuredTransaction2 peerPaymentPaymentMode];

  if (peerPaymentPaymentMode == 2 && peerPaymentCounterpartImageRecordIdentifier != 0)
  {
    if ([(PKPeerPaymentCounterpartImageResolver *)self->_peerPaymentImageResolver hasCachedImageDataForIdentifier:peerPaymentCounterpartImageRecordIdentifier])
    {
      v10 = [(PKPeerPaymentCounterpartImageResolver *)self->_peerPaymentImageResolver counterpartImageDataForIdentifier:peerPaymentCounterpartImageRecordIdentifier];
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
    [(PKPeerPaymentCounterpartImageResolver *)peerPaymentImageResolver counterpartImageDataForIdentifier:peerPaymentCounterpartImageRecordIdentifier completion:v19];
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

- (void)_loadPeerPaymentPendingRequestForRequestToken:(id)token
{
  tokenCopy = token;
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
  v6 = tokenCopy;
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
  null = [MEMORY[0x1E695DFB0] null];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PKTransactionHistoryDefaultDataSource__loadPeerPaymentPendingRequestForRequestToken___block_invoke_6;
  v9[3] = &unk_1E8022D78;
  objc_copyWeak(&v10, &location);
  v9[4] = v17;
  v8 = [v5 evaluateWithInput:null completion:v9];

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
  featuredTransaction = [(PKTransactionHistoryState *)self->_state featuredTransaction];
  associatedReceiptUniqueID = [featuredTransaction associatedReceiptUniqueID];

  if (associatedReceiptUniqueID)
  {
    objc_initWeak(&location, self);
    dataProvider = self->_dataProvider;
    featuredTransaction2 = [(PKTransactionHistoryState *)self->_state featuredTransaction];
    identifier = [featuredTransaction2 identifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PKTransactionHistoryDefaultDataSource__loadTransactionReceipt__block_invoke;
    v8[3] = &unk_1E8022DA0;
    objc_copyWeak(&v9, &location);
    [(PKPaymentDataProvider *)dataProvider transactionReceiptForTransactionWithIdentifier:identifier updateIfNecessary:1 completion:v8];

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

- (void)transactionWithIdentifier:(id)identifier didDownloadTransactionReceipt:(id)receipt
{
  identifierCopy = identifier;
  receiptCopy = receipt;
  if (receiptCopy)
  {
    featuredTransaction = [(PKTransactionHistoryState *)self->_state featuredTransaction];
    identifier = [featuredTransaction identifier];
    v10 = identifierCopy;
    v11 = identifier;
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
    v15 = receiptCopy;
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

- (void)_updateWithTransactionReceipt:(id)receipt
{
  receiptCopy = receipt;
  lineItems = [receiptCopy lineItems];
  firstObject = [lineItems firstObject];
  image = [firstObject image];

  if (image)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__PKTransactionHistoryDefaultDataSource__updateWithTransactionReceipt___block_invoke;
    v8[3] = &unk_1E8022BC0;
    v9 = receiptCopy;
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
    type = [(PKTransactionHistoryState *)self->_state type];
    v4 = type > 4 || ((1 << type) & 0x15) == 0;
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

- (BOOL)canDeleteItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transaction = [itemCopy transaction];
    isDeletable = [transaction isDeletable];
  }

  else
  {
    isDeletable = 0;
  }

  return isDeletable;
}

- (void)deleteItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  transaction = [item transaction];
  if (transaction && (-[PKTransactionHistoryState transactionHistory](self->_state, "transactionHistory"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 indexOfObject:transaction], v8, v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__PKTransactionHistoryDefaultDataSource_deleteItem_completionHandler___block_invoke;
    v14[3] = &unk_1E8022B78;
    v14[4] = self;
    v10 = transaction;
    v15 = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__PKTransactionHistoryDefaultDataSource_deleteItem_completionHandler___block_invoke_2;
    v13[3] = &__block_descriptor_40_e41_v16__0___PKDashboardDataSourceDelegate__8l;
    v13[4] = v9;
    [(PKTransactionHistoryDefaultDataSource *)self updateStateWithBlock:v14 reloadBlock:v13];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }

    dataProvider = self->_dataProvider;
    identifier = [v10 identifier];
    [(PKPaymentDataProvider *)dataProvider deletePaymentTransactionWithIdentifier:identifier];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
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

- (void)deleteItems:(id)items
{
  v35 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  selfCopy = self;
  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  transactionHistory = [(PKTransactionHistoryState *)self->_state transactionHistory];
  v23 = [transactionHistory mutableCopy];

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = itemsCopy;
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
          transaction = [v12 transaction];
          identifier = [transaction identifier];

          [v25 addObject:identifier];
          transactionHistory2 = [(PKTransactionHistoryState *)selfCopy->_state transactionHistory];
          transaction2 = [v12 transaction];
          v17 = [transactionHistory2 indexOfObject:transaction2];

          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [MEMORY[0x1E696AC88] indexPathForItem:v17 inSection:5];
            [v22 addObject:v18];
          }

          transaction3 = [v12 transaction];
          [v23 removeObject:transaction3];
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
  [(PKTransactionHistoryDefaultDataSource *)selfCopy updateStateWithBlock:v28 reloadBlock:v26];
  [(PKPaymentDataProvider *)selfCopy->_dataProvider deletePaymentTransactionsWithIdentifiers:v25];
}

void __53__PKTransactionHistoryDefaultDataSource_deleteItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v3 setTransactionHistory:v4];
}

- (void)_handleTransactionHistoryUpdated:(id)updated stateUpdate:(id)update reloadBlock:(id)block
{
  v188[1] = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  updateCopy = update;
  blockCopy = block;
  val = self;
  v137 = self->_state;
  featuredTransaction = [(PKTransactionHistoryState *)v137 featuredTransaction];
  associatedInstallmentPlan = [(PKTransactionHistoryState *)v137 associatedInstallmentPlan];
  featuredTransactionActions = [(PKTransactionHistoryState *)v137 featuredTransactionActions];
  selectedTransactions = [(PKTransactionHistoryState *)v137 selectedTransactions];
  group = [(PKTransactionHistoryState *)v137 group];
  transactionHistory = [(PKTransactionHistoryState *)v137 transactionHistory];
  account = [(PKTransactionHistoryState *)v137 account];
  if (featuredTransaction)
  {
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 3221225472;
    v177[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke;
    v177[3] = &unk_1E8022E10;
    v9 = featuredTransaction;
    v178 = v9;
    v10 = [updatedCopy indexOfObjectPassingTest:v177];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v124 = 0;
    }

    else
    {
      v12 = [updatedCopy objectAtIndex:v10];
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
    referenceIdentifier = [v134 referenceIdentifier];
    creditDetails = [account creditDetails];
    installmentPlans = [creditDetails installmentPlans];
    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_2;
    v175[3] = &unk_1E8022E38;
    v18 = referenceIdentifier;
    v176 = v18;
    v19 = [installmentPlans objectsPassingTest:v175];

    if ([v19 count] == 1)
    {
      anyObject = [v19 anyObject];

      v124 = 1;
    }

    else
    {
      anyObject = associatedInstallmentPlan;
    }

    associatedInstallmentPlan = anyObject;
    if (anyObject)
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
      featuredTransactionActions = v23;
    }
  }

  if (selectedTransactions)
  {
    transactions = [selectedTransactions transactions];
    v25 = [transactions mutableCopy];

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
      v31 = [updatedCopy indexOfObjectPassingTest:v171];
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = [updatedCopy objectAtIndex:v31];
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
      [selectedTransactions setTransactions:v33];

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

  type = [(PKTransactionHistoryState *)v137 type];
  if (type != 2)
  {
    if (type == 1)
    {
      if (v134)
      {
        transactionDate = [v134 transactionDate];
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        date = [MEMORY[0x1E695DF00] date];
        v38 = [currentCalendar components:14 fromDate:date];
        [currentCalendar date:transactionDate matchesComponents:v38];
        v39 = PKStartOfMonth();
        v40 = PKStartOfNextMonth();
        v41 = [v40 dateByAddingTimeInterval:-1.0];
        obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:updatedCopy startDate:v39 endDate:v41];
      }

      else
      {
        totalAmount = [selectedTransactions totalAmount];

        if (totalAmount)
        {
          obj = [selectedTransactions totalAmount];
        }

        else if (updatedCopy)
        {
          lastObject = [updatedCopy lastObject];
          transactionDate2 = [lastObject transactionDate];

          firstObject = [updatedCopy firstObject];
          transactionDate3 = [firstObject transactionDate];

          obj = 0;
          if (transactionDate2 && transactionDate3)
          {
            date2 = [MEMORY[0x1E695DF00] date];
            if ([transactionDate3 compare:date2] == -1)
            {
              v74 = date2;
            }

            else
            {
              v74 = transactionDate3;
            }

            v75 = v74;

            obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:updatedCopy startDate:transactionDate2 endDate:v75];
          }

          else
          {
            v75 = transactionDate3;
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

  type2 = [selectedTransactions type];
  if (type2 <= 6)
  {
    if ((type2 - 2) < 2)
    {
      obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:updatedCopy startDate:0 endDate:0];
LABEL_82:
      v67 = 0;
      v130 = 0;
      goto LABEL_84;
    }

    v43 = selectedTransactions;
    if (type2 == 5)
    {
      v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v55 = updatedCopy;
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
              identifier = [v59 identifier];
              v62 = [(PKDashboardTransactionFetcher *)transactionFetcher cashbackGroupForTransactionWithIdentifier:identifier cashbackTransactionSourceCollection:0];

              transactions2 = [v62 transactions];
              [v54 addObjectsFromArray:transactions2];
            }
          }

          v56 = [v55 countByEnumeratingWithState:&v167 objects:v187 count:16];
        }

        while (v56);
      }

      obj = [group totalAmount];
      updatedCopy = [v54 copy];

      v130 = [(PKTransactionHistoryDefaultDataSource *)val _totalRewardsFromTransactions:updatedCopy];

      goto LABEL_75;
    }

    goto LABEL_56;
  }

  v43 = selectedTransactions;
  if (type2 == 7)
  {
    feature = [account feature];
    date3 = [MEMORY[0x1E695DF00] date];
    if (feature == 5)
    {
      savingsDetails = [account savingsDetails];
      v78 = PKStartOfYear();
      obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:updatedCopy startDate:v78 endDate:date3];
      createdDate = [savingsDetails createdDate];
      v80 = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:updatedCopy startDate:createdDate endDate:date3];

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
      if (feature != 2)
      {
        v67 = 0;
        v130 = 0;
        obj = 0;
LABEL_79:

        goto LABEL_84;
      }

      savingsDetails = PKStartOfYear();
      obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:updatedCopy startDate:savingsDetails endDate:date3];
      v67 = 0;
      v130 = 0;
    }

    goto LABEL_79;
  }

  if (type2 == 9)
  {
    transactions3 = [selectedTransactions transactions];
    firstObject2 = [transactions3 firstObject];
    transactionDate4 = [firstObject2 transactionDate];

    currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
    date4 = [MEMORY[0x1E695DF00] date];
    v49 = [currentCalendar2 components:14 fromDate:date4];
    [currentCalendar2 date:transactionDate4 matchesComponents:v49];
    v50 = PKStartOfMonth();
    v51 = PKStartOfNextMonth();
    v52 = [v51 dateByAddingTimeInterval:-1.0];
    obj = [(PKTransactionHistoryDefaultDataSource *)val _totalPaymentsFromTransactions:updatedCopy startDate:v50 endDate:v52];

    goto LABEL_82;
  }

LABEL_56:
  totalAmount2 = [v43 totalAmount];

  if (totalAmount2)
  {
    obj = [selectedTransactions totalAmount];
    goto LABEL_82;
  }

  if ([updatedCopy count])
  {
    startDate = [group startDate];
    endDate = [group endDate];
    obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:updatedCopy startDate:startDate endDate:endDate];

    goto LABEL_82;
  }

  transactions4 = [group transactions];
  v84 = [transactions4 count];

  if (v84)
  {
    transactions5 = [group transactions];
    startDate2 = [group startDate];
    endDate2 = [group endDate];
    obj = [(PKTransactionHistoryDefaultDataSource *)val _totalSpendingFromTransactions:transactions5 startDate:startDate2 endDate:endDate2];

    goto LABEL_82;
  }

LABEL_83:
  v67 = 0;
  v130 = 0;
  obj = 0;
LABEL_84:
  if (v134)
  {
    v88 = [updatedCopy pk_arrayByRemovingObject:?];

    updatedCopy = v88;
  }

  if (selectedTransactions)
  {
    transactions6 = [selectedTransactions transactions];
    v90 = [updatedCopy pk_arrayByRemovingObjectsInArray:transactions6];

    updatedCopy = v90;
  }

  objc_storeStrong(&val->_footerTotal, obj);
  objc_storeStrong(&val->_footerSecondaryTotal, v130);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__PKTransactionHistoryDefaultDataSource__handleTransactionHistoryUpdated_stateUpdate_reloadBlock___block_invoke_5;
  aBlock[3] = &unk_1E8022E60;
  v135 = v134;
  v162 = v135;
  v121 = associatedInstallmentPlan;
  v163 = v121;
  v133 = featuredTransactionActions;
  v164 = v133;
  v91 = updatedCopy;
  v165 = v91;
  v140 = updateCopy;
  v166 = v140;
  v92 = _Block_copy(aBlock);
  if (val->_contentIsLoaded)
  {
    if (PKBankConnectEnabled() && [v91 count] && (objc_msgSend(v91, "firstObject"), v93 = objc_claimAutoreleasedReturnValue(), v94 = objc_msgSend(v93, "isBankConnectTransaction"), v93, v94))
    {
      v95 = [PKCollectionViewItemsDiffCalculator calculateDiffBetweenOldItems:transactionHistory andNewItems:v91 inSection:5];
      v96 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        deletedIndexPaths = [v95 deletedIndexPaths];
        v98 = [deletedIndexPaths count];
        insertedIndexPaths = [v95 insertedIndexPaths];
        v129 = [insertedIndexPaths count];
        movedFromIndexPaths = [v95 movedFromIndexPaths];
        v101 = [movedFromIndexPaths count];
        changedIndexPaths = [v95 changedIndexPaths];
        v103 = [changedIndexPaths count];
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
      v158 = blockCopy;
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
      v147 = transactionHistory;
      v150 = v124;
      v148 = selectedTransactions;
      v151 = v120;
      v152 = v67;
      v149 = blockCopy;
      [(PKTransactionHistoryDefaultDataSource *)val updateStateWithBlock:v153 reloadBlock:v145];
      if ([v135 isPeerPaymentGroupRequestReceivedTransaction])
      {
        peerPaymentRequestToken = [v135 peerPaymentRequestToken];
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

              peerPaymentRequestToken2 = [*(*(&v141 + 1) + 8 * j) peerPaymentRequestToken];
              v115 = peerPaymentRequestToken;
              v116 = v115;
              if (peerPaymentRequestToken2 == v115)
              {

LABEL_112:
                [(PKTransactionHistoryDefaultDataSource *)val _loadPeerPaymentPendingRequestForRequestToken:v116];
                goto LABEL_113;
              }

              if (peerPaymentRequestToken && peerPaymentRequestToken2)
              {
                v117 = [peerPaymentRequestToken2 isEqualToString:v115];

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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
  v11[1] = v5;
  descriptorForRequiredKeys = [off_1EE9A1EA8() descriptorForRequiredKeys];
  v11[2] = descriptorForRequiredKeys;
  descriptorForRequiredKeys2 = [off_1EE9A1EB0() descriptorForRequiredKeys];
  v8 = *MEMORY[0x1E695C208];
  v11[3] = descriptorForRequiredKeys2;
  v11[4] = v8;
  v11[5] = *MEMORY[0x1E695C330];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

- (void)_handleAccountsChangedNotification:(id)notification
{
  notificationCopy = notification;
  account = [(PKTransactionHistoryState *)self->_state account];
  accountIdentifier = [account accountIdentifier];

  objc_initWeak(&location, self);
  accountService = self->_accountService;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PKTransactionHistoryDefaultDataSource__handleAccountsChangedNotification___block_invoke;
  v8[3] = &unk_1E8017060;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [(PKAccountService *)accountService accountWithIdentifier:accountIdentifier completion:v8];
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

- (void)_handleCoarseLocationChangedNotification:(id)notification
{
  object = [notification object];
  coarseLocationMonitor = self->_coarseLocationMonitor;

  if (object == coarseLocationMonitor)
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
  associatedInstallmentPlan = [(PKTransactionHistoryState *)self->_state associatedInstallmentPlan];
  account = [(PKTransactionHistoryState *)self->_state account];
  remainingAmount = [associatedInstallmentPlan remainingAmount];
  zero = [MEMORY[0x1E696AB90] zero];
  v7 = [remainingAmount compare:zero];

  v8 = [MEMORY[0x1E69B8770] shouldDisplayAccountInformationForTransactionSourceCollection:self->_transactionSourceCollection withAccount:account];
  if ([account supportsSchedulePayment])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9 && v7 == 1;
  if (v10 && [associatedInstallmentPlan state] == 2)
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

- (void)worldRegionUpdated:(id)updated updatedRegion:(id)region
{
  regionCopy = region;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__PKTransactionHistoryDefaultDataSource_worldRegionUpdated_updatedRegion___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = regionCopy;
  v6 = regionCopy;
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

- (BOOL)_updateGroup:(id)group withRegion:(id)region
{
  groupCopy = group;
  regionCopy = region;
  if ([groupCopy type] == 13)
  {
    identifier = [regionCopy identifier];
    regions = [groupCopy regions];
    v9 = [regions mutableCopy];

    if ([v9 count])
    {
      v10 = 0;
      while (1)
      {
        v11 = [v9 objectAtIndex:v10];
        identifier2 = [v11 identifier];
        v13 = identifier;
        v14 = v13;
        if (identifier2 == v13)
        {
          break;
        }

        if (identifier && identifier2)
        {
          v15 = [identifier2 isEqualToString:v13];

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
      [v9 replaceObjectAtIndex:v10 withObject:regionCopy];
      v17 = [v9 copy];
      [groupCopy setRegions:v17];

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

- (void)didUpdateTransactions:(id)transactions
{
  v22 = *MEMORY[0x1E69E9840];
  transactionsCopy = transactions;
  if (PKBankConnectEnabled())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(transactionsCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = transactionsCopy;
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
    transactionSourceIdentifiers = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourceIdentifiers];
    paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    uniqueID = [paymentPass uniqueID];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__PKTransactionHistoryDefaultDataSource_didUpdateTransactions___block_invoke;
    v16[3] = &unk_1E8014878;
    v16[4] = self;
    [v12 augmentTransactionsIfNeeded:v5 transactionSourceIdentifiers:transactionSourceIdentifiers passUniqueID:uniqueID usingDataProvider:0 completion:v16];
  }
}

- (void)bankConnectConsentStatusDidChange:(unint64_t)change
{
  v5 = PKBankConnectEnabled();
  if (change && v5)
  {
    v6 = MEMORY[0x1E695E0F0];

    [(PKTransactionHistoryDefaultDataSource *)self _handleTransactionHistoryUpdated:v6];
  }
}

- (void)physicalCardsChanged:(id)changed forAccountIdentifier:(id)identifier
{
  changedCopy = changed;
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PKTransactionHistoryDefaultDataSource_physicalCardsChanged_forAccountIdentifier___block_invoke;
  v10[3] = &unk_1E8011828;
  objc_copyWeak(&v13, &location);
  v11 = identifierCopy;
  v12 = changedCopy;
  v8 = changedCopy;
  v9 = identifierCopy;
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