@interface PKTransactionHistoryViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (PKTransactionHistoryViewController)initWithDataSource:(id)source transactionGroup:(id)group transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards fetcher:(id)self0 detailViewStyle:(int64_t)self1;
- (PKTransactionHistoryViewController)initWithFetcher:(id)fetcher transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards featuredTransaction:(id)transaction selectedTransactions:(id)self0;
- (PKTransactionHistoryViewController)initWithInstallmentPlan:(id)plan transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards;
- (PKTransactionHistoryViewController)initWithTransactionGroup:(id)group transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards fetcher:(id)fetcher detailViewStyle:(int64_t)self0;
- (PKTransactionHistoryViewController)initWithTransactionGroups:(id)groups headerGroup:(id)group groupPresenter:(id)presenter regionUpdater:(id)updater tokens:(id)tokens transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)self0 accountUserCollection:(id)self1 physicalCards:(id)self2;
- (id)_barButtonItems;
- (id)_createActivityDeletionConfirmationWithCompletion:(id)completion;
- (id)_initWithDataSource:(id)source presenters:(id)presenters layout:(id)layout headerPresenter:(id)presenter;
- (id)_selectedText;
- (id)_toolbarItems;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view layout:(id)layout trailingSwipeActionsConfigurationForItemAtIndexPath:(id)path;
- (id)group;
- (void)_handleEditButtonTapped:(id)tapped;
- (void)_handleInfoButtonTapped;
- (void)_handleMessageButtonTapped;
- (void)_handlePhoneButtonTapped;
- (void)_handleSelectButtonTapped:(id)tapped;
- (void)_showContactDetailsViewController;
- (void)_showMapsDetailsViewController;
- (void)_updateHeaderCellWithAnimationProgress:(id)progress;
- (void)_updateNavigationBar;
- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)appeared;
- (void)_updateNavigationBarIconWithLogoURL:(id)l;
- (void)_updateTitle;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)deleteItemsAtIndexPaths:(id)paths;
- (void)didMoveToParentViewController:(id)controller;
- (void)performCollectionViewDataReload;
- (void)setContactAvatarManager:(id)manager;
- (void)setEditing:(BOOL)editing;
- (void)transactionHistoryUpdated;
- (void)updateContent;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateGroup:(id)group;
- (void)updateGroups:(id)groups headerGroup:(id)group;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation PKTransactionHistoryViewController

- (id)_initWithDataSource:(id)source presenters:(id)presenters layout:(id)layout headerPresenter:(id)presenter
{
  sourceCopy = source;
  layoutCopy = layout;
  presenterCopy = presenter;
  v23.receiver = self;
  v23.super_class = PKTransactionHistoryViewController;
  v13 = [(PKDashboardViewController *)&v23 initWithDataSource:sourceCopy presenters:presenters layout:layoutCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_layout, layout);
    v14->_hideTopPocket = [layoutCopy useStickyHeader];
    [sourceCopy setCustomDelegate:v14];
    headerIndexPath = [sourceCopy headerIndexPath];
    headerIndexPath = v14->_headerIndexPath;
    v14->_headerIndexPath = headerIndexPath;

    objc_storeStrong(&v14->_headerPresenter, presenter);
    navigationItem = [(PKTransactionHistoryViewController *)v14 navigationItem];
    _barButtonItems = [(PKTransactionHistoryViewController *)v14 _barButtonItems];
    [navigationItem setRightBarButtonItems:_barButtonItems];

    standardAppearance = [navigationItem standardAppearance];
    backgroundEffect = [standardAppearance backgroundEffect];
    [presenterCopy setOverlayEffect:backgroundEffect];

    shadowColor = [standardAppearance shadowColor];
    [presenterCopy setShadowColor:shadowColor];
  }

  return v14;
}

- (PKTransactionHistoryViewController)initWithFetcher:(id)fetcher transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards featuredTransaction:(id)transaction selectedTransactions:(id)self0
{
  v41[6] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  familyCollectionCopy2 = familyCollection;
  transactionCopy = transaction;
  transactionsCopy = transactions;
  cardsCopy = cards;
  userCollectionCopy = userCollection;
  accountCopy = account;
  fetcherCopy = fetcher;
  type = [fetcherCopy type];
  v22 = 0;
  v23 = 0;
  if (type <= 6)
  {
    if (((1 << type) & 0x59) != 0)
    {
      v23 = 0;
      v22 = 2;
    }

    else if (type == 1)
    {
      v23 = 1;
      v22 = 1;
    }

    else if (type == 5)
    {
      v23 = 0;
      v22 = 3;
    }
  }

  v37 = [[PKTransactionHistoryDefaultDataSource alloc] initWithFetcher:fetcherCopy transactionSourceCollection:collectionCopy familyCollection:familyCollectionCopy2 account:accountCopy accountUserCollection:userCollectionCopy physicalCards:cardsCopy featuredTransaction:transactionCopy selectedTransactions:transactionsCopy type:v22];

  v24 = objc_alloc_init(PKDashboardDetailHeaderItemPresenter);
  v25 = [[PKDashboardPaymentTransactionItemPresenter alloc] initWithContext:1 detailViewStyle:0 avatarViewDelegate:self];
  v26 = objc_alloc_init(PKDashboardMapItemPresenter);
  v27 = objc_alloc_init(PKDashboardTextActionItemPresenter);
  v28 = objc_alloc_init(PKDashboardTransactionInstallmentItemPresenter);
  v29 = objc_alloc_init(PKDashboardTransactionReceiptItemPresenter);
  v30 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  v31 = v30;
  if (v23)
  {
    [(PKHeaderVerticalScrollingLayout *)v30 setUseStickyHeader:1];
  }

  v41[0] = v24;
  v41[1] = v25;
  v41[2] = v26;
  v41[3] = v27;
  v41[4] = v28;
  v41[5] = v29;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:6];
  v33 = [(PKTransactionHistoryViewController *)self _initWithDataSource:v37 presenters:v32 layout:v31 headerPresenter:v24];

  if (v33)
  {
    objc_storeStrong(&v33->_transaction, transaction);
    objc_storeStrong(&v33->_transactionSourceCollection, collection);
    objc_storeStrong(&v33->_familyCollection, familyCollectionCopy);
    v33->_historyType = v22;
  }

  return v33;
}

- (PKTransactionHistoryViewController)initWithTransactionGroup:(id)group transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards fetcher:(id)fetcher detailViewStyle:(int64_t)self0
{
  fetcherCopy = fetcher;
  cardsCopy = cards;
  userCollectionCopy = userCollection;
  accountCopy = account;
  familyCollectionCopy = familyCollection;
  collectionCopy = collection;
  groupCopy = group;
  v24 = [[PKTransactionHistoryDefaultDataSource alloc] initWithTransactionGroup:groupCopy transactionSourceCollection:collectionCopy familyCollection:familyCollectionCopy account:accountCopy accountUserCollection:userCollectionCopy physicalCards:cardsCopy fetcher:fetcherCopy];
  v25 = [(PKTransactionHistoryViewController *)self initWithDataSource:v24 transactionGroup:groupCopy transactionSourceCollection:collectionCopy familyCollection:familyCollectionCopy account:accountCopy accountUserCollection:userCollectionCopy physicalCards:cardsCopy fetcher:fetcherCopy detailViewStyle:style];

  return v25;
}

