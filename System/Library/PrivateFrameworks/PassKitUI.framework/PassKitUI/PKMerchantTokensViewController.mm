@interface PKMerchantTokensViewController
+ (id)_collectionViewLayout;
- (BOOL)_hasMoreUnfetchedMerchantTokens;
- (BOOL)_isLoadingRow:(id)row;
- (PKMerchantTokensViewController)initWithPass:(id)pass merchantTokensResponse:(id)response;
- (PKMerchantTokensViewControllerDelegate)delegate;
- (id)_initialSnapshot;
- (id)_updateIdentifiersWithMerchantTokens:(id)tokens;
- (id)_updatedSnapshotRemovingMerchantToken:(id)token;
- (id)_updatedSnapshotWithMerchantTokens:(id)tokens;
- (void)_deselectSelectedItemAnimated:(BOOL)animated;
- (void)_fetchNextPageOfMerchantTokens;
- (void)_setUpCollectionView;
- (void)_setUpViews;
- (void)_trackButtonTapForMerchantToken:(id)token;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)merchantTokenDetailViewController:(id)controller didDeleteMerchantToken:(id)token;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKMerchantTokensViewController

- (PKMerchantTokensViewController)initWithPass:(id)pass merchantTokensResponse:(id)response
{
  passCopy = pass;
  responseCopy = response;
  _collectionViewLayout = [objc_opt_class() _collectionViewLayout];
  v21.receiver = self;
  v21.super_class = PKMerchantTokensViewController;
  v10 = [(PKMerchantTokensViewController *)&v21 initWithCollectionViewLayout:_collectionViewLayout];

  if (v10)
  {
    if (([passCopy hasMerchantTokens] & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Attempting to show PKMerchantTokensViewController for pass that has no merchant tokens."];
    }

    objc_storeStrong(&v10->_pass, pass);
    objc_storeStrong(&v10->_previousMerchantTokensResponse, response);
    merchantTokens = [responseCopy merchantTokens];
    v12 = [merchantTokens mutableCopy];
    v13 = v12;
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    objc_storeStrong(&v10->_merchantTokens, v13);
    if (!v12)
    {
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    idsToMerchantTokens = v10->_idsToMerchantTokens;
    v10->_idsToMerchantTokens = v14;

    v10->_isFetchingMerchantTokens = 0;
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    webService = v10->_webService;
    v10->_webService = mEMORY[0x1E69B8EF8];

    v10->_merchantIconsEnabled = PKMerchantTokensForceMerchantIconsEnabled();
    navigationItem = [(PKMerchantTokensViewController *)v10 navigationItem];
    v19 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokens_7.isa);
    [navigationItem setTitle:v19];

    [navigationItem setBackButtonDisplayMode:2];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v10;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKMerchantTokensViewController;
  [(PKMerchantTokensViewController *)&v3 viewDidLoad];
  [(PKMerchantTokensViewController *)self _setUpViews];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = PKMerchantTokensViewController;
  [(PKMerchantTokensViewController *)&v5 viewWillAppear:?];
  if (!self->_previousMerchantTokensResponse)
  {
    [(PKMerchantTokensViewController *)self _fetchNextPageOfMerchantTokens];
  }

  [(PKMerchantTokensViewController *)self _deselectSelectedItemAnimated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKMerchantTokensViewController;
  [(PKMerchantTokensViewController *)&v10 viewDidAppear:appear];
  collectionView = [(PKMerchantTokensViewController *)self collectionView];
  [collectionView flashScrollIndicators];

  v5 = MEMORY[0x1E69B8540];
  v6 = *MEMORY[0x1E69BB6F8];
  v7 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v7;
  v8 = *MEMORY[0x1E69BAAE0];
  v12[0] = *MEMORY[0x1E69BA818];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v5 subject:v6 sendEvent:v9];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12[3] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKMerchantTokensViewController;
  [(PKMerchantTokensViewController *)&v10 viewDidDisappear:disappear];
  if (([(PKMerchantTokensViewController *)self isBeingDismissed]& 1) != 0 || [(PKMerchantTokensViewController *)self isMovingFromParentViewController])
  {
    v4 = MEMORY[0x1E69B8540];
    v5 = *MEMORY[0x1E69BB6F8];
    v6 = *MEMORY[0x1E69BA6F0];
    v7 = *MEMORY[0x1E69BA440];
    v11[0] = *MEMORY[0x1E69BA680];
    v11[1] = v7;
    v8 = *MEMORY[0x1E69BA3A8];
    v12[0] = v6;
    v12[1] = v8;
    v11[2] = *MEMORY[0x1E69BABE8];
    v12[2] = *MEMORY[0x1E69BAAE0];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
    [v4 subject:v5 sendEvent:v9];
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKMerchantTokensViewController;
  [(PKMerchantTokensViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    collectionView = [(PKMerchantTokensViewController *)self collectionView];
    navigationItem = [(PKMerchantTokensViewController *)self navigationItem];
    [collectionView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(PKMerchantTokensViewController *)self _isMerchantRow:pathCopy])
  {
    v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
    v7 = [(NSMutableDictionary *)self->_idsToMerchantTokens objectForKeyedSubscript:v6];
    [(PKMerchantTokensViewController *)self _trackButtonTapForMerchantToken:v7];
    v8 = [[PKMerchantTokenDetailViewController alloc] initWithMerchantToken:v7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PKMerchantTokensViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v10[3] = &unk_1E8012FD0;
    v11 = v8;
    selfCopy = self;
    v9 = v8;
    [(PKMerchantTokenDetailViewController *)v9 preflightWithCompletion:v10];
  }
}

void __74__PKMerchantTokensViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__PKMerchantTokensViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
  v4[3] = &unk_1E8010A10;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __74__PKMerchantTokensViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v4 = [*(a1 + 40) navigationController];
  v2 = [v4 pk_settings_useStateDrivenNavigation];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v4 pk_settings_pushViewController:v3];
  }

  else
  {
    [v4 pushViewController:v3 animated:1];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  if ([(PKMerchantTokensViewController *)self _isLoadingRow:path, cell])
  {

    [(PKMerchantTokensViewController *)self _fetchNextPageOfMerchantTokens];
  }
}

- (void)merchantTokenDetailViewController:(id)controller didDeleteMerchantToken:(id)token
{
  controllerCopy = controller;
  tokenCopy = token;
  [(NSMutableArray *)self->_merchantTokens removeObject:tokenCopy];
  dataSource = self->_dataSource;
  v8 = [(PKMerchantTokensViewController *)self _updatedSnapshotRemovingMerchantToken:tokenCopy];
  [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v8 animatingDifferences:1];

  navigationController = [(PKMerchantTokensViewController *)self navigationController];
  if (!navigationController || [(NSMutableArray *)self->_merchantTokens count])
  {
    topViewController = [navigationController topViewController];
    if (topViewController)
    {
      if (topViewController == controllerCopy || ([controllerCopy parentViewController], v11 = objc_claimAutoreleasedReturnValue(), v11, topViewController == v11))
      {
        if ([navigationController pk_settings_useStateDrivenNavigation])
        {
          [navigationController pk_settings_popViewController];
        }

        else
        {
          v17 = [navigationController popViewControllerAnimated:1];
        }
      }
    }

    goto LABEL_14;
  }

  viewControllers = [navigationController viewControllers];
  v13 = [viewControllers indexOfObject:self];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL || ([navigationController viewControllers], v14 = objc_claimAutoreleasedReturnValue(), -[PKMerchantTokensViewController parentViewController](self, "parentViewController"), v15 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v14, "indexOfObject:", v15), v15, v14, v13 != 0x7FFFFFFFFFFFFFFFLL))
  {
    viewControllers2 = [navigationController viewControllers];
    topViewController = [viewControllers2 objectAtIndex:v13 - 1];

    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_popToViewController:topViewController];
    }

    else
    {
      v18 = [navigationController popToViewController:topViewController animated:1];
    }

LABEL_14:
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained merchantTokensViewController:self didDeleteMerchantToken:tokenCopy];
}

