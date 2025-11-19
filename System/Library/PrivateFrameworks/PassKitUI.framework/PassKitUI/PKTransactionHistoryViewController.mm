@interface PKTransactionHistoryViewController
- ($85E40A55691FE2F31975A98F57E3065D)pkui_navigationStatusBarStyleDescriptor;
- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PKTransactionHistoryViewController)initWithDataSource:(id)a3 transactionGroup:(id)a4 transactionSourceCollection:(id)a5 familyCollection:(id)a6 account:(id)a7 accountUserCollection:(id)a8 physicalCards:(id)a9 fetcher:(id)a10 detailViewStyle:(int64_t)a11;
- (PKTransactionHistoryViewController)initWithFetcher:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 featuredTransaction:(id)a9 selectedTransactions:(id)a10;
- (PKTransactionHistoryViewController)initWithInstallmentPlan:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8;
- (PKTransactionHistoryViewController)initWithTransactionGroup:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 fetcher:(id)a9 detailViewStyle:(int64_t)a10;
- (PKTransactionHistoryViewController)initWithTransactionGroups:(id)a3 headerGroup:(id)a4 groupPresenter:(id)a5 regionUpdater:(id)a6 tokens:(id)a7 transactionSourceCollection:(id)a8 familyCollection:(id)a9 account:(id)a10 accountUserCollection:(id)a11 physicalCards:(id)a12;
- (id)_barButtonItems;
- (id)_createActivityDeletionConfirmationWithCompletion:(id)a3;
- (id)_initWithDataSource:(id)a3 presenters:(id)a4 layout:(id)a5 headerPresenter:(id)a6;
- (id)_selectedText;
- (id)_toolbarItems;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 layout:(id)a4 trailingSwipeActionsConfigurationForItemAtIndexPath:(id)a5;
- (id)group;
- (void)_handleEditButtonTapped:(id)a3;
- (void)_handleInfoButtonTapped;
- (void)_handleMessageButtonTapped;
- (void)_handlePhoneButtonTapped;
- (void)_handleSelectButtonTapped:(id)a3;
- (void)_showContactDetailsViewController;
- (void)_showMapsDetailsViewController;
- (void)_updateHeaderCellWithAnimationProgress:(id)a3;
- (void)_updateNavigationBar;
- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)a3;
- (void)_updateNavigationBarIconWithLogoURL:(id)a3;
- (void)_updateTitle;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)deleteItemsAtIndexPaths:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)performCollectionViewDataReload;
- (void)setContactAvatarManager:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)transactionHistoryUpdated;
- (void)updateContent;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateGroup:(id)a3;
- (void)updateGroups:(id)a3 headerGroup:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation PKTransactionHistoryViewController

- (id)_initWithDataSource:(id)a3 presenters:(id)a4 layout:(id)a5 headerPresenter:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = PKTransactionHistoryViewController;
  v13 = [(PKDashboardViewController *)&v23 initWithDataSource:v10 presenters:a4 layout:v11];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_layout, a5);
    v14->_hideTopPocket = [v11 useStickyHeader];
    [v10 setCustomDelegate:v14];
    v15 = [v10 headerIndexPath];
    headerIndexPath = v14->_headerIndexPath;
    v14->_headerIndexPath = v15;

    objc_storeStrong(&v14->_headerPresenter, a6);
    v17 = [(PKTransactionHistoryViewController *)v14 navigationItem];
    v18 = [(PKTransactionHistoryViewController *)v14 _barButtonItems];
    [v17 setRightBarButtonItems:v18];

    v19 = [v17 standardAppearance];
    v20 = [v19 backgroundEffect];
    [v12 setOverlayEffect:v20];

    v21 = [v19 shadowColor];
    [v12 setShadowColor:v21];
  }

  return v14;
}

- (PKTransactionHistoryViewController)initWithFetcher:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 featuredTransaction:(id)a9 selectedTransactions:(id)a10
{
  v41[6] = *MEMORY[0x1E69E9840];
  v40 = a4;
  v36 = a5;
  v39 = a5;
  v38 = a9;
  v16 = a10;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v21 = [v20 type];
  v22 = 0;
  v23 = 0;
  if (v21 <= 6)
  {
    if (((1 << v21) & 0x59) != 0)
    {
      v23 = 0;
      v22 = 2;
    }

    else if (v21 == 1)
    {
      v23 = 1;
      v22 = 1;
    }

    else if (v21 == 5)
    {
      v23 = 0;
      v22 = 3;
    }
  }

  v37 = [[PKTransactionHistoryDefaultDataSource alloc] initWithFetcher:v20 transactionSourceCollection:v40 familyCollection:v39 account:v19 accountUserCollection:v18 physicalCards:v17 featuredTransaction:v38 selectedTransactions:v16 type:v22];

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
    objc_storeStrong(&v33->_transaction, a9);
    objc_storeStrong(&v33->_transactionSourceCollection, a4);
    objc_storeStrong(&v33->_familyCollection, v36);
    v33->_historyType = v22;
  }

  return v33;
}

