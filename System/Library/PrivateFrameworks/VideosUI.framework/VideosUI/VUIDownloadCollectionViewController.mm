@interface VUIDownloadCollectionViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (VUIDownloadCollectionViewController)initWithDataSource:(id)a3;
- (double)_computeBottomMargin;
- (id)_configureAlertController;
- (id)_createCollectionView;
- (id)_createDiffableDataSource;
- (id)_createDiffableDataSourceSnapshot;
- (id)_createIdentifierToDownloadEntityDictionary;
- (id)_deleteActionTitleString;
- (id)_identifiersForDownloadEntities;
- (void)_batchSelectToggled;
- (void)_clearSelections;
- (void)_configureNavigationBarForEditingMode;
- (void)_deleteDownloadEntities:(id)a3;
- (void)_deleteMediaEntitiesInDownloadEntities:(id)a3;
- (void)_editToggled;
- (void)_enterEditingMode;
- (void)_exitEditingMode;
- (void)_selectAllCells;
- (void)_toggleRightBarEditItemIfNeeded;
- (void)_updateAllVisibleCellsForEditingMode;
- (void)_updateLayoutForSize:(CGSize)a3;
- (void)_updateNavigationBarPadding;
- (void)_updateSelectAllBarButtonItemIfNecessary;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)downloadCellDidRequestCancelDownload:(id)a3;
- (void)downloadManager:(id)a3 downloadedFetchDidFinishWithEntities:(id)a4;
- (void)downloadManager:(id)a3 downloadsDidChange:(id)a4;
- (void)loadView;
- (void)setDownloadEntities:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VUIDownloadCollectionViewController

- (VUIDownloadCollectionViewController)initWithDataSource:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = VUIDownloadCollectionViewController;
  v5 = [(VUIDownloadCollectionViewController *)&v19 init];
  v6 = v5;
  if (v5)
  {
    [(VUIDownloadCollectionViewController *)v5 setDownloadDataSource:v4];
    v7 = +[VUILocalizationManager sharedInstance];
    v8 = [v7 localizedStringForKey:@"DOWNLOADED"];
    [(VUIDownloadCollectionViewController *)v6 setTitle:v8];

    [(VUIDownloadCollectionViewController *)v6 setGridStyle:6];
    [(VUIDownloadCollectionViewController *)v6 setGridType:1];
    v9 = objc_alloc_init(VUIViewControllerContentPresenter);
    contentPresenter = v6->_contentPresenter;
    v6->_contentPresenter = v9;

    [(VUIViewControllerContentPresenter *)v6->_contentPresenter setLogName:@"VUIDownloadCollectionViewController"];
    v6->_isEditing = 0;
    v6->_isSelectingAll = 0;
    v6->_lastViewWidth = 0.0;
    v11 = [(VUIDownloadCollectionViewController *)v6 view];
    v12 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=Downloaded"];
    [v11 setAccessibilityIdentifier:v12];

    objc_initWeak(&location, v6);
    v20[0] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__VUIDownloadCollectionViewController_initWithDataSource___block_invoke;
    v16[3] = &unk_1E872E760;
    objc_copyWeak(&v17, &location);
    v14 = [(VUIDownloadCollectionViewController *)v6 registerForTraitChanges:v13 withHandler:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __58__VUIDownloadCollectionViewController_initWithDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 bounds];
  [WeakRetained _updateLayoutForSize:{v2, v3}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v16 viewWillAppear:?];
  v5 = self->_collectionView;
  v6 = [(VUILegacyCollectionView *)v5 indexPathsForSelectedItems];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [(VUIDownloadCollectionViewController *)self transitionCoordinator];
    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54__VUIDownloadCollectionViewController_viewWillAppear___block_invoke;
      v12[3] = &unk_1E872D878;
      v13 = v5;
      v14 = v7;
      v15 = a3;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__VUIDownloadCollectionViewController_viewWillAppear___block_invoke_2;
      v9[3] = &unk_1E872D8A0;
      v10 = v13;
      v11 = v14;
      [v8 animateAlongsideTransition:v12 completion:v9];
    }

    else
    {
      [(VUILegacyCollectionView *)v5 deselectItemAtIndexPath:v7 animated:1];
    }
  }
}

uint64_t __54__VUIDownloadCollectionViewController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
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