- (void)_setUpViews
{
  [(PKMerchantTokensViewController *)self _setUpSelf];

  [(PKMerchantTokensViewController *)self _setUpCollectionView];
}

- (void)_setUpCollectionView
{
  collectionView = [(PKMerchantTokensViewController *)self collectionView];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [collectionView layoutMargins];
    [collectionView setLayoutMargins:?];
  }

  [collectionView contentInset];
  [collectionView setContentInset:?];
  merchantIconsEnabled = self->_merchantIconsEnabled;
  v5 = MEMORY[0x1E69DC800];
  v6 = objc_opt_class();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __54__PKMerchantTokensViewController__setUpCollectionView__block_invoke;
  v31[3] = &__block_descriptor_33_e65_v32__0__PKMerchantTokenCell_8__NSIndexPath_16__PKMerchantToken_24l;
  v32 = merchantIconsEnabled;
  v7 = [v5 registrationWithCellClass:v6 configurationHandler:v31];
  v8 = MEMORY[0x1E69DC800];
  v9 = objc_opt_class();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __54__PKMerchantTokensViewController__setUpCollectionView__block_invoke_2;
  v29[3] = &__block_descriptor_33_e65_v32__0__PKMerchantTokenLoadingCell_8__NSIndexPath_16__NSString_24l;
  v30 = merchantIconsEnabled;
  v10 = [v8 registrationWithCellClass:v9 configurationHandler:v29];
  v11 = [MEMORY[0x1E69DC870] registrationWithSupplementaryClass:objc_opt_class() elementKind:*MEMORY[0x1E69DDC00] configurationHandler:&__block_literal_global_203];
  objc_initWeak(&location, self);
  v12 = objc_alloc(MEMORY[0x1E69DC820]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __54__PKMerchantTokensViewController__setUpCollectionView__block_invoke_4;
  v24[3] = &unk_1E80206B8;
  objc_copyWeak(&v27, &location);
  v13 = v7;
  v25 = v13;
  v14 = v10;
  v26 = v14;
  v15 = [v12 initWithCollectionView:collectionView cellProvider:v24];
  dataSource = self->_dataSource;
  self->_dataSource = v15;

  v17 = self->_dataSource;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __54__PKMerchantTokensViewController__setUpCollectionView__block_invoke_5;
  v22[3] = &unk_1E80206E0;
  v18 = v11;
  v23 = v18;
  [(UICollectionViewDiffableDataSource *)v17 setSupplementaryViewProvider:v22];
  collectionView2 = [(PKMerchantTokensViewController *)self collectionView];
  [collectionView2 setDataSource:self->_dataSource];

  v20 = self->_dataSource;
  _initialSnapshot = [(PKMerchantTokensViewController *)self _initialSnapshot];
  [(UICollectionViewDiffableDataSource *)v20 applySnapshot:_initialSnapshot animatingDifferences:0];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

uint64_t __54__PKMerchantTokensViewController__setUpCollectionView__block_invoke_2(uint64_t result, void *a2)
{
  if ((*(result + 32) & 1) == 0)
  {
    return [a2 useSmallHeight];
  }

  return result;
}

void __54__PKMerchantTokensViewController__setUpCollectionView__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 defaultContentConfiguration];
  v3 = PKLocalizedMerchantTokensString(&cfstr_MerchantTokens_8.isa);
  [v4 setText:v3];

  [v2 setContentConfiguration:v4];
}