- (PKTransactionHistoryViewController)initWithTransactionGroup:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 fetcher:(id)a9 detailViewStyle:(int64_t)a10
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[PKTransactionHistoryDefaultDataSource alloc] initWithTransactionGroup:v23 transactionSourceCollection:v22 familyCollection:v21 account:v20 accountUserCollection:v19 physicalCards:v18 fetcher:v17];
  v25 = [(PKTransactionHistoryViewController *)self initWithDataSource:v24 transactionGroup:v23 transactionSourceCollection:v22 familyCollection:v21 account:v20 accountUserCollection:v19 physicalCards:v18 fetcher:v17 detailViewStyle:a10];

  return v25;
}

- (PKTransactionHistoryViewController)initWithDataSource:(id)a3 transactionGroup:(id)a4 transactionSourceCollection:(id)a5 familyCollection:(id)a6 account:(id)a7 accountUserCollection:(id)a8 physicalCards:(id)a9 fetcher:(id)a10 detailViewStyle:(int64_t)a11
{
  v32[3] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a3;
  v15 = [v13 type];
  if ((v15 - 4) > 5)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_1BE1164F8[v15 - 4];
  }

  v17 = [[PKDashboardPaymentTransactionItemPresenter alloc] initWithContext:v16 detailViewStyle:a11 avatarViewDelegate:self];
  v18 = objc_alloc_init(PKDashboardDetailHeaderItemPresenter);
  v19 = objc_alloc_init(PKTransactionGroupItemPresenter);
  v20 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  if ([v13 type] == 14)
  {
    v31 = v14;
    v21 = [v13 searchQuery];
    v22 = [v21 tokens];
    v23 = [v22 count];

    v24 = [v13 searchQuery];
    v25 = [v24 displayNameToken];
    v26 = [v25 merchant];

    if (v23 == 1 && v26)
    {
      [(PKHeaderVerticalScrollingLayout *)v20 setUseStickyHeader:1];
    }

    v14 = v31;
  }

  else
  {
    v26 = 0;
  }

  v27 = [v13 type];
  if (v27 != 9 && v27 != 7)
  {
    if (v27 != 2)
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
  v29 = [(PKTransactionHistoryViewController *)self _initWithDataSource:v14 presenters:v28 layout:v20 headerPresenter:v18];

  if (v29)
  {
    v29->_historyType = 2;
  }

  return v29;
}

- (PKTransactionHistoryViewController)initWithInstallmentPlan:(id)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8
{
  v32[4] = *MEMORY[0x1E69E9840];
  v15 = a4;
  obj = a5;
  v16 = a5;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v31 = v15;
  v21 = [[PKTransactionHistoryDefaultDataSource alloc] initWithInstallmentPlan:v20 transactionSourceCollection:v15 familyCollection:v16 account:v19 accountUserCollection:v18 physicalCards:v17];

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
    objc_storeStrong(&v28->_transactionSourceCollection, a4);
    objc_storeStrong(&v28->_familyCollection, obj);
  }

  return v28;
}

- (PKTransactionHistoryViewController)initWithTransactionGroups:(id)a3 headerGroup:(id)a4 groupPresenter:(id)a5 regionUpdater:(id)a6 tokens:(id)a7 transactionSourceCollection:(id)a8 familyCollection:(id)a9 account:(id)a10 accountUserCollection:(id)a11 physicalCards:(id)a12
{
  v42[2] = *MEMORY[0x1E69E9840];
  v40 = a4;
  v17 = a5;
  v18 = a9;
  v19 = a12;
  v20 = a11;
  v21 = a10;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a3;
  v26 = [PKTransactionHistoryDefaultDataSource initWithTransactionGroups:"initWithTransactionGroups:headerGroup:regionUpdater:tokens:transactionSourceCollection:familyCollection:account:accountUserCollection:physicalCards:" headerGroup:v25 regionUpdater:v21 tokens:v20 transactionSourceCollection:v19 familyCollection:? account:? accountUserCollection:? physicalCards:?];

  v27 = objc_alloc_init(PKDashboardDetailHeaderItemPresenter);
  v28 = [v17 snapshotManager];
  [(PKDashboardDetailHeaderItemPresenter *)v27 setSnapshotManager:v28];

  v29 = [v17 avatarManager];
  [(PKDashboardDetailHeaderItemPresenter *)v27 setAvatarManager:v29];

  v30 = objc_alloc_init(PKHeaderVerticalScrollingLayout);
  if ([v40 type] == 14)
  {
    v31 = [v40 searchQuery];
    v32 = [v31 tokens];
    v33 = [v32 count];

    v34 = [v40 searchQuery];
    v35 = [v34 displayNameToken];
    v36 = [v35 merchant];

    if (v33 == 1 && v36)
    {
      [(PKHeaderVerticalScrollingLayout *)v30 setUseStickyHeader:1];
    }
  }

  else
  {
    v36 = 0;
  }

  v42[0] = v27;
  v42[1] = v17;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v38 = [(PKTransactionHistoryViewController *)self _initWithDataSource:v26 presenters:v37 layout:v30 headerPresenter:v27];

  if (v38)
  {
    v38->_historyType = 4;
    objc_storeStrong(&v38->_familyCollection, a9);
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
  v3 = [(PKTransactionHistoryViewController *)self view];
  v4 = [(PKTransactionHistoryViewController *)self collectionView];
  v5 = +[PKDashboardViewController backgroundColor];
  [v3 setBackgroundColor:v5];
  v6 = [(PKTransactionHistoryViewController *)self navigationItem];
  v7 = [(PKTransactionHistoryViewController *)self _dataSource];
  if ([v7 useLargeTitle])
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v6 setLargeTitleDisplayMode:v8];
  [v4 setAllowsMultipleSelectionDuringEditing:1];
  [(PKTransactionHistoryViewController *)self _updateTitle];
  [v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9D50]];
}

