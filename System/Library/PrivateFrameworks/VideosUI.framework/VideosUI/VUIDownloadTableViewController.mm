@interface VUIDownloadTableViewController
- (BOOL)_downloadEntityShouldShowRenewOption:(id)option;
- (VUIDownloadTableViewController)initWithDataSource:(id)source;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_configureAlertControllerForIndexPath:(id)path withCompletion:(id)completion;
- (id)_configureRenewAlertControllerForIndexPath:(id)path forPreferredStyle:(int64_t)style withCompletion:(id)completion;
- (id)_createDiffableDataSource;
- (id)_createDiffableDataSourceSnapshot;
- (id)_createIdentifierToDownloadEntityDictionary;
- (id)_identifiersForDownloadEntities;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (void)_batchSelectToggled;
- (void)_clearSelections;
- (void)_clearTableViewSelections:(BOOL)selections;
- (void)_deleteDownloadEntities:(id)entities;
- (void)_deleteMediaEntitiesInDownloadEntities:(id)entities;
- (void)_editToggled;
- (void)_exitEditingMode;
- (void)_popIfNeeded;
- (void)_selectAllCells;
- (void)_toggleRightBarEditItemIfNeeded;
- (void)_updateNavigationBarPadding;
- (void)dealloc;
- (void)downloadCellDidRequestCancelDownload:(id)download;
- (void)downloadManager:(id)manager downloadedFetchDidFinishWithEntities:(id)entities;
- (void)downloadManager:(id)manager downloadsDidChange:(id)change;
- (void)fullscreenPlaybackUIDidChangeNotification:(id)notification;
- (void)loadView;
- (void)setDownloadEntities:(id)entities;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation VUIDownloadTableViewController

- (VUIDownloadTableViewController)initWithDataSource:(id)source
{
  v16[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = VUIDownloadTableViewController;
  v5 = [(VUIDownloadTableViewController *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(VUIDownloadTableViewController *)v5 setDownloadDataSource:sourceCopy];
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
  contentPresenter = [(VUIDownloadTableViewController *)self contentPresenter];
  [contentPresenter setRootViewForViewController:self];

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

  _createDiffableDataSource = [(VUIDownloadTableViewController *)self _createDiffableDataSource];
  [(VUIDownloadTableViewController *)self setDiffableDataSource:_createDiffableDataSource];

  if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) == 0)
  {
    v14 = objc_alloc(MEMORY[0x1E69DC708]);
    v15 = +[VUILocalizationManager sharedInstance];
    v16 = [v15 localizedStringForKey:@"EDIT"];
    v17 = [v14 initWithTitle:v16 style:0 target:self action:sel__editToggled];
    rightBarButtonItem = self->_rightBarButtonItem;
    self->_rightBarButtonItem = v17;

    navigationItem = [(VUIDownloadTableViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:self->_rightBarButtonItem];

    v20 = objc_alloc(MEMORY[0x1E69DC708]);
    v21 = +[VUILocalizationManager sharedInstance];
    v22 = [v21 localizedStringForKey:@"SELECT_ALL"];
    v23 = [v20 initWithTitle:v22 style:0 target:self action:sel__batchSelectToggled];
    selectAllBarButtonItem = self->_selectAllBarButtonItem;
    self->_selectAllBarButtonItem = v23;
  }

  navigationItem2 = [(VUIDownloadTableViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  backBarButtonItem = self->_backBarButtonItem;
  self->_backBarButtonItem = leftBarButtonItem;

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

  contentPresenter2 = [(VUIDownloadTableViewController *)self contentPresenter];
  [contentPresenter2 setCurrentContentViewType:1];

  contentPresenter3 = [(VUIDownloadTableViewController *)self contentPresenter];
  [contentPresenter3 setContentView:self->_downloadEntitiesTableView];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_fullscreenPlaybackUIDidChangeNotification_ name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];

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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v5 viewWillAppear:?];
  [(VUIDownloadTableViewController *)self _clearTableViewSelections:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v4 viewDidAppear:appear];
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
    downloadDataSource = [(VUIDownloadTableViewController *)self downloadDataSource];
    downloadEntities = [downloadDataSource downloadEntities];
    v7 = [downloadEntities mutableCopy];
    [(VUIDownloadTableViewController *)self setDownloadEntities:v7];

    downloadEntities2 = [(VUIDownloadTableViewController *)self downloadEntities];
    v9 = [downloadEntities2 count];

    contentPresenter = [(VUIDownloadTableViewController *)self contentPresenter];
    diffableDataSource = contentPresenter;
    if (v9)
    {
      currentContentViewType = [contentPresenter currentContentViewType];

      if (currentContentViewType != 3)
      {
        contentPresenter2 = [(VUIDownloadTableViewController *)self contentPresenter];
        [contentPresenter2 setCurrentContentViewType:3];
      }

      diffableDataSource = [(VUIDownloadTableViewController *)self diffableDataSource];
      _createDiffableDataSourceSnapshot = [(VUIDownloadTableViewController *)self _createDiffableDataSourceSnapshot];
      [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:currentContentViewType == 3 completion:0];
    }

    else
    {
      [contentPresenter setCurrentContentViewType:2];
    }

    [(VUIDownloadTableViewController *)self _toggleRightBarEditItemIfNeeded];
  }

  else
  {
    [(VUIDownloadDataSource *)self->_downloadDataSource startFetch];
  }

  view = [(VUIDownloadTableViewController *)self view];
  v16 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=Downloaded"];
  [view setAccessibilityIdentifier:v16];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v5 viewWillLayoutSubviews];
  contentPresenter = [(VUIDownloadTableViewController *)self contentPresenter];
  view = [(VUIDownloadTableViewController *)self view];
  [view bounds];
  [contentPresenter configureCurrentViewFrameForBounds:?];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIDownloadTableViewController;
  [(VUIDownloadTableViewController *)&v4 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = VUIDownloadTableViewController;
  coordinatorCopy = coordinator;
  [(VUIDownloadTableViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__VUIDownloadTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_sizingCell)
  {
    v6 = objc_alloc_init(VUIDownloadEntityTableViewCell);
    sizingCell = self->_sizingCell;
    self->_sizingCell = v6;
  }

  diffableDataSource = [(VUIDownloadTableViewController *)self diffableDataSource];
  v9 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  identifierToDownloadEntityDictionary = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
  v11 = [identifierToDownloadEntityDictionary objectForKey:v9];

  [VUIDownloadEntityTableViewCell configureVUIDownloadEntityTableViewCell:self->_sizingCell withDownloadEntity:v11 forMetrics:1];
  v12 = self->_sizingCell;
  view = [(VUIDownloadTableViewController *)self view];
  [view bounds];
  [(VUIDownloadEntityTableViewCell *)v12 sizeThatFits:CGRectGetWidth(v17), 1.79769313e308];
  v15 = v14;

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v39[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (![(UITableView *)self->_downloadEntitiesTableView isEditing])
  {
    diffableDataSource = [(VUIDownloadTableViewController *)self diffableDataSource];
    rightBarButtonItem2 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

    identifierToDownloadEntityDictionary = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
    v13 = [identifierToDownloadEntityDictionary objectForKey:rightBarButtonItem2];

    if ([v13 downloadType])
    {
      if ([v13 downloadType] == 1 || objc_msgSend(v13, "downloadType") == 2)
      {
        mediaEntities = [v13 mediaEntities];
        firstObject = [mediaEntities firstObject];

        [VUILibraryMetrics recordClickOnMediaEntity:firstObject];
        v16 = [[VUIDownloadShowDataSource alloc] initWithMediaEntity:firstObject];
        showIdentifier = [firstObject showIdentifier];
        v18 = [VUIMediaEntityFetchRequest seasonsFetchRequestWithShowIdentifier:showIdentifier];
        mediaLibrary = [firstObject mediaLibrary];
        v20 = [VUIMediaEntitiesDataSourceFactory dataSourceForFetchRequest:v18 withLibrary:mediaLibrary];

        v21 = [[VUIDownloadShowTableViewController alloc] initWithDataSource:v16 seasonsDataSource:v20];
        showTitle = [firstObject showTitle];

        if (showTitle)
        {
          navigationItem = [(VUIDownloadShowTableViewController *)v21 navigationItem];
          showTitle2 = [firstObject showTitle];
          [navigationItem setTitle:showTitle2];
        }

        navigationController = [(VUIDownloadTableViewController *)self navigationController];
        [navigationController pushViewController:v21 animated:1];

        rightBarButtonItem2 = v36;
      }
    }

    else
    {
      mediaEntities2 = [v13 mediaEntities];
      firstObject2 = [mediaEntities2 firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = firstObject2;
        downloadExpirationDate = [v28 downloadExpirationDate];
        v30 = downloadExpirationDate;
        if (downloadExpirationDate && ![downloadExpirationDate vui_isInTheFuture])
        {
          v35 = [(VUIDownloadTableViewController *)self _configureRenewAlertControllerForIndexPath:pathCopy forPreferredStyle:1 withCompletion:0];
          if (v35)
          {
            [(VUIDownloadTableViewController *)self presentViewController:v35 animated:1 completion:0];
          }

          [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
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

  rightBarButtonItem = [(VUIDownloadTableViewController *)self rightBarButtonItem];
  isEnabled = [rightBarButtonItem isEnabled];

  if ((isEnabled & 1) == 0)
  {
    rightBarButtonItem2 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
    [rightBarButtonItem2 setEnabled:1];
LABEL_24:
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v5 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView:view];
  isEditing = [v5 isEditing];

  if (isEditing)
  {
    downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    indexPathsForSelectedRows = [downloadEntitiesTableView indexPathsForSelectedRows];
    v9 = [indexPathsForSelectedRows count];

    if (!v9)
    {
      rightBarButtonItem = [(VUIDownloadTableViewController *)self rightBarButtonItem];
      [rightBarButtonItem setEnabled:0];
    }
  }
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  v6 = [(VUIDownloadTableViewController *)self rightBarButtonItem:view];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"DONE"];
  [v6 setTitle:v5];
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  v6 = [(VUIDownloadTableViewController *)self rightBarButtonItem:view];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"EDIT"];
  [v6 setTitle:v5];
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v46 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
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
    v11 = pathCopy;
    v42 = v11;
    v31 = [v8 contextualActionWithStyle:1 title:v10 handler:v41];

    [v33 addObject:v31];
    if (v11)
    {
      diffableDataSource = [(VUIDownloadTableViewController *)self diffableDataSource];
      indexPathsForSelectedRows = [diffableDataSource itemIdentifierForIndexPath:v11];

      identifierToDownloadEntityDictionary = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
      v15 = [identifierToDownloadEntityDictionary objectForKey:indexPathsForSelectedRows];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
      indexPathsForSelectedRows = [downloadEntitiesTableView indexPathsForSelectedRows];

      v15 = 0;
      v17 = [indexPathsForSelectedRows countByEnumeratingWithState:&v37 objects:v45 count:16];
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
              objc_enumerationMutation(indexPathsForSelectedRows);
            }

            v15 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [*(*(&v37 + 1) + 8 * v19) row]);

            ++v19;
            v20 = v15;
          }

          while (v17 != v19);
          v17 = [indexPathsForSelectedRows countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v17);
      }
    }

    if ([(VUIDownloadTableViewController *)self _downloadEntityShouldShowRenewOption:v15])
    {
      mediaEntities = [v15 mediaEntities];
      firstObject = [mediaEntities firstObject];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        downloadExpirationDate = [firstObject downloadExpirationDate];
        if (downloadExpirationDate)
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  if (self->_isSelectingAll)
  {
    [cell setSelected:1];
  }
}

- (void)downloadManager:(id)manager downloadedFetchDidFinishWithEntities:(id)entities
{
  v5 = [(VUIDownloadTableViewController *)self downloadDataSource:manager];
  downloadEntities = [v5 downloadEntities];
  v7 = [downloadEntities mutableCopy];
  [(VUIDownloadTableViewController *)self setDownloadEntities:v7];

  downloadEntities2 = [(VUIDownloadTableViewController *)self downloadEntities];
  v9 = [downloadEntities2 count];

  contentPresenter = [(VUIDownloadTableViewController *)self contentPresenter];
  v11 = contentPresenter;
  if (v9)
  {
    currentContentViewType = [contentPresenter currentContentViewType];

    if (currentContentViewType != 3)
    {
      contentPresenter2 = [(VUIDownloadTableViewController *)self contentPresenter];
      [contentPresenter2 setCurrentContentViewType:3];
    }

    diffableDataSource = [(VUIDownloadTableViewController *)self diffableDataSource];
    _createDiffableDataSourceSnapshot = [(VUIDownloadTableViewController *)self _createDiffableDataSourceSnapshot];
    [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:currentContentViewType == 3 completion:0];
  }

  else
  {
    [contentPresenter setCurrentContentViewType:2];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__VUIDownloadTableViewController_downloadManager_downloadedFetchDidFinishWithEntities___block_invoke;
    block[3] = &unk_1E872D768;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)downloadManager:(id)manager downloadsDidChange:(id)change
{
  v5 = [(VUIDownloadTableViewController *)self downloadDataSource:manager];
  downloadEntities = [v5 downloadEntities];
  v7 = [downloadEntities mutableCopy];
  [(VUIDownloadTableViewController *)self setDownloadEntities:v7];

  downloadEntities2 = [(VUIDownloadTableViewController *)self downloadEntities];
  v9 = [downloadEntities2 count];

  contentPresenter = [(VUIDownloadTableViewController *)self contentPresenter];
  v11 = contentPresenter;
  if (v9)
  {
    [contentPresenter setCurrentContentViewType:3];

    diffableDataSource = [(VUIDownloadTableViewController *)self diffableDataSource];
    _createDiffableDataSourceSnapshot = [(VUIDownloadTableViewController *)self _createDiffableDataSourceSnapshot];
    [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:1 completion:0];
  }

  else
  {
    [contentPresenter setCurrentContentViewType:2];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__VUIDownloadTableViewController_downloadManager_downloadsDidChange___block_invoke;
    block[3] = &unk_1E872D768;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)setDownloadEntities:(id)entities
{
  objc_storeStrong(&self->_downloadEntities, entities);
  _createIdentifierToDownloadEntityDictionary = [(VUIDownloadTableViewController *)self _createIdentifierToDownloadEntityDictionary];
  [(VUIDownloadTableViewController *)self setIdentifierToDownloadEntityDictionary:_createIdentifierToDownloadEntityDictionary];

  [(VUIDownloadTableViewController *)self _toggleRightBarEditItemIfNeeded];
}

- (void)_popIfNeeded
{
  navigationController = [(VUIDownloadTableViewController *)self navigationController];
  childViewControllers = [navigationController childViewControllers];

  downloadEntities = [(VUIDownloadTableViewController *)self downloadEntities];
  if (![downloadEntities count] && objc_msgSend(childViewControllers, "count") >= 2)
  {
    lastObject = [childViewControllers lastObject];

    if (lastObject != self)
    {
      goto LABEL_6;
    }

    downloadEntities = [(VUIDownloadTableViewController *)self navigationController];
    v6 = [downloadEntities popViewControllerAnimated:1];
  }

LABEL_6:
}

- (void)downloadCellDidRequestCancelDownload:(id)download
{
  downloadCopy = download;
  downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  v14 = [downloadEntitiesTableView indexPathForCell:downloadCopy];

  v6 = v14;
  if (v14)
  {
    v7 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [v14 row]);
    mediaEntities = [v7 mediaEntities];
    firstObject = [mediaEntities firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = firstObject;
      if (([v10 markedAsDeleted] & 1) != 0 || (objc_msgSend(v10, "downloadExpirationDate"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
      {
        -[NSMutableArray removeObjectAtIndex:](self->_downloadEntities, "removeObjectAtIndex:", [v14 row]);
        diffableDataSource = [(VUIDownloadTableViewController *)self diffableDataSource];
        _createDiffableDataSourceSnapshot = [(VUIDownloadTableViewController *)self _createDiffableDataSourceSnapshot];
        [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:1 completion:0];
      }
    }

    v6 = v14;
  }
}

- (void)_toggleRightBarEditItemIfNeeded
{
  v8[1] = *MEMORY[0x1E69E9840];
  downloadEntities = [(VUIDownloadTableViewController *)self downloadEntities];
  v4 = [downloadEntities count];

  navigationItem = [(VUIDownloadTableViewController *)self navigationItem];
  v6 = navigationItem;
  if (v4)
  {
    v8[0] = self->_rightBarButtonItem;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [v6 setRightBarButtonItems:v7];
  }

  else
  {
    [navigationItem setRightBarButtonItems:MEMORY[0x1E695E0F0]];
  }
}

- (void)_editToggled
{
  if ([(UITableView *)self->_downloadEntitiesTableView isEditing])
  {
    downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    indexPathsForSelectedRows = [downloadEntitiesTableView indexPathsForSelectedRows];
    v5 = [indexPathsForSelectedRows count];

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

    rightBarButtonItem = [(VUIDownloadTableViewController *)self rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];

    selectAllBarButtonItem = [(VUIDownloadTableViewController *)self selectAllBarButtonItem];
    v13 = +[VUILocalizationManager sharedInstance];
    v14 = [v13 localizedStringForKey:@"SELECT_ALL"];
    [selectAllBarButtonItem setTitle:v14];

    v18 = objc_opt_new();
    if (self->_rightBarButtonItem)
    {
      [v18 addObject:?];
    }

    if (self->_selectAllBarButtonItem)
    {
      [v18 addObject:?];
    }

    navigationItem = [(VUIDownloadTableViewController *)self navigationItem];
    v16 = [v18 copy];
    [navigationItem setRightBarButtonItems:v16];

    navigationItem2 = [(VUIDownloadTableViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:self->_leftBarButtonItem];
  }
}

- (void)_batchSelectToggled
{
  isSelectingAll = self->_isSelectingAll;
  if (isSelectingAll)
  {
    [(VUIDownloadTableViewController *)self setIsSelectingAll:0];
    selectAllBarButtonItem = [(VUIDownloadTableViewController *)self selectAllBarButtonItem];
    v5 = +[VUILocalizationManager sharedInstance];
    v6 = [v5 localizedStringForKey:@"SELECT_ALL"];
    [selectAllBarButtonItem setTitle:v6];

    [(VUIDownloadTableViewController *)self _clearSelections];
  }

  else
  {
    [(VUIDownloadTableViewController *)self setIsSelectingAll:1];
    selectAllBarButtonItem2 = [(VUIDownloadTableViewController *)self selectAllBarButtonItem];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = [v8 localizedStringForKey:@"DESELECT_ALL"];
    [selectAllBarButtonItem2 setTitle:v9];

    [(VUIDownloadTableViewController *)self _selectAllCells];
  }

  rightBarButtonItem = [(VUIDownloadTableViewController *)self rightBarButtonItem];
  [rightBarButtonItem setEnabled:!isSelectingAll];
}

- (void)_clearSelections
{
  v19 = *MEMORY[0x1E69E9840];
  downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  indexPathsForSelectedRows = [downloadEntitiesTableView indexPathsForSelectedRows];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = indexPathsForSelectedRows;
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
        downloadEntitiesTableView2 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
        [downloadEntitiesTableView2 deselectRowAtIndexPath:v10 animated:1];

        downloadEntitiesTableView3 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
        v13 = [downloadEntitiesTableView3 cellForRowAtIndexPath:v10];

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
  downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  indexPathsForVisibleRows = [downloadEntitiesTableView indexPathsForVisibleRows];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = indexPathsForVisibleRows;
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
        downloadEntitiesTableView2 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
        [downloadEntitiesTableView2 selectRowAtIndexPath:v10 animated:1 scrollPosition:0];

        downloadEntitiesTableView3 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
        v13 = [downloadEntitiesTableView3 cellForRowAtIndexPath:v10];

        [v13 setSelected:1 animated:1];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)_configureAlertControllerForIndexPath:(id)path withCompletion:(id)completion
{
  v84 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  completionCopy = completion;
  indexPathsForSelectedRows = [(UITableView *)self->_downloadEntitiesTableView indexPathsForSelectedRows];
  v58 = [indexPathsForSelectedRows count];

  v7 = +[VUILocalizationManager sharedInstance];
  v60 = [v7 localizedStringForKey:@"DELETE_EXPLANATION"];

  v8 = +[VUILocalizationManager sharedInstance];
  v59 = [v8 localizedStringForKey:@"DELETE_DOWNLOAD"];

  if (pathCopy)
  {
    diffableDataSource = [(VUIDownloadTableViewController *)self diffableDataSource];
    v10 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

    identifierToDownloadEntityDictionary = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
    v12 = [identifierToDownloadEntityDictionary objectForKey:v10];

    numberOfMediaItems = [v12 numberOfMediaItems];
    unsignedIntegerValue = [numberOfMediaItems unsignedIntegerValue];
  }

  else if (self->_isSelectingAll)
  {
    unsignedIntegerValue = [(NSMutableArray *)self->_downloadEntities count];
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    indexPathsForSelectedRows2 = [downloadEntitiesTableView indexPathsForSelectedRows];

    unsignedIntegerValue = 0;
    v17 = [indexPathsForSelectedRows2 countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v17)
    {
      v18 = *v79;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v79 != v18)
          {
            objc_enumerationMutation(indexPathsForSelectedRows2);
          }

          v20 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [*(*(&v78 + 1) + 8 * i) row]);
          numberOfMediaItems2 = [v20 numberOfMediaItems];
          unsignedIntegerValue2 = [numberOfMediaItems2 unsignedIntegerValue];

          unsignedIntegerValue += unsignedIntegerValue2;
        }

        v17 = [indexPathsForSelectedRows2 countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v17);
    }
  }

  if (unsignedIntegerValue >= 2)
  {
    v23 = +[VUILocalizationManager sharedInstance];
    v24 = [v23 localizedStringForKey:@"DELETES_EXPLANATION"];

    v25 = MEMORY[0x1E696AEC0];
    v26 = +[VUILocalizationManager sharedInstance];
    v27 = [v26 localizedStringForKey:@"DELETE_%U_DOWNLOADS"];
    v28 = [v25 localizedStringWithValidatedFormat:v27 validFormatSpecifiers:@"%u" error:0, unsignedIntegerValue];

    v59 = v28;
    v60 = v24;
  }

  v29 = objc_opt_new();
  if (pathCopy)
  {
    diffableDataSource2 = [(VUIDownloadTableViewController *)self diffableDataSource];
    indexPathsForSelectedRows3 = [diffableDataSource2 itemIdentifierForIndexPath:pathCopy];

    identifierToDownloadEntityDictionary2 = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
    v33 = [identifierToDownloadEntityDictionary2 objectForKey:indexPathsForSelectedRows3];

    [(NSMutableArray *)v29 addObject:v33];
  }

  else if (self->_isSelectingAll)
  {
    indexPathsForSelectedRows3 = v29;
    v29 = self->_downloadEntities;
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    downloadEntitiesTableView2 = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    indexPathsForSelectedRows3 = [downloadEntitiesTableView2 indexPathsForSelectedRows];

    v35 = [indexPathsForSelectedRows3 countByEnumeratingWithState:&v74 objects:v82 count:16];
    if (v35)
    {
      v36 = *v75;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v75 != v36)
          {
            objc_enumerationMutation(indexPathsForSelectedRows3);
          }

          v38 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [*(*(&v74 + 1) + 8 * j) row]);
          [(NSMutableArray *)v29 addObject:v38];
        }

        v35 = [indexPathsForSelectedRows3 countByEnumeratingWithState:&v74 objects:v82 count:16];
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
  v40 = completionCopy;
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
    v43 = pathCopy != 0;
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    LODWORD(v49) = [currentDevice userInterfaceIdiom] == 1;

    if (v49)
    {
      [v44 setModalPresentationStyle:7];
      popoverPresentationController = [v44 popoverPresentationController];
      rightBarButtonItem = [(VUIDownloadTableViewController *)self rightBarButtonItem];
      [popoverPresentationController setBarButtonItem:rightBarButtonItem];
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

- (id)_configureRenewAlertControllerForIndexPath:(id)path forPreferredStyle:(int64_t)style withCompletion:(id)completion
{
  v99 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  completionCopy = completion;
  if (pathCopy)
  {
    diffableDataSource = [(VUIDownloadTableViewController *)self diffableDataSource];
    v9 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

    identifierToDownloadEntityDictionary = [(VUIDownloadTableViewController *)self identifierToDownloadEntityDictionary];
    v11 = [identifierToDownloadEntityDictionary objectForKey:v9];
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
    indexPathsForSelectedRows = [downloadEntitiesTableView indexPathsForSelectedRows];

    v11 = 0;
    v14 = [indexPathsForSelectedRows countByEnumeratingWithState:&v94 objects:v98 count:16];
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
            objc_enumerationMutation(indexPathsForSelectedRows);
          }

          v11 = -[NSMutableArray objectAtIndex:](self->_downloadEntities, "objectAtIndex:", [*(*(&v94 + 1) + 8 * v16) row]);

          ++v16;
          v17 = v11;
        }

        while (v14 != v16);
        v14 = [indexPathsForSelectedRows countByEnumeratingWithState:&v94 objects:v98 count:16];
      }

      while (v14);
    }
  }

  mediaEntities = [v11 mediaEntities];
  firstObject = [mediaEntities firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v72 = firstObject;
    availabilityEndDate = [v72 availabilityEndDate];
    if (availabilityEndDate && ![availabilityEndDate vui_isInTheFuture])
    {
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __110__VUIDownloadTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_5;
      aBlock[3] = &unk_1E872DFB8;
      objc_copyWeak(&v82, &location);
      v79 = pathCopy;
      v80 = v11;
      v81 = completionCopy;
      v71 = _Block_copy(aBlock);
      v36 = MEMORY[0x1E696AEC0];
      v37 = +[VUILocalizationManager sharedInstance];
      v38 = [v37 localizedStringForKey:@"DOWNLOAD_MESSAGE_NO_LONGER_AVAILABLE"];
      brandName = [v72 brandName];
      v40 = [v36 stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:0, brandName];

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
      allowsManualDownloadRenewal = [v72 allowsManualDownloadRenewal];
      v21 = allowsManualDownloadRenewal;
      if (allowsManualDownloadRenewal)
      {
        v22 = @"RENEW_DOWNLOAD";
      }

      else
      {
        v22 = @"DOWNLOAD_AGAIN_BUTTON_TITLE";
      }

      if (allowsManualDownloadRenewal)
      {
        v23 = @"DOWNLOAD_MESSAGE_RENEW";
      }

      else
      {
        v23 = @"DOWNLOAD_MESSAGE_REDOWNLOAD";
      }

      if (style == 1)
      {
        if (allowsManualDownloadRenewal)
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
      brandName2 = [v72 brandName];
      v68 = [v50 stringWithValidatedFormat:v52 validFormatSpecifiers:@"%@" error:0, brandName2];

      v26 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v70 message:v68 preferredStyle:style];
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
      selfCopy = self;
      v56 = completionCopy;
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
      v84 = completionCopy;
      v35 = [v32 actionWithTitle:v34 style:1 handler:v83];

      [v26 addAction:v35];
    }
  }

  else
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }

    v26 = 0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v64 = [currentDevice userInterfaceIdiom] == 1 && v26 != 0;

  if (v64)
  {
    [v26 setModalPresentationStyle:7];
    popoverPresentationController = [v26 popoverPresentationController];
    rightBarButtonItem = [(VUIDownloadTableViewController *)self rightBarButtonItem];
    [popoverPresentationController setBarButtonItem:rightBarButtonItem];
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
  rightBarButtonItem = [(VUIDownloadTableViewController *)self rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  [downloadEntitiesTableView setEditing:0 animated:1];

  rightBarButtonItem2 = [(VUIDownloadTableViewController *)self rightBarButtonItem];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"EDIT"];
  [rightBarButtonItem2 setTitle:v7];

  [(VUIDownloadTableViewController *)self setIsSelectingAll:0];
  selectAllBarButtonItem = [(VUIDownloadTableViewController *)self selectAllBarButtonItem];
  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"SELECT_ALL"];
  [selectAllBarButtonItem setTitle:v10];

  v17 = objc_opt_new();
  if (self->_rightBarButtonItem)
  {
    [v17 addObject:?];
  }

  navigationItem = [(VUIDownloadTableViewController *)self navigationItem];
  v12 = [v17 copy];
  [navigationItem setRightBarButtonItems:v12];

  navigationItem2 = [(VUIDownloadTableViewController *)self navigationItem];
  backBarButtonItem = [(VUIDownloadTableViewController *)self backBarButtonItem];
  [navigationItem2 setLeftBarButtonItem:backBarButtonItem];

  alertController = [(VUIDownloadTableViewController *)self alertController];

  if (alertController)
  {
    alertController2 = [(VUIDownloadTableViewController *)self alertController];
    [alertController2 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)_deleteDownloadEntities:(id)entities
{
  entitiesCopy = entities;
  v7 = MEMORY[0x1E69E9820];
  v8 = __58__VUIDownloadTableViewController__deleteDownloadEntities___block_invoke;
  v9 = &unk_1E872D990;
  selfCopy = self;
  v11 = entitiesCopy;
  v5 = MEMORY[0x1E696AF00];
  v6 = entitiesCopy;
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

- (void)_deleteMediaEntitiesInDownloadEntities:(id)entities
{
  v30 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  v5 = objc_opt_new();
  assetControllersToRemove = self->_assetControllersToRemove;
  self->_assetControllersToRemove = v5;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = entitiesCopy;
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
        mediaEntities = [v11 mediaEntities];
        v13 = [mediaEntities countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(mediaEntities);
              }

              assetController = [*(*(&v20 + 1) + 8 * v16) assetController];
              assetControllersToRemove = [(VUIDownloadTableViewController *)self assetControllersToRemove];
              [assetControllersToRemove addObject:assetController];

              [assetController cancelAndRemoveDownload];
              ++v16;
            }

            while (v14 != v16);
            v14 = [mediaEntities countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (BOOL)_downloadEntityShouldShowRenewOption:(id)option
{
  optionCopy = option;
  mediaEntities = [optionCopy mediaEntities];
  firstObject = [mediaEntities firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = firstObject;
    availabilityEndDate = [v6 availabilityEndDate];
    downloadExpirationDate = [v6 downloadExpirationDate];
    v9 = downloadExpirationDate;
    if (!downloadExpirationDate || [downloadExpirationDate vui_isInTheFuture])
    {
      brandID = [v6 brandID];
      if ([brandID length])
      {
        v11 = +[VUIFeaturesConfiguration sharedInstance];
        downloadConfig = [v11 downloadConfig];
        blacklistedEarlyRenewalBrands = [downloadConfig blacklistedEarlyRenewalBrands];

        LOBYTE(v11) = [blacklistedEarlyRenewalBrands containsObject:brandID];
        if (v11)
        {

          goto LABEL_12;
        }
      }
    }

    if ((!availabilityEndDate || [availabilityEndDate vui_isInTheFuture]) && (objc_msgSend(v6, "renewsOfflineKeysAutomatically") & 1) == 0)
    {
      v14 = [optionCopy downloadType] == 0;
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
  downloadEntitiesTableView = [(VUIDownloadTableViewController *)self downloadEntitiesTableView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__VUIDownloadTableViewController__createDiffableDataSource__block_invoke;
  v7[3] = &unk_1E8732100;
  v7[4] = self;
  v5 = [v3 initWithTableView:downloadEntitiesTableView cellProvider:v7];

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

  _identifiersForDownloadEntities = [(VUIDownloadTableViewController *)self _identifiersForDownloadEntities];
  [v3 appendItemsWithIdentifiers:_identifiersForDownloadEntities intoSectionWithIdentifier:@"DownloadTableViewMainSection"];

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
  downloadEntities = [(VUIDownloadTableViewController *)self downloadEntities];
  v5 = [downloadEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(downloadEntities);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        if (identifier)
        {
          [v3 setValue:v9 forKey:identifier];
        }
      }

      v6 = [downloadEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  downloadEntities = [(VUIDownloadTableViewController *)self downloadEntities];
  v5 = [downloadEntities countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(downloadEntities);
        }

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        if (identifier)
        {
          [v3 addObject:identifier];
        }
      }

      v6 = [downloadEntities countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  array = [v3 array];

  return array;
}

- (void)_updateNavigationBarPadding
{
  v3 = MEMORY[0x1E69DD2E8];
  view = [(VUIDownloadTableViewController *)self view];
  [view bounds];
  [v3 vui_paddingForWindowWidth:CGRectGetWidth(v27)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  navigationController = [(VUIDownloadTableViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar layoutMargins];
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

  navigationController2 = [(VUIDownloadTableViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setLayoutMargins:{v6, v8, v10, v12}];

  navigationController3 = [(VUIDownloadTableViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  [navigationBar3 setNeedsLayout];
}

- (void)_clearTableViewSelections:(BOOL)selections
{
  v5 = self->_downloadEntitiesTableView;
  indexPathsForSelectedRows = [(UITableView *)v5 indexPathsForSelectedRows];
  firstObject = [indexPathsForSelectedRows firstObject];

  if (firstObject)
  {
    transitionCoordinator = [(VUIDownloadTableViewController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__VUIDownloadTableViewController__clearTableViewSelections___block_invoke;
      v12[3] = &unk_1E872D878;
      v13 = v5;
      v14 = firstObject;
      selectionsCopy = selections;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__VUIDownloadTableViewController__clearTableViewSelections___block_invoke_2;
      v9[3] = &unk_1E872D8A0;
      v10 = v13;
      v11 = v14;
      [transitionCoordinator animateAlongsideTransition:v12 completion:v9];
    }

    else
    {
      [(UITableView *)v5 deselectRowAtIndexPath:firstObject animated:1];
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

- (void)fullscreenPlaybackUIDidChangeNotification:(id)notification
{
  v4 = +[VUIPlaybackManager sharedInstance];
  isFullscreenPlaybackUIBeingShown = [v4 isFullscreenPlaybackUIBeingShown];

  if ((isFullscreenPlaybackUIBeingShown & 1) == 0)
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