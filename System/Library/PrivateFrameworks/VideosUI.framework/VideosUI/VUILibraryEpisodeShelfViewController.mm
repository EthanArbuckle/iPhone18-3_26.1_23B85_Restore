@interface VUILibraryEpisodeShelfViewController
- (BOOL)_canRemoveEpisodeAtIndexPath:(id)path;
- (BOOL)dialogInteractionController:(id)controller shouldBeginInteractionForIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (VUILibraryEpisodeShelfViewController)initWithEpisodes:(id)episodes season:(id)season;
- (VUILibraryEpisodeShelfViewControllerDelegate)delegate;
- (id)_createDiffableDataSourceForCollectionView:(id)view;
- (id)_createDiffableDataSourceSnapshot;
- (id)_episodeViewModelsWithFetchedEpisodes:(id)episodes;
- (id)_episodeWithIdentifier:(id)identifier;
- (id)_getEntityIdentifiersFromViewModels;
- (void)_configureShelfLayout:(id)layout;
- (void)_updateHeaderView;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureWithCollectionView:(id)view;
- (void)dialogInteractionController:(id)controller interactionDidEndForIndexPath:(id)path;
- (void)removeDownloadPressed;
- (void)setEpisodeDetailViewController:(id)controller;
- (void)updateShelfLayout:(id)layout;
- (void)updateWithEpisodes:(id)episodes;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation VUILibraryEpisodeShelfViewController

- (VUILibraryEpisodeShelfViewController)initWithEpisodes:(id)episodes season:(id)season
{
  episodesCopy = episodes;
  seasonCopy = season;
  v13.receiver = self;
  v13.super_class = VUILibraryEpisodeShelfViewController;
  v8 = [(VUIShelfViewController *)&v13 initWithGridStyle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_season, season);
    v10 = [(VUILibraryEpisodeShelfViewController *)v9 _episodeViewModelsWithFetchedEpisodes:episodesCopy];
    episodeViewModels = v9->_episodeViewModels;
    v9->_episodeViewModels = v10;

    [(VUILibraryEpisodeShelfViewController *)v9 _updateHeaderView];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = VUILibraryEpisodeShelfViewController;
  [(VUILibraryEpisodeShelfViewController *)&v16 viewWillAppear:?];
  collectionView = [(VUIShelfViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    transitionCoordinator = [(VUILibraryEpisodeShelfViewController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__VUILibraryEpisodeShelfViewController_viewWillAppear___block_invoke;
      v12[3] = &unk_1E872D878;
      v13 = collectionView;
      v14 = firstObject;
      appearCopy = appear;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__VUILibraryEpisodeShelfViewController_viewWillAppear___block_invoke_2;
      v9[3] = &unk_1E872D8A0;
      v10 = v13;
      v11 = v14;
      [transitionCoordinator animateAlongsideTransition:v12 completion:v9];
    }

    else
    {
      [collectionView deselectItemAtIndexPath:firstObject animated:1];
    }
  }

  [(VUILibraryEpisodeShelfViewController *)self setEpisodeDetailViewController:0];
}

uint64_t __55__VUILibraryEpisodeShelfViewController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
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

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = VUILibraryEpisodeShelfViewController;
  [(VUILibraryEpisodeShelfViewController *)&v12 viewDidLoad];
  diffableDataSource = [(VUILibraryEpisodeShelfViewController *)self diffableDataSource];
  _createDiffableDataSourceSnapshot = [(VUILibraryEpisodeShelfViewController *)self _createDiffableDataSourceSnapshot];
  [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:1];

  if (!self->_dialogInteractionController)
  {
    v5 = objc_alloc_init(VUILibraryDownloadPopoverViewController);
    [(VUILibraryDownloadPopoverViewController *)v5 setDelegate:self];
    v6 = [VUIDialogInteractionController alloc];
    collectionView = [(VUIShelfViewController *)self collectionView];
    v8 = [(VUIDialogInteractionController *)v6 initWithPresentingViewController:self collectionView:collectionView controllerToPresent:v5];
    dialogInteractionController = self->_dialogInteractionController;
    self->_dialogInteractionController = v8;

    if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) == 0)
    {
      [(VUIDialogInteractionController *)self->_dialogInteractionController setDelegate:self];
    }
  }

  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    collectionView2 = [(VUIShelfViewController *)self collectionView];
    [collectionView2 setClipsToBounds:0];

    collectionView3 = [(VUIShelfViewController *)self collectionView];
    [collectionView3 _setVisibleRectEdgeInsets:{0.0, -400.0, 0.0, 0.0}];
  }
}

- (void)updateWithEpisodes:(id)episodes
{
  v4 = [(VUILibraryEpisodeShelfViewController *)self _episodeViewModelsWithFetchedEpisodes:episodes];
  episodeViewModels = self->_episodeViewModels;
  self->_episodeViewModels = v4;

  collectionView = [(VUIShelfViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [(VUILibraryEpisodeShelfViewController *)self updateShelfLayout:collectionViewLayout];

  [(VUILibraryEpisodeShelfViewController *)self _updateHeaderView];
  diffableDataSource = [(VUILibraryEpisodeShelfViewController *)self diffableDataSource];
  _createDiffableDataSourceSnapshot = [(VUILibraryEpisodeShelfViewController *)self _createDiffableDataSourceSnapshot];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__VUILibraryEpisodeShelfViewController_updateWithEpisodes___block_invoke;
  v10[3] = &unk_1E872D768;
  v10[4] = self;
  [diffableDataSource applySnapshot:_createDiffableDataSourceSnapshot animatingDifferences:1 completion:v10];
}

void __59__VUILibraryEpisodeShelfViewController_updateWithEpisodes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeDetailViewController];
  if (v2)
  {
    v7 = v2;
    v3 = [v2 presentingViewController];

    v2 = v7;
    if (v3)
    {
      v4 = [v7 mediaItem];
      v5 = [v4 identifier];
      v6 = [*(a1 + 32) _episodeWithIdentifier:v5];
      if (!v6)
      {
        [v7 dismissViewControllerAnimated:1 completion:0];
        [*(a1 + 32) setEpisodeDetailViewController:0];
      }

      v2 = v7;
    }
  }
}

- (void)configureWithCollectionView:(id)view
{
  viewCopy = view;
  [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"EpisodeList"];
  v5 = [(VUILibraryEpisodeShelfViewController *)self _createDiffableDataSourceForCollectionView:viewCopy];

  [(VUILibraryEpisodeShelfViewController *)self setDiffableDataSource:v5];
}

- (void)updateShelfLayout:(id)layout
{
  layoutCopy = layout;
  v4 = MEMORY[0x1E69DD2E8];
  view = [(VUILibraryEpisodeShelfViewController *)self view];
  [view bounds];
  v6 = [v4 vui_currentSizeClassForWindowWidth:CGRectGetWidth(v10)];

  if ((v6 - 2) >= 6)
  {
    v7 = [(NSArray *)self->_episodeViewModels count];
  }

  else
  {
    v7 = qword_1E42969F8[v6 - 2];
  }

  [layoutCopy setRowCount:v7];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (!self->_sizingCell)
  {
    v7 = [VUILibraryEpisodeListCell alloc];
    v8 = [(VUILibraryEpisodeListCell *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sizingCell = self->_sizingCell;
    self->_sizingCell = v8;
  }

  v10 = MEMORY[0x1E69DD2E8];
  view = [(VUILibraryEpisodeShelfViewController *)self view];
  [view bounds];
  [v10 vui_itemWidthForGridStyle:0 gridType:0 numGridColumns:1 windowWidth:CGRectGetWidth(v25)];
  v13 = v12;

  v14 = -[NSArray objectAtIndex:](self->_episodeViewModels, "objectAtIndex:", [pathCopy row]);
  episode = [v14 episode];
  v16 = self->_sizingCell;
  assetController = [v14 assetController];
  [VUILibraryEpisodeListCell configureVUILibraryEpisodeListCell:v16 withMedia:episode andAssetController:assetController];

  [(VUILibraryEpisodeListCell *)self->_sizingCell sizeThatFits:v13, 1.79769313e308];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = [path row];
  if (v5 < [(NSArray *)self->_episodeViewModels count])
  {
    v18 = [(NSArray *)self->_episodeViewModels objectAtIndex:v5];
    episode = [v18 episode];
    v7 = [[VUIEpisodeDetailViewController alloc] initWithMediaItem:episode];
    [(VUILibraryEpisodeShelfViewController *)self setEpisodeDetailViewController:v7];
    navigationController = [(VUILibraryEpisodeShelfViewController *)self navigationController];
    if (!navigationController)
    {
      navigationController = +[VUIApplicationRouter currentNavigationController];
    }

    traitCollection = [(VUILibraryEpisodeShelfViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
      [v11 setModalPresentationStyle:2];
      [(UIViewController *)self vui_presentViewController:v11 animated:1 completion:0];
      view = [(VUILibraryEpisodeShelfViewController *)self view];
      view2 = [(VUILibraryEpisodeShelfViewController *)self view];
      [view2 bounds];
      MidX = CGRectGetMidX(v20);
      view3 = [(VUILibraryEpisodeShelfViewController *)self view];
      [view3 bounds];
      MidY = CGRectGetMidY(v21);

      popoverPresentationController = [(VUIEpisodeDetailViewController *)v7 popoverPresentationController];
      [popoverPresentationController setSourceView:view];
      [popoverPresentationController setSourceRect:{MidX, MidY, 0.0, 0.0}];
      [popoverPresentationController setPermittedArrowDirections:-1];
    }

    else
    {
      [navigationController pushViewController:v7 animated:1];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = VUILibraryEpisodeShelfViewController;
  [(VUIShelfViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  if ([(VUIDialogInteractionController *)self->_dialogInteractionController isPresenting])
  {
    [(VUIDialogInteractionController *)self->_dialogInteractionController dismissConfirmation];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VUILibraryEpisodeShelfViewController;
  [(VUILibraryEpisodeShelfViewController *)&v4 viewWillDisappear:disappear];
  if ([(VUIDialogInteractionController *)self->_dialogInteractionController isPresenting])
  {
    [(VUIDialogInteractionController *)self->_dialogInteractionController dismissConfirmation];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = VUILibraryEpisodeShelfViewController;
  [(VUILibraryEpisodeShelfViewController *)&v6 willMoveToParentViewController:?];
  if (!controller)
  {
    dialogInteractionController = self->_dialogInteractionController;
    self->_dialogInteractionController = 0;
  }
}

- (void)removeDownloadPressed
{
  popoverIndexPath = self->_popoverIndexPath;
  if (popoverIndexPath)
  {
    v4 = [(NSIndexPath *)popoverIndexPath row];
    if (v4 < [(NSArray *)self->_episodeViewModels count])
    {
      v9 = [(NSArray *)self->_episodeViewModels objectAtIndex:v4];
      assetController = [v9 assetController];
      v6 = assetController;
      if (assetController)
      {
        [assetController cancelAndRemoveDownload];
        delegate = [(VUILibraryEpisodeShelfViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate libraryEpisodesShelfViewController:self didRemoveDownloadForAssetController:v6];
        }

        dialogInteractionController = self->_dialogInteractionController;
        if (dialogInteractionController)
        {
          [(VUIDialogInteractionController *)dialogInteractionController dismissConfirmation];
        }
      }
    }
  }
}

- (BOOL)dialogInteractionController:(id)controller shouldBeginInteractionForIndexPath:(id)path
{
  result = [(VUILibraryEpisodeShelfViewController *)self _canRemoveEpisodeAtIndexPath:path];
  self->_shouldIgnoreSelectEvent = result;
  return result;
}

- (void)dialogInteractionController:(id)controller interactionDidEndForIndexPath:(id)path
{
  self->_shouldIgnoreSelectEvent = 0;
  popoverIndexPath = self->_popoverIndexPath;
  self->_popoverIndexPath = 0;
}

- (id)_createDiffableDataSourceForCollectionView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__VUILibraryEpisodeShelfViewController__createDiffableDataSourceForCollectionView___block_invoke;
  v8[3] = &unk_1E872D8C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 initWithCollectionView:viewCopy cellProvider:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

id __83__VUILibraryEpisodeShelfViewController__createDiffableDataSourceForCollectionView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"EpisodeList" forIndexPath:v5];

  v9 = [WeakRetained episodeViewModels];
  v10 = [v5 row];

  v11 = [v9 objectAtIndex:v10];

  v12 = [v11 episode];
  v13 = [v11 assetController];
  [VUILibraryEpisodeListCell configureVUILibraryEpisodeListCell:v8 withMedia:v12 andAssetController:v13];

  return v8;
}

- (id)_createDiffableDataSourceSnapshot
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v7[0] = @"ShelfMainSection";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 appendSectionsWithIdentifiers:v4];

  _getEntityIdentifiersFromViewModels = [(VUILibraryEpisodeShelfViewController *)self _getEntityIdentifiersFromViewModels];
  [v3 appendItemsWithIdentifiers:_getEntityIdentifiersFromViewModels intoSectionWithIdentifier:@"ShelfMainSection"];

  return v3;
}

- (id)_getEntityIdentifiersFromViewModels
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  episodeViewModels = [(VUILibraryEpisodeShelfViewController *)self episodeViewModels];
  v5 = [episodeViewModels countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(episodeViewModels);
        }

        episode = [*(*(&v13 + 1) + 8 * i) episode];
        identifier = [episode identifier];
        [v3 addObject:identifier];
      }

      v6 = [episodeViewModels countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)setEpisodeDetailViewController:(id)controller
{
  controllerCopy = controller;
  episodeDetailViewController = self->_episodeDetailViewController;
  v8 = controllerCopy;
  if (episodeDetailViewController != controllerCopy)
  {
    if (episodeDetailViewController)
    {
      [(VUIEpisodeDetailViewController *)episodeDetailViewController setDelegate:0];
    }

    objc_storeStrong(&self->_episodeDetailViewController, controller);
    v7 = self->_episodeDetailViewController;
    if (v7)
    {
      [(VUIEpisodeDetailViewController *)v7 setDelegate:self];
    }
  }
}

- (id)_episodeViewModelsWithFetchedEpisodes:(id)episodes
{
  v24 = *MEMORY[0x1E69E9840];
  episodesCopy = episodes;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = episodesCopy;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      v16 = v6;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = objc_alloc_init(VUILibraryEpisodeShelfEpisodeViewModel);
        [(VUILibraryEpisodeShelfEpisodeViewModel *)v10 setEpisode:v9];
        assetController = [v9 assetController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v7;
          v13 = assetController;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            mediaItemCollection = [(VUIMediaCollection *)self->_season mediaItemCollection];
            [v13 setMpMediaItemCollection:mediaItemCollection];
          }

          v7 = v12;
          v6 = v16;
        }

        [(VUILibraryEpisodeShelfEpisodeViewModel *)v10 setAssetController:assetController];
        [v4 addObject:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_episodeWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_episodeViewModels;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      episode = [*(*(&v14 + 1) + 8 * v9) episode];
      identifier = [episode identifier];
      v12 = [identifier isEqual:identifierCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    episode = 0;
  }

  return episode;
}

- (void)_configureShelfLayout:(id)layout
{
  layoutCopy = layout;
  traitCollection = [(VUILibraryEpisodeShelfViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v6 = 4;
  }

  else
  {
    v6 = [(NSArray *)self->_episodeViewModels count];
  }

  [layoutCopy setRowCount:v6];
}

- (BOOL)_canRemoveEpisodeAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  v10 = 0;
  if (v5 < [(NSArray *)self->_episodeViewModels count])
  {
    v6 = -[NSArray objectAtIndex:](self->_episodeViewModels, "objectAtIndex:", [pathCopy row]);
    episode = [v6 episode];
    isLocal = [episode isLocal];
    bOOLValue = [isLocal BOOLValue];

    if (bOOLValue)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (void)_updateHeaderView
{
  v3 = [(NSArray *)self->_episodeViewModels count];
  v4 = MEMORY[0x1E696AEC0];
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"NUMBER_OF_EPISODES"];
  v9 = [v4 localizedStringWithValidatedFormat:v6 validFormatSpecifiers:@"%d" error:0, v3];

  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
  v8 = [VUICollectionHeaderView configureCollectionHeaderViewWithTitle:v7 subtitle:0 buttonString:0 existingView:0];
  [(VUIShelfViewController *)self setHeaderView:v8];
}

- (VUILibraryEpisodeShelfViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end