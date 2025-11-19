@interface PKSearchResultsViewController
- (BOOL)_hasContentBelowSection:(int64_t)a3;
- (BOOL)_isQueryIdentifierMatchingCurrentQuery:(id)a3;
- (BOOL)_shouldOmitHeaderViewForSection:(unint64_t)a3;
- (BOOL)_shouldShowPagedTransactionListForQuery:(id)a3;
- (BOOL)_updateGroup:(id)a3 withRegion:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)textFieldShouldClear:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PKSearchResultsViewController)initWithPaymentDataProvider:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5;
- (PKSearchResultsViewControllerDelegate)delegate;
- (double)_thumbnailInset;
- (double)_thumbnailSpacing;
- (id)_balanceItemsFromPendingPeerPaymentRquests:(id)a3;
- (id)_fetchPassForUniqueIdentifierIfNeeded:(id)a3;
- (id)_fetchSearchHistoryResults;
- (id)_groupItemForTransactionGroup:(id)a3 searchQuery:(id)a4;
- (id)_headerTitleForSection:(unint64_t)a3;
- (id)_historyViewControllerForQuery:(id)a3 groups:(id)a4 headerGroup:(id)a5;
- (id)_listSectionLayoutForSectionAtIndex:(int64_t)a3 itemCount:(int64_t)a4 environment:(id)a5;
- (id)_loadResultsLayout;
- (id)_loadThumbnailLayout;
- (id)_passItemsFromPassResults:(id)a3 isInExpiredSection:(BOOL)a4;
- (id)_queryWithIdentifier:(id)a3;
- (id)_searchController;
- (id)_searchTokenForTransactionSourceCollection:(id)a3;
- (id)_standardSectionLayoutForSectionAtIndex:(int64_t)a3 itemCount:(int64_t)a4 environment:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)_numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (unint64_t)_headerSeeAllResultTypeForSection:(unint64_t)a3;
- (unint64_t)_relevantItemsSection;
- (unint64_t)_topHitHeaderSection;
- (void)_applyMaskToCell:(id)a3 firstInSection:(BOOL)a4 lastInSection:(BOOL)a5;
- (void)_configureHeaderView:(id)a3 inSection:(unint64_t)a4;
- (void)_configureSuggestionCell:(id)a3 withSuggestion:(id)a4;
- (void)_initiateSeeAllPresentationForQuery:(id)a3;
- (void)_pendingRequestActionButtonPressedWithRequest:(id)a3 forPresentationCounter:(unint64_t)a4;
- (void)_presentPassWithUniqueIdentifier:(id)a3;
- (void)_saveResults:(id)a3 forQuery:(id)a4;
- (void)_saveSearchHistoryString:(id)a3;
- (void)_scrollViewStoppedScrolling;
- (void)_seeAllHeaderGroupForQuery:(id)a3 groups:(id)a4 transactionResults:(id)a5 completion:(id)a6;
- (void)_setHasActivePeerPaymentRequestAction:(BOOL)a3;
- (void)_sharePass:(id)a3;
- (void)_udpateSeeAllViewControllerForQuery:(id)a3 groups:(id)a4 transactionResults:(id)a5;
- (void)_udpateSeeAllViewControllerForQuery:(id)a3 orders:(id)a4;
- (void)_udpateSeeAllViewControllerForQuery:(id)a3 passes:(id)a4;
- (void)_udpateSeeAllViewControllerForQuery:(id)a3 paymentSetupProducts:(id)a4;
- (void)_udpateSeeAllViewControllerForQuery:(id)a3 pendingPeerPaymentRequests:(id)a4;
- (void)_updateAccountsWithCompletion:(id)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_updateLayoutForKeyboardAction:(id)a3;
- (void)_updateUIIfPossibleWithResults:(id)a3 query:(id)a4 completion:(id)a5;
- (void)_updateUIWithResults:(id)a3 forQuery:(id)a4 completion:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dashboardPaymentSetupProductPresenter:(id)a3 actionButtonPressedOnCellAtIndexPath:(id)a4;
- (void)didUpdateFamilyMembers:(id)a3;
- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4;
- (void)invalidateSearchResults;
- (void)keyboardWillChange:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchDidCompleteWithError:(id)a3 results:(id)a4 forIdentifier:(id)a5;
- (void)setQuery:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)worldRegionUpdated:(id)a3 updatedRegion:(id)a4;
@end

@implementation PKSearchResultsViewController

- (PKSearchResultsViewController)initWithPaymentDataProvider:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(PKSearchResultsViewController *)self _loadThumbnailLayout];
  [v12 setHidden:1];
  v76.receiver = self;
  v76.super_class = PKSearchResultsViewController;
  v13 = [(PKSearchResultsViewController *)&v76 initWithCollectionViewLayout:v12];
  v14 = v13;
  if (v13)
  {
    v68 = v11;
    v69 = v10;
    v70 = v9;
    objc_storeStrong(&v13->_transactionSourceCollection, a4);
    v14->_usingThumbnailLayout = 1;
    objc_storeStrong(&v14->_thumbnailLayout, v12);
    v15 = [(PKSearchResultsViewController *)v14 _loadResultsLayout];
    resultsLayout = v14->_resultsLayout;
    v14->_resultsLayout = v15;

    v14->_atNaturalRestingBounds = 1;
    objc_storeStrong(&v14->_paymentDataProvider, a3);
    objc_storeStrong(&v14->_familyCollection, a5);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INTERACTIVE, 0);

    v67 = v18;
    v19 = dispatch_queue_create("com.apple.passbok.search.results", v18);
    queuePrepareResults = v14->_queuePrepareResults;
    v14->_queuePrepareResults = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    passesForTransactionResults = v14->_passesForTransactionResults;
    v14->_passesForTransactionResults = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    passesForPassResults = v14->_passesForPassResults;
    v14->_passesForPassResults = v23;

    v25 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:10];
    lastQueries = v14->_lastQueries;
    v14->_lastQueries = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    lastResultsPerQueryIdentifier = v14->_lastResultsPerQueryIdentifier;
    v14->_lastResultsPerQueryIdentifier = v27;

    v29 = objc_alloc_init(PKDashboardPassPresenter);
    passPresenter = v14->_passPresenter;
    v14->_passPresenter = v29;

    [(PKDashboardPassPresenter *)v14->_passPresenter setDelegate:v14];
    v31 = objc_alloc_init(PKDashboardOrderPresenter);
    orderPresenter = v14->_orderPresenter;
    v14->_orderPresenter = v31;

    v33 = objc_alloc_init(PKDashboardAccountModulePresenter);
    accountPresenter = v14->_accountPresenter;
    v14->_accountPresenter = v33;

    v35 = objc_alloc_init(PKDashboardPaymentSetupProductPresenter);
    paymentSetupProductPresenter = v14->_paymentSetupProductPresenter;
    v14->_paymentSetupProductPresenter = v35;

    [(PKDashboardPaymentSetupProductPresenter *)v14->_paymentSetupProductPresenter setDelegate:v14];
    v37 = objc_alloc_init(PKDashboardBalancePresenter);
    pendingPeerPaymentRequestPresenter = v14->_pendingPeerPaymentRequestPresenter;
    v14->_pendingPeerPaymentRequestPresenter = v37;

    v39 = [[PKDashboardPaymentTransactionItemPresenter alloc] initWithContext:6 detailViewStyle:0 avatarViewDelegate:v14];
    transactionPresenter = v14->_transactionPresenter;
    v14->_transactionPresenter = v39;

    v41 = objc_alloc_init(PKMapsSnapshotManager);
    v42 = objc_alloc_init(PKTransactionGroupItemPresenter);
    transactionGroupPresenter = v14->_transactionGroupPresenter;
    v14->_transactionGroupPresenter = v42;

    [(PKTransactionGroupItemPresenter *)v14->_transactionGroupPresenter setSnapshotManager:v41];
    [(PKTransactionGroupItemPresenter *)v14->_transactionGroupPresenter setPaymentDataProvider:v14->_paymentDataProvider];
    v44 = [PKContactAvatarManager alloc];
    v45 = [(PKTransactionGroupItemPresenter *)v14->_transactionGroupPresenter contactResolver];
    v46 = [(PKContactAvatarManager *)v44 initWithContactResolver:v45 paymentDataProvider:v14->_paymentDataProvider];

    [(PKTransactionGroupItemPresenter *)v14->_transactionGroupPresenter setAvatarManager:v46];
    [(PKTransactionGroupItemPresenter *)v14->_transactionGroupPresenter setInSearch:1];
    v47 = objc_alloc_init(PKTransactionGroupThumbnailPresenter);
    thumbnailPresenter = v14->_thumbnailPresenter;
    v14->_thumbnailPresenter = v47;

    [(PKTransactionGroupThumbnailPresenter *)v14->_thumbnailPresenter setSnapshotManager:v41];
    [(PKTransactionGroupThumbnailPresenter *)v14->_thumbnailPresenter setPaymentDataProvider:v14->_paymentDataProvider];
    [(PKTransactionGroupThumbnailPresenter *)v14->_thumbnailPresenter setAvatarManager:v46];
    v49 = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v14->_accountService;
    v14->_accountService = v49;

    [(PKAccountService *)v14->_accountService registerObserver:v14];
    v51 = objc_alloc_init(MEMORY[0x1E69B91C0]);
    searchService = v14->_searchService;
    v14->_searchService = v51;

    [(PKSearchService *)v14->_searchService registerObserver:v14];
    v53 = [MEMORY[0x1E69B8A58] sharedInstance];
    passLibrary = v14->_passLibrary;
    v14->_passLibrary = v53;

    v55 = [[PKWorldRegionUpdater alloc] initWithSearchService:v14->_searchService];
    regionUpdater = v14->_regionUpdater;
    v14->_regionUpdater = v55;

    [(PKWorldRegionUpdater *)v14->_regionUpdater addObserver:v14];
    v57 = [(PKSearchResultsViewController *)v14 navigationItem];
    [v57 setBackButtonDisplayMode:2];
    v58 = PKLocalizedPaymentString(&cfstr_DashboardSearc.isa);
    [v57 setBackButtonTitle:v58];

    objc_initWeak(&location, v14);
    v59 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __106__PKSearchResultsViewController_initWithPaymentDataProvider_transactionSourceCollection_familyCollection___block_invoke;
    v73[3] = &unk_1E8019220;
    v60 = v14;
    v74 = v60;
    [v59 addOperation:v73];
    v61 = [MEMORY[0x1E695DFB0] null];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __106__PKSearchResultsViewController_initWithPaymentDataProvider_transactionSourceCollection_familyCollection___block_invoke_3;
    v71[3] = &unk_1E8019248;
    objc_copyWeak(&v72, &location);
    v62 = [v59 evaluateWithInput:v61 completion:v71];

    [(PKPaymentDataProvider *)v14->_paymentDataProvider addDelegate:v60];
    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      v63 = [MEMORY[0x1E696AD88] defaultCenter];
      [v63 addObserver:v60 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
      [v63 addObserver:v60 selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE068] object:0];
      [v63 addObserver:v60 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    }

    v64 = objc_alloc_init(getFHSearchSuggestionControllerClass[0]());
    searchSuggestionController = v60->_searchSuggestionController;
    v60->_searchSuggestionController = v64;

    objc_destroyWeak(&v72);
    objc_destroyWeak(&location);

    v10 = v69;
    v9 = v70;
    v11 = v68;
  }

  return v14;
}

void __106__PKSearchResultsViewController_initWithPaymentDataProvider_transactionSourceCollection_familyCollection___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__PKSearchResultsViewController_initWithPaymentDataProvider_transactionSourceCollection_familyCollection___block_invoke_2;
  v11[3] = &unk_1E8010E20;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 _updateAccountsWithCompletion:v11];
}

void __106__PKSearchResultsViewController_initWithPaymentDataProvider_transactionSourceCollection_familyCollection___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1433] = 1;
    v4 = WeakRetained;
    v2 = [WeakRetained _queryWithIdentifier:*(WeakRetained + 150)];
    os_unfair_lock_lock(v4 + 298);
    v3 = *(v4 + 153);
    os_unfair_lock_unlock(v4 + 298);
    [v4 _updateUIIfPossibleWithResults:v3 query:v2 completion:0];

    WeakRetained = v4;
  }
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = PKSearchResultsViewController;
  [(PKSearchResultsViewController *)&v19 viewDidLoad];
  v3 = [(PKSearchResultsViewController *)self navigationItem];
  if (_UISolariumFeatureFlagEnabled())
  {
    [v3 _setPreferredNavigationBarVisibility:1];
  }

  else
  {
    [v3 pkui_setupScrollEdgeChromelessAppearance];
    [v3 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  v4 = [(PKSearchResultsViewController *)self collectionView];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardBalancePresenterIdentifier"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardPassPresenterIdentifier"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardOrderPresenterIdentifier"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardAccountModulePresenterIdentifier"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardPaymentSetupProductPresenterIdentifier"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"transactionItemPresenter"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"transactionGroupPresenter"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"emptyCellIdentifier"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKTransactionGroupThumbnailPresenterIdentifier"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"suggestionIdentifier"];
  [v4 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"titleIdentifier"];
  [v4 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC00] withReuseIdentifier:@"separatorIdentifier"];
  [v4 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"ElementKindHeaderSpacing" withReuseIdentifier:@"ElementKindHeaderSpacing"];
  [v4 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"ElementKindFooterSpacing" withReuseIdentifier:@"ElementKindFooterSpacing"];
  v5 = +[PKDashboardViewController backgroundColor];
  [v4 setBackgroundColor:v5];

  [v4 setShowsVerticalScrollIndicator:1];
  [v4 setAlwaysBounceVertical:1];
  [v4 setKeyboardDismissMode:1];
  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9BD0]];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [v4 setContentInsetAdjustmentBehavior:2];
  }

  v6 = [PKDashboardTitleHeaderView alloc];
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [(PKDashboardTitleHeaderView *)v6 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
  sampleHeaderView = self->_sampleHeaderView;
  self->_sampleHeaderView = v11;

  v13 = [[PKSearchSuggestionCollectionViewCell alloc] initWithFrame:v7, v8, v9, v10];
  sampleSuggestionCell = self->_sampleSuggestionCell;
  self->_sampleSuggestionCell = v13;

  v15 = +[PKUIForegroundActiveArbiter sharedInstance];
  v16 = v15;
  if (v15)
  {
    self->_foregroundActiveState = [v15 registerObserver:self];
  }

  else
  {
    self->_foregroundActiveState = 257;
  }

  v17 = [(PKSearchResultsViewController *)self _queryWithIdentifier:self->_currentQueryIdentifier];
  os_unfair_lock_lock(&self->_lockQuery);
  v18 = self->_currentResults;
  os_unfair_lock_unlock(&self->_lockQuery);
  [(PKSearchResultsViewController *)self _updateUIIfPossibleWithResults:v18 query:v17 completion:0];
  [(PKSearchResultsViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
}

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = PKSearchResultsViewController;
  [(PKSearchResultsViewController *)&v15 viewWillAppear:a3];
  v4 = [(PKSearchResultsViewController *)self _searchController];
  v5 = [v4 searchBar];
  v6 = [v5 searchTextField];

  [v6 setDelegate:self];
  v7 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 localizedDescription];
    if ([v9 length])
    {
      v10 = PKLocalizedString(&cfstr_SearchPassPlac.isa, &stru_1F3BD5BF0.isa, v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = PKLocalizedString(&cfstr_SearchGlobalPl.isa);
  }

  v11 = [v6 placeholder];
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if (v12 && v11)
    {
      v14 = [v11 isEqualToString:v12];

      if (v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    [v6 setPlaceholder:v13];
  }

LABEL_15:
}

- (void)viewWillLayoutSubviews
{
  v31.receiver = self;
  v31.super_class = PKSearchResultsViewController;
  [(PKSearchResultsViewController *)&v31 viewWillLayoutSubviews];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v3 = [(PKSearchResultsViewController *)self collectionView];
    [v3 safeAreaInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(PKSearchResultsViewController *)self _searchController];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 searchBar];
      v15 = [v14 superview];

      if (v15)
      {
        v16 = [v3 superview];
        [v14 bounds];
        [v16 convertPoint:v14 fromView:{0.0, v17}];
        v19 = v18;

        v20 = v9 + self->_keyboardFrame.size.height;
        [v3 contentInset];
        if (v7 != v24 || v19 != v21 || v11 != v23 || v20 != v22)
        {
          [v3 setContentInset:{v19, v7, v20, v11}];
          [v3 verticalScrollIndicatorInsets];
          [v3 setVerticalScrollIndicatorInsets:v19 - v5];
        }

        if (self->_atNaturalRestingBounds)
        {
          [v3 contentOffset];
          v26 = v25;
          v28 = v27;
          [v3 pkui_naturalRestingBounds];
          if (v26 != v30 || v28 != v29)
          {
            [v3 setContentOffset:0 animated:?];
          }
        }
      }
    }
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  if (!a4 && self->_isScrolling)
  {
    self->_isScrolling = 0;
    v7 = v6;
    [(PKSearchResultsViewController *)self _scrollViewStoppedScrolling];
    v6 = v7;
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if (self->_isScrolling)
  {
    self->_isScrolling = 0;
    [(PKSearchResultsViewController *)self _scrollViewStoppedScrolling];
  }
}

- (void)_scrollViewStoppedScrolling
{
  v10 = [(PKSearchResultsViewController *)self collectionView];
  [v10 pkui_naturalRestingBounds];
  v4 = v3;
  v6 = v5;
  [v10 contentOffset];
  v8 = v7 == v4;
  if (v9 != v6)
  {
    v8 = 0;
  }

  self->_atNaturalRestingBounds = v8;
}

- (id)_searchController
{
  if (_UISolariumFeatureFlagEnabled() && (-[PKSearchResultsViewController navigationItem](self, "navigationItem"), v3 = objc_claimAutoreleasedReturnValue(), [v3 searchController], v4 = objc_claimAutoreleasedReturnValue(), v3, v4) || (-[PKSearchResultsViewController navigationController](self, "navigationController"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "parentViewController"), v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v4 = 0;
    }
  }

  return v4;
}

- (double)_thumbnailInset
{
  v2 = PKUIGetMinScreenWidthType();
  result = 18.0;
  if (!v2)
  {
    return 15.0;
  }

  return result;
}

- (double)_thumbnailSpacing
{
  v2 = PKUIGetMinScreenWidthType();
  result = 16.0;
  if (v2 < 5)
  {
    result = 12.0;
  }

  if (!v2)
  {
    return 8.0;
  }

  return result;
}

- (id)_standardSectionLayoutForSectionAtIndex:(int64_t)a3 itemCount:(int64_t)a4 environment:(id)a5
{
  v5 = a4;
  v6 = a3;
  v7 = self;
  [(PKSearchResultsViewController *)self _thumbnailInset:a3];
  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  v11 = 0x1E6995000uLL;
  v12 = 0x1E6995000uLL;
  if (v5)
  {
    v13 = 0;
    v14 = 0.0;
    do
    {
      v39 = [(PKSearchResultsViewController *)v7 collectionView];
      v38 = [MEMORY[0x1E696AC88] indexPathForRow:v13 inSection:v6];
      v15 = [v39 collectionViewLayout];
      [(PKSearchResultsViewController *)v7 collectionView:v39 layout:v15 sizeForItemAtIndexPath:v38];
      v17 = v16;
      v19 = v18;

      v20 = *(v12 + 1416);
      v21 = [*(v11 + 1368) absoluteDimension:v17];
      [*(v11 + 1368) absoluteDimension:v19];
      v22 = v11;
      v23 = v7;
      v24 = v5;
      v25 = v12;
      v26 = v6;
      v28 = v27 = v10;
      v29 = [v20 sizeWithWidthDimension:v21 heightDimension:v28];

      v10 = v27;
      v6 = v26;
      v12 = v25;
      v5 = v24;
      v7 = v23;
      v11 = v22;

      v30 = [MEMORY[0x1E6995578] itemWithLayoutSize:v29];
      [v10 addObject:v30];
      v14 = v14 + v19;

      ++v13;
    }

    while (v5 != v13);
  }

  else
  {
    v14 = 0.0;
  }

  v31 = [*(v11 + 1368) fractionalWidthDimension:1.0];
  v32 = [*(v11 + 1368) absoluteDimension:v14];
  v33 = [*(v12 + 1416) sizeWithWidthDimension:v31 heightDimension:v32];
  v34 = [MEMORY[0x1E6995568] verticalGroupWithLayoutSize:v33 subitems:v10];
  v35 = [MEMORY[0x1E6995590] fixedSpacing:0.0];
  [v34 setInterItemSpacing:v35];

  v36 = [MEMORY[0x1E6995580] sectionWithGroup:v34];
  [v36 setContentInsets:{0.0, 4.0, 0.0, v9}];
  [v36 setSupplementariesFollowContentInsets:0];
  [v36 setInterGroupSpacing:0.0];

  return v36;
}

- (id)_listSectionLayoutForSectionAtIndex:(int64_t)a3 itemCount:(int64_t)a4 environment:(id)a5
{
  v6 = MEMORY[0x1E69DC7E0];
  v7 = a5;
  v8 = [[v6 alloc] initWithAppearance:2];
  [v8 setHeaderMode:a4 > 0];
  v9 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v8 layoutEnvironment:v7];

  return v9;
}