- (void)_updateNavigationBarIconForNavigationBarAppeared:(BOOL)a3
{
  v3 = a3;
  titleIconImageView = self->_titleIconImageView;
  if (titleIconImageView)
  {
    titleView = self->_titleView;
    if (v3)
    {
      if (!titleView)
      {
        v7 = [(PKTransactionHistoryViewController *)self navigationController];
        v8 = [v7 navigationBar];
        [v8 frame];
        v10 = v9;

        v11 = [[PKAnimatedNavigationBarTitleView alloc] initWithFrame:0.0, 0.0, v10, v10];
        v12 = self->_titleView;
        self->_titleView = v11;

        [(PKAnimatedNavigationBarTitleView *)self->_titleView setMaxWidth:33.0];
        v13 = [(PKTransactionHistoryViewController *)self navigationItem];
        [v13 pkui_setCenterAlignedTitleView:self->_titleView];

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
    v14 = [(PKTransactionHistoryViewController *)self navigationItem];
    v16 = v14;
    if (v3)
    {
      titleText = self->_titleText;
    }

    else
    {
      titleText = 0;
    }

    [v14 _setTitle:titleText animated:1];
  }
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
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
      v5 = [MEMORY[0x1E69DC8C8] loadingConfiguration];
      [(PKTransactionHistoryViewController *)self setContentUnavailableConfiguration:v5];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v16 viewWillAppear:?];
  [(PKDashboardViewController *)self shouldPresentAllContent:1 animated:v3];
  v5 = [(PKTransactionHistoryViewController *)self _dataSource];
  if ([v5 useLargeTitle])
  {
    v6 = [(PKTransactionHistoryViewController *)self navigationController];
    v7 = [v6 navigationBar];
    [v7 setPrefersLargeTitles:1];
  }

  [v5 loadTransactionsIfNeeded];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v5 viewDidDisappear:a3];
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
  v3 = [(PKTransactionHistoryViewController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  [v3 safeAreaInsets];
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
  v16 = [(PKHeaderVerticalScrollingLayout *)self->_layout useStickyHeader];
  v17 = v13;
  if (v16)
  {
    v17 = self->_headerHeight - v8;
    [v3 pkui_naturalRestingBounds];
    v19 = v5 - v18;
    v20 = v17 - (v5 - v18);
    if (v19 < 0.0)
    {
      v17 = v20;
    }
  }

  [v3 verticalScrollIndicatorInsets];
  if (v24 != v14 || v21 != v17 || v23 != v15 || v22 != v12)
  {
    [v3 setVerticalScrollIndicatorInsets:{v17, v14, v12, v15}];
  }

  [v3 contentInset];
  if (v31 != v14 || v28 != v13 || v30 != v15 || v29 != v12)
  {
    [v3 setContentInset:{v13, v14, v12, v15}];
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
    if (v16)
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
    v41 = [(PKTransactionHistoryViewController *)self collectionView];
    v42 = [v41 cellForItemAtIndexPath:self->_headerIndexPath];

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
  v3 = [(PKTransactionHistoryViewController *)self view];
  [v3 bounds];
  if (self->_footerContainer)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    [v3 safeAreaInsets];
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

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    objc_storeWeak(&self->_navigationController, 0);
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v6 didMoveToParentViewController:a3];
  v4 = [(PKTransactionHistoryViewController *)self navigationController];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
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

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v16.receiver = self;
  v16.super_class = PKTransactionHistoryViewController;
  [(PKTransactionHistoryViewController *)&v16 setEditing:a3 animated:1];
  v5 = [(PKTransactionHistoryViewController *)self navigationItem];
  v6 = [(PKTransactionHistoryViewController *)self _barButtonItems];
  [v5 setRightBarButtonItems:v6];

  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKTransactionHistoryViewController *)self _updateTitle];
  }

  if (v3)
  {
    v7 = [(PKTransactionHistoryViewController *)self collectionView];
    v8 = [v7 indexPathsForSelectedItems];
    v9 = [v8 count];

    if (v9)
    {
      v10 = @"TRANSACTION_HISTORY_DESELECT_ALL";
    }

    else
    {
      v10 = @"TRANSACTION_HISTORY_SELECT_ALL";
    }

    v11 = PKLocalizedPaymentString(&v10->isa);
    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v11 style:0 target:self action:sel__handleSelectButtonTapped_];
    [v12 setAccessibilityIdentifier:*MEMORY[0x1E69B9BF8]];
    v13 = [(PKTransactionHistoryViewController *)self navigationItem];
    [v13 setLeftBarButtonItem:v12 animated:1];

    v14 = [(PKTransactionHistoryViewController *)self _toolbarItems];
    [(PKTransactionHistoryViewController *)self setToolbarItems:v14];
  }

  else
  {
    v12 = [(PKTransactionHistoryViewController *)self navigationItem];
    [v12 setLeftBarButtonItem:0 animated:0];
  }

  v15 = [(PKTransactionHistoryViewController *)self navigationController];
  [v15 setToolbarHidden:!v3 animated:1];
}

