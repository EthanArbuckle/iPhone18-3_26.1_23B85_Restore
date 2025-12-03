@interface PXPhotosDetailsBarsController
- (BOOL)_dismissViewControllerIfSafeAnimated:(BOOL)animated;
- (BOOL)_shouldAddBarItemForBarItemIdentifier:(id)identifier;
- (BOOL)_shouldEnableActionWithBarItemIdentifier:(id)identifier;
- (BOOL)actionMenu:(id)menu actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionMenu:(id)menu actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (PXActionPerformer)_lastActionPerformer;
- (PXAssetActionManager)_assetActionManager;
- (PXAssetCollectionActionManager)_assetCollectionActionManager;
- (PXPhotosDetailsBarsController)init;
- (PXPhotosDetailsBarsController)initWithContext:(id)context viewModel:(id)model extendedTraitCollection:(id)collection;
- (id)_actionMenu;
- (id)_assetCollection;
- (id)_barButtonItemForBarItemIdentifier:(id)identifier;
- (id)_barButtonItemsForBarItems:(id)items placement:(unint64_t)placement;
- (id)_createActionMenuButton;
- (id)_createActionMenuController;
- (id)_flexibleSpaceBarButtonItem;
- (id)_localizedSelectionTitle;
- (id)_sourceBarButtonItemForActionType:(id)type;
- (id)createAssetActionManager;
- (id)createAssetCollectionActionManager;
- (id)createTitleView;
- (id)presentationEnvironmentForActionPerformer:(id)performer;
- (id)undoManagerForActionMenuController:(id)controller;
- (id)undoManagerForActionPerformer:(id)performer;
- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)collection;
- (void)_invalidateAssetActionManager;
- (void)_setSelectionManager:(id)manager;
- (void)_setupBlockActionManager;
- (void)_toggleFaceMode:(id)mode;
- (void)_updateTitleViewAlpha;
- (void)actionMenu:(id)menu actionPerformer:(id)performer didChangeState:(unint64_t)state;
- (void)actionMenu:(id)menu assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection;
- (void)actionMenuButtonItemTapped:(id)tapped;
- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state;
- (void)cancelBarButtonItemTapped:(id)tapped;
- (void)doneBarButtonItemTapped:(id)tapped;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosDataSource:(id)source didChange:(id)change;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)removeActionButton;
- (void)selectBarButtonItemTapped:(id)tapped;
- (void)shouldShowTitleView:(BOOL)view animated:(BOOL)animated;
- (void)updateBars;
@end

@implementation PXPhotosDetailsBarsController

- (PXActionPerformer)_lastActionPerformer
{
  WeakRetained = objc_loadWeakRetained(&self->__lastActionPerformer);

  return WeakRetained;
}

- (BOOL)_dismissViewControllerIfSafeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewController = [(PXBarsController *)self viewController];
  navigationController = [viewController navigationController];
  v6 = navigationController;
  if (navigationController)
  {
    visibleViewController = [navigationController visibleViewController];

    if (visibleViewController == viewController)
    {
      v8 = [v6 popViewControllerAnimated:animatedCopy];
LABEL_7:
      v10 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    presentedViewController = [viewController presentedViewController];

    if (!presentedViewController)
    {
      [viewController dismissViewControllerAnimated:animatedCopy completion:0];
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)undoManagerForActionMenuController:(id)controller
{
  viewController = [(PXBarsController *)self viewController];
  undoManager = [viewController undoManager];

  return undoManager;
}

- (void)actionMenu:(id)menu assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection
{
  v5 = [(PXBarsController *)self viewController:menu];
  [v5 playMovieWithCompletionHandler:&__block_literal_global_335_102783];
}

void __103__PXPhotosDetailsBarsController_actionMenu_assetCollectionActionPerformer_playMovieForAssetCollection___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLMemoriesGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v5 = v4;
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Playing Memories movie with success: %@", &v6, 0xCu);
  }
}

- (void)actionMenu:(id)menu actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  performerCopy = performer;
  actionType = [performerCopy actionType];
  v9 = actionType;
  if (state == 20)
  {
    if (([actionType isEqualToString:*off_1E7721CF8] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C48) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C68) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C70) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C50) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C60) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *off_1E7721C58))
    {
      [(PXPhotosDetailsBarsController *)self _dismissViewControllerIfSafeAnimated:1];
    }

    actionType2 = [performerCopy actionType];
    v11 = *off_1E7721CC0;
    v12 = [actionType2 isEqualToString:*off_1E7721CC0];

    if (v12)
    {
      v13 = MEMORY[0x1E695DFA8];
      _viewModel = [(PXPhotosDetailsBarsController *)self _viewModel];
      disabledActionTypes = [_viewModel disabledActionTypes];
      v16 = [v13 setWithSet:disabledActionTypes];

      [v16 addObject:v11];
      _viewModel2 = [(PXPhotosDetailsBarsController *)self _viewModel];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __75__PXPhotosDetailsBarsController_actionMenu_actionPerformer_didChangeState___block_invoke;
      v22[3] = &unk_1E773D0E0;
      v23 = v16;
      v18 = v16;
      [_viewModel2 performChanges:v22];
    }
  }

  actionPerformerDelegate = [(PXBarsController *)self actionPerformerDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    actionPerformerDelegate2 = [(PXBarsController *)self actionPerformerDelegate];
    [actionPerformerDelegate2 actionPerformer:performerCopy didChangeState:state];
  }
}

- (BOOL)actionMenu:(id)menu actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  viewController = [(PXBarsController *)self viewController];
  presentedViewController = [viewController presentedViewController];

  if (presentedViewController)
  {
    [viewController dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  return presentedViewController != 0;
}

- (BOOL)actionMenu:(id)menu actionPerformer:(id)performer presentViewController:(id)controller
{
  performerCopy = performer;
  controllerCopy = controller;
  viewController = [(PXBarsController *)self viewController];
  if (viewController)
  {
    popoverPresentationController = [controllerCopy popoverPresentationController];
    if (popoverPresentationController)
    {
      _barButtonItemCacheByBarItemIdentifier = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
      v12 = [_barButtonItemCacheByBarItemIdentifier objectForKeyedSubscript:*off_1E7721E00];

      if (v12)
      {
        [popoverPresentationController setBarButtonItem:v12];
      }

      [popoverPresentationController setDelegate:self];
    }

    actionType = [performerCopy actionType];
    v14 = [actionType isEqualToString:*off_1E7721D18];

    if (v14)
    {
      [viewController px_presentViewControllerInNavigationController:controllerCopy animated:1 dimissButtonLocation:0 completion:0];
    }

    else
    {
      [viewController presentViewController:controllerCopy animated:1 completion:0];
    }
  }

  return viewController != 0;
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  presentedViewController = [presentationCopy presentedViewController];
  _activePerformer = [(PXPhotosDetailsBarsController *)self _activePerformer];
  presentedViewController2 = [_activePerformer presentedViewController];
  if (presentedViewController == presentedViewController2)
  {
    actionType = [_activePerformer actionType];

    if (!actionType)
    {
      goto LABEL_5;
    }

    actionType2 = [_activePerformer actionType];
    presentedViewController2 = [(PXPhotosDetailsBarsController *)self _sourceBarButtonItemForActionType:actionType2];

    [presentationCopy setBarButtonItem:presentedViewController2];
  }

LABEL_5:
}

- (id)presentationEnvironmentForActionPerformer:(id)performer
{
  [(PXBarsController *)self viewController];
  if (objc_claimAutoreleasedReturnValue())
  {
    PXPresentationEnvironmentForSender();
  }

  return 0;
}

- (id)undoManagerForActionPerformer:(id)performer
{
  viewController = [(PXBarsController *)self viewController];
  undoManager = [viewController undoManager];

  return undoManager;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  viewController = [(PXBarsController *)self viewController];
  presentedViewController = [viewController presentedViewController];

  if (presentedViewController)
  {
    [viewController dismissViewControllerAnimated:1 completion:handlerCopy];
  }

  return presentedViewController != 0;
}

- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller
{
  performerCopy = performer;
  controllerCopy = controller;
  viewController = [(PXBarsController *)self viewController];
  if (viewController)
  {
    popoverPresentationController = [controllerCopy popoverPresentationController];
    if (popoverPresentationController)
    {
      actionType = [performerCopy actionType];
      v11 = [(PXPhotosDetailsBarsController *)self _sourceBarButtonItemForActionType:actionType];

      if (v11)
      {
        [popoverPresentationController setBarButtonItem:v11];
      }

      [popoverPresentationController setDelegate:self];
    }

    [viewController presentViewController:controllerCopy animated:1 completion:0];
  }

  return viewController != 0;
}

- (id)_sourceBarButtonItemForActionType:(id)type
{
  typeCopy = type;
  if (!typeCopy || (-[PXPhotosDetailsBarsController _barButtonItemByActionType](self, "_barButtonItemByActionType"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:typeCopy], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    if (([typeCopy isEqualToString:*off_1E7721A98] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *off_1E7721A68) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *off_1E7721BA0))
    {
      v7 = [(PXPhotosDetailsBarsController *)self _sourceBarButtonItemForActionType:*off_1E7721B88];
      if (v7)
      {
        goto LABEL_10;
      }
    }

    if (([typeCopy isEqualToString:*off_1E7721BE8] & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *off_1E7721B50))
    {
      v7 = [(PXPhotosDetailsBarsController *)self _sourceBarButtonItemForActionType:*off_1E7721BF8];
LABEL_10:
      v6 = v7;
      goto LABEL_11;
    }

    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  performerCopy = performer;
  v15 = performerCopy;
  if (state == 10)
  {
    [(PXPhotosDetailsBarsController *)self _setActivePerformer:performerCopy];
    [(PXPhotosDetailsBarsController *)self _setLastActionPerformer:v15];
    goto LABEL_11;
  }

  _activePerformer = [(PXPhotosDetailsBarsController *)self _activePerformer];

  if (_activePerformer == v15)
  {
    [(PXPhotosDetailsBarsController *)self _setActivePerformer:0];
  }

  if (state == 30 && [v15 success])
  {
    _lastActionPerformer = [(PXPhotosDetailsBarsController *)self _lastActionPerformer];
    if (_lastActionPerformer != v15)
    {
LABEL_8:

      goto LABEL_11;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      actionType = [v15 actionType];
      v11 = [actionType isEqual:*off_1E7721BA0];

      if ((v11 & 1) == 0)
      {
        _lastActionPerformer = [(PXPhotosDetailsBarsController *)self _viewModel];
        [_lastActionPerformer performChanges:&__block_literal_global_329];
        goto LABEL_8;
      }
    }
  }

LABEL_11:
  actionPerformerDelegate = [(PXBarsController *)self actionPerformerDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    actionPerformerDelegate2 = [(PXBarsController *)self actionPerformerDelegate];
    [actionPerformerDelegate2 actionPerformer:v15 didChangeState:state];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXViewModelObservationContext_102795 == context)
  {
    v11 = observableCopy;
    if (changeCopy)
    {
      [(PXBarsController *)self invalidateBars];
      [(PXBarsController *)self setWantsAnimatedBarsUpdate:1];
    }

    if ((changeCopy & 0x12) != 0)
    {
      [(PXBarsController *)self invalidateBars];
    }

    if ((changeCopy & 4) != 0)
    {
      _viewModel = [(PXPhotosDetailsBarsController *)self _viewModel];
      selectionManager = [_viewModel selectionManager];

      [(PXPhotosDetailsBarsController *)self _setSelectionManager:selectionManager];
      [(PXBarsController *)self invalidateBars];
    }

    goto LABEL_15;
  }

  if (PXExtendedTraitCollectionObservationContext_102796 == context)
  {
    if ((changeCopy & 0xA) == 0)
    {
      goto LABEL_16;
    }

    v11 = observableCopy;
    goto LABEL_14;
  }

  if ((changeCopy & 1) != 0 && PXSelectionManagerObservationContext_102797 == context)
  {
    v11 = observableCopy;
    [(PXPhotosDetailsBarsController *)self _invalidateAssetActionManager];
LABEL_14:
    [(PXBarsController *)self invalidateBars];
LABEL_15:
    [(PXBarsController *)self updateIfNeeded];
    observableCopy = v11;
  }

LABEL_16:
}

- (void)photosDataSource:(id)source didChange:(id)change
{
  v8 = [(PXPhotosDetailsBarsController *)self _assetCollection:source];
  _assetCollectionActionManager = [(PXPhotosDetailsBarsController *)self _assetCollectionActionManager];
  assetCollectionReference = [_assetCollectionActionManager assetCollectionReference];
  assetCollection = [assetCollectionReference assetCollection];

  if (v8 != assetCollection)
  {
    [(PXPhotosDetailsBarsController *)self _invalidateAssetCollectionActionManager];
    [(PXBarsController *)self updateIfNeeded];
  }
}

- (void)removeActionButton
{
  [(PXPhotosDetailsBarsController *)self setShouldAddActionButton:0];
  _barButtonItemCacheByBarItemIdentifier = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
  v4 = *off_1E7721E00;
  v11 = [_barButtonItemCacheByBarItemIdentifier objectForKeyedSubscript:*off_1E7721E00];

  if (v11)
  {
    viewController = [(PXBarsController *)self viewController];
    navigationItem = [viewController navigationItem];

    v7 = MEMORY[0x1E695DF70];
    rightBarButtonItems = [navigationItem rightBarButtonItems];
    v9 = [v7 arrayWithArray:rightBarButtonItems];

    [v9 removeObject:v11];
    [navigationItem setRightBarButtonItems:v9];
    _barButtonItemCacheByBarItemIdentifier2 = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
    [_barButtonItemCacheByBarItemIdentifier2 removeObjectForKey:v4];
  }
}

- (void)_setupBlockActionManager
{
  objc_initWeak(location, self);
  _context = [(PXPhotosDetailsBarsController *)self _context];
  people = [_context people];

  v5 = [off_1E77214E8 alloc];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__PXPhotosDetailsBarsController__setupBlockActionManager__block_invoke;
  v24[3] = &unk_1E7738868;
  objc_copyWeak(&v25, location);
  v6 = [v5 initWithBlock:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__PXPhotosDetailsBarsController__setupBlockActionManager__block_invoke_2;
  v22[3] = &unk_1E7738890;
  objc_copyWeak(&v23, location);
  [v6 setCanPerformBlock:v22];
  v7 = PXLocalizedStringForPeople(people, @"PXPhotosDetailsMenuFaceModeAction");
  [v6 setActionName:v7];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"face.smiling"];
  [v6 setImage:v8];

  blockActionManager = [(PXPhotosDetailsBarsController *)self blockActionManager];
  [blockActionManager registerActionWithConfiguration:v6 forType:@"PXPhotosDetailsShowFaceAction"];

  v10 = [off_1E77214E8 alloc];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__PXPhotosDetailsBarsController__setupBlockActionManager__block_invoke_3;
  v20[3] = &unk_1E7738868;
  objc_copyWeak(&v21, location);
  v11 = [v10 initWithBlock:v20];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __57__PXPhotosDetailsBarsController__setupBlockActionManager__block_invoke_4;
  v18 = &unk_1E7738890;
  objc_copyWeak(&v19, location);
  [v11 setCanPerformBlock:&v15];
  v12 = PXLocalizedStringForPeople(people, @"PXPhotosDetailsMenuFaceModeAction");
  [v11 setActionName:{v12, v15, v16, v17, v18}];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"face.smiling"];
  [v11 setImage:v13];

  [v11 setSelected:1];
  blockActionManager2 = [(PXPhotosDetailsBarsController *)self blockActionManager];
  [blockActionManager2 registerActionWithConfiguration:v11 forType:@"PXPhotosDetailsShowAssetAction"];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v25);
  objc_destroyWeak(location);
}

uint64_t __57__PXPhotosDetailsBarsController__setupBlockActionManager__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v4 sender];

  [WeakRetained _toggleFaceMode:v6];
  return 1;
}

uint64_t __57__PXPhotosDetailsBarsController__setupBlockActionManager__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _viewModel];
  v3 = [v2 isFaceModeEnabled];

  return v3 ^ 1u;
}

uint64_t __57__PXPhotosDetailsBarsController__setupBlockActionManager__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v4 sender];

  [WeakRetained _toggleFaceMode:v6];
  return 1;
}

uint64_t __57__PXPhotosDetailsBarsController__setupBlockActionManager__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _viewModel];
  v3 = [v2 isFaceModeEnabled];

  return v3;
}

- (id)_actionMenu
{
  _createActionMenuController = [(PXPhotosDetailsBarsController *)self _createActionMenuController];
  actions = [_createActionMenuController actions];
  v4 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:actions];

  return v4;
}

- (id)_createActionMenuController
{
  v3 = [PXPhotoDetailsActionMenuController alloc];
  _selectionManager = [(PXPhotosDetailsBarsController *)self _selectionManager];
  _context = [(PXPhotosDetailsBarsController *)self _context];
  displayTitleInfo = [_context displayTitleInfo];
  blockActionManager = [(PXPhotosDetailsBarsController *)self blockActionManager];
  v8 = [(PXPhotoDetailsActionMenuController *)v3 initWithSelectionManager:_selectionManager displayTitleInfo:displayTitleInfo blockActionManager:blockActionManager];

  _context2 = [(PXPhotosDetailsBarsController *)self _context];
  people = [_context2 people];
  [(PXPhotoDetailsActionMenuController *)v8 setPeople:people];

  _viewModel = [(PXPhotosDetailsBarsController *)self _viewModel];
  disabledActionTypes = [_viewModel disabledActionTypes];
  [(PXActionMenuController *)v8 setDisabledActionTypes:disabledActionTypes];

  _dataSource = [(PXPhotosDetailsBarsController *)self _dataSource];
  if ([PXPhotosDetailsHeaderTileWidget canShowMovieHeaderForDataSource:_dataSource])
  {
    [(PXActionMenuController *)v8 setExcludedActionTypes:0];
  }

  else
  {
    v14 = [MEMORY[0x1E695DFD8] setWithObject:*off_1E7721D70];
    [(PXActionMenuController *)v8 setExcludedActionTypes:v14];
  }

  [(PXPhotoDetailsActionMenuController *)v8 setDelegate:self];
  [(PXPhotosDetailsBarsController *)self set_activeMenuController:v8];

  return v8;
}

- (void)actionMenuButtonItemTapped:(id)tapped
{
  tappedCopy = tapped;
  _selectionManager = [(PXPhotosDetailsBarsController *)self _selectionManager];
  dataSourceManager = [_selectionManager dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  if (![dataSource numberOfSections])
  {
    PXAssertGetLog();
  }

  v9 = tappedCopy;
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsBarsController.m" lineNumber:548 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sender", v13}];
LABEL_8:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    px_descriptionForAssertionMessage = [v9 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsBarsController.m" lineNumber:548 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sender", v13, px_descriptionForAssertionMessage}];

    goto LABEL_8;
  }

LABEL_4:
  _actionMenu = [(PXPhotosDetailsBarsController *)self _actionMenu];
  [v9 setMenu:_actionMenu];
}

- (void)_toggleFaceMode:(id)mode
{
  _viewModel = [(PXPhotosDetailsBarsController *)self _viewModel];
  if (([_viewModel isFaceModeEnabled] & 1) == 0)
  {
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.detailView.showFaces" withPayload:MEMORY[0x1E695E0F8]];
  }

  [_viewModel performChanges:&__block_literal_global_304];
}

void __49__PXPhotosDetailsBarsController__toggleFaceMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFaceModeEnabled:{objc_msgSend(v2, "isFaceModeEnabled") ^ 1}];
}

- (void)doneBarButtonItemTapped:(id)tapped
{
  viewController = [(PXBarsController *)self viewController];
  [viewController dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelBarButtonItemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __59__PXPhotosDetailsBarsController_cancelBarButtonItemTapped___block_invoke;
  v11 = &unk_1E774C318;
  objc_copyWeak(&v12, &location);
  v5 = _Block_copy(&v8);
  v6 = [(PXPhotosDetailsBarsController *)self _activePerformer:v8];
  v7 = v6;
  if (v6)
  {
    if ([v6 isCancellable])
    {
      [v7 cancelActionWithCompletionHandler:v5];
    }
  }

  else
  {
    v5[2](v5);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __59__PXPhotosDetailsBarsController_cancelBarButtonItemTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _viewModel];
  [v1 performChanges:&__block_literal_global_298];
}

- (void)selectBarButtonItemTapped:(id)tapped
{
  _viewModel = [(PXPhotosDetailsBarsController *)self _viewModel];
  [_viewModel performChanges:&__block_literal_global_102835];
}

- (void)updateBars
{
  v63[8] = *MEMORY[0x1E69E9840];
  _titleView = [(PXPhotosDetailsBarsController *)self _titleView];

  if (!_titleView)
  {
    createTitleView = [(PXPhotosDetailsBarsController *)self createTitleView];
    titleView = self->__titleView;
    self->__titleView = createTitleView;
  }

  [(PXPhotosDetailsBarsController *)self _updateTitleViewAlpha];
  _barButtonItemByActionType = [(PXPhotosDetailsBarsController *)self _barButtonItemByActionType];
  [_barButtonItemByActionType removeAllObjects];

  viewController = [(PXBarsController *)self viewController];
  px_barAppearance = [viewController px_barAppearance];
  [(PXPhotosDetailsBarsController *)self _setBarAppearance:px_barAppearance];

  v9 = *off_1E7721EE8;
  v63[0] = *off_1E7721E00;
  v63[1] = v9;
  v10 = *off_1E7721F00;
  v63[2] = *off_1E7721F08;
  v63[3] = v10;
  v11 = *off_1E7721E60;
  v63[4] = *off_1E7721F50;
  v63[5] = v11;
  v12 = *off_1E7721E90;
  v63[6] = *off_1E7721E28;
  v63[7] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:8];
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v59;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v59 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v58 + 1) + 8 * i);
        if ([(PXPhotosDetailsBarsController *)self _shouldAddBarItemForBarItemIdentifier:v20])
        {
          v21 = [[_PXPhotosDetailsBarItem alloc] initWithIdentifier:v20];
          [v14 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v17);
  }

  barSpec = [(PXBarsController *)self barSpec];
  v23 = [barSpec sortedBarItemsByPlacement:v14];

  navigationItem = [viewController navigationItem];
  _viewModel = [(PXPhotosDetailsBarsController *)self _viewModel];
  isSelecting = [_viewModel isSelecting];

  if (isSelecting)
  {
    _localizedSelectionTitle = [(PXPhotosDetailsBarsController *)self _localizedSelectionTitle];
    _titleView2 = 0;
  }

  else
  {
    _titleView2 = [(PXPhotosDetailsBarsController *)self _titleView];
    px_extendedTraitCollection = [viewController px_extendedTraitCollection];
    v50 = [(PXPhotosDetailsBarsController *)self _titleViewVerticalSizeClassForExtendedTraitCollection:px_extendedTraitCollection];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = _titleView2;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __43__PXPhotosDetailsBarsController_updateBars__block_invoke;
    v54[3] = &unk_1E7749FF8;
    v55 = v31;
    v56 = viewController;
    v57 = v50;
    v32 = v31;
    [v32 performChanges:v54];

    _localizedSelectionTitle = 0;
  }

  [navigationItem setTitle:{_localizedSelectionTitle, _localizedSelectionTitle}];
  v48 = _titleView2;
  [navigationItem setTitleView:_titleView2];
  wantsAnimatedBarsUpdate = [(PXBarsController *)self wantsAnimatedBarsUpdate];
  [navigationItem px_setBackButtonDisplayMode:2];
  v51 = viewController;
  title = [viewController title];
  [navigationItem setBackButtonTitle:title];

  v35 = [v23 objectForKeyedSubscript:&unk_1F190BFB0];
  v36 = [(PXPhotosDetailsBarsController *)self _barButtonItemsForBarItems:v35 placement:2];
  [navigationItem setLeftBarButtonItems:v36 animated:wantsAnimatedBarsUpdate];

  v37 = [v23 objectForKeyedSubscript:&unk_1F190BFC8];
  v38 = [(PXPhotosDetailsBarsController *)self _barButtonItemsForBarItems:v37 placement:4];
  [navigationItem setRightBarButtonItems:v38 animated:wantsAnimatedBarsUpdate];

  _viewModel2 = [(PXPhotosDetailsBarsController *)self _viewModel];
  isSelecting2 = [_viewModel2 isSelecting];

  [navigationItem setHidesBackButton:isSelecting2 animated:0];
  v49 = v23;
  v41 = [v23 objectForKeyedSubscript:&unk_1F190BFE0];
  viewController2 = [(PXBarsController *)self viewController];
  v43 = [(PXPhotosDetailsBarsController *)self _barButtonItemsForBarItems:v41 placement:6];
  [viewController2 setToolbarItems:v43];

  _barAppearance = [(PXPhotosDetailsBarsController *)self _barAppearance];
  if (wantsAnimatedBarsUpdate)
  {
    v45 = [[PXBarAnimationOptions alloc] initWithType:1];
  }

  else
  {
    v45 = 0;
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __43__PXPhotosDetailsBarsController_updateBars__block_invoke_294;
  v52[3] = &unk_1E7738840;
  v53 = v41;
  v46 = v41;
  [_barAppearance performChangesWithAnimationOptions:v45 changes:v52];
}

uint64_t __43__PXPhotosDetailsBarsController_updateBars__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) title];
  [v2 setTitle:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) px_subtitle];
  [v4 setSubtitle:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);

  return [v6 setVerticalSizeClass:v7];
}

void __43__PXPhotosDetailsBarsController_updateBars__block_invoke_294(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setPrefersStatusBarVisible:1];
  [v5 setPrefersNavigationBarVisible:1];
  v3 = [*(a1 + 32) count];
  v4 = v3 == 0;
  [v5 setPrefersToolbarVisible:v3 != 0];
  [v5 setPrefersTabBarVisible:v4];
}

- (void)_updateTitleViewAlpha
{
  if ([(PXPhotosDetailsBarsController *)self _showTitleView])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  _titleView = [(PXPhotosDetailsBarsController *)self _titleView];
  if ([_titleView conformsToProtocol:&unk_1F19AE6B0])
  {
    [_titleView setSubviewsAlpha:v3];
  }

  else
  {
    [_titleView setAlpha:v3];
  }
}

- (void)shouldShowTitleView:(BOOL)view animated:(BOOL)animated
{
  if (self->__showTitleView != view)
  {
    animatedCopy = animated;
    [(PXPhotosDetailsBarsController *)self _setShowTitleView:?];
    if (animatedCopy)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __62__PXPhotosDetailsBarsController_shouldShowTitleView_animated___block_invoke;
      v6[3] = &unk_1E774C648;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.25];
    }

    else
    {

      [(PXPhotosDetailsBarsController *)self _updateTitleViewAlpha];
    }
  }
}

- (id)createAssetCollectionActionManager
{
  v11 = *MEMORY[0x1E69E9840];
  _assetCollection = [(PXPhotosDetailsBarsController *)self _assetCollection];
  if (_assetCollection)
  {
    v4 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:_assetCollection displayTitleInfo:0];
  }

  else
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      _dataSource = [(PXPhotosDetailsBarsController *)self _dataSource];
      collectionListFetchResult = [_dataSource collectionListFetchResult];
      v9 = 138412290;
      v10 = collectionListFetchResult;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected number of asset collections: %@", &v9, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)createAssetActionManager
{
  _selectionManager = [(PXPhotosDetailsBarsController *)self _selectionManager];
  v3 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:_selectionManager];

  return v3;
}

- (id)createTitleView
{
  v2 = [PXNavigationTitleView alloc];
  v3 = [(PXNavigationTitleView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (BOOL)_shouldEnableActionWithBarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*off_1E7721F08])
  {
    v5 = off_1E7721B88;
  }

  else if ([identifierCopy isEqualToString:*off_1E7721F00])
  {
    v5 = off_1E7721B90;
  }

  else
  {
    if (![identifierCopy isEqualToString:*off_1E7721F50])
    {
      v7 = 1;
      goto LABEL_8;
    }

    v5 = off_1E7721BF8;
  }

  _assetActionManager = [(PXPhotosDetailsBarsController *)self _assetActionManager];
  v7 = [_assetActionManager canPerformActionType:*v5];

LABEL_8:
  return v7;
}

- (BOOL)_shouldAddBarItemForBarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _viewModel = [(PXPhotosDetailsBarsController *)self _viewModel];
  if ([_viewModel isSelecting])
  {
    if ([identifierCopy isEqualToString:*off_1E7721F08] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *off_1E7721F00) & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *off_1E7721F50))
    {
      v6 = 1;
    }

    else
    {
      v6 = [identifierCopy isEqualToString:*off_1E7721E28];
    }
  }

  else
  {
    if ([identifierCopy isEqualToString:*off_1E7721E60])
    {
      v6 = 1;
    }

    else
    {
      v6 = [identifierCopy isEqualToString:*off_1E7721EE8];
    }

    if ([identifierCopy isEqualToString:*off_1E7721E00])
    {
      v6 |= [(PXPhotosDetailsBarsController *)self shouldAddActionButton];
    }
  }

  return v6 & 1;
}

- (id)_createActionMenuButton
{
  barButtonItemsController = [(PXPhotosDetailsBarsController *)self barButtonItemsController];
  v4 = [barButtonItemsController createBarButtonItemWithSystemItem:1 target:self action:0 menuAction:sel_actionMenuButtonItemTapped_ accessibilityIdentifier:*off_1E7721E00];

  return v4;
}

- (id)_barButtonItemForBarItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _barButtonItemCacheByBarItemIdentifier = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
  v6 = [_barButtonItemCacheByBarItemIdentifier objectForKeyedSubscript:identifierCopy];

  if ([identifierCopy isEqualToString:*off_1E7721F08])
  {
    v7 = off_1E7721B88;
  }

  else
  {
    if (![identifierCopy isEqualToString:*off_1E7721F50])
    {
      if (v6)
      {
        v8 = 0;
        goto LABEL_27;
      }

      v13 = identifierCopy;
      goto LABEL_12;
    }

    v7 = off_1E7721BF8;
  }

  v8 = *v7;
  if (v6)
  {
    v9 = v6;
    goto LABEL_22;
  }

  v10 = identifierCopy;
  if (v8)
  {
    v11 = v10;
    _assetActionManager = [(PXPhotosDetailsBarsController *)self _assetActionManager];
    v9 = [_assetActionManager barButtonItemForActionType:v8];

    [v9 setAccessibilityIdentifier:v11];
    goto LABEL_21;
  }

LABEL_12:
  if ([identifierCopy isEqualToString:*off_1E7721EE8])
  {
    barButtonItemsController = [(PXPhotosDetailsBarsController *)self barButtonItemsController];
    v15 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarSelectButton", @"PhotosUICore");
    v16 = sel_selectBarButtonItemTapped_;
LABEL_18:
    v9 = [barButtonItemsController createBarButtonItemWithTitle:v15 target:self action:v16 menuAction:0 accessibilityIdentifier:identifierCopy];
LABEL_19:

LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E60])
  {
    barButtonItemsController = [(PXPhotosDetailsBarsController *)self barButtonItemsController];
    v15 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarDoneButton", @"PhotosUICore");
    v16 = sel_doneBarButtonItemTapped_;
    goto LABEL_18;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E28])
  {
    barButtonItemsController = [(PXPhotosDetailsBarsController *)self barButtonItemsController];
    v15 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarCancelButton", @"PhotosUICore");
    v16 = sel_cancelBarButtonItemTapped_;
    goto LABEL_18;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E00])
  {
    _createActionMenuButton = [(PXPhotosDetailsBarsController *)self _createActionMenuButton];
LABEL_32:
    v9 = _createActionMenuButton;
    goto LABEL_20;
  }

  if ([identifierCopy isEqualToString:*off_1E7721F00])
  {
    barButtonItemsController = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle"];
    delegate = [(PXBarsController *)self delegate];
    v15 = [delegate barsControllerActionsForSelectionContextMenu:self];

    v22 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:v15];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:barButtonItemsController menu:v22];
    [v9 setAccessibilityIdentifier:identifierCopy];

    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E90])
  {
    _createActionMenuButton = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:8.0];
    goto LABEL_32;
  }

  v8 = 0;
  v9 = 0;
LABEL_21:

  if (v9)
  {
LABEL_22:
    if (v8)
    {
      _barButtonItemByActionType = [(PXPhotosDetailsBarsController *)self _barButtonItemByActionType];
      [_barButtonItemByActionType setObject:v9 forKeyedSubscript:v8];
    }
  }

  if (!v6)
  {
    _barButtonItemCacheByBarItemIdentifier2 = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
    [_barButtonItemCacheByBarItemIdentifier2 setObject:v9 forKeyedSubscript:identifierCopy];
  }

  v6 = v9;
LABEL_27:

  return v6;
}

- (id)_flexibleSpaceBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];

  return v2;
}

- (id)_barButtonItemsForBarItems:(id)items placement:(unint64_t)placement
{
  v22 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (itemsCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([itemsCopy count] == 1)
    {
      v9 = [itemsCopy objectAtIndexedSubscript:0];
      identifier = [v9 identifier];
      v11 = [(PXPhotosDetailsBarsController *)self _barButtonItemForBarItemIdentifier:identifier];

      if (!v11)
      {
        PXAssertGetLog();
      }

      identifier2 = [v9 identifier];
      v13 = [(PXPhotosDetailsBarsController *)self _shouldEnableActionWithBarItemIdentifier:identifier2];

      [v11 setEnabled:v13];
      [array addObject:v11];
      if (placement == 6)
      {
        _flexibleSpaceBarButtonItem = [(PXPhotosDetailsBarsController *)self _flexibleSpaceBarButtonItem];
        [array insertObject:_flexibleSpaceBarButtonItem atIndex:0];

        _flexibleSpaceBarButtonItem2 = [(PXPhotosDetailsBarsController *)self _flexibleSpaceBarButtonItem];
        [array addObject:_flexibleSpaceBarButtonItem2];
      }
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __70__PXPhotosDetailsBarsController__barButtonItemsForBarItems_placement___block_invoke;
      v17[3] = &unk_1E7738818;
      v17[4] = self;
      array = array;
      v18 = array;
      v19 = itemsCopy;
      placementCopy = placement;
      v21 = a2;
      [v19 enumerateObjectsUsingBlock:v17];
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

void __70__PXPhotosDetailsBarsController__barButtonItemsForBarItems_placement___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 identifier];
  v8 = [v6 _barButtonItemForBarItemIdentifier:v7];

  if (!v8)
  {
    PXAssertGetLog();
  }

  v9 = *(a1 + 32);
  v10 = [v5 identifier];
  v11 = [v9 _shouldEnableActionWithBarItemIdentifier:v10];

  [v8 setEnabled:v11];
  [*(a1 + 40) addObject:v8];
  if ([*(a1 + 48) count] - 1 != a3 && *(a1 + 56) == 6)
  {
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) _flexibleSpaceBarButtonItem];
    [v12 addObject:v13];
  }
}

- (id)_localizedSelectionTitle
{
  _viewModel = [(PXPhotosDetailsBarsController *)self _viewModel];
  selectionManager = [_viewModel selectionManager];
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
  v9 = selectedIndexPaths;
  if (photosDataSource && [selectedIndexPaths count] >= 1)
  {
    v10 = [photosDataSource assetsAtIndexPaths:v9];
    PXLocalizedSelectionMessageForAssets(v10);
  }

  v11 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarSelectItemsTitle", @"PhotosUICore");

  return v11;
}

- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy layoutSizeClass] == 1 && objc_msgSend(collectionCopy, "layoutOrientation") == 2;

  return v4;
}

- (void)_setSelectionManager:(id)manager
{
  managerCopy = manager;
  selectionManager = self->__selectionManager;
  if (selectionManager != managerCopy)
  {
    v7 = managerCopy;
    if (selectionManager)
    {
      [(PXSectionedSelectionManager *)selectionManager unregisterChangeObserver:self context:PXSelectionManagerObservationContext_102797];
    }

    objc_storeStrong(&self->__selectionManager, manager);
    [(PXSectionedSelectionManager *)v7 registerChangeObserver:self context:PXSelectionManagerObservationContext_102797];
    managerCopy = v7;
  }
}

- (PXAssetActionManager)_assetActionManager
{
  if (self->_needsUpdateFlags.assetActionManager)
  {
    self->_needsUpdateFlags.assetActionManager = 0;
    createAssetActionManager = [(PXPhotosDetailsBarsController *)self createAssetActionManager];
    assetActionManager = self->__assetActionManager;
    self->__assetActionManager = createAssetActionManager;

    [(PXAssetActionManager *)self->__assetActionManager setPerformerDelegate:self];
  }

  v5 = self->__assetActionManager;

  return v5;
}

- (void)_invalidateAssetActionManager
{
  self->_needsUpdateFlags.assetActionManager = 1;
  _barButtonItemCacheByBarItemIdentifier = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
  [_barButtonItemCacheByBarItemIdentifier removeAllObjects];

  [(PXBarsController *)self invalidateBars];
}

- (PXAssetCollectionActionManager)_assetCollectionActionManager
{
  if (self->_needsUpdateFlags.assetCollectionActionManager)
  {
    self->_needsUpdateFlags.assetCollectionActionManager = 0;
    createAssetCollectionActionManager = [(PXPhotosDetailsBarsController *)self createAssetCollectionActionManager];
    assetCollectionActionManager = self->__assetCollectionActionManager;
    self->__assetCollectionActionManager = createAssetCollectionActionManager;

    [(PXAssetCollectionActionManager *)self->__assetCollectionActionManager setPerformerDelegate:self];
  }

  v5 = self->__assetCollectionActionManager;

  return v5;
}

- (id)_assetCollection
{
  _dataSource = [(PXPhotosDetailsBarsController *)self _dataSource];
  collectionListFetchResult = [_dataSource collectionListFetchResult];
  firstObject = [collectionListFetchResult firstObject];

  return firstObject;
}

- (PXPhotosDetailsBarsController)initWithContext:(id)context viewModel:(id)model extendedTraitCollection:(id)collection
{
  contextCopy = context;
  modelCopy = model;
  collectionCopy = collection;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsBarsController.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"photosDetailsContext"}];
  }

  v27.receiver = self;
  v27.super_class = PXPhotosDetailsBarsController;
  v13 = [(PXBarsController *)&v27 init];
  v14 = v13;
  if (v13)
  {
    v13->_needsUpdateFlags = 257;
    objc_storeStrong(&v13->__context, context);
    photosDataSource = [contextCopy photosDataSource];
    dataSource = v14->__dataSource;
    v14->__dataSource = photosDataSource;

    [(PXPhotosDataSource *)v14->__dataSource registerChangeObserver:v14];
    objc_storeStrong(&v14->__extendedTraitCollection, collection);
    [(PXExtendedTraitCollection *)v14->__extendedTraitCollection registerChangeObserver:v14 context:PXExtendedTraitCollectionObservationContext_102796];
    objc_storeStrong(&v14->__viewModel, model);
    [(PXPhotosDetailsViewModel *)v14->__viewModel registerChangeObserver:v14 context:PXViewModelObservationContext_102795];
    v17 = [[PXPhotosBarButtonItemsController alloc] initWithExtendedTraitCollection:collectionCopy viewModel:0];
    barButtonItemsController = v14->_barButtonItemsController;
    v14->_barButtonItemsController = v17;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    barButtonItemByActionType = v14->__barButtonItemByActionType;
    v14->__barButtonItemByActionType = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    barButtonItemCacheByBarItemIdentifier = v14->__barButtonItemCacheByBarItemIdentifier;
    v14->__barButtonItemCacheByBarItemIdentifier = dictionary2;

    v14->_shouldAddActionButton = 1;
    v23 = objc_alloc_init(off_1E77214F0);
    blockActionManager = v14->_blockActionManager;
    v14->_blockActionManager = v23;

    [(PXPhotosDetailsBarsController *)v14 _setupBlockActionManager];
    [(PXPhotosDetailsBarsController *)v14 _setShowTitleView:1];
  }

  return v14;
}

- (PXPhotosDetailsBarsController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsBarsController.m" lineNumber:101 description:{@"%s is not available as initializer", "-[PXPhotosDetailsBarsController init]"}];

  abort();
}

@end