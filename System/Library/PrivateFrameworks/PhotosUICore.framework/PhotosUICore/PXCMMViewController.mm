@interface PXCMMViewController
- (BOOL)_canPresentComposeRecipientViewController;
- (BOOL)_shouldShowActionMenu;
- (BOOL)_shouldShowDismissButton;
- (BOOL)shouldShowAddMoreButtonForAssetsViewController:(id)a3;
- (PXCMMActionControllerDelegate)actionDelegate;
- (PXCMMViewController)initWithCoder:(id)a3;
- (PXCMMViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXCMMViewController)initWithSession:(id)a3;
- (PXCMMViewControllerDelegate)delegate;
- (id)_actionMenu;
- (id)_localizedSelectionTitle;
- (id)_menuController;
- (id)_shareCMMMenuItemForMomentShareURL:(id)a3 title:(id)a4;
- (id)completeMyMomentViewController:(id)a3 performActionForSession:(id)a4;
- (id)effectiveNavigationItem;
- (void)_activateNotificationSuppressionIfNecessary;
- (void)_completePeopleSuggestionsLoading;
- (void)_deactivateNotificationSuppressionIfNecessary;
- (void)_handleActionButton;
- (void)_performCancel;
- (void)_presentCMMShareSheetForMomentShareURL:(id)a3 withTitle:(id)a4 fromBarButtonItem:(id)a5;
- (void)_presentComposeRecipientViewController;
- (void)_presentViewController:(id)a3;
- (void)_setNeedsUpdate;
- (void)_setupNavigationItem;
- (void)_startPreloadingTasksIfNeeded;
- (void)_updateActionProgress;
- (void)_updateComponentViewController:(id)a3 frame:(CGRect)a4;
- (void)_updateComponentsViewControllerLayout;
- (void)_updateStyle;
- (void)_updateTitle;
- (void)actionMenu:(id)a3 actionPerformer:(id)a4 didChangeState:(unint64_t)a5;
- (void)actionMenu:(id)a3 assetCollectionActionPerformer:(id)a4 playMovieForAssetCollection:(id)a5;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didPerformDeletionActionForAssetsViewController:(id)a3;
- (void)didTapAddMoreButtonForAssetsViewController:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)ppt_setSelecting:(BOOL)a3;
- (void)setActionProgress:(id)a3;
- (void)setLoadingPeopleSuggestions:(BOOL)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PXCMMViewController

- (PXCMMActionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (PXCMMViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)ppt_setSelecting:(BOOL)a3
{
  v4 = [(PXCMMViewController *)self session];
  v5 = [v4 viewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXCMMViewController_ppt_setSelecting___block_invoke;
  v6[3] = &__block_descriptor_33_e33_v16__0___PXCMMMutableViewModel__8l;
  v7 = a3;
  [v5 performChanges:v6];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  if (PXProgressFinishedObservationContext_84986 == a6 || PXProgressCancelledObservationContext_84987 == a6)
  {
    v19[1] = MEMORY[0x1E69E9820];
    v19[2] = 3221225472;
    v19[3] = __70__PXCMMViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v19[4] = &unk_1E774C318;
    objc_copyWeak(&v20, &location);
    px_dispatch_on_main_queue();
  }

  if (PXProgressFractionCompletedObservationContext_84988 == a6)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __70__PXCMMViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v18 = &unk_1E774C318;
    objc_copyWeak(v19, &location);
    px_dispatch_on_main_queue();
  }

  v14.receiver = self;
  v14.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  objc_destroyWeak(&location);
}

void __70__PXCMMViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updater];
  [v1 setNeedsUpdateOf:sel__updateActionProgress];
}

void __70__PXCMMViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updater];
  [v1 setNeedsUpdateOf:sel__updateActionProgress];
}

- (void)actionMenu:(id)a3 assetCollectionActionPerformer:(id)a4 playMovieForAssetCollection:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [(PXCMMViewController *)self moviePresenter];
  v8 = v6;
  if (!v7)
  {
    v7 = [PXMoviePresenter moviePresenterWithPresentingViewController:self];
    [(PXCMMViewController *)self setMoviePresenter:v7];
  }

  [v7 presentMovieViewControllerForAssetCollection:v8 keyAssetFetchResult:0 preferredTransitionType:1];
  v9 = MEMORY[0x1E6991F28];
  v10 = *MEMORY[0x1E6991E08];
  v16[0] = v8;
  v11 = *MEMORY[0x1E6991E20];
  v15[0] = v10;
  v15[1] = v11;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v16[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v9 sendEvent:@"com.apple.photos.CPAnalytics.assetCollectionMoviePlayed" withPayload:v14];
}

- (void)actionMenu:(id)a3 actionPerformer:(id)a4 didChangeState:(unint64_t)a5
{
  if (a5 == 20)
  {
    v19 = v5;
    v20 = v6;
    v8 = [a4 actionType];
    if ([v8 isEqualToString:*off_1E7721DF0])
    {
      v9 = [(PXCMMViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v9 didCancelCompleteMyMomentViewController:self];
      }
    }

    else
    {
      v10 = *off_1E7721CC0;
      if ([v8 isEqualToString:*off_1E7721CC0])
      {
        v11 = [(PXCMMViewController *)self session];
        v12 = [v11 viewModel];

        v13 = MEMORY[0x1E695DFA8];
        v14 = [v12 disabledActionTypes];
        v15 = [v13 setWithSet:v14];

        [v15 addObject:v10];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __65__PXCMMViewController_actionMenu_actionPerformer_didChangeState___block_invoke;
        v17[3] = &unk_1E7746A48;
        v18 = v15;
        v16 = v15;
        [v12 performChanges:v17];
      }
    }
  }
}

- (void)_presentViewController:(id)a3
{
  v6 = a3;
  v4 = [v6 popoverPresentationController];
  if (v4)
  {
    v5 = [(PXCMMViewController *)self actionMenuButtonItem];
    if (v5)
    {
      [v4 setBarButtonItem:v5];
    }

    [v4 setDelegate:self];
  }

  [(PXCMMViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (id)completeMyMomentViewController:(id)a3 performActionForSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXCMMViewController *)self actionDelegate];
  v9 = [v8 completeMyMomentViewController:v7 performActionForSession:v6];

  return v9;
}

- (void)didPerformDeletionActionForAssetsViewController:(id)a3
{
  v4 = [(PXCMMViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 didCancelCompleteMyMomentViewController:self];
  }
}

- (void)didTapAddMoreButtonForAssetsViewController:(id)a3
{
  v5 = [(PXCMMViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(PXCMMViewController *)self session];
    [v5 completeMyMomentViewController:self showPhotoPickerForSession:v4];
  }
}

- (BOOL)shouldShowAddMoreButtonForAssetsViewController:(id)a3
{
  v4 = [(PXCMMViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [(PXCMMViewController *)self session];
  v7 = [v6 activityType];

  return v5 & (v7 == 1);
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  objc_initWeak(&location, self);
  if (PXSpecManagerObservationContext_84997 == a5)
  {
    if (v6)
    {
      v16[1] = MEMORY[0x1E69E9820];
      v16[2] = 3221225472;
      v16[3] = __52__PXCMMViewController_observable_didChange_context___block_invoke;
      v16[4] = &unk_1E774C318;
      objc_copyWeak(&v17, &location);
      px_dispatch_on_main_queue();
    }
  }

  else if (PXViewModelObservationContext_84998 == a5)
  {
    if ((*&v6 & 0x10600) != 0)
    {
      v15[1] = MEMORY[0x1E69E9820];
      v15[2] = 3221225472;
      v15[3] = __52__PXCMMViewController_observable_didChange_context___block_invoke_2;
      v15[4] = &unk_1E774C318;
      objc_copyWeak(v16, &location);
      px_dispatch_on_main_queue();
    }
  }

  else if (PXMomentShareStatusPresentationObservationContext_84999 == a5)
  {
    if ((v6 & 0x3000) != 0)
    {
      v14[1] = MEMORY[0x1E69E9820];
      v14[2] = 3221225472;
      v14[3] = __52__PXCMMViewController_observable_didChange_context___block_invoke_3;
      v14[4] = &unk_1E774C318;
      objc_copyWeak(v15, &location);
      px_dispatch_on_main_queue();
    }
  }

  else
  {
    if (PXPeopleSuggestionManagerObservationContext_85000 == a5)
    {
      objc_copyWeak(v14, &location);
      px_dispatch_on_main_queue();
    }

    if (PXDataSourceManagerObservationContext_85001 == a5)
    {
      v11 = [(PXCMMViewController *)self session];
      v12 = [v11 dataSourceManager];
      v13 = [v12 dataSource];

      if ([v13 numberOfSections] <= 0)
      {
        px_dispatch_on_main_queue();
      }
    }

    else
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:716 description:@"unknown observation context"];
    }
  }

  objc_destroyWeak(&location);
}

void __52__PXCMMViewController_observable_didChange_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStyle];
}

void __52__PXCMMViewController_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updater];
  [v1 setNeedsUpdateOf:sel__updateTitle];
}

void __52__PXCMMViewController_observable_didChange_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained updater];
  [v1 setNeedsUpdateOf:sel__updateActionProgress];
}

void __52__PXCMMViewController_observable_didChange_context___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained session];
  v6 = [v3 peopleSuggestionsDataSourceManager];

  v4 = [v6 dataSource];
  if ([v4 numberOfItemsInSection:0] >= 1)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _completePeopleSuggestionsLoading];
  }
}

void __52__PXCMMViewController_observable_didChange_context___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 didCancelCompleteMyMomentViewController:*(a1 + 32)];
  }
}

- (void)_handleActionButton
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(PXCMMViewController *)self _canPresentComposeRecipientViewController])
  {
    v4 = [(PXCMMViewController *)self session];
    v5 = [v4 peopleSuggestionsDataSourceManager];

    if ([v5 isLoading])
    {
      [v5 boostLoading];
      [v5 registerChangeObserver:self context:PXPeopleSuggestionManagerObservationContext_85000];
      [(PXCMMViewController *)self setLoadingPeopleSuggestions:1];
      v6 = +[PXCompleteMyMomentSettings sharedInstance];
      [v6 peopleSuggestionsTimeout];
      v8 = v7;

      v9 = PLSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v21 = v8;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "PXCMMViewController: People Suggestions Loading in Progress(Timeout=%f)", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v10 = dispatch_time(0, (v8 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__PXCMMViewController__handleActionButton__block_invoke;
      block[3] = &unk_1E774C318;
      objc_copyWeak(&v19, buf);
      dispatch_after(v10, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    else
    {
      [(PXCMMViewController *)self _presentComposeRecipientViewController];
    }
  }

  else
  {
    v11 = [(PXCMMViewController *)self actionDelegate];

    if (!v11)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [v14 handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:664 description:{@"actionDelegate in %@ is nil, save action will not work.", v16}];
    }

    v12 = [(PXCMMViewController *)self actionDelegate];
    v13 = [(PXCMMViewController *)self session];
    v17 = [v12 completeMyMomentViewController:self performActionForSession:v13];

    [(PXCMMViewController *)self setActionProgress:v17];
  }
}

void __42__PXCMMViewController__handleActionButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completePeopleSuggestionsLoading];
}

- (void)setLoadingPeopleSuggestions:(BOOL)a3
{
  if (self->_loadingPeopleSuggestions != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_loadingPeopleSuggestions = a3;
    v6 = [(PXCMMViewController *)self session];
    v7 = [v6 viewModel];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PXCMMViewController_setLoadingPeopleSuggestions___block_invoke;
    v8[3] = &__block_descriptor_33_e33_v16__0___PXCMMMutableViewModel__8l;
    v9 = a3;
    [v7 performChanges:v8];
  }
}

- (void)_completePeopleSuggestionsLoading
{
  [(PXCMMViewController *)self setLoadingPeopleSuggestions:0];
  v3 = [(PXCMMViewController *)self session];
  v4 = [v3 peopleSuggestionsDataSourceManager];

  [v4 unregisterChangeObserver:self context:PXPeopleSuggestionManagerObservationContext_85000];
  [(PXCMMViewController *)self _presentComposeRecipientViewController];
}

- (void)_presentComposeRecipientViewController
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [PXCMMComposeRecipientViewController alloc];
  v4 = [(PXCMMViewController *)self session];
  v5 = [(PXCMMComposeRecipientViewController *)v3 initWithSession:v4];

  [(PXCMMComposeRecipientViewController *)v5 setActionDelegate:self];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleComposeRecipientCancelButton_];
  v8 = [v6 viewControllers];
  v9 = [v8 firstObject];
  v10 = [v9 navigationItem];
  [v10 setLeftBarButtonItem:v7];

  [v6 setModalPresentationStyle:2];
  [(PXCMMViewController *)self presentViewController:v6 animated:1 completion:0];
  v11 = MEMORY[0x1E6991F28];
  v15 = *MEMORY[0x1E6991E20];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v16[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v11 sendEvent:@"com.apple.photos.CPAnalytics.cmmSuggestionComposeFlowOpened" withPayload:v14];
}

- (BOOL)_canPresentComposeRecipientViewController
{
  v2 = [(PXCMMViewController *)self session];
  v3 = [v2 activityType];
  if ([v2 sourceType])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 1;
  }

  v5 = v4;

  return v5;
}

- (void)_updateStyle
{
  v6 = [(PXCMMViewController *)self specManager];
  v3 = [v6 spec];
  v4 = [v3 reviewBackgroundColor];
  v5 = [(PXCMMViewController *)self viewIfLoaded];
  [v5 setBackgroundColor:v4];
}

- (void)_updateActionProgress
{
  v17 = [(PXCMMViewController *)self actionProgress];
  if (v17)
  {
    v3 = [(PXCMMViewController *)self effectiveNavigationItem];
    if ([v17 isFinished] & 1) != 0 || (objc_msgSend(v17, "isCancelled"))
    {
      v4 = [(PXCMMViewController *)self activityIndicatorView];
      [v4 stopAnimating];

      [v3 setRightBarButtonItem:0];
      v5 = 0;
    }

    else
    {
      v9 = [(PXCMMViewController *)self activityIndicatorView];

      if (!v9)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        [(PXCMMViewController *)self setActivityIndicatorView:v10];
      }

      v11 = [(PXCMMViewController *)self progressButton];

      if (!v11)
      {
        v12 = objc_alloc(MEMORY[0x1E69DC708]);
        v13 = [(PXCMMViewController *)self activityIndicatorView];
        v14 = [v12 initWithCustomView:v13];
        [(PXCMMViewController *)self setProgressButton:v14];
      }

      v15 = [(PXCMMViewController *)self activityIndicatorView];
      [v15 startAnimating];

      v16 = [(PXCMMViewController *)self progressButton];
      [v3 setRightBarButtonItem:v16];

      v5 = 1;
    }

    [(PXCMMAssetsViewController *)self->_assetsViewController setActionInProgress:v5];
  }

  else
  {
    v6 = [(PXCMMViewController *)self activityIndicatorView];
    [v6 stopAnimating];

    v7 = [(PXCMMViewController *)self session];
    v8 = [v7 activityType];

    if (v8 == 2)
    {
      [(PXCMMAssetsViewController *)self->_assetsViewController setActionInProgress:([(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state]- 3) < 2];
    }
  }
}

- (void)_updateTitle
{
  v3 = [(PXCMMViewController *)self session];
  v4 = [v3 viewModel];

  if ([v4 isSelecting])
  {
    v6 = [(PXCMMViewController *)self _localizedSelectionTitle];
  }

  else
  {
    v6 = 0;
  }

  v5 = [(PXCMMViewController *)self effectiveNavigationItem];
  [v5 setTitle:v6];
}

- (id)_localizedSelectionTitle
{
  v2 = [(PXCMMViewController *)self session];
  v3 = [v2 viewModel];
  v4 = [v3 selectionManager];
  v5 = [v4 selectionSnapshot];

  v6 = [v5 dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 dataSource];
    v8 = [v7 photosDataSource];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 selectedIndexPaths];
  v10 = v9;
  if (v8 && [v9 count] >= 1)
  {
    v11 = [v8 assetsAtIndexPaths:v10];
    PXLocalizedSelectionMessageForAssets(v11);
  }

  v12 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarSelectItemsTitle", @"PhotosUICore");

  return v12;
}

- (void)_updateComponentsViewControllerLayout
{
  v3 = [(PXCMMViewController *)self view];
  [v3 bounds];

  v4 = [(PXCMMViewController *)self standaloneNavigationBar];
  [v4 bounds];

  v5 = [(PXCMMViewController *)self standaloneNavigationBar];
  [v5 bounds];

  [(PXCMMViewController *)self assetsViewController];
  objc_claimAutoreleasedReturnValue();
  [(PXCMMViewController *)self px_screen];
  [objc_claimAutoreleasedReturnValue() scale];
  PXRectRoundToPixel();
}

- (void)_setNeedsUpdate
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:507 description:{@"%s must be called on the main thread", "-[PXCMMViewController _setNeedsUpdate]"}];
  }

  v5 = [(PXCMMViewController *)self viewIfLoaded];
  [v5 setNeedsLayout];
}

- (void)_updateComponentViewController:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if (v9)
  {
    v14 = v9;
    v10 = [v9 parentViewController];

    if (!v10)
    {
      [(PXCMMViewController *)self addChildViewController:v14];
      v11 = [(PXCMMViewController *)self view];
      v12 = [v14 view];
      [v11 addSubview:v12];

      [v14 didMoveToParentViewController:self];
    }

    v13 = [v14 view];
    [v13 setFrame:{x, y, width, height}];

    v9 = v14;
  }
}

- (void)_presentCMMShareSheetForMomentShareURL:(id)a3 withTitle:(id)a4 fromBarButtonItem:(id)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69CD9F8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 alloc];
  v26[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v14 = [v12 initWithActivityItems:v13 applicationActivities:0];

  v15 = [v14 popoverPresentationController];
  [v15 setBarButtonItem:v9];

  v16 = objc_alloc_init(MEMORY[0x1E696EC28]);
  v17 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  [v17 setTitle:v10];

  [v17 setOriginalURL:v11];
  v18 = PXLocalizedStringFromTable(@"PXCMMSharingHeaderSubtitleCloudLink", @"PhotosUICore");
  v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v18];
  [v16 setStatus:v19];

  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"link.icloud"];
  v21 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
  v22 = [v20 imageWithSymbolConfiguration:v21];

  v23 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v22];
  [v17 setSpecialization:v16];
  v25 = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];

  [v17 setAlternateImages:v24];
  [v14 setPhotosHeaderMetadata:v17];
  [(PXCMMViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (id)_shareCMMMenuItemForMomentShareURL:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69DC628];
  v11 = PXLocalizedStringFromTable(@"PXCompleteMyMomentShareActionMenuTitle", @"PhotosUICore");
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__PXCMMViewController__shareCMMMenuItemForMomentShareURL_title___block_invoke;
  v16[3] = &unk_1E77363E0;
  objc_copyWeak(v20, &location);
  v12 = v7;
  v17 = v12;
  v13 = v8;
  v20[1] = a2;
  v18 = v13;
  v19 = self;
  v14 = [v10 actionWithTitle:v11 image:v9 identifier:0 handler:v16];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);

  return v14;
}

void __64__PXCMMViewController__shareCMMMenuItemForMomentShareURL_title___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [v3 sender];

  [WeakRetained _presentCMMShareSheetForMomentShareURL:v5 withTitle:v4 fromBarButtonItem:v6];
}

- (id)_actionMenu
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [(PXCMMViewController *)self session];
  v5 = [v4 activityType];
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v9 = 0;
    v19 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = v4;
  if (!v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v21 handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:425 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"session", v23}];
LABEL_20:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    v25 = [v7 px_descriptionForAssertionMessage];
    [v21 handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:425 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"session", v23, v25}];

    goto LABEL_20;
  }

LABEL_4:
  v8 = [v7 momentShare];
  v9 = [v8 shareURL];
  v10 = PLSharingGetLog();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 pl_redactedShareURL];
      *buf = 134218242;
      v28 = v6;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "CMM activity type is %ld, which means we are sharing an existing CMM link: %{public}@", buf, 0x16u);
    }

    v7 = [(PXCMMViewController *)self _menuController];
    v13 = [(PXCMMViewController *)self session];
    v14 = [v13 viewModel];
    v8 = [v14 title];

    v11 = [(PXCMMViewController *)self _shareCMMMenuItemForMomentShareURL:v9 title:v8];
    v26 = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [v7 actions];
    v17 = [v15 arrayByAddingObjectsFromArray:v16];

    v18 = PLSharingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "Preparing a UIActivityViewController for sharing the CMM link", buf, 2u);
    }

    v19 = [MEMORY[0x1E69DCC60] menuWithChildren:v17];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v28 = v6;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "CMM activity type is %ld, which means we should have an existing CMM link, but it is nil.", buf, 0xCu);
    }

    v9 = 0;
    v19 = 0;
  }

LABEL_15:

  return v19;
}

- (id)_menuController
{
  v3 = [(PXCMMViewController *)self activeActionMenuController];

  if (!v3)
  {
    v4 = [(PXCMMViewController *)self session];
    v5 = [v4 viewModel];
    v6 = [v5 selectionManager];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v9 = [off_1E77218C8 alloc];
      v10 = [v4 dataSourceManager];
      v8 = [v9 initWithDataSourceManager:v10];
    }

    v11 = [[PXPhotoDetailsActionMenuController alloc] initWithSelectionManager:v8 displayTitleInfo:0 blockActionManager:0];
    v12 = [v5 disabledActionTypes];
    [(PXActionMenuController *)v11 setDisabledActionTypes:v12];

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{*off_1E7721D30, *off_1E7721D08, *off_1E7721CF8, 0}];
    [(PXActionMenuController *)v11 setExcludedActionTypes:v13];
    [(PXPhotoDetailsActionMenuController *)v11 setDelegate:self];
    [(PXCMMViewController *)self setActiveActionMenuController:v11];
  }

  return [(PXCMMViewController *)self activeActionMenuController];
}

- (void)_performCancel
{
  v4 = [(PXCMMViewController *)self actionProgress];
  v7 = v4;
  if (v4)
  {
    if (([v4 isCancellable] & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:390 description:{@"Invalid parameter not satisfying: %@", @"actionProgress.isCancellable"}];
    }

    [v7 cancel];
    [(PXCMMViewController *)self setActivityIndicatorView:0];
    [(PXCMMViewController *)self setProgressButton:0];
  }

  v5 = [(PXCMMViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 didCancelCompleteMyMomentViewController:self];
  }
}

- (BOOL)_shouldShowDismissButton
{
  v2 = [(PXCMMViewController *)self presentingViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_shouldShowActionMenu
{
  v2 = [(PXCMMViewController *)self session];
  v3 = [v2 hideActionMenu];

  return v3 ^ 1;
}

- (id)effectiveNavigationItem
{
  v3 = [(PXCMMViewController *)self presentingViewController];

  if (v3)
  {
    v4 = [(PXCMMViewController *)self navigationController];
    v5 = [v4 topViewController];
    v6 = [v5 navigationItem];
  }

  else
  {
    v6 = [(PXCMMViewController *)self navigationItem];
  }

  return v6;
}

- (void)_setupNavigationItem
{
  v21 = *MEMORY[0x1E69E9840];
  if (![(PXCMMViewController *)self didSetUpNavigationItem])
  {
    [(PXCMMViewController *)self setDidSetUpNavigationItem:1];
    v3 = [(PXCMMViewController *)self effectiveNavigationItem];
    [v3 setLargeTitleDisplayMode:2];
    [v3 px_setBackButtonDisplayMode:2];
    v4 = [(PXCMMViewController *)self session];
    v5 = [v4 viewModel];
    v6 = [v5 title];
    [v3 setBackButtonTitle:v6];

    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    if ([(PXCMMViewController *)self _shouldShowActionMenu])
    {
      v8 = [(PXCMMViewController *)self _actionMenu];
      if (v8)
      {
        v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle.fill"];
        v10 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
        v11 = [v9 imageWithSymbolConfiguration:v10];

        v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v11 menu:v8];
        actionMenuButtonItem = self->_actionMenuButtonItem;
        self->_actionMenuButtonItem = v12;

        [v7 addObject:self->_actionMenuButtonItem];
      }

      else
      {
        v14 = [(PXCMMViewController *)self session];
        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = [v15 momentShare];
        v17 = PLSharingGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = 138412290;
          v20 = v16;
          _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Could not create a menu of actions for CMM: %@. Skipping the ••• action menu", &v19, 0xCu);
        }
      }
    }

    if ([(PXCMMViewController *)self _shouldShowDismissButton])
    {
      v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel_closeButtonTapped_];
      [v7 insertObject:v18 atIndex:0];
    }

    [v3 setRightBarButtonItems:v7];
    [(PXCMMViewController *)self _updateTitle];
  }
}

- (void)updateViewConstraints
{
  v22[3] = *MEMORY[0x1E69E9840];
  v3 = [(PXCMMViewController *)self standaloneNavigationBar];

  if (v3)
  {
    v4 = [(PXCMMViewController *)self layoutConstraints];

    if (v4)
    {
      v5 = MEMORY[0x1E696ACD8];
      v6 = [(PXCMMViewController *)self layoutConstraints];
      [v5 deactivateConstraints:v6];
    }

    v7 = [(PXCMMViewController *)self standaloneNavigationBar];
    v19 = [v7 topAnchor];
    v20 = [(PXCMMViewController *)self view];
    v18 = [v20 topAnchor];
    [(PXCMMViewController *)self px_safeAreaInsets];
    v17 = [v19 constraintEqualToAnchor:v18 constant:?];
    v22[0] = v17;
    v16 = [v7 leftAnchor];
    v8 = [(PXCMMViewController *)self view];
    v9 = [v8 leftAnchor];
    v10 = [v16 constraintEqualToAnchor:v9];
    v22[1] = v10;
    v11 = [v7 rightAnchor];
    v12 = [(PXCMMViewController *)self view];
    v13 = [v12 rightAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v22[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
    [(PXCMMViewController *)self setLayoutConstraints:v15];
  }

  v21.receiver = self;
  v21.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v21 updateViewConstraints];
}

- (void)setActionProgress:(id)a3
{
  v5 = a3;
  actionProgress = self->_actionProgress;
  if (actionProgress != v5)
  {
    v8 = v5;
    [(NSProgress *)actionProgress removeObserver:self forKeyPath:@"finished" context:PXProgressFinishedObservationContext_84986];
    [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PXProgressFractionCompletedObservationContext_84988];
    [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"cancelled" context:PXProgressCancelledObservationContext_84987];
    objc_storeStrong(&self->_actionProgress, a3);
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"finished" options:1 context:PXProgressFinishedObservationContext_84986];
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"fractionCompleted" options:1 context:PXProgressFractionCompletedObservationContext_84988];
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"cancelled" options:1 context:PXProgressCancelledObservationContext_84987];
    v7 = [(PXCMMViewController *)self updater];
    [v7 setNeedsUpdateOf:sel__updateActionProgress];

    v5 = v8;
  }
}

- (void)_startPreloadingTasksIfNeeded
{
  if (!self->_hasStartedPreloadingTasks)
  {
    self->_hasStartedPreloadingTasks = 1;
    v6 = [(PXCMMViewController *)self session];
    v4 = [v6 peopleSuggestionsDataSourceManager];
    [v4 startLoading];

    v5 = [(PXCMMViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 startPreloadingTasksForCompleteMyMomentViewController:self];
    }
  }
}

- (void)_deactivateNotificationSuppressionIfNecessary
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DDA98];
  v3 = [*MEMORY[0x1E69DDA98] notificationSuppressionContextManager];
  v4 = [v3 notificationSuppressionContexts];

  if ([v4 count])
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Clearing CMM suppression contexts %@", &v7, 0xCu);
    }

    v6 = [*v2 notificationSuppressionContextManager];
    [v6 setNotificationSuppressionContexts:0];
  }
}

- (void)_activateNotificationSuppressionIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(PXCMMViewController *)self session];
  if ([v3 sourceType] != 1)
  {
    v4 = [(PXCMMViewController *)self session];
    v5 = [v4 notificationSuppressionContexts];

    if ([v5 count])
    {
      v6 = PLSharingGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Adding CMM suppression contexts %@", &v8, 0xCu);
      }

      v7 = [*MEMORY[0x1E69DDA98] notificationSuppressionContextManager];
      [v7 setNotificationSuppressionContexts:v5];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v4 viewDidDisappear:a3];
  [(PXCMMViewController *)self _deactivateNotificationSuppressionIfNecessary];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v9 viewDidAppear:a3];
  v4 = [(PXCMMViewController *)self session];
  if (![v4 ppt_presentComposeRecipientView])
  {
    goto LABEL_4;
  }

  v5 = [(PXCMMViewController *)self _canPresentComposeRecipientViewController];

  if (v5)
  {
    v4 = [(PXCMMViewController *)self session];
    [v4 ppt_delay];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PXCMMViewController_viewDidAppear___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
LABEL_4:
  }

  [(PXCMMViewController *)self _startPreloadingTasksIfNeeded];
  [(PXCMMViewController *)self _activateNotificationSuppressionIfNecessary];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v4 viewWillAppear:a3];
  [(PXCMMViewController *)self _setupNavigationItem];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(PXCMMViewController *)self updater];
  [v3 updateIfNeeded];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(PXCMMViewController *)self view];
  [v5 setNeedsUpdateConstraints];

  v6 = [(PXCMMViewController *)self updater];
  [v6 setNeedsUpdateOf:sel__updateComponentsViewControllerLayout];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v17 viewDidLoad];
  [(PXCMMViewController *)self px_enableExtendedTraitCollection];
  v3 = [(PXCMMViewController *)self session];
  v4 = [v3 sourceType];

  [(UIViewController *)self px_enableBarAppearance];
  v5 = [(UIViewController *)self px_barAppearance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __34__PXCMMViewController_viewDidLoad__block_invoke;
  v15[3] = &__block_descriptor_33_e34_v16__0___PXMutableBarAppearance__8l;
  v16 = v4 == 0;
  [v5 performChangesWithAnimationOptions:0 changes:v15];

  [(UIViewController *)self px_enableOneUpPresentation];
  v6 = [(UIViewController *)self px_oneUpPresentation];
  oneUpPresentation = self->_oneUpPresentation;
  self->_oneUpPresentation = v6;

  v8 = [(PXCMMViewController *)self px_extendedTraitCollection];
  v9 = [[PXCMMSpecManager alloc] initWithExtendedTraitCollection:v8 activityType:[(PXCMMSession *)self->_session activityType]];
  specManager = self->_specManager;
  self->_specManager = v9;

  [(PXCMMSpecManager *)self->_specManager registerChangeObserver:self context:PXSpecManagerObservationContext_84997];
  v11 = [(PXFeatureSpecManager *)self->_specManager spec];
  v12 = [v11 reviewBackgroundColor];
  v13 = [(PXCMMViewController *)self view];
  [v13 setBackgroundColor:v12];

  v14 = [(PXCMMViewController *)self updater];
  [v14 setNeedsUpdateOf:sel__updateComponentsViewControllerLayout];
}

void __34__PXCMMViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPrefersNavigationBarVisible:1];
  [v3 setPrefersToolbarVisible:0];
  [v3 setPrefersTabBarVisible:*(a1 + 32)];
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v5 didMoveToParentViewController:?];
  if (!a3)
  {
    [(PXCMMViewController *)self _performCancel];
  }
}

- (void)dealloc
{
  [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"finished" context:PXProgressFinishedObservationContext_84986];
  [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PXProgressFractionCompletedObservationContext_84988];
  [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"cancelled" context:PXProgressCancelledObservationContext_84987];
  v3.receiver = self;
  v3.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v3 dealloc];
}

- (PXCMMViewController)initWithSession:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"session"}];
  }

  v19.receiver = self;
  v19.super_class = PXCMMViewController;
  v7 = [(PXCMMViewController *)&v19 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_session, a3);
    v9 = [v6 viewModel];
    [v9 registerChangeObserver:v8 context:PXViewModelObservationContext_84998];

    v10 = [v6 dataSourceManager];
    [v10 registerChangeObserver:v8 context:PXDataSourceManagerObservationContext_85001];

    v11 = [v6 momentShareStatusPresentationWithPresentationStyle:2];
    momentShareStatusPresentation = v8->_momentShareStatusPresentation;
    v8->_momentShareStatusPresentation = v11;

    [(PXMomentShareStatusPresentation *)v8->_momentShareStatusPresentation registerChangeObserver:v8 context:PXMomentShareStatusPresentationObservationContext_84999];
    v13 = [[off_1E7721940 alloc] initWithTarget:v8];
    updater = v8->_updater;
    v8->_updater = v13;

    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateComponentsViewControllerLayout];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateActionProgress];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateTitle];
    [(PXUpdater *)v8->_updater setNeedsUpdateSelector:sel__setNeedsUpdate];
    v15 = [[PXCMMAssetsViewController alloc] initWithSession:v6];
    assetsViewController = v8->_assetsViewController;
    v8->_assetsViewController = v15;

    [(PXCMMAssetsViewController *)v8->_assetsViewController setDelegate:v8];
  }

  return v8;
}

- (PXCMMViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:119 description:{@"%s is not available as initializer", "-[PXCMMViewController initWithCoder:]"}];

  abort();
}

- (PXCMMViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:115 description:{@"%s is not available as initializer", "-[PXCMMViewController initWithNibName:bundle:]"}];

  abort();
}

@end