- (void)updateGroup:(id)a3
{
  v4 = a3;
  v5 = [(PKTransactionHistoryViewController *)self _dataSource];
  [v5 updateGroup:v4];
}

- (id)group
{
  v2 = [(PKTransactionHistoryViewController *)self _dataSource];
  v3 = [v2 group];

  return v3;
}

- (void)updateGroups:(id)a3 headerGroup:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKTransactionHistoryViewController *)self _dataSource];
  [v8 updateGroups:v7 headerGroup:v6];
}

- (void)setContactAvatarManager:(id)a3
{
  v5 = a3;
  if (self->_contactAvatarManager != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contactAvatarManager, a3);
    [(PKDashboardDetailHeaderItemPresenter *)self->_headerPresenter setAvatarManager:v6];
    v5 = v6;
  }
}

- (void)updateContent
{
  v43.receiver = self;
  v43.super_class = PKTransactionHistoryViewController;
  [(PKDashboardViewController *)&v43 updateContent];
  v3 = [(PKTransactionHistoryViewController *)self navigationItem];
  v4 = [v3 rightBarButtonItems];
  v5 = [(PKTransactionHistoryViewController *)self _barButtonItems];
  if ((PKEqualObjects() & 1) == 0)
  {
    [v3 setRightBarButtonItems:v5 animated:1];
  }

  v6 = [(PKTransactionHistoryViewController *)self _dataSource];
  [(PKTransactionHistoryViewController *)self _updateTitle];
  v7 = [v6 footerTitle];
  v8 = [v6 footerTotal];
  v9 = v8;
  if (v7 && v8)
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
        v19 = [(PKTransactionHistoryViewController *)self collectionView];
        v20 = [v18 initWithScrollView:v19 edge:4 style:1];

        [(PKDashboardViewControllerFooterView *)self->_footer addInteraction:v20];
      }

      v21 = [[PKDashboardViewControllerFooterContainer alloc] initWithFrame:v12, v13, v14, v15];
      footerContainer = self->_footerContainer;
      self->_footerContainer = v21;

      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setCurrentFooter:self->_footer];
      [(PKDashboardViewControllerFooterContainer *)self->_footerContainer setAlpha:0.0];
      v23 = [(PKTransactionHistoryViewController *)self view];
      [v23 addSubview:self->_footerContainer];

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __51__PKTransactionHistoryViewController_updateContent__block_invoke;
      v42[3] = &unk_1E8010970;
      v42[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v42 animations:0.1];
      footer = self->_footer;
    }

    v24 = [(PKDashboardViewControllerFooterView *)footer leadingTitle];
    [v24 setText:v7];

    v25 = [v9 amount];
    v26 = [v25 pk_isNegativeNumber];

    if (v26)
    {
      v27 = [v9 negativeValue];

      v28 = [(PKDashboardViewControllerFooterView *)self->_footer leadingDetail];
      v29 = [v27 formattedStringValue];
      v30 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v29);
      [v28 setText:v30];

      v9 = v27;
    }

    else
    {
      v28 = [(PKDashboardViewControllerFooterView *)self->_footer leadingDetail];
      v29 = [v9 formattedStringValue];
      [v28 setText:v29];
    }

    v31 = [v6 footerSecondaryTitle];
    v32 = [v6 footerSecondaryTotal];
    v33 = v32;
    if (v31 && v32)
    {
      v41 = v3;
      v34 = [(PKDashboardViewControllerFooterView *)self->_footer trailingTitle];
      [v34 setText:v31];

      v35 = [v33 amount];
      v36 = [v35 pk_isNegativeNumber];

      if (v36)
      {
        v40 = [v33 negativeValue];

        v37 = [(PKDashboardViewControllerFooterView *)self->_footer trailingDetail];
        v38 = [v40 formattedStringValue];
        v39 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v38);
        [v37 setText:v39];

        v33 = v40;
      }

      else
      {
        v37 = [(PKDashboardViewControllerFooterView *)self->_footer trailingDetail];
        v38 = [v33 formattedStringValue];
        [v37 setText:v38];
      }

      v3 = v41;
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
  v3 = [(PKTransactionHistoryViewController *)self collectionView];
  if ([v3 numberOfItemsInSection:0] != 1)
  {

    goto LABEL_5;
  }

  v4 = [(PKDashboardViewController *)self dataSource];
  v5 = [v4 numberOfItemsInSection:0];

  if (v5 != 1)
  {
LABEL_5:
    v11 = [(PKTransactionHistoryViewController *)self collectionView];
    v10 = [v11 numberOfSections];

    v7 = 0;
    goto LABEL_6;
  }

  v6 = [(PKTransactionHistoryViewController *)self collectionView];
  v14[0] = self->_headerIndexPath;
  v7 = 1;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v6 reconfigureItemsAtIndexPaths:v8];

  v9 = [(PKTransactionHistoryViewController *)self collectionView];
  v10 = [v9 numberOfSections] - 1;