- (PKTransactionHistoryViewController)initWithDataSource:(id)source transactionGroup:(id)group transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards fetcher:(id)self0 detailViewStyle:(int64_t)self1
{
  v32[3] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  sourceCopy = source;
  type = [groupCopy type];
  if ((type - 4) > 5)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_1BE1164F8[type - 4];
  }

  v17 = [[PKDashboardPaymentTransactionItemPresenter alloc] initWithContext:v16 detailViewStyle:style avatarViewDelegate:self];
  v18 = objc_alloc_init(PKDashboardDetailHeaderItemPresenter);
  v19 = objc_alloc_init(PKTransactionGroupItemPresenter);
  v20 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  if ([groupCopy type] == 14)
  {
    v31 = sourceCopy;
    searchQuery = [groupCopy searchQuery];
    tokens = [searchQuery tokens];
    v23 = [tokens count];

    searchQuery2 = [groupCopy searchQuery];
    displayNameToken = [searchQuery2 displayNameToken];
    merchant = [displayNameToken merchant];

    if (v23 == 1 && merchant)
    {
      [(PKHeaderVerticalScrollingLayout *)v20 setUseStickyHeader:1];
    }

    sourceCopy = v31;
  }

  else
  {
    merchant = 0;
  }

  type2 = [groupCopy type];
  if (type2 != 9 && type2 != 7)
  {
    if (type2 != 2)
    {
      goto LABEL_15;
    }

    self->_wantsLoadingConfiguration = 1;
  }

  [(PKHeaderVerticalScrollingLayout *)v20 setTitleInset:?];
LABEL_15:
  v32[0] = v18;
  v32[1] = v17;
  v32[2] = v19;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v29 = [(PKTransactionHistoryViewController *)self _initWithDataSource:sourceCopy presenters:v28 layout:v20 headerPresenter:v18];

  if (v29)
  {
    v29->_historyType = 2;
  }

  return v29;
}

- (PKTransactionHistoryViewController)initWithInstallmentPlan:(id)plan transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards
{
  v32[4] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  obj = familyCollection;
  familyCollectionCopy = familyCollection;
  cardsCopy = cards;
  userCollectionCopy = userCollection;
  accountCopy = account;
  planCopy = plan;
  v31 = collectionCopy;
  v21 = [[PKTransactionHistoryDefaultDataSource alloc] initWithInstallmentPlan:planCopy transactionSourceCollection:collectionCopy familyCollection:familyCollectionCopy account:accountCopy accountUserCollection:userCollectionCopy physicalCards:cardsCopy];

  v22 = objc_alloc_init(PKDashboardDetailHeaderItemPresenter);
  v23 = [[PKDashboardPaymentTransactionItemPresenter alloc] initWithContext:1 detailViewStyle:0 avatarViewDelegate:self];
  v24 = objc_alloc_init(PKDashboardInstallmentPlanStatusItemPresenter);
  v25 = objc_alloc_init(PKDashboardTextActionItemPresenter);
  v26 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  v32[0] = v22;
  v32[1] = v24;
  v32[2] = v23;
  v32[3] = v25;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  v28 = [(PKTransactionHistoryViewController *)self _initWithDataSource:v21 presenters:v27 layout:v26 headerPresenter:v22];

  if (v28)
  {
    v28->_historyType = 3;
    objc_storeStrong(&v28->_transactionSourceCollection, collection);
    objc_storeStrong(&v28->_familyCollection, obj);
  }

  return v28;
}

- (PKTransactionHistoryViewController)initWithTransactionGroups:(id)groups headerGroup:(id)group groupPresenter:(id)presenter regionUpdater:(id)updater tokens:(id)tokens transactionSourceCollection:(id)collection familyCollection:(id)familyCollection account:(id)self0 accountUserCollection:(id)self1 physicalCards:(id)self2
{
  v42[2] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  presenterCopy = presenter;
  familyCollectionCopy = familyCollection;
  cardsCopy = cards;
  userCollectionCopy = userCollection;
  accountCopy = account;
  collectionCopy = collection;
  tokensCopy = tokens;
  updaterCopy = updater;
  groupsCopy = groups;
  v26 = [PKTransactionHistoryDefaultDataSource initWithTransactionGroups:"initWithTransactionGroups:headerGroup:regionUpdater:tokens:transactionSourceCollection:familyCollection:account:accountUserCollection:physicalCards:" headerGroup:groupsCopy regionUpdater:accountCopy tokens:userCollectionCopy transactionSourceCollection:cardsCopy familyCollection:? account:? accountUserCollection:? physicalCards:?];

  v27 = objc_alloc_init(PKDashboardDetailHeaderItemPresenter);
  snapshotManager = [presenterCopy snapshotManager];
  [(PKDashboardDetailHeaderItemPresenter *)v27 setSnapshotManager:snapshotManager];

  avatarManager = [presenterCopy avatarManager];
  [(PKDashboardDetailHeaderItemPresenter *)v27 setAvatarManager:avatarManager];

  v30 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  if ([groupCopy type] == 14)
  {
    searchQuery = [groupCopy searchQuery];
    tokens = [searchQuery tokens];
    v33 = [tokens count];

    searchQuery2 = [groupCopy searchQuery];
    displayNameToken = [searchQuery2 displayNameToken];
    merchant = [displayNameToken merchant];

    if (v33 == 1 && merchant)
    {
      [(PKHeaderVerticalScrollingLayout *)v30 setUseStickyHeader:1];
    }
  }

  else
  {
    merchant = 0;
  }

  v42[0] = v27;
  v42[1] = presenterCopy;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v38 = [(PKTransactionHistoryViewController *)self _initWithDataSource:v26 presenters:v37 layout:v30 headerPresenter:v27];

  if (v38)
  {
    v38->_historyType = 4;
    objc_storeStrong(&v38->_familyCollection, familyCollection);
  }

  return v38;
}

- (void)dealloc
{
  loadingMapsTimer = self->_loadingMapsTimer;
  if (loadingMapsTimer)
  {
    dispatch_source_cancel(loadingMapsTimer);
    v4 = self->_loadingMapsTimer;
    self->_loadingMapsTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = PKTransactionHistoryViewController;
  [(PKDashboardViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKTransactionHistoryViewController;
  [(PKDashboardViewController *)&v9 viewDidLoad];
  view = [(PKTransactionHistoryViewController *)self view];
  collectionView = [(PKTransactionHistoryViewController *)self collectionView];
  v5 = +[PKDashboardViewController backgroundColor];
  [view setBackgroundColor:v5];
  navigationItem = [(PKTransactionHistoryViewController *)self navigationItem];
  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  if ([_dataSource useLargeTitle])
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [navigationItem setLargeTitleDisplayMode:v8];
  [collectionView setAllowsMultipleSelectionDuringEditing:1];
  [(PKTransactionHistoryViewController *)self _updateTitle];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9D50]];
}

- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)appeared
{
  appearedCopy = appeared;
  titleIconImageView = self->_titleIconImageView;
  if (titleIconImageView)
  {
    titleView = self->_titleView;
    if (appearedCopy)
    {
      if (!titleView)
      {
        navigationController = [(PKTransactionHistoryViewController *)self navigationController];
        navigationBar = [navigationController navigationBar];
        [navigationBar frame];
        v10 = v9;

        v11 = [[PKAnimatedNavigationBarTitleView alloc] initWithFrame:0.0, 0.0, v10, v10];
        v12 = self->_titleView;
        self->_titleView = v11;

        [(PKAnimatedNavigationBarTitleView *)self->_titleView setMaxWidth:33.0];
        navigationItem = [(PKTransactionHistoryViewController *)self navigationItem];
        [navigationItem pkui_setCenterAlignedTitleView:self->_titleView];

        titleView = self->_titleView;
        titleIconImageView = self->_titleIconImageView;
      }
    }

    else
    {
      titleIconImageView = 0;
    }

    [(PKAnimatedNavigationBarTitleView *)titleView setTitleView:titleIconImageView animated:1];
  }

  else if (self->_titleText)
  {
    navigationItem2 = [(PKTransactionHistoryViewController *)self navigationItem];
    v16 = navigationItem2;
    if (appearedCopy)
    {
      titleText = self->_titleText;
    }

    else
    {
      titleText = 0;
    }

    [navigationItem2 _setTitle:titleText animated:1];
  }
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  if (self->_wantsLoadingConfiguration && !self->_timerLoadingConfiguration)
  {
    if (self->_contentIsLoaded)
    {
      self->_wantsLoadingConfiguration = 0;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __86__PKTransactionHistoryViewController_updateContentUnavailableConfigurationUsingState___block_invoke;
      v6[3] = &unk_1E8010970;
      v6[4] = self;
      [MEMORY[0x1E69DD250] pkui_animateUsingOptions:0 animations:v6 completion:0];
    }

    else
    {
      loadingConfiguration = [MEMORY[0x1E69DC8C8] loadingConfiguration];
      [(PKTransactionHistoryViewController *)self setContentUnavailableConfiguration:loadingConfiguration];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v16.receiver = self;
  v16.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v16 viewWillAppear:?];
  [(PKDashboardViewController *)self shouldPresentAllContent:1 animated:appearCopy];
  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  if ([_dataSource useLargeTitle])
  {
    navigationController = [(PKTransactionHistoryViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setPrefersLargeTitles:1];
  }

  [_dataSource loadTransactionsIfNeeded];
  if (self->_wantsLoadingConfiguration && !self->_timerLoadingConfiguration)
  {
    v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    timerLoadingConfiguration = self->_timerLoadingConfiguration;
    self->_timerLoadingConfiguration = v8;

    v10 = self->_timerLoadingConfiguration;
    v11 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
    v12 = self->_timerLoadingConfiguration;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __53__PKTransactionHistoryViewController_viewWillAppear___block_invoke;
    handler[3] = &unk_1E8010970;
    handler[4] = self;
    dispatch_source_set_event_handler(v12, handler);
    v13 = self->_timerLoadingConfiguration;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__PKTransactionHistoryViewController_viewWillAppear___block_invoke_2;
    v14[3] = &unk_1E8010970;
    v14[4] = self;
    dispatch_source_set_cancel_handler(v13, v14);
    dispatch_resume(self->_timerLoadingConfiguration);
  }
}

uint64_t __53__PKTransactionHistoryViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1352);
  *(v2 + 1352) = 0;

  v4 = *(a1 + 32);

  return [v4 setNeedsUpdateContentUnavailableConfiguration];
}