- (void)loadView
{
  v33.receiver = self;
  v33.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v33 loadView];
  v3 = [(VUIDownloadCollectionViewController *)self contentPresenter];
  [v3 setRootViewForViewController:self];

  v4 = [(VUIDownloadCollectionViewController *)self _createCollectionView];
  [(VUIDownloadCollectionViewController *)self setCollectionView:v4];

  v5 = [(VUIDownloadCollectionViewController *)self _createDiffableDataSource];
  [(VUIDownloadCollectionViewController *)self setDiffableDataSource:v5];

  if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = +[VUILocalizationManager sharedInstance];
    v8 = [v7 localizedStringForKey:@"EDIT"];
    v9 = [v6 initWithTitle:v8 style:0 target:self action:sel__editToggled];
    rightBarButtonItem = self->_rightBarButtonItem;
    self->_rightBarButtonItem = v9;

    v11 = [(VUIDownloadCollectionViewController *)self navigationItem];
    [v11 setRightBarButtonItem:self->_rightBarButtonItem];

    v12 = objc_alloc(MEMORY[0x1E69DC708]);
    v13 = +[VUILocalizationManager sharedInstance];
    v14 = [v13 localizedStringForKey:@"SELECT_ALL"];
    v15 = [v12 initWithTitle:v14 style:0 target:self action:sel__batchSelectToggled];
    selectAllBarButtonItem = self->_selectAllBarButtonItem;
    self->_selectAllBarButtonItem = v15;
  }

  v17 = [(VUIDownloadCollectionViewController *)self navigationItem];
  v18 = [v17 leftBarButtonItem];
  backBarButtonItem = self->_backBarButtonItem;
  self->_backBarButtonItem = v18;

  v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  leftBarButtonItem = self->_leftBarButtonItem;
  self->_leftBarButtonItem = v20;

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__VUIDownloadCollectionViewController_loadView__block_invoke;
  aBlock[3] = &unk_1E872F5D0;
  objc_copyWeak(&v31, &location);
  v22 = _Block_copy(aBlock);
  if (_os_feature_enabled_impl())
  {
    v23 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __47__VUIDownloadCollectionViewController_loadView__block_invoke_3;
    v29[3] = &unk_1E872E470;
    v29[4] = v22;
    [_TtC8VideosUI22VUIBagServiceProxyObjC isFullTVAppEnabledWithCompletionHandler:v29];
  }

  else
  {
    v24 = MEMORY[0x1E69E15F8];
    v23 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __47__VUIDownloadCollectionViewController_loadView__block_invoke_70;
    v28[3] = &unk_1E872D790;
    v28[4] = v22;
    [v24 isFullTVAppEnabledwithCompletion:v28];
  }

  v25 = [(VUIDownloadCollectionViewController *)self contentPresenter];
  [v25 setCurrentContentViewType:1];

  v26 = [(VUIDownloadCollectionViewController *)self contentPresenter];
  v27 = [(VUIDownloadCollectionViewController *)self collectionView];
  [v26 setContentView:v27];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __47__VUIDownloadCollectionViewController_loadView__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__VUIDownloadCollectionViewController_loadView__block_invoke_2;
  v3[3] = &unk_1E872EDE0;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __47__VUIDownloadCollectionViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v2 = *(a1 + 40);
    v3 = [WeakRetained contentPresenter];
    v4 = +[VUILocalizationManager sharedInstance];
    v5 = v4;
    if (v2 == 1)
    {
      v6 = [v4 localizedStringForKey:@"LIBRARY_EMPTY_TITLE_NEW"];
      [v3 setNoContentErrorTitle:v6];

      v7 = [WeakRetained contentPresenter];
      v8 = +[VUILocalizationManager sharedInstance];
      v9 = v8;
      v10 = @"LIBRARY_EMPTY_DESCRIPTION_NEW";
LABEL_6:
      v14 = [v8 localizedStringForKey:v10];
      goto LABEL_8;
    }

LABEL_5:
    v13 = [v5 localizedStringForKey:@"LIBRARY_EMPTY_TITLE_LIBRARY_ONLY"];
    [v3 setNoContentErrorTitle:v13];

    v7 = [WeakRetained contentPresenter];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = v8;
    v10 = @"LIBRARY_EMPTY_DESCRIPTION_LIBRARY_ONLY";
    goto LABEL_6;
  }

  v11 = WLKIsRegulatedSKU();
  v3 = [WeakRetained contentPresenter];
  v12 = +[VUILocalizationManager sharedInstance];
  v5 = v12;
  if (v11)
  {
    goto LABEL_5;
  }

  v15 = [v12 localizedStringForKey:@"LIBRARY_EMPTY_TITLE_NO_CONNECTION"];
  [v3 setNoContentErrorTitle:v15];

  v7 = [WeakRetained contentPresenter];
  v9 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v14 = [v9 localizedStringForKey:@"LIBRARY_EMPTY_DESCRIPTION_NO_CONNNECTION" value:0 table:@"VideosUIEmbedded"];
LABEL_8:
  v16 = v14;
  [v7 setNoContentErrorMessage:v14];

  v17 = [WeakRetained contentPresenter];
  [v17 refreshNoContentViewIfNeeded];

  [WeakRetained _toggleRightBarEditItemIfNeeded];
}

void __47__VUIDownloadCollectionViewController_loadView__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __47__VUIDownloadCollectionViewController_loadView__block_invoke_3_cold_1(a2, v5, v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v6 viewDidAppear:a3];
  [(VUIDownloadCollectionViewController *)self _updateNavigationBarPadding];
  v4 = [(VUIDownloadCollectionViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 sizeToFit];

  [VUILibraryMetrics recordPageEventWithPageType:@"LibraryDownloaded"];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v18 viewDidLoad];
  v3 = [(VUIDownloadCollectionViewController *)self downloadDataSource];
  [v3 setDownloadDelegate:self];

  v4 = [(VUIDownloadCollectionViewController *)self downloadDataSource];
  v5 = [v4 hasCompletedInitialFetch];

  if (v5)
  {
    v6 = [(VUIDownloadCollectionViewController *)self downloadDataSource];
    v7 = [v6 downloadEntities];
    v8 = [v7 mutableCopy];
    [(VUIDownloadCollectionViewController *)self setDownloadEntities:v8];

    v9 = [(VUIDownloadCollectionViewController *)self downloadEntities];
    v10 = [v9 count];

    v11 = [(VUIDownloadCollectionViewController *)self contentPresenter];
    v12 = v11;
    if (v10)
    {
      v13 = [v11 currentContentViewType];

      if (v13 != 3)
      {
        v14 = [(VUIDownloadCollectionViewController *)self contentPresenter];
        [v14 setCurrentContentViewType:3];
      }

      v12 = [(VUIDownloadCollectionViewController *)self diffableDataSource];
      v15 = [(VUIDownloadCollectionViewController *)self _createDiffableDataSourceSnapshot];
      [v12 applySnapshot:v15 animatingDifferences:v13 == 3 completion:0];
    }

    else
    {
      [v11 setCurrentContentViewType:2];
    }
  }

  else
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "[VUIDownloadCollectionViewController] Fetching downloads", v17, 2u);
    }

    v12 = [(VUIDownloadCollectionViewController *)self downloadDataSource];
    [v12 startFetch];
  }
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = VUIDownloadCollectionViewController;
  [(VUIDownloadCollectionViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(VUIDownloadCollectionViewController *)self contentPresenter];
  v4 = [(VUIDownloadCollectionViewController *)self view];
  [v4 bounds];
  [v3 configureCurrentViewFrameForBounds:?];

  v5 = [(VUIDownloadCollectionViewController *)self view];
  [v5 bounds];
  [(VUIDownloadCollectionViewController *)self _updateLayoutForSize:v6, v7];

  [(VUIDownloadCollectionViewController *)self _updateNavigationBarPadding];
}