LABEL_6:
  v12 = [(PKTransactionHistoryViewController *)self collectionView];
  v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7, v10}];
  [v12 reloadSections:v13];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = PKTransactionHistoryViewController;
  [(PKDashboardViewController *)&v16 collectionView:a3 layout:a4 sizeForItemAtIndexPath:v8];
  v10 = v9;
  v12 = v11;
  if (self->_headerIndexPath && [v8 isEqual:?] && self->_headerHeight != v12)
  {
    self->_headerHeight = v12;
    v13 = [(PKTransactionHistoryViewController *)self view];
    [v13 setNeedsLayout];
  }

  v14 = v10;
  v15 = v12;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = PKTransactionHistoryViewController;
  v7 = [(PKDashboardViewController *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  if (self->_headerIndexPath)
  {
    if ([v6 isEqual:?])
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

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEditing])
  {
    v8 = [(PKDashboardViewController *)self dataSource];
    v9 = [v8 itemAtIndexPath:v7];

    v10 = [(PKDashboardViewController *)self dataSource];
    v11 = [v10 canDeleteItem:v9];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PKTransactionHistoryViewController;
    v11 = [(PKDashboardViewController *)&v13 collectionView:v6 shouldSelectItemAtIndexPath:v7];
  }

  return v11;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v8.receiver = self;
  v8.super_class = PKTransactionHistoryViewController;
  v6 = a3;
  [(PKDashboardViewController *)&v8 collectionView:v6 didSelectItemAtIndexPath:a4];
  LODWORD(a4) = [v6 isEditing];

  if (a4)
  {
    v7 = [(PKTransactionHistoryViewController *)self _toolbarItems];
    [(PKTransactionHistoryViewController *)self setToolbarItems:v7];

    [(PKTransactionHistoryViewController *)self _updateNavigationBar];
    if (_UISolariumFeatureFlagEnabled())
    {
      [(PKTransactionHistoryViewController *)self _updateTitle];
    }
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  if ([a3 isEditing])
  {
    v5 = [(PKTransactionHistoryViewController *)self _toolbarItems];
    [(PKTransactionHistoryViewController *)self setToolbarItems:v5];

    [(PKTransactionHistoryViewController *)self _updateNavigationBar];
    if (_UISolariumFeatureFlagEnabled())
    {

      [(PKTransactionHistoryViewController *)self _updateTitle];
    }
  }
}

- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v4 = [(PKTransactionHistoryViewController *)self _dataSource:a3];
  v5 = [v4 areTransactionsEditable];

  return v5;
}

- (id)collectionView:(id)a3 layout:(id)a4 trailingSwipeActionsConfigurationForItemAtIndexPath:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKDashboardViewController *)self dataSource];
  v12 = [v11 itemAtIndexPath:v10];
  if ([v11 canDeleteItem:v12])
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
    v23 = v8;
    v24 = v10;
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