void __53__PKTransactionHistoryViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1352);
  *(v1 + 1352) = 0;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v5 viewDidDisappear:disappear];
  if ([(PKTransactionHistoryViewController *)self shouldPromptForReview])
  {
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    [WeakRetained promptAppStoreReviewForTrigger:2];
  }
}

- (void)viewWillLayoutSubviews
{
  v43.receiver = self;
  v43.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v43 viewWillLayoutSubviews];
  collectionView = [(PKTransactionHistoryViewController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;
  [collectionView safeAreaInsets];
  v8 = v7;
  v9 = MEMORY[0x1E69DDCE0];
  if (self->_footer)
  {
    v10 = v6;
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer bounds];
    v12 = v11 - v10;
  }

  else
  {
    v12 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  v13 = *v9;
  v14 = v9[1];
  v15 = v9[3];
  useStickyHeader = [(PKHeaderVerticalScrollingLayout *)self->_layout useStickyHeader];
  v17 = v13;
  if (useStickyHeader)
  {
    v17 = self->_headerHeight - v8;
    [collectionView pkui_naturalRestingBounds];
    v19 = v5 - v18;
    v20 = v17 - (v5 - v18);
    if (v19 < 0.0)
    {
      v17 = v20;
    }
  }

  [collectionView verticalScrollIndicatorInsets];
  if (v24 != v14 || v21 != v17 || v23 != v15 || v22 != v12)
  {
    [collectionView setVerticalScrollIndicatorInsets:{v17, v14, v12, v15}];
  }

  [collectionView contentInset];
  if (v31 != v14 || v28 != v13 || v30 != v15 || v29 != v12)
  {
    [collectionView setContentInset:{v13, v14, v12, v15}];
  }

  headerHeight = self->_headerHeight;
  merchantHeaderAnimationProgress = self->_merchantHeaderAnimationProgress;
  if (headerHeight <= 0.0)
  {
    self->_merchantHeaderAnimationProgress = 0.0;
    v38 = 0.0;
  }

  else
  {
    if (useStickyHeader)
    {
      v37 = v8;
    }

    else
    {
      v37 = 0.0;
    }

    v38 = fmin(fmax((v5 + v8) / (headerHeight - v37), 0.0), 1.0);
    self->_merchantHeaderAnimationProgress = v38;
    if (merchantHeaderAnimationProgress < 1.0 && v38 >= 1.0)
    {
      v39 = 1;
LABEL_43:
      [(PKTransactionHistoryViewController *)self _updateNavigationBarIconForNavigationBarAppeared:v39];
      goto LABEL_44;
    }
  }

  if (merchantHeaderAnimationProgress >= 1.0 && v38 < 1.0)
  {
    v39 = 0;
    goto LABEL_43;
  }

LABEL_44:
  if (self->_headerIndexPath)
  {
    collectionView2 = [(PKTransactionHistoryViewController *)self collectionView];
    v42 = [collectionView2 cellForItemAtIndexPath:self->_headerIndexPath];

    if (v42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PKTransactionHistoryViewController *)self _updateHeaderCellWithAnimationProgress:v42];
      }
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v17 viewDidLayoutSubviews];
  view = [(PKTransactionHistoryViewController *)self view];
  [view bounds];
  if (self->_footerContainer)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    [view safeAreaInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    if (_UISolariumEnabled())
    {
      v13 = 0.0;
    }

    if (_UISolariumEnabled())
    {
      v8 = v8 - v11 - v15;
    }

    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer sizeThatFits:v8, v9];
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setFrame:v11, v7 + v9 - (v13 + v16), v8];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    objc_storeWeak(&self->_navigationController, 0);
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v6 didMoveToParentViewController:controller];
  navigationController = [(PKTransactionHistoryViewController *)self navigationController];
  if (navigationController && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = navigationController;
    objc_storeWeak(&self->_navigationController, v5);
    if (self->_hideTopPocketDirty)
    {
      self->_hideTopPocketDirty = 0;
      [v5 setNeedsNavigationBarUpdate];
    }
  }

  else
  {
    objc_storeWeak(&self->_navigationController, 0);
  }
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  v16.receiver = self;
  v16.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v16 setEditing:editing animated:1];
  navigationItem = [(PKTransactionHistoryViewController *)self navigationItem];
  _barButtonItems = [(PKTransactionHistoryViewController *)self _barButtonItems];
  [navigationItem setRightBarButtonItems:_barButtonItems];

  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKTransactionHistoryViewController *)self _updateTitle];
  }

  if (editingCopy)
  {
    collectionView = [(PKTransactionHistoryViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v9 = [indexPathsForSelectedItems count];

    if (v9)
    {
      v10 = @"TRANSACTION_HISTORY_DESELECT_ALL";
    }

    else
    {
      v10 = @"TRANSACTION_HISTORY_SELECT_ALL";
    }

    v11 = PKLocalizedPaymentString(&v10->isa);
    navigationItem3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v11 style:0 target:self action:sel__handleSelectButtonTapped_];
    [navigationItem3 setAccessibilityIdentifier:*MEMORY[0x1E69B9BF8]];
    navigationItem2 = [(PKTransactionHistoryViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:navigationItem3 animated:1];

    _toolbarItems = [(PKTransactionHistoryViewController *)self _toolbarItems];
    [(PKTransactionHistoryViewController *)self setToolbarItems:_toolbarItems];
  }

  else
  {
    navigationItem3 = [(PKTransactionHistoryViewController *)self navigationItem];
    [navigationItem3 setLeftBarButtonItem:0 animated:0];
  }

  navigationController = [(PKTransactionHistoryViewController *)self navigationController];
  [navigationController setToolbarHidden:!editingCopy animated:1];
}

- (void)updateGroup:(id)group
{
  groupCopy = group;
  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  [_dataSource updateGroup:groupCopy];
}

- (id)group
{
  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  group = [_dataSource group];

  return group;
}

- (void)updateGroups:(id)groups headerGroup:(id)group
{
  groupCopy = group;
  groupsCopy = groups;
  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  [_dataSource updateGroups:groupsCopy headerGroup:groupCopy];
}

- (void)setContactAvatarManager:(id)manager
{
  managerCopy = manager;
  if (self->_contactAvatarManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_contactAvatarManager, manager);
    [(PKDashboardDetailHeaderItemPresenter *)self->_headerPresenter setAvatarManager:v6];
    managerCopy = v6;
  }
}

