@interface VUIDownloadTableViewController
- (BOOL)_downloadEntityShouldShowRenewOption:(id)a3;
- (VUIDownloadTableViewController)initWithDataSource:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_configureAlertControllerForIndexPath:(id)a3 withCompletion:(id)a4;
- (id)_configureRenewAlertControllerForIndexPath:(id)a3 forPreferredStyle:(int64_t)a4 withCompletion:(id)a5;
- (id)_createDiffableDataSource;
- (id)_createDiffableDataSourceSnapshot;
- (id)_createIdentifierToDownloadEntityDictionary;
- (id)_identifiersForDownloadEntities;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (void)_batchSelectToggled;
- (void)_clearSelections;
- (void)_clearTableViewSelections:(BOOL)a3;
- (void)_deleteDownloadEntities:(id)a3;
- (void)_deleteMediaEntitiesInDownloadEntities:(id)a3;
- (void)_editToggled;
- (void)_exitEditingMode;
- (void)_popIfNeeded;
- (void)_selectAllCells;
- (void)_toggleRightBarEditItemIfNeeded;
- (void)_updateNavigationBarPadding;
- (void)dealloc;
- (void)downloadCellDidRequestCancelDownload:(id)a3;
- (void)downloadManager:(id)a3 downloadedFetchDidFinishWithEntities:(id)a4;
- (void)downloadManager:(id)a3 downloadsDidChange:(id)a4;
- (void)fullscreenPlaybackUIDidChangeNotification:(id)a3;
- (void)loadView;
- (void)setDownloadEntities:(id)a3;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VUIDownloadTableViewController

- (VUIDownloadTableViewController)initWithDataSource:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VUIDownloadTableViewController;
  v5 = [(VUIDownloadTableViewController *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(VUIDownloadTableViewController *)v5 setDownloadDataSource:v4];
    v7 = objc_alloc_init(VUIViewControllerContentPresenter);
    contentPresenter = v6->_contentPresenter;
    v6->_contentPresenter = v7;

    [(VUIViewControllerContentPresenter *)v6->_contentPresenter setLogName:@"VUIDownloadTableViewController"];
    objc_initWeak(&location, v6);
    v16[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__VUIDownloadTableViewController_initWithDataSource___block_invoke;
    v12[3] = &unk_1E872E760;
    objc_copyWeak(&v13, &location);
    v10 = [(VUIDownloadTableViewController *)v6 registerForTraitChanges:v9 withHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __53__VUIDownloadTableViewController_initWithDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSizingCell:0];
}

- (void)loadView
{
  v43.receiver = self;
  v43.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v43 loadView];
  v3 = [(VUIDownloadTableViewController *)self contentPresenter];
  [v3 setRootViewForViewController:self];

  v4 = objc_alloc(MEMORY[0x1E69DD020]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  downloadEntitiesTableView = self->_downloadEntitiesTableView;
  self->_downloadEntitiesTableView = v5;

  [(UITableView *)self->_downloadEntitiesTableView setDelegate:self];
  [(UITableView *)self->_downloadEntitiesTableView setAllowsMultipleSelectionDuringEditing:1];
  [(UITableView *)self->_downloadEntitiesTableView setSeparatorStyle:0];
  v7 = self->_downloadEntitiesTableView;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [(UITableView *)v7 registerClass:v8 forCellReuseIdentifier:v10];

  v11 = self->_downloadEntitiesTableView;
  v12 = objc_opt_new();
  [(UITableView *)v11 setTableFooterView:v12];

  v13 = [(VUIDownloadTableViewController *)self _createDiffableDataSource];
  [(VUIDownloadTableViewController *)self setDiffableDataSource:v13];

  if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x1E69DC708]);
    v15 = +[VUILocalizationManager sharedInstance];
    v16 = [v15 localizedStringForKey:@"EDIT"];
    v17 = [v14 initWithTitle:v16 style:0 target:self action:sel__editToggled];
    rightBarButtonItem = self->_rightBarButtonItem;
    self->_rightBarButtonItem = v17;

    v19 = [(VUIDownloadTableViewController *)self navigationItem];
    [v19 setRightBarButtonItem:self->_rightBarButtonItem];

    v20 = objc_alloc(MEMORY[0x1E69DC708]);
    v21 = +[VUILocalizationManager sharedInstance];
    v22 = [v21 localizedStringForKey:@"SELECT_ALL"];
    v23 = [v20 initWithTitle:v22 style:0 target:self action:sel__batchSelectToggled];
    selectAllBarButtonItem = self->_selectAllBarButtonItem;
    self->_selectAllBarButtonItem = v23;
  }

  v25 = [(VUIDownloadTableViewController *)self navigationItem];
  v26 = [v25 leftBarButtonItem];
  backBarButtonItem = self->_backBarButtonItem;
  self->_backBarButtonItem = v26;

  v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  leftBarButtonItem = self->_leftBarButtonItem;
  self->_leftBarButtonItem = v28;

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__VUIDownloadTableViewController_loadView__block_invoke;
  aBlock[3] = &unk_1E872F5D0;
  objc_copyWeak(&v41, &location);
  v30 = _Block_copy(aBlock);
  if (_os_feature_enabled_impl())
  {
    v31 = v39;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __42__VUIDownloadTableViewController_loadView__block_invoke_2;
    v39[3] = &unk_1E872E470;
    v39[4] = v30;
    [_TtC8VideosUI22VUIBagServiceProxyObjC isFullTVAppEnabledWithCompletionHandler:v39];
  }

  else
  {
    v32 = MEMORY[0x1E69E15F8];
    v31 = v38;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __42__VUIDownloadTableViewController_loadView__block_invoke_62;
    v38[3] = &unk_1E872D790;
    v38[4] = v30;
    [v32 isFullTVAppEnabledwithCompletion:v38];
  }

  v33 = VUIDefaultLogObject();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *v37 = 0;
    _os_log_impl(&dword_1E323F000, v33, OS_LOG_TYPE_INFO, "[VUIDownloadTableViewController] - load view - update content view type to loading", v37, 2u);
  }

  v34 = [(VUIDownloadTableViewController *)self contentPresenter];
  [v34 setCurrentContentViewType:1];

  v35 = [(VUIDownloadTableViewController *)self contentPresenter];
  [v35 setContentView:self->_downloadEntitiesTableView];

  v36 = [MEMORY[0x1E696AD88] defaultCenter];
  [v36 addObserver:self selector:sel_fullscreenPlaybackUIDidChangeNotification_ name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

void __42__VUIDownloadTableViewController_loadView__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v3 = [WeakRetained contentPresenter];
    v4 = +[VUILocalizationManager sharedInstance];
    v5 = v4;
    if (a2)
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

void __42__VUIDownloadTableViewController_loadView__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__VUIDownloadTableViewController_loadView__block_invoke_2_cold_1(a2, v5, v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __42__VUIDownloadTableViewController_loadView__block_invoke_62(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__VUIDownloadTableViewController_loadView__block_invoke_2_63;
  v3[3] = &unk_1E872FFC0;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v5 viewWillAppear:?];
  [(VUIDownloadTableViewController *)self _clearTableViewSelections:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v4 viewDidAppear:a3];
  [VUILibraryMetrics recordPageEventWithPageType:@"LibraryDownloaded"];
  [(VUIDownloadTableViewController *)self _updateNavigationBarPadding];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v17 viewDidLoad];
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = [v3 localizedStringForKey:@"DOWNLOADED"];
  [(VUIDownloadTableViewController *)self setTitle:v4];

  [(VUIDownloadDataSource *)self->_downloadDataSource setDownloadDelegate:self];
  if ([(VUILibraryDataSource *)self->_downloadDataSource hasCompletedInitialFetch])
  {
    v5 = [(VUIDownloadTableViewController *)self downloadDataSource];
    v6 = [v5 downloadEntities];
    v7 = [v6 mutableCopy];
    [(VUIDownloadTableViewController *)self setDownloadEntities:v7];

    v8 = [(VUIDownloadTableViewController *)self downloadEntities];
    v9 = [v8 count];

    v10 = [(VUIDownloadTableViewController *)self contentPresenter];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 currentContentViewType];

      if (v12 != 3)
      {
        v13 = [(VUIDownloadTableViewController *)self contentPresenter];
        [v13 setCurrentContentViewType:3];
      }

      v11 = [(VUIDownloadTableViewController *)self diffableDataSource];
      v14 = [(VUIDownloadTableViewController *)self _createDiffableDataSourceSnapshot];
      [v11 applySnapshot:v14 animatingDifferences:v12 == 3 completion:0];
    }

    else
    {
      [v10 setCurrentContentViewType:2];
    }

    [(VUIDownloadTableViewController *)self _toggleRightBarEditItemIfNeeded];
  }

  else
  {
    [(VUIDownloadDataSource *)self->_downloadDataSource startFetch];
  }

  v15 = [(VUIDownloadTableViewController *)self view];
  v16 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=Downloaded"];
  [v15 setAccessibilityIdentifier:v16];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(VUIDownloadTableViewController *)self contentPresenter];
  v4 = [(VUIDownloadTableViewController *)self view];
  [v4 bounds];
  [v3 configureCurrentViewFrameForBounds:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v3 viewDidLayoutSubviews];
  [(VUIDownloadTableViewController *)self _updateNavigationBarPadding];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v4 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = VUIDownloadTableViewController;
  v7 = a4;
  [(VUIDownloadTableViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__VUIDownloadTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (!self->_sizingCell)
  {
    v6 = objc_alloc_init(VUIDownloadEntityTableViewCell);
    sizingCell = self->_sizingCell;
    self->_sizingCell = v6;
  }

  v8 = [(VUIDownloadTableViewController *)self diffableDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v5];

  v10 = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
  v11 = [v10 objectForKey:v9];

  [VUIDownloadEntityTableViewCell configureVUIDownloadEntityTableViewCell:self->_sizingCell withDownloadEntity:v11 forMetrics:1];
  v12 = self->_sizingCell;
  v13 = [(VUIDownloadTableViewController *)self view];
  [v13 bounds];
  [(VUIDownloadEntityTableViewCell *)v12 sizeThatFits:CGRectGetWidth(v17), 1.79769313e308];
  v15 = v14;

  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(UITableView *)self->_downloadEntitiesTableView isEditing])
  {
    v11 = [(VUIDownloadTableViewController *)self diffableDataSource];
    v10 = [v11 itemIdentifierForIndexPath:v7];

    v12 = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
    v13 = [v12 objectForKey:v10];

    if ([v13 downloadType])
    {
      if ([v13 downloadType] == 1 || objc_msgSend(v13, "downloadType") == 2)
      {
        v14 = [v13 mediaEntities];
        v15 = [v14 firstObject];

        [VUILibraryMetrics recordClickOnMediaEntity:v15];
        v16 = [[VUIDownloadShowDataSource alloc] initWithMediaEntity:v15];
        v17 = [v15 showIdentifier];
        v18 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithShowIdentifier:v17];
        v19 = [v15 mediaLibrary];
        v20 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v18 withLibrary:v19];

        v21 = [[VUIDownloadShowTableViewController alloc] initWithDataSource:v16 seasonsDataSource:v20];
        v22 = [v15 showTitle];

        if (v22)
        {
          v23 = [(VUIDownloadShowTableViewController *)v21 navigationItem];
          v24 = [v15 showTitle];
          [v23 setTitle:v24];
        }

        v25 = [(VUIDownloadTableViewController *)self navigationController];
        [v25 pushViewController:v21 animated:1];

        v10 = v36;
      }
    }

    else
    {
      v26 = [v13 mediaEntities];
      v27 = [v26 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
        v29 = [v28 downloadExpirationDate];
        v30 = v29;
        if (v29 && ![v29 vui_isInTheFuture])
        {
          v35 = [(VUIDownloadTableViewController *)self _configureRenewAlertControllerForIndexPath:v7 forPreferredStyle:1 withCompletion:0];
          if (v35)
          {
            [(VUIDownloadTableViewController *)self presentViewController:v35 animated:1 completion:0];
          }

          [v6 deselectRowAtIndexPath:v7 animated:1];
        }

        else
        {
          v31 = [VUIMediaInfo alloc];
          v39[0] = v28;
          v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
          v33 = [(VUIMediaInfo *)v31 initWithPlaybackContext:3 vuiMediaItems:v32];

          [(VUIMediaInfo *)v33 setIntent:1];
          [(VUIMediaInfo *)v33 setAutomaticPlaybackStart:0];
          if (v33)
          {
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __68__VUIDownloadTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
            v37[3] = &unk_1E872D768;
            v38 = v28;
            [VUIActionPlay playMediaInfo:v33 watchType:0 isRentAndWatchNow:0 completion:v37];
            v34 = v38;
          }

          else
          {
            v34 = VUIDefaultLogObject();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [VUIDownloadShowTableViewController tableView:v28 didSelectRowAtIndexPath:v34];
            }
          }
        }
      }
    }

    goto LABEL_24;
  }

  v8 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
  v9 = [v8 isEnabled];

  if ((v9 & 1) == 0)
  {
    v10 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
    [v10 setEnabled:1];
LABEL_24:
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView:a3];
  v6 = [v5 isEditing];

  if (v6)
  {
    v7 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    v8 = [v7 indexPathsForSelectedRows];
    v9 = [v8 count];

    if (!v9)
    {
      v10 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
      [v10 setEnabled:0];
    }
  }
}

- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4
{
  v6 = [(VUIDownloadTableViewController *)self rightBarButtonItem:a3];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"DONE"];
  [v6 setTitle:v5];
}

- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4
{
  v6 = [(VUIDownloadTableViewController *)self rightBarButtonItem:a3];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"EDIT"];
  [v6 setTitle:v5];
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v6 = a4;
  if ([MEMORY[0x1E69DC668] isRunningInStoreDemoMode])
  {
    v7 = 0;
  }

  else
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69DC8E8];
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"DELETE"];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __95__VUIDownloadTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
    v41[3] = &unk_1E872E7B0;
    objc_copyWeak(&v43, &location);
    v11 = v6;
    v42 = v11;
    v31 = [v8 contextualActionWithStyle:1 title:v10 handler:v41];

    [v33 addObject:v31];
    if (v11)
    {
      v12 = [(VUIDownloadTableViewController *)self diffableDataSource];
      v13 = [v12 itemIdentifierForIndexPath:v11];

      v14 = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
      v15 = [v14 objectForKey:v13];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
      v13 = [v16 indexPathsForSelectedRows];

      v15 = 0;
      v17 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v17)
      {
        v18 = *v38;
        do
        {
          v19 = 0;
          v20 = v15;
          do
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(v13);
            }

            v15 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [*(*(&v37 + 1) + 8 * v19) row]);

            ++v19;
            v20 = v15;
          }

          while (v17 != v19);
          v17 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v17);
      }
    }

    if ([(VUIDownloadTableViewController *)self _downloadEntityShouldShowRenewOption:v15])
    {
      v21 = [v15 mediaEntities];
      v22 = [v21 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v22 downloadExpirationDate];
        if (v23)
        {
          v24 = MEMORY[0x1E69DC8E8];
          v25 = +[VUILocalizationManager sharedInstance];
          v26 = [v25 localizedStringForKey:@"RENEW"];
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __95__VUIDownloadTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_2;
          v34[3] = &unk_1E872E7B0;
          objc_copyWeak(&v36, &location);
          v35 = v11;
          v27 = [v24 contextualActionWithStyle:0 title:v26 handler:v34];

          [v33 addObject:v27];
          objc_destroyWeak(&v36);
        }
      }
    }

    v28 = MEMORY[0x1E69DCFC0];
    v29 = [v33 copy];
    v7 = [v28 configurationWithActions:v29];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __95__VUIDownloadTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _configureAlertControllerForIndexPath:*(a1 + 32) withCompletion:v5];

  [WeakRetained setAlertController:v6];
  v7 = [WeakRetained alertController];

  if (v7)
  {
    v8 = [WeakRetained alertController];
    [WeakRetained presentViewController:v8 animated:1 completion:0];
  }
}

void __95__VUIDownloadTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _configureRenewAlertControllerForIndexPath:*(a1 + 32) forPreferredStyle:0 withCompletion:v5];

  if (v6)
  {
    [WeakRetained presentViewController:v6 animated:1 completion:0];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  if (self->_isSelectingAll)
  {
    [a4 setSelected:1];
  }
}

- (void)downloadManager:(id)a3 downloadedFetchDidFinishWithEntities:(id)a4
{
  v5 = [(VUIDownloadTableViewController *)self downloadDataSource:a3];
  v6 = [v5 downloadEntities];
  v7 = [v6 mutableCopy];
  [(VUIDownloadTableViewController *)self setDownloadEntities:v7];

  v8 = [(VUIDownloadTableViewController *)self downloadEntities];
  v9 = [v8 count];

  v10 = [(VUIDownloadTableViewController *)self contentPresenter];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 currentContentViewType];

    if (v12 != 3)
    {
      v13 = [(VUIDownloadTableViewController *)self contentPresenter];
      [v13 setCurrentContentViewType:3];
    }

    v15 = [(VUIDownloadTableViewController *)self diffableDataSource];
    v14 = [(VUIDownloadTableViewController *)self _createDiffableDataSourceSnapshot];
    [v15 applySnapshot:v14 animatingDifferences:v12 == 3 completion:0];
  }

  else
  {
    [v10 setCurrentContentViewType:2];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__VUIDownloadTableViewController_downloadManager_downloadedFetchDidFinishWithEntities___block_invoke;
    block[3] = &unk_1E872D768;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)downloadManager:(id)a3 downloadsDidChange:(id)a4
{
  v5 = [(VUIDownloadTableViewController *)self downloadDataSource:a3];
  v6 = [v5 downloadEntities];
  v7 = [v6 mutableCopy];
  [(VUIDownloadTableViewController *)self setDownloadEntities:v7];

  v8 = [(VUIDownloadTableViewController *)self downloadEntities];
  v9 = [v8 count];

  v10 = [(VUIDownloadTableViewController *)self contentPresenter];
  v11 = v10;
  if (v9)
  {
    [v10 setCurrentContentViewType:3];

    v13 = [(VUIDownloadTableViewController *)self diffableDataSource];
    v12 = [(VUIDownloadTableViewController *)self _createDiffableDataSourceSnapshot];
    [v13 applySnapshot:v12 animatingDifferences:1 completion:0];
  }

  else
  {
    [v10 setCurrentContentViewType:2];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__VUIDownloadTableViewController_downloadManager_downloadsDidChange___block_invoke;
    block[3] = &unk_1E872D768;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)setDownloadEntities:(id)a3
{
  objc_storeStrong(&self->_downloadEntities, a3);
  v4 = [(VUIDownloadTableViewController *)self _createIdentifierToDownloadEntityDictionary];
  [(VUIDownloadTableViewController *)self setIdentifierToDownloadEntityDictionary:v4];

  [(VUIDownloadTableViewController *)self _toggleRightBarEditItemIfNeeded];
}

- (void)_popIfNeeded
{
  v3 = [(VUIDownloadTableViewController *)self navigationController];
  v7 = [v3 childViewControllers];

  v4 = [(VUIDownloadTableViewController *)self downloadEntities];
  if (![v4 count] && objc_msgSend(v7, "count") >= 2)
  {
    v5 = [v7 lastObject];

    if (v5 != self)
    {
      goto LABEL_6;
    }

    v4 = [(VUIDownloadTableViewController *)self navigationController];
    v6 = [v4 popViewControllerAnimated:1];
  }

LABEL_6:
}

- (void)downloadCellDidRequestCancelDownload:(id)a3
{
  v4 = a3;
  v5 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  v14 = [v5 indexPathForCell:v4];

  v6 = v14;
  if (v14)
  {
    v7 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [v14 row]);
    v8 = [v7 mediaEntities];
    v9 = [v8 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      if (([v10 markedAsDeleted] & 1) != 0 || (objc_msgSend(v10, "downloadExpirationDate"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
      {
        -[NSMutableArray removeObjectAtIndex:](self->_downloadEntities, "removeObjectAtIndex:", [v14 row]);
        v12 = [(VUIDownloadTableViewController *)self diffableDataSource];
        v13 = [(VUIDownloadTableViewController *)self _createDiffableDataSourceSnapshot];
        [v12 applySnapshot:v13 animatingDifferences:1 completion:0];
      }
    }

    v6 = v14;
  }
}

- (void)_toggleRightBarEditItemIfNeeded
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(VUIDownloadTableViewController *)self downloadEntities];
  v4 = [v3 count];

  v5 = [(VUIDownloadTableViewController *)self navigationItem];
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

- (void)_editToggled
{
  if ([(UITableView *)self->_downloadEntitiesTableView isEditing])
  {
    v3 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    v4 = [v3 indexPathsForSelectedRows];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(VUIDownloadTableViewController *)self _configureAlertControllerForIndexPath:0 withCompletion:0];
      alertController = self->_alertController;
      self->_alertController = v6;

      if (self->_alertController)
      {

        [VUIDownloadTableViewController presentViewController:"presentViewController:animated:completion:" animated:? completion:?];
      }
    }

    else
    {

      [(VUIDownloadTableViewController *)self _exitEditingMode];
    }
  }

  else
  {
    [(UITableView *)self->_downloadEntitiesTableView setEditing:1 animated:1];
    rightBarButtonItem = self->_rightBarButtonItem;
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"DELETE"];
    [(UIBarButtonItem *)rightBarButtonItem setTitle:v10];

    v11 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
    [v11 setEnabled:0];

    v12 = [(VUIDownloadTableViewController *)self selectAllBarButtonItem];
    v13 = +[VUILocalizationManager sharedInstance];
    v14 = [v13 localizedStringForKey:@"SELECT_ALL"];
    [v12 setTitle:v14];

    v18 = objc_opt_new();
    if (self->_rightBarButtonItem)
    {
      [v18 addObject:?];
    }

    if (self->_selectAllBarButtonItem)
    {
      [v18 addObject:?];
    }

    v15 = [(VUIDownloadTableViewController *)self navigationItem];
    v16 = [v18 copy];
    [v15 setRightBarButtonItems:v16];

    v17 = [(VUIDownloadTableViewController *)self navigationItem];
    [v17 setLeftBarButtonItem:self->_leftBarButtonItem];
  }
}

- (void)_batchSelectToggled
{
  isSelectingAll = self->_isSelectingAll;
  if (isSelectingAll)
  {
    [(VUIDownloadTableViewController *)self setIsSelectingAll:0];
    v4 = [(VUIDownloadTableViewController *)self selectAllBarButtonItem];
    v5 = +[VUILocalizationManager sharedInstance];
    v6 = [v5 localizedStringForKey:@"SELECT_ALL"];
    [v4 setTitle:v6];

    [(VUIDownloadTableViewController *)self _clearSelections];
  }

  else
  {
    [(VUIDownloadTableViewController *)self setIsSelectingAll:1];
    v7 = [(VUIDownloadTableViewController *)self selectAllBarButtonItem];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = [v8 localizedStringForKey:@"DESELECT_ALL"];
    [v7 setTitle:v9];

    [(VUIDownloadTableViewController *)self _selectAllCells];
  }

  v10 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
  [v10 setEnabled:!isSelectingAll];
}

- (void)_clearSelections
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  v4 = [v3 indexPathsForSelectedRows];

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
        v11 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
        [v11 deselectRowAtIndexPath:v10 animated:1];

        v12 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
        v13 = [v12 cellForRowAtIndexPath:v10];

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
  v3 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  v4 = [v3 indexPathsForVisibleRows];

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
        v11 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
        [v11 selectRowAtIndexPath:v10 animated:1 scrollPosition:0];

        v12 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
        v13 = [v12 cellForRowAtIndexPath:v10];

        [v13 setSelected:1 animated:1];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)_configureAlertControllerForIndexPath:(id)a3 withCompletion:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v61 = a3;
  v56 = a4;
  v6 = [(UITableView *)self->_downloadEntitiesTableView indexPathsForSelectedRows];
  v58 = [v6 count];

  v7 = +[VUILocalizationManager sharedInstance];
  v60 = [v7 localizedStringForKey:@"DELETE_EXPLANATION"];

  v8 = +[VUILocalizationManager sharedInstance];
  v59 = [v8 localizedStringForKey:@"DELETE_DOWNLOAD"];

  if (v61)
  {
    v9 = [(VUIDownloadTableViewController *)self diffableDataSource];
    v10 = [v9 itemIdentifierForIndexPath:v61];

    v11 = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
    v12 = [v11 objectForKey:v10];

    v13 = [v12 numberOfMediaItems];
    v14 = [v13 unsignedIntegerValue];
  }

  else if (self->_isSelectingAll)
  {
    v14 = [(NSMutableArray *)self->_downloadEntities count];
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v15 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    v16 = [v15 indexPathsForSelectedRows];

    v14 = 0;
    v17 = [v16 countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v17)
    {
      v18 = *v79;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v79 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [*(*(&v78 + 1) + 8 * i) row]);
          v21 = [v20 numberOfMediaItems];
          v22 = [v21 unsignedIntegerValue];

          v14 += v22;
        }

        v17 = [v16 countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v17);
    }
  }

  if (v14 >= 2)
  {
    v23 = +[VUILocalizationManager sharedInstance];
    v24 = [v23 localizedStringForKey:@"DELETES_EXPLANATION"];

    v25 = MEMORY[0x1E696AEC0];
    v26 = +[VUILocalizationManager sharedInstance];
    v27 = [v26 localizedStringForKey:@"DELETE_%U_DOWNLOADS"];
    v28 = [v25 localizedStringWithValidatedFormat:v27 validFormatSpecifiers:@"%u" error:0, v14];

    v59 = v28;
    v60 = v24;
  }

  v29 = objc_opt_new();
  if (v61)
  {
    v30 = [(VUIDownloadTableViewController *)self diffableDataSource];
    v31 = [v30 itemIdentifierForIndexPath:v61];

    v32 = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
    v33 = [v32 objectForKey:v31];

    [(NSMutableArray *)v29 addObject:v33];
  }

  else if (self->_isSelectingAll)
  {
    v31 = v29;
    v29 = self->_downloadEntities;
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v34 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    v31 = [v34 indexPathsForSelectedRows];

    v35 = [v31 countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (v35)
    {
      v36 = *v75;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v75 != v36)
          {
            objc_enumerationMutation(v31);
          }

          v38 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [*(*(&v74 + 1) + 8 * j) row]);
          [(NSMutableArray *)v29 addObject:v38];
        }

        v35 = [v31 countByEnumeratingWithState:&v74 objects:v82 count:16];
      }

      while (v35);
    }
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__VUIDownloadTableViewController__configureAlertControllerForIndexPath_withCompletion___block_invoke;
  aBlock[3] = &unk_1E872DE00;
  objc_copyWeak(&v72, &location);
  v39 = v29;
  v70 = v39;
  v40 = v56;
  v71 = v40;
  v57 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __87__VUIDownloadTableViewController__configureAlertControllerForIndexPath_withCompletion___block_invoke_2;
  v66[3] = &unk_1E872E828;
  objc_copyWeak(&v68, &location);
  v41 = v40;
  v67 = v41;
  v42 = _Block_copy(v66);
  if (v58)
  {
    v43 = 1;
  }

  else
  {
    v43 = v61 != 0;
  }

  if (v43)
  {
    v44 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v60 preferredStyle:0];
    v45 = MEMORY[0x1E69DC648];
    v46 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v59 validFormatSpecifiers:@"%lu" error:0, v58];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __87__VUIDownloadTableViewController__configureAlertControllerForIndexPath_withCompletion___block_invoke_3;
    v64[3] = &unk_1E872E850;
    v65 = v57;
    v47 = [v45 actionWithTitle:v46 style:2 handler:v64];

    [v44 addAction:v47];
    v48 = MEMORY[0x1E69DC648];
    v49 = +[VUILocalizationManager sharedInstance];
    v50 = [v49 localizedStringForKey:@"CANCEL"];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __87__VUIDownloadTableViewController__configureAlertControllerForIndexPath_withCompletion___block_invoke_4;
    v62[3] = &unk_1E872E850;
    v63 = v42;
    v51 = [v48 actionWithTitle:v50 style:1 handler:v62];

    [v44 addAction:v51];
    v52 = [MEMORY[0x1E69DC938] currentDevice];
    LODWORD(v49) = [v52 userInterfaceIdiom] == 1;

    if (v49)
    {
      [v44 setModalPresentationStyle:7];
      v53 = [v44 popoverPresentationController];
      v54 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
      [v53 setBarButtonItem:v54];
    }
  }

  else
  {
    if (v41)
    {
      (*(v41 + 2))(v41, 0);
    }

    v44 = 0;
  }

  objc_destroyWeak(&v68);
  objc_destroyWeak(&v72);
  objc_destroyWeak(&location);

  return v44;
}

void __87__VUIDownloadTableViewController__configureAlertControllerForIndexPath_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _deleteDownloadEntities:*(a1 + 32)];
  [WeakRetained _exitEditingMode];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }
}

void __87__VUIDownloadTableViewController__configureAlertControllerForIndexPath_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _exitEditingMode];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }
}

- (id)_configureRenewAlertControllerForIndexPath:(id)a3 forPreferredStyle:(int64_t)a4 withCompletion:(id)a5
{
  v99 = *MEMORY[0x1E69E9840];
  v74 = a3;
  v75 = a5;
  if (v74)
  {
    v8 = [(VUIDownloadTableViewController *)self diffableDataSource];
    v9 = [v8 itemIdentifierForIndexPath:v74];

    v10 = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
    v11 = [v10 objectForKey:v9];
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v12 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    v13 = [v12 indexPathsForSelectedRows];

    v11 = 0;
    v14 = [v13 countByEnumeratingWithState:&v94 objects:v98 count:16];
    if (v14)
    {
      v15 = *v95;
      do
      {
        v16 = 0;
        v17 = v11;
        do
        {
          if (*v95 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v11 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [*(*(&v94 + 1) + 8 * v16) row]);

          ++v16;
          v17 = v11;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v94 objects:v98 count:16];
      }

      while (v14);
    }
  }

  v18 = [v11 mediaEntities];
  v19 = [v18 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v72 = v19;
    v73 = [v72 availabilityEndDate];
    if (v73 && ![v73 vui_isInTheFuture])
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_5;
      aBlock[3] = &unk_1E872DFB8;
      objc_copyWeak(&v82, &location);
      v79 = v74;
      v80 = v11;
      v81 = v75;
      v71 = _Block_copy(aBlock);
      v36 = MEMORY[0x1E696AEC0];
      v37 = +[VUILocalizationManager sharedInstance];
      v38 = [v37 localizedStringForKey:@"DOWNLOAD_MESSAGE_NO_LONGER_AVAILABLE"];
      v39 = [v72 brandName];
      v40 = [v36 stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:0, v39];

      v41 = MEMORY[0x1E69DC650];
      v42 = +[VUILocalizationManager sharedInstance];
      v43 = [v42 localizedStringForKey:@"DOWNLOAD_NO_LONGER_AVAILABLE"];
      v26 = [v41 alertControllerWithTitle:v43 message:v40 preferredStyle:1];

      v44 = MEMORY[0x1E69DC648];
      v45 = +[VUILocalizationManager sharedInstance];
      v46 = [v45 localizedStringForKey:@"DELETE"];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_6;
      v76[3] = &unk_1E872E850;
      v47 = v71;
      v77 = v47;
      v48 = [v44 actionWithTitle:v46 style:0 handler:v76];

      [v26 addAction:v48];
      objc_destroyWeak(&v82);
      objc_destroyWeak(&location);
    }

    else if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
    {
      v20 = [v72 allowsManualDownloadRenewal];
      v21 = v20;
      if (v20)
      {
        v22 = @"RENEW_DOWNLOAD";
      }

      else
      {
        v22 = @"DOWNLOAD_AGAIN_BUTTON_TITLE";
      }

      if (v20)
      {
        v23 = @"DOWNLOAD_MESSAGE_RENEW";
      }

      else
      {
        v23 = @"DOWNLOAD_MESSAGE_REDOWNLOAD";
      }

      if (a4 == 1)
      {
        if (v20)
        {
          v24 = @"RENEW_DOWNLOAD";
        }

        else
        {
          v24 = @"DOWNLOAD_AGAIN";
        }

        v25 = +[VUILocalizationManager sharedInstance];
        v70 = [v25 localizedStringForKey:v24];
      }

      else
      {
        v70 = 0;
      }

      v49 = +[VUILocalizationManager sharedInstance];
      v69 = [v49 localizedStringForKey:v22];

      v50 = MEMORY[0x1E696AEC0];
      v51 = +[VUILocalizationManager sharedInstance];
      v52 = [v51 localizedStringForKey:v23];
      v53 = [v72 brandName];
      v68 = [v50 stringWithValidatedFormat:v52 validFormatSpecifiers:@"%@" error:0, v53];

      v26 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v70 message:v68 preferredStyle:a4];
      objc_initWeak(&location, self);
      v54 = MEMORY[0x1E69DC648];
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke;
      v87[3] = &unk_1E87320D8;
      objc_copyWeak(&v91, &location);
      v55 = v72;
      v92 = v21;
      v88 = v55;
      v89 = self;
      v56 = v75;
      v90 = v56;
      v57 = [v54 actionWithTitle:v69 style:0 handler:v87];
      [v26 addAction:v57];
      v58 = MEMORY[0x1E69DC648];
      v59 = +[VUILocalizationManager sharedInstance];
      v60 = [v59 localizedStringForKey:@"CANCEL"];
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_3;
      v85[3] = &unk_1E872E850;
      v86 = v56;
      v61 = [v58 actionWithTitle:v60 style:1 handler:v85];

      [v26 addAction:v61];
      objc_destroyWeak(&v91);
      objc_destroyWeak(&location);
    }

    else
    {
      v27 = MEMORY[0x1E69DC650];
      v28 = +[VUILocalizationManager sharedInstance];
      v29 = [v28 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW"];
      v30 = +[VUILocalizationManager sharedInstance];
      v31 = [v30 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW_MESSAGE"];
      v26 = [v27 alertControllerWithTitle:v29 message:v31 preferredStyle:1];

      v32 = MEMORY[0x1E69DC648];
      v33 = +[VUILocalizationManager sharedInstance];
      v34 = [v33 localizedStringForKey:@"OK"];
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_4;
      v83[3] = &unk_1E872E850;
      v84 = v75;
      v35 = [v32 actionWithTitle:v34 style:1 handler:v83];

      [v26 addAction:v35];
    }
  }

  else
  {
    if (v75)
    {
      v75[2]();
    }

    v26 = 0;
  }

  v62 = [MEMORY[0x1E69DC938] currentDevice];
  v64 = [v62 userInterfaceIdiom] == 1 && v26 != 0;

  if (v64)
  {
    [v26 setModalPresentationStyle:7];
    v65 = [v26 popoverPresentationController];
    v66 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
    [v65 setBarButtonItem:v66];
  }

  return v26;
}

void __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) assetController];

    if (v3)
    {
      if (*(a1 + 64) == 1)
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
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_2;
        v11[3] = &unk_1E872E878;
        v12 = *(a1 + 32);
        [v5 preflightDownloadForLibraryMediaEntity:v6 presentingViewController:v7 contentAllowsCellularDownload:v9 completion:v11];
      }

      v10 = *(a1 + 48);
      if (v10)
      {
        (*(v10 + 16))(v10, 1);
      }
    }
  }
}

void __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = [*(a1 + 32) assetController];
    [v6 startDownloadAllowingCellular:a3 quality:a4 shouldMarkAsDeletedOnCancellationOrFailure:0 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:0];
  }
}

uint64_t __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_5(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v5[0] = *(a1 + 40);
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [WeakRetained _deleteDownloadEntities:v3];

    [WeakRetained _exitEditingMode];
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 1);
    }
  }
}

- (void)_exitEditingMode
{
  v3 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
  [v3 setEnabled:1];

  v4 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  [v4 setEditing:0 animated:1];

  v5 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"EDIT"];
  [v5 setTitle:v7];

  [(VUIDownloadTableViewController *)self setIsSelectingAll:0];
  v8 = [(VUIDownloadTableViewController *)self selectAllBarButtonItem];
  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"SELECT_ALL"];
  [v8 setTitle:v10];

  v17 = objc_opt_new();
  if (self->_rightBarButtonItem)
  {
    [v17 addObject:?];
  }

  v11 = [(VUIDownloadTableViewController *)self navigationItem];
  v12 = [v17 copy];
  [v11 setRightBarButtonItems:v12];

  v13 = [(VUIDownloadTableViewController *)self navigationItem];
  v14 = [(VUIDownloadTableViewController *)self backBarButtonItem];
  [v13 setLeftBarButtonItem:v14];

  v15 = [(VUIDownloadTableViewController *)self alertController];

  if (v15)
  {
    v16 = [(VUIDownloadTableViewController *)self alertController];
    [v16 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)_deleteDownloadEntities:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = __58__VUIDownloadTableViewController__deleteDownloadEntities___block_invoke;
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

void __58__VUIDownloadTableViewController__deleteDownloadEntities___block_invoke(uint64_t a1)
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
  v12[2] = __58__VUIDownloadTableViewController__deleteDownloadEntities___block_invoke_2;
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
              v18 = [(VUIDownloadTableViewController *)self assetControllersToRemove];
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

- (BOOL)_downloadEntityShouldShowRenewOption:(id)a3
{
  v3 = a3;
  v4 = [v3 mediaEntities];
  v5 = [v4 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 availabilityEndDate];
    v8 = [v6 downloadExpirationDate];
    v9 = v8;
    if (!v8 || [v8 vui_isInTheFuture])
    {
      v10 = [v6 brandID];
      if ([v10 length])
      {
        v11 = +[VUIFeaturesConfiguration sharedInstance];
        v12 = [v11 downloadConfig];
        v13 = [v12 blacklistedEarlyRenewalBrands];

        LOBYTE(v11) = [v13 containsObject:v10];
        if (v11)
        {

          goto LABEL_12;
        }
      }
    }

    if ((!v7 || [v7 vui_isInTheFuture]) && (objc_msgSend(v6, "renewsOfflineKeysAutomatically") & 1) == 0)
    {
      v14 = [v3 downloadType] == 0;
      goto LABEL_14;
    }

LABEL_12:
    v14 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (id)_createDiffableDataSource
{
  v3 = objc_alloc(MEMORY[0x1E69DD040]);
  v4 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__VUIDownloadTableViewController__createDiffableDataSource__block_invoke;
  v7[3] = &unk_1E8732100;
  v7[4] = self;
  v5 = [v3 initWithTableView:v4 cellProvider:v7];

  return v5;
}

id __59__VUIDownloadTableViewController__createDiffableDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v7 dequeueReusableCellWithIdentifier:v11 forIndexPath:v8];

  v13 = [*(a1 + 32) identifierToDownloadEntityDictionary];
  v14 = [v13 objectForKey:v9];

  [v12 setDelegate:*(a1 + 32)];
  [VUIDownloadEntityTableViewCell configureVUIDownloadEntityTableViewCell:v12 withDownloadEntity:v14 forMetrics:0];
  v15 = [v12 downloadButton];
  v16 = v15;
  if (v15)
  {
    [v15 setPresentingViewController:*(a1 + 32)];
  }

  [v14 setDelegate:v12];
  if ([v8 row])
  {
    [v12 setTopSeparatorView:0];
  }

  else
  {
    v17 = objc_alloc_init(VUISeparatorView);
    [v12 setTopSeparatorView:v17];
  }

  v18 = [v7 numberOfSections] - 1;
  v19 = [v7 numberOfRowsInSection:v18];
  v20 = [MEMORY[0x1E696AC88] indexPathForRow:v19 - 1 inSection:v18];
  if ([v8 compare:v20])
  {
    v21 = objc_alloc_init(VUISeparatorView);
    [v12 setBottomSeparatorView:v21];
  }

  else
  {
    [v12 setBottomSeparatorView:0];
  }

  return v12;
}

- (id)_createDiffableDataSourceSnapshot
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v7[0] = @"DownloadTableViewMainSection";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  v5 = [(VUIDownloadTableViewController *)self _identifiersForDownloadEntities];
  [v3 appendItemsWithIdentifiers:v5 intoSectionWithIdentifier:@"DownloadTableViewMainSection"];

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
  v4 = [(VUIDownloadTableViewController *)self downloadEntities];
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
  v4 = [(VUIDownloadTableViewController *)self downloadEntities];
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

- (void)_updateNavigationBarPadding
{
  v3 = MEMORY[0x1E69DD2E8];
  v4 = [(VUIDownloadTableViewController *)self view];
  [v4 bounds];
  [v3 vui_paddingForWindowWidth:CGRectGetWidth(v27)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(VUIDownloadTableViewController *)self navigationController];
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

  v22 = [(VUIDownloadTableViewController *)self navigationController];
  v23 = [v22 navigationBar];
  [v23 setLayoutMargins:{v6, v8, v10, v12}];

  v25 = [(VUIDownloadTableViewController *)self navigationController];
  v24 = [v25 navigationBar];
  [v24 setNeedsLayout];
}

- (void)_clearTableViewSelections:(BOOL)a3
{
  v5 = self->_downloadEntitiesTableView;
  v6 = [(UITableView *)v5 indexPathsForSelectedRows];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [(VUIDownloadTableViewController *)self transitionCoordinator];
    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__VUIDownloadTableViewController__clearTableViewSelections___block_invoke;
      v12[3] = &unk_1E872D878;
      v13 = v5;
      v14 = v7;
      v15 = a3;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__VUIDownloadTableViewController__clearTableViewSelections___block_invoke_2;
      v9[3] = &unk_1E872D8A0;
      v10 = v13;
      v11 = v14;
      [v8 animateAlongsideTransition:v12 completion:v9];
    }

    else
    {
      [(UITableView *)v5 deselectRowAtIndexPath:v7 animated:1];
    }
  }
}

uint64_t __60__VUIDownloadTableViewController__clearTableViewSelections___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 selectRowAtIndexPath:v5 animated:0 scrollPosition:0];
  }

  return result;
}

- (void)fullscreenPlaybackUIDidChangeNotification:(id)a3
{
  v4 = +[VUIPlaybackManager sharedInstance];
  v5 = [v4 isFullscreenPlaybackUIBeingShown];

  if ((v5 & 1) == 0)
  {

    [(VUIDownloadTableViewController *)self _clearTableViewSelections:1];
  }
}

void __42__VUIDownloadTableViewController_loadView__block_invoke_2_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "[loadView] - isFullTVAppEnabled: %d, error: %@", v3, 0x12u);
}

@end