@interface VUILibraryMediaCollectionViewController
- (BOOL)_allFetchesHaveCompleted;
- (BOOL)_usingEpisodesGroupFetch;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (VUILibraryMediaCollectionViewController)initWithTitle:(id)a3 withSeasonsDataSource:(id)a4 withEpisodesDataSource:(id)a5;
- (id)_createDiffableDataSourceForCollectionView:(id)a3;
- (id)_createDiffableDataSourceSnapshot;
- (id)_episodeShelfViewControllerWithSeason:(id)a3 episodes:(id)a4;
- (id)_episodesBySeasonIdentifier;
- (id)_productLockupViewWithSeason:(id)a3;
- (id)_seasonViewModelByIdentifier:(id)a3;
- (id)_seasonViewModelIdentifiers;
- (void)_buildMediaCollectionViewModel;
- (void)_updateAfterContentWasManuallyDeleted:(BOOL)a3;
- (void)_updateDeletedContentErrorMessage;
- (void)_updateEpisodeShelvesWithLatestEpisodes;
- (void)_updateMediaCollectionViewModelForSeasons;
- (void)_updateProductLockupView:(id)a3 withSeason:(id)a4;
- (void)_updateProductLockupViewWithSeasonIdentifier:(id)a3;
- (void)addDownloadButtonToProductLockupView:(id)a3 forSeason:(id)a4;
- (void)configureWithCollectionView:(id)a3;
- (void)contentDescriptionExpanded;
- (void)dataSourceDidFinishFetching:(id)a3;
- (void)libraryEpisodesShelfViewController:(id)a3 didRemoveDownloadForAssetController:(id)a4;
- (void)loadView;
- (void)showItemNotAvailableDialog;
- (void)start;
- (void)titleButtonPressedForStoreId:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation VUILibraryMediaCollectionViewController