- (void)setDownloadEntities:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 identifier];
        if (v12)
        {
          v13 = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
          v14 = [v13 objectForKey:v12];

          if (v14)
          {
            v15 = [v11 mediaEntities];
            v16 = [v15 copy];
            [v14 setMediaEntities:v16];

            v17 = v5;
            v18 = v14;
          }

          else
          {
            v17 = v5;
            v18 = v11;
          }

          [(NSMutableArray *)v17 addObject:v18];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  downloadEntities = self->_downloadEntities;
  self->_downloadEntities = v5;

  v20 = [(VUIDownloadCollectionViewController *)self _createIdentifierToDownloadEntityDictionary];
  [(VUIDownloadCollectionViewController *)self setIdentifierToDownloadEntityDictionary:v20];

  [(VUIDownloadCollectionViewController *)self _toggleRightBarEditItemIfNeeded];
}

- (void)_toggleRightBarEditItemIfNeeded
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v4 = [v3 count];

  v5 = [(VUIDownloadCollectionViewController *)self navigationItem];
  v6 = v5;
  if (v4)
  {
    v8[0] = self->_rightBarButtonItem;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v6 setRightBarButtonItems:v7];
  }

  else
  {
    [v5 setRightBarButtonItems:MEMORY[0x1E695E0F0]];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = VUIDownloadCollectionViewController;
  v7 = a4;
  [(VUIDownloadCollectionViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__VUIDownloadCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __90__VUIDownloadCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 view];
  [v4 bounds];
  [v1 _updateLayoutForSize:{v2, v3}];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v9 = a4;
  v7 = a5;
  [v9 setEditing:{-[VUIDownloadCollectionViewController isEditing](self, "isEditing")}];
  if ([(VUIDownloadCollectionViewController *)self isEditing]&& [(VUIDownloadCollectionViewController *)self isSelectingAll])
  {
    v8 = [(VUIDownloadCollectionViewController *)self collectionView];
    [v8 selectItemAtIndexPath:v7 animated:1 scrollPosition:0];

    [v9 setSelected:1];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v96[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(VUIDownloadCollectionViewController *)self isEditing])
  {
    v8 = [v6 cellForItemAtIndexPath:v7];
    [v8 setSelected:1 animated:1];
    [(VUIDownloadCollectionViewController *)self _updateSelectAllBarButtonItemIfNecessary];
  }

  else
  {
    [v6 deselectItemAtIndexPath:v7 animated:0];
    v9 = [(VUIDownloadCollectionViewController *)self diffableDataSource];
    v10 = [v9 itemIdentifierForIndexPath:v7];

    v11 = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
    v83 = [v11 objectForKey:v10];

    v12 = [v83 mediaEntities];
    v13 = [v12 firstObject];

    if (!v13)
    {
      v24 = VUIDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [VUIDownloadCollectionViewController collectionView:v10 didSelectItemAtIndexPath:v24];
      }

      goto LABEL_37;
    }

    if ([v83 downloadType])
    {
      if ([v83 downloadType] == 1 || objc_msgSend(v83, "downloadType") == 2)
      {
        [VUILibraryMetrics recordClickOnMediaEntity:v13];
        v14 = [[VUIDownloadShowDataSource alloc] initWithMediaEntity:v13];
        v15 = [v13 showIdentifier];
        v16 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithShowIdentifier:v15];
        v17 = [v13 mediaLibrary];
        v18 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v16 withLibrary:v17];

        v19 = [[VUIDownloadShowTableViewController alloc] initWithDataSource:v14 seasonsDataSource:v18];
        v20 = [v13 showTitle];

        if (v20)
        {
          v21 = [(VUIDownloadShowTableViewController *)v19 navigationItem];
          v22 = [v13 showTitle];
          [v21 setTitle:v22];
        }

        v23 = [(VUIDownloadCollectionViewController *)self navigationController];
        [v23 pushViewController:v19 animated:1];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v82 = v13;
        v25 = [v82 downloadExpirationDate];
        v81 = v25;
        if (v25 && ![v25 vui_isInTheFuture])
        {
          v30 = [v82 availabilityEndDate];
          v28 = v30;
          if (v30 && ![(VUIMediaInfo *)v30 vui_isInTheFuture])
          {
            objc_initWeak(&location, self);
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3;
            aBlock[3] = &unk_1E872E4B8;
            objc_copyWeak(&v87, &location);
            v73 = _Block_copy(aBlock);
            v79 = MEMORY[0x1E696AEC0];
            v58 = +[VUILocalizationManager sharedInstance];
            v59 = [v58 localizedStringForKey:@"DOWNLOAD_MESSAGE_NO_LONGER_AVAILABLE"];
            v60 = [v82 brandName];
            v75 = [v79 stringWithValidatedFormat:v59 validFormatSpecifiers:@"%@" error:0, v60];

            v61 = MEMORY[0x1E69DC650];
            v62 = +[VUILocalizationManager sharedInstance];
            v63 = [v62 localizedStringForKey:@"DOWNLOAD_NO_LONGER_AVAILABLE"];
            v80 = [v61 alertControllerWithTitle:v63 message:v75 preferredStyle:1];

            v64 = MEMORY[0x1E69DC648];
            v65 = +[VUILocalizationManager sharedInstance];
            v66 = [v65 localizedStringForKey:@"DELETE"];
            v84[0] = MEMORY[0x1E69E9820];
            v84[1] = 3221225472;
            v84[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_4;
            v84[3] = &unk_1E872E850;
            v67 = v73;
            v85 = v67;
            v68 = [v64 actionWithTitle:v66 style:0 handler:v84];

            [v80 addAction:v68];
            [(VUIDownloadCollectionViewController *)self presentViewController:v80 animated:1 completion:0];

            objc_destroyWeak(&v87);
            objc_destroyWeak(&location);
          }

          else if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
          {
            v74 = [v82 allowsManualDownloadRenewal];
            v31 = +[VUILocalizationManager sharedInstance];
            v32 = v31;
            if (v74)
            {
              v33 = @"RENEW_DOWNLOAD";
            }

            else
            {
              v33 = @"DOWNLOAD_AGAIN";
            }

            if (v74)
            {
              v34 = @"RENEW_DOWNLOAD";
            }

            else
            {
              v34 = @"DOWNLOAD_AGAIN_BUTTON_TITLE";
            }

            v35 = @"DOWNLOAD_MESSAGE_REDOWNLOAD";
            if (v74)
            {
              v35 = @"DOWNLOAD_MESSAGE_RENEW";
            }

            v76 = v35;
            v72 = [v31 localizedStringForKey:v33];

            v36 = +[VUILocalizationManager sharedInstance];
            v71 = [v36 localizedStringForKey:v34];

            v69 = MEMORY[0x1E696AEC0];
            v37 = +[VUILocalizationManager sharedInstance];
            v38 = [v37 localizedStringForKey:v76];
            v39 = [v82 brandName];
            v70 = [v69 stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:0, v39];

            v77 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v72 message:v70 preferredStyle:1];
            objc_initWeak(&location, self);
            v40 = MEMORY[0x1E69DC648];
            v88[0] = MEMORY[0x1E69E9820];
            v88[1] = 3221225472;
            v88[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_108;
            v88[3] = &unk_1E8733A88;
            objc_copyWeak(&v91, &location);
            v41 = v82;
            v92 = v74;
            v89 = v41;
            v90 = self;
            v42 = [v40 actionWithTitle:v71 style:0 handler:v88];
            [v77 addAction:v42];
            v43 = MEMORY[0x1E69DC648];
            v44 = +[VUILocalizationManager sharedInstance];
            v45 = [v44 localizedStringForKey:@"CANCEL"];
            v46 = [v43 actionWithTitle:v45 style:1 handler:0];

            [v77 addAction:v46];
            [(VUIDownloadCollectionViewController *)self presentViewController:v77 animated:1 completion:0];

            objc_destroyWeak(&v91);
            objc_destroyWeak(&location);
          }

          else
          {
            v49 = MEMORY[0x1E69DC650];
            v78 = +[VUILocalizationManager sharedInstance];
            v50 = [v78 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW"];
            v51 = +[VUILocalizationManager sharedInstance];
            v52 = [v51 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW_MESSAGE"];
            v53 = [v49 alertControllerWithTitle:v50 message:v52 preferredStyle:1];

            v54 = MEMORY[0x1E69DC648];
            v55 = +[VUILocalizationManager sharedInstance];
            v56 = [v55 localizedStringForKey:@"OK"];
            v57 = [v54 actionWithTitle:v56 style:1 handler:0];

            [v53 addAction:v57];
            [(VUIDownloadCollectionViewController *)self presentViewController:v53 animated:1 completion:0];
          }
        }

        else
        {
          v26 = [VUIMediaInfo alloc];
          v96[0] = v82;
          v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
          v28 = [(VUIMediaInfo *)v26 initWithPlaybackContext:3 vuiMediaItems:v27];

          [(VUIMediaInfo *)v28 setIntent:1];
          [(VUIMediaInfo *)v28 setAutomaticPlaybackStart:0];
          if (v28)
          {
            v94[0] = MEMORY[0x1E69E9820];
            v94[1] = 3221225472;
            v94[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
            v94[3] = &unk_1E872D768;
            v95 = v82;
            [VUIActionPlay playMediaInfo:v28 watchType:0 isRentAndWatchNow:0 completion:v94];
            v29 = v95;
          }

          else
          {
            v29 = VUIDefaultLogObject();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [VUIDownloadShowTableViewController tableView:v82 didSelectRowAtIndexPath:v29];
            }
          }
        }
      }
    }
  }

  v47 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
  v48 = [v47 isEnabled];

  if ((v48 & 1) == 0)
  {
    v10 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    [v10 setEnabled:1];
LABEL_37:
  }
}

void __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) assetController];

    if (v3)
    {
      if (*(a1 + 56) == 1)
      {
        v4 = [*(a1 + 32) assetController];
        [v4 fetchNewKeysForDownloadedVideo];
      }

      else
      {
        v5 = +[VUIDownloadManager sharedInstance];
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        v8 = [v6 assetController];
        v9 = [v8 contentAllowsCellularDownload];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
        v10[3] = &unk_1E872E878;
        v11 = *(a1 + 32);
        [v5 preflightDownloadForLibraryMediaEntity:v6 presentingViewController:v7 contentAllowsCellularDownload:v9 completion:v10];
      }
    }
  }
}