- (id)_loadThumbnailLayout
{
  objc_initWeak(&location, self);
  [(PKSearchResultsViewController *)self _thumbnailInset];
  v4 = v3;
  [(PKSearchResultsViewController *)self _thumbnailSpacing];
  v6 = v5;
  v7 = [PKSearchThumbnailLayout alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PKSearchResultsViewController__loadThumbnailLayout__block_invoke;
  v10[3] = &unk_1E8019270;
  objc_copyWeak(v11, &location);
  v11[1] = v6;
  v11[2] = v4;
  v8 = [(PKSearchThumbnailLayout *)v7 initWithSectionProvider:v10];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);

  return v8;
}

id __53__PKSearchResultsViewController__loadThumbnailLayout__block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained _numberOfItemsInSection:a2];
    v9 = [v7 _hasContentBelowSection:a2];
    if (v8)
    {
      v10 = v9;
      if (a2 <= 0xC && ((1 << a2) & 0x1904) != 0)
      {
        v8 = [v7 _listSectionLayoutForSectionAtIndex:a2 itemCount:v8 environment:v5];
        v11 = 0;
      }

      else if (a2 > 1)
      {
        v64 = [v7 collectionView];
        [v64 safeAreaInsets];
        v38 = v37;
        v40 = v39;
        [v64 bounds];
        v42 = v41 - v38 - v40;
        v43 = v7[138];
        v44 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
        v45 = [v7 collectionView];
        v46 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
        [v43 sizeForItem:v44 inCollectionView:v45 safeAreaWidth:v46 atIndexPath:v42];
        v48 = v47;
        v50 = v49;

        v51 = MEMORY[0x1E6995588];
        v52 = [MEMORY[0x1E6995558] absoluteDimension:v48];
        v53 = [MEMORY[0x1E6995558] absoluteDimension:v50];
        v63 = [v51 sizeWithWidthDimension:v52 heightDimension:v53];

        v62 = [MEMORY[0x1E6995578] itemWithLayoutSize:v63];
        v54 = MEMORY[0x1E6995588];
        v55 = [MEMORY[0x1E6995558] absoluteDimension:*(a1 + 40) * (v8 - 1) + v8 * v48];
        v56 = [MEMORY[0x1E6995558] absoluteDimension:v50];
        v57 = [v54 sizeWithWidthDimension:v55 heightDimension:v56];

        v58 = MEMORY[0x1E6995568];
        v65[0] = v62;
        v11 = 1;
        v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
        v60 = [v58 horizontalGroupWithLayoutSize:v57 subitems:v59];

        v61 = [MEMORY[0x1E6995590] fixedSpacing:*(a1 + 40)];
        [v60 setInterItemSpacing:v61];

        v8 = [MEMORY[0x1E6995580] sectionWithGroup:v60];
        [v8 setContentInsets:{0.0, *(a1 + 48), 0.0, *(a1 + 48)}];
        [v8 setSupplementariesFollowContentInsets:0];
        [v8 setInterGroupSpacing:0.0];
        [v8 setOrthogonalScrollingBehavior:1];
      }

      else
      {
        v8 = [v7 _standardSectionLayoutForSectionAtIndex:a2 itemCount:v8 environment:v5];
        v11 = 1;
      }

      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (([v7 _shouldOmitHeaderViewForSection:a2] & 1) == 0)
      {
        [v7 _configureHeaderView:v7[129] inSection:a2];
        v13 = v7[129];
        v14 = [v5 container];
        [v14 contentSize];
        [v13 sizeThatFits:?];
        v16 = v15;
        v18 = v17;

        v19 = 0.0;
        if (v11)
        {
          if (a2)
          {
            v19 = 8.0;
          }

          else
          {
            v19 = 2.0;
          }

          v20 = MEMORY[0x1E6995588];
          v21 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
          v22 = [MEMORY[0x1E6995558] absoluteDimension:v19 + v18];
          v23 = [v20 sizeWithWidthDimension:v21 heightDimension:v22];

          v24 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v23 elementKind:@"ElementKindHeaderSpacing" alignment:1];
          [v12 addObject:v24];
        }

        v25 = MEMORY[0x1E6995588];
        v26 = [MEMORY[0x1E6995558] absoluteDimension:v16];
        v27 = [MEMORY[0x1E6995558] absoluteDimension:v18];
        v28 = [v25 sizeWithWidthDimension:v26 heightDimension:v27];

        v29 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v28 elementKind:*MEMORY[0x1E69DDC08] alignment:1 absoluteOffset:{0.0, -v19}];
        [v12 addObject:v29];
      }

      if ((v10 & v11) == 1)
      {
        v30 = MEMORY[0x1E6995588];
        v31 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
        v32 = [MEMORY[0x1E6995558] absoluteDimension:20.0];
        v33 = [v30 sizeWithWidthDimension:v31 heightDimension:v32];

        v34 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v33 elementKind:@"ElementKindFooterSpacing" alignment:5];
        [v12 addObject:v34];
      }

      if ([v12 count])
      {
        v35 = [v12 copy];
        [v8 setBoundarySupplementaryItems:v35];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_loadResultsLayout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E69DC808]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PKSearchResultsViewController__loadResultsLayout__block_invoke;
  v5[3] = &unk_1E80130C0;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __51__PKSearchResultsViewController__loadResultsLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && (v8 = [WeakRetained _numberOfItemsInSection:a2]) != 0)
  {
    if (a2)
    {
      v9 = [v7 _listSectionLayoutForSectionAtIndex:a2 itemCount:v8 environment:v5];
    }

    else
    {
      v9 = [v7 _standardSectionLayoutForSectionAtIndex:0 itemCount:v8 environment:v5];
      if ([v7 _hasContentBelowSection:0])
      {
        v11 = MEMORY[0x1E6995588];
        v12 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
        v13 = [MEMORY[0x1E6995558] absoluteDimension:20.0];
        v14 = [v11 sizeWithWidthDimension:v12 heightDimension:v13];

        v15 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v14 elementKind:@"ElementKindFooterSpacing" alignment:5];
        v17[0] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        [v9 setBoundarySupplementaryItems:v16];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_hasContentBelowSection:(int64_t)a3
{
  v4 = a3 + 1;
  do
  {
    v5 = v4;
    if (v4 > 0x12)
    {
      break;
    }

    v6 = [(PKSearchResultsViewController *)self _numberOfItemsInSection:v4];
    v4 = v5 + 1;
  }

  while (!v6);
  return v5 < 0x13;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 section];
  v12 = *MEMORY[0x1E69DDC08];
  v13 = v9;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v13 || !v12)
    {

      goto LABEL_9;
    }

    v15 = [v13 isEqualToString:v12];

    if (!v15)
    {
LABEL_9:
      v17 = *MEMORY[0x1E69DDC00];
      v18 = v14;
      v19 = v18;
      if (v17 == v18)
      {
      }

      else
      {
        if (!v14 || !v17)
        {

LABEL_18:
          v21 = v19;
          v22 = v21;
          if (v21 == @"ElementKindHeaderSpacing" || v21 && ((v23 = [(__CFString *)v21 isEqualToString:@"ElementKindHeaderSpacing"], v22, (v23 & 1) != 0) || (v24 = v22, v24 == @"ElementKindFooterSpacing") || (v25 = v24, v26 = [(__CFString *)v24 isEqualToString:@"ElementKindFooterSpacing"], v25, v26)))
          {
            v16 = [v8 dequeueReusableSupplementaryViewOfKind:v22 withReuseIdentifier:v22 forIndexPath:v10];
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_27;
        }

        v20 = [v18 isEqualToString:v17];

        if (!v20)
        {
          goto LABEL_18;
        }
      }

      v16 = [v8 dequeueReusableSupplementaryViewOfKind:v19 withReuseIdentifier:@"separatorIdentifier" forIndexPath:v10];
      if (self->_usingThumbnailLayout)
      {
        [MEMORY[0x1E69DC888] separatorColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] clearColor];
      }
      v27 = ;
      [v16 setBackgroundColor:v27];

      goto LABEL_27;
    }
  }

  v16 = [v8 dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:@"titleIdentifier" forIndexPath:v10];
  [(PKSearchResultsViewController *)self _configureHeaderView:v16 inSection:v11];
LABEL_27:

  return v16;
}

- (BOOL)_shouldOmitHeaderViewForSection:(unint64_t)a3
{
  if (self->_usingThumbnailLayout)
  {
    v5 = [(PKSearchResultsViewController *)self _headerTitleForSection:a3];
    if ([v5 length] || -[PKSearchResultsViewController _headerSeeAllResultTypeForSection:](self, "_headerSeeAllResultTypeForSection:", a3))
    {
      if (a3 == 1)
      {
        v6 = _UISolariumFeatureFlagEnabled() ^ 1;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else if (a3 == 1)
  {
    return _UISolariumFeatureFlagEnabled() ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_headerTitleForSection:(unint64_t)a3
{
  if ([(PKSearchResultsViewController *)self _topHitHeaderSection]== a3)
  {
    v5 = @"SEARCH_TITLE_TOP_HIT";
  }

  else if ([(PKSearchResultsViewController *)self _relevantItemsSection]== a3)
  {
    v5 = @"SEARCH_TITLE_RELEVANT_ITEMS";
  }

  else
  {
    v6 = 0;
    v5 = @"SEARCH_TITLE_PAYMENT_PASSES";
    switch(a3)
    {
      case 0uLL:
        if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
        {
          goto LABEL_23;
        }

        v5 = @"SEARCH_TITLE_SUGGESTIONS";
        break;
      case 1uLL:
        if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
        {
          goto LABEL_23;
        }

        v5 = @"SEARCH_TITLE_HISTORY";
        break;
      case 7uLL:
        break;
      case 8uLL:
        if (self->_usingThumbnailLayout)
        {
          goto LABEL_23;
        }

        v5 = @"SEARCH_TITLE_BARCODE_PASSES";
        break;
      case 9uLL:
        v5 = @"SEARCH_TITLE_KEYS_AND_IDS";
        break;
      case 0xAuLL:
        v5 = @"SEARCH_TITLE_ACCOUNTS";
        break;
      case 0xBuLL:
        if (self->_usingThumbnailLayout)
        {
LABEL_23:
          v6 = 0;
          goto LABEL_6;
        }

        v5 = @"SEARCH_TITLE_TRANSACTIONS";
        break;
      case 0xCuLL:
        v5 = @"SEARCH_TITLE_ORDERS";
        break;
      case 0xDuLL:
        v5 = @"SEARCH_TITLE_CATEGORIES";
        break;
      case 0xEuLL:
        v5 = @"SEARCH_TITLE_MERCHANTS";
        break;
      case 0xFuLL:
        v5 = @"SEARCH_TITLE_PEOPLE";
        break;
      case 0x10uLL:
        v5 = @"SEARCH_TITLE_LOCATION";
        break;
      case 0x11uLL:
        v5 = @"SEARCH_TITLE_PAYMENT_SETUP_PRODUCT";
        break;
      case 0x12uLL:
        v5 = @"SEARCH_TITLE_EXPIRED_PASSES";
        break;
      default:
        goto LABEL_6;
    }
  }

  v6 = PKLocalizedString(&v5->isa);
LABEL_6:

  return v6;
}

- (unint64_t)_headerSeeAllResultTypeForSection:(unint64_t)a3
{
  result = 0;
  if (a3 > 12)
  {
    if (a3 > 15)
    {
      switch(a3)
      {
        case 0x10uLL:
          if ([(NSArray *)self->_locations count]< 3)
          {
            return 0;
          }

          v5 = !self->_usingThumbnailLayout;
          v6 = 11;
          break;
        case 0x11uLL:
          if ([(NSArray *)self->_paymentSetupProducts count]< 3)
          {
            return 0;
          }

          v5 = !self->_usingThumbnailLayout;
          v6 = 9;
          break;
        case 0x12uLL:
          v7 = [(NSArray *)self->_expiredPasses count]> 2;
          v8 = 14;
          goto LABEL_34;
        default:
          return result;
      }
    }

    else if (a3 == 13)
    {
      if ([(NSArray *)self->_categories count]< 3)
      {
        return 0;
      }

      v5 = !self->_usingThumbnailLayout;
      v6 = 5;
    }

    else if (a3 == 14)
    {
      if ([(NSArray *)self->_merchants count]< 3)
      {
        return 0;
      }

      v5 = !self->_usingThumbnailLayout;
      v6 = 6;
    }

    else
    {
      if ([(NSArray *)self->_people count]< 3)
      {
        return 0;
      }

      v5 = !self->_usingThumbnailLayout;
      v6 = 10;
    }

LABEL_39:
    if (v5)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  if (a3 <= 8)
  {
    if (a3 != 2)
    {
      if (a3 != 7)
      {
        if (a3 == 8)
        {
          if ([(NSArray *)self->_barcodePasses count]>= 3)
          {
            return 3;
          }

          else
          {
            return 0;
          }
        }

        return result;
      }

      if ([(NSArray *)self->_paymentPasses count]>= 3)
      {
        return !self->_usingThumbnailLayout;
      }

      return 0;
    }

    v7 = [(NSArray *)self->_pendingPeerPaymentRequests count]> 2;
    v8 = 13;
LABEL_34:
    if (v7)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  switch(a3)
  {
    case 9uLL:
      if ([(NSArray *)self->_keysAndIDs count]< 3)
      {
        return 0;
      }

      v5 = !self->_usingThumbnailLayout;
      v6 = 2;
      goto LABEL_39;
    case 0xBuLL:
      v7 = [(NSArray *)self->_transactions count]> 2;
      v8 = 7;
      goto LABEL_34;
    case 0xCuLL:
      return 8 * ([(NSArray *)self->_orders count]> 2);
  }

  return result;
}

- (void)_configureHeaderView:(id)a3 inSection:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PKSearchResultsViewController *)self _headerTitleForSection:a4];
  v8 = [(PKSearchResultsViewController *)self _headerSeeAllResultTypeForSection:a4];
  if (self->_usingThumbnailLayout)
  {
    [(PKSearchResultsViewController *)self _thumbnailInset];
    [v6 setHorizontalInset:?];
  }

  [v6 setTitle:v7];
  if (v8)
  {
    v9 = PKLocalizedString(&cfstr_SearchSeeAll.isa);
    [v6 setActionTitle:v9];

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__PKSearchResultsViewController__configureHeaderView_inSection___block_invoke;
    v10[3] = &unk_1E8011408;
    objc_copyWeak(v11, &location);
    v11[1] = v8;
    v10[4] = self;
    [v6 setAction:v10];
    objc_destroyWeak(v11);
    objc_destroyWeak(&location);
  }

  else
  {
    [v6 setActionTitle:0];
  }
}

void __64__PKSearchResultsViewController__configureHeaderView_inSection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v26 = WeakRetained;
    v3 = [WeakRetained _queryWithIdentifier:WeakRetained[150]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_alloc(MEMORY[0x1E69B92F0]);
      v5 = [MEMORY[0x1E696AFB0] UUID];
      v6 = [v5 UUIDString];
      v7 = [v3 keyboardLanguage];
      v8 = [v3 passUniqueIdentifier];
      v9 = [v4 initWithIdentifier:v6 keyboardLanguage:v7 passUniqueIdentifier:v8];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E69B91B0]);
      v5 = [MEMORY[0x1E696AFB0] UUID];
      v6 = [v5 UUIDString];
      v7 = [v3 keyboardLanguage];
      v9 = [v10 initWithIdentifier:v6 keyboardLanguage:v7];
    }

    [v9 setType:*(a1 + 48)];
    v11 = [v3 text];
    [v9 setText:v11];

    v12 = [v3 tokens];
    [v9 setTokens:v12];

    if ([*(a1 + 32) _shouldShowPagedTransactionListForQuery:v9])
    {
      v13 = v26;
      ++*(v26 + 180);
LABEL_19:
      [v13 _initiateSeeAllPresentationForQuery:v9];
      goto LABEL_20;
    }

    os_unfair_lock_lock(v26 + 298);
    v14 = [*(v26 + 151) indexOfObject:v9];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_18:
      v24 = [v9 identifier];
      v25 = *(v26 + 150);
      *(v26 + 150) = v24;

      *(v26 + 1232) = 1;
      [*(v26 + 151) addObject:v9];
      os_unfair_lock_unlock(v26 + 298);
      ++*(v26 + 180);
      *(v26 + 1512) = 0;
      [*(v26 + 141) searchWithQuery:v9];
      v13 = v26;
      goto LABEL_19;
    }

    v15 = v14;
    v16 = [*(v26 + 151) objectAtIndex:v14];
    v17 = v26;
    if (*(v26 + 1232) == 1)
    {
      v18 = [v16 identifier];
      v19 = *(v26 + 150);
      v20 = v18;
      v21 = v19;
      v22 = v21;
      if (v20 == v21)
      {

        goto LABEL_15;
      }

      if (v20 && v21)
      {
        v23 = [v20 isEqualToString:v21];

        v17 = v26;
        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_15:

        os_unfair_lock_unlock(v26 + 298);
        v9 = v16;
LABEL_20:

        WeakRetained = v26;
        goto LABEL_21;
      }

      v17 = v26;
    }

LABEL_17:
    [v17[151] removeObjectAtIndex:v15];

    goto LABEL_18;
  }