- (VUILibraryMediaCollectionViewController)initWithTitle:(id)a3 withSeasonsDataSource:(id)a4 withEpisodesDataSource:(id)a5
{
  v23[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = VUILibraryMediaCollectionViewController;
  v12 = [(VUILibraryStackViewController *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_seasonsDataSource, a4);
    objc_storeStrong(&v13->_episodesDataSource, a5);
    v14 = objc_alloc_init(VUIViewControllerContentPresenter);
    contentPresenter = v13->_contentPresenter;
    v13->_contentPresenter = v14;

    [(VUIViewControllerContentPresenter *)v13->_contentPresenter setLogName:@"VUILibraryMediaCollectionViewController"];
    objc_storeStrong(&v13->_showTitle, a3);
    objc_initWeak(&location, v13);
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __102__VUILibraryMediaCollectionViewController_initWithTitle_withSeasonsDataSource_withEpisodesDataSource___block_invoke;
    v19[3] = &unk_1E872E760;
    objc_copyWeak(&v20, &location);
    v17 = [(VUILibraryMediaCollectionViewController *)v13 registerForTraitChanges:v16 withHandler:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __102__VUILibraryMediaCollectionViewController_initWithTitle_withSeasonsDataSource_withEpisodesDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E69DC938] currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    v3 = [WeakRetained showTitle];
    [WeakRetained setTitle:v3];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = VUILibraryMediaCollectionViewController;
  [(VUILibraryStackViewController *)&v3 viewDidAppear:a3];
  [VUILibraryMetrics recordPageEventWithPageType:@"LibraryTvShowSeason"];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = VUILibraryMediaCollectionViewController;
  [(VUILibraryMediaCollectionViewController *)&v4 loadView];
  v3 = [(VUILibraryMediaCollectionViewController *)self contentPresenter];
  [v3 setRootViewForViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUILibraryMediaCollectionViewController;
  [(VUILibraryMediaCollectionViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(VUILibraryMediaCollectionViewController *)self contentPresenter];
  v4 = [(VUILibraryMediaCollectionViewController *)self view];
  [v4 bounds];
  [v3 configureCurrentViewFrameForBounds:?];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = VUILibraryMediaCollectionViewController;
  [(VUILibraryStackViewController *)&v6 viewDidLoad];
  [(VUILibraryMediaCollectionViewController *)self start];
  v3 = [(VUILibraryStackViewController *)self stackView];
  v4 = [(VUILibraryMediaCollectionViewController *)self contentPresenter];
  [v4 setContentView:v3];

  v5 = [(VUILibraryMediaCollectionViewController *)self navigationItem];
  [v5 _setSupportsTwoLineLargeTitles:1];
  [v5 setLargeTitleDisplayMode:1];
  [(VUILibraryMediaCollectionViewController *)self setTitle:self->_showTitle];
}

- (void)configureWithCollectionView:(id)a3
{
  v4 = a3;
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUICollectionViewWrapperCellReuseIdentifier"];
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"VUILibraryEpisodeFooterCellReuseIdentifier"];
  v5 = [(VUILibraryMediaCollectionViewController *)self _createDiffableDataSourceForCollectionView:v4];

  [(VUILibraryMediaCollectionViewController *)self setDiffableDataSource:v5];
}

- (void)start
{
  contentPresenter = self->_contentPresenter;
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"LIBRARY_GENERIC_FETCH_ERROR_TITLE"];
  [(VUIViewControllerContentPresenter *)contentPresenter setNoContentErrorTitle:v5];

  [(VUIViewControllerContentPresenter *)self->_contentPresenter setCurrentContentViewType:1];
  v10 = [(VUILibraryMediaCollectionViewController *)self navigationItem];
  [v10 _setSupportsTwoLineLargeTitles:1];
  v6 = [(VUILibraryMediaCollectionViewController *)self episodesDataSource];
  [v6 setDelegate:self];

  v7 = [(VUILibraryMediaCollectionViewController *)self seasonsDataSource];
  [v7 setDelegate:self];

  v8 = [(VUILibraryMediaCollectionViewController *)self episodesDataSource];
  [v8 startFetch];

  v9 = [(VUILibraryMediaCollectionViewController *)self seasonsDataSource];
  [v9 startFetch];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  v8 = a5;
  v9 = [(VUILibraryMediaCollectionViewController *)self diffableDataSource];
  v10 = [v9 itemIdentifierForIndexPath:v8];

  v11 = [(VUILibraryMediaCollectionViewController *)self _seasonViewModelByIdentifier:v10];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = [(VUILibraryMediaCollectionViewController *)self view];
  [v12 bounds];
  v14 = v13;

  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    v15 = [(VUILibraryMediaCollectionViewController *)self vuiIsRTL];
    v16 = [(VUILibraryMediaCollectionViewController *)self view];
    [v16 safeAreaInsets];
    v18 = v17;
    v20 = v19;

    if (v15)
    {
      v14 = v14 - v20;
    }

    else
    {
      v14 = v14 - v18;
    }
  }

  v21 = [v11 type];
  switch(v21)
  {
    case 2:
      v22 = objc_alloc_init(VUILibraryEpisodeFooterCell);
      [(VUILibraryEpisodeFooterCell *)v22 sizeThatFits:v14, 1.79769313e308];
      v6 = v36;
      v7 = v37;
      goto LABEL_14;
    case 1:
      v31 = [(VUILibraryMediaCollectionViewModel *)self->_mediaCollectionViewModel episodeShelfViewControllerBySeasonIdentifier];
      v32 = [v11 seasonIdentifier];
      v22 = [v31 objectForKey:v32];

      v33 = [(VUILibraryEpisodeFooterCell *)v22 view];
      [v33 sizeThatFits:{v14, 1.79769313e308}];
      v6 = v34;
      v7 = v35;

LABEL_14:
      break;
    case 0:
      v22 = [v11 seasonIdentifier];
      v23 = [(VUILibraryMediaCollectionViewModel *)self->_mediaCollectionViewModel productLockupViewBySeasonIdentifier];
      v24 = [v23 objectForKey:v22];

      if (!v24)
      {
        v25 = [(VUILibraryMediaCollectionViewModel *)self->_mediaCollectionViewModel seasonBySeasonIdentifier];
        v26 = [v25 objectForKey:v22];

        v24 = [(VUILibraryMediaCollectionViewController *)self _productLockupViewWithSeason:v26];
        v27 = [(VUILibraryMediaCollectionViewModel *)self->_mediaCollectionViewModel productLockupViewBySeasonIdentifier];
        v28 = [v27 mutableCopy];

        [v28 setObject:v24 forKey:v22];
        [(VUILibraryMediaCollectionViewModel *)self->_mediaCollectionViewModel setProductLockupViewBySeasonIdentifier:v28];
      }

      [v24 sizeThatFits:{v14, 1.79769313e308}];
      v6 = v29;
      v7 = v30;

      goto LABEL_14;
  }

LABEL_15:

  v38 = v6;
  v39 = v7;
  result.height = v39;
  result.width = v38;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [VUIViewSpacer spacerB:a3];
  v7 = v6;
  v8 = [(VUILibraryMediaCollectionViewController *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:v8 forTraitCollection:v7];
  v10 = v9;

  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = v10;
  result.right = v13;
  result.bottom = v14;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)dataSourceDidFinishFetching:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUILibraryMediaCollectionViewController *)self seasonsDataSource];

  if (v5 == v4)
  {
    [(VUILibraryMediaCollectionViewController *)self setSeasonsFetchHasCompleted:1];
  }

  else
  {
    [(VUILibraryMediaCollectionViewController *)self setEpisodesFetchHasCompleted:1];
  }

  if ([(VUILibraryMediaCollectionViewController *)self _allFetchesHaveCompleted])
  {
    v6 = [(VUILibraryMediaCollectionViewController *)self _usingEpisodesGroupFetch];
    v7 = [(VUILibraryStackViewController *)self stackCollectionView];
    v8 = [(VUILibraryMediaCollectionViewController *)self seasonsDataSource];
    v9 = [v8 mediaEntities];
    [(VUILibraryMediaCollectionViewController *)self setSeasons:v9];

    v10 = [(VUILibraryMediaCollectionViewController *)self episodesDataSource];
    v11 = [v10 mediaEntities];
    [(VUILibraryMediaCollectionViewController *)self setEpisodes:v11];

    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(VUILibraryMediaCollectionViewController *)self seasons];
      v14 = [v13 count];
      v15 = [(VUILibraryMediaCollectionViewController *)self episodes];
      *buf = 134218240;
      v36 = v14;
      v37 = 2048;
      v38 = [v15 count];
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUILibraryMediaCollectionViewController:Setting %lu seasons, %lu episodes", buf, 0x16u);
    }

    if (v6)
    {
      v16 = [(VUILibraryMediaCollectionViewController *)self episodesDataSource];
      v17 = [v16 grouping];
      [(VUILibraryMediaCollectionViewController *)self setEpisodeGroups:v17];
    }

    v18 = [(VUILibraryMediaCollectionViewController *)self mediaCollectionViewModel];

    if (v18)
    {
      v19 = [(VUILibraryMediaCollectionViewController *)self seasonsDataSource];
      v20 = [v19 mediaEntities];
      [(VUILibraryMediaCollectionViewController *)self setSeasons:v20];

      v21 = [(VUILibraryMediaCollectionViewController *)self episodesDataSource];
      v22 = [v21 mediaEntities];
      [(VUILibraryMediaCollectionViewController *)self setEpisodes:v22];

      [(VUILibraryMediaCollectionViewController *)self _updateMediaCollectionViewModelForSeasons];
      v23 = [(VUILibraryMediaCollectionViewController *)self mediaCollectionViewModel];
      LODWORD(v22) = [v23 hasContent];

      v24 = [(VUILibraryMediaCollectionViewController *)self contentPresenter];
      v25 = v24;
      if (!v22)
      {
        [v24 setCurrentContentViewType:2];

        goto LABEL_15;
      }

      [v24 setCurrentContentViewType:3];

      v26 = [(VUILibraryMediaCollectionViewController *)self diffableDataSource];
      v27 = [(VUILibraryMediaCollectionViewController *)self _createDiffableDataSourceSnapshot];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __71__VUILibraryMediaCollectionViewController_dataSourceDidFinishFetching___block_invoke_2;
      v31[3] = &unk_1E872D990;
      v31[4] = self;
      v32 = v7;
      [v26 applySnapshot:v27 animatingDifferences:1 completion:v31];

      v28 = v32;
    }

    else
    {
      [(VUILibraryMediaCollectionViewController *)self _buildMediaCollectionViewModel];
      [(VUILibraryMediaCollectionViewController *)self _updateDeletedContentErrorMessage];
      v29 = [(VUILibraryMediaCollectionViewController *)self diffableDataSource];
      v30 = [(VUILibraryMediaCollectionViewController *)self _createDiffableDataSourceSnapshot];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __71__VUILibraryMediaCollectionViewController_dataSourceDidFinishFetching___block_invoke;
      v33[3] = &unk_1E872D990;
      v33[4] = self;
      v34 = v7;
      [v29 applySnapshot:v30 animatingDifferences:1 completion:v33];

      v28 = v34;
    }

LABEL_15:
  }
}

void __71__VUILibraryMediaCollectionViewController_dataSourceDidFinishFetching___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaCollectionViewModel];
  v3 = [v2 hasContent];

  v4 = [*(a1 + 32) contentPresenter];
  v5 = v4;
  if (v3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  [v4 setCurrentContentViewType:v6];

  v7 = [*(a1 + 40) collectionViewLayout];
  [v7 invalidateLayout];
}

void __71__VUILibraryMediaCollectionViewController_dataSourceDidFinishFetching___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateEpisodeShelvesWithLatestEpisodes];
  v2 = [*(a1 + 40) collectionViewLayout];
  [v2 invalidateLayout];

  v3 = [*(a1 + 32) stackCollectionView];
  [v3 setNeedsLayout];
}

- (void)contentDescriptionExpanded
{
  v3 = [(VUILibraryStackViewController *)self stackCollectionView];
  v2 = [v3 collectionViewLayout];
  [v2 invalidateLayout];
}

- (void)libraryEpisodesShelfViewController:(id)a3 didRemoveDownloadForAssetController:(id)a4
{
  v7 = a4;
  v5 = [(VUILibraryMediaCollectionViewController *)self episodes];
  v6 = [v5 count];

  if (v6 == 1)
  {
    -[VUILibraryMediaCollectionViewController _updateAfterContentWasManuallyDeleted:](self, "_updateAfterContentWasManuallyDeleted:", [v7 supportsStartingDownload]);
  }
}

- (void)titleButtonPressedForStoreId:(id)a3
{
  v3 = [a3 stringValue];
  if (![v3 length])
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [VUILibraryMediaCollectionViewController titleButtonPressedForStoreId:v4];
    }
  }

  v5 = +[VUIFeaturesConfiguration sharedInstance];
  v6 = [v5 canonicalConfig];

  v7 = +[VUITVAppLauncher sharedInstance];
  if (+[VUITVAppLauncher isSidebarEnabled])
  {
    v8 = [v7 splitViewController];
    v9 = [v8 isTabbarMode];
  }

  else
  {
    v9 = 1;
  }

  v10 = [v7 switchTabHandler];
  v24 = v6;
  v11 = [v6 storeTabIdentifier];
  (v10)[2](v10, v11);

  v12 = [[VUIDocumentDataSource alloc] initWithDocumentRef:@"TVShowCanonical"];
  [(VUIDocumentDataSource *)v12 setControllerRef:@"TVShowCanonical"];
  [(VUIDocumentDataSource *)v12 setDocumentType:@"canonical"];
  v13 = [[VUIDocumentContextDataTVShow alloc] initWithAdamID:v3];
  [(VUIDocumentDataSource *)v12 setContextData:v13];
  v14 = objc_alloc_init(VUIDocumentUIConfiguration);
  [(VUIDocumentUIConfiguration *)v14 setType:1];
  [(VUIDocumentUIConfiguration *)v14 setAnimated:1];
  [(VUIDocumentDataSource *)v12 setUiConfiguration:v14];
  v15 = [v7 appController];
  v16 = [v15 appContext];

  v17 = +[VUIInterfaceFactory sharedInstance];
  v18 = [v17 viewControllerWithDocumentDataSource:v12 appContext:v16];

  if (v18)
  {
    v19 = [v7 appController];
    v20 = [v19 navigationController];

    if (v9)
    {
      [v7 tabBarController];
    }

    else
    {
      [v7 splitViewController];
    }
    v21 = ;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v21 vuiPresentedViewController], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __72__VUILibraryMediaCollectionViewController_titleButtonPressedForStoreId___block_invoke;
      v25[3] = &unk_1E872D990;
      v26 = v20;
      v27 = v18;
      [v21 vui_dismissViewControllerAnimated:1 completion:v25];
    }

    else
    {
      [v20 pushViewController:v18 animated:1];
    }
  }

  else
  {
    [(VUILibraryMediaCollectionViewController *)self showItemNotAvailableDialog];
  }
}

- (void)showItemNotAvailableDialog
{
  v3 = +[VUILocalizationManager sharedInstance];
  v10 = [v3 localizedStringForKey:@"TV.Library.Item.Not.Available.Title"];

  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"TV.Library.Item.Not.Available.Message"];

  v6 = [VUIAlertController vui_alertControllerWithTitle:v10 message:v5 preferredStyle:1];
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:@"OK"];
  v9 = [VUIAlertAction vui_actionWithTitle:v8 style:0 handler:0];

  [v6 vui_addAction:v9];
  [v6 vui_presentAlertFromPresentingController:self animated:1 completion:0];
}

- (id)_createDiffableDataSourceForCollectionView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__VUILibraryMediaCollectionViewController__createDiffableDataSourceForCollectionView___block_invoke;
  v9[3] = &unk_1E8737010;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = [v5 initWithCollectionView:v6 cellProvider:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

id __86__VUILibraryMediaCollectionViewController__createDiffableDataSourceForCollectionView___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained _seasonViewModelByIdentifier:v7];

  v10 = [v9 type];
  switch(v10)
  {
    case 2:
      v11 = [*(a1 + 32) dequeueReusableCellWithReuseIdentifier:@"VUILibraryEpisodeFooterCellReuseIdentifier" forIndexPath:v6];
      v30 = [WeakRetained mediaCollectionViewModel];
      v31 = [v30 seasonBySeasonIdentifier];
      v32 = [v9 seasonIdentifier];
      v12 = [v31 objectForKey:v32];

      v33 = [v12 storeID];
      [v11 setStoreID:v33];

      v34 = MEMORY[0x1E696AEC0];
      v35 = +[VUILocalizationManager sharedInstance];
      v36 = [v35 localizedStringForKey:@"GET_MORE_EPISODES"];
      v37 = +[VUILocalizationManager sharedInstance];
      v38 = [v37 localizedStringForKey:@"PRODUCT_DESCRIPTION_MORE_ELLIPSES"];
      v39 = [v34 stringWithFormat:@"%@%@", v36, v38];
      [v11 setTitle:v39];

      [v11 setDelegate:WeakRetained];
      goto LABEL_11;
    case 1:
      v11 = [*(a1 + 32) dequeueReusableCellWithReuseIdentifier:@"VUILibraryCollectionCellReuseIdentifier" forIndexPath:v6];
      v27 = [WeakRetained mediaCollectionViewModel];
      v28 = [v27 episodeShelfViewControllerBySeasonIdentifier];
      v29 = [v9 seasonIdentifier];
      v12 = [v28 objectForKey:v29];

      [v11 setViewController:v12];
LABEL_11:

      goto LABEL_13;
    case 0:
      v11 = [*(a1 + 32) dequeueReusableCellWithReuseIdentifier:@"VUICollectionViewWrapperCellReuseIdentifier" forIndexPath:v6];
      v12 = [v9 seasonIdentifier];
      v13 = [WeakRetained mediaCollectionViewModel];
      v14 = [v13 productLockupViewBySeasonIdentifier];

      if (!v14)
      {
        v15 = [WeakRetained mediaCollectionViewModel];
        v16 = objc_alloc_init(MEMORY[0x1E695DF20]);
        [v15 setProductLockupViewBySeasonIdentifier:v16];
      }

      v17 = [WeakRetained mediaCollectionViewModel];
      v18 = [v17 productLockupViewBySeasonIdentifier];
      v19 = [v18 objectForKey:v12];

      if (!v19)
      {
        v20 = [WeakRetained mediaCollectionViewModel];
        v21 = [v20 seasonBySeasonIdentifier];
        v22 = [v21 objectForKey:v12];

        v19 = [WeakRetained _productLockupViewWithSeason:v22];
        v23 = [WeakRetained mediaCollectionViewModel];
        v24 = [v23 productLockupViewBySeasonIdentifier];
        v25 = [v24 mutableCopy];

        [v25 setObject:v19 forKey:v12];
        v26 = [WeakRetained mediaCollectionViewModel];
        [v26 setProductLockupViewBySeasonIdentifier:v25];
      }

      [v11 setChildView:v19];

      goto LABEL_11;
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)_createDiffableDataSourceSnapshot
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10[0] = @"MediaCollectionMainSection";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  v5 = [(VUILibraryMediaCollectionViewController *)self _seasonViewModelIdentifiers];
  [v3 appendItemsWithIdentifiers:v5 intoSectionWithIdentifier:@"MediaCollectionMainSection"];
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v5 count];
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUILibraryMediaCollectionViewController:Creating snapshot with %lu season view models", &v8, 0xCu);
  }

  return v3;
}

- (id)_seasonViewModelIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(VUILibraryMediaCollectionViewController *)self mediaCollectionViewModel];
  v5 = [v4 seasonViewModels];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) identifier];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v3 array];

  return v11;
}

- (id)_seasonViewModelByIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(VUILibraryMediaCollectionViewController *)self mediaCollectionViewModel];
  v6 = [v5 seasonViewModels];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_updateEpisodeShelvesWithLatestEpisodes
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(VUILibraryMediaCollectionViewController *)self mediaCollectionViewModel];
  v4 = [v3 seasonViewModels];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 type];
        v11 = [v9 seasonIdentifier];
        if (v10)
        {
          if (v10 == 1)
          {
            v12 = [(VUILibraryMediaCollectionViewController *)self mediaCollectionViewModel];
            v13 = [v12 episodeShelfViewControllerBySeasonIdentifier];
            v14 = [v13 objectForKey:v11];

            v15 = [(VUILibraryMediaCollectionViewController *)self mediaCollectionViewModel];
            v16 = [v15 episodesBySeasonIdentifer];
            v17 = [v16 objectForKey:v11];

            if (v14 && v17)
            {
              [v14 updateWithEpisodes:v17];
            }

            [(VUILibraryMediaCollectionViewController *)self _updateProductLockupViewWithSeasonIdentifier:v11];
          }
        }

        else
        {
          [(VUILibraryMediaCollectionViewController *)self _updateProductLockupViewWithSeasonIdentifier:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (void)_updateAfterContentWasManuallyDeleted:(BOOL)a3
{
  if (!a3)
  {
    v5 = [(VUILibraryMediaCollectionViewController *)self contentPresenter];
    [v5 setContentHasBeenManuallyDeleted:1];

    [(VUILibraryDataSource *)self->_episodesDataSource setDelegate:0];
    [(VUILibraryDataSource *)self->_seasonsDataSource setDelegate:0];
    v7 = [(VUILibraryMediaCollectionViewController *)self navigationController];
    v6 = [v7 popViewControllerAnimated:1];
  }
}

- (void)_updateDeletedContentErrorMessage
{
  if ([(VUILibraryMediaCollectionViewController *)self canShowMultipleSeasons])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = +[VUILocalizationManager sharedInstance];
    v5 = v4;
    v6 = @"GENERIC_DELETED_ERROR_MESSAGE_FORMAT";
  }

  else
  {
    v7 = [(VUIMediaEntity *)self->_mediaCollection seasonNumber];
    v8 = [v7 unsignedIntegerValue];

    v3 = MEMORY[0x1E696AEC0];
    v4 = +[VUILocalizationManager sharedInstance];
    v5 = v4;
    if (v8)
    {
      v9 = [v4 localizedStringForKey:@"SPECIFIC_SEASON_DELETED_ERROR_MESSAGE_FORMAT"];
      [v3 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%lu %@" error:0, v8, self->_showTitle];
      goto LABEL_7;
    }

    v6 = @"GENERIC_SEASON_DELETED_ERROR_MESSAGE_FORMAT";
  }

  v9 = [v4 localizedStringForKey:v6];
  [v3 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, self->_showTitle, v10];
  v11 = LABEL_7:;

  [(VUIViewControllerContentPresenter *)self->_contentPresenter setDeletedContentErrorMessage:v11];
}

- (id)_episodesBySeasonIdentifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (self->_episodeGroups)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    episodeGroups = self->_episodeGroups;
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __70__VUILibraryMediaCollectionViewController__episodesBySeasonIdentifier__block_invoke;
    v11 = &unk_1E8736808;
    v12 = v3;
    v5 = v3;
    [(NSArray *)episodeGroups enumerateObjectsUsingBlock:&v8];
    v6 = [v5 copy];
  }

  else
  {
    v5 = [(VUIMediaEntity *)self->_mediaCollection identifier];
    v13 = v5;
    v14[0] = self->_episodes;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  return v6;
}

void __70__VUILibraryMediaCollectionViewController__episodesBySeasonIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 mediaEntities];
  v4 = [v3 identifier];

  [*(a1 + 32) setObject:v5 forKey:v4];
}

- (BOOL)_usingEpisodesGroupFetch
{
  v2 = [(VUIMediaEntity *)self->_mediaCollection type];
  v3 = +[VUIMediaEntityType show];
  v4 = v2 == v3;

  return v4;
}

- (void)_buildMediaCollectionViewModel
{
  v3 = objc_alloc_init(VUILibraryMediaCollectionViewModel);
  mediaCollectionViewModel = self->_mediaCollectionViewModel;
  self->_mediaCollectionViewModel = v3;

  [(VUILibraryMediaCollectionViewController *)self _updateMediaCollectionViewModelForSeasons];
}

- (void)_updateMediaCollectionViewModelForSeasons
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = [(VUILibraryMediaCollectionViewController *)self _episodesBySeasonIdentifier];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = [(VUILibraryMediaCollectionViewModel *)self->_mediaCollectionViewModel episodeShelfViewControllerBySeasonIdentifier];
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self;
  obj = self->_seasons;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v21 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [v7 identifier];
        [v24 setObject:v7 forKey:v8];
        v9 = [v23 objectForKey:v8];
        if (!v9)
        {
          v10 = [v19 objectForKey:v8];
          v9 = [(VUILibraryMediaCollectionViewController *)v18 _episodeShelfViewControllerWithSeason:v7 episodes:v10];
        }

        [v22 setObject:v9 forKey:v8];
        v11 = [[VUILibrarySeasonViewModel alloc] initWithSeasonIdentifier:v8 type:0];
        [v3 addObject:v11];
        v12 = [[VUILibrarySeasonViewModel alloc] initWithSeasonIdentifier:v8 type:1];
        [v3 addObject:v12];
        v13 = [v7 storeID];
        v14 = [v13 integerValue];

        if (v14)
        {
          v15 = [[VUILibrarySeasonViewModel alloc] initWithSeasonIdentifier:v8 type:2];
          [v3 addObject:v15];
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  mediaCollectionViewModel = v18->_mediaCollectionViewModel;
  v17 = [v3 copy];
  [(VUILibraryMediaCollectionViewModel *)mediaCollectionViewModel setSeasonViewModels:v17];

  [(VUILibraryMediaCollectionViewModel *)v18->_mediaCollectionViewModel setSeasonBySeasonIdentifier:v24];
  [(VUILibraryMediaCollectionViewModel *)v18->_mediaCollectionViewModel setEpisodeShelfViewControllerBySeasonIdentifier:v22];
  [(VUILibraryMediaCollectionViewModel *)v18->_mediaCollectionViewModel setEpisodesBySeasonIdentifer:v19];
}

- (id)_productLockupViewWithSeason:(id)a3
{
  v4 = a3;
  v5 = [VUIProductLockupView alloc];
  v6 = [(VUIProductLockupView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(VUIProductLockupView *)v6 setDelegate:self];
  [(VUILibraryMediaCollectionViewController *)self _updateProductLockupView:v6 withSeason:v4];

  return v6;
}

- (void)_updateProductLockupViewWithSeasonIdentifier:(id)a3
{
  mediaCollectionViewModel = self->_mediaCollectionViewModel;
  v5 = a3;
  v6 = [(VUILibraryMediaCollectionViewModel *)mediaCollectionViewModel productLockupViewBySeasonIdentifier];
  v10 = [v6 objectForKey:v5];

  v7 = [(VUILibraryMediaCollectionViewModel *)self->_mediaCollectionViewModel seasonBySeasonIdentifier];
  v8 = [v7 objectForKey:v5];

  if (v10)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [(VUILibraryMediaCollectionViewController *)self _updateProductLockupView:v10 withSeason:v8];
  }
}

- (void)_updateProductLockupView:(id)a3 withSeason:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 updateWithMediaEntity:v6];
  [(VUILibraryMediaCollectionViewController *)self addDownloadButtonToProductLockupView:v7 forSeason:v6];
}

- (id)_episodeShelfViewControllerWithSeason:(id)a3 episodes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[VUILibraryEpisodeShelfViewController alloc] initWithEpisodes:v6 season:v7];

  [(VUILibraryEpisodeShelfViewController *)v8 setDelegate:self];

  return v8;
}

- (void)addDownloadButtonToProductLockupView:(id)a3 forSeason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 downloadView];

  if (!v8)
  {
    v9 = [v7 assetController];
    if (v9)
    {
      v10 = [[VUIDownloadButton alloc] initWithMediaEntity:v7 type:9];
    }

    else
    {
      v10 = 0;
    }

    [(VUIDownloadButton *)v10 setUsesDefaultConfiguration:1];
    [(VUIDownloadButton *)v10 setPresentingViewController:self];
    if (v10)
    {
      v11 = [v9 supportsStartingDownload];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __90__VUILibraryMediaCollectionViewController_addDownloadButtonToProductLockupView_forSeason___block_invoke;
      v12[3] = &unk_1E8737038;
      objc_copyWeak(&v13, &location);
      v14 = v11;
      [(VUIDownloadButton *)v10 setDownloadStateChangeHandler:v12];
      [v6 setDownloadView:v10];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __90__VUILibraryMediaCollectionViewController_addDownloadButtonToProductLockupView_forSeason___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a3)
  {
    v8 = WeakRetained;
    v6 = [WeakRetained seasons];
    v7 = [v6 count];

    WeakRetained = v8;
    if (v7 == 1)
    {
      [v8 _updateAfterContentWasManuallyDeleted:*(a1 + 40)];
      WeakRetained = v8;
    }
  }
}

- (BOOL)_allFetchesHaveCompleted
{
  v3 = [(VUILibraryMediaCollectionViewController *)self episodesFetchHasCompleted];
  if (v3)
  {

    LOBYTE(v3) = [(VUILibraryMediaCollectionViewController *)self seasonsFetchHasCompleted];
  }

  return v3;
}

@end