id __54__PKMerchantTokensViewController__setUpCollectionView__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained _isMerchantRow:v8])
  {
    v11 = [WeakRetained[133] objectForKeyedSubscript:v9];

    v12 = 32;
    v9 = v11;
  }

  else
  {
    v12 = 40;
  }

  v13 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v12) forIndexPath:v8 item:v9];

  return v13;
}

+ (id)_collectionViewLayout
{
  v2 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  [v2 setFooterMode:1];
  v3 = objc_alloc(MEMORY[0x1E69DC808]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PKMerchantTokensViewController__collectionViewLayout__block_invoke;
  v7[3] = &unk_1E8020708;
  v8 = v2;
  v4 = v2;
  v5 = [v3 initWithSectionProvider:v7];

  return v5;
}

id __55__PKMerchantTokensViewController__collectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x1E6995580] sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:a3];
  if (PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    [v3 setContentInsetsReference:4];
    [v3 contentInsets];
    [v3 setContentInsets:?];
  }

  return v3;
}

- (id)_initialSnapshot
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKMerchantTokensViewController *)self _updateIdentifiersWithMerchantTokens:self->_merchantTokens];
  v4 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v9[0] = @"MerchantTokenMainSection";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v4 appendSectionsWithIdentifiers:v5];

  [v4 appendItemsWithIdentifiers:v3];
  if ([(PKMerchantTokensViewController *)self _shouldShowLoadingRow])
  {
    v8 = @"MerchantTokenLoadingCell";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    [v4 appendItemsWithIdentifiers:v6];
  }

  return v4;
}

