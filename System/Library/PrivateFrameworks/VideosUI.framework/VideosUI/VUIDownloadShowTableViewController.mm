@interface VUIDownloadShowTableViewController
- (BOOL)_episodeHasAllCanonicalIDs:(id)a3;
- (BOOL)_mediaItemShouldShowRenewOption:(id)a3;
- (VUIDownloadShowTableViewController)initWithDataSource:(id)a3 seasonsDataSource:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_configureDeleteAlertControllerForIndexPath:(id)a3 withCompletion:(id)a4;
- (id)_configureRenewAlertControllerForIndexPath:(id)a3 forPreferredStyle:(int64_t)a4 withCompletion:(id)a5;
- (id)_headerTitleForEpisodeMediaItem:(id)a3;
- (id)_moreEpisodesURLForSection:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_clearTableViewSelections:(BOOL)a3;
- (void)_didPressGetMoreEpisodes:(id)a3;
- (void)_editToggled;
- (void)_exitEditingMode;
- (void)_popIfNeeded;
- (void)_updateNavigationBarPadding;
- (void)dataSourceDidFinishFetching:(id)a3;
- (void)dealloc;
- (void)downloadCellDidRequestCancelDownload:(id)a3;
- (void)fullscreenPlaybackUIDidChangeNotification:(id)a3;
- (void)loadView;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VUIDownloadShowTableViewController

- (VUIDownloadShowTableViewController)initWithDataSource:(id)a3 seasonsDataSource:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = VUIDownloadShowTableViewController;
  v9 = [(VUIDownloadShowTableViewController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_downloadDataSource, a3);
    objc_storeStrong(&v10->_seasonsDataSource, a4);
    v11 = [(VUIDownloadShowTableViewController *)v10 navigationItem];
    [v11 _setSupportsTwoLineLargeTitles:1];
    objc_initWeak(&location, v10);
    v19[0] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__VUIDownloadShowTableViewController_initWithDataSource_seasonsDataSource___block_invoke;
    v15[3] = &unk_1E872E760;
    objc_copyWeak(&v16, &location);
    v13 = [(VUIDownloadShowTableViewController *)v10 registerForTraitChanges:v12 withHandler:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __75__VUIDownloadShowTableViewController_initWithDataSource_seasonsDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSizingHeader:0];
}

- (void)loadView
{
  v31.receiver = self;
  v31.super_class = VUIDownloadShowTableViewController;
  [(VUIDownloadShowTableViewController *)&v31 loadView];
  [(VUILibraryDataSource *)self->_downloadDataSource setDelegate:self];
  [(VUIDownloadShowDataSource *)self->_downloadDataSource startFetch];
  [(VUILibraryDataSource *)self->_seasonsDataSource setDelegate:self];
  [(VUIMediaEntitiesDataSource *)self->_seasonsDataSource startFetch];
  v3 = [(VUIDownloadShowTableViewController *)self tableView];
  [v3 setDelegate:self];

  v4 = [(VUIDownloadShowTableViewController *)self tableView];
  [v4 setDataSource:self];

  v5 = [(VUIDownloadShowTableViewController *)self tableView];
  [v5 setAllowsMultipleSelectionDuringEditing:1];

  v6 = [(VUIDownloadShowTableViewController *)self tableView];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v6 registerClass:v7 forCellReuseIdentifier:v9];

  v10 = [(VUIDownloadShowTableViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  [v10 registerClass:v11 forHeaderFooterViewReuseIdentifier:v13];

  v14 = [(VUIDownloadShowTableViewController *)self tableView];
  v15 = objc_opt_new();
  [v14 setTableFooterView:v15];

  v16 = [(VUIDownloadShowTableViewController *)self tableView];
  [v16 setSeparatorStyle:0];

  v17 = [(VUIDownloadShowTableViewController *)self tableView];
  v18 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=DownloadedShow"];
  [v17 setAccessibilityIdentifier:v18];

  if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) == 0)
  {
    v19 = objc_alloc(MEMORY[0x1E69DC708]);
    v20 = +[VUILocalizationManager sharedInstance];
    v21 = [v20 localizedStringForKey:@"EDIT"];
    v22 = [v19 initWithTitle:v21 style:0 target:self action:sel__editToggled];
    rightBarButtonItem = self->_rightBarButtonItem;
    self->_rightBarButtonItem = v22;

    v24 = [(VUIDownloadShowTableViewController *)self navigationItem];
    [v24 setRightBarButtonItem:self->_rightBarButtonItem];
  }

  v25 = [(VUIDownloadShowTableViewController *)self navigationItem];
  v26 = [v25 leftBarButtonItem];
  backBarButtonItem = self->_backBarButtonItem;
  self->_backBarButtonItem = v26;

  v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed];
  leftBarButtonItem = self->_leftBarButtonItem;
  self->_leftBarButtonItem = v28;

  v30 = [MEMORY[0x1E696AD88] defaultCenter];
  [v30 addObserver:self selector:sel_fullscreenPlaybackUIDidChangeNotification_ name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VUIDownloadShowTableViewController;
  [(VUIDownloadShowTableViewController *)&v5 viewWillAppear:?];
  [(VUIDownloadShowTableViewController *)self _clearTableViewSelections:v3];
  [(VUIDownloadShowTableViewController *)self _updateNavigationBarPadding];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIDownloadShowTableViewController;
  [(VUIDownloadShowTableViewController *)&v3 viewWillLayoutSubviews];
  [(VUIDownloadShowTableViewController *)self _updateNavigationBarPadding];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = VUIDownloadShowTableViewController;
  [(VUIDownloadShowTableViewController *)&v3 viewDidAppear:a3];
  [VUILibraryMetrics recordPageEventWithPageType:@"LibraryDownloadedTvShow"];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIDownloadShowTableViewController;
  [(VUIDownloadShowTableViewController *)&v4 dealloc];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = VUIDownloadShowTableViewController;
  v7 = a4;
  [(VUIDownloadShowTableViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__VUIDownloadShowTableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)dataSourceDidFinishFetching:(id)a3
{
  v4 = a3;
  v5 = [(VUIDownloadShowTableViewController *)self downloadDataSource];

  if (v5 == v4)
  {
    v6 = [(VUIDownloadShowTableViewController *)self downloadDataSource];
    v7 = [v6 grouping];
    v8 = [v7 mutableCopy];
    [(VUIDownloadShowTableViewController *)self setGroupings:v8];
  }

  else
  {
    v6 = [(VUIDownloadShowTableViewController *)self seasonsDataSource];
    v7 = [v6 mediaEntities];
    [(VUIDownloadShowTableViewController *)self setSeasons:v7];
  }

  v12 = [(VUIDownloadShowTableViewController *)self seasonsDataSource];
  if ([v12 hasCompletedInitialFetch])
  {
    v9 = [(VUIDownloadShowTableViewController *)self downloadDataSource];
    v10 = [v9 hasCompletedInitialFetch];

    if (v10)
    {
      v11 = [(VUIDownloadShowTableViewController *)self tableView];
      [v11 reloadData];

      [(VUIDownloadShowTableViewController *)self _popIfNeeded];
    }
  }

  else
  {
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v6 dequeueReusableCellWithIdentifier:v9 forIndexPath:v7];

  v11 = -[NSMutableArray objectAtIndex:](self->_groupings, "objectAtIndex:", [v7 section]);
  v12 = [v11 objectAtIndex:{objc_msgSend(v7, "row")}];
  v13 = [[VUIDownloadEntity alloc] initWithMediaEntity:v12 withDownloadType:3];
  [VUIDownloadEntityTableViewCell configureVUIDownloadEntityTableViewCell:v10 withDownloadEntity:v13 forMetrics:0];
  [v10 setDelegate:self];
  v14 = [v10 downloadButton];
  v15 = v14;
  if (v14)
  {
    [v14 setPresentingViewController:self];
  }

  v16 = [v6 numberOfRowsInSection:{objc_msgSend(v7, "section")}] - 1;
  v17 = [MEMORY[0x1E696AC88] indexPathForRow:v16 inSection:{objc_msgSend(v7, "section")}];
  if ([v7 compare:v17])
  {
    v18 = objc_alloc_init(VUISeparatorView);
    [v10 setBottomSeparatorView:v18];
  }

  else
  {
    [v10 setBottomSeparatorView:0];
  }

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_groupings objectAtIndex:a4];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableArray *)self->_groupings objectAtIndex:a4];
  v8 = [v7 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(VUIDownloadShowTableViewController *)self _headerTitleForEpisodeMediaItem:v8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v11];

    [v12 setHeaderTitle:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (!self->_sizingHeader)
  {
    v7 = objc_alloc_init(VUIDownloadShowTableHeaderView);
    sizingHeader = self->_sizingHeader;
    self->_sizingHeader = v7;
  }

  v9 = [(NSMutableArray *)self->_groupings objectAtIndex:a4];
  v10 = [v9 firstObject];
  objc_opt_class();
  v11 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v12 = [(VUIDownloadShowTableViewController *)self _headerTitleForEpisodeMediaItem:v10];
    [(VUIDownloadShowTableHeaderView *)self->_sizingHeader setHeaderTitle:v12];
    v13 = self->_sizingHeader;
    v14 = [(VUIDownloadShowTableViewController *)self view];
    [v14 bounds];
    [(VUIDownloadShowTableHeaderView *)v13 sizeThatFits:CGRectGetWidth(v17), 1.79769313e308];
    v11 = v15;
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(VUIDownloadShowTableViewController *)self tableView];
  v9 = [v8 isEditing];

  if ((v9 & 1) == 0)
  {
    v12 = -[NSMutableArray objectAtIndex:](self->_groupings, "objectAtIndex:", [v7 section]);
    v13 = [v12 objectAtIndex:{objc_msgSend(v7, "row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      v15 = [v14 downloadExpirationDate];
      v16 = v15;
      if (v15 && ![v15 vui_isInTheFuture])
      {
        v21 = [(VUIDownloadShowTableViewController *)self _configureRenewAlertControllerForIndexPath:v7 forPreferredStyle:1 withCompletion:0];
        if (v21)
        {
          [(VUIDownloadShowTableViewController *)self presentViewController:v21 animated:1 completion:0];
        }

        [v6 deselectRowAtIndexPath:v7 animated:1];
      }

      else
      {
        v17 = [VUIMediaInfo alloc];
        v24[0] = v14;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        v19 = [(VUIMediaInfo *)v17 initWithPlaybackContext:3 vuiMediaItems:v18];

        [(VUIMediaInfo *)v19 setIntent:1];
        [(VUIMediaInfo *)v19 setAutomaticPlaybackStart:0];
        if (v19)
        {
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __72__VUIDownloadShowTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
          v22[3] = &unk_1E872D768;
          v23 = v14;
          [VUIActionPlay playMediaInfo:v19 watchType:0 isRentAndWatchNow:0 completion:v22];
          v20 = v23;
        }

        else
        {
          v20 = VUIDefaultLogObject();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [VUIDownloadShowTableViewController tableView:v14 didSelectRowAtIndexPath:v20];
          }
        }
      }
    }

    goto LABEL_17;
  }

  v10 = [(VUIDownloadShowTableViewController *)self rightBarButtonItem];
  v11 = [v10 isEnabled];

  if ((v11 & 1) == 0)
  {
    v12 = [(VUIDownloadShowTableViewController *)self rightBarButtonItem];
    [v12 setEnabled:1];
LABEL_17:
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = [(VUIDownloadShowTableViewController *)self tableView:a3];
  v6 = [v5 isEditing];

  if (v6)
  {
    v7 = [(VUIDownloadShowTableViewController *)self tableView];
    v8 = [v7 indexPathsForSelectedRows];
    v9 = [v8 count];

    if (!v9)
    {
      v10 = [(VUIDownloadShowTableViewController *)self rightBarButtonItem];
      [v10 setEnabled:0];
    }
  }
}

- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4
{
  v6 = [(VUIDownloadShowTableViewController *)self rightBarButtonItem:a3];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"DONE"];
  [v6 setTitle:v5];
}

- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4
{
  v6 = [(VUIDownloadShowTableViewController *)self rightBarButtonItem:a3];
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
    v31 = v6;
    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69DC8E8];
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"DELETE"];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __99__VUIDownloadShowTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
    v41[3] = &unk_1E872E7B0;
    objc_copyWeak(&v43, &location);
    v29 = v6;
    v42 = v29;
    v30 = [v8 contextualActionWithStyle:1 title:v10 handler:v41];

    [v33 addObject:v30];
    if (v29)
    {
      v11 = -[NSMutableArray objectAtIndex:](self->_groupings, "objectAtIndex:", [v29 section]);
      v12 = [v11 objectAtIndex:{objc_msgSend(v29, "row")}];
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = [(VUIDownloadShowTableViewController *)self tableView];
      v14 = [v13 indexPathsForSelectedRows];

      v12 = 0;
      v11 = 0;
      v15 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v15)
      {
        v16 = *v38;
        do
        {
          v17 = 0;
          v18 = v12;
          v19 = v11;
          do
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v37 + 1) + 8 * v17);
            v11 = -[NSMutableArray objectAtIndex:](self->_groupings, "objectAtIndex:", [v20 section]);

            v12 = [v11 objectAtIndex:{objc_msgSend(v20, "row")}];

            ++v17;
            v18 = v12;
            v19 = v11;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v15);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v12;
      if ([(VUIDownloadShowTableViewController *)self _mediaItemShouldShowRenewOption:v21])
      {
        v22 = MEMORY[0x1E69DC8E8];
        v23 = +[VUILocalizationManager sharedInstance];
        v24 = [v23 localizedStringForKey:@"RENEW"];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __99__VUIDownloadShowTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_2;
        v34[3] = &unk_1E872E7B0;
        objc_copyWeak(&v36, &location);
        v35 = v29;
        v25 = [v22 contextualActionWithStyle:0 title:v24 handler:v34];

        [v33 addObject:v25];
        objc_destroyWeak(&v36);
      }
    }

    v26 = MEMORY[0x1E69DCFC0];
    v27 = [v33 copy];
    v7 = [v26 configurationWithActions:v27];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);

    v6 = v31;
  }

  return v7;
}

void __99__VUIDownloadShowTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _configureDeleteAlertControllerForIndexPath:*(a1 + 32) withCompletion:v5];

  if (v6)
  {
    [WeakRetained presentViewController:v6 animated:1 completion:0];
  }
}

void __99__VUIDownloadShowTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _configureRenewAlertControllerForIndexPath:*(a1 + 32) forPreferredStyle:0 withCompletion:v5];

  if (v6)
  {
    [WeakRetained presentViewController:v6 animated:1 completion:0];
  }
}

- (void)downloadCellDidRequestCancelDownload:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VUIDownloadShowTableViewController *)self tableView];
  v6 = [v5 indexPathForCell:v4];

  if (v6)
  {
    v7 = [(VUIDownloadShowTableViewController *)self groupings];
    v8 = [v7 objectAtIndex:{objc_msgSend(v6, "section")}];

    v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      if (([v10 markedAsDeleted] & 1) != 0 || (objc_msgSend(v10, "downloadExpirationDate"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
      {
        [v8 removeObjectAtIndex:{objc_msgSend(v6, "row")}];
        v12 = [(VUIDownloadShowTableViewController *)self tableView];
        v14[0] = v6;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        [v12 deleteRowsAtIndexPaths:v13 withRowAnimation:100];
      }
    }
  }
}

- (id)_headerTitleForEpisodeMediaItem:(id)a3
{
  v3 = a3;
  v4 = [v3 seasonTitle];

  if (v4)
  {
    v5 = [v3 seasonTitle];
  }

  else
  {
    v6 = [v3 seasonNumber];

    v3 = [v6 stringValue];

    v7 = MEMORY[0x1E696AEC0];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = [v8 localizedStringForKey:@"SEASON_%@"];
    v5 = [v7 stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v3];
  }

  return v5;
}

- (void)_editToggled
{
  v3 = [(VUIDownloadShowTableViewController *)self tableView];
  v4 = [v3 isEditing];

  v5 = [(VUIDownloadShowTableViewController *)self tableView];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 indexPathsForSelectedRows];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [(VUIDownloadShowTableViewController *)self _configureDeleteAlertControllerForIndexPath:0 withCompletion:0];
      if (v9)
      {
        v14 = v9;
        [(VUIDownloadShowTableViewController *)self presentViewController:v9 animated:1 completion:0];
        v9 = v14;
      }
    }

    else
    {

      [(VUIDownloadShowTableViewController *)self _exitEditingMode];
    }
  }

  else
  {
    [v5 setEditing:1 animated:1];

    rightBarButtonItem = self->_rightBarButtonItem;
    v11 = +[VUILocalizationManager sharedInstance];
    v12 = [v11 localizedStringForKey:@"DELETE"];
    [(UIBarButtonItem *)rightBarButtonItem setTitle:v12];

    v13 = [(VUIDownloadShowTableViewController *)self rightBarButtonItem];
    [v13 setEnabled:0];

    v15 = [(VUIDownloadShowTableViewController *)self navigationItem];
    [v15 setLeftBarButtonItem:self->_leftBarButtonItem];
  }
}

- (id)_configureDeleteAlertControllerForIndexPath:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VUIDownloadShowTableViewController *)self tableView];
  v9 = [v8 indexPathsForSelectedRows];
  v10 = [v9 count];

  v11 = +[VUILocalizationManager sharedInstance];
  v12 = [v11 localizedStringForKey:@"DELETE_EXPLANATION"];

  v13 = +[VUILocalizationManager sharedInstance];
  v14 = [v13 localizedStringForKey:@"DELETE_DOWNLOAD"];

  if (!v6 && v10 >= 2)
  {
    v15 = +[VUILocalizationManager sharedInstance];
    v16 = [v15 localizedStringForKey:@"DELETES_EXPLANATION"];

    v17 = MEMORY[0x1E696AEC0];
    v18 = +[VUILocalizationManager sharedInstance];
    v19 = [v18 localizedStringForKey:@"DELETE_%U_DOWNLOADS"];
    v20 = [v17 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%u" error:0, v10];

    v14 = v20;
    v12 = v16;
  }

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke;
  aBlock[3] = &unk_1E872DE00;
  objc_copyWeak(&v50, location);
  v21 = v6;
  v48 = v21;
  v22 = v7;
  v49 = v22;
  v39 = _Block_copy(aBlock);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_6;
  v44[3] = &unk_1E872E828;
  objc_copyWeak(&v46, location);
  v23 = v22;
  v45 = v23;
  v24 = _Block_copy(v44);
  if (v21 || v10)
  {
    v38 = self;
    v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v12 preferredStyle:0];
    v26 = MEMORY[0x1E69DC648];
    v27 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v14 validFormatSpecifiers:@"%lu" error:0, v10];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_7;
    v42[3] = &unk_1E872E850;
    v43 = v39;
    v28 = [v26 actionWithTitle:v27 style:2 handler:v42];

    [v25 addAction:v28];
    v29 = MEMORY[0x1E69DC648];
    v30 = +[VUILocalizationManager sharedInstance];
    v31 = [v30 localizedStringForKey:@"CANCEL"];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_8;
    v40[3] = &unk_1E872E850;
    v41 = v24;
    v32 = [v29 actionWithTitle:v31 style:1 handler:v40];

    [v25 addAction:v32];
    v33 = [MEMORY[0x1E69DC938] currentDevice];
    v34 = [v33 userInterfaceIdiom];

    if (v34 == 1)
    {
      [v25 setModalPresentationStyle:7];
      v35 = [v25 popoverPresentationController];
      v36 = [(VUIDownloadShowTableViewController *)v38 rightBarButtonItem];
      [v35 setBarButtonItem:v36];
    }
  }

  else
  {
    if (v23)
    {
      (*(v23 + 2))(v23, 0);
    }

    v25 = 0;
  }

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v50);
  objc_destroyWeak(location);

  return v25;
}

void __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v71 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [WeakRetained setAssetControllersToRemove:v4];

  if (*(v1 + 32))
  {
    v5 = [WeakRetained groupings];
    v6 = [v5 objectAtIndex:{objc_msgSend(*(v1 + 32), "section")}];

    v7 = [v6 objectAtIndex:{objc_msgSend(*(v1 + 32), "row")}];
    [v3 addObject:v7];
    v8 = [v7 assetController];
    v9 = [WeakRetained assetControllersToRemove];
    [v9 addObject:v8];
  }

  else
  {
    v46 = v1;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v10 = [WeakRetained tableView];
    v11 = [v10 indexPathsForSelectedRows];

    v12 = [v11 countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v65;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v65 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v64 + 1) + 8 * i);
          v17 = [WeakRetained groupings];
          v18 = [v17 objectAtIndex:{objc_msgSend(v16, "section")}];

          v19 = [v18 objectAtIndex:{objc_msgSend(v16, "row")}];
          [v3 addObject:v19];
          v20 = [v19 assetController];
          v21 = [WeakRetained assetControllersToRemove];
          [v21 addObject:v20];
        }

        v13 = [v11 countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v13);
    }

    v1 = v46;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v22 = [WeakRetained assetControllersToRemove];
  v23 = [v22 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v61;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v61 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v60 + 1) + 8 * j) cancelAndRemoveDownload];
      }

      v24 = [v22 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v24);
  }

  if (*(v1 + 32))
  {
    v27 = [WeakRetained tableView];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_2;
    v58[3] = &unk_1E872D990;
    v58[4] = WeakRetained;
    v59 = *(v1 + 32);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_3;
    v56[3] = &unk_1E872D7B8;
    v56[4] = WeakRetained;
    v57 = *(v1 + 40);
    [v27 performBatchUpdates:v58 completion:v56];
  }

  else
  {
    v47 = v1;
    v28 = objc_opt_new();
    v29 = objc_opt_new();
    v30 = [WeakRetained groupings];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_4;
    v52[3] = &unk_1E872E800;
    v53 = v3;
    v31 = v28;
    v54 = v31;
    v32 = v29;
    v55 = v32;
    [v30 enumerateObjectsUsingBlock:v52];

    [WeakRetained setGroupings:v31];
    v33 = [WeakRetained tableView];
    [v33 beginUpdates];

    if ([v32 count])
    {
      v34 = [WeakRetained tableView];
      [v34 deleteSections:v32 withRowAnimation:100];
    }

    v35 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v36 = [WeakRetained tableView];
    v37 = [v36 indexPathsForSelectedRows];

    v38 = [v37 countByEnumeratingWithState:&v48 objects:v68 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v49;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v49 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v48 + 1) + 8 * k);
          if (([v32 containsIndex:{objc_msgSend(v42, "section")}] & 1) == 0)
          {
            [v35 addObject:v42];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v48 objects:v68 count:16];
      }

      while (v39);
    }

    if ([v35 count])
    {
      v43 = [WeakRetained tableView];
      [v43 deleteRowsAtIndexPaths:v35 withRowAnimation:100];
    }

    v44 = [WeakRetained tableView];
    [v44 endUpdates];

    [WeakRetained _exitEditingMode];
    [WeakRetained _popIfNeeded];
    v45 = *(v47 + 40);
    if (v45)
    {
      (*(v45 + 16))(v45, 1);
    }
  }
}

void __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) groupings];
  v3 = [v2 objectAtIndex:{objc_msgSend(*(a1 + 40), "section")}];

  [v3 removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "row")}];
  if (![v3 count])
  {
    v4 = [*(a1 + 32) groupings];
    [v4 removeObjectAtIndex:{objc_msgSend(*(a1 + 40), "section")}];

    v5 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
    v6 = [*(a1 + 32) tableView];
    [v6 deleteSections:v5 withRowAnimation:100];
  }

  v7 = [*(a1 + 32) tableView];
  v9[0] = *(a1 + 40);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v7 deleteRowsAtIndexPaths:v8 withRowAnimation:100];
}

uint64_t __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _exitEditingMode];
  [*(a1 + 32) _popIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_4(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_5;
  v11 = &unk_1E872E7D8;
  v12 = a1[4];
  v7 = v6;
  v13 = v7;
  [v5 enumerateObjectsUsingBlock:&v8];

  if ([v7 count])
  {
    [a1[5] addObject:v7];
  }

  else
  {
    [a1[6] addIndex:a3];
  }
}

void __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __97__VUIDownloadShowTableViewController__configureDeleteAlertControllerForIndexPath_withCompletion___block_invoke_6(uint64_t a1)
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
  v100 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v73 = v7;
  v74 = a5;
  val = self;
  if (v7)
  {
    v8 = -[NSMutableArray objectAtIndex:](self->_groupings, "objectAtIndex:", [v7 section]);
    v9 = [v8 objectAtIndex:{objc_msgSend(v7, "row")}];
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v10 = [(VUIDownloadShowTableViewController *)self tableView];
    v11 = [v10 indexPathsForSelectedRows];

    v8 = 0;
    v9 = 0;
    v12 = [v11 countByEnumeratingWithState:&v95 objects:v99 count:16];
    if (v12)
    {
      v13 = *v96;
      do
      {
        v14 = 0;
        v15 = v8;
        v16 = v9;
        do
        {
          if (*v96 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v95 + 1) + 8 * v14);
          v8 = -[NSMutableArray objectAtIndex:](val->_groupings, "objectAtIndex:", [v17 section]);

          v9 = [v8 objectAtIndex:{objc_msgSend(v17, "row")}];

          ++v14;
          v15 = v8;
          v16 = v9;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v95 objects:v99 count:16];
      }

      while (v12);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v9;
    v72 = [v18 availabilityEndDate];
    if (v72 && ![v72 vui_isInTheFuture])
    {
      objc_initWeak(&location, val);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_5;
      aBlock[3] = &unk_1E872E8F0;
      objc_copyWeak(&v83, &location);
      v79 = v73;
      v35 = v18;
      v80 = v35;
      v81 = v8;
      v82 = v74;
      v71 = _Block_copy(aBlock);
      v36 = MEMORY[0x1E696AEC0];
      v37 = +[VUILocalizationManager sharedInstance];
      v38 = [v37 localizedStringForKey:@"DOWNLOAD_MESSAGE_NO_LONGER_AVAILABLE"];
      v39 = [v35 brandName];
      v40 = [v36 stringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:0, v39];

      v41 = MEMORY[0x1E69DC650];
      v42 = +[VUILocalizationManager sharedInstance];
      v43 = [v42 localizedStringForKey:@"DOWNLOAD_NO_LONGER_AVAILABLE"];
      v25 = [v41 alertControllerWithTitle:v43 message:v40 preferredStyle:1];

      v44 = MEMORY[0x1E69DC648];
      v45 = +[VUILocalizationManager sharedInstance];
      v46 = [v45 localizedStringForKey:@"DELETE"];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_8;
      v76[3] = &unk_1E872E850;
      v47 = v71;
      v77 = v47;
      v48 = [v44 actionWithTitle:v46 style:0 handler:v76];

      [v25 addAction:v48];
      objc_destroyWeak(&v83);
      objc_destroyWeak(&location);
    }

    else if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
    {
      v19 = [v18 allowsManualDownloadRenewal];
      v20 = v19;
      if (v19)
      {
        v21 = @"RENEW_DOWNLOAD";
      }

      else
      {
        v21 = @"DOWNLOAD_AGAIN_BUTTON_TITLE";
      }

      if (v19)
      {
        v22 = @"DOWNLOAD_MESSAGE_RENEW";
      }

      else
      {
        v22 = @"DOWNLOAD_MESSAGE_REDOWNLOAD";
      }

      if (a4 == 1)
      {
        if (v19)
        {
          v23 = @"RENEW_DOWNLOAD";
        }

        else
        {
          v23 = @"DOWNLOAD_AGAIN";
        }

        v24 = +[VUILocalizationManager sharedInstance];
        v69 = [v24 localizedStringForKey:v23];
      }

      else
      {
        v69 = 0;
      }

      v49 = +[VUILocalizationManager sharedInstance];
      v68 = [v49 localizedStringForKey:v21];

      v50 = MEMORY[0x1E696AEC0];
      v51 = +[VUILocalizationManager sharedInstance];
      v52 = [v51 localizedStringForKey:v22];
      v53 = [v18 brandName];
      v67 = [v50 stringWithValidatedFormat:v52 validFormatSpecifiers:@"%@" error:0, v53];

      v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v69 message:v67 preferredStyle:a4];
      objc_initWeak(&location, val);
      v54 = MEMORY[0x1E69DC648];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke;
      v89[3] = &unk_1E872E8A0;
      objc_copyWeak(&v92, &location);
      v90 = v18;
      v93 = v20;
      v55 = v74;
      v91 = v55;
      v56 = [v54 actionWithTitle:v68 style:0 handler:v89];
      [v25 addAction:v56];
      v57 = MEMORY[0x1E69DC648];
      v58 = +[VUILocalizationManager sharedInstance];
      v59 = [v58 localizedStringForKey:@"CANCEL"];
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_3;
      v86[3] = &unk_1E872E8C8;
      objc_copyWeak(&v88, &location);
      v87 = v55;
      v60 = [v57 actionWithTitle:v59 style:1 handler:v86];

      [v25 addAction:v60];
      objc_destroyWeak(&v88);

      objc_destroyWeak(&v92);
      objc_destroyWeak(&location);
    }

    else
    {
      v26 = MEMORY[0x1E69DC650];
      v27 = +[VUILocalizationManager sharedInstance];
      v28 = [v27 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW"];
      v29 = +[VUILocalizationManager sharedInstance];
      v30 = [v29 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW_MESSAGE"];
      v25 = [v26 alertControllerWithTitle:v28 message:v30 preferredStyle:1];

      v31 = MEMORY[0x1E69DC648];
      v32 = +[VUILocalizationManager sharedInstance];
      v33 = [v32 localizedStringForKey:@"OK"];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_4;
      v84[3] = &unk_1E872E850;
      v85 = v74;
      v34 = [v31 actionWithTitle:v33 style:1 handler:v84];

      [v25 addAction:v34];
    }
  }

  else
  {
    if (v74)
    {
      v74[2]();
    }

    v25 = 0;
  }

  v61 = [MEMORY[0x1E69DC938] currentDevice];
  v63 = [v61 userInterfaceIdiom] == 1 && v25 != 0;

  if (v63)
  {
    [v25 setModalPresentationStyle:7];
    v64 = [v25 popoverPresentationController];
    v65 = [(VUIDownloadShowTableViewController *)val rightBarButtonItem];
    [v64 setBarButtonItem:v65];
  }

  return v25;
}

void __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke(uint64_t a1)
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
        v7 = [v6 assetController];
        v8 = [v7 contentAllowsCellularDownload];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_2;
        v10[3] = &unk_1E872E878;
        v11 = *(a1 + 32);
        [v5 preflightDownloadForLibraryMediaEntity:v6 presentingViewController:WeakRetained contentAllowsCellularDownload:v8 completion:v10];
      }
    }

    [WeakRetained _exitEditingMode];
    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 1);
    }
  }
}

void __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = [*(a1 + 32) assetController];
    [v6 startDownloadAllowingCellular:a3 quality:a4 shouldMarkAsDeletedOnCancellationOrFailure:0 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:0];
  }
}

void __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _exitEditingMode];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }
}

uint64_t __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_5(id *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  [WeakRetained _exitEditingMode];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [WeakRetained setAssetControllersToRemove:v4];

  if (a1[4])
  {
    [v3 addObject:a1[5]];
    v5 = [a1[5] assetController];
    v6 = [WeakRetained assetControllersToRemove];
    [v6 addObject:v5];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [WeakRetained assetControllersToRemove];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v20 + 1) + 8 * v11++) cancelAndRemoveDownload];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if (a1[4])
  {
    v12 = [WeakRetained tableView];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_6;
    v16[3] = &unk_1E872E008;
    v17 = a1[6];
    v18 = a1[4];
    v19 = WeakRetained;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_7;
    v14[3] = &unk_1E872D7B8;
    v14[4] = WeakRetained;
    v15 = a1[7];
    [v12 performBatchUpdates:v16 completion:v14];
  }

  else
  {
    v13 = a1[7];
    if (v13)
    {
      v13[2](v13, 0);
    }
  }
}

void __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_6(id *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  [a1[4] removeObjectAtIndex:{objc_msgSend(a1[5], "row")}];
  if (![a1[4] count])
  {
    v2 = [a1[6] groupings];
    [v2 removeObjectAtIndex:{objc_msgSend(a1[5], "section")}];

    v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:{objc_msgSend(a1[5], "section")}];
    v4 = [a1[6] tableView];
    [v4 deleteSections:v3 withRowAnimation:100];
  }

  v5 = [a1[6] tableView];
  v7[0] = a1[5];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v5 deleteRowsAtIndexPaths:v6 withRowAnimation:100];
}

uint64_t __114__VUIDownloadShowTableViewController__configureRenewAlertControllerForIndexPath_forPreferredStyle_withCompletion___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) _popIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_exitEditingMode
{
  v3 = [(VUIDownloadShowTableViewController *)self rightBarButtonItem];
  [v3 setEnabled:1];

  v4 = [(VUIDownloadShowTableViewController *)self tableView];
  [v4 setEditing:0 animated:1];

  v5 = [(VUIDownloadShowTableViewController *)self rightBarButtonItem];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"EDIT"];
  [v5 setTitle:v7];

  v9 = [(VUIDownloadShowTableViewController *)self navigationItem];
  v8 = [(VUIDownloadShowTableViewController *)self backBarButtonItem];
  [v9 setLeftBarButtonItem:v8];
}

- (void)_popIfNeeded
{
  v3 = [(VUIDownloadShowTableViewController *)self groupings];
  v4 = [v3 count];

  if (!v4)
  {
    v6 = [(VUIDownloadShowTableViewController *)self navigationController];
    v5 = [v6 popViewControllerAnimated:1];
  }
}

- (id)_moreEpisodesURLForSection:(int64_t)a3
{
  v38 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_groupings objectAtIndex:a3];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = v35 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v32 + 1) + 8 * v8);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(VUIDownloadShowTableViewController *)self _episodeHasAllCanonicalIDs:v9])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v10 = [v9 canonicalID];
    v11 = [v9 seasonCanonicalID];
    v12 = [v9 showCanonicalID];
    v13 = MEMORY[0x1E69E1580];
    v14 = objc_alloc_init(MEMORY[0x1E69E1578]);
    v15 = [v13 _watchListAppPunchoutURLWithPlayable:v14 forContentType:3 canonicalID:v10 showCanonicalID:v12 seasonCanonicalID:v11 allowPlayAction:0 isPlaybackURL:0];

    if (v15)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_10:
  }

  v16 = [v4 firstObject];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = [(VUIDownloadShowTableViewController *)self seasons];
  v15 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v18 = *v29;
LABEL_14:
    v19 = 0;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(v17);
      }

      v20 = *(*(&v28 + 1) + 8 * v19);
      v21 = [v20 identifier];
      v22 = [v16 seasonIdentifier];
      v23 = [v21 isEqual:v22];

      if (v23)
      {
        break;
      }

      if (v15 == ++v19)
      {
        v15 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          goto LABEL_14;
        }

        goto LABEL_23;
      }
    }

    v24 = [v20 storeID];

    if (v24)
    {
      v25 = MEMORY[0x1E695DFF8];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://itunes.apple.com/us/tv-season//id%@", v24, 0];
      v15 = [v25 URLWithString:v26];

      v17 = v24;
      goto LABEL_23;
    }

    v15 = 0;
  }

  else
  {
LABEL_23:
  }

LABEL_26:

  return v15;
}

- (BOOL)_episodeHasAllCanonicalIDs:(id)a3
{
  v3 = a3;
  v4 = [v3 canonicalID];
  if (v4)
  {
    v5 = [v3 seasonCanonicalID];
    if (v5)
    {
      v6 = [v3 showCanonicalID];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_didPressGetMoreEpisodes:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E69DC668];
    v4 = a3;
    v5 = [v3 sharedApplication];
    [v5 openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:0];
  }
}

- (BOOL)_mediaItemShouldShowRenewOption:(id)a3
{
  v3 = a3;
  v4 = [v3 availabilityEndDate];
  v5 = [v3 downloadExpirationDate];
  v6 = v5;
  if (!v5 || [v5 vui_isInTheFuture])
  {
    v7 = [v3 brandID];
    if ([v7 length])
    {
      v8 = +[VUIFeaturesConfiguration sharedInstance];
      v9 = [v8 downloadConfig];
      v10 = [v9 blacklistedEarlyRenewalBrands];

      LOBYTE(v8) = [v10 containsObject:v7];
      if (v8)
      {

LABEL_10:
        LOBYTE(v11) = 0;
        goto LABEL_11;
      }
    }
  }

  if (v4 && ![v4 vui_isInTheFuture])
  {
    goto LABEL_10;
  }

  v11 = [v3 renewsOfflineKeysAutomatically] ^ 1;
LABEL_11:

  return v11;
}

- (void)_updateNavigationBarPadding
{
  v3 = MEMORY[0x1E69DD2E8];
  v4 = [(VUIDownloadShowTableViewController *)self view];
  [v4 bounds];
  [v3 vui_paddingForWindowWidth:CGRectGetWidth(v27)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(VUIDownloadShowTableViewController *)self navigationController];
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

  v22 = [(VUIDownloadShowTableViewController *)self navigationController];
  v23 = [v22 navigationBar];
  [v23 setLayoutMargins:{v6, v8, v10, v12}];

  v25 = [(VUIDownloadShowTableViewController *)self navigationController];
  v24 = [v25 navigationBar];
  [v24 setNeedsLayout];
}

- (void)_clearTableViewSelections:(BOOL)a3
{
  v5 = [(VUIDownloadShowTableViewController *)self tableView];
  v6 = [v5 indexPathsForSelectedRows];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [(VUIDownloadShowTableViewController *)self transitionCoordinator];
    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__VUIDownloadShowTableViewController__clearTableViewSelections___block_invoke;
      v12[3] = &unk_1E872D878;
      v13 = v5;
      v14 = v7;
      v15 = a3;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __64__VUIDownloadShowTableViewController__clearTableViewSelections___block_invoke_2;
      v9[3] = &unk_1E872D8A0;
      v10 = v13;
      v11 = v14;
      [v8 animateAlongsideTransition:v12 completion:v9];
    }

    else
    {
      [v5 deselectRowAtIndexPath:v7 animated:1];
    }
  }
}

uint64_t __64__VUIDownloadShowTableViewController__clearTableViewSelections___block_invoke_2(uint64_t a1, void *a2)
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

    [(VUIDownloadShowTableViewController *)self _clearTableViewSelections:1];
  }
}

- (void)tableView:(uint64_t)a1 didSelectRowAtIndexPath:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Unable to start playback because mediaInfo is nil; mediaEntity: %@", &v2, 0xCu);
}

@end