- (void)updateContent
{
  v43.receiver = self;
  v43.super_class = PKTransactionHistoryViewController;
  [(PKDashboardViewController *)&v43 updateContent];
  navigationItem = [(PKTransactionHistoryViewController *)self navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];
  _barButtonItems = [(PKTransactionHistoryViewController *)self _barButtonItems];
  if ((PKEqualObjects() & 1) == 0)
  {
    [navigationItem setRightBarButtonItems:_barButtonItems animated:1];
  }

  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  [(PKTransactionHistoryViewController *)self _updateTitle];
  footerTitle = [_dataSource footerTitle];
  footerTotal = [_dataSource footerTotal];
  v9 = footerTotal;
  if (footerTitle && footerTotal)
  {
    footer = self->_footer;
    if (!footer)
    {
      v11 = [PKDashboardViewControllerFooterView alloc];
      v12 = *MEMORY[0x1E695F058];
      v13 = *(MEMORY[0x1E695F058] + 8);
      v14 = *(MEMORY[0x1E695F058] + 16);
      v15 = *(MEMORY[0x1E695F058] + 24);
      v16 = [(PKDashboardViewControllerFooterView *)v11 initWithFrame:*MEMORY[0x1E695F058], v13, v14, v15];
      v17 = self->_footer;
      self->_footer = v16;

      if (_UISolariumEnabled())
      {
        v18 = objc_alloc(MEMORY[0x1E69DD6C8]);
        collectionView = [(PKTransactionHistoryViewController *)self collectionView];
        v20 = [v18 initWithScrollView:collectionView edge:4 style:1];

        [(PKDashboardViewControllerFooterView *)self->_footer addInteraction:v20];
      }

      v21 = [[PKDashboardViewControllerFooterContainer alloc] initWithFrame:v12, v13, v14, v15];
      footerContainer = self->_footerContainer;
      self->_footerContainer = v21;

      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:self->_footer];
      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setAlpha:0.0];
      view = [(PKTransactionHistoryViewController *)self view];
      [view addSubview:self->_footerContainer];

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __51__PKTransactionHistoryViewController_updateContent__block_invoke;
      v42[3] = &unk_1E8010970;
      v42[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v42 animations:0.1];
      footer = self->_footer;
    }

    leadingTitle = [(PKDashboardViewControllerFooterView *)footer leadingTitle];
    [leadingTitle setText:footerTitle];

    amount = [v9 amount];
    pk_isNegativeNumber = [amount pk_isNegativeNumber];

    if (pk_isNegativeNumber)
    {
      negativeValue = [v9 negativeValue];

      leadingDetail = [(PKDashboardViewControllerFooterView *)self->_footer leadingDetail];
      formattedStringValue = [negativeValue formattedStringValue];
      v30 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);
      [leadingDetail setText:v30];

      v9 = negativeValue;
    }

    else
    {
      leadingDetail = [(PKDashboardViewControllerFooterView *)self->_footer leadingDetail];
      formattedStringValue = [v9 formattedStringValue];
      [leadingDetail setText:formattedStringValue];
    }

    footerSecondaryTitle = [_dataSource footerSecondaryTitle];
    footerSecondaryTotal = [_dataSource footerSecondaryTotal];
    v33 = footerSecondaryTotal;
    if (footerSecondaryTitle && footerSecondaryTotal)
    {
      v41 = navigationItem;
      trailingTitle = [(PKDashboardViewControllerFooterView *)self->_footer trailingTitle];
      [trailingTitle setText:footerSecondaryTitle];

      amount2 = [v33 amount];
      pk_isNegativeNumber2 = [amount2 pk_isNegativeNumber];

      if (pk_isNegativeNumber2)
      {
        negativeValue2 = [v33 negativeValue];

        trailingDetail = [(PKDashboardViewControllerFooterView *)self->_footer trailingDetail];
        formattedStringValue2 = [negativeValue2 formattedStringValue];
        v39 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue2);
        [trailingDetail setText:v39];

        v33 = negativeValue2;
      }

      else
      {
        trailingDetail = [(PKDashboardViewControllerFooterView *)self->_footer trailingDetail];
        formattedStringValue2 = [v33 formattedStringValue];
        [trailingDetail setText:formattedStringValue2];
      }

      navigationItem = v41;
    }

    [(PKDashboardViewControllerFooterView *)self->_footer setNeedsLayout];
  }

  else
  {
    [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:0];
  }
}

- (void)performCollectionViewDataReload
{
  v14[1] = *MEMORY[0x1E69E9840];
  collectionView = [(PKTransactionHistoryViewController *)self collectionView];
  if ([collectionView numberOfItemsInSection:0] != 1)
  {

    goto LABEL_5;
  }

  dataSource = [(PKDashboardViewController *)self dataSource];
  v5 = [dataSource numberOfItemsInSection:0];

  if (v5 != 1)
  {
LABEL_5:
    collectionView2 = [(PKTransactionHistoryViewController *)self collectionView];
    numberOfSections = [collectionView2 numberOfSections];

    v7 = 0;
    goto LABEL_6;
  }

  collectionView3 = [(PKTransactionHistoryViewController *)self collectionView];
  v14[0] = self->_headerIndexPath;
  v7 = 1;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [collectionView3 reconfigureItemsAtIndexPaths:v8];

  collectionView4 = [(PKTransactionHistoryViewController *)self collectionView];
  numberOfSections = [collectionView4 numberOfSections] - 1;

LABEL_6:
  collectionView5 = [(PKTransactionHistoryViewController *)self collectionView];
  v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7, numberOfSections}];
  [collectionView5 reloadSections:v13];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = PKTransactionHistoryViewController;
  [(PKDashboardViewController *)&v16 collectionView:view layout:layout sizeForItemAtIndexPath:pathCopy];
  v10 = v9;
  v12 = v11;
  if (self->_headerIndexPath && [pathCopy isEqual:?] && self->_headerHeight != v12)
  {
    self->_headerHeight = v12;
    view = [(PKTransactionHistoryViewController *)self view];
    [view setNeedsLayout];
  }

  v14 = v10;
  v15 = v12;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = PKTransactionHistoryViewController;
  v7 = [(PKDashboardViewController *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  if (self->_headerIndexPath)
  {
    if ([pathCopy isEqual:?])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PKTransactionHistoryViewController *)self _updateHeaderCellWithAnimationProgress:v7];
      }
    }
  }

  return v7;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([viewCopy isEditing])
  {
    dataSource = [(PKDashboardViewController *)self dataSource];
    v9 = [dataSource itemAtIndexPath:pathCopy];

    dataSource2 = [(PKDashboardViewController *)self dataSource];
    v11 = [dataSource2 canDeleteItem:v9];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PKTransactionHistoryViewController;
    v11 = [(PKDashboardViewController *)&v13 collectionView:viewCopy shouldSelectItemAtIndexPath:pathCopy];
  }

  return v11;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = PKTransactionHistoryViewController;
  viewCopy = view;
  [(PKDashboardViewController *)&v8 collectionView:viewCopy didSelectItemAtIndexPath:path];
  LODWORD(path) = [viewCopy isEditing];

  if (path)
  {
    _toolbarItems = [(PKTransactionHistoryViewController *)self _toolbarItems];
    [(PKTransactionHistoryViewController *)self setToolbarItems:_toolbarItems];

    [(PKTransactionHistoryViewController *)self _updateNavigationBar];
    if (_UISolariumFeatureFlagEnabled())
    {
      [(PKTransactionHistoryViewController *)self _updateTitle];
    }
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  if ([view isEditing])
  {
    _toolbarItems = [(PKTransactionHistoryViewController *)self _toolbarItems];
    [(PKTransactionHistoryViewController *)self setToolbarItems:_toolbarItems];

    [(PKTransactionHistoryViewController *)self _updateNavigationBar];
    if (_UISolariumFeatureFlagEnabled())
    {

      [(PKTransactionHistoryViewController *)self _updateTitle];
    }
  }
}

- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v4 = [(PKTransactionHistoryViewController *)self _dataSource:view];
  areTransactionsEditable = [v4 areTransactionsEditable];

  return areTransactionsEditable;
}

- (id)collectionView:(id)view layout:(id)layout trailingSwipeActionsConfigurationForItemAtIndexPath:(id)path
{
  v27[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  layoutCopy = layout;
  pathCopy = path;
  dataSource = [(PKDashboardViewController *)self dataSource];
  v12 = [dataSource itemAtIndexPath:pathCopy];
  if ([dataSource canDeleteItem:v12])
  {
    v13 = PKLocalizedString(&cfstr_DashboardTrail.isa);
    objc_initWeak(&location, self);
    v14 = MEMORY[0x1E69DC8E8];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __112__PKTransactionHistoryViewController_collectionView_layout_trailingSwipeActionsConfigurationForItemAtIndexPath___block_invoke;
    v21[3] = &unk_1E8020548;
    objc_copyWeak(&v25, &location);
    v22 = v12;
    v23 = viewCopy;
    v24 = pathCopy;
    v15 = [v14 contextualActionWithStyle:1 title:v13 handler:v21];
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    [v15 setImage:v16];

    v17 = MEMORY[0x1E69DCFC0];
    v27[0] = v15;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v19 = [v17 configurationWithActions:v18];

    [v19 setPerformsFirstActionWithFullSwipe:0];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void __112__PKTransactionHistoryViewController_collectionView_layout_trailingSwipeActionsConfigurationForItemAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __112__PKTransactionHistoryViewController_collectionView_layout_trailingSwipeActionsConfigurationForItemAtIndexPath___block_invoke_2;
    v11[3] = &unk_1E8019A98;
    v11[4] = WeakRetained;
    v12 = *(a1 + 32);
    v13 = v5;
    v8 = [v7 _createActivityDeletionConfirmationWithCompletion:v11];
    v9 = [*(a1 + 40) cellForItemAtIndexPath:*(a1 + 48)];
    v10 = [v8 popoverPresentationController];
    [v10 setSourceView:v9];

    [v7 presentViewController:v8 animated:1 completion:0];
  }
}

void __112__PKTransactionHistoryViewController_collectionView_layout_trailingSwipeActionsConfigurationForItemAtIndexPath___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) dataSource];
    [v4 deleteItem:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

- (void)_updateHeaderCellWithAnimationProgress:(id)progress
{
  progressCopy = progress;
  useStickyHeader = [(PKHeaderVerticalScrollingLayout *)self->_layout useStickyHeader];
  [progressCopy setOverlayAlpha:self->_merchantHeaderAnimationProgress];
  if (useStickyHeader)
  {
    if (self->_merchantHeaderAnimationProgress >= 1.0)
    {
      [progressCopy setOverlayAlpha:0.0];
    }

    collectionView = [(PKTransactionHistoryViewController *)self collectionView];
    collectionView2 = collectionView;
    if (self->_headerHeight > 0.0)
    {
      [collectionView contentOffset];
      v8 = v7;
      [collectionView2 safeAreaInsets];
      v10 = v9;
      [progressCopy topLabelWithRespectTo:collectionView2];
      v12 = v8 <= v11 - v10;
      goto LABEL_8;
    }
  }

  else
  {
    collectionView2 = [(PKTransactionHistoryViewController *)self collectionView];
  }

  v12 = 0;
LABEL_8:
  if ([collectionView2 _hiddenPocketEdges] != v12)
  {
    [collectionView2 _setHiddenPocketEdges:v12];
  }

  if (self->_hideTopPocket != v12)
  {
    self->_hideTopPocket = v12;
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    v14 = WeakRetained;
    if (WeakRetained)
    {
      self->_hideTopPocketDirty = 0;
      [WeakRetained setNeedsNavigationBarUpdate];
    }

    else
    {
      self->_hideTopPocketDirty = 1;
    }
  }
}

- (void)_updateNavigationBarIconWithLogoURL:(id)l
{
  if (l)
  {
    v4 = MEMORY[0x1E69B8A08];
    lCopy = l;
    sharedImageAssetDownloader = [v4 sharedImageAssetDownloader];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKTransactionHistoryViewController__updateNavigationBarIconWithLogoURL___block_invoke;
    v7[3] = &unk_1E8020570;
    v7[4] = self;
    [sharedImageAssetDownloader downloadFromUrl:lCopy completionHandler:v7];
  }
}

void __74__PKTransactionHistoryViewController__updateNavigationBarIconWithLogoURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && !a4)
  {
    v5 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
    v6 = v5;
    if (v5)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __74__PKTransactionHistoryViewController__updateNavigationBarIconWithLogoURL___block_invoke_2;
      v7[3] = &unk_1E8010A10;
      v7[4] = *(a1 + 32);
      v8 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }
}