LABEL_21:
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  if (self->_hasLoadedRequiredData)
  {
    return 19;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_numberOfItemsInSection:(int64_t)a3
{
  v3 = &OBJC_IVAR___PKSearchResultsViewController__suggestions;
  switch(a3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__searchHistories;
      if (self->_usingThumbnailLayout)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    case 2:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__pendingPeerPaymentRequests;
      if (self->_usingThumbnailLayout)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    case 3:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__topHitPaymentPasses;
      goto LABEL_21;
    case 4:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__topHitBarcodePasses;
      goto LABEL_21;
    case 5:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__topHitKeysAndIDs;
      goto LABEL_21;
    case 6:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__topHitAccountItems;
      goto LABEL_21;
    case 7:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__paymentPasses;
      goto LABEL_21;
    case 8:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__barcodePasses;
      goto LABEL_24;
    case 9:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__keysAndIDs;
      goto LABEL_21;
    case 10:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__accountItems;
      goto LABEL_21;
    case 11:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__transactions;
      goto LABEL_24;
    case 12:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__orders;
      goto LABEL_24;
    case 13:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__categories;
      goto LABEL_24;
    case 14:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__merchants;
      goto LABEL_24;
    case 15:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__people;
      goto LABEL_24;
    case 16:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__locations;
      goto LABEL_24;
    case 17:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__paymentSetupProducts;
      goto LABEL_21;
    case 18:
      v3 = &OBJC_IVAR___PKSearchResultsViewController__expiredPasses;
LABEL_21:
      if (self->_usingThumbnailLayout)
      {
        goto LABEL_22;
      }

LABEL_24:
      result = [*(&self->super.super.super.super.isa + *v3) count];
      break;
    default:
LABEL_22:
      result = 0;
      break;
  }

  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  switch([v7 section])
  {
    case 0:
      v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"suggestionIdentifier" forIndexPath:v7];
      v9 = 1400;
      goto LABEL_15;
    case 1:
      v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"suggestionIdentifier" forIndexPath:v7];
      v9 = 1408;
LABEL_15:
      v17 = *(&self->super.super.super.super.isa + v9);
      v18 = v8;
      v19 = [v17 objectAtIndex:{objc_msgSend(v7, "row")}];
      [(PKSearchResultsViewController *)self _configureSuggestionCell:v18 withSuggestion:v19];

      goto LABEL_21;
    case 2:
      v16 = &OBJC_IVAR___PKSearchResultsViewController__pendingPeerPaymentRequestPresenter;
      goto LABEL_13;
    case 3:
      passPresenter = self->_passPresenter;
      v15 = 1312;
      goto LABEL_29;
    case 4:
      v13 = &OBJC_IVAR___PKSearchResultsViewController__passPresenter;
      goto LABEL_26;
    case 5:
      passPresenter = self->_passPresenter;
      v15 = 1320;
      goto LABEL_29;
    case 6:
      passPresenter = self->_accountPresenter;
      v15 = 1328;
      goto LABEL_29;
    case 7:
      v16 = &OBJC_IVAR___PKSearchResultsViewController__passPresenter;
LABEL_13:
      passPresenter = *(&self->super.super.super.super.isa + *v16);
      v15 = v16[22];
      goto LABEL_29;
    case 8:
      v12 = &OBJC_IVAR___PKSearchResultsViewController__passPresenter;
      goto LABEL_28;
    case 9:
      passPresenter = self->_passPresenter;
      v15 = 1360;
      goto LABEL_29;
    case 10:
      v13 = &OBJC_IVAR___PKSearchResultsViewController__accountPresenter;
LABEL_26:
      passPresenter = *(&self->super.super.super.super.isa + *v13);
      v15 = v13[40];
      goto LABEL_29;
    case 11:
      v12 = &OBJC_IVAR___PKSearchResultsViewController__transactionPresenter;
LABEL_28:
      passPresenter = *(&self->super.super.super.super.isa + *v12);
      v15 = v12[24];
      goto LABEL_29;
    case 12:
      passPresenter = self->_orderPresenter;
      v15 = 1376;
      goto LABEL_29;
    case 13:
      usingThumbnailLayout = self->_usingThumbnailLayout;
      v11 = 1264;
      goto LABEL_19;
    case 14:
      usingThumbnailLayout = self->_usingThumbnailLayout;
      v11 = 1272;
      goto LABEL_19;
    case 15:
      usingThumbnailLayout = self->_usingThumbnailLayout;
      v11 = 1288;
      goto LABEL_19;
    case 16:
      usingThumbnailLayout = self->_usingThumbnailLayout;
      v11 = 1280;
LABEL_19:
      v20 = *(&self->super.super.super.super.isa + v11);
      if (usingThumbnailLayout)
      {
        thumbnailPresenter = self->_thumbnailPresenter;
        v19 = [v20 objectAtIndex:{objc_msgSend(v7, "row")}];
        v18 = [(PKTransactionGroupThumbnailPresenter *)thumbnailPresenter cellForItem:v19 inCollectionView:v6 atIndexPath:v7];
LABEL_21:
        v22 = 1;
      }

      else
      {
        passPresenter = self->_transactionGroupPresenter;
LABEL_30:
        v19 = [v20 objectAtIndex:{objc_msgSend(v7, "row")}];
        v18 = [passPresenter cellForItem:v19 inCollectionView:v6 atIndexPath:v7];
        v22 = 0;
      }

LABEL_32:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v18;
        [v23 setWantsCustomAppearance:v22];
        if ((v22 & 1) == 0)
        {
          -[PKSearchResultsViewController _applyMaskToCell:firstInSection:lastInSection:](self, "_applyMaskToCell:firstInSection:lastInSection:", v23, [v7 row] == 0, objc_msgSend(v6, "numberOfItemsInSection:", objc_msgSend(v7, "section")) == objc_msgSend(v7, "row") + 1);
          [v23 setShowsBottomSeparator:0];
        }
      }

      return v18;
    case 17:
      passPresenter = self->_paymentSetupProductPresenter;
      v15 = 1384;
      goto LABEL_29;
    case 18:
      passPresenter = self->_passPresenter;
      v15 = 1344;
LABEL_29:
      v20 = *(&self->super.super.super.super.isa + v15);
      goto LABEL_30;
    default:
      v22 = 0;
      v18 = 0;
      goto LABEL_32;
  }
}

- (void)_configureSuggestionCell:(id)a3 withSuggestion:(id)a4
{
  v12 = 0;
  v13 = 0;
  transactionGroupPresenter = self->_transactionGroupPresenter;
  v6 = a4;
  v7 = a3;
  v8 = [(PKTransactionGroupItemPresenter *)transactionGroupPresenter contactResolver];
  PKSearchAutoCompletionTextAndImageFromSuggestion(&v13, &v12, 0, v6, v8);

  v9 = v13;
  v10 = v12;

  [v7 setIcon:v10];
  [v7 setSuggestion:v9];

  [v7 setShowsBottomSeparator:1];
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v11];
}

- (void)_applyMaskToCell:(id)a3 firstInSection:(BOOL)a4 lastInSection:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v11 = v7;
  v8 = 2;
  if (!v5)
  {
    v8 = 0;
  }

  v9 = 3;
  if (!v5)
  {
    v9 = 1;
  }

  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  [v7 setMaskType:v10];
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  if (!self->_queryHasNoResults)
  {
    v12 = 0;
    goto LABEL_22;
  }

  v4 = MEMORY[0x1E69DC8C8];
  v5 = a3;
  v6 = [v4 searchConfiguration];
  v17 = [v6 updatedConfigurationForState:v5];

  v7 = [(PKSearchQuery *)self->_queryForCurrentResults text];
  if (([(PKSearchQuery *)self->_queryForCurrentResults isEmpty]& 1) != 0)
  {
    v8 = PKLocalizedString(&cfstr_SearchNoSugges.isa);
    if (self->_fullResultsNotAvailable)
    {
      v9 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];

      if (v9)
      {
        v10 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
        v11 = [v10 localizedDescription];
        PKLocalizedString(&cfstr_SearchNoSugges_0.isa, &stru_1F3BD5BF0.isa, v11);
        goto LABEL_10;
      }

      v15 = @"SEARCH_NO_SUGGESTIONS_WALLT_SUBTITLE_INDEXING";
    }

    else
    {
      v15 = @"SEARCH_NO_SUGGESTIONS_SUBTITLE_NO_CONTENT";
    }

LABEL_20:
    v14 = PKLocalizedString(&v15->isa);
    goto LABEL_21;
  }

  v8 = PKLocalizedString(&cfstr_SearchNoResult.isa);
  if (self->_fullResultsNotAvailable)
  {
    v13 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    v10 = v13;
    if (!v13)
    {
      v14 = PKLocalizedString(&cfstr_SearchNoResult_1.isa);
      goto LABEL_18;
    }

    v11 = [v13 localizedDescription];
    PKLocalizedString(&cfstr_SearchNoResult_0.isa, &stru_1F3BD5BF0.isa, v11);
    v14 = LABEL_10:;

LABEL_18:
    goto LABEL_21;
  }

  if (!self->_hasSearchableContent)
  {
    v15 = @"SEARCH_NO_RESULTS_SUBTITLE_NO_CONTENT";
    goto LABEL_20;
  }

  if (![v7 length])
  {
    v15 = @"SEARCH_NO_RESULTS_SUBTITLE_NO_TEXT";
    goto LABEL_20;
  }

  v16 = PKLocalizedString(&cfstr_SearchNoResult_3.isa, &stru_1F3BD5BF0.isa, v7);

  v14 = PKLocalizedString(&cfstr_SearchNoResult_4.isa);
  v8 = v16;
LABEL_21:
  [v17 setText:v8];
  [v17 setSecondaryText:v14];

  v12 = v17;
LABEL_22:
  v18 = v12;
  [(PKSearchResultsViewController *)self _setContentUnavailableConfiguration:v12];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v7 safeAreaInsets];
  v10 = v9;
  v12 = v11;
  [v7 bounds];
  v14 = v13;
  v15 = [v8 section];
  if (v15 == 1)
  {
    v16 = -[NSArray objectAtIndex:](self->_searchHistories, "objectAtIndex:", [v8 row]);
    [(PKSearchResultsViewController *)self _configureSuggestionCell:self->_sampleSuggestionCell withSuggestion:v16];
    sampleSuggestionCell = self->_sampleSuggestionCell;
    v19 = v14 - v10 - v12;
  }

  else
  {
    if (v15)
    {
      v22 = *MEMORY[0x1E695F060];
      v24 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_7;
    }

    v16 = -[NSArray objectAtIndex:](self->_suggestions, "objectAtIndex:", [v8 row]);
    [(PKSearchResultsViewController *)self _configureSuggestionCell:self->_sampleSuggestionCell withSuggestion:v16];
    v17 = self->_sampleSuggestionCell;
    [v7 bounds];
    v19 = v18;
    sampleSuggestionCell = v17;
  }

  [(PKSearchSuggestionCollectionViewCell *)sampleSuggestionCell sizeThatFits:v19, 3.40282347e38];
  v22 = v21;
  v24 = v23;

LABEL_7:
  v25 = v22;
  v26 = v24;
  result.height = v26;
  result.width = v25;
  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (!self->_usingThumbnailLayout)
  {
    v13 = 1;
    switch(v8)
    {
      case 0:
        goto LABEL_9;
      case 2:
        goto LABEL_3;
      case 3:
        passPresenter = self->_passPresenter;
        v11 = 1312;
        goto LABEL_5;
      case 4:
        v16 = &OBJC_IVAR___PKSearchResultsViewController__passPresenter;
        goto LABEL_24;
      case 5:
        passPresenter = self->_passPresenter;
        v11 = 1320;
        goto LABEL_5;
      case 6:
        passPresenter = self->_accountPresenter;
        v11 = 1328;
        goto LABEL_5;
      case 7:
        v9 = &OBJC_IVAR___PKSearchResultsViewController__passPresenter;
        goto LABEL_4;
      case 8:
        v15 = &OBJC_IVAR___PKSearchResultsViewController__passPresenter;
        goto LABEL_20;
      case 9:
        passPresenter = self->_passPresenter;
        v11 = 1360;
        goto LABEL_5;
      case 10:
        v16 = &OBJC_IVAR___PKSearchResultsViewController__accountPresenter;
LABEL_24:
        passPresenter = *(&self->super.super.super.super.isa + *v16);
        v11 = v16[40];
        goto LABEL_5;
      case 11:
        v15 = &OBJC_IVAR___PKSearchResultsViewController__transactionPresenter;
LABEL_20:
        passPresenter = *(&self->super.super.super.super.isa + *v15);
        v11 = v15[24];
        goto LABEL_5;
      case 12:
        passPresenter = self->_orderPresenter;
        v11 = 1376;
        goto LABEL_5;
      case 13:
        passPresenter = self->_transactionGroupPresenter;
        v11 = 1264;
        goto LABEL_5;
      case 14:
        v9 = &OBJC_IVAR___PKSearchResultsViewController__transactionGroupPresenter;
        goto LABEL_4;
      case 15:
        passPresenter = self->_transactionGroupPresenter;
        v11 = 1288;
        goto LABEL_5;
      case 16:
        passPresenter = self->_transactionGroupPresenter;
        v11 = 1280;
        goto LABEL_5;
      case 17:
        passPresenter = self->_paymentSetupProductPresenter;
        v11 = 1384;
        goto LABEL_5;
      case 18:
        passPresenter = self->_passPresenter;
        v11 = 1344;
        goto LABEL_5;
      default:
        v13 = 0;
        goto LABEL_9;
    }
  }

  if (v8 == 2)
  {
LABEL_3:
    v9 = &OBJC_IVAR___PKSearchResultsViewController__pendingPeerPaymentRequestPresenter;
LABEL_4:
    passPresenter = *(&self->super.super.super.super.isa + *v9);
    v11 = v9[22];
LABEL_5:
    v12 = [*(&self->super.super.super.super.isa + v11) objectAtIndex:{objc_msgSend(v7, "row")}];
    v13 = [passPresenter canSelectItem:v12 inCollectionView:v6 atIndexPath:v7];
  }

  else
  {
    v13 = 1;
  }