- (id)_updatedSnapshotWithMerchantTokens:(id)tokens
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(PKMerchantTokensViewController *)self _updateIdentifiersWithMerchantTokens:tokens];
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v10[0] = @"MerchantTokenLoadingCell";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [snapshot deleteItemsWithIdentifiers:v6];

  [snapshot appendItemsWithIdentifiers:v4];
  if ([(PKMerchantTokensViewController *)self _shouldShowLoadingRow])
  {
    v9 = @"MerchantTokenLoadingCell";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    [snapshot appendItemsWithIdentifiers:v7];
  }

  return snapshot;
}

- (id)_updatedSnapshotRemovingMerchantToken:(id)token
{
  v8[1] = *MEMORY[0x1E69E9840];
  merchantTokenId = [token merchantTokenId];
  [(NSMutableDictionary *)self->_idsToMerchantTokens setObject:0 forKeyedSubscript:merchantTokenId];
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v8[0] = merchantTokenId;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [snapshot deleteItemsWithIdentifiers:v6];

  return snapshot;
}

- (id)_updateIdentifiersWithMerchantTokens:(id)tokens
{
  v20 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = tokensCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        merchantTokenId = [v10 merchantTokenId];
        if ([merchantTokenId length])
        {
          v12 = [(NSMutableDictionary *)self->_idsToMerchantTokens objectForKeyedSubscript:merchantTokenId];

          if (!v12)
          {
            [(NSMutableDictionary *)self->_idsToMerchantTokens setObject:v10 forKeyedSubscript:merchantTokenId];
            [v14 addObject:merchantTokenId];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v14;
}

- (BOOL)_isLoadingRow:(id)row
{
  v3 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:row];
  v4 = [v3 isEqualToString:@"MerchantTokenLoadingCell"];

  return v4;
}

- (BOOL)_hasMoreUnfetchedMerchantTokens
{
  if (!self->_previousMerchantTokensResponse)
  {
    return 1;
  }

  v3 = [(NSMutableArray *)self->_merchantTokens count];
  totalMerchantTokens = [(PKRetrieveMerchantTokensResponse *)self->_previousMerchantTokensResponse totalMerchantTokens];
  v5 = v3 < [totalMerchantTokens integerValue];

  return v5;
}

- (void)_fetchNextPageOfMerchantTokens
{
  if ([(PKMerchantTokensViewController *)self _hasMoreUnfetchedMerchantTokens]&& !self->_isFetchingMerchantTokens)
  {
    self->_isFetchingMerchantTokens = 1;
    v3 = objc_alloc_init(MEMORY[0x1E69B9150]);
    [v3 setPass:self->_pass];
    pageNumber = [(PKRetrieveMerchantTokensResponse *)self->_previousMerchantTokensResponse pageNumber];

    if (pageNumber)
    {
      v5 = MEMORY[0x1E696AD98];
      pageNumber2 = [(PKRetrieveMerchantTokensResponse *)self->_previousMerchantTokensResponse pageNumber];
      v7 = [v5 numberWithInteger:{objc_msgSend(pageNumber2, "integerValue") + 1}];
      [v3 setPageNumber:v7];
    }

    pageSize = [(PKRetrieveMerchantTokensResponse *)self->_previousMerchantTokensResponse pageSize];

    if (pageSize)
    {
      pageSize2 = [(PKRetrieveMerchantTokensResponse *)self->_previousMerchantTokensResponse pageSize];
      [v3 setPageSize:pageSize2];
    }

    objc_initWeak(&location, self);
    webService = self->_webService;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PKMerchantTokensViewController__fetchNextPageOfMerchantTokens__block_invoke;
    v11[3] = &unk_1E8020730;
    objc_copyWeak(&v12, &location);
    [(PKPaymentWebService *)webService retrieveMerchantTokensWithRequest:v3 completion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __64__PKMerchantTokensViewController__fetchNextPageOfMerchantTokens__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKMerchantTokensViewController__fetchNextPageOfMerchantTokens__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __64__PKMerchantTokensViewController__fetchNextPageOfMerchantTokens__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1072) = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      objc_storeStrong(WeakRetained + 131, v4);
      v5 = [*(a1 + 32) merchantTokens];
      v6 = v5;
      v7 = MEMORY[0x1E695E0F0];
      if (v5)
      {
        v7 = v5;
      }

      v8 = v7;

      [v3[132] addObjectsFromArray:v8];
      v9 = v3[129];
      v10 = [v3 _updatedSnapshotWithMerchantTokens:v8];
      [v9 applySnapshot:v10 animatingDifferences:0];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [v3 collectionView];
      v12 = [v11 indexPathsForVisibleItems];

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v18;
        do
        {
          v16 = 0;
          do
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ([v3 _isLoadingRow:*(*(&v17 + 1) + 8 * v16)])
            {
              [v3 _fetchNextPageOfMerchantTokens];
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v14);
      }
    }
  }
}