- (void)_updateNavigationBar
{
  navigationItem = [(PKTransactionHistoryViewController *)self navigationItem];
  _barButtonItems = [(PKTransactionHistoryViewController *)self _barButtonItems];
  [navigationItem setRightBarButtonItems:_barButtonItems];

  collectionView = [(PKTransactionHistoryViewController *)self collectionView];
  LODWORD(_barButtonItems) = [collectionView isEditing];

  if (_barButtonItems)
  {
    collectionView2 = [(PKTransactionHistoryViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
    v8 = [indexPathsForSelectedItems count];

    navigationItem2 = [(PKTransactionHistoryViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];
    if (v8)
    {
      v10 = @"TRANSACTION_HISTORY_DESELECT_ALL";
    }

    else
    {
      v10 = @"TRANSACTION_HISTORY_SELECT_ALL";
    }

    v11 = PKLocalizedPaymentString(&v10->isa);
    [leftBarButtonItem setTitle:v11];
  }
}

- (void)deleteItemsAtIndexPaths:(id)paths
{
  v8.receiver = self;
  v8.super_class = PKTransactionHistoryViewController;
  [(PKDashboardViewController *)&v8 deleteItemsAtIndexPaths:paths];
  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  transactionHistoryItemsCount = [_dataSource transactionHistoryItemsCount];

  if (!transactionHistoryItemsCount)
  {
    navigationController = [(PKTransactionHistoryViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_popViewController];
    }

    else
    {
      v7 = [navigationController popViewControllerAnimated:1];
    }
  }
}

- (void)transactionHistoryUpdated
{
  timerLoadingConfiguration = self->_timerLoadingConfiguration;
  if (timerLoadingConfiguration)
  {
    dispatch_source_cancel(timerLoadingConfiguration);
  }

  self->_contentIsLoaded = 1;
  [(PKTransactionHistoryViewController *)self setNeedsUpdateContentUnavailableConfiguration];

  [(PKTransactionHistoryViewController *)self _updateNavigationBar];
}

- (id)_createActivityDeletionConfirmationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v4 = PKLocalizedIdentityString(&cfstr_TransactionDel.isa);
    v5 = PKLocalizedIdentityString(&cfstr_TransactionDel_0.isa);
    v6 = PKLocalizedIdentityString(&cfstr_TransactionDel_1.isa);
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v4 message:0 preferredStyle:0];
    v8 = MEMORY[0x1E69DC648];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __88__PKTransactionHistoryViewController__createActivityDeletionConfirmationWithCompletion___block_invoke;
    v19[3] = &unk_1E8011248;
    v9 = completionCopy;
    v20 = v9;
    v10 = [v8 actionWithTitle:v5 style:2 handler:v19];
    [v7 addAction:v10];

    v11 = MEMORY[0x1E69DC648];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __88__PKTransactionHistoryViewController__createActivityDeletionConfirmationWithCompletion___block_invoke_2;
    v17 = &unk_1E8011248;
    v18 = v9;
    v12 = [v11 actionWithTitle:v6 style:1 handler:&v14];
    [v7 addAction:{v12, v14, v15, v16, v17}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor
{
  hideTopPocket = self->_hideTopPocket;
  v3 = 0;
  result.var1 = v3;
  result.var0 = hideTopPocket;
  return result;
}

- (void)_updateTitle
{
  navigationItem = [(PKTransactionHistoryViewController *)self navigationItem];
  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  type = [_dataSource type];
  if (type == 4 || type == 2)
  {
    group = [_dataSource group];
    merchant2 = group;
    if (!group)
    {
      logoImageURL2 = 0;
      v6 = 0;
      goto LABEL_27;
    }

    type2 = [group type];
    logoImageURL2 = 0;
    if (type2 > 6)
    {
      switch(type2)
      {
        case 7:
          transactions = [merchant2 transactions];
          firstObject = [transactions firstObject];
          accountType = [firstObject accountType];

          v15 = PKPassKitUIBundle();
          merchant = v15;
          if (accountType == 3)
          {
            v16 = @"SAVINGS_Interest";
          }

          else
          {
            v16 = @"InterestIcon";
          }

          break;
        case 9:
          v15 = PKPassKitUIBundle();
          merchant = v15;
          v16 = @"AppleCardIcon";
          break;
        case 14:
LABEL_10:
          merchant = [_dataSource merchant];
          if (!merchant)
          {
            v6 = 0;
LABEL_25:

            goto LABEL_26;
          }

          PKUIScreenScale();
          v6 = PKMapsIconForMerchant();
          logoImageURL = [merchant logoImageURL];
          [(PKTransactionHistoryViewController *)self _updateNavigationBarIconWithLogoURL:logoImageURL];
LABEL_24:

          goto LABEL_25;
        default:
LABEL_16:
          v6 = 0;
          goto LABEL_27;
      }

      logoImageURL = [v15 URLForResource:v16 withExtension:@"pdf"];
      v17 = PKUIScreenScale();
      v6 = PKUIImageFromPDF(logoImageURL, 33.0, 33.0, v17);
      goto LABEL_24;
    }

    if (!type2)
    {
      [merchant2 merchantCategory];
      PKUIScreenScale();
      v6 = PKMapsIconForMerchantCategory();
LABEL_26:
      logoImageURL2 = 0;
      goto LABEL_27;
    }

    if (type2 == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (type == 1)
  {
    merchant2 = [_dataSource merchant];
    PKUIScreenScale();
    v6 = PKMapsIconForMerchant();
    logoImageURL2 = [merchant2 logoImageURL];
LABEL_27:

    goto LABEL_28;
  }

  logoImageURL2 = 0;
  v6 = 0;
LABEL_28:
  useLargeTitle = [_dataSource useLargeTitle];
  navigationBarTitle = [_dataSource navigationBarTitle];
  if (_UISolariumFeatureFlagEnabled())
  {
    collectionView = [(PKTransactionHistoryViewController *)self collectionView];
    isEditing = [collectionView isEditing];

    if (isEditing)
    {
      _selectedText = [(PKTransactionHistoryViewController *)self _selectedText];

      navigationBarTitle = _selectedText;
    }
  }

  [navigationItem setBackButtonTitle:navigationBarTitle];
  [navigationItem setBackButtonDisplayMode:1];
  if (v6)
  {
    v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    titleIconImageView = self->_titleIconImageView;
    self->_titleIconImageView = v23;

    [(UIImageView *)self->_titleIconImageView setContentMode:1];
    [(UIImageView *)self->_titleIconImageView _setContinuousCornerRadius:3.0];
    [(UIImageView *)self->_titleIconImageView setClipsToBounds:1];
    [(PKTransactionHistoryViewController *)self _updateNavigationBarIconWithLogoURL:logoImageURL2];
  }

  else if (useLargeTitle)
  {
    [navigationItem setTitle:navigationBarTitle];
  }

  else
  {
    objc_storeStrong(&self->_titleText, navigationBarTitle);
  }
}

- (id)_barButtonItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  merchant = [_dataSource merchant];
  v6 = merchant;
  historyType = self->_historyType;
  if (historyType - 1 < 2)
  {
    goto LABEL_4;
  }

  if (historyType)
  {
    if (historyType != 4)
    {
      objc_initWeak(&location, self);
      goto LABEL_35;
    }

LABEL_4:
    if (!merchant)
    {
      areTransactionsEditable = [_dataSource areTransactionsEditable];
      objc_initWeak(&location, self);
      if ((areTransactionsEditable & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    if ([merchant shouldIgnoreMapsMatches])
    {
      v8 = 0;
    }

    else
    {
      mapsMerchant = [v6 mapsMerchant];
      v8 = mapsMerchant != 0;
    }

    phoneNumber = [v6 phoneNumber];
    v11 = phoneNumber != 0;

    businessChatURL = [v6 businessChatURL];
    v12 = businessChatURL != 0;

    areTransactionsEditable2 = [_dataSource areTransactionsEditable];
    objc_initWeak(&location, self);
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  contact = [_dataSource contact];

  objc_initWeak(&location, self);
  if (!contact)
  {
    goto LABEL_35;
  }

  v11 = 0;
  v12 = 0;
  areTransactionsEditable2 = 0;
LABEL_14:
  if (self->_loadingMapsViewController)
  {
    v17 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v17 startAnimating];
    v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v17];
    [v3 addObject:v18];

    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  detailsButton = self->_detailsButton;
  if (!detailsButton)
  {
    v20 = areTransactionsEditable2;
    v49 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info"];
    v21 = MEMORY[0x1E69DC628];
    v22 = PKLocalizedString(&cfstr_More.isa);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __53__PKTransactionHistoryViewController__barButtonItems__block_invoke;
    v55[3] = &unk_1E8010A60;
    objc_copyWeak(&v56, &location);
    v23 = [v21 actionWithTitle:v22 image:v49 identifier:0 handler:v55];

    v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v23];
    v25 = self->_detailsButton;
    self->_detailsButton = v24;

    [(UIBarButtonItem *)self->_detailsButton setAccessibilityIdentifier:*MEMORY[0x1E69B9880]];
    objc_destroyWeak(&v56);

    detailsButton = self->_detailsButton;
    areTransactionsEditable2 = v20;
  }

  [v3 addObject:detailsButton];
LABEL_20:
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_21:
  phoneButton = self->_phoneButton;
  if (!phoneButton)
  {
    v50 = areTransactionsEditable2;
    v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone.fill"];
    v28 = MEMORY[0x1E69DC628];
    v29 = PKLocalizedPaymentString(&cfstr_Call.isa);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __53__PKTransactionHistoryViewController__barButtonItems__block_invoke_2;
    v53[3] = &unk_1E8010A60;
    objc_copyWeak(&v54, &location);
    v30 = [v28 actionWithTitle:v29 image:v27 identifier:0 handler:v53];

    v31 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v30];
    v32 = self->_phoneButton;
    self->_phoneButton = v31;

    [(UIBarButtonItem *)self->_phoneButton setAccessibilityIdentifier:*MEMORY[0x1E69B9A98]];
    objc_destroyWeak(&v54);

    phoneButton = self->_phoneButton;
    areTransactionsEditable2 = v50;
  }

  [v3 addObject:phoneButton];
LABEL_24:
  if (v12)
  {
    messageButton = self->_messageButton;
    if (!messageButton)
    {
      v34 = areTransactionsEditable2;
      v35 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message.fill"];
      v36 = MEMORY[0x1E69DC628];
      v37 = PKLocalizedPaymentString(&cfstr_Message.isa);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __53__PKTransactionHistoryViewController__barButtonItems__block_invoke_3;
      v51[3] = &unk_1E8010A60;
      objc_copyWeak(&v52, &location);
      v38 = [v36 actionWithTitle:v37 image:v35 identifier:0 handler:v51];

      v39 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v38];
      v40 = self->_messageButton;
      self->_messageButton = v39;

      [(UIBarButtonItem *)self->_messageButton setAccessibilityIdentifier:*MEMORY[0x1E69B9958]];
      objc_destroyWeak(&v52);

      messageButton = self->_messageButton;
      areTransactionsEditable2 = v34;
    }

    [v3 addObject:messageButton];
  }

  if (areTransactionsEditable2)
  {
LABEL_29:
    if ([v3 count] >= 3)
    {
      v41 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 primaryAction:0];
      [v41 setWidth:15.0];
      [v3 addObject:v41];
    }

    collectionView = [(PKTransactionHistoryViewController *)self collectionView];
    isEditing = [collectionView isEditing];

    v44 = objc_alloc(MEMORY[0x1E69DC708]);
    if (isEditing)
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }

    v46 = [v44 initWithBarButtonSystemItem:v45 target:self action:sel__handleEditButtonTapped_];
    [v3 addObject:v46];
  }

LABEL_35:
  v47 = [v3 copy];
  objc_destroyWeak(&location);

  return v47;
}

void __53__PKTransactionHistoryViewController__barButtonItems__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInfoButtonTapped];
}