LABEL_9:

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v120 = *MEMORY[0x1E69E9840];
  v90 = a3;
  v6 = a4;
  ++self->_presentationCounter;
  [(PKSearchResultsViewController *)self _setHasActivePeerPaymentRequestAction:0];
  presentationCounter = self->_presentationCounter;
  if (self->_usingThumbnailLayout || ![v6 section])
  {
    v9 = [(PKSearchResultsViewController *)self _searchController];
    v10 = [v9 searchBar];
    v8 = [v10 searchTextField];
  }

  else
  {
    v8 = 0;
  }

  v11 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v12 = [v11 associatedAccountServiceAccountIdentifier];
  v86 = v11;
  v88 = v12;
  v13 = v8;
  if ([v11 hasAssociatedPeerPaymentAccount])
  {
    v14 = 1;
  }

  else if ([v12 length])
  {
    v15 = [(NSDictionary *)self->_accountsPerIdentifier objectForKey:v12];
    v16 = [v15 feature];
    if (v16 == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v16 == 1;
    }
  }

  else
  {
    v14 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  aBlock[3] = &unk_1E8019298;
  aBlock[4] = self;
  v87 = _Block_copy(aBlock);
  v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = [v6 section];
  v18 = [(PKSearchResultsViewController *)self _isTopHitSection:v17];
  v91 = v6;
  switch(v17)
  {
    case 0:
      v21 = -[NSArray objectAtIndex:](self->_suggestions, "objectAtIndex:", [v6 row]);
      v48 = v87[2](v87, v21);
      [v89 safelyAddObject:v48];

      if ([v21 tokenType] == 8)
      {
        v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v50 = [v21 tag];
        v51 = [v50 type];

        v52 = [MEMORY[0x1E696AD98] numberWithInteger:v51];
        v53 = _MergedGlobals_5_6();
        [v49 setObject:v52 forKey:v53];

        v54 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        v55 = off_1EE989758();
        [v49 setObject:v54 forKey:v55];

        v56 = [MEMORY[0x1E696AD98] numberWithInteger:2];
        v57 = off_1EE989760();
        [v49 setObject:v56 forKey:v57];

        searchSuggestionController = self->_searchSuggestionController;
        v59 = [v49 copy];
        [(FHSearchSuggestionController *)searchSuggestionController recordUserInteraction:v59];
      }

      goto LABEL_38;
    case 1:
      v21 = -[NSArray objectAtIndex:](self->_searchHistories, "objectAtIndex:", [v6 row]);
      v60 = [v21 searchHistory];
      v23 = 0;
      goto LABEL_48;
    case 2:
      v21 = -[NSArray objectAtIndex:](self->_pendingPeerPaymentRequests, "objectAtIndex:", [v6 row]);
      pendingPeerPaymentRequestPresenter = self->_pendingPeerPaymentRequestPresenter;
      v47 = [(PKSearchResultsViewController *)self navigationController];
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_14;
      v104[3] = &unk_1E80192C0;
      v104[4] = self;
      v104[5] = presentationCounter;
      [(PKDashboardBalancePresenter *)pendingPeerPaymentRequestPresenter didSelectItem:v21 inCollectionView:v90 atIndexPath:v6 navigationController:v47 canPresent:v104];

LABEL_38:
      v23 = 0;
      goto LABEL_47;
    case 3:
    case 7:
      v19 = 34;
      if (v18)
      {
        v19 = 51;
      }

      v20 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKSearchResultsViewController__transactionSourceCollection[v19]);
      v21 = [v20 objectAtIndex:{objc_msgSend(v6, "row")}];
      v22 = v90;
      v23 = [(PKDashboardPassPresenter *)self->_passPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
      passPresenter = self->_passPresenter;
      v25 = [(PKSearchResultsViewController *)self navigationController];
      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
      v116[3] = &unk_1E80192C0;
      v116[5] = presentationCounter;
      v116[4] = self;
      v26 = v116;
      goto LABEL_26;
    case 4:
    case 8:
      v27 = 36;
      if (v18)
      {
        v27 = 52;
      }

      v20 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKSearchResultsViewController__transactionSourceCollection[v27]);
      v21 = [v20 objectAtIndex:{objc_msgSend(v6, "row")}];
      v22 = v90;
      v23 = [(PKDashboardPassPresenter *)self->_passPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
      passPresenter = self->_passPresenter;
      v25 = [(PKSearchResultsViewController *)self navigationController];
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_4;
      v114[3] = &unk_1E80192C0;
      v114[5] = presentationCounter;
      v114[4] = self;
      v26 = v114;
      goto LABEL_26;
    case 5:
    case 9:
      v28 = 35;
      if (v18)
      {
        v28 = 53;
      }

      v20 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKSearchResultsViewController__transactionSourceCollection[v28]);
      v21 = [v20 objectAtIndex:{objc_msgSend(v6, "row")}];
      v22 = v90;
      v23 = [(PKDashboardPassPresenter *)self->_passPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
      passPresenter = self->_passPresenter;
      v25 = [(PKSearchResultsViewController *)self navigationController];
      v115[0] = MEMORY[0x1E69E9820];
      v115[1] = 3221225472;
      v115[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3;
      v115[3] = &unk_1E80192C0;
      v115[5] = presentationCounter;
      v115[4] = self;
      v26 = v115;
      goto LABEL_26;
    case 6:
    case 10:
      v29 = 54;
      if (v18)
      {
        v29 = 50;
      }

      v20 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKSearchResultsViewController__transactionSourceCollection[v29]);
      v21 = [v20 objectAtIndex:{objc_msgSend(v6, "row")}];
      v22 = v90;
      v23 = [(PKDashboardAccountModulePresenter *)self->_accountPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
      passPresenter = self->_accountPresenter;
      v25 = [(PKSearchResultsViewController *)self navigationController];
      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 3221225472;
      v112[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_6;
      v112[3] = &unk_1E80192C0;
      v112[5] = presentationCounter;
      v112[4] = self;
      v26 = v112;
LABEL_26:
      [passPresenter didSelectItem:v21 inCollectionView:v22 atIndexPath:v6 navigationController:v25 canPresent:v26];

      goto LABEL_47;
    case 11:
      v21 = -[NSArray objectAtIndex:](self->_transactions, "objectAtIndex:", [v6 row]);
      v40 = v90;
      v23 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
      transactionPresenter = self->_transactionPresenter;
      v42 = [(PKSearchResultsViewController *)self navigationController];
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_11;
      v107[3] = &unk_1E80192C0;
      v107[4] = self;
      v107[5] = presentationCounter;
      v43 = v107;
      goto LABEL_41;
    case 12:
      v21 = -[NSArray objectAtIndex:](self->_orders, "objectAtIndex:", [v6 row]);
      v44 = v90;
      v23 = [(PKDashboardOrderPresenter *)self->_orderPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v91];
      orderPresenter = self->_orderPresenter;
      v42 = [(PKSearchResultsViewController *)self navigationController];
      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_7;
      v111[3] = &unk_1E80192C0;
      v111[5] = presentationCounter;
      v111[4] = self;
      v43 = v111;
      goto LABEL_45;
    case 13:
      v21 = -[NSArray objectAtIndex:](self->_categories, "objectAtIndex:", [v6 row]);
      v30 = [v21 group];
      if (self->_usingThumbnailLayout)
      {
        goto LABEL_43;
      }

      v31 = v90;
      v23 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
      transactionGroupPresenter = self->_transactionGroupPresenter;
      v33 = [(PKSearchResultsViewController *)self navigationController];
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_9;
      v109[3] = &unk_1E80192C0;
      v109[4] = self;
      v109[5] = presentationCounter;
      v34 = v109;
      goto LABEL_53;
    case 14:
      v21 = -[NSArray objectAtIndex:](self->_merchants, "objectAtIndex:", [v6 row]);
      v35 = [v21 group];
      if (self->_usingThumbnailLayout)
      {
        v36 = objc_alloc_init(MEMORY[0x1E69B9198]);
        v37 = [v35 merchant];
        [v36 setMerchant:v37];
        v38 = [v37 displayName];
        [v36 setDisplayName:v38];

        v39 = v87[2](v87, v36);
        [v89 safelyAddObject:v39];

        v23 = 0;
      }

      else
      {
        v23 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
        v69 = self->_transactionGroupPresenter;
        v70 = [(PKSearchResultsViewController *)self navigationController];
        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 3221225472;
        v108[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_10;
        v108[3] = &unk_1E80192C0;
        v108[4] = self;
        v108[5] = presentationCounter;
        [(PKTransactionGroupItemPresenter *)v69 didSelectItem:v21 inCollectionView:v90 atIndexPath:v6 navigationController:v70 canPresent:v108];
      }

      v66 = v13;

      goto LABEL_55;
    case 15:
      v21 = -[NSArray objectAtIndex:](self->_people, "objectAtIndex:", [v6 row]);
      v30 = [v21 group];
      if (self->_usingThumbnailLayout)
      {
        goto LABEL_43;
      }

      v31 = v90;
      v23 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
      transactionGroupPresenter = self->_transactionGroupPresenter;
      v33 = [(PKSearchResultsViewController *)self navigationController];
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_12;
      v106[3] = &unk_1E80192C0;
      v106[4] = self;
      v106[5] = presentationCounter;
      v34 = v106;
      goto LABEL_53;
    case 16:
      v21 = -[NSArray objectAtIndex:](self->_locations, "objectAtIndex:", [v6 row]);
      v30 = [v21 group];
      if (self->_usingThumbnailLayout)
      {
LABEL_43:
        v64 = objc_alloc_init(MEMORY[0x1E69B91D0]);
        [v64 setGroup:v30];
        v65 = v87[2](v87, v64);
        [v89 safelyAddObject:v65];

        v23 = 0;
      }

      else
      {
        v31 = v90;
        v23 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
        transactionGroupPresenter = self->_transactionGroupPresenter;
        v33 = [(PKSearchResultsViewController *)self navigationController];
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_13;
        v105[3] = &unk_1E80192C0;
        v105[4] = self;
        v105[5] = presentationCounter;
        v34 = v105;
LABEL_53:
        [(PKTransactionGroupItemPresenter *)transactionGroupPresenter didSelectItem:v21 inCollectionView:v31 atIndexPath:v6 navigationController:v33 canPresent:v34];
      }

      v66 = v13;

LABEL_55:
      v60 = 0;
      goto LABEL_56;
    case 17:
      v21 = -[NSArray objectAtIndex:](self->_paymentSetupProducts, "objectAtIndex:", [v6 row]);
      v40 = v90;
      v23 = [(PKDashboardOrderPresenter *)self->_orderPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v6];
      transactionPresenter = self->_paymentSetupProductPresenter;
      v42 = [(PKSearchResultsViewController *)self navigationController];
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_8;
      v110[3] = &unk_1E80192C0;
      v110[5] = presentationCounter;
      v110[4] = self;
      v43 = v110;
LABEL_41:
      v61 = transactionPresenter;
      v62 = v21;
      v63 = v40;
      goto LABEL_46;
    case 18:
      v21 = -[NSArray objectAtIndex:](self->_expiredPasses, "objectAtIndex:", [v6 row]);
      v44 = v90;
      v23 = [(PKDashboardPassPresenter *)self->_passPresenter searchHistoryStringForItem:v21 inCollectionView:v90 atIndexPath:v91];
      orderPresenter = self->_passPresenter;
      v42 = [(PKSearchResultsViewController *)self navigationController];
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke_5;
      v113[3] = &unk_1E80192C0;
      v113[5] = presentationCounter;
      v113[4] = self;
      v43 = v113;
LABEL_45:
      v61 = orderPresenter;
      v62 = v21;
      v63 = v44;
      v6 = v91;
LABEL_46:
      [v61 didSelectItem:v62 inCollectionView:v63 atIndexPath:v6 navigationController:v42 canPresent:v43];

LABEL_47:
      v60 = 0;
LABEL_48:
      v66 = v13;
LABEL_56:
      v68 = v88;

      v67 = v23;
      break;
    default:
      v67 = 0;
      v60 = 0;
      v66 = v13;
      v68 = v88;
      break;
  }

  if ([v67 length])
  {
    [(PKSearchResultsViewController *)self _saveSearchHistoryString:v67];
  }

  v85 = v67;
  if ([v60 length])
  {
    [v66 setText:v60];
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v89;
    v95 = [obj countByEnumeratingWithState:&v100 objects:v119 count:16];
    if (v95)
    {
      v93 = *v101;
      v94 = v60;
      do
      {
        for (i = 0; i != v95; ++i)
        {
          if (*v101 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v72 = *(*(&v100 + 1) + 8 * i);
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v73 = v66;
          v74 = [v66 tokens];
          v75 = [v74 countByEnumeratingWithState:&v96 objects:v118 count:16];
          if (v75)
          {
            v76 = v75;
            v77 = *v97;
            while (2)
            {
              for (j = 0; j != v76; ++j)
              {
                if (*v97 != v77)
                {
                  objc_enumerationMutation(v74);
                }

                v79 = [*(*(&v96 + 1) + 8 * j) representedObject];
                v80 = [v72 representedObject];
                v81 = PKEqualObjects();

                if (v81)
                {
                  v66 = v73;
                  goto LABEL_78;
                }
              }

              v76 = [v74 countByEnumeratingWithState:&v96 objects:v118 count:16];
              if (v76)
              {
                continue;
              }

              break;
            }
          }

          v82 = [v72 representedObject];
          v83 = [v82 tokenType];

          v84 = v83 == 10;
          v66 = v73;
          if (!v84)
          {
            [v73 setText:&stru_1F3BD7330];
          }

          v74 = [v73 tokens];
          [v73 insertToken:v72 atIndex:{objc_msgSend(v74, "count")}];
LABEL_78:

          v60 = v94;
        }

        v95 = [obj countByEnumeratingWithState:&v100 objects:v119 count:16];
      }

      while (v95);
    }

    v6 = v91;
    v68 = v88;
  }
}

id __73__PKSearchResultsViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = 0;
  v4 = [*(*(a1 + 32) + 1096) contactResolver];
  PKSearchAutoCompletionTextAndImageFromSuggestion(&v10, &v9, 1, v3, v4);
  v5 = v10;
  v6 = v9;

  if ([v5 length])
  {
    v7 = [MEMORY[0x1E69DCF30] tokenWithIcon:v6 text:v5];
    [v7 setRepresentedObject:v3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PKSearchResultsViewController;
  [(PKSearchResultsViewController *)&v28 traitCollectionDidChange:v4];
  if (self->_hasLoadedRequiredData)
  {
    v5 = [(PKSearchResultsViewController *)self traitCollection];
    passPresenter = self->_passPresenter;
    v7 = [(PKSearchResultsViewController *)self collectionView];
    [(PKDashboardPassPresenter *)passPresenter traitCollectionDidChangeFromTrait:v4 toTrait:v5 inCollectionView:v7];

    transactionPresenter = self->_transactionPresenter;
    v9 = [(PKSearchResultsViewController *)self collectionView];
    [(PKDashboardPaymentTransactionItemPresenter *)transactionPresenter traitCollectionDidChangeFromTrait:v4 toTrait:v5 inCollectionView:v9];

    transactionGroupPresenter = self->_transactionGroupPresenter;
    v11 = [(PKSearchResultsViewController *)self collectionView];
    [(PKTransactionGroupItemPresenter *)transactionGroupPresenter traitCollectionDidChangeFromTrait:v4 toTrait:v5 inCollectionView:v11];

    thumbnailPresenter = self->_thumbnailPresenter;
    v13 = [(PKSearchResultsViewController *)self collectionView];
    [(PKTransactionGroupThumbnailPresenter *)thumbnailPresenter traitCollectionDidChangeFromTrait:v4 toTrait:v5 inCollectionView:v13];

    if (!v4 || !v5)
    {
      goto LABEL_8;
    }

    v14 = [v4 preferredContentSizeCategory];
    v15 = [v5 preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(v14, v15))
    {
    }

    else
    {
      v16 = [v4 userInterfaceStyle];
      v17 = [v5 userInterfaceStyle];

      if (v16 == v17)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v18 = [PKDashboardTitleHeaderView alloc];
    v19 = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    v21 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
    v23 = [(PKDashboardTitleHeaderView *)v18 initWithFrame:*MEMORY[0x1E695F058], v20, v21, v22];
    sampleHeaderView = self->_sampleHeaderView;
    self->_sampleHeaderView = v23;

    v25 = [[PKSearchSuggestionCollectionViewCell alloc] initWithFrame:v19, v20, v21, v22];
    sampleSuggestionCell = self->_sampleSuggestionCell;
    self->_sampleSuggestionCell = v25;

    v27 = [(PKSearchResultsViewController *)self collectionView];
    [v27 reloadData];

    goto LABEL_8;
  }

LABEL_9:
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ++self->_presentationCounter;
  v5 = [v4 searchBar];
  v6 = [v5 textInputMode];
  v7 = [v6 primaryLanguage];

  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];

  v10 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v41 = v10;
  v42 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x1E69B92F0]);
    v13 = [v11 uniqueID];
    v14 = [v12 initWithIdentifier:v9 keyboardLanguage:v7 passUniqueIdentifier:v13];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E69B91B0]) initWithIdentifier:v9 keyboardLanguage:v7];
  }

  v44 = v4;
  v15 = [v4 searchBar];
  v16 = [v15 text];
  [v14 setText:v16];

  v17 = [v5 searchTextField];
  v18 = [v17 tokens];

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v46;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v46 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v45 + 1) + 8 * i) representedObject];
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v22);
  }

  v43 = v5;
  if ([v19 count])
  {
    v26 = [v19 copy];
    [v14 setTokens:v26];
  }

  else
  {
    [v14 setTokens:0];
  }

  os_unfair_lock_lock(&self->_lockQuery);
  queryInProgress = self->_queryInProgress;
  os_unfair_lock_unlock(&self->_lockQuery);
  v28 = [(PKSearchResultsViewController *)self _queryWithIdentifier:self->_currentQueryIdentifier];
  v29 = PKEqualObjects();

  if (v29 && queryInProgress)
  {
    v31 = v43;
    v30 = v44;
  }

  else
  {
    os_unfair_lock_lock(&self->_lockQuery);
    v32 = [(NSMutableOrderedSet *)self->_lastQueries indexOfObject:v14];
    lastQueries = self->_lastQueries;
    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableOrderedSet *)lastQueries addObject:v14];
      v34 = self->_currentQueryIdentifier;
      v35 = 0;
    }

    else
    {
      v36 = [(NSMutableOrderedSet *)lastQueries objectAtIndex:?];

      lastResultsPerQueryIdentifier = self->_lastResultsPerQueryIdentifier;
      v38 = [v36 identifier];
      v35 = [(NSMutableDictionary *)lastResultsPerQueryIdentifier objectForKey:v38];

      v34 = 0;
      v14 = v36;
    }

    v39 = [v14 identifier];
    currentQueryIdentifier = self->_currentQueryIdentifier;
    self->_currentQueryIdentifier = v39;

    os_unfair_lock_unlock(&self->_lockQuery);
    v31 = v43;
    if (v35)
    {
      [(PKSearchResultsViewController *)self _updateUIWithResults:v35 forQuery:v14 completion:0];
    }

    else
    {
      if (v34)
      {
        [(PKSearchService *)self->_searchService cancelQueryWithIdentifier:v34];
      }

      os_unfair_lock_lock(&self->_lockQuery);
      self->_queryInProgress = 1;
      os_unfair_lock_unlock(&self->_lockQuery);
      self->_queryIsReplay = 0;
      [(PKSearchService *)self->_searchService searchWithQuery:v14];
    }

    v30 = v44;
  }
}

- (void)searchDidCompleteWithError:(id)a3 results:(id)a4 forIdentifier:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_lockQuery);
  v11 = self->_currentQueryIdentifier;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_7;
  }

  if (!v12 || !v11)
  {

    goto LABEL_9;
  }

  v14 = [(NSString *)v11 isEqualToString:v12];

  if (v14)
  {
LABEL_7:
    self->_queryInProgress = 0;
  }

LABEL_9:
  os_unfair_lock_unlock(&self->_lockQuery);
  if (v8)
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v58 = v8;
      v59 = 2112;
      v60 = v13;
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Error %@ for query %@", buf, 0x16u);
    }

    v16 = [(NSString *)v8 domain];
    v17 = *MEMORY[0x1E69BC3B8];
    v18 = v16;
    v19 = v18;
    if (v18 == v17)
    {
    }

    else
    {
      if (!v18 || !v17)
      {

        goto LABEL_21;
      }

      v20 = [v18 isEqualToString:v17];

      if (!v20)
      {
        goto LABEL_21;
      }
    }

    v21 = [(NSString *)v8 code]== 5;

    if (v21)
    {
      v19 = v9;
      v9 = objc_alloc_init(MEMORY[0x1E69B91B8]);
LABEL_21:
    }
  }

  if (v9 && [(NSString *)v8 code]!= 4)
  {
    v41 = [(PKSearchResultsViewController *)self _queryWithIdentifier:v13];
    if (v41)
    {
      objc_initWeak(buf, self);
      v22 = 0;
      v23 = 0;
      v39 = 0;
      v40 = 0;
      v37 = 0;
      v38 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      switch([v41 type])
      {
        case 0:
          [(PKSearchResultsViewController *)self _saveResults:v9 forQuery:v41];
          self->_hasReceivedResults = 1;
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __82__PKSearchResultsViewController_searchDidCompleteWithError_results_forIdentifier___block_invoke;
          v55[3] = &unk_1E8012FD0;
          v55[4] = self;
          v56 = v41;
          [(PKSearchResultsViewController *)self _updateUIIfPossibleWithResults:v9 query:v56 completion:v55];

          v23 = 0;
          goto LABEL_43;
        case 1:
          v34 = [v9 paymentPassResults];
          v24 = [(PKSearchResultsViewController *)self _passItemsFromPassResults:v34];

          v23 = 0;
          v39 = 0;
          v40 = 0;
          v37 = 0;
          v38 = 0;
          goto LABEL_48;
        case 2:
          v33 = [v9 keyAndIDResults];
          v25 = [(PKSearchResultsViewController *)self _passItemsFromPassResults:v33];

          v23 = 0;
          v39 = 0;
          v40 = 0;
          v37 = 0;
          v38 = 0;
          v24 = 0;
          goto LABEL_49;
        case 3:
          v32 = [v9 barcodePassResults];
          v38 = [(PKSearchResultsViewController *)self _passItemsFromPassResults:v32];

          v23 = 0;
          v39 = 0;
          v40 = 0;
          goto LABEL_46;
        case 4:
        case 12:
          goto LABEL_52;
        case 5:
          v29 = [v9 categoryResults];
          goto LABEL_42;
        case 6:
          v29 = [v9 merchantResults];
          goto LABEL_42;
        case 7:
          v40 = [v9 transactionResults];
          v23 = 0;
          goto LABEL_44;
        case 8:
          v35 = [v9 orderResults];
          v39 = [v35 pk_arrayByApplyingBlock:&__block_literal_global_105];

          v23 = 0;
          v40 = 0;
          goto LABEL_45;
        case 9:
          v36 = [v9 paymentSetupProductResults];
          v26 = [v36 pk_arrayBySafelyApplyingBlock:&__block_literal_global_331];

          v23 = 0;
          v39 = 0;
          v40 = 0;
          v37 = 0;
          v38 = 0;
          v24 = 0;
          v25 = 0;
          goto LABEL_50;
        case 10:
          v29 = [v9 personResults];
LABEL_42:
          v23 = v29;
LABEL_43:
          v40 = 0;
LABEL_44:
          v39 = 0;
LABEL_45:
          v38 = 0;
LABEL_46:
          v37 = 0;
          goto LABEL_47;
        case 11:
          v23 = [v9 locationResults];
          v39 = 0;
          v40 = 0;
          v37 = 0;
          v38 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v22 = 1;
          if (v23)
          {
            goto LABEL_61;
          }

          goto LABEL_53;
        case 13:
          v31 = [v9 pendingPeerPaymentRequestResults];
          v27 = [(PKSearchResultsViewController *)self _balanceItemsFromPendingPeerPaymentRquests:v31];

          v23 = 0;
          v39 = 0;
          v40 = 0;
          v37 = 0;
          v38 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          goto LABEL_51;
        case 14:
          v30 = [v9 expiredPassResults];
          v37 = [(PKSearchResultsViewController *)self _passItemsFromPassResults:v30 isInExpiredSection:1];

          v23 = 0;
          v39 = 0;
          v40 = 0;
          v38 = 0;
LABEL_47:
          v24 = 0;
LABEL_48:
          v25 = 0;
LABEL_49:
          v26 = 0;
LABEL_50:
          v27 = 0;
LABEL_51:
          v22 = 0;
LABEL_52:
          if (!v23)
          {
            goto LABEL_53;
          }

          goto LABEL_61;
        default:
          v39 = 0;
          v40 = 0;
          v37 = 0;
          v38 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
LABEL_53:
          if (v40 || v39 || v38 || v24 || v37 || v25 || v26 || v27)
          {
LABEL_61:
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __82__PKSearchResultsViewController_searchDidCompleteWithError_results_forIdentifier___block_invoke_4;
            block[3] = &unk_1E8019328;
            objc_copyWeak(&v53, buf);
            v43 = v23;
            v44 = v41;
            v54 = v22;
            v45 = v40;
            v46 = v39;
            v47 = v38;
            v48 = v24;
            v49 = v25;
            v50 = v37;
            v51 = v26;
            v52 = v27;
            dispatch_async(MEMORY[0x1E69E96A0], block);

            objc_destroyWeak(&v53);
          }

          objc_destroyWeak(buf);
          break;
      }
    }

    else
    {
      v28 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v13;
        _os_log_impl(&dword_1BD026000, v28, OS_LOG_TYPE_DEFAULT, "Received results for unknown query identifier: %@", buf, 0xCu);
      }
    }
  }
}