- (void)_updateHeaderCellWithAnimationProgress:(id)a3
{
  v15 = a3;
  v4 = [(PKHeaderVerticalScrollingLayout *)self->_layout useStickyHeader];
  [v15 setOverlayAlpha:self->_merchantHeaderAnimationProgress];
  if (v4)
  {
    if (self->_merchantHeaderAnimationProgress >= 1.0)
    {
      [v15 setOverlayAlpha:0.0];
    }

    v5 = [(PKTransactionHistoryViewController *)self collectionView];
    v6 = v5;
    if (self->_headerHeight > 0.0)
    {
      [v5 contentOffset];
      v8 = v7;
      [v6 safeAreaInsets];
      v10 = v9;
      [v15 topLabelWithRespectTo:v6];
      v12 = v8 <= v11 - v10;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [(PKTransactionHistoryViewController *)self collectionView];
  }

  v12 = 0;
LABEL_8:
  if ([v6 _hiddenPocketEdges] != v12)
  {
    [v6 _setHiddenPocketEdges:v12];
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

- (void)_updateNavigationBarIconWithLogoURL:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E69B8A08];
    v5 = a3;
    v6 = [v4 sharedImageAssetDownloader];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__PKTransactionHistoryViewController__updateNavigationBarIconWithLogoURL___block_invoke;
    v7[3] = &unk_1E8020570;
    v7[4] = self;
    [v6 downloadFromUrl:v5 completionHandler:v7];
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
  v3 = [(PKTransactionHistoryViewController *)self navigationItem];
  v4 = [(PKTransactionHistoryViewController *)self _barButtonItems];
  [v3 setRightBarButtonItems:v4];

  v5 = [(PKTransactionHistoryViewController *)self collectionView];
  LODWORD(v4) = [v5 isEditing];

  if (v4)
  {
    v6 = [(PKTransactionHistoryViewController *)self collectionView];
    v7 = [v6 indexPathsForSelectedItems];
    v8 = [v7 count];

    v12 = [(PKTransactionHistoryViewController *)self navigationItem];
    v9 = [v12 leftBarButtonItem];
    if (v8)
    {
      v10 = @"TRANSACTION_HISTORY_DESELECT_ALL";
    }

    else
    {
      v10 = @"TRANSACTION_HISTORY_SELECT_ALL";
    }

    v11 = PKLocalizedPaymentString(&v10->isa);
    [v9 setTitle:v11];
  }
}

- (void)deleteItemsAtIndexPaths:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKTransactionHistoryViewController;
  [(PKDashboardViewController *)&v8 deleteItemsAtIndexPaths:a3];
  v4 = [(PKTransactionHistoryViewController *)self _dataSource];
  v5 = [v4 transactionHistoryItemsCount];

  if (!v5)
  {
    v6 = [(PKTransactionHistoryViewController *)self navigationController];
    if ([v6 pk_settings_useStateDrivenNavigation])
    {
      [v6 pk_settings_popViewController];
    }

    else
    {
      v7 = [v6 popViewControllerAnimated:1];
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

- (id)_createActivityDeletionConfirmationWithCompletion:(id)a3
{
  v3 = a3;
  if (v3)
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
    v9 = v3;
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
  v25 = [(PKTransactionHistoryViewController *)self navigationItem];
  v3 = [(PKTransactionHistoryViewController *)self _dataSource];
  v4 = [v3 type];
  if (v4 == 4 || v4 == 2)
  {
    v8 = [v3 group];
    v5 = v8;
    if (!v8)
    {
      v7 = 0;
      v6 = 0;
      goto LABEL_27;
    }

    v9 = [v8 type];
    v7 = 0;
    if (v9 > 6)
    {
      switch(v9)
      {
        case 7:
          v12 = [v5 transactions];
          v13 = [v12 firstObject];
          v14 = [v13 accountType];

          v15 = PKPassKitUIBundle();
          v10 = v15;
          if (v14 == 3)
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
          v10 = v15;
          v16 = @"AppleCardIcon";
          break;
        case 14:
LABEL_10:
          v10 = [v3 merchant];
          if (!v10)
          {
            v6 = 0;
LABEL_25:

            goto LABEL_26;
          }

          PKUIScreenScale();
          v6 = PKMapsIconForMerchant();
          v11 = [v10 logoImageURL];
          [(PKTransactionHistoryViewController *)self _updateNavigationBarIconWithLogoURL:v11];
LABEL_24:

          goto LABEL_25;
        default:
LABEL_16:
          v6 = 0;
          goto LABEL_27;
      }

      v11 = [v15 URLForResource:v16 withExtension:@"pdf"];
      v17 = PKUIScreenScale();
      v6 = PKUIImageFromPDF(v11, 33.0, 33.0, v17);
      goto LABEL_24;
    }

    if (!v9)
    {
      [v5 merchantCategory];
      PKUIScreenScale();
      v6 = PKMapsIconForMerchantCategory();
LABEL_26:
      v7 = 0;
      goto LABEL_27;
    }

    if (v9 == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (v4 == 1)
  {
    v5 = [v3 merchant];
    PKUIScreenScale();
    v6 = PKMapsIconForMerchant();
    v7 = [v5 logoImageURL];
LABEL_27:

    goto LABEL_28;
  }

  v7 = 0;
  v6 = 0;
LABEL_28:
  v18 = [v3 useLargeTitle];
  v19 = [v3 navigationBarTitle];
  if (_UISolariumFeatureFlagEnabled())
  {
    v20 = [(PKTransactionHistoryViewController *)self collectionView];
    v21 = [v20 isEditing];

    if (v21)
    {
      v22 = [(PKTransactionHistoryViewController *)self _selectedText];

      v19 = v22;
    }
  }

  [v25 setBackButtonTitle:v19];
  [v25 setBackButtonDisplayMode:1];
  if (v6)
  {
    v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6];
    titleIconImageView = self->_titleIconImageView;
    self->_titleIconImageView = v23;

    [(UIImageView *)self->_titleIconImageView setContentMode:1];
    [(UIImageView *)self->_titleIconImageView _setContinuousCornerRadius:3.0];
    [(UIImageView *)self->_titleIconImageView setClipsToBounds:1];
    [(PKTransactionHistoryViewController *)self _updateNavigationBarIconWithLogoURL:v7];
  }

  else if (v18)
  {
    [v25 setTitle:v19];
  }

  else
  {
    objc_storeStrong(&self->_titleText, v19);
  }
}

- (id)_barButtonItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKTransactionHistoryViewController *)self _dataSource];
  v5 = [v4 merchant];
  v6 = v5;
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
    if (!v5)
    {
      v9 = [v4 areTransactionsEditable];
      objc_initWeak(&location, self);
      if ((v9 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    if ([v5 shouldIgnoreMapsMatches])
    {
      v8 = 0;
    }

    else
    {
      v14 = [v6 mapsMerchant];
      v8 = v14 != 0;
    }

    v15 = [v6 phoneNumber];
    v11 = v15 != 0;

    v16 = [v6 businessChatURL];
    v12 = v16 != 0;

    v13 = [v4 areTransactionsEditable];
    objc_initWeak(&location, self);
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v10 = [v4 contact];

  objc_initWeak(&location, self);
  if (!v10)
  {
    goto LABEL_35;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
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
    v20 = v13;
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
    v13 = v20;
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
    v50 = v13;
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
    v13 = v50;
  }

  [v3 addObject:phoneButton];
LABEL_24:
  if (v12)
  {
    messageButton = self->_messageButton;
    if (!messageButton)
    {
      v34 = v13;
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
      v13 = v34;
    }

    [v3 addObject:messageButton];
  }

  if (v13)
  {
LABEL_29:
    if ([v3 count] >= 3)
    {
      v41 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 primaryAction:0];
      [v41 setWidth:15.0];
      [v3 addObject:v41];
    }

    v42 = [(PKTransactionHistoryViewController *)self collectionView];
    v43 = [v42 isEditing];

    v44 = objc_alloc(MEMORY[0x1E69DC708]);
    if (v43)
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
  v2 = [(PKTransactionHistoryViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];
  v4 = [v3 count];

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
  v10 = [(PKTransactionHistoryViewController *)self collectionView];
  v11 = [v10 indexPathsForSelectedItems];
  [v9 setEnabled:{objc_msgSend(v11, "count") != 0}];

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
    v3 = [(PKTransactionHistoryViewController *)self _dataSource];
    historyType = self->_historyType;
    v5 = historyType > 4;
    v6 = (1 << historyType) & 0x16;
    if (v5 || v6 == 0)
    {
      goto LABEL_11;
    }

    v10 = v3;
    v8 = [v3 merchant];
    v9 = [v8 businessChatURL];

    if (v9)
    {
      PKOpenURL();
    }
  }

  v3 = v10;
LABEL_11:
}

- (void)_handlePhoneButtonTapped
{
  if (!PKStoreDemoModeEnabled())
  {
    v3 = [(PKTransactionHistoryViewController *)self _dataSource];
    v4 = v3;
    historyType = self->_historyType;
    if (historyType - 1 < 2)
    {
      goto LABEL_8;
    }

    if (!historyType)
    {
      v12 = [v3 contact];
      v13 = [v12 phoneNumbers];
      v14 = [v13 firstObject];
      v15 = [v14 value];

      if (v15)
      {
        v16 = [v15 stringValue];
        v17 = PKTelephoneURLFromPhoneNumber();

        PKOpenURL();
      }

      goto LABEL_17;
    }

    if (historyType == 4)
    {
LABEL_8:
      v6 = [v3 merchant];
      v7 = [v6 phoneNumber];

      if (v7)
      {
        v8 = [v4 merchant];
        v9 = [v8 useDisplayNameIgnoringBrand];

        v10 = [v4 merchant];
        v11 = v10;
        if (v9)
        {
          [v10 displayNameIgnoringBrand];
        }

        else
        {
          [v10 displayName];
        }
        v18 = ;

        v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v18 preferredStyle:0];
        v20 = [v19 popoverPresentationController];
        [v20 setSourceItem:self->_phoneButton];

        v21 = PKLocalizedString(&cfstr_Call.isa);
        v22 = MEMORY[0x1E69DC648];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __62__PKTransactionHistoryViewController__handlePhoneButtonTapped__block_invoke;
        v25[3] = &unk_1E80112E8;
        v26 = v7;
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

- (void)_handleEditButtonTapped:(id)a3
{
  v4 = [(PKTransactionHistoryViewController *)self collectionView];
  v5 = [v4 isEditing];

  [(PKTransactionHistoryViewController *)self setEditing:v5 ^ 1u];
}

- (void)_handleSelectButtonTapped:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [(PKTransactionHistoryViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];
  v6 = [v5 count];

  if (v6)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = [(PKTransactionHistoryViewController *)self collectionView];
    v8 = [v7 indexPathsForSelectedItems];

    v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          v14 = [(PKTransactionHistoryViewController *)self collectionView];
          [v14 deselectItemAtIndexPath:v13 animated:0];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v15 = [(PKTransactionHistoryViewController *)self collectionView];
    v16 = [v15 numberOfSections];

    if (v16 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = [(PKTransactionHistoryViewController *)self collectionView];
        v19 = [v18 numberOfItemsInSection:v17];

        if (v19 >= 1)
        {
          v20 = 0;
          do
          {
            v21 = [(PKTransactionHistoryViewController *)self collectionView];
            v22 = [MEMORY[0x1E696AC88] indexPathForRow:v20 inSection:v17];
            v23 = [(PKTransactionHistoryViewController *)self collectionView:v21 shouldSelectItemAtIndexPath:v22];

            if (v23)
            {
              v24 = [(PKTransactionHistoryViewController *)self collectionView];
              v25 = [MEMORY[0x1E696AC88] indexPathForRow:v20 inSection:v17];
              [v24 selectItemAtIndexPath:v25 animated:0 scrollPosition:0];
            }

            ++v20;
            v26 = [(PKTransactionHistoryViewController *)self collectionView];
            v27 = [v26 numberOfItemsInSection:v17];
          }

          while (v20 < v27);
        }

        ++v17;
        v28 = [(PKTransactionHistoryViewController *)self collectionView];
        v29 = [v28 numberOfSections];
      }

      while (v17 < v29);
    }
  }

  [(PKTransactionHistoryViewController *)self _updateNavigationBar];
  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKTransactionHistoryViewController *)self _updateTitle];
  }

  v30 = [(PKTransactionHistoryViewController *)self _toolbarItems];
  [(PKTransactionHistoryViewController *)self setToolbarItems:v30];
}

- (void)_showContactDetailsViewController
{
  v9 = [(PKTransactionHistoryViewController *)self _dataSource];
  CNContactViewControllerClass = getCNContactViewControllerClass();
  v4 = [v9 contact];
  v5 = [(objc_class *)CNContactViewControllerClass viewControllerForContact:v4];

  [v5 setAllowsEditing:0];
  v6 = [v5 navigationItem];
  v7 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v7 configureWithTransparentBackground];
  [v6 setStandardAppearance:v7];
  if (v5)
  {
    v8 = [(PKTransactionHistoryViewController *)self navigationController];
    if ([v8 pk_settings_useStateDrivenNavigation])
    {
      [v8 pk_settings_pushViewController:v5];
    }

    else
    {
      [v8 pushViewController:v5 animated:1];
    }
  }
}

- (void)_showMapsDetailsViewController
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!self->_loadingMapsViewController)
  {
    v3 = [(PKTransactionHistoryViewController *)self _dataSource];
    v4 = [v3 merchant];
    v5 = [v4 mapsMerchant];
    v6 = [v5 identifier];

    if (v6)
    {
      self->_loadingMapsViewController = 1;
      v7 = [(PKTransactionHistoryViewController *)self navigationItem];
      v8 = [(PKTransactionHistoryViewController *)self _barButtonItems];
      [v7 setRightBarButtonItems:v8];

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
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6];
      v25[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      [v16 _setMuids:v18];

      v19 = [objc_alloc(MEMORY[0x1E696F248]) initWithRequest:v16];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__PKTransactionHistoryViewController__showMapsDetailsViewController__block_invoke_2;
      v20[3] = &unk_1E8016120;
      objc_copyWeak(v21, &location);
      v21[1] = v6;
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