void __53__PKTransactionHistoryViewController__barButtonItems__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePhoneButtonTapped];
}

void __53__PKTransactionHistoryViewController__barButtonItems__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMessageButtonTapped];
}

- (id)_selectedText
{
  collectionView = [(PKTransactionHistoryViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v4 = [indexPathsForSelectedItems count];

  return PKLocalizedPaymentString(&cfstr_TransactionHis_2.isa, &cfstr_Lu.isa, v4);
}

- (id)_toolbarItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 menu:0];
  [v3 addObject:v4];
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 menu:0];
  [v3 addObject:v5];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC628];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __51__PKTransactionHistoryViewController__toolbarItems__block_invoke;
  v17 = &unk_1E8010A60;
  objc_copyWeak(&v18, &location);
  v7 = [v6 actionWithHandler:&v14];
  v8 = objc_alloc(MEMORY[0x1E69DC708]);
  v9 = [v8 initWithBarButtonSystemItem:16 primaryAction:{v7, v14, v15, v16, v17}];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  collectionView = [(PKTransactionHistoryViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  [v9 setEnabled:{objc_msgSend(indexPathsForSelectedItems, "count") != 0}];

  [v3 addObject:v9];
  v12 = [v3 copy];

  return v12;
}

void __51__PKTransactionHistoryViewController__toolbarItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__PKTransactionHistoryViewController__toolbarItems__block_invoke_2;
    v9[3] = &unk_1E8011D28;
    v9[4] = WeakRetained;
    v6 = [WeakRetained _createActivityDeletionConfirmationWithCompletion:v9];
    v7 = [v6 popoverPresentationController];
    v8 = [v3 sender];
    [v7 setSourceItem:v8];

    [v5 presentViewController:v6 animated:1 completion:0];
  }
}

void __51__PKTransactionHistoryViewController__toolbarItems__block_invoke_2(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(a1 + 32) dataSource];
    v4 = [*(a1 + 32) actualIndexPathsForSelectedItems];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v3 itemAtIndexPath:{*(*(&v12 + 1) + 8 * v10), v12}];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [v3 deleteItems:v5];
    [*(a1 + 32) setEditing:0];
  }
}

- (void)_handleInfoButtonTapped
{
  historyType = self->_historyType;
  if (historyType - 1 < 2)
  {
LABEL_4:
    [(PKTransactionHistoryViewController *)self _showMapsDetailsViewController];
    return;
  }

  if (historyType)
  {
    if (historyType != 4)
    {
      return;
    }

    goto LABEL_4;
  }

  [(PKTransactionHistoryViewController *)self _showContactDetailsViewController];
}

- (void)_handleMessageButtonTapped
{
  if (PKStoreDemoModeEnabled())
  {
    v10 = PKUIStoreDemoGatewayViewController();
    [(PKTransactionHistoryViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
    historyType = self->_historyType;
    v5 = historyType > 4;
    v6 = (1 << historyType) & 0x16;
    if (v5 || v6 == 0)
    {
      goto LABEL_11;
    }

    v10 = _dataSource;
    merchant = [_dataSource merchant];
    businessChatURL = [merchant businessChatURL];

    if (businessChatURL)
    {
      PKOpenURL();
    }
  }

  _dataSource = v10;
LABEL_11:
}

- (void)_handlePhoneButtonTapped
{
  if (!PKStoreDemoModeEnabled())
  {
    _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
    v4 = _dataSource;
    historyType = self->_historyType;
    if (historyType - 1 < 2)
    {
      goto LABEL_8;
    }

    if (!historyType)
    {
      contact = [_dataSource contact];
      phoneNumbers = [contact phoneNumbers];
      firstObject = [phoneNumbers firstObject];
      value = [firstObject value];

      if (value)
      {
        stringValue = [value stringValue];
        v17 = PKTelephoneURLFromPhoneNumber();

        PKOpenURL();
      }

      goto LABEL_17;
    }

    if (historyType == 4)
    {
LABEL_8:
      merchant = [_dataSource merchant];
      phoneNumber = [merchant phoneNumber];

      if (phoneNumber)
      {
        merchant2 = [v4 merchant];
        useDisplayNameIgnoringBrand = [merchant2 useDisplayNameIgnoringBrand];

        merchant3 = [v4 merchant];
        v11 = merchant3;
        if (useDisplayNameIgnoringBrand)
        {
          [merchant3 displayNameIgnoringBrand];
        }

        else
        {
          [merchant3 displayName];
        }
        v18 = ;

        v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:phoneNumber message:v18 preferredStyle:0];
        popoverPresentationController = [v19 popoverPresentationController];
        [popoverPresentationController setSourceItem:self->_phoneButton];

        v21 = PKLocalizedString(&cfstr_Call.isa);
        v22 = MEMORY[0x1E69DC648];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __62__PKTransactionHistoryViewController__handlePhoneButtonTapped__block_invoke;
        v25[3] = &unk_1E80112E8;
        v26 = phoneNumber;
        v23 = [v22 actionWithTitle:v21 style:0 handler:v25];
        [v19 addAction:v23];
        [v19 setPreferredAction:v23];
        [(PKTransactionHistoryViewController *)self presentViewController:v19 animated:1 completion:0];
      }
    }

LABEL_17:

    return;
  }

  v24 = PKUIStoreDemoGatewayViewController();
  [(PKTransactionHistoryViewController *)self presentViewController:v24 animated:1 completion:0];
}

void __62__PKTransactionHistoryViewController__handlePhoneButtonTapped__block_invoke()
{
  v0 = PKTelephoneURLFromPhoneNumber();
  PKOpenURL();
}

- (void)_handleEditButtonTapped:(id)tapped
{
  collectionView = [(PKTransactionHistoryViewController *)self collectionView];
  isEditing = [collectionView isEditing];

  [(PKTransactionHistoryViewController *)self setEditing:isEditing ^ 1u];
}

- (void)_handleSelectButtonTapped:(id)tapped
{
  v36 = *MEMORY[0x1E69E9840];
  collectionView = [(PKTransactionHistoryViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v6 = [indexPathsForSelectedItems count];

  if (v6)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    collectionView2 = [(PKTransactionHistoryViewController *)self collectionView];
    indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];

    v9 = [indexPathsForSelectedItems2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        v12 = 0;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(indexPathsForSelectedItems2);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          collectionView3 = [(PKTransactionHistoryViewController *)self collectionView];
          [collectionView3 deselectItemAtIndexPath:v13 animated:0];

          ++v12;
        }

        while (v10 != v12);
        v10 = [indexPathsForSelectedItems2 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }
  }

  else
  {
    collectionView4 = [(PKTransactionHistoryViewController *)self collectionView];
    numberOfSections = [collectionView4 numberOfSections];

    if (numberOfSections >= 1)
    {
      v17 = 0;
      do
      {
        collectionView5 = [(PKTransactionHistoryViewController *)self collectionView];
        v19 = [collectionView5 numberOfItemsInSection:v17];

        if (v19 >= 1)
        {
          v20 = 0;
          do
          {
            collectionView6 = [(PKTransactionHistoryViewController *)self collectionView];
            v22 = [MEMORY[0x1E696AC88] indexPathForRow:v20 inSection:v17];
            v23 = [(PKTransactionHistoryViewController *)self collectionView:collectionView6 shouldSelectItemAtIndexPath:v22];

            if (v23)
            {
              collectionView7 = [(PKTransactionHistoryViewController *)self collectionView];
              v25 = [MEMORY[0x1E696AC88] indexPathForRow:v20 inSection:v17];
              [collectionView7 selectItemAtIndexPath:v25 animated:0 scrollPosition:0];
            }

            ++v20;
            collectionView8 = [(PKTransactionHistoryViewController *)self collectionView];
            v27 = [collectionView8 numberOfItemsInSection:v17];
          }

          while (v20 < v27);
        }

        ++v17;
        collectionView9 = [(PKTransactionHistoryViewController *)self collectionView];
        numberOfSections2 = [collectionView9 numberOfSections];
      }

      while (v17 < numberOfSections2);
    }
  }

  [(PKTransactionHistoryViewController *)self _updateNavigationBar];
  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKTransactionHistoryViewController *)self _updateTitle];
  }

  _toolbarItems = [(PKTransactionHistoryViewController *)self _toolbarItems];
  [(PKTransactionHistoryViewController *)self setToolbarItems:_toolbarItems];
}