void __82__PKSearchResultsViewController_searchDidCompleteWithError_results_forIdentifier___block_invoke(uint64_t a1, int a2)
{
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0 && a2 && (*(*(a1 + 32) + 1512) & 1) == 0 && ![*(a1 + 40) type])
  {
    *(*(a1 + 32) + 1553) = 1;
    v4 = [*(a1 + 32) view];
    [v4 setNeedsLayout];
  }
}

PKDashboardOrderItem *__82__PKSearchResultsViewController_searchDidCompleteWithError_results_forIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKDashboardOrderItem alloc] initWithSearchOrderResult:v2];

  return v3;
}

PKDashboardPaymentSetupProductItem *__82__PKSearchResultsViewController_searchDidCompleteWithError_results_forIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKDashboardPaymentSetupProductItem alloc] initWithPaymentSetupProductResult:v2];

  return v3;
}

void __82__PKSearchResultsViewController_searchDidCompleteWithError_results_forIdentifier___block_invoke_4(uint64_t a1)
{
  v1 = a1;
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 112));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(v1 + 32))
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = *(v1 + 32);
      v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v23;
        v20 = *v23;
        do
        {
          v9 = 0;
          v21 = v7;
          do
          {
            if (*v23 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v22 + 1) + 8 * v9);
            v11 = [v10 group];
            [v11 setSearchQuery:*(v1 + 40)];
            [v4 addObject:v11];
            if (*(v1 + 120) == 1 && [v11 type] == 13)
            {
              v12 = v1;
              v13 = v5;
              v14 = v4;
              v15 = v3[139];
              v16 = [v10 group];
              v17 = [v16 regions];
              v18 = [v17 firstObject];
              v19 = v15;
              v4 = v14;
              v5 = v13;
              v1 = v12;
              v8 = v20;
              [v19 updateCoordinatesForWorldRegionIfNeeded:v18];

              v7 = v21;
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v7);
      }

      [v3 _udpateSeeAllViewControllerForQuery:*(v1 + 40) groups:v4 transactionResults:0];
    }

    else if (*(v1 + 48))
    {
      [WeakRetained _udpateSeeAllViewControllerForQuery:*(v1 + 40) groups:0 transactionResults:?];
    }

    else if (*(v1 + 56))
    {
      [WeakRetained _udpateSeeAllViewControllerForQuery:*(v1 + 40) orders:?];
    }

    else if (*(v1 + 64) || *(v1 + 72) || *(v1 + 80) || *(v1 + 88))
    {
      [WeakRetained _udpateSeeAllViewControllerForQuery:*(v1 + 40) passes:?];
    }

    else if (*(v1 + 96))
    {
      [WeakRetained _udpateSeeAllViewControllerForQuery:*(v1 + 40) paymentSetupProducts:?];
    }

    else if (*(v1 + 104))
    {
      [WeakRetained _udpateSeeAllViewControllerForQuery:*(v1 + 40) pendingPeerPaymentRequests:?];
    }
  }
}

- (void)invalidateSearchResults
{
  os_unfair_lock_lock(&self->_lockQuery);
  [(NSMutableDictionary *)self->_lastResultsPerQueryIdentifier removeAllObjects];
  os_unfair_lock_unlock(&self->_lockQuery);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PKSearchResultsViewController_invalidateSearchResults__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __56__PKSearchResultsViewController_invalidateSearchResults__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _searchController];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) updateSearchResultsForSearchController:v2];
    v2 = v3;
    *(*(a1 + 32) + 1512) = 1;
  }
}

- (id)_queryWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__23;
  v16 = __Block_byref_object_dispose__23;
  v17 = 0;
  os_unfair_lock_lock(&self->_lockQuery);
  lastQueries = self->_lastQueries;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PKSearchResultsViewController__queryWithIdentifier___block_invoke;
  v9[3] = &unk_1E8019350;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableOrderedSet *)lastQueries enumerateObjectsUsingBlock:v9];
  os_unfair_lock_unlock(&self->_lockQuery);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__PKSearchResultsViewController__queryWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 identifier];
  v8 = *(a1 + 32);
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  if (!v9 || !v10)
  {

    goto LABEL_9;
  }

  v12 = [v9 isEqualToString:v10];

  if (v12)
  {
LABEL_7:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

LABEL_9:
}

- (BOOL)_isQueryIdentifierMatchingCurrentQuery:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lockQuery);
  v5 = self->_currentQueryIdentifier;
  os_unfair_lock_unlock(&self->_lockQuery);
  v6 = v5;
  v7 = v4;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v7 && v6)
    {
      v9 = [(NSString *)v6 isEqualToString:v7];
    }
  }

  return v9;
}

- (void)_saveResults:(id)a3 forQuery:(id)a4
{
  v19 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lockQuery);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v6 identifier];
  currentQueryIdentifier = self->_currentQueryIdentifier;
  currentResults = v7;
  v10 = currentQueryIdentifier;
  v11 = v10;
  if (currentResults == v10)
  {

    goto LABEL_8;
  }

  if (!currentResults || !v10)
  {

    goto LABEL_10;
  }

  v12 = [(PKSearchResults *)currentResults isEqualToString:v10];

  if (v12)
  {
LABEL_8:
    v13 = v19;
    currentResults = self->_currentResults;
    self->_currentResults = v13;
LABEL_10:
  }

  lastResultsPerQueryIdentifier = self->_lastResultsPerQueryIdentifier;
  v15 = [v6 identifier];
  [(NSMutableDictionary *)lastResultsPerQueryIdentifier setObject:v19 forKey:v15];

  if ([(NSMutableDictionary *)self->_lastResultsPerQueryIdentifier count]== 10)
  {
    v16 = [(NSMutableOrderedSet *)self->_lastQueries objectAtIndex:0];
    v17 = self->_lastResultsPerQueryIdentifier;
    v18 = [v16 identifier];
    [(NSMutableDictionary *)v17 removeObjectForKey:v18];

    [(NSMutableOrderedSet *)self->_lastQueries removeObjectAtIndex:0];
  }

LABEL_13:
  os_unfair_lock_unlock(&self->_lockQuery);
}

- (id)_groupItemForTransactionGroup:(id)a3 searchQuery:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setSearchQuery:v6];
  v8 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v9 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
  [(PKDashboardPaymentTransactionGroupItem *)v9 setGroup:v7];

  v10 = [v6 tokens];

  [(PKDashboardPaymentTransactionGroupItem *)v9 setTokens:v10];
  [(PKDashboardPaymentTransactionGroupItem *)v9 setFamilyCollection:self->_familyCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v9 setTransactionSourceCollection:self->_transactionSourceCollection];
  if (v8)
  {
    v11 = [v8 associatedAccountServiceAccountIdentifier];
    v12 = [(NSDictionary *)self->_accountsPerIdentifier objectForKey:v11];
    [(PKDashboardPaymentTransactionGroupItem *)v9 setAccount:v12];

    v13 = [(NSDictionary *)self->_accountUserCollectionsPerIdentifier objectForKey:v11];
    [(PKDashboardPaymentTransactionGroupItem *)v9 setAccountUserCollection:v13];

    v14 = [(NSDictionary *)self->_physicalCardsPerIdentifier objectForKey:v11];
    [(PKDashboardPaymentTransactionGroupItem *)v9 setPhysicalCards:v14];
  }

  return v9;
}

- (void)_updateUIWithResults:(id)a3 forQuery:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    queuePrepareResults = self->_queuePrepareResults;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke;
    v12[3] = &unk_1E8011D78;
    v12[4] = self;
    v13 = v9;
    v14 = v8;
    v15 = v10;
    dispatch_async(queuePrepareResults, v12);
  }
}

void __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke(id *a1)
{
  v245 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = [a1[5] identifier];
  LODWORD(v1) = [v1 _isQueryIdentifierMatchingCurrentQuery:v2];

  if (v1)
  {
    v153 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v234 = 0;
    v235 = &v234;
    v236 = 0x2020000000;
    v237 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_2;
    aBlock[3] = &unk_1E8019398;
    v4 = a1[4];
    v233 = &v234;
    aBlock[4] = v4;
    v132 = v3;
    v232 = v132;
    v152 = _Block_copy(aBlock);
    v5 = [a1[6] paymentPassResults];
    v150 = v152[2](v152, v5);

    v6 = [a1[6] topHitPaymentPassResults];
    v148 = v152[2](v152, v6);

    v7 = [a1[6] keyAndIDResults];
    v146 = v152[2](v152, v7);

    v8 = [a1[6] topHitKeyAndIDResults];
    v144 = v152[2](v152, v8);

    v9 = [a1[6] barcodePassResults];
    v143 = v152[2](v152, v9);

    v10 = [a1[6] topHitBarcodePassResults];
    v142 = v152[2](v152, v10);

    v11 = [a1[6] expiredPassResults];
    v141 = v152[2](v152, v11);

    v230[0] = MEMORY[0x1E69E9820];
    v230[1] = 3221225472;
    v230[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_4;
    v230[3] = &unk_1E80193E8;
    v12 = a1[4];
    v230[5] = &v234;
    v230[4] = v12;
    v151 = _Block_copy(v230);
    v13 = [a1[6] accountResults];
    v139 = v151[2](v151, v13);

    v14 = [a1[6] topHitAccountResults];
    v137 = v151[2](v151, v14);

    v15 = [a1[6] orderResults];

    if (v15)
    {
      v16 = [a1[6] orderResults];
      v17 = [v16 count] == 0;

      if (!v17)
      {
        *(v235 + 24) = 1;
      }

      v18 = [a1[6] orderResults];
      v136 = [v18 pk_arrayByApplyingBlock:&__block_literal_global_343];
    }

    else
    {
      v136 = 0;
    }

    v21 = [a1[6] paymentSetupProductResults];
    v135 = v21;
    if (v21)
    {
      if ([v21 count])
      {
        *(v235 + 24) = 1;
      }

      v22 = [v135 pk_arrayBySafelyApplyingBlock:&__block_literal_global_346];
    }

    else
    {
      v22 = 0;
    }

    v23 = [a1[6] pendingPeerPaymentRequestResults];
    v134 = v23;
    if (v23)
    {
      if ([v23 count])
      {
        *(v235 + 24) = 1;
      }

      v130 = [a1[4] _balanceItemsFromPendingPeerPaymentRquests:v134];
    }

    else
    {
      v130 = 0;
    }

    v131 = v22;
    v24 = [a1[6] categoryResults];

    if (v24)
    {
      v25 = [a1[6] categoryResults];
      v26 = [v25 count] == 0;

      if (!v26)
      {
        *(v235 + 24) = 1;
      }

      v160 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = a1;
      v228 = 0u;
      v229 = 0u;
      v226 = 0u;
      v227 = 0u;
      v28 = [a1[6] categoryResults];
      v29 = [v28 countByEnumeratingWithState:&v226 objects:v244 count:16];
      if (v29)
      {
        v30 = *v227;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v227 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = v27[4];
            v33 = [*(*(&v226 + 1) + 8 * i) group];
            v34 = [v32 _groupItemForTransactionGroup:v33 searchQuery:a1[5]];

            [v160 addObject:v34];
            v27 = a1;
          }

          v29 = [v28 countByEnumeratingWithState:&v226 objects:v244 count:16];
        }

        while (v29);
      }
    }

    else
    {
      v160 = 0;
    }

    v35 = [a1[6] transactionResults];

    if (v35)
    {
      v36 = [a1[6] transactionResults];
      v37 = [v36 count] == 0;

      if (!v37)
      {
        *(v235 + 24) = 1;
      }

      v155 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v38 = a1;
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      v39 = [a1[6] transactionResults];
      v40 = [v39 countByEnumeratingWithState:&v222 objects:v243 count:16];
      if (v40)
      {
        v157 = *v223;
        obj = v39;
        do
        {
          v162 = v40;
          for (j = 0; j != v162; ++j)
          {
            if (*v223 != v157)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v222 + 1) + 8 * j);
            v165 = [v42 transaction];
            v43 = [v42 passUniqueIdentifier];
            v44 = [*(v38[4] + 148) paymentPass];
            v45 = v44;
            if (v44)
            {
              v46 = v44;
            }

            else
            {
              v47 = [v38[4] _fetchPassForUniqueIdentifierIfNeeded:v43];
              v46 = [v47 paymentPass];

              v38 = a1;
            }

            if (v46)
            {
              v48 = v43 == 0;
            }

            else
            {
              v48 = 1;
            }

            if (!v48)
            {
              [*(v38[4] + 177) setObject:v46 forKey:v43];
              [v153 addObject:v43];
            }

            v49 = *(v38[4] + 148);
            if (!v49)
            {
              v50 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v46];
              v49 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSource:v50];

              v38 = a1;
              if (!v46)
              {
                goto LABEL_52;
              }

LABEL_51:
              v51 = [v165 accountIdentifier];
              v52 = [*(v38[4] + 145) objectForKey:v51];
              v53 = [*(v38[4] + 146) objectForKey:v51];
              v54 = [[PKDashboardPaymentTransactionItem alloc] initWithTransactionSourceCollection:v49 familyCollection:*(a1[4] + 140) transaction:v165 account:v52 accountUserCollection:v53 bankConnectInstitution:0];
              v55 = [*(a1[4] + 148) paymentPass];
              [(PKDashboardPaymentTransactionItem *)v54 setShouldDisplayTransactionSource:v55 == 0];

              [v155 addObject:v54];
              goto LABEL_52;
            }

            if (v46)
            {
              goto LABEL_51;
            }

LABEL_52:

            v38 = a1;
          }

          v39 = obj;
          v40 = [obj countByEnumeratingWithState:&v222 objects:v243 count:16];
        }

        while (v40);
      }
    }

    else
    {
      v155 = 0;
    }

    v56 = [a1[6] merchantResults];

    if (v56)
    {
      v57 = [a1[6] merchantResults];
      v58 = [v57 count] == 0;

      if (!v58)
      {
        *(v235 + 24) = 1;
      }

      v166 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v59 = a1;
      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v60 = [a1[6] merchantResults];
      v61 = [v60 countByEnumeratingWithState:&v218 objects:v242 count:16];
      if (v61)
      {
        v62 = *v219;
        do
        {
          for (k = 0; k != v61; ++k)
          {
            if (*v219 != v62)
            {
              objc_enumerationMutation(v60);
            }

            v64 = v59[4];
            v65 = [*(*(&v218 + 1) + 8 * k) group];
            v66 = [v64 _groupItemForTransactionGroup:v65 searchQuery:a1[5]];

            [v166 addObject:v66];
            v59 = a1;
          }

          v61 = [v60 countByEnumeratingWithState:&v218 objects:v242 count:16];
        }

        while (v61);
      }
    }

    else
    {
      v166 = 0;
    }

    v67 = [a1[6] personResults];

    if (v67)
    {
      v68 = [a1[6] personResults];
      v69 = [v68 count] == 0;

      if (!v69)
      {
        *(v235 + 24) = 1;
      }

      v163 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v70 = a1;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v71 = [a1[6] personResults];
      v72 = [v71 countByEnumeratingWithState:&v214 objects:v241 count:16];
      if (v72)
      {
        v73 = *v215;
        do
        {
          for (m = 0; m != v72; ++m)
          {
            if (*v215 != v73)
            {
              objc_enumerationMutation(v71);
            }

            v75 = v70[4];
            v76 = [*(*(&v214 + 1) + 8 * m) group];
            v77 = [v75 _groupItemForTransactionGroup:v76 searchQuery:a1[5]];

            [v163 addObject:v77];
            v70 = a1;
          }

          v72 = [v71 countByEnumeratingWithState:&v214 objects:v241 count:16];
        }

        while (v72);
      }
    }

    else
    {
      v163 = 0;
    }

    v78 = [a1[6] locationResults];

    if (v78)
    {
      v79 = [a1[6] locationResults];
      v80 = [v79 count] == 0;

      if (!v80)
      {
        *(v235 + 24) = 1;
      }

      v158 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v81 = a1;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v82 = [a1[6] locationResults];
      v83 = [v82 countByEnumeratingWithState:&v210 objects:v240 count:16];
      if (v83)
      {
        v84 = *v211;
        do
        {
          for (n = 0; n != v83; ++n)
          {
            if (*v211 != v84)
            {
              objc_enumerationMutation(v82);
            }

            v86 = v81[4];
            v87 = [*(*(&v210 + 1) + 8 * n) group];
            v88 = [v86 _groupItemForTransactionGroup:v87 searchQuery:a1[5]];

            [v158 addObject:v88];
            v89 = *(a1[4] + 139);
            v90 = [v88 group];
            v91 = [v90 regions];
            v92 = [v91 firstObject];
            [v89 updateCoordinatesForWorldRegionIfNeeded:v92];

            v81 = a1;
          }

          v83 = [v82 countByEnumeratingWithState:&v210 objects:v240 count:16];
        }

        while (v83);
      }
    }

    else
    {
      v158 = 0;
    }

    v93 = [a1[6] suggestedAutocompleteTokens];
    if ([v93 count])
    {
      *(v235 + 24) = 1;
      v206 = 0u;
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v94 = v93;
      v95 = [v94 countByEnumeratingWithState:&v206 objects:v239 count:16];
      if (v95)
      {
        v96 = *v207;
        do
        {
          for (ii = 0; ii != v95; ++ii)
          {
            if (*v207 != v96)
            {
              objc_enumerationMutation(v94);
            }

            v98 = *(*(&v206 + 1) + 8 * ii);
            if (![v98 tokenType])
            {
              v99 = [v98 group];
              if ([v99 type] == 13)
              {
                v100 = *(a1[4] + 139);
                v101 = [v99 regions];
                v102 = [v101 firstObject];
                [v100 updateCoordinatesForWorldRegionIfNeeded:v102];
              }
            }
          }

          v95 = [v94 countByEnumeratingWithState:&v206 objects:v239 count:16];
        }

        while (v95);
      }
    }

    v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v104 = [a1[6] transactionTagResults];

    if (v104)
    {
      v105 = [a1[6] transactionTagResults];
      v106 = [v105 count] == 0;

      if (!v106)
      {
        *(v235 + 24) = 1;
      }

      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v107 = [a1[6] transactionTagResults];
      v108 = [v107 countByEnumeratingWithState:&v202 objects:v238 count:16];
      if (v108)
      {
        v109 = *v203;
        do
        {
          for (jj = 0; jj != v108; ++jj)
          {
            if (*v203 != v109)
            {
              objc_enumerationMutation(v107);
            }

            v111 = *(*(&v202 + 1) + 8 * jj);
            v112 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
            v113 = [v111 group];
            [(PKDashboardPaymentTransactionGroupItem *)v112 setGroup:v113];

            [v103 addObject:v112];
          }

          v108 = [v107 countByEnumeratingWithState:&v202 objects:v238 count:16];
        }

        while (v108);
      }
    }

    v114 = *(a1[4] + 177);
    v200[0] = MEMORY[0x1E69E9820];
    v200[1] = 3221225472;
    v200[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_8;
    v200[3] = &unk_1E8019450;
    v20 = v153;
    v201 = v20;
    v115 = [v114 keysOfEntriesPassingTest:v200];
    v116 = *(a1[4] + 177);
    v117 = [v115 allObjects];
    [v116 removeObjectsForKeys:v117];

    v118 = *(a1[4] + 178);
    v198[0] = MEMORY[0x1E69E9820];
    v198[1] = 3221225472;
    v198[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_9;
    v198[3] = &unk_1E8019478;
    v133 = v132;
    v199 = v133;
    v119 = [v118 keysOfEntriesPassingTest:v198];

    v120 = *(a1[4] + 178);
    v121 = [v119 allObjects];
    [v120 removeObjectsForKeys:v121];

    objc_initWeak(&location, a1[4]);
    v172[0] = MEMORY[0x1E69E9820];
    v172[1] = 3221225472;
    v172[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_10;
    v172[3] = &unk_1E80194A0;
    objc_copyWeak(&v196, &location);
    v194 = a1[7];
    v173 = a1[5];
    v174 = v143;
    v175 = v142;
    v176 = v141;
    v177 = v150;
    v178 = v148;
    v179 = v146;
    v180 = v144;
    v181 = v139;
    v182 = v137;
    v183 = v136;
    v184 = v131;
    v122 = a1[4];
    v185 = v160;
    v186 = v122;
    v187 = v155;
    v188 = v166;
    v189 = v163;
    v190 = v158;
    v191 = v103;
    v192 = v130;
    v193 = a1[6];
    v195 = &v234;
    v123 = v130;
    v124 = v103;
    v125 = v158;
    v169 = v163;
    v167 = v166;
    v164 = v155;
    v161 = v160;
    v159 = v131;
    v156 = v136;
    v138 = v137;
    v140 = v139;
    v145 = v144;
    v147 = v146;
    v149 = v148;
    v126 = v150;
    v127 = v141;
    v128 = v142;
    v129 = v143;
    dispatch_async(MEMORY[0x1E69E96A0], v172);

    objc_destroyWeak(&v196);
    objc_destroyWeak(&location);

    _Block_object_dispose(&v234, 8);
  }

  else
  {
    v19 = a1[7];
    if (!v19)
    {
      return;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_5_364;
    block[3] = &unk_1E8010B50;
    v171 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v20 = v171;
  }
}

id __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    if ([v3 count])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v4 = [*(a1 + 32) _passItemsFromPassResults:v3];

    v5 = *(a1 + 40);
    v6 = [v4 pk_arrayByApplyingBlock:&__block_literal_global_337];
    [v5 addObjectsFromArray:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 pass];
  v3 = [v2 uniqueID];

  return v3;
}

id __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    if ([v3 count])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_5;
    v6[3] = &unk_1E80193C0;
    v6[4] = *(a1 + 32);
    v4 = [v3 pk_arrayBySafelyApplyingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PKDashboardAccountItem *__74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1160);
  v3 = [a2 accountIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [[PKDashboardAccountItem alloc] initWithAccount:v4 presentingPass:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

PKDashboardOrderItem *__74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKDashboardOrderItem alloc] initWithSearchOrderResult:v2];

  return v3;
}