void __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = [*(a1 + 32) assetController];
    [v6 startDownloadAllowingCellular:a3 quality:a4 shouldMarkAsDeletedOnCancellationOrFailure:0 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:0];
  }
}

void __79__VUIDownloadCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [WeakRetained collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [WeakRetained downloadEntities];
        v11 = [v10 objectAtIndex:{objc_msgSend(v9, "row")}];
        [v2 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [WeakRetained _deleteDownloadEntities:v2];
  [WeakRetained _exitEditingMode];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5 = [a3 cellForItemAtIndexPath:a4];
  [v5 setSelected:0 animated:1];
  [(VUIDownloadCollectionViewController *)self _updateSelectAllBarButtonItemIfNecessary];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [(VUIDownloadCollectionViewController *)self sizingCell];

  if (!v7)
  {
    v8 = objc_alloc_init(VUIDownloadCollectionViewCell);
    [(VUIDownloadCollectionViewController *)self setSizingCell:v8];
  }

  v9 = [(VUIDownloadCollectionViewController *)self diffableDataSource];
  v10 = [v9 itemIdentifierForIndexPath:v6];

  v11 = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
  v12 = [v11 objectForKey:v10];

  v13 = [(VUIDownloadCollectionViewController *)self sizingCell];
  [(VUIDownloadCollectionViewController *)self cellWidth];
  [VUIDownloadCollectionViewCell configureVUIDownloadEntityCollectionViewCell:v13 withDownloadEntity:v12 width:1 forMetrics:?];

  v14 = [(VUIDownloadCollectionViewController *)self sizingCell];
  [v14 setEditing:{-[VUIDownloadCollectionViewController isEditing](self, "isEditing")}];

  v15 = [(VUIDownloadCollectionViewController *)self sizingCell];
  [(VUIDownloadCollectionViewController *)self cellWidth];
  [v15 sizeThatFits:?];
  v17 = v16;
  v19 = v18;

  if (v17 <= 0.0 || v19 <= 0.0)
  {
    v20 = VUIDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      cellWidth = self->_cellWidth;
      v24 = 134218754;
      v25 = v17;
      v26 = 2048;
      v27 = v19;
      v28 = 2048;
      v29 = cellWidth;
      v30 = 2112;
      v31 = v12;
      _os_log_error_impl(&dword_1E323F000, v20, OS_LOG_TYPE_ERROR, "[VUIDownloadCollectionViewController] Incorrect sizing for item width:%f height:%f cellWidth:%f forEntity:%@", &v24, 0x2Au);
    }
  }

  v21 = v17;
  v22 = v19;
  result.height = v22;
  result.width = v21;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [(VUIDownloadCollectionViewController *)self _computeBottomMargin:a3];
  v6 = v5;
  v7 = 10.0;
  v8 = 0.0;
  v9 = 0.0;
  result.right = v9;
  result.bottom = v6;
  result.left = v8;
  result.top = v7;
  return result;
}

