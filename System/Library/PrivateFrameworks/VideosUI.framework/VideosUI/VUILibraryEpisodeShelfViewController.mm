@interface VUILibraryEpisodeShelfViewController
- (BOOL)_canRemoveEpisodeAtIndexPath:(id)a3;
- (BOOL)dialogInteractionController:(id)a3 shouldBeginInteractionForIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (VUILibraryEpisodeShelfViewController)initWithEpisodes:(id)a3 season:(id)a4;
- (VUILibraryEpisodeShelfViewControllerDelegate)delegate;
- (id)_createDiffableDataSourceForCollectionView:(id)a3;
- (id)_createDiffableDataSourceSnapshot;
- (id)_episodeViewModelsWithFetchedEpisodes:(id)a3;
- (id)_episodeWithIdentifier:(id)a3;
- (id)_getEntityIdentifiersFromViewModels;
- (void)_configureShelfLayout:(id)a3;
- (void)_updateHeaderView;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureWithCollectionView:(id)a3;
- (void)dialogInteractionController:(id)a3 interactionDidEndForIndexPath:(id)a4;
- (void)removeDownloadPressed;
- (void)setEpisodeDetailViewController:(id)a3;
- (void)updateShelfLayout:(id)a3;
- (void)updateWithEpisodes:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation VUILibraryEpisodeShelfViewController

- (VUILibraryEpisodeShelfViewController)initWithEpisodes:(id)a3 season:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = VUILibraryEpisodeShelfViewController;
  v8 = [(VUIShelfViewController *)&v13 initWithGridStyle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_season, a4);
    v10 = [(VUILibraryEpisodeShelfViewController *)v9 _episodeViewModelsWithFetchedEpisodes:v6];
    episodeViewModels = v9->_episodeViewModels;
    v9->_episodeViewModels = v10;

    [(VUILibraryEpisodeShelfViewController *)v9 _updateHeaderView];
  }

  return v9;
}

- (void)viewWillAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = VUILibraryEpisodeShelfViewController;
  [(VUILibraryEpisodeShelfViewController *)&v16 viewWillAppear:?];
  v5 = [(VUIShelfViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [(VUILibraryEpisodeShelfViewController *)self transitionCoordinator];
    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __55__VUILibraryEpisodeShelfViewController_viewWillAppear___block_invoke;
      v12[3] = &unk_1E872D878;
      v13 = v5;
      v14 = v7;
      v15 = a3;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__VUILibraryEpisodeShelfViewController_viewWillAppear___block_invoke_2;
      v9[3] = &unk_1E872D8A0;
      v10 = v13;
      v11 = v14;
      [v8 animateAlongsideTransition:v12 completion:v9];
    }

    else
    {
      [v5 deselectItemAtIndexPath:v7 animated:1];
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
  v3 = [(VUILibraryEpisodeShelfViewController *)self diffableDataSource];
  v4 = [(VUILibraryEpisodeShelfViewController *)self _createDiffableDataSourceSnapshot];
  [v3 applySnapshot:v4 animatingDifferences:1];

  if (!self->_dialogInteractionController)
  {
    v5 = objc_alloc_init(VUILibraryDownloadPopoverViewController);
    [(VUILibraryDownloadPopoverViewController *)v5 setDelegate:self];
    v6 = [VUIDialogInteractionController alloc];
    v7 = [(VUIShelfViewController *)self collectionView];
    v8 = [(VUIDialogInteractionController *)v6 initWithPresentingViewController:self collectionView:v7 controllerToPresent:v5];
    dialogInteractionController = self->_dialogInteractionController;
    self->_dialogInteractionController = v8;

    if (([MEMORY[0x1E69DC668] isRunningInStoreDemoMode] & 1) == 0)
    {
      [(VUIDialogInteractionController *)self->_dialogInteractionController setDelegate:self];
    }
  }

  if ([MEMORY[0x1E69DF6F0] isPad])
  {
    v10 = [(VUIShelfViewController *)self collectionView];
    [v10 setClipsToBounds:0];

    v11 = [(VUIShelfViewController *)self collectionView];
    [v11 _setVisibleRectEdgeInsets:{0.0, -400.0, 0.0, 0.0}];
  }
}

- (void)updateWithEpisodes:(id)a3
{
  v4 = [(VUILibraryEpisodeShelfViewController *)self _episodeViewModelsWithFetchedEpisodes:a3];
  episodeViewModels = self->_episodeViewModels;
  self->_episodeViewModels = v4;

  v6 = [(VUIShelfViewController *)self collectionView];
  v7 = [v6 collectionViewLayout];
  [(VUILibraryEpisodeShelfViewController *)self updateShelfLayout:v7];

  [(VUILibraryEpisodeShelfViewController *)self _updateHeaderView];
  v8 = [(VUILibraryEpisodeShelfViewController *)self diffableDataSource];
  v9 = [(VUILibraryEpisodeShelfViewController *)self _createDiffableDataSourceSnapshot];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__VUILibraryEpisodeShelfViewController_updateWithEpisodes___block_invoke;
  v10[3] = &unk_1E872D768;
  v10[4] = self;
  [v8 applySnapshot:v9 animatingDifferences:1 completion:v10];
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

- (void)configureWithCollectionView:(id)a3
{
  v4 = a3;
  [v4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"EpisodeList"];
  v5 = [(VUILibraryEpisodeShelfViewController *)self _createDiffableDataSourceForCollectionView:v4];

  [(VUILibraryEpisodeShelfViewController *)self setDiffableDataSource:v5];
}

- (void)updateShelfLayout:(id)a3
{
  v8 = a3;
  v4 = MEMORY[0x1E69DD2E8];
  v5 = [(VUILibraryEpisodeShelfViewController *)self view];
  [v5 bounds];
  v6 = [v4 vui_currentSizeClassForWindowWidth:CGRectGetWidth(v10)];

  if ((v6 - 2) >= 6)
  {
    v7 = [(NSArray *)self->_episodeViewModels count];
  }

  else
  {
    v7 = qword_1E42969F8[v6 - 2];
  }

  [v8 setRowCount:v7];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  if (!self->_sizingCell)
  {
    v7 = [VUILibraryEpisodeListCell alloc];
    v8 = [(VUILibraryEpisodeListCell *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sizingCell = self->_sizingCell;
    self->_sizingCell = v8;
  }

  v10 = MEMORY[0x1E69DD2E8];
  v11 = [(VUILibraryEpisodeShelfViewController *)self view];
  [v11 bounds];
  [v10 vui_itemWidthForGridStyle:0 gridType:0 numGridColumns:1 windowWidth:CGRectGetWidth(v25)];
  v13 = v12;

  v14 = -[NSArray objectAtIndex:](self->_episodeViewModels, "objectAtIndex:", [v6 row]);
  v15 = [v14 episode];
  v16 = self->_sizingCell;
  v17 = [v14 assetController];
  [VUILibraryEpisodeListCell configureVUILibraryEpisodeListCell:v16 withMedia:v15 andAssetController:v17];

  [(VUILibraryEpisodeListCell *)self->_sizingCell sizeThatFits:v13, 1.79769313e308];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = [a4 row];
  if (v5 < [(NSArray *)self->_episodeViewModels count])
  {
    v18 = [(NSArray *)self->_episodeViewModels objectAtIndex:v5];
    v6 = [v18 episode];
    v7 = [[VUIEpisodeDetailViewController alloc] initWithMediaItem:v6];
    [(VUILibraryEpisodeShelfViewController *)self setEpisodeDetailViewController:v7];
    v8 = [(VUILibraryEpisodeShelfViewController *)self navigationController];
    if (!v8)
    {
      v8 = +[VUIApplicationRouter currentNavigationController];
    }

    v9 = [(VUILibraryEpisodeShelfViewController *)self traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
      [v11 setModalPresentationStyle:2];
      [(UIViewController *)self vui_presentViewController:v11 animated:1 completion:0];
      v12 = [(VUILibraryEpisodeShelfViewController *)self view];
      v13 = [(VUILibraryEpisodeShelfViewController *)self view];
      [v13 bounds];
      MidX = CGRectGetMidX(v20);
      v15 = [(VUILibraryEpisodeShelfViewController *)self view];
      [v15 bounds];
      MidY = CGRectGetMidY(v21);

      v17 = [(VUIEpisodeDetailViewController *)v7 popoverPresentationController];
      [v17 setSourceView:v12];
      [v17 setSourceRect:{MidX, MidY, 0.0, 0.0}];
      [v17 setPermittedArrowDirections:-1];
    }

    else
    {
      [v8 pushViewController:v7 animated:1];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = VUILibraryEpisodeShelfViewController;
  [(VUIShelfViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  if ([(VUIDialogInteractionController *)self->_dialogInteractionController isPresenting])
  {
    [(VUIDialogInteractionController *)self->_dialogInteractionController dismissConfirmation];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VUILibraryEpisodeShelfViewController;
  [(VUILibraryEpisodeShelfViewController *)&v4 viewWillDisappear:a3];
  if ([(VUIDialogInteractionController *)self->_dialogInteractionController isPresenting])
  {
    [(VUIDialogInteractionController *)self->_dialogInteractionController dismissConfirmation];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = VUILibraryEpisodeShelfViewController;
  [(VUILibraryEpisodeShelfViewController *)&v6 willMoveToParentViewController:?];
  if (!a3)
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
      v5 = [v9 assetController];
      v6 = v5;
      if (v5)
      {
        [v5 cancelAndRemoveDownload];
        v7 = [(VUILibraryEpisodeShelfViewController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [v7 libraryEpisodesShelfViewController:self didRemoveDownloadForAssetController:v6];
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

- (BOOL)dialogInteractionController:(id)a3 shouldBeginInteractionForIndexPath:(id)a4
{
  result = [(VUILibraryEpisodeShelfViewController *)self _canRemoveEpisodeAtIndexPath:a4];
  self->_shouldIgnoreSelectEvent = result;
  return result;
}

- (void)dialogInteractionController:(id)a3 interactionDidEndForIndexPath:(id)a4
{
  self->_shouldIgnoreSelectEvent = 0;
  popoverIndexPath = self->_popoverIndexPath;
  self->_popoverIndexPath = 0;
}

- (id)_createDiffableDataSourceForCollectionView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__VUILibraryEpisodeShelfViewController__createDiffableDataSourceForCollectionView___block_invoke;
  v8[3] = &unk_1E872D8C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 initWithCollectionView:v4 cellProvider:v8];
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

  v5 = [(VUILibraryEpisodeShelfViewController *)self _getEntityIdentifiersFromViewModels];
  [v3 appendItemsWithIdentifiers:v5 intoSectionWithIdentifier:@"ShelfMainSection"];

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
  v4 = [(VUILibraryEpisodeShelfViewController *)self episodeViewModels];
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

        v9 = [*(*(&v13 + 1) + 8 * i) episode];
        v10 = [v9 identifier];
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)setEpisodeDetailViewController:(id)a3
{
  v5 = a3;
  episodeDetailViewController = self->_episodeDetailViewController;
  v8 = v5;
  if (episodeDetailViewController != v5)
  {
    if (episodeDetailViewController)
    {
      [(VUIEpisodeDetailViewController *)episodeDetailViewController setDelegate:0];
    }

    objc_storeStrong(&self->_episodeDetailViewController, a3);
    v7 = self->_episodeDetailViewController;
    if (v7)
    {
      [(VUIEpisodeDetailViewController *)v7 setDelegate:self];
    }
  }
}

- (id)_episodeViewModelsWithFetchedEpisodes:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
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
        v11 = [v9 assetController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v7;
          v13 = v11;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [(VUIMediaCollection *)self->_season mediaItemCollection];
            [v13 setMpMediaItemCollection:v14];
          }

          v7 = v12;
          v6 = v16;
        }

        [(VUILibraryEpisodeShelfEpisodeViewModel *)v10 setAssetController:v11];
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

- (id)_episodeWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

      v10 = [*(*(&v14 + 1) + 8 * v9) episode];
      v11 = [v10 identifier];
      v12 = [v11 isEqual:v4];

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
    v10 = 0;
  }

  return v10;
}

- (void)_configureShelfLayout:(id)a3
{
  v7 = a3;
  v4 = [(VUILibraryEpisodeShelfViewController *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    v6 = 4;
  }

  else
  {
    v6 = [(NSArray *)self->_episodeViewModels count];
  }

  [v7 setRowCount:v6];
}

- (BOOL)_canRemoveEpisodeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v10 = 0;
  if (v5 < [(NSArray *)self->_episodeViewModels count])
  {
    v6 = -[NSArray objectAtIndex:](self->_episodeViewModels, "objectAtIndex:", [v4 row]);
    v7 = [v6 episode];
    v8 = [v7 isLocal];
    v9 = [v8 BOOLValue];

    if (v9)
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