- (void)_showContactDetailsViewController
{
  _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
  CNContactViewControllerClass = getCNContactViewControllerClass();
  contact = [_dataSource contact];
  v5 = [(objc_class *)CNContactViewControllerClass viewControllerForContact:contact];

  [v5 setAllowsEditing:0];
  navigationItem = [v5 navigationItem];
  v7 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v7 configureWithTransparentBackground];
  [navigationItem setStandardAppearance:v7];
  if (v5)
  {
    navigationController = [(PKTransactionHistoryViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v5];
    }

    else
    {
      [navigationController pushViewController:v5 animated:1];
    }
  }
}

- (void)_showMapsDetailsViewController
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!self->_loadingMapsViewController)
  {
    _dataSource = [(PKTransactionHistoryViewController *)self _dataSource];
    merchant = [_dataSource merchant];
    mapsMerchant = [merchant mapsMerchant];
    identifier = [mapsMerchant identifier];

    if (identifier)
    {
      self->_loadingMapsViewController = 1;
      navigationItem = [(PKTransactionHistoryViewController *)self navigationItem];
      _barButtonItems = [(PKTransactionHistoryViewController *)self _barButtonItems];
      [navigationItem setRightBarButtonItems:_barButtonItems];

      loadingMapsTimer = self->_loadingMapsTimer;
      if (loadingMapsTimer)
      {
        dispatch_source_cancel(loadingMapsTimer);
        v10 = self->_loadingMapsTimer;
        self->_loadingMapsTimer = 0;
      }

      objc_initWeak(&location, self);
      v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v12 = self->_loadingMapsTimer;
      self->_loadingMapsTimer = v11;

      v13 = self->_loadingMapsTimer;
      v14 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      v15 = self->_loadingMapsTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __68__PKTransactionHistoryViewController__showMapsDetailsViewController__block_invoke;
      handler[3] = &unk_1E8010998;
      objc_copyWeak(&v23, &location);
      dispatch_source_set_event_handler(v15, handler);
      dispatch_resume(self->_loadingMapsTimer);
      v16 = objc_alloc_init(MEMORY[0x1E696F260]);
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:identifier];
      v25[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      [v16 _setMuids:v18];

      v19 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v16];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__PKTransactionHistoryViewController__showMapsDetailsViewController__block_invoke_2;
      v20[3] = &unk_1E8016120;
      objc_copyWeak(v21, &location);
      v21[1] = identifier;
      [v19 startWithCompletionHandler:v20];
      objc_destroyWeak(v21);

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

void __68__PKTransactionHistoryViewController__showMapsDetailsViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[155];
    if (v3)
    {
      v5 = v2;
      dispatch_source_cancel(v3);
      v4 = v5[155];
      v5[155] = 0;

      v2 = v5;
    }
  }
}

void __68__PKTransactionHistoryViewController__showMapsDetailsViewController__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__PKTransactionHistoryViewController__showMapsDetailsViewController__block_invoke_3;
  v9[3] = &unk_1E80160F8;
  objc_copyWeak(v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v12[1] = *(a1 + 40);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(v12);
}

void __68__PKTransactionHistoryViewController__showMapsDetailsViewController__block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[155];
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = v3[155];
      v3[155] = 0;
    }

    *(v3 + 1234) = 0;
    v6 = [v3 navigationItem];
    v7 = [v3 _barButtonItems];
    [v6 setRightBarButtonItems:v7];

    if (*(a1 + 32) || ([*(a1 + 40) mapItems], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, !v13))
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 56);
        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = [v10 localizedDescription];
        }

        else
        {
          v11 = @"no map items.";
        }

        v24 = 134218242;
        v25 = v9;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKTransactionHistoryViewController: MKLocalSearch could not resolve merchant maps for mapsID: %llu. Error: %@", &v24, 0x16u);
        if (v10)
        {
        }
      }

      v19 = MEMORY[0x1E69DC650];
      v20 = PKLocalizedPaymentString(&cfstr_DashboardMapsM.isa);
      v17 = [v19 alertControllerWithTitle:0 message:v20 preferredStyle:1];

      v21 = MEMORY[0x1E69DC648];
      v22 = PKLocalizedPaymentString(&cfstr_DashboardMapsM_0.isa);
      v23 = [v21 actionWithTitle:v22 style:0 handler:0];
      [(PKMerchantMapViewController *)v17 addAction:v23];

      [v3 presentViewController:v17 animated:1 completion:0];
    }

    else
    {
      v14 = [PKMerchantMapViewController alloc];
      v15 = [*(a1 + 40) mapItems];
      v16 = [v15 firstObject];
      v17 = [(PKMerchantMapViewController *)v14 initWithMapItem:v16 configOptions:0x2000000000000];

      v18 = [v3 navigationController];
      if ([v18 pk_settings_useStateDrivenNavigation])
      {
        [v18 pk_settings_pushViewController:v17];
      }

      else
      {
        [v18 pushViewController:v17 animated:1];
      }
    }
  }
}

@end