- (void)_deselectSelectedItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  collectionView = [(PKMerchantTokensViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    transitionCoordinator = [(PKMerchantTokensViewController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__PKMerchantTokensViewController__deselectSelectedItemAnimated___block_invoke;
      v12[3] = &unk_1E8020758;
      v13 = collectionView;
      v14 = firstObject;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __64__PKMerchantTokensViewController__deselectSelectedItemAnimated___block_invoke_2;
      v9[3] = &unk_1E8020758;
      v10 = v13;
      v11 = v14;
      [transitionCoordinator animateAlongsideTransition:v12 completion:v9];
    }

    else
    {
      [collectionView deselectItemAtIndexPath:firstObject animated:animatedCopy];
    }
  }
}

uint64_t __64__PKMerchantTokensViewController__deselectSelectedItemAnimated___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 selectItemAtIndexPath:v5 animated:0 scrollPosition:0];
  }

  return result;
}

- (void)_trackButtonTapForMerchantToken:(id)token
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setValue:*MEMORY[0x1E69BA6F0] forKey:*MEMORY[0x1E69BA680]];
  [v3 setValue:*MEMORY[0x1E69BAAF0] forKey:*MEMORY[0x1E69BA440]];
  [v3 setValue:*MEMORY[0x1E69BAAE0] forKey:*MEMORY[0x1E69BABE8]];
  [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6F8] sendEvent:v3];
}

- (PKMerchantTokensViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end