PKDashboardPaymentSetupProductItem *__74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKDashboardPaymentSetupProductItem alloc] initWithPaymentSetupProductResult:v2];

  return v3;
}

void __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_10(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 216));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) identifier];
    v4 = [WeakRetained _isQueryIdentifierMatchingCurrentQuery:v3];

    if (v4)
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        v6 = [v5 copy];
        v7 = *(WeakRetained + 167);
        *(WeakRetained + 167) = v6;

        v8 = [*(a1 + 48) copy];
        v9 = *(WeakRetained + 163);
        *(WeakRetained + 163) = v8;
      }

      v10 = *(a1 + 56);
      if (v10)
      {
        v11 = [v10 copy];
        v12 = *(WeakRetained + 168);
        *(WeakRetained + 168) = v11;
      }

      v13 = *(a1 + 64);
      if (v13)
      {
        v14 = [v13 copy];
        v15 = *(WeakRetained + 169);
        *(WeakRetained + 169) = v14;

        v16 = [*(a1 + 72) copy];
        v17 = *(WeakRetained + 164);
        *(WeakRetained + 164) = v16;
      }

      v18 = *(a1 + 80);
      if (v18)
      {
        v19 = [v18 copy];
        v20 = *(WeakRetained + 170);
        *(WeakRetained + 170) = v19;

        v21 = [*(a1 + 88) copy];
        v22 = *(WeakRetained + 165);
        *(WeakRetained + 165) = v21;
      }

      v23 = *(a1 + 96);
      if (v23)
      {
        v24 = [v23 copy];
        v25 = *(WeakRetained + 171);
        *(WeakRetained + 171) = v24;

        v26 = [*(a1 + 104) copy];
        v27 = *(WeakRetained + 166);
        *(WeakRetained + 166) = v26;
      }

      v28 = *(a1 + 112);
      if (v28)
      {
        objc_storeStrong(WeakRetained + 172, v28);
      }

      v29 = *(a1 + 120);
      if (v29)
      {
        objc_storeStrong(WeakRetained + 173, v29);
      }

      v30 = *(a1 + 128);
      if (v30)
      {
        v31 = [v30 copy];
        v32 = *(WeakRetained + 158);
        *(WeakRetained + 158) = v31;
      }

      v33 = TransactionIdentifierFromItems(*(*(a1 + 136) + 1256));
      v34 = TransactionIdentifierFromItems(*(a1 + 144));
      if (*(a1 + 144) && (PKEqualObjects() & 1) == 0)
      {
        v35 = [*(a1 + 144) copy];
        v36 = *(WeakRetained + 157);
        *(WeakRetained + 157) = v35;
      }

      v37 = *(a1 + 152);
      if (v37)
      {
        v38 = [v37 copy];
        v39 = *(WeakRetained + 159);
        *(WeakRetained + 159) = v38;
      }

      v40 = *(a1 + 160);
      if (v40)
      {
        v41 = [v40 copy];
        v42 = *(WeakRetained + 161);
        *(WeakRetained + 161) = v41;
      }

      v43 = *(a1 + 168);
      if (v43)
      {
        v44 = [v43 copy];
        v45 = *(WeakRetained + 160);
        *(WeakRetained + 160) = v44;
      }

      v46 = *(a1 + 176);
      if (v46)
      {
        v47 = [v46 copy];
        v48 = *(WeakRetained + 162);
        *(WeakRetained + 162) = v47;
      }

      v49 = *(a1 + 184);
      if (v49)
      {
        objc_storeStrong(WeakRetained + 174, v49);
      }

      v50 = [*(a1 + 192) suggestedAutocompleteTokens];
      v51 = *(WeakRetained + 175);
      *(WeakRetained + 175) = v50;

      [*(a1 + 32) isEmpty];
      objc_storeStrong(WeakRetained + 152, *(a1 + 32));
      v52 = *(*(*(a1 + 208) + 8) + 24);
      if (v52 == 1)
      {
        v53 = *(WeakRetained + 1488);
      }

      else
      {
        v53 = 1;
      }

      *(WeakRetained + 1488) = v52 ^ 1;
      if (*(*(*(a1 + 208) + 8) + 24))
      {
        *(WeakRetained + 1489) = 1;
        *(WeakRetained + 1490) = 1;
      }

      else
      {
        *(WeakRetained + 1489) = [*(WeakRetained + 141) canProvideFullResults] ^ 1;
        v55 = [*(WeakRetained + 141) hasSearchableContentForQuery:*(a1 + 32)];
        *(WeakRetained + 1490) = v55;
        v56 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = @"NO";
          if (*(WeakRetained + 1489))
          {
            v58 = @"YES";
          }

          else
          {
            v58 = @"NO";
          }

          if (v55)
          {
            v57 = @"YES";
          }

          *buf = 138412546;
          v70 = v58;
          v71 = 2112;
          v72 = v57;
          _os_log_impl(&dword_1BD026000, v56, OS_LOG_TYPE_DEFAULT, "Empty results set, full results not available: %@, has content: %@", buf, 0x16u);
        }
      }

      if (![WeakRetained isViewLoaded])
      {
        goto LABEL_63;
      }

      if (v53)
      {
        [WeakRetained _setNeedsUpdateContentUnavailableConfiguration];
      }

      v59 = [WeakRetained collectionView];
      v60 = [*(a1 + 32) isEmpty];
      [v59 reloadData];
      if (*(WeakRetained + 1552) == 1)
      {
        if (v60 && (*(*(*(a1 + 208) + 8) + 24) & 1) != 0)
        {
          if ([*(*(a1 + 136) + 1592) hidden] && (*(WeakRetained + 1608) & 1) == 0)
          {
            v61 = 1;
            *(WeakRetained + 1608) = 1;
            v65[0] = MEMORY[0x1E69E9820];
            v65[1] = 3221225472;
            v65[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_359;
            v65[3] = &unk_1E8012300;
            v66 = v59;
            v67 = WeakRetained;
            v68 = *(a1 + 200);
            [v66 performBatchUpdates:v65 completion:0];

            goto LABEL_62;
          }

LABEL_61:
          v61 = 0;
LABEL_62:

          if (v61)
          {
LABEL_65:

            goto LABEL_66;
          }

LABEL_63:
          v64 = *(a1 + 200);
          if (v64)
          {
            (*(v64 + 16))();
          }

          goto LABEL_65;
        }

        *(WeakRetained + 1552) = 0;
        v62 = *(a1 + 136);
        v63 = 1600;
      }

      else
      {
        if (!v60)
        {
          goto LABEL_61;
        }

        *(WeakRetained + 1552) = 1;
        v62 = *(a1 + 136);
        v63 = 1592;
      }

      [v59 setCollectionViewLayout:*(v62 + v63) animated:0];
      [v59 reloadData];
      goto LABEL_61;
    }
  }

  v54 = *(a1 + 200);
  if (v54)
  {
    (*(v54 + 16))();
  }

LABEL_66:
}

void __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_359(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_2_361;
  v6[3] = &unk_1E8012300;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v2 pkui_animateUsingOptions:4 animations:v6 completion:0];
}

void __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_2_361(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_3_362;
  v4[3] = &unk_1E8010970;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_4_363;
  v2[3] = &unk_1E80158C0;
  v2[4] = v5;
  v3 = *(a1 + 48);
  [v1 performBatchUpdates:v4 completion:v2];
}

uint64_t __74__PKSearchResultsViewController__updateUIWithResults_forQuery_completion___block_invoke_4_363(uint64_t a1)
{
  *(*(a1 + 32) + 1608) = 0;
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateUIIfPossibleWithResults:(id)a3 query:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9 && self->_hasReceivedResults && self->_hasLoadedRequiredData)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__PKSearchResultsViewController__updateUIIfPossibleWithResults_query_completion___block_invoke;
    v12[3] = &unk_1E8012300;
    v12[4] = self;
    v13 = v9;
    v14 = v11;
    [(PKSearchResultsViewController *)self _updateUIWithResults:v8 forQuery:v13 completion:v12];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

uint64_t __81__PKSearchResultsViewController__updateUIIfPossibleWithResults_query_completion___block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "First set of results presented", buf, 2u);
  }

  v3 = [*(a1 + 32) collectionView];
  [v3 layoutIfNeeded];

  v4 = *(a1 + 32);
  v5 = *(v4 + 1560);
  if (v5)
  {
    (*(v5 + 16))();
    v6 = *(a1 + 32);
    v7 = *(v6 + 1560);
    *(v6 + 1560) = 0;

    v4 = *(a1 + 32);
  }

  if (*(v4 + 1568) == 1)
  {
    *(v4 + 1568) = 0;
    v8 = [*(a1 + 40) identifier];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PKSearchResultsViewController Preflight: %@", v8];
    v10 = PKLogFacilityTypeGetObject();
    v11 = os_signpost_id_make_with_pointer(v10, *(a1 + 32));
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v10, OS_SIGNPOST_INTERVAL_END, v12, "search:preflight", "", v15, 2u);
      }
    }

    v13 = PKTimeProfileEnd();
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)setQuery:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKSearchResultsViewController *)self _searchController];
  v6 = [v5 searchBar];
  v7 = [v6 searchTextField];

  if (v4)
  {
    v19 = v7;
    v20 = v5;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v4;
    obj = [v4 tokens];
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        v12 = 0;
        do
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * v12);
          v23 = 0;
          v24 = 0;
          v14 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter contactResolver];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v24, &v23, 1, v13, v14);
          v15 = v24;
          v16 = v23;

          v17 = [MEMORY[0x1E69DCF30] tokenWithIcon:v16 text:v15];
          [v17 setRepresentedObject:v13];

          [v8 addObject:v17];
          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v7 = v19;
    [v19 setTokens:v8];
    v4 = v21;
    v18 = [v21 text];
    [v19 setText:v18];

    v5 = v20;
  }

  else
  {
    [v7 setTokens:MEMORY[0x1E695E0F0]];
    [v7 setText:&stru_1F3BD7330];
  }
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  pendingPreflightCompletion = self->_pendingPreflightCompletion;
  self->_pendingPreflightCompletion = v4;

  self->_isPreflighting = 1;
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];

  v8 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [v8 languageCode];

  v10 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69B92F0]);
    v12 = [v10 uniqueID];
    v13 = [v11 initWithIdentifier:v7 keyboardLanguage:v9 passUniqueIdentifier:v12];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E69B91B0]) initWithIdentifier:v7 keyboardLanguage:v9];
  }

  [v13 setText:&stru_1F3BD7330];
  PKTimeProfileBegin();
  v14 = PKLogFacilityTypeGetObject();
  v15 = os_signpost_id_make_with_pointer(v14, self);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "search:preflight", "", v19, 2u);
    }
  }

  os_unfair_lock_lock(&self->_lockQuery);
  [(NSMutableOrderedSet *)self->_lastQueries addObject:v13];
  v17 = [v13 identifier];
  currentQueryIdentifier = self->_currentQueryIdentifier;
  self->_currentQueryIdentifier = v17;

  self->_queryInProgress = 1;
  os_unfair_lock_unlock(&self->_lockQuery);
  self->_queryIsReplay = 0;
  [(PKSearchService *)self->_searchService searchWithQuery:v13];
}

- (id)_fetchPassForUniqueIdentifierIfNeeded:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_passesForTransactionResults objectForKey:v4];
    if (!v5)
    {
      v5 = [(NSMutableDictionary *)self->_passesForPassResults objectForKey:v4];
      if (!v5)
      {
        v5 = [(PKPassLibrary *)self->_passLibrary passWithUniqueID:v4];
      }
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)foregroundActiveArbiter:(id)a3 didUpdateForegroundActiveState:(id)a4
{
  v6 = a3;
  foregroundActive = self->_foregroundActiveState.foregroundActive;
  self->_foregroundActiveState = a4;
  if (!foregroundActive && (*&a4 & 0x100) != 0 && self->_fullResultsNotAvailable)
  {
    v8 = v6;
    [(PKSearchResultsViewController *)self invalidateSearchResults];
    v6 = v8;
  }
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchResultsViewController *)self _searchController];
  v6 = [v5 searchBar];
  v7 = [v6 searchTextField];

  if (v7 == v4)
  {
    v9 = v4;
    v10 = [v9 tokens];
    if ([v10 count])
    {
      v11 = [v9 text];
      v12 = [v11 length];

      if (!v12)
      {
        [v9 setTokens:MEMORY[0x1E695E0F0]];
        v8 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = 1;
    goto LABEL_8;
  }

  v8 = 1;
LABEL_9:

  return v8;
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PKSearchResultsViewController_keyboardWillShow___block_invoke;
  v7[3] = &unk_1E8010E90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PKSearchResultsViewController *)self _updateLayoutForKeyboardAction:v7];
}

BOOL __50__PKSearchResultsViewController_keyboardWillShow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1520);
  v4 = *(v2 + 1528);
  v5 = *(v2 + 1536);
  v6 = *(v2 + 1544);
  *(v2 + 1513) = 1;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = (v8 + 1520);
  if (v7)
  {
    [v7 CGRectValue];
    *v9 = v10;
    v9[1] = v11;
    v9[2] = v12;
    v9[3] = v13;
  }

  else
  {
    v14 = *(MEMORY[0x1E695F050] + 16);
    *v9 = *MEMORY[0x1E695F050];
    *(v8 + 1536) = v14;
  }

  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1520), v16);
}

- (void)keyboardWillChange:(id)a3
{
  if (self->_keyboardVisible)
  {
    v10 = v3;
    v11 = v4;
    v6 = [a3 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E69DDFA0]];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __52__PKSearchResultsViewController_keyboardWillChange___block_invoke;
      v8[3] = &unk_1E8010E90;
      v8[4] = self;
      v9 = v7;
      [(PKSearchResultsViewController *)self _updateLayoutForKeyboardAction:v8];
    }
  }
}

BOOL __52__PKSearchResultsViewController_keyboardWillChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 190;
  v4 = *(v2 + 190);
  v5 = *(v2 + 191);
  v6 = *(v2 + 192);
  v7 = *(v2 + 193);
  [*(a1 + 40) CGRectValue];
  *v3 = v8;
  v3[1] = v9;
  v3[2] = v10;
  v3[3] = v11;
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  return !CGRectEqualToRect(*(*(a1 + 32) + 1520), v13);
}

- (void)keyboardWillHide:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__PKSearchResultsViewController_keyboardWillHide___block_invoke;
  v3[3] = &unk_1E8010EB8;
  v3[4] = self;
  [(PKSearchResultsViewController *)self _updateLayoutForKeyboardAction:v3];
}

BOOL __50__PKSearchResultsViewController_keyboardWillHide___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v8 = *(v1 + 1520);
  *(v1 + 1513) = 0;
  v2 = (*(a1 + 32) + 1520);
  v3 = *(MEMORY[0x1E695F050] + 16);
  *v2 = *MEMORY[0x1E695F050];
  v2[1] = v3;
  *&v3 = *(*(a1 + 32) + 1520);
  v4 = *(*(a1 + 32) + 1528);
  v5 = *(*(a1 + 32) + 1536);
  v6 = *(*(a1 + 32) + 1544);
  return !CGRectEqualToRect(*&v3, v8);
}

- (void)_updateLayoutForKeyboardAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKSearchResultsViewController *)self viewIfLoaded];
    v6 = v5;
    if (v5)
    {
      [v5 layoutIfNeeded];
      if (v4[2](v4))
      {
        [v6 setNeedsLayout];
        v7 = MEMORY[0x1E69DD250];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __64__PKSearchResultsViewController__updateLayoutForKeyboardAction___block_invoke;
        v8[3] = &unk_1E8010970;
        v9 = v6;
        [v7 _animateUsingDefaultTimingWithOptions:134 animations:v8 completion:0];
      }
    }

    else
    {
      v4[2](v4);
    }
  }
}

- (void)worldRegionUpdated:(id)a3 updatedRegion:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PKSearchResultsViewController_worldRegionUpdated_updatedRegion___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __66__PKSearchResultsViewController_worldRegionUpdated_updatedRegion___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v2 = *(*(a1 + 32) + 1280);
  v3 = [v2 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v43;
  while (2)
  {
    v7 = 0;
    v8 = v5;
    v5 += v4;
    do
    {
      if (*v43 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v42 + 1) + 8 * v7);
      v10 = *(a1 + 32);
      v11 = [v9 group];
      LODWORD(v10) = [v10 _updateGroup:v11 withRegion:*(a1 + 40)];

      if (v10)
      {
        v12 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:16];
        v13 = [*(a1 + 32) collectionView];
        v14 = [v13 cellForItemAtIndexPath:v12];

        if (v14)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = &OBJC_IVAR___PKSearchResultsViewController__thumbnailPresenter;
LABEL_15:
            v16 = *(a1 + 32);
            v17 = *&v16[*v15];
            v18 = [v16 collectionView];
            [v17 updateCell:v14 forItem:v9 inCollectionView:v18 atIndexPath:v12];

            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = &OBJC_IVAR___PKSearchResultsViewController__transactionGroupPresenter;
            goto LABEL_15;
          }
        }

LABEL_16:

        goto LABEL_17;
      }

      ++v8;
      ++v7;
    }

    while (v4 != v7);
    v4 = [v2 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = [*(*(a1 + 32) + 1216) locationTokens];
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
LABEL_19:
    v23 = 0;
    while (1)
    {
      if (*v39 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(a1 + 32);
      v25 = [*(*(&v38 + 1) + 8 * v23) group];
      LOBYTE(v24) = [v24 _updateGroup:v25 withRegion:*(a1 + 40)];

      if (v24)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v21)
        {
          goto LABEL_19;
        }

        break;
      }
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = *(*(a1 + 32) + 1400);
  v27 = [v26 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
LABEL_27:
    v30 = 0;
    while (1)
    {
      if (*v35 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v34 + 1) + 8 * v30);
      if (![v31 tokenType])
      {
        v32 = [v31 group];
        v33 = [*(a1 + 32) _updateGroup:v32 withRegion:*(a1 + 40)];

        if (v33)
        {
          break;
        }
      }

      if (v28 == ++v30)
      {
        v28 = [v26 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v28)
        {
          goto LABEL_27;
        }

        break;
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

- (void)_initiateSeeAllPresentationForQuery:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if ([v4 type] == 8)
  {
    v5 = [[PKSearchSeeAllViewController alloc] initWithSearchResultItems:0 itemPresenter:self->_orderPresenter searchQuery:v4];
    seeAllOrderVC = self->_seeAllOrderVC;
    self->_seeAllOrderVC = v5;

    [(PKSearchSeeAllViewController *)self->_seeAllOrderVC setSeeAllViewControllerDelegate:self];
    v7 = [(PKSearchResultsViewController *)self navigationController];
    [(PKDashboardPaymentSetupProductPresenter *)v7 pushViewController:self->_seeAllOrderVC animated:1];
  }

  else if ([v4 type] == 9)
  {
    v7 = objc_alloc_init(PKDashboardPaymentSetupProductPresenter);
    v8 = [[PKSearchSeeAllViewController alloc] initWithSearchResultItems:0 itemPresenter:v7 searchQuery:v4];
    seeAllPaymentSetupProductsVC = self->_seeAllPaymentSetupProductsVC;
    self->_seeAllPaymentSetupProductsVC = v8;

    [(PKSearchSeeAllViewController *)self->_seeAllPaymentSetupProductsVC setSeeAllViewControllerDelegate:self];
    [(PKDashboardPaymentSetupProductPresenter *)v7 setDelegate:self->_seeAllPaymentSetupProductsVC];
    v10 = [(PKSearchResultsViewController *)self navigationController];
    [v10 pushViewController:self->_seeAllPaymentSetupProductsVC animated:1];
  }

  else if ([v4 type] == 3 || objc_msgSend(v4, "type") == 1 || objc_msgSend(v4, "type") == 2 || objc_msgSend(v4, "type") == 14)
  {
    v11 = [[PKSearchSeeAllViewController alloc] initWithSearchResultItems:0 itemPresenter:self->_passPresenter searchQuery:v4];
    seeAllPassesVC = self->_seeAllPassesVC;
    self->_seeAllPassesVC = v11;

    [(PKSearchSeeAllViewController *)self->_seeAllPassesVC setSeeAllViewControllerDelegate:self];
    v7 = [(PKSearchResultsViewController *)self navigationController];
    [(PKDashboardPaymentSetupProductPresenter *)v7 pushViewController:self->_seeAllPassesVC animated:1];
  }

  else
  {
    if ([v4 type] != 13)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __69__PKSearchResultsViewController__initiateSeeAllPresentationForQuery___block_invoke;
      v15[3] = &unk_1E80194C8;
      objc_copyWeak(&v17, &location);
      v16 = v4;
      [(PKSearchResultsViewController *)self _seeAllHeaderGroupForQuery:v16 groups:0 transactionResults:0 completion:v15];

      objc_destroyWeak(&v17);
      goto LABEL_11;
    }

    v13 = [[PKSearchSeeAllViewController alloc] initWithSearchResultItems:0 itemPresenter:self->_pendingPeerPaymentRequestPresenter searchQuery:v4];
    seeAllPeerPaymentRequestsVC = self->_seeAllPeerPaymentRequestsVC;
    self->_seeAllPeerPaymentRequestsVC = v13;

    [(PKSearchSeeAllViewController *)self->_seeAllPeerPaymentRequestsVC setSeeAllViewControllerDelegate:self];
    v7 = [(PKSearchResultsViewController *)self navigationController];
    [(PKDashboardPaymentSetupProductPresenter *)v7 pushViewController:self->_seeAllPeerPaymentRequestsVC animated:1];
  }

LABEL_11:
  objc_destroyWeak(&location);
}

void __69__PKSearchResultsViewController__initiateSeeAllPresentationForQuery___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _historyViewControllerForQuery:*(a1 + 32) groups:0 headerGroup:v8];
    v6 = v4[181];
    v4[181] = v5;

    v7 = [v4 navigationController];
    [v7 pushViewController:v4[181] animated:1];
  }
}

- (void)_seeAllHeaderGroupForQuery:(id)a3 groups:(id)a4 transactionResults:(id)a5 completion:(id)a6
{
  v114 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v61 = a6;
  v13 = objc_alloc_init(MEMORY[0x1E69B8EB0]);
  [v13 setType:14];
  v62 = v10;
  v63 = v13;
  [v13 setSearchQuery:v10];
  v59 = v11;
  v60 = v12;
  if (v12)
  {
    v14 = self;
    v15 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];

    if (!v15)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v106 objects:v113 count:16];
      if (v19)
      {
        v20 = *v107;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v107 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = [*(*(&v106 + 1) + 8 * i) passUniqueIdentifier];
            if (v22 && ([v16 containsObject:v22] & 1) == 0)
            {
              v23 = [(PKSearchResultsViewController *)v14 _fetchPassForUniqueIdentifierIfNeeded:v22];
              v24 = [v23 paymentPass];

              if (v24)
              {
                v25 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v24];
                [v16 addObject:v22];
                [v17 addObject:v25];
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v106 objects:v113 count:16];
        }

        while (v19);
      }

      v26 = objc_alloc(MEMORY[0x1E69B9300]);
      v27 = [v17 copy];
      v28 = [v26 initWithTransactionSources:v27];

      [v63 setTransactionSourceCollection:v28];
    }

    v29 = [v60 pk_arrayByApplyingBlock:&__block_literal_global_375];
    [v63 setTransactionCount:{objc_msgSend(v29, "count")}];
    [v63 setTransactions:v29];
    if ([v62 domain] || objc_msgSend(v62, "type") != 7)
    {
      v30 = [v29 firstObject];
      v31 = [v30 transactionDate];
      [v63 setEndDate:v31];

      v32 = [v29 lastObject];
      v33 = [v32 transactionDate];
      [v63 setStartDate:v33];
    }

    v61[2](v61, v63);
  }

  else if (v11)
  {
    v34 = [v10 type] - 5;
    v58 = self;
    if (v34 > 6)
    {
      v35 = 1;
    }

    else
    {
      v35 = qword_1BE1156C8[v34];
    }

    [v13 setSecondaryType:v35];
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = v11;
    v67 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
    if (v67)
    {
      v69 = 0;
      v65 = *v103;
      do
      {
        for (j = 0; j != v67; ++j)
        {
          if (*v103 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v102 + 1) + 8 * j);
          if ([v37 type] == 13)
          {
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v70 = [v37 regions];
            v68 = [v70 countByEnumeratingWithState:&v98 objects:v111 count:16];
            if (v68)
            {
              v38 = *v99;
              v64 = *v99;
              do
              {
                for (k = 0; k != v68; ++k)
                {
                  if (*v99 != v38)
                  {
                    objc_enumerationMutation(v70);
                  }

                  v40 = *(*(&v98 + 1) + 8 * k);
                  v94 = 0u;
                  v95 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v41 = obj;
                  v42 = [v41 countByEnumeratingWithState:&v94 objects:v110 count:16];
                  if (v42)
                  {
                    v43 = *v95;
                    while (2)
                    {
                      for (m = 0; m != v42; ++m)
                      {
                        if (*v95 != v43)
                        {
                          objc_enumerationMutation(v41);
                        }

                        v45 = *(*(&v94 + 1) + 8 * m);
                        if (v45 != v37)
                        {
                          v46 = [v45 regions];
                          v47 = [v40 isIncludedInRegions:v46];

                          if (v47)
                          {

                            goto LABEL_50;
                          }
                        }
                      }

                      v42 = [v41 countByEnumeratingWithState:&v94 objects:v110 count:16];
                      if (v42)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v38 = v64;
                }

                v68 = [v70 countByEnumeratingWithState:&v98 objects:v111 count:16];
                v38 = v64;
              }

              while (v68);
            }
          }

          v69 += [v37 transactionCount];
LABEL_50:
          ;
        }

        v67 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
      }

      while (v67);
    }

    else
    {
      v69 = 0;
    }

    [v63 setTransactionCount:v69];
    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy__23;
    v92 = __Block_byref_object_dispose__23;
    v93 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = __Block_byref_object_copy__23;
    v86 = __Block_byref_object_dispose__23;
    v87 = 0;
    v48 = [v62 dateToken];
    v49 = objc_alloc_init(MEMORY[0x1E69B8658]);
    if (v48)
    {
      v50 = [v48 startDate];
      v51 = v89[5];
      v89[5] = v50;

      v52 = [v48 endDate];
      v53 = v83[5];
      v83[5] = v52;
    }

    else
    {
      v54 = [(PKTransactionSourceCollection *)v58->_transactionSourceCollection transactionSourceIdentifiers];
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_2;
      v79[3] = &unk_1E8012D58;
      v79[4] = v58;
      v55 = v54;
      v80 = v55;
      v81 = &v88;
      [v49 addOperation:v79];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_4;
      v76[3] = &unk_1E8012D58;
      v76[4] = v58;
      v53 = v55;
      v77 = v53;
      v78 = &v82;
      [v49 addOperation:v76];
    }

    v56 = [MEMORY[0x1E695DFB0] null];
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_6;
    v71[3] = &unk_1E8019538;
    v72 = v63;
    v74 = &v88;
    v75 = &v82;
    v73 = v61;
    v57 = [v49 evaluateWithInput:v56 completion:v71];

    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v88, 8);
  }

  else
  {
    v61[2](v61, v13);
  }
}

void __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_2(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = *(a1[4] + 1152);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_3;
  v13[3] = &unk_1E8012DA8;
  v10 = a1[6];
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v9 transactionsForTransactionSourceIdentifiers:v8 withTransactionSource:0 withBackingData:1 startDate:0 endDate:0 orderedByDate:-1 limit:1 completion:v13];
}

uint64_t __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 anyObject];
  v4 = [v3 transactionDate];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = *(a1[4] + 1152);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_5;
  v13[3] = &unk_1E8012DA8;
  v10 = a1[6];
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v9 transactionsForTransactionSourceIdentifiers:v8 withTransactionSource:0 withBackingData:1 startDate:0 endDate:0 orderedByDate:1 limit:1 completion:v13];
}

uint64_t __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 anyObject];
  v4 = [v3 transactionDate];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_7;
  block[3] = &unk_1E8019510;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v7 = v2;
  v9 = v3;
  v5 = *(a1 + 40);
  v4 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __97__PKSearchResultsViewController__seeAllHeaderGroupForQuery_groups_transactionResults_completion___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setStartDate:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) setEndDate:*(*(*(a1 + 56) + 8) + 40)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)_shouldShowPagedTransactionListForQuery:(id)a3
{
  v3 = a3;
  v4 = [v3 text];
  if (![v4 length] && !objc_msgSend(v3, "domain"))
  {
    v7 = [v3 tokens];
    if ([v7 count] == 1)
    {
      v8 = [v3 type];

      if (v8 != 7)
      {
        v5 = 0;
        goto LABEL_5;
      }

      v9 = [v3 tokens];
      v4 = [v9 firstObject];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_3;
      }

      v7 = [v4 typeName];
      v5 = [v7 isEqual:@"Transactions"];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_4;
  }

LABEL_3:
  v5 = 0;
LABEL_4:

LABEL_5:
  return v5;
}

- (id)_historyViewControllerForQuery:(id)a3 groups:(id)a4 headerGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v11 = [v26 associatedAccountServiceAccountIdentifier];
  v12 = [(NSDictionary *)self->_accountsPerIdentifier objectForKey:v11];
  v13 = [(NSDictionary *)self->_accountUserCollectionsPerIdentifier objectForKey:v11];
  v25 = v11;
  v14 = [(NSDictionary *)self->_physicalCardsPerIdentifier objectForKey:v11];
  if ([v8 type] == 7)
  {
    if ([(PKSearchResultsViewController *)self _shouldShowPagedTransactionListForQuery:v8])
    {
      v15 = objc_alloc_init(PKPagedTransactionListDataSource);
      [(PKPagedTransactionListDataSource *)v15 loadTransactionsIfNeeded];
      v16 = [[PKTransactionHistoryViewController alloc] initWithDataSource:v15 transactionGroup:v10 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:v12 accountUserCollection:v13 physicalCards:v14 fetcher:0 detailViewStyle:0];
    }

    else
    {
      v16 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:v10 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:v12 accountUserCollection:v13 physicalCards:v14 fetcher:0 detailViewStyle:0];
    }
  }

  else
  {
    v17 = [PKTransactionHistoryViewController alloc];
    transactionGroupPresenter = self->_transactionGroupPresenter;
    v23 = v17;
    regionUpdater = self->_regionUpdater;
    [v8 tokens];
    v19 = v24 = v8;
    v16 = [(PKTransactionHistoryViewController *)v23 initWithTransactionGroups:v9 headerGroup:v10 groupPresenter:transactionGroupPresenter regionUpdater:regionUpdater tokens:v19 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:v12 accountUserCollection:v13 physicalCards:v14];

    v8 = v24;
  }

  v20 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter avatarManager];
  [(PKTransactionHistoryViewController *)v16 setContactAvatarManager:v20];

  return v16;
}

- (void)_udpateSeeAllViewControllerForQuery:(id)a3 groups:(id)a4 transactionResults:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__PKSearchResultsViewController__udpateSeeAllViewControllerForQuery_groups_transactionResults___block_invoke;
  v12[3] = &unk_1E8019560;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(PKSearchResultsViewController *)self _seeAllHeaderGroupForQuery:v11 groups:v10 transactionResults:a5 completion:v12];
}

void __95__PKSearchResultsViewController__udpateSeeAllViewControllerForQuery_groups_transactionResults___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 1448))
  {
    v8 = v3;
    v4 = [*(a1 + 40) type];
    v5 = *(*(a1 + 32) + 1448);
    if (v4 == 7)
    {
      [v5 updateGroup:v8];
    }

    else
    {
      [v5 updateGroups:*(a1 + 48) headerGroup:v8];
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 1448);
    *(v6 + 1448) = 0;

    v3 = v8;
  }
}

- (void)_udpateSeeAllViewControllerForQuery:(id)a3 orders:(id)a4
{
  v11 = a3;
  seeAllOrderVC = self->_seeAllOrderVC;
  if (seeAllOrderVC)
  {
    v7 = a4;
    [(PKSearchSeeAllViewController *)seeAllOrderVC updateWithItems:v7];

    v8 = self->_seeAllOrderVC;
    self->_seeAllOrderVC = 0;
  }

  else
  {
    v9 = a4;
    v8 = [[PKSearchSeeAllViewController alloc] initWithSearchResultItems:v9 itemPresenter:self->_orderPresenter searchQuery:v11];

    [(PKSearchSeeAllViewController *)v8 setSeeAllViewControllerDelegate:self];
    v10 = [(PKSearchResultsViewController *)self navigationController];
    [v10 pushViewController:v8 animated:1];
  }
}

- (void)_udpateSeeAllViewControllerForQuery:(id)a3 passes:(id)a4
{
  v11 = a3;
  seeAllPassesVC = self->_seeAllPassesVC;
  if (seeAllPassesVC)
  {
    v7 = a4;
    [(PKSearchSeeAllViewController *)seeAllPassesVC updateWithItems:v7];

    v8 = self->_seeAllPassesVC;
    self->_seeAllPassesVC = 0;
  }

  else
  {
    v9 = a4;
    v8 = [[PKSearchSeeAllViewController alloc] initWithSearchResultItems:v9 itemPresenter:self->_passPresenter searchQuery:v11];

    [(PKSearchSeeAllViewController *)v8 setSeeAllViewControllerDelegate:self];
    v10 = [(PKSearchResultsViewController *)self navigationController];
    [v10 pushViewController:v8 animated:1];
  }
}

- (void)_udpateSeeAllViewControllerForQuery:(id)a3 paymentSetupProducts:(id)a4
{
  v12 = a3;
  seeAllPaymentSetupProductsVC = self->_seeAllPaymentSetupProductsVC;
  if (seeAllPaymentSetupProductsVC)
  {
    v7 = a4;
    [(PKSearchSeeAllViewController *)seeAllPaymentSetupProductsVC updateWithItems:v7];

    v8 = self->_seeAllPaymentSetupProductsVC;
    self->_seeAllPaymentSetupProductsVC = 0;
  }

  else
  {
    v9 = a4;
    v8 = objc_alloc_init(PKDashboardPaymentSetupProductPresenter);
    v10 = [[PKSearchSeeAllViewController alloc] initWithSearchResultItems:v9 itemPresenter:v8 searchQuery:v12];

    [(PKSearchSeeAllViewController *)v10 setSeeAllViewControllerDelegate:self];
    [(PKDashboardPaymentSetupProductPresenter *)v8 setDelegate:v10];
    v11 = [(PKSearchResultsViewController *)self navigationController];
    [v11 pushViewController:v10 animated:1];
  }
}

- (void)_udpateSeeAllViewControllerForQuery:(id)a3 pendingPeerPaymentRequests:(id)a4
{
  v11 = a3;
  seeAllPeerPaymentRequestsVC = self->_seeAllPeerPaymentRequestsVC;
  if (seeAllPeerPaymentRequestsVC)
  {
    v7 = a4;
    [(PKSearchSeeAllViewController *)seeAllPeerPaymentRequestsVC updateWithItems:v7];

    v8 = self->_seeAllPeerPaymentRequestsVC;
    self->_seeAllPeerPaymentRequestsVC = 0;
  }

  else
  {
    v9 = a4;
    v8 = [[PKSearchSeeAllViewController alloc] initWithSearchResultItems:v9 itemPresenter:self->_pendingPeerPaymentRequestPresenter searchQuery:v11];

    [(PKSearchSeeAllViewController *)v8 setSeeAllViewControllerDelegate:self];
    v10 = [(PKSearchResultsViewController *)self navigationController];
    [v10 pushViewController:v8 animated:1];
  }
}

- (void)_updateAccountsWithCompletion:(id)a3
{
  v4 = a3;
  accountService = self->_accountService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke;
  v7[3] = &unk_1E8019600;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PKAccountService *)accountService accountsWithCompletion:v7];
}

void __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1160);
  *(v2 + 1160) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1168);
  *(v4 + 1168) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 1176);
  *(v6 + 1176) = 0;

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__23;
  v42 = __Block_byref_object_dispose__23;
  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__23;
  v36[4] = __Block_byref_object_dispose__23;
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__23;
  v34[4] = __Block_byref_object_dispose__23;
  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 40);
  v9 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v9)
  {
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 accountIdentifier];
        [v39[5] setObject:v12 forKey:v13];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_3;
        v27[3] = &unk_1E8012D58;
        v27[4] = *(a1 + 32);
        v14 = v13;
        v28 = v14;
        v29 = v36;
        [v8 addOperation:v27];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_6;
        v24[3] = &unk_1E8012D58;
        v24[4] = *(a1 + 32);
        v15 = v14;
        v25 = v15;
        v26 = v34;
        [v8 addOperation:v24];
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v9);
  }

  v16 = [MEMORY[0x1E695DFB0] null];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_9;
  v19[3] = &unk_1E80195D8;
  v19[4] = *(a1 + 32);
  v21 = &v38;
  v22 = v36;
  v23 = v34;
  v20 = *(a1 + 48);
  v17 = [v8 evaluateWithInput:v16 completion:v19];

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(&v38, 8);
}

void __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_3(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = *(a1[4] + 1136);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_4;
  v12[3] = &unk_1E80195B0;
  v16 = a1[6];
  v14 = v6;
  v15 = v7;
  v13 = v8;
  v10 = v6;
  v11 = v7;
  [v9 accountUsersForAccountWithIdentifier:v13 completion:v12];
}

void __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_5;
  block[3] = &unk_1E8019588;
  v12 = v3;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  *&v8 = v5;
  *(&v8 + 1) = v7;
  *&v9 = v6;
  *(&v9 + 1) = v4;
  v13 = v8;
  v14 = v9;
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_5(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [objc_alloc(MEMORY[0x1E69B8450]) initWithAccountUsers:*(a1 + 32)];
    [*(*(*(a1 + 64) + 8) + 40) setObject:v2 forKey:*(a1 + 40)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_6(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = *(a1[4] + 1136);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_7;
  v12[3] = &unk_1E80195B0;
  v16 = a1[6];
  v14 = v6;
  v15 = v7;
  v13 = v8;
  v10 = v6;
  v11 = v7;
  [v9 physicalCardsForAccountWithIdentifier:v13 completion:v12];
}

void __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_8;
  block[3] = &unk_1E8019588;
  v12 = v3;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  *&v8 = v5;
  *(&v8 + 1) = v7;
  *&v9 = v6;
  *(&v9 + 1) = v4;
  v13 = v8;
  v14 = v9;
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_8(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(*(*(a1 + 64) + 8) + 40) setObject:*(a1 + 32) forKey:*(a1 + 40)];
  }

  v2 = *(*(a1 + 56) + 16);

  return v2();
}

uint64_t __63__PKSearchResultsViewController__updateAccountsWithCompletion___block_invoke_9(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) copy];
  v3 = a1[4];
  v4 = *(v3 + 1160);
  *(v3 + 1160) = v2;

  v5 = [*(*(a1[7] + 8) + 40) copy];
  v6 = a1[4];
  v7 = *(v6 + 1168);
  *(v6 + 1168) = v5;

  v8 = [*(*(a1[8] + 8) + 40) copy];
  v9 = a1[4];
  v10 = *(v9 + 1176);
  *(v9 + 1176) = v8;

  result = a1[5];
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

- (void)didUpdateFamilyMembers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKSearchResultsViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __56__PKSearchResultsViewController_didUpdateFamilyMembers___block_invoke(uint64_t a1)
{
  obj = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 1120), obj);
    v2 = [*(a1 + 40) collectionView];
    [v2 reloadData];
  }
}

- (void)_presentPassWithUniqueIdentifier:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained searchResultsViewController:self didSelectPassWithUniqueIdentifier:v5];
  }
}

- (void)_sharePass:(id)a3
{
  v4 = a3;
  if ([v4 passType] == 1)
  {
    v5 = [v4 secureElementPass];
    v6 = objc_alloc(MEMORY[0x1E69B9268]);
    v7 = [MEMORY[0x1E69B8EF8] sharedService];
    v8 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    v9 = [v6 initWithPass:v5 webService:v7 paymentServiceProvider:v8 queue:MEMORY[0x1E69E96A0]];

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__PKSearchResultsViewController__sharePass___block_invoke;
    v14[3] = &unk_1E8019628;
    v10 = v9;
    v15 = v10;
    objc_copyWeak(&v17, &location);
    v11 = v5;
    v16 = v11;
    [v10 updateEntitlementsWithCompletion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [[PKLinkedApplication alloc] initWithPass:v4];
    v10 = [MEMORY[0x1E69CD9F8] pkui_activityControllerForPass:v4 passView:0 passLinkedApplication:v11];
    if (v10)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__PKSearchResultsViewController__sharePass___block_invoke_3;
      v12[3] = &unk_1E8012528;
      v13 = v4;
      [v10 setCompletionWithItemsHandler:v12];
      [(PKSearchResultsViewController *)self presentViewController:v10 animated:1 completion:0];
    }
  }
}

void __44__PKSearchResultsViewController__sharePass___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PKSearchResultsViewController__sharePass___block_invoke_2;
  v3[3] = &unk_1E8013F58;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 canSendInvitationWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void __44__PKSearchResultsViewController__sharePass___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v8)
    {
      v4 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
      v5 = WeakRetained;
      v6 = v4;
      v7 = 1;
    }

    else
    {
      v4 = [[PKShareSecureElementPassViewController alloc] initWithSecureElementPass:*(a1 + 32) environment:0 isFromPeopleScreen:0 delegate:0];
      [(PKShareSecureElementPassViewController *)v4 setModalPresentationStyle:5];
      v7 = [(PKShareSecureElementPassViewController *)v4 shouldViewControllerBeAnimatedIn];
      v5 = WeakRetained;
      v6 = v4;
    }

    [v5 presentViewController:v6 animated:v7 completion:0];
  }
}

void __44__PKSearchResultsViewController__sharePass___block_invoke_3(uint64_t a1, void *a2, int a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) noteShared];
    v6 = *MEMORY[0x1E69B9EE0];
    v8 = @"activity";
    v9[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    MEMORY[0x1BFB41980](v6, v7);
  }

  else
  {
    MEMORY[0x1BFB41980](*MEMORY[0x1E69B9EE8], 0);
  }
}

- (void)dashboardPaymentSetupProductPresenter:(id)a3 actionButtonPressedOnCellAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = (self->_presentationCounter + 1);
  self->_presentationCounter = v8;
  objc_initWeak(&location, self);
  v9 = [v7 row];
  if (v9 < [(NSArray *)self->_paymentSetupProducts count])
  {
    v10 = [(NSArray *)self->_paymentSetupProducts objectAtIndex:v9];
    if (v10)
    {
      v11 = [(PKSearchResultsViewController *)self collectionView];
      v12 = [(PKSearchResultsViewController *)self navigationController];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __108__PKSearchResultsViewController_dashboardPaymentSetupProductPresenter_actionButtonPressedOnCellAtIndexPath___block_invoke;
      v13[3] = &unk_1E8013C18;
      objc_copyWeak(v14, &location);
      v14[1] = v8;
      [v6 performActionForItem:v10 inCollectionView:v11 atIndexPath:v7 navigationController:v12 canPresent:v13];

      objc_destroyWeak(v14);
    }
  }

  objc_destroyWeak(&location);
}

BOOL __108__PKSearchResultsViewController_dashboardPaymentSetupProductPresenter_actionButtonPressedOnCellAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[180] == *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v3 = [(PKSearchResultsViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_saveSearchHistoryString:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v5 = PKSearchSelectedItemTitles();
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v9 = v8;

    v10 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    v11 = [v10 uniqueID];
    v12 = v11;
    v13 = @"SearchHistoryWalletDomain";
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = [v9 objectForKeyedSubscript:v14];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v16 addObject:v4];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v24 + 1) + 8 * i);
            if (([v4 isEqualToString:{v22, v24}] & 1) == 0)
            {
              [v16 safelyAddObject:v22];
              goto LABEL_20;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }

    else
    {
      v29[0] = v4;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    }

    [v9 setObject:v16 forKey:{v14, v24}];

    v23 = [v9 copy];
    PKSearchSetSelectedItemTitles();
  }
}

- (id)_fetchSearchHistoryResults
{
  v3 = PKSearchSelectedItemTitles();
  v4 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  v5 = [v4 uniqueID];
  v6 = v5;
  v7 = @"SearchHistoryWalletDomain";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v3 objectForKeyedSubscript:v8];

  v10 = [v9 pk_arrayByApplyingBlock:&__block_literal_global_402];

  return v10;
}

id __59__PKSearchResultsViewController__fetchSearchHistoryResults__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69B91A0];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  [v4 setSearchHistory:v3];

  return v4;
}

- (unint64_t)_topHitHeaderSection
{
  if (self->_usingThumbnailLayout)
  {
    return 19;
  }

  if ([(NSArray *)self->_topHitPaymentPasses count])
  {
    return 3;
  }

  if ([(NSArray *)self->_topHitBarcodePasses count])
  {
    return 4;
  }

  if ([(NSArray *)self->_topHitKeysAndIDs count])
  {
    return 5;
  }

  if ([(NSArray *)self->_topHitAccountItems count])
  {
    return 6;
  }

  return 19;
}

- (unint64_t)_relevantItemsSection
{
  if (!self->_usingThumbnailLayout)
  {
    return 19;
  }

  if ([(NSArray *)self->_pendingPeerPaymentRequests count])
  {
    return 2;
  }

  if ([(NSArray *)self->_barcodePasses count])
  {
    return 8;
  }

  if ([(NSArray *)self->_transactions count])
  {
    return 11;
  }

  else
  {
    return 19;
  }
}

- (void)_pendingRequestActionButtonPressedWithRequest:(id)a3 forPresentationCounter:(unint64_t)a4
{
  v6 = a3;
  if (self->_hasActivePeerPaymentRequestAction)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_debug_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEBUG, "Pending peer payment request action in progress, ignoring new actions", buf, 2u);
    }
  }

  else
  {
    [(PKSearchResultsViewController *)self _setHasActivePeerPaymentRequestAction:1];
    v8 = [(PKSearchResultsViewController *)self _searchController];
    v9 = [v8 searchBar];
    [v9 resignFirstResponder];

    v10 = objc_alloc(MEMORY[0x1E69B8F28]);
    v11 = [MEMORY[0x1E69B9020] sharedService];
    v7 = [v10 initWithPeerPaymentWebService:v11];

    v12 = [PKPeerPaymentRemoteMessagesComposer alloc];
    v13 = [(PKSearchResultsViewController *)self navigationController];
    v14 = [(PKPeerPaymentRemoteMessagesComposer *)v12 initWithPeerPaymentController:v7 presentingViewController:v13 actionType:1 sourceType:1];

    objc_initWeak(buf, self);
    v15 = [v6 requesterAddress];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__PKSearchResultsViewController__pendingRequestActionButtonPressedWithRequest_forPresentationCounter___block_invoke;
    v17[3] = &unk_1E8019670;
    objc_copyWeak(v20, buf);
    v20[1] = a4;
    v18 = v6;
    v16 = v14;
    v19 = v16;
    [(PKPeerPaymentRemoteMessagesComposer *)v16 validateRecipientWithAddress:v15 completion:v17];

    objc_destroyWeak(v20);
    objc_destroyWeak(buf);
  }
}

void __102__PKSearchResultsViewController__pendingRequestActionButtonPressedWithRequest_forPresentationCounter___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 && WeakRetained[180] == *(a1 + 56))
    {
      v6 = objc_alloc(MEMORY[0x1E69B8FF0]);
      v7 = [*(a1 + 32) requestToken];
      v8 = [v6 initWithRequestToken:v7 deviceScoreIdentifier:0 expiryDate:0];

      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) currencyAmount];
      v11 = [*(a1 + 32) memo];
      v12 = [*(a1 + 32) sessionID];
      v13 = [v5 navigationController];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __102__PKSearchResultsViewController__pendingRequestActionButtonPressedWithRequest_forPresentationCounter___block_invoke_2;
      v14[3] = &unk_1E80113B0;
      objc_copyWeak(&v16, (a1 + 48));
      v15 = *(a1 + 40);
      [v9 presentRemoteMessageComposerWithAmount:v10 requestToken:v8 memo:v11 sessionID:v12 overViewController:v13 completion:v14];

      objc_destroyWeak(&v16);
    }

    else
    {
      [WeakRetained _setHasActivePeerPaymentRequestAction:0];
    }
  }
}

void __102__PKSearchResultsViewController__pendingRequestActionButtonPressedWithRequest_forPresentationCounter___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained navigationController];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __102__PKSearchResultsViewController__pendingRequestActionButtonPressedWithRequest_forPresentationCounter___block_invoke_3;
    v4[3] = &unk_1E8010970;
    v4[4] = v2;
    [v3 dismissViewControllerAnimated:1 completion:v4];
  }
}

- (void)_setHasActivePeerPaymentRequestAction:(BOOL)a3
{
  if (self->_hasActivePeerPaymentRequestAction != a3)
  {
    v11 = v3;
    v12 = v4;
    self->_hasActivePeerPaymentRequestAction = a3;
    pendingPeerPaymentRequests = self->_pendingPeerPaymentRequests;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__PKSearchResultsViewController__setHasActivePeerPaymentRequestAction___block_invoke;
    v9[3] = &__block_descriptor_33_e39_v32__0__PKDashboardBalanceItem_8Q16_B24l;
    v10 = a3;
    [(NSArray *)pendingPeerPaymentRequests enumerateObjectsUsingBlock:v9];
    v7 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:2];
    v8 = [(PKSearchResultsViewController *)self collectionView];
    [v8 reloadSections:v7];
  }
}

- (id)_searchTokenForTransactionSourceCollection:(id)a3
{
  v4 = [a3 paymentPass];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"creditcard"];
    v6 = MEMORY[0x1E69DCF30];
    v7 = [v4 localizedDescription];
    v8 = [v6 tokenWithIcon:v5 text:v7];

    [v8 setRepresentedObject:self->_transactionSourceCollection];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_balanceItemsFromPendingPeerPaymentRquests:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__PKSearchResultsViewController__balanceItemsFromPendingPeerPaymentRquests___block_invoke;
  v5[3] = &unk_1E80196B8;
  v5[4] = self;
  v3 = [a3 pk_arrayBySafelyApplyingBlock:v5];

  return v3;
}

PKDashboardBalanceItem *__76__PKSearchResultsViewController__balanceItemsFromPendingPeerPaymentRquests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pendingRequest];
  v5 = [v4 currencyAmount];
  v6 = [v5 amount];
  v7 = [v5 currency];
  v8 = PKFormattedCurrencyStringFromNumber();

  v9 = [*(*(a1 + 32) + 1096) contactResolver];
  v10 = [v4 requesterAddress];
  v11 = [v9 contactForHandle:v10];

  v12 = MEMORY[0x1E69B8F30];
  v13 = [v4 requesterAddress];
  v14 = [v12 displayNameForCounterpartHandle:v13 contact:v11];

  v15 = 0;
  if (v8 && v14)
  {
    v15 = objc_alloc_init(PKDashboardBalanceItem);
    [(PKDashboardBalanceItem *)v15 setBalance:v8];
    v16 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_0.isa, &stru_1F3BD5BF0.isa, v14);
    [(PKDashboardBalanceItem *)v15 setTitle:v16];

    v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBub_0.isa);
    [(PKDashboardBalanceItem *)v15 setTopUpTitle:v17];

    objc_initWeak(&location, *(a1 + 32));
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__PKSearchResultsViewController__balanceItemsFromPendingPeerPaymentRquests___block_invoke_2;
    v19[3] = &unk_1E80110E0;
    objc_copyWeak(&v21, &location);
    v20 = v4;
    [(PKDashboardBalanceItem *)v15 setTopUpAction:v19];
    [(PKDashboardBalanceItem *)v15 setTopUpEnabled:1];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __76__PKSearchResultsViewController__balanceItemsFromPendingPeerPaymentRquests___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pendingRequestActionButtonPressedWithRequest:*(a1 + 32) forPresentationCounter:WeakRetained[180]];
}

- (id)_passItemsFromPassResults:(id)a3 isInExpiredSection:(BOOL)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__PKSearchResultsViewController__passItemsFromPassResults_isInExpiredSection___block_invoke;
  v6[3] = &unk_1E80196E0;
  v6[4] = self;
  v7 = a4;
  v4 = [a3 pk_arrayBySafelyApplyingBlock:v6];

  return v4;
}

PKDashboardPassItem *__78__PKSearchResultsViewController__passItemsFromPassResults_isInExpiredSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 passUniqueIdentifier];
  v5 = [*(a1 + 32) _fetchPassForUniqueIdentifierIfNeeded:v4];
  if (v5)
  {
    v6 = objc_alloc_init(PKDashboardPassItem);
    [(PKDashboardPassItem *)v6 setPass:v5];
    v7 = [v3 thumbnailData];
    [(PKDashboardPassItem *)v6 setThumbnailData:v7];

    v8 = [v3 displayName];
    [(PKDashboardPassItem *)v6 setDisplayName:v8];

    v9 = [v3 contentDescription];
    [(PKDashboardPassItem *)v6 setContentDescription:v9];

    v10 = [v3 groupPassUniqueIdentifiers];
    -[PKDashboardPassItem setGroupPassCount:](v6, "setGroupPassCount:", [v10 count]);

    [(PKDashboardPassItem *)v6 setIsInExpiredSection:*(a1 + 40)];
    [*(*(a1 + 32) + 1424) setObject:v5 forKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PKSearchResultsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end