- (void)downloadManager:(id)a3 downloadedFetchDidFinishWithEntities:(id)a4
{
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[VUIDownloadCollectionViewController] Fetching downloads completed", v16, 2u);
  }

  v6 = [(VUIDownloadCollectionViewController *)self downloadDataSource];
  v7 = [v6 downloadEntities];
  v8 = [v7 mutableCopy];
  [(VUIDownloadCollectionViewController *)self setDownloadEntities:v8];

  v9 = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v10 = [v9 count];

  v11 = [(VUIDownloadCollectionViewController *)self contentPresenter];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 currentContentViewType];

    if (v13 != 3)
    {
      v14 = [(VUIDownloadCollectionViewController *)self contentPresenter];
      [v14 setCurrentContentViewType:3];
    }

    v12 = [(VUIDownloadCollectionViewController *)self diffableDataSource];
    v15 = [(VUIDownloadCollectionViewController *)self _createDiffableDataSourceSnapshot];
    [v12 applySnapshot:v15 animatingDifferences:v13 == 3 completion:0];
  }

  else
  {
    [v11 setCurrentContentViewType:2];
  }
}

- (void)downloadManager:(id)a3 downloadsDidChange:(id)a4
{
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "[VUIDownloadCollectionViewController] Downloads changed", v14, 2u);
  }

  v6 = [(VUIDownloadCollectionViewController *)self downloadDataSource];
  v7 = [v6 downloadEntities];
  v8 = [v7 mutableCopy];
  [(VUIDownloadCollectionViewController *)self setDownloadEntities:v8];

  v9 = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v10 = [v9 count];

  v11 = [(VUIDownloadCollectionViewController *)self contentPresenter];
  v12 = v11;
  if (v10)
  {
    [v11 setCurrentContentViewType:3];

    v12 = [(VUIDownloadCollectionViewController *)self diffableDataSource];
    v13 = [(VUIDownloadCollectionViewController *)self _createDiffableDataSourceSnapshot];
    [v12 applySnapshot:v13 animatingDifferences:1 completion:0];
  }

  else
  {
    [v11 setCurrentContentViewType:2];
  }
}

- (void)downloadCellDidRequestCancelDownload:(id)a3
{
  v4 = a3;
  v5 = [(VUIDownloadCollectionViewController *)self collectionView];
  v17 = [v5 indexPathForCell:v4];

  v6 = v17;
  if (v17)
  {
    v7 = [(VUIDownloadCollectionViewController *)self downloadEntities];
    v8 = [v7 objectAtIndex:{objc_msgSend(v17, "row")}];

    v9 = [v8 mediaEntities];
    v10 = [v9 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      if (([v11 markedAsDeleted] & 1) != 0 || (objc_msgSend(v11, "downloadExpirationDate"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
      {
        v13 = [(VUIDownloadCollectionViewController *)self downloadEntities];
        [v13 removeObjectAtIndex:{objc_msgSend(v17, "row")}];

        v14 = [(VUIDownloadCollectionViewController *)self _createIdentifierToDownloadEntityDictionary];
        [(VUIDownloadCollectionViewController *)self setIdentifierToDownloadEntityDictionary:v14];

        v15 = [(VUIDownloadCollectionViewController *)self diffableDataSource];
        v16 = [(VUIDownloadCollectionViewController *)self _createDiffableDataSourceSnapshot];
        [v15 applySnapshot:v16 animatingDifferences:1 completion:0];
      }
    }

    v6 = v17;
  }
}

- (id)_createCollectionView
{
  v3 = objc_alloc_init(VUITopAlignedCollectionViewFlowLayout);
  [(UICollectionViewFlowLayout *)v3 setScrollDirection:0];
  [(UICollectionViewFlowLayout *)v3 setMinimumLineSpacing:0.0];
  v4 = MEMORY[0x1E69DD2E8];
  v5 = [(VUIDownloadCollectionViewController *)self gridStyle];
  v6 = [(VUIDownloadCollectionViewController *)self gridType];
  v7 = [(VUIDownloadCollectionViewController *)self view];
  [v7 bounds];
  [v4 vui_collectionInteritemSpace:v5 gridType:v6 windowWidth:CGRectGetWidth(v18)];
  v9 = v8;

  [(UICollectionViewFlowLayout *)v3 setMinimumInteritemSpacing:v9];
  v10 = [VUILegacyCollectionView alloc];
  v11 = [(VUILegacyCollectionView *)v10 initWithFrame:v3 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [(VUILegacyCollectionView *)v11 setBackgroundColor:v12];

  [(VUILegacyCollectionView *)v11 setAllowsMultipleSelection:1];
  [(VUILegacyCollectionView *)v11 setDelegate:self];
  [(VUILegacyCollectionView *)v11 setAlwaysBounceVertical:1];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  [(VUILegacyCollectionView *)v11 registerClass:v13 forCellWithReuseIdentifier:v15];

  return v11;
}

- (id)_createDiffableDataSource
{
  v3 = objc_alloc(MEMORY[0x1E69DC820]);
  v4 = [(VUIDownloadCollectionViewController *)self collectionView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__VUIDownloadCollectionViewController__createDiffableDataSource__block_invoke;
  v7[3] = &unk_1E8733AB0;
  v7[4] = self;
  v5 = [v3 initWithCollectionView:v4 cellProvider:v7];

  return v5;
}

id __64__VUIDownloadCollectionViewController__createDiffableDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

  v13 = [*(a1 + 32) identifierToDownloadEntityDictionary];
  v14 = [v13 objectForKey:v7];

  [*(a1 + 32) cellWidth];
  [VUIDownloadCollectionViewCell configureVUIDownloadEntityCollectionViewCell:v12 withDownloadEntity:v14 width:0 forMetrics:?];
  [v12 setEditing:{objc_msgSend(*(a1 + 32), "isEditing")}];
  v15 = [v12 downloadButton];
  v16 = v15;
  if (v15)
  {
    [v15 setPresentingViewController:*(a1 + 32)];
  }

  return v12;
}

- (id)_createDiffableDataSourceSnapshot
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v7[0] = @"DownloadGridMainSection";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  v5 = [(VUIDownloadCollectionViewController *)self _identifiersForDownloadEntities];
  [v3 appendItemsWithIdentifiers:v5 intoSectionWithIdentifier:@"DownloadGridMainSection"];

  return v3;
}

- (id)_createIdentifierToDownloadEntityDictionary
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        if (v10)
        {
          [v3 setValue:v9 forKey:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (id)_identifiersForDownloadEntities
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) identifier];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 array];

  return v10;
}

- (double)_computeBottomMargin
{
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v4 = [(VUIDownloadCollectionViewController *)self diffableDataSource];
  v5 = [v4 itemIdentifierForIndexPath:v3];

  v6 = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
  v7 = [v6 objectForKey:v5];

  v8 = [(VUIDownloadCollectionViewController *)self sizingCell];
  [(VUIDownloadCollectionViewController *)self cellWidth];
  [VUIDownloadCollectionViewCell configureVUIDownloadEntityCollectionViewCell:v8 withDownloadEntity:v7 width:1 forMetrics:?];

  v9 = [(VUIDownloadCollectionViewController *)self sizingCell];
  [v9 setEditing:{-[VUIDownloadCollectionViewController isEditing](self, "isEditing")}];

  v10 = [(VUIDownloadCollectionViewController *)self sizingCell];
  +[VUIViewSpacer spacerB];
  [v10 bottomMarginWithBaselineMargin:?];
  v12 = v11;

  if (v12 == 0.0)
  {
    +[VUIViewSpacer spacerB];
    v14 = v13;
    v15 = [(VUIDownloadCollectionViewController *)self traitCollection];
    [VUIUtilities scaleContentSizeValue:v15 forTraitCollection:v14];
    v12 = v16;
  }

  return v12;
}

- (void)_updateLayoutForSize:(CGSize)a3
{
  width = a3.width;
  [(VUIDownloadCollectionViewController *)self lastViewWidth:a3.width];
  if (v5 != width)
  {
    [(VUIDownloadCollectionViewController *)self setLastViewWidth:width];
    v6 = [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:width];
    v7 = 3;
    if ((v6 - 3) < 3)
    {
      v7 = 6;
    }

    self->_gridStyle = v7;
    [MEMORY[0x1E69DD2E8] vui_itemWidthForGridStyle:-[VUIDownloadCollectionViewController gridStyle](self gridType:"gridStyle") numGridColumns:-[VUIDownloadCollectionViewController gridType](self windowWidth:{"gridType"), 1, width}];
    self->_cellWidth = v8;
    [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:width];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(VUIDownloadCollectionViewController *)self collectionView];
    v21 = [v17 collectionViewLayout];

    [MEMORY[0x1E69DD2E8] vui_collectionInteritemSpace:-[VUIDownloadCollectionViewController gridStyle](self gridType:"gridStyle") windowWidth:{-[VUIDownloadCollectionViewController gridType](self, "gridType"), width}];
    [v21 setMinimumInteritemSpacing:?];
    v18 = [(VUIDownloadCollectionViewController *)self collectionView];
    [v18 setContentInset:{v10, v12, v14, v16}];

    v19 = [(VUIDownloadCollectionViewController *)self collectionView];
    v20 = [v19 collectionViewLayout];
    [v20 invalidateLayout];
  }
}

- (void)_editToggled
{
  if ([(VUIDownloadCollectionViewController *)self isEditing])
  {
    v3 = [(VUIDownloadCollectionViewController *)self collectionView];
    v4 = [v3 indexPathsForSelectedItems];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(VUIDownloadCollectionViewController *)self _configureAlertController];
      alertController = self->_alertController;
      self->_alertController = v6;

      v8 = self->_alertController;
      if (v8)
      {
        [(VUIDownloadCollectionViewController *)self presentViewController:v8 animated:1 completion:0];
      }
    }

    else
    {
      [(VUIDownloadCollectionViewController *)self _exitEditingMode];
    }
  }

  else
  {
    [(VUIDownloadCollectionViewController *)self _enterEditingMode];
  }

  [(VUIDownloadCollectionViewController *)self _updateAllVisibleCellsForEditingMode];
}

- (void)_batchSelectToggled
{
  isSelectingAll = self->_isSelectingAll;
  if (isSelectingAll)
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:0];
    v4 = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v5 = +[VUILocalizationManager sharedInstance];
    v6 = [v5 localizedStringForKey:@"SELECT_ALL"];
    [v4 setTitle:v6];

    [(VUIDownloadCollectionViewController *)self _clearSelections];
  }

  else
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:1];
    v7 = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = [v8 localizedStringForKey:@"DESELECT_ALL"];
    [v7 setTitle:v9];

    [(VUIDownloadCollectionViewController *)self _selectAllCells];
  }

  v10 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
  [v10 setEnabled:!isSelectingAll];
}

- (id)_configureAlertController
{
  v3 = +[VUILocalizationManager sharedInstance];
  v20 = [v3 localizedStringForKey:@"DELETES_EXPLANATION"];

  v19 = [(VUIDownloadCollectionViewController *)self _deleteActionTitleString];
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke;
  aBlock[3] = &unk_1E872E4B8;
  objc_copyWeak(&v28, location);
  v4 = _Block_copy(aBlock);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke_2;
  v25[3] = &unk_1E872E4B8;
  objc_copyWeak(&v26, location);
  v5 = _Block_copy(v25);
  v6 = [(VUIDownloadCollectionViewController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v20 preferredStyle:0];
    v10 = MEMORY[0x1E69DC648];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke_3;
    v23[3] = &unk_1E872E850;
    v24 = v4;
    v11 = [v10 actionWithTitle:v19 style:2 handler:v23];
    [v9 addAction:v11];
    v12 = MEMORY[0x1E69DC648];
    v13 = +[VUILocalizationManager sharedInstance];
    v14 = [v13 localizedStringForKey:@"CANCEL"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke_4;
    v21[3] = &unk_1E872E850;
    v22 = v5;
    v15 = [v12 actionWithTitle:v14 style:1 handler:v21];

    [v9 addAction:v15];
    [v9 setModalPresentationStyle:7];
    v16 = [v9 popoverPresentationController];
    v17 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    [v16 setBarButtonItem:v17];
  }

  else
  {
    v9 = 0;
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(location);

  return v9;
}

void __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [WeakRetained collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [WeakRetained downloadEntities];
        v11 = [v10 objectAtIndex:{objc_msgSend(v9, "row")}];
        [v2 addObject:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [WeakRetained _deleteDownloadEntities:v2];
  [WeakRetained _exitEditingMode];
}

void __64__VUIDownloadCollectionViewController__configureAlertController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _exitEditingMode];
}

- (id)_deleteActionTitleString
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = [v3 localizedStringForKey:@"DELETE_DOWNLOAD"];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(VUIDownloadCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v23;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v22 + 1) + 8 * i);
      v13 = [(VUIDownloadCollectionViewController *)self diffableDataSource];
      v14 = [v13 itemIdentifierForIndexPath:v12];

      v15 = [(VUIDownloadCollectionViewController *)self identifierToDownloadEntityDictionary];
      v16 = [v15 objectForKey:v14];

      v17 = [v16 numberOfMediaItems];
      v9 += [v17 unsignedIntegerValue];
    }

    v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v8);

  if (v9 >= 2)
  {
    v18 = MEMORY[0x1E696AEC0];
    v6 = +[VUILocalizationManager sharedInstance];
    v19 = [v6 localizedStringForKey:@"DELETE_%U_DOWNLOADS"];
    v20 = [v18 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%u" error:0, v9];

    v4 = v20;
LABEL_10:
  }

  return v4;
}

- (void)_configureNavigationBarForEditingMode
{
  v22[2] = *MEMORY[0x1E69E9840];
  if ([(VUIDownloadCollectionViewController *)self isEditing])
  {
    v3 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    v4 = +[VUILocalizationManager sharedInstance];
    v5 = [v4 localizedStringForKey:@"DELETE"];
    [v3 setTitle:v5];

    v6 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    [v6 setEnabled:0];

    v7 = [(VUIDownloadCollectionViewController *)self navigationItem];
    selectAllBarButtonItem = self->_selectAllBarButtonItem;
    v22[0] = self->_rightBarButtonItem;
    v22[1] = selectAllBarButtonItem;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [v7 setRightBarButtonItems:v9];

    v10 = [(VUIDownloadCollectionViewController *)self navigationItem];
    [v10 setLeftBarButtonItem:self->_leftBarButtonItem];
  }

  else
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:0];
    v11 = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"SELECT_ALL"];
    [v11 setTitle:v13];

    v14 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    v15 = +[VUILocalizationManager sharedInstance];
    v16 = [v15 localizedStringForKey:@"EDIT"];
    [v14 setTitle:v16];

    v17 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    [v17 setEnabled:1];

    v18 = [(VUIDownloadCollectionViewController *)self navigationItem];
    rightBarButtonItem = self->_rightBarButtonItem;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&rightBarButtonItem count:1];
    [v18 setRightBarButtonItems:v19];

    v10 = [(VUIDownloadCollectionViewController *)self navigationItem];
    v20 = [(VUIDownloadCollectionViewController *)self backBarButtonItem];
    [v10 setLeftBarButtonItem:v20];
  }
}

- (void)_enterEditingMode
{
  [(VUIDownloadCollectionViewController *)self setIsEditing:1];

  [(VUIDownloadCollectionViewController *)self _configureNavigationBarForEditingMode];
}

- (void)_exitEditingMode
{
  [(VUIDownloadCollectionViewController *)self setIsEditing:0];
  [(VUIDownloadCollectionViewController *)self _updateAllVisibleCellsForEditingMode];
  [(VUIDownloadCollectionViewController *)self _clearSelections];
  [(VUIDownloadCollectionViewController *)self _configureNavigationBarForEditingMode];
  v3 = [(VUIDownloadCollectionViewController *)self alertController];

  if (v3)
  {
    v4 = [(VUIDownloadCollectionViewController *)self alertController];
    [v4 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)_clearSelections
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(VUIDownloadCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(VUIDownloadCollectionViewController *)self collectionView];
        [v11 deselectItemAtIndexPath:v10 animated:1];

        v12 = [(VUIDownloadCollectionViewController *)self collectionView];
        v13 = [v12 cellForItemAtIndexPath:v10];

        [v13 setSelected:0 animated:1];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_selectAllCells
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(VUIDownloadCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(VUIDownloadCollectionViewController *)self collectionView];
        [v11 selectItemAtIndexPath:v10 animated:1 scrollPosition:0];

        v12 = [(VUIDownloadCollectionViewController *)self collectionView];
        v13 = [v12 cellForItemAtIndexPath:v10];

        [v13 setSelected:1 animated:1];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_deleteDownloadEntities:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = __63__VUIDownloadCollectionViewController__deleteDownloadEntities___block_invoke;
  v9 = &unk_1E872D990;
  v10 = self;
  v11 = v4;
  v5 = MEMORY[0x1E696AF00];
  v6 = v4;
  if ([v5 isMainThread])
  {
    v8(&v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v7);
  }
}

void __63__VUIDownloadCollectionViewController__deleteDownloadEntities___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) downloadEntities];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (([*(a1 + 40) containsObject:v8] & 1) == 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) setDownloadEntities:v2];
  v9 = [*(a1 + 32) diffableDataSource];
  v10 = [*(a1 + 32) _createDiffableDataSourceSnapshot];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__VUIDownloadCollectionViewController__deleteDownloadEntities___block_invoke_2;
  v12[3] = &unk_1E872D990;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v11;
  [v9 applySnapshot:v10 animatingDifferences:1 completion:v12];
}

- (void)_deleteMediaEntitiesInDownloadEntities:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  assetControllersToRemove = self->_assetControllersToRemove;
  self->_assetControllersToRemove = v5;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = [v11 mediaEntities];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            v16 = 0;
            do
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v20 + 1) + 8 * v16) assetController];
              v18 = [(VUIDownloadCollectionViewController *)self assetControllersToRemove];
              [v18 addObject:v17];

              [v17 cancelAndRemoveDownload];
              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)_updateAllVisibleCellsForEditingMode
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(VUIDownloadCollectionViewController *)self collectionView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEditing:{-[VUIDownloadCollectionViewController isEditing](self, "isEditing")}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateSelectAllBarButtonItemIfNecessary
{
  v3 = [(VUIDownloadCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [v4 count];
  v6 = [(VUIDownloadCollectionViewController *)self downloadEntities];
  v7 = [v6 count];

  if (v5 == v7)
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:1];
    v8 = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"DESELECT_ALL"];
    [v8 setTitle:v10];
  }

  else
  {
    [(VUIDownloadCollectionViewController *)self setIsSelectingAll:0];
    v11 = [(VUIDownloadCollectionViewController *)self selectAllBarButtonItem];
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"SELECT_ALL"];
    [v11 setTitle:v13];

    v14 = [(VUIDownloadCollectionViewController *)self collectionView];
    v15 = [v14 indexPathsForSelectedItems];
    v16 = [v15 count];

    if (v16)
    {
      return;
    }

    v17 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
    v18 = [v17 isEnabled];

    if (!v18)
    {
      return;
    }
  }

  v19 = [(VUIDownloadCollectionViewController *)self rightBarButtonItem];
  [v19 setEnabled:v5 == v7];
}

- (void)_updateNavigationBarPadding
{
  v3 = MEMORY[0x1E69DD2E8];
  v4 = [(VUIDownloadCollectionViewController *)self view];
  [v4 bounds];
  [v3 vui_paddingForWindowWidth:CGRectGetWidth(v27)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(VUIDownloadCollectionViewController *)self navigationController];
  v14 = [v13 navigationBar];
  [v14 layoutMargins];
  if (v8 == v18 && v6 == v15 && v12 == v17)
  {
    v21 = v16;

    if (v10 == v21)
    {
      return;
    }
  }

  else
  {
  }

  v22 = [(VUIDownloadCollectionViewController *)self navigationController];
  v23 = [v22 navigationBar];
  [v23 setLayoutMargins:{v6, v8, v10, v12}];

  v25 = [(VUIDownloadCollectionViewController *)self navigationController];
  v24 = [v25 navigationBar];
  [v24 setNeedsLayout];
}

void __47__VUIDownloadCollectionViewController_loadView__block_invoke_3_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "[VUIDownloadCollectionViewController]- isFullTVAppEnabled: %d, error: %@", v3, 0x12u);
}

- (void)collectionView:(uint64_t)a1 didSelectItemAtIndexPath:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Unable to start playback because no entity found for identifier: %@", &v2, 0xCu);
}

@end