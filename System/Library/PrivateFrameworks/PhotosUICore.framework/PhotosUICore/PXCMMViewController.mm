@interface PXCMMViewController
- (BOOL)_canPresentComposeRecipientViewController;
- (BOOL)_shouldShowActionMenu;
- (BOOL)_shouldShowDismissButton;
- (BOOL)shouldShowAddMoreButtonForAssetsViewController:(id)controller;
- (PXCMMActionControllerDelegate)actionDelegate;
- (PXCMMViewController)initWithCoder:(id)coder;
- (PXCMMViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXCMMViewController)initWithSession:(id)session;
- (PXCMMViewControllerDelegate)delegate;
- (id)_actionMenu;
- (id)_localizedSelectionTitle;
- (id)_menuController;
- (id)_shareCMMMenuItemForMomentShareURL:(id)l title:(id)title;
- (id)completeMyMomentViewController:(id)controller performActionForSession:(id)session;
- (id)effectiveNavigationItem;
- (void)_activateNotificationSuppressionIfNecessary;
- (void)_completePeopleSuggestionsLoading;
- (void)_deactivateNotificationSuppressionIfNecessary;
- (void)_handleActionButton;
- (void)_performCancel;
- (void)_presentCMMShareSheetForMomentShareURL:(id)l withTitle:(id)title fromBarButtonItem:(id)item;
- (void)_presentComposeRecipientViewController;
- (void)_presentViewController:(id)controller;
- (void)_setNeedsUpdate;
- (void)_setupNavigationItem;
- (void)_startPreloadingTasksIfNeeded;
- (void)_updateActionProgress;
- (void)_updateComponentViewController:(id)controller frame:(CGRect)frame;
- (void)_updateComponentsViewControllerLayout;
- (void)_updateStyle;
- (void)_updateTitle;
- (void)actionMenu:(id)menu actionPerformer:(id)performer didChangeState:(unint64_t)state;
- (void)actionMenu:(id)menu assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didPerformDeletionActionForAssetsViewController:(id)controller;
- (void)didTapAddMoreButtonForAssetsViewController:(id)controller;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)ppt_setSelecting:(BOOL)selecting;
- (void)setActionProgress:(id)progress;
- (void)setLoadingPeopleSuggestions:(BOOL)suggestions;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
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

- (void)ppt_setSelecting:(BOOL)selecting
{
  session = [(PXCMMViewController *)self session];
  viewModel = [session viewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXCMMViewController_ppt_setSelecting___block_invoke;
  v6[3] = &__block_descriptor_33_e33_v16__0___PXCMMMutableViewModel__8l;
  selectingCopy = selecting;
  [viewModel performChanges:v6];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  if (PXProgressFinishedObservationContext_84986 == context || PXProgressCancelledObservationContext_84987 == context)
  {
    v19[1] = MEMORY[0x1E69E9820];
    v19[2] = 3221225472;
    v19[3] = __70__PXCMMViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v19[4] = &unk_1E774C318;
    objc_copyWeak(&v20, &location);
    px_dispatch_on_main_queue();
  }

  if (PXProgressFractionCompletedObservationContext_84988 == context)
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
  [(PXCMMViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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

- (void)actionMenu:(id)menu assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection
{
  v16[2] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  moviePresenter = [(PXCMMViewController *)self moviePresenter];
  v8 = collectionCopy;
  if (!moviePresenter)
  {
    moviePresenter = [PXMoviePresenter moviePresenterWithPresentingViewController:self];
    [(PXCMMViewController *)self setMoviePresenter:moviePresenter];
  }

  [moviePresenter presentMovieViewControllerForAssetCollection:v8 keyAssetFetchResult:0 preferredTransitionType:1];
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

- (void)actionMenu:(id)menu actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  if (state == 20)
  {
    v19 = v5;
    v20 = v6;
    actionType = [performer actionType];
    if ([actionType isEqualToString:*off_1E7721DF0])
    {
      delegate = [(PXCMMViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate didCancelCompleteMyMomentViewController:self];
      }
    }

    else
    {
      v10 = *off_1E7721CC0;
      if ([actionType isEqualToString:*off_1E7721CC0])
      {
        session = [(PXCMMViewController *)self session];
        viewModel = [session viewModel];

        v13 = MEMORY[0x1E695DFA8];
        disabledActionTypes = [viewModel disabledActionTypes];
        v15 = [v13 setWithSet:disabledActionTypes];

        [v15 addObject:v10];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __65__PXCMMViewController_actionMenu_actionPerformer_didChangeState___block_invoke;
        v17[3] = &unk_1E7746A48;
        v18 = v15;
        v16 = v15;
        [viewModel performChanges:v17];
      }
    }
  }
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  popoverPresentationController = [controllerCopy popoverPresentationController];
  if (popoverPresentationController)
  {
    actionMenuButtonItem = [(PXCMMViewController *)self actionMenuButtonItem];
    if (actionMenuButtonItem)
    {
      [popoverPresentationController setBarButtonItem:actionMenuButtonItem];
    }

    [popoverPresentationController setDelegate:self];
  }

  [(PXCMMViewController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (id)completeMyMomentViewController:(id)controller performActionForSession:(id)session
{
  sessionCopy = session;
  controllerCopy = controller;
  actionDelegate = [(PXCMMViewController *)self actionDelegate];
  v9 = [actionDelegate completeMyMomentViewController:controllerCopy performActionForSession:sessionCopy];

  return v9;
}

- (void)didPerformDeletionActionForAssetsViewController:(id)controller
{
  delegate = [(PXCMMViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didCancelCompleteMyMomentViewController:self];
  }
}

- (void)didTapAddMoreButtonForAssetsViewController:(id)controller
{
  delegate = [(PXCMMViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    session = [(PXCMMViewController *)self session];
    [delegate completeMyMomentViewController:self showPhotoPickerForSession:session];
  }
}

- (BOOL)shouldShowAddMoreButtonForAssetsViewController:(id)controller
{
  delegate = [(PXCMMViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  session = [(PXCMMViewController *)self session];
  activityType = [session activityType];

  return v5 & (activityType == 1);
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  objc_initWeak(&location, self);
  if (PXSpecManagerObservationContext_84997 == context)
  {
    if (changeCopy)
    {
      v16[1] = MEMORY[0x1E69E9820];
      v16[2] = 3221225472;
      v16[3] = __52__PXCMMViewController_observable_didChange_context___block_invoke;
      v16[4] = &unk_1E774C318;
      objc_copyWeak(&v17, &location);
      px_dispatch_on_main_queue();
    }
  }

  else if (PXViewModelObservationContext_84998 == context)
  {
    if ((*&changeCopy & 0x10600) != 0)
    {
      v15[1] = MEMORY[0x1E69E9820];
      v15[2] = 3221225472;
      v15[3] = __52__PXCMMViewController_observable_didChange_context___block_invoke_2;
      v15[4] = &unk_1E774C318;
      objc_copyWeak(v16, &location);
      px_dispatch_on_main_queue();
    }
  }

  else if (PXMomentShareStatusPresentationObservationContext_84999 == context)
  {
    if ((changeCopy & 0x3000) != 0)
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
    if (PXPeopleSuggestionManagerObservationContext_85000 == context)
    {
      objc_copyWeak(v14, &location);
      px_dispatch_on_main_queue();
    }

    if (PXDataSourceManagerObservationContext_85001 == context)
    {
      session = [(PXCMMViewController *)self session];
      dataSourceManager = [session dataSourceManager];
      dataSource = [dataSourceManager dataSource];

      if ([dataSource numberOfSections] <= 0)
      {
        px_dispatch_on_main_queue();
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:716 description:@"unknown observation context"];
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
    session = [(PXCMMViewController *)self session];
    peopleSuggestionsDataSourceManager = [session peopleSuggestionsDataSourceManager];

    if ([peopleSuggestionsDataSourceManager isLoading])
    {
      [peopleSuggestionsDataSourceManager boostLoading];
      [peopleSuggestionsDataSourceManager registerChangeObserver:self context:PXPeopleSuggestionManagerObservationContext_85000];
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
    actionDelegate = [(PXCMMViewController *)self actionDelegate];

    if (!actionDelegate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:664 description:{@"actionDelegate in %@ is nil, save action will not work.", v16}];
    }

    actionDelegate2 = [(PXCMMViewController *)self actionDelegate];
    session2 = [(PXCMMViewController *)self session];
    v17 = [actionDelegate2 completeMyMomentViewController:self performActionForSession:session2];

    [(PXCMMViewController *)self setActionProgress:v17];
  }
}

void __42__PXCMMViewController__handleActionButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completePeopleSuggestionsLoading];
}

- (void)setLoadingPeopleSuggestions:(BOOL)suggestions
{
  if (self->_loadingPeopleSuggestions != suggestions)
  {
    v10 = v3;
    v11 = v4;
    self->_loadingPeopleSuggestions = suggestions;
    session = [(PXCMMViewController *)self session];
    viewModel = [session viewModel];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PXCMMViewController_setLoadingPeopleSuggestions___block_invoke;
    v8[3] = &__block_descriptor_33_e33_v16__0___PXCMMMutableViewModel__8l;
    suggestionsCopy = suggestions;
    [viewModel performChanges:v8];
  }
}

- (void)_completePeopleSuggestionsLoading
{
  [(PXCMMViewController *)self setLoadingPeopleSuggestions:0];
  session = [(PXCMMViewController *)self session];
  peopleSuggestionsDataSourceManager = [session peopleSuggestionsDataSourceManager];

  [peopleSuggestionsDataSourceManager unregisterChangeObserver:self context:PXPeopleSuggestionManagerObservationContext_85000];
  [(PXCMMViewController *)self _presentComposeRecipientViewController];
}

- (void)_presentComposeRecipientViewController
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [PXCMMComposeRecipientViewController alloc];
  session = [(PXCMMViewController *)self session];
  v5 = [(PXCMMComposeRecipientViewController *)v3 initWithSession:session];

  [(PXCMMComposeRecipientViewController *)v5 setActionDelegate:self];
  v6 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleComposeRecipientCancelButton_];
  viewControllers = [v6 viewControllers];
  firstObject = [viewControllers firstObject];
  navigationItem = [firstObject navigationItem];
  [navigationItem setLeftBarButtonItem:v7];

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
  session = [(PXCMMViewController *)self session];
  activityType = [session activityType];
  if ([session sourceType])
  {
    v4 = 0;
  }

  else
  {
    v4 = activityType == 1;
  }

  v5 = v4;

  return v5;
}

- (void)_updateStyle
{
  specManager = [(PXCMMViewController *)self specManager];
  spec = [specManager spec];
  reviewBackgroundColor = [spec reviewBackgroundColor];
  viewIfLoaded = [(PXCMMViewController *)self viewIfLoaded];
  [viewIfLoaded setBackgroundColor:reviewBackgroundColor];
}

- (void)_updateActionProgress
{
  actionProgress = [(PXCMMViewController *)self actionProgress];
  if (actionProgress)
  {
    effectiveNavigationItem = [(PXCMMViewController *)self effectiveNavigationItem];
    if ([actionProgress isFinished] & 1) != 0 || (objc_msgSend(actionProgress, "isCancelled"))
    {
      activityIndicatorView = [(PXCMMViewController *)self activityIndicatorView];
      [activityIndicatorView stopAnimating];

      [effectiveNavigationItem setRightBarButtonItem:0];
      v5 = 0;
    }

    else
    {
      activityIndicatorView2 = [(PXCMMViewController *)self activityIndicatorView];

      if (!activityIndicatorView2)
      {
        v10 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
        [(PXCMMViewController *)self setActivityIndicatorView:v10];
      }

      progressButton = [(PXCMMViewController *)self progressButton];

      if (!progressButton)
      {
        v12 = objc_alloc(MEMORY[0x1E69DC708]);
        activityIndicatorView3 = [(PXCMMViewController *)self activityIndicatorView];
        v14 = [v12 initWithCustomView:activityIndicatorView3];
        [(PXCMMViewController *)self setProgressButton:v14];
      }

      activityIndicatorView4 = [(PXCMMViewController *)self activityIndicatorView];
      [activityIndicatorView4 startAnimating];

      progressButton2 = [(PXCMMViewController *)self progressButton];
      [effectiveNavigationItem setRightBarButtonItem:progressButton2];

      v5 = 1;
    }

    [(PXCMMAssetsViewController *)self->_assetsViewController setActionInProgress:v5];
  }

  else
  {
    activityIndicatorView5 = [(PXCMMViewController *)self activityIndicatorView];
    [activityIndicatorView5 stopAnimating];

    session = [(PXCMMViewController *)self session];
    activityType = [session activityType];

    if (activityType == 2)
    {
      [(PXCMMAssetsViewController *)self->_assetsViewController setActionInProgress:([(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation state]- 3) < 2];
    }
  }
}

- (void)_updateTitle
{
  session = [(PXCMMViewController *)self session];
  viewModel = [session viewModel];

  if ([viewModel isSelecting])
  {
    _localizedSelectionTitle = [(PXCMMViewController *)self _localizedSelectionTitle];
  }

  else
  {
    _localizedSelectionTitle = 0;
  }

  effectiveNavigationItem = [(PXCMMViewController *)self effectiveNavigationItem];
  [effectiveNavigationItem setTitle:_localizedSelectionTitle];
}

- (id)_localizedSelectionTitle
{
  session = [(PXCMMViewController *)self session];
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  dataSource = [selectionSnapshot dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataSource2 = [selectionSnapshot dataSource];
    photosDataSource = [dataSource2 photosDataSource];
  }

  else
  {
    photosDataSource = 0;
  }

  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v10 = selectedIndexPaths;
  if (photosDataSource && [selectedIndexPaths count] >= 1)
  {
    v11 = [photosDataSource assetsAtIndexPaths:v10];
    PXLocalizedSelectionMessageForAssets(v11);
  }

  v12 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarSelectItemsTitle", @"PhotosUICore");

  return v12;
}

- (void)_updateComponentsViewControllerLayout
{
  view = [(PXCMMViewController *)self view];
  [view bounds];

  standaloneNavigationBar = [(PXCMMViewController *)self standaloneNavigationBar];
  [standaloneNavigationBar bounds];

  standaloneNavigationBar2 = [(PXCMMViewController *)self standaloneNavigationBar];
  [standaloneNavigationBar2 bounds];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:507 description:{@"%s must be called on the main thread", "-[PXCMMViewController _setNeedsUpdate]"}];
  }

  viewIfLoaded = [(PXCMMViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)_updateComponentViewController:(id)controller frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  if (controllerCopy)
  {
    v14 = controllerCopy;
    parentViewController = [controllerCopy parentViewController];

    if (!parentViewController)
    {
      [(PXCMMViewController *)self addChildViewController:v14];
      view = [(PXCMMViewController *)self view];
      view2 = [v14 view];
      [view addSubview:view2];

      [v14 didMoveToParentViewController:self];
    }

    view3 = [v14 view];
    [view3 setFrame:{x, y, width, height}];

    controllerCopy = v14;
  }
}

- (void)_presentCMMShareSheetForMomentShareURL:(id)l withTitle:(id)title fromBarButtonItem:(id)item
{
  v26[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69CD9F8];
  itemCopy = item;
  titleCopy = title;
  lCopy = l;
  v12 = [v8 alloc];
  v26[0] = lCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v14 = [v12 initWithActivityItems:v13 applicationActivities:0];

  popoverPresentationController = [v14 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:itemCopy];

  v16 = objc_alloc_init(MEMORY[0x1E696EC28]);
  v17 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  [v17 setTitle:titleCopy];

  [v17 setOriginalURL:lCopy];
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

- (id)_shareCMMMenuItemForMomentShareURL:(id)l title:(id)title
{
  lCopy = l;
  titleCopy = title;
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69DC628];
  v11 = PXLocalizedStringFromTable(@"PXCompleteMyMomentShareActionMenuTitle", @"PhotosUICore");
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__PXCMMViewController__shareCMMMenuItemForMomentShareURL_title___block_invoke;
  v16[3] = &unk_1E77363E0;
  objc_copyWeak(v20, &location);
  v12 = lCopy;
  v17 = v12;
  v13 = titleCopy;
  v20[1] = a2;
  v18 = v13;
  selfCopy = self;
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
  session = [(PXCMMViewController *)self session];
  activityType = [session activityType];
  if ((activityType & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    shareURL = 0;
    v19 = 0;
    goto LABEL_15;
  }

  v6 = activityType;
  _menuController = session;
  if (!_menuController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:425 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"session", v23}];
LABEL_20:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    px_descriptionForAssertionMessage = [_menuController px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:425 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"session", v23, px_descriptionForAssertionMessage}];

    goto LABEL_20;
  }

LABEL_4:
  momentShare = [_menuController momentShare];
  shareURL = [momentShare shareURL];
  v10 = PLSharingGetLog();
  v11 = v10;
  if (shareURL)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      pl_redactedShareURL = [shareURL pl_redactedShareURL];
      *buf = 134218242;
      v28 = v6;
      v29 = 2114;
      v30 = pl_redactedShareURL;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "CMM activity type is %ld, which means we are sharing an existing CMM link: %{public}@", buf, 0x16u);
    }

    _menuController = [(PXCMMViewController *)self _menuController];
    session2 = [(PXCMMViewController *)self session];
    viewModel = [session2 viewModel];
    momentShare = [viewModel title];

    v11 = [(PXCMMViewController *)self _shareCMMMenuItemForMomentShareURL:shareURL title:momentShare];
    v26 = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    actions = [_menuController actions];
    v17 = [v15 arrayByAddingObjectsFromArray:actions];

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

    shareURL = 0;
    v19 = 0;
  }

LABEL_15:

  return v19;
}

- (id)_menuController
{
  activeActionMenuController = [(PXCMMViewController *)self activeActionMenuController];

  if (!activeActionMenuController)
  {
    session = [(PXCMMViewController *)self session];
    viewModel = [session viewModel];
    selectionManager = [viewModel selectionManager];
    v7 = selectionManager;
    if (selectionManager)
    {
      v8 = selectionManager;
    }

    else
    {
      v9 = [off_1E77218C8 alloc];
      dataSourceManager = [session dataSourceManager];
      v8 = [v9 initWithDataSourceManager:dataSourceManager];
    }

    v11 = [[PXPhotoDetailsActionMenuController alloc] initWithSelectionManager:v8 displayTitleInfo:0 blockActionManager:0];
    disabledActionTypes = [viewModel disabledActionTypes];
    [(PXActionMenuController *)v11 setDisabledActionTypes:disabledActionTypes];

    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{*off_1E7721D30, *off_1E7721D08, *off_1E7721CF8, 0}];
    [(PXActionMenuController *)v11 setExcludedActionTypes:v13];
    [(PXPhotoDetailsActionMenuController *)v11 setDelegate:self];
    [(PXCMMViewController *)self setActiveActionMenuController:v11];
  }

  return [(PXCMMViewController *)self activeActionMenuController];
}

- (void)_performCancel
{
  actionProgress = [(PXCMMViewController *)self actionProgress];
  v7 = actionProgress;
  if (actionProgress)
  {
    if (([actionProgress isCancellable] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:390 description:{@"Invalid parameter not satisfying: %@", @"actionProgress.isCancellable"}];
    }

    [v7 cancel];
    [(PXCMMViewController *)self setActivityIndicatorView:0];
    [(PXCMMViewController *)self setProgressButton:0];
  }

  delegate = [(PXCMMViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didCancelCompleteMyMomentViewController:self];
  }
}

- (BOOL)_shouldShowDismissButton
{
  presentingViewController = [(PXCMMViewController *)self presentingViewController];
  v3 = presentingViewController != 0;

  return v3;
}

- (BOOL)_shouldShowActionMenu
{
  session = [(PXCMMViewController *)self session];
  hideActionMenu = [session hideActionMenu];

  return hideActionMenu ^ 1;
}

- (id)effectiveNavigationItem
{
  presentingViewController = [(PXCMMViewController *)self presentingViewController];

  if (presentingViewController)
  {
    navigationController = [(PXCMMViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    navigationItem = [topViewController navigationItem];
  }

  else
  {
    navigationItem = [(PXCMMViewController *)self navigationItem];
  }

  return navigationItem;
}

- (void)_setupNavigationItem
{
  v21 = *MEMORY[0x1E69E9840];
  if (![(PXCMMViewController *)self didSetUpNavigationItem])
  {
    [(PXCMMViewController *)self setDidSetUpNavigationItem:1];
    effectiveNavigationItem = [(PXCMMViewController *)self effectiveNavigationItem];
    [effectiveNavigationItem setLargeTitleDisplayMode:2];
    [effectiveNavigationItem px_setBackButtonDisplayMode:2];
    session = [(PXCMMViewController *)self session];
    viewModel = [session viewModel];
    title = [viewModel title];
    [effectiveNavigationItem setBackButtonTitle:title];

    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    if ([(PXCMMViewController *)self _shouldShowActionMenu])
    {
      _actionMenu = [(PXCMMViewController *)self _actionMenu];
      if (_actionMenu)
      {
        v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle.fill"];
        v10 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
        v11 = [v9 imageWithSymbolConfiguration:v10];

        v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v11 menu:_actionMenu];
        actionMenuButtonItem = self->_actionMenuButtonItem;
        self->_actionMenuButtonItem = v12;

        [v7 addObject:self->_actionMenuButtonItem];
      }

      else
      {
        session2 = [(PXCMMViewController *)self session];
        if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v15 = session2;
        }

        else
        {
          v15 = 0;
        }

        momentShare = [v15 momentShare];
        v17 = PLSharingGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = 138412290;
          v20 = momentShare;
          _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Could not create a menu of actions for CMM: %@. Skipping the ••• action menu", &v19, 0xCu);
        }
      }
    }

    if ([(PXCMMViewController *)self _shouldShowDismissButton])
    {
      v18 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel_closeButtonTapped_];
      [v7 insertObject:v18 atIndex:0];
    }

    [effectiveNavigationItem setRightBarButtonItems:v7];
    [(PXCMMViewController *)self _updateTitle];
  }
}

- (void)updateViewConstraints
{
  v22[3] = *MEMORY[0x1E69E9840];
  standaloneNavigationBar = [(PXCMMViewController *)self standaloneNavigationBar];

  if (standaloneNavigationBar)
  {
    layoutConstraints = [(PXCMMViewController *)self layoutConstraints];

    if (layoutConstraints)
    {
      v5 = MEMORY[0x1E696ACD8];
      layoutConstraints2 = [(PXCMMViewController *)self layoutConstraints];
      [v5 deactivateConstraints:layoutConstraints2];
    }

    standaloneNavigationBar2 = [(PXCMMViewController *)self standaloneNavigationBar];
    topAnchor = [standaloneNavigationBar2 topAnchor];
    view = [(PXCMMViewController *)self view];
    topAnchor2 = [view topAnchor];
    [(PXCMMViewController *)self px_safeAreaInsets];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v22[0] = v17;
    leftAnchor = [standaloneNavigationBar2 leftAnchor];
    view2 = [(PXCMMViewController *)self view];
    leftAnchor2 = [view2 leftAnchor];
    v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v22[1] = v10;
    rightAnchor = [standaloneNavigationBar2 rightAnchor];
    view3 = [(PXCMMViewController *)self view];
    rightAnchor2 = [view3 rightAnchor];
    v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v22[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];

    [MEMORY[0x1E696ACD8] activateConstraints:v15];
    [(PXCMMViewController *)self setLayoutConstraints:v15];
  }

  v21.receiver = self;
  v21.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v21 updateViewConstraints];
}

- (void)setActionProgress:(id)progress
{
  progressCopy = progress;
  actionProgress = self->_actionProgress;
  if (actionProgress != progressCopy)
  {
    v8 = progressCopy;
    [(NSProgress *)actionProgress removeObserver:self forKeyPath:@"finished" context:PXProgressFinishedObservationContext_84986];
    [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PXProgressFractionCompletedObservationContext_84988];
    [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"cancelled" context:PXProgressCancelledObservationContext_84987];
    objc_storeStrong(&self->_actionProgress, progress);
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"finished" options:1 context:PXProgressFinishedObservationContext_84986];
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"fractionCompleted" options:1 context:PXProgressFractionCompletedObservationContext_84988];
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"cancelled" options:1 context:PXProgressCancelledObservationContext_84987];
    updater = [(PXCMMViewController *)self updater];
    [updater setNeedsUpdateOf:sel__updateActionProgress];

    progressCopy = v8;
  }
}

- (void)_startPreloadingTasksIfNeeded
{
  if (!self->_hasStartedPreloadingTasks)
  {
    self->_hasStartedPreloadingTasks = 1;
    session = [(PXCMMViewController *)self session];
    peopleSuggestionsDataSourceManager = [session peopleSuggestionsDataSourceManager];
    [peopleSuggestionsDataSourceManager startLoading];

    delegate = [(PXCMMViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate startPreloadingTasksForCompleteMyMomentViewController:self];
    }
  }
}

- (void)_deactivateNotificationSuppressionIfNecessary
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DDA98];
  notificationSuppressionContextManager = [*MEMORY[0x1E69DDA98] notificationSuppressionContextManager];
  notificationSuppressionContexts = [notificationSuppressionContextManager notificationSuppressionContexts];

  if ([notificationSuppressionContexts count])
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = notificationSuppressionContexts;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Clearing CMM suppression contexts %@", &v7, 0xCu);
    }

    notificationSuppressionContextManager2 = [*v2 notificationSuppressionContextManager];
    [notificationSuppressionContextManager2 setNotificationSuppressionContexts:0];
  }
}

- (void)_activateNotificationSuppressionIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  session = [(PXCMMViewController *)self session];
  if ([session sourceType] != 1)
  {
    session2 = [(PXCMMViewController *)self session];
    notificationSuppressionContexts = [session2 notificationSuppressionContexts];

    if ([notificationSuppressionContexts count])
    {
      v6 = PLSharingGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = notificationSuppressionContexts;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Adding CMM suppression contexts %@", &v8, 0xCu);
      }

      notificationSuppressionContextManager = [*MEMORY[0x1E69DDA98] notificationSuppressionContextManager];
      [notificationSuppressionContextManager setNotificationSuppressionContexts:notificationSuppressionContexts];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v4 viewDidDisappear:disappear];
  [(PXCMMViewController *)self _deactivateNotificationSuppressionIfNecessary];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v9 viewDidAppear:appear];
  session = [(PXCMMViewController *)self session];
  if (![session ppt_presentComposeRecipientView])
  {
    goto LABEL_4;
  }

  _canPresentComposeRecipientViewController = [(PXCMMViewController *)self _canPresentComposeRecipientViewController];

  if (_canPresentComposeRecipientViewController)
  {
    session = [(PXCMMViewController *)self session];
    [session ppt_delay];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v4 viewWillAppear:appear];
  [(PXCMMViewController *)self _setupNavigationItem];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v4 viewDidLayoutSubviews];
  updater = [(PXCMMViewController *)self updater];
  [updater updateIfNeeded];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  view = [(PXCMMViewController *)self view];
  [view setNeedsUpdateConstraints];

  updater = [(PXCMMViewController *)self updater];
  [updater setNeedsUpdateOf:sel__updateComponentsViewControllerLayout];
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v17 viewDidLoad];
  [(PXCMMViewController *)self px_enableExtendedTraitCollection];
  session = [(PXCMMViewController *)self session];
  sourceType = [session sourceType];

  [(UIViewController *)self px_enableBarAppearance];
  px_barAppearance = [(UIViewController *)self px_barAppearance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __34__PXCMMViewController_viewDidLoad__block_invoke;
  v15[3] = &__block_descriptor_33_e34_v16__0___PXMutableBarAppearance__8l;
  v16 = sourceType == 0;
  [px_barAppearance performChangesWithAnimationOptions:0 changes:v15];

  [(UIViewController *)self px_enableOneUpPresentation];
  px_oneUpPresentation = [(UIViewController *)self px_oneUpPresentation];
  oneUpPresentation = self->_oneUpPresentation;
  self->_oneUpPresentation = px_oneUpPresentation;

  px_extendedTraitCollection = [(PXCMMViewController *)self px_extendedTraitCollection];
  v9 = [[PXCMMSpecManager alloc] initWithExtendedTraitCollection:px_extendedTraitCollection activityType:[(PXCMMSession *)self->_session activityType]];
  specManager = self->_specManager;
  self->_specManager = v9;

  [(PXCMMSpecManager *)self->_specManager registerChangeObserver:self context:PXSpecManagerObservationContext_84997];
  spec = [(PXFeatureSpecManager *)self->_specManager spec];
  reviewBackgroundColor = [spec reviewBackgroundColor];
  view = [(PXCMMViewController *)self view];
  [view setBackgroundColor:reviewBackgroundColor];

  updater = [(PXCMMViewController *)self updater];
  [updater setNeedsUpdateOf:sel__updateComponentsViewControllerLayout];
}

void __34__PXCMMViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPrefersNavigationBarVisible:1];
  [v3 setPrefersToolbarVisible:0];
  [v3 setPrefersTabBarVisible:*(a1 + 32)];
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = PXCMMViewController;
  [(PXCMMViewController *)&v5 didMoveToParentViewController:?];
  if (!controller)
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

- (PXCMMViewController)initWithSession:(id)session
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"session"}];
  }

  v19.receiver = self;
  v19.super_class = PXCMMViewController;
  v7 = [(PXCMMViewController *)&v19 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_session, session);
    viewModel = [sessionCopy viewModel];
    [viewModel registerChangeObserver:v8 context:PXViewModelObservationContext_84998];

    dataSourceManager = [sessionCopy dataSourceManager];
    [dataSourceManager registerChangeObserver:v8 context:PXDataSourceManagerObservationContext_85001];

    v11 = [sessionCopy momentShareStatusPresentationWithPresentationStyle:2];
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
    v15 = [[PXCMMAssetsViewController alloc] initWithSession:sessionCopy];
    assetsViewController = v8->_assetsViewController;
    v8->_assetsViewController = v15;

    [(PXCMMAssetsViewController *)v8->_assetsViewController setDelegate:v8];
  }

  return v8;
}

- (PXCMMViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:119 description:{@"%s is not available as initializer", "-[PXCMMViewController initWithCoder:]"}];

  abort();
}

- (PXCMMViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMViewController.m" lineNumber:115 description:{@"%s is not available as initializer", "-[PXCMMViewController initWithNibName:bundle:]"}];

  abort();
}

@end