@interface PXPhotosDetailsBarsController
- (BOOL)_dismissViewControllerIfSafeAnimated:(BOOL)a3;
- (BOOL)_shouldAddBarItemForBarItemIdentifier:(id)a3;
- (BOOL)_shouldEnableActionWithBarItemIdentifier:(id)a3;
- (BOOL)actionMenu:(id)a3 actionPerformer:(id)a4 dismissViewController:(id)a5 completionHandler:(id)a6;
- (BOOL)actionMenu:(id)a3 actionPerformer:(id)a4 presentViewController:(id)a5;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (PXActionPerformer)_lastActionPerformer;
- (PXAssetActionManager)_assetActionManager;
- (PXAssetCollectionActionManager)_assetCollectionActionManager;
- (PXPhotosDetailsBarsController)init;
- (PXPhotosDetailsBarsController)initWithContext:(id)a3 viewModel:(id)a4 extendedTraitCollection:(id)a5;
- (id)_actionMenu;
- (id)_assetCollection;
- (id)_barButtonItemForBarItemIdentifier:(id)a3;
- (id)_barButtonItemsForBarItems:(id)a3 placement:(unint64_t)a4;
- (id)_createActionMenuButton;
- (id)_createActionMenuController;
- (id)_flexibleSpaceBarButtonItem;
- (id)_localizedSelectionTitle;
- (id)_sourceBarButtonItemForActionType:(id)a3;
- (id)createAssetActionManager;
- (id)createAssetCollectionActionManager;
- (id)createTitleView;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (id)undoManagerForActionMenuController:(id)a3;
- (id)undoManagerForActionPerformer:(id)a3;
- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)a3;
- (void)_invalidateAssetActionManager;
- (void)_setSelectionManager:(id)a3;
- (void)_setupBlockActionManager;
- (void)_toggleFaceMode:(id)a3;
- (void)_updateTitleViewAlpha;
- (void)actionMenu:(id)a3 actionPerformer:(id)a4 didChangeState:(unint64_t)a5;
- (void)actionMenu:(id)a3 assetCollectionActionPerformer:(id)a4 playMovieForAssetCollection:(id)a5;
- (void)actionMenuButtonItemTapped:(id)a3;
- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4;
- (void)cancelBarButtonItemTapped:(id)a3;
- (void)doneBarButtonItemTapped:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosDataSource:(id)a3 didChange:(id)a4;
- (void)prepareForPopoverPresentation:(id)a3;
- (void)removeActionButton;
- (void)selectBarButtonItemTapped:(id)a3;
- (void)shouldShowTitleView:(BOOL)a3 animated:(BOOL)a4;
- (void)updateBars;
@end

@implementation PXPhotosDetailsBarsController

- (PXActionPerformer)_lastActionPerformer
{
  WeakRetained = objc_loadWeakRetained(&self->__lastActionPerformer);

  return WeakRetained;
}

- (BOOL)_dismissViewControllerIfSafeAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXBarsController *)self viewController];
  v5 = [v4 navigationController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 visibleViewController];

    if (v7 == v4)
    {
      v8 = [v6 popViewControllerAnimated:v3];
LABEL_7:
      v10 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [v4 presentedViewController];

    if (!v9)
    {
      [v4 dismissViewControllerAnimated:v3 completion:0];
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)undoManagerForActionMenuController:(id)a3
{
  v3 = [(PXBarsController *)self viewController];
  v4 = [v3 undoManager];

  return v4;
}

- (void)actionMenu:(id)a3 assetCollectionActionPerformer:(id)a4 playMovieForAssetCollection:(id)a5
{
  v5 = [(PXBarsController *)self viewController:a3];
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

- (void)actionMenu:(id)a3 actionPerformer:(id)a4 didChangeState:(unint64_t)a5
{
  v7 = a4;
  v8 = [v7 actionType];
  v9 = v8;
  if (a5 == 20)
  {
    if (([v8 isEqualToString:*off_1E7721CF8] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C48) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C68) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C70) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C50) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *off_1E7721C60) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *off_1E7721C58))
    {
      [(PXPhotosDetailsBarsController *)self _dismissViewControllerIfSafeAnimated:1];
    }

    v10 = [v7 actionType];
    v11 = *off_1E7721CC0;
    v12 = [v10 isEqualToString:*off_1E7721CC0];

    if (v12)
    {
      v13 = MEMORY[0x1E695DFA8];
      v14 = [(PXPhotosDetailsBarsController *)self _viewModel];
      v15 = [v14 disabledActionTypes];
      v16 = [v13 setWithSet:v15];

      [v16 addObject:v11];
      v17 = [(PXPhotosDetailsBarsController *)self _viewModel];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __75__PXPhotosDetailsBarsController_actionMenu_actionPerformer_didChangeState___block_invoke;
      v22[3] = &unk_1E773D0E0;
      v23 = v16;
      v18 = v16;
      [v17 performChanges:v22];
    }
  }

  v19 = [(PXBarsController *)self actionPerformerDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [(PXBarsController *)self actionPerformerDelegate];
    [v21 actionPerformer:v7 didChangeState:a5];
  }
}

- (BOOL)actionMenu:(id)a3 actionPerformer:(id)a4 dismissViewController:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v8 = [(PXBarsController *)self viewController];
  v9 = [v8 presentedViewController];

  if (v9)
  {
    [v8 dismissViewControllerAnimated:1 completion:v7];
  }

  return v9 != 0;
}

- (BOOL)actionMenu:(id)a3 actionPerformer:(id)a4 presentViewController:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(PXBarsController *)self viewController];
  if (v9)
  {
    v10 = [v8 popoverPresentationController];
    if (v10)
    {
      v11 = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
      v12 = [v11 objectForKeyedSubscript:*off_1E7721E00];

      if (v12)
      {
        [v10 setBarButtonItem:v12];
      }

      [v10 setDelegate:self];
    }

    v13 = [v7 actionType];
    v14 = [v13 isEqualToString:*off_1E7721D18];

    if (v14)
    {
      [v9 px_presentViewControllerInNavigationController:v8 animated:1 dimissButtonLocation:0 completion:0];
    }

    else
    {
      [v9 presentViewController:v8 animated:1 completion:0];
    }
  }

  return v9 != 0;
}

- (void)prepareForPopoverPresentation:(id)a3
{
  v9 = a3;
  v4 = [v9 presentedViewController];
  v5 = [(PXPhotosDetailsBarsController *)self _activePerformer];
  v6 = [v5 presentedViewController];
  if (v4 == v6)
  {
    v7 = [v5 actionType];

    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = [v5 actionType];
    v6 = [(PXPhotosDetailsBarsController *)self _sourceBarButtonItemForActionType:v8];

    [v9 setBarButtonItem:v6];
  }

LABEL_5:
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  [(PXBarsController *)self viewController];
  if (objc_claimAutoreleasedReturnValue())
  {
    PXPresentationEnvironmentForSender();
  }

  return 0;
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v3 = [(PXBarsController *)self viewController];
  v4 = [v3 undoManager];

  return v4;
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [(PXBarsController *)self viewController];
  v8 = [v7 presentedViewController];

  if (v8)
  {
    [v7 dismissViewControllerAnimated:1 completion:v6];
  }

  return v8 != 0;
}

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXBarsController *)self viewController];
  if (v8)
  {
    v9 = [v7 popoverPresentationController];
    if (v9)
    {
      v10 = [v6 actionType];
      v11 = [(PXPhotosDetailsBarsController *)self _sourceBarButtonItemForActionType:v10];

      if (v11)
      {
        [v9 setBarButtonItem:v11];
      }

      [v9 setDelegate:self];
    }

    [v8 presentViewController:v7 animated:1 completion:0];
  }

  return v8 != 0;
}

- (id)_sourceBarButtonItemForActionType:(id)a3
{
  v4 = a3;
  if (!v4 || (-[PXPhotosDetailsBarsController _barButtonItemByActionType](self, "_barButtonItemByActionType"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:v4], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    if (([v4 isEqualToString:*off_1E7721A98] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *off_1E7721A68) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *off_1E7721BA0))
    {
      v7 = [(PXPhotosDetailsBarsController *)self _sourceBarButtonItemForActionType:*off_1E7721B88];
      if (v7)
      {
        goto LABEL_10;
      }
    }

    if (([v4 isEqualToString:*off_1E7721BE8] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *off_1E7721B50))
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

- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  v15 = v6;
  if (a4 == 10)
  {
    [(PXPhotosDetailsBarsController *)self _setActivePerformer:v6];
    [(PXPhotosDetailsBarsController *)self _setLastActionPerformer:v15];
    goto LABEL_11;
  }

  v7 = [(PXPhotosDetailsBarsController *)self _activePerformer];

  if (v7 == v15)
  {
    [(PXPhotosDetailsBarsController *)self _setActivePerformer:0];
  }

  if (a4 == 30 && [v15 success])
  {
    v8 = [(PXPhotosDetailsBarsController *)self _lastActionPerformer];
    if (v8 != v15)
    {
LABEL_8:

      goto LABEL_11;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [v15 actionType];
      v11 = [v10 isEqual:*off_1E7721BA0];

      if ((v11 & 1) == 0)
      {
        v8 = [(PXPhotosDetailsBarsController *)self _viewModel];
        [v8 performChanges:&__block_literal_global_329];
        goto LABEL_8;
      }
    }
  }

LABEL_11:
  v12 = [(PXBarsController *)self actionPerformerDelegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(PXBarsController *)self actionPerformerDelegate];
    [v14 actionPerformer:v15 didChangeState:a4];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXViewModelObservationContext_102795 == a5)
  {
    v11 = v8;
    if (v6)
    {
      [(PXBarsController *)self invalidateBars];
      [(PXBarsController *)self setWantsAnimatedBarsUpdate:1];
    }

    if ((v6 & 0x12) != 0)
    {
      [(PXBarsController *)self invalidateBars];
    }

    if ((v6 & 4) != 0)
    {
      v9 = [(PXPhotosDetailsBarsController *)self _viewModel];
      v10 = [v9 selectionManager];

      [(PXPhotosDetailsBarsController *)self _setSelectionManager:v10];
      [(PXBarsController *)self invalidateBars];
    }

    goto LABEL_15;
  }

  if (PXExtendedTraitCollectionObservationContext_102796 == a5)
  {
    if ((v6 & 0xA) == 0)
    {
      goto LABEL_16;
    }

    v11 = v8;
    goto LABEL_14;
  }

  if ((v6 & 1) != 0 && PXSelectionManagerObservationContext_102797 == a5)
  {
    v11 = v8;
    [(PXPhotosDetailsBarsController *)self _invalidateAssetActionManager];
LABEL_14:
    [(PXBarsController *)self invalidateBars];
LABEL_15:
    [(PXBarsController *)self updateIfNeeded];
    v8 = v11;
  }

LABEL_16:
}

- (void)photosDataSource:(id)a3 didChange:(id)a4
{
  v8 = [(PXPhotosDetailsBarsController *)self _assetCollection:a3];
  v5 = [(PXPhotosDetailsBarsController *)self _assetCollectionActionManager];
  v6 = [v5 assetCollectionReference];
  v7 = [v6 assetCollection];

  if (v8 != v7)
  {
    [(PXPhotosDetailsBarsController *)self _invalidateAssetCollectionActionManager];
    [(PXBarsController *)self updateIfNeeded];
  }
}

- (void)removeActionButton
{
  [(PXPhotosDetailsBarsController *)self setShouldAddActionButton:0];
  v3 = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
  v4 = *off_1E7721E00;
  v11 = [v3 objectForKeyedSubscript:*off_1E7721E00];

  if (v11)
  {
    v5 = [(PXBarsController *)self viewController];
    v6 = [v5 navigationItem];

    v7 = MEMORY[0x1E695DF70];
    v8 = [v6 rightBarButtonItems];
    v9 = [v7 arrayWithArray:v8];

    [v9 removeObject:v11];
    [v6 setRightBarButtonItems:v9];
    v10 = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
    [v10 removeObjectForKey:v4];
  }
}

- (void)_setupBlockActionManager
{
  objc_initWeak(location, self);
  v3 = [(PXPhotosDetailsBarsController *)self _context];
  v4 = [v3 people];

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
  v7 = PXLocalizedStringForPeople(v4, @"PXPhotosDetailsMenuFaceModeAction");
  [v6 setActionName:v7];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"face.smiling"];
  [v6 setImage:v8];

  v9 = [(PXPhotosDetailsBarsController *)self blockActionManager];
  [v9 registerActionWithConfiguration:v6 forType:@"PXPhotosDetailsShowFaceAction"];

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
  v12 = PXLocalizedStringForPeople(v4, @"PXPhotosDetailsMenuFaceModeAction");
  [v11 setActionName:{v12, v15, v16, v17, v18}];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"face.smiling"];
  [v11 setImage:v13];

  [v11 setSelected:1];
  v14 = [(PXPhotosDetailsBarsController *)self blockActionManager];
  [v14 registerActionWithConfiguration:v11 forType:@"PXPhotosDetailsShowAssetAction"];

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
  v2 = [(PXPhotosDetailsBarsController *)self _createActionMenuController];
  v3 = [v2 actions];
  v4 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:v3];

  return v4;
}

- (id)_createActionMenuController
{
  v3 = [PXPhotoDetailsActionMenuController alloc];
  v4 = [(PXPhotosDetailsBarsController *)self _selectionManager];
  v5 = [(PXPhotosDetailsBarsController *)self _context];
  v6 = [v5 displayTitleInfo];
  v7 = [(PXPhotosDetailsBarsController *)self blockActionManager];
  v8 = [(PXPhotoDetailsActionMenuController *)v3 initWithSelectionManager:v4 displayTitleInfo:v6 blockActionManager:v7];

  v9 = [(PXPhotosDetailsBarsController *)self _context];
  v10 = [v9 people];
  [(PXPhotoDetailsActionMenuController *)v8 setPeople:v10];

  v11 = [(PXPhotosDetailsBarsController *)self _viewModel];
  v12 = [v11 disabledActionTypes];
  [(PXActionMenuController *)v8 setDisabledActionTypes:v12];

  v13 = [(PXPhotosDetailsBarsController *)self _dataSource];
  if ([PXPhotosDetailsHeaderTileWidget canShowMovieHeaderForDataSource:v13])
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

- (void)actionMenuButtonItemTapped:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotosDetailsBarsController *)self _selectionManager];
  v7 = [v6 dataSourceManager];
  v8 = [v7 dataSource];

  if (![v8 numberOfSections])
  {
    PXAssertGetLog();
  }

  v9 = v5;
  if (!v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsBarsController.m" lineNumber:548 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sender", v13}];
LABEL_8:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    v15 = [v9 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsBarsController.m" lineNumber:548 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sender", v13, v15}];

    goto LABEL_8;
  }

LABEL_4:
  v10 = [(PXPhotosDetailsBarsController *)self _actionMenu];
  [v9 setMenu:v10];
}

- (void)_toggleFaceMode:(id)a3
{
  v3 = [(PXPhotosDetailsBarsController *)self _viewModel];
  if (([v3 isFaceModeEnabled] & 1) == 0)
  {
    [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.detailView.showFaces" withPayload:MEMORY[0x1E695E0F8]];
  }

  [v3 performChanges:&__block_literal_global_304];
}

void __49__PXPhotosDetailsBarsController__toggleFaceMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setFaceModeEnabled:{objc_msgSend(v2, "isFaceModeEnabled") ^ 1}];
}

- (void)doneBarButtonItemTapped:(id)a3
{
  v3 = [(PXBarsController *)self viewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelBarButtonItemTapped:(id)a3
{
  v4 = a3;
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

- (void)selectBarButtonItemTapped:(id)a3
{
  v3 = [(PXPhotosDetailsBarsController *)self _viewModel];
  [v3 performChanges:&__block_literal_global_102835];
}

- (void)updateBars
{
  v63[8] = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosDetailsBarsController *)self _titleView];

  if (!v3)
  {
    v4 = [(PXPhotosDetailsBarsController *)self createTitleView];
    titleView = self->__titleView;
    self->__titleView = v4;
  }

  [(PXPhotosDetailsBarsController *)self _updateTitleViewAlpha];
  v6 = [(PXPhotosDetailsBarsController *)self _barButtonItemByActionType];
  [v6 removeAllObjects];

  v7 = [(PXBarsController *)self viewController];
  v8 = [v7 px_barAppearance];
  [(PXPhotosDetailsBarsController *)self _setBarAppearance:v8];

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

  v22 = [(PXBarsController *)self barSpec];
  v23 = [v22 sortedBarItemsByPlacement:v14];

  v24 = [v7 navigationItem];
  v25 = [(PXPhotosDetailsBarsController *)self _viewModel];
  v26 = [v25 isSelecting];

  if (v26)
  {
    v27 = [(PXPhotosDetailsBarsController *)self _localizedSelectionTitle];
    v28 = 0;
  }

  else
  {
    v28 = [(PXPhotosDetailsBarsController *)self _titleView];
    v29 = [v7 px_extendedTraitCollection];
    v50 = [(PXPhotosDetailsBarsController *)self _titleViewVerticalSizeClassForExtendedTraitCollection:v29];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v28;
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
    v56 = v7;
    v57 = v50;
    v32 = v31;
    [v32 performChanges:v54];

    v27 = 0;
  }

  [v24 setTitle:{v27, v27}];
  v48 = v28;
  [v24 setTitleView:v28];
  v33 = [(PXBarsController *)self wantsAnimatedBarsUpdate];
  [v24 px_setBackButtonDisplayMode:2];
  v51 = v7;
  v34 = [v7 title];
  [v24 setBackButtonTitle:v34];

  v35 = [v23 objectForKeyedSubscript:&unk_1F190BFB0];
  v36 = [(PXPhotosDetailsBarsController *)self _barButtonItemsForBarItems:v35 placement:2];
  [v24 setLeftBarButtonItems:v36 animated:v33];

  v37 = [v23 objectForKeyedSubscript:&unk_1F190BFC8];
  v38 = [(PXPhotosDetailsBarsController *)self _barButtonItemsForBarItems:v37 placement:4];
  [v24 setRightBarButtonItems:v38 animated:v33];

  v39 = [(PXPhotosDetailsBarsController *)self _viewModel];
  v40 = [v39 isSelecting];

  [v24 setHidesBackButton:v40 animated:0];
  v49 = v23;
  v41 = [v23 objectForKeyedSubscript:&unk_1F190BFE0];
  v42 = [(PXBarsController *)self viewController];
  v43 = [(PXPhotosDetailsBarsController *)self _barButtonItemsForBarItems:v41 placement:6];
  [v42 setToolbarItems:v43];

  v44 = [(PXPhotosDetailsBarsController *)self _barAppearance];
  if (v33)
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
  [v44 performChangesWithAnimationOptions:v45 changes:v52];
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

  v4 = [(PXPhotosDetailsBarsController *)self _titleView];
  if ([v4 conformsToProtocol:&unk_1F19AE6B0])
  {
    [v4 setSubviewsAlpha:v3];
  }

  else
  {
    [v4 setAlpha:v3];
  }
}

- (void)shouldShowTitleView:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__showTitleView != a3)
  {
    v4 = a4;
    [(PXPhotosDetailsBarsController *)self _setShowTitleView:?];
    if (v4)
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
  v3 = [(PXPhotosDetailsBarsController *)self _assetCollection];
  if (v3)
  {
    v4 = [[PXPhotoKitAssetCollectionActionManager alloc] initWithAssetCollection:v3 displayTitleInfo:0];
  }

  else
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PXPhotosDetailsBarsController *)self _dataSource];
      v7 = [v6 collectionListFetchResult];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Unexpected number of asset collections: %@", &v9, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)createAssetActionManager
{
  v2 = [(PXPhotosDetailsBarsController *)self _selectionManager];
  v3 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v2];

  return v3;
}

- (id)createTitleView
{
  v2 = [PXNavigationTitleView alloc];
  v3 = [(PXNavigationTitleView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (BOOL)_shouldEnableActionWithBarItemIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*off_1E7721F08])
  {
    v5 = off_1E7721B88;
  }

  else if ([v4 isEqualToString:*off_1E7721F00])
  {
    v5 = off_1E7721B90;
  }

  else
  {
    if (![v4 isEqualToString:*off_1E7721F50])
    {
      v7 = 1;
      goto LABEL_8;
    }

    v5 = off_1E7721BF8;
  }

  v6 = [(PXPhotosDetailsBarsController *)self _assetActionManager];
  v7 = [v6 canPerformActionType:*v5];

LABEL_8:
  return v7;
}

- (BOOL)_shouldAddBarItemForBarItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsBarsController *)self _viewModel];
  if ([v5 isSelecting])
  {
    if ([v4 isEqualToString:*off_1E7721F08] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *off_1E7721F00) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *off_1E7721F50))
    {
      v6 = 1;
    }

    else
    {
      v6 = [v4 isEqualToString:*off_1E7721E28];
    }
  }

  else
  {
    if ([v4 isEqualToString:*off_1E7721E60])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v4 isEqualToString:*off_1E7721EE8];
    }

    if ([v4 isEqualToString:*off_1E7721E00])
    {
      v6 |= [(PXPhotosDetailsBarsController *)self shouldAddActionButton];
    }
  }

  return v6 & 1;
}

- (id)_createActionMenuButton
{
  v3 = [(PXPhotosDetailsBarsController *)self barButtonItemsController];
  v4 = [v3 createBarButtonItemWithSystemItem:1 target:self action:0 menuAction:sel_actionMenuButtonItemTapped_ accessibilityIdentifier:*off_1E7721E00];

  return v4;
}

- (id)_barButtonItemForBarItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  if ([v4 isEqualToString:*off_1E7721F08])
  {
    v7 = off_1E7721B88;
  }

  else
  {
    if (![v4 isEqualToString:*off_1E7721F50])
    {
      if (v6)
      {
        v8 = 0;
        goto LABEL_27;
      }

      v13 = v4;
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

  v10 = v4;
  if (v8)
  {
    v11 = v10;
    v12 = [(PXPhotosDetailsBarsController *)self _assetActionManager];
    v9 = [v12 barButtonItemForActionType:v8];

    [v9 setAccessibilityIdentifier:v11];
    goto LABEL_21;
  }

LABEL_12:
  if ([v4 isEqualToString:*off_1E7721EE8])
  {
    v14 = [(PXPhotosDetailsBarsController *)self barButtonItemsController];
    v15 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarSelectButton", @"PhotosUICore");
    v16 = sel_selectBarButtonItemTapped_;
LABEL_18:
    v9 = [v14 createBarButtonItemWithTitle:v15 target:self action:v16 menuAction:0 accessibilityIdentifier:v4];
LABEL_19:

LABEL_20:
    v8 = 0;
    goto LABEL_21;
  }

  if ([v4 isEqualToString:*off_1E7721E60])
  {
    v14 = [(PXPhotosDetailsBarsController *)self barButtonItemsController];
    v15 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarDoneButton", @"PhotosUICore");
    v16 = sel_doneBarButtonItemTapped_;
    goto LABEL_18;
  }

  if ([v4 isEqualToString:*off_1E7721E28])
  {
    v14 = [(PXPhotosDetailsBarsController *)self barButtonItemsController];
    v15 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarCancelButton", @"PhotosUICore");
    v16 = sel_cancelBarButtonItemTapped_;
    goto LABEL_18;
  }

  if ([v4 isEqualToString:*off_1E7721E00])
  {
    v20 = [(PXPhotosDetailsBarsController *)self _createActionMenuButton];
LABEL_32:
    v9 = v20;
    goto LABEL_20;
  }

  if ([v4 isEqualToString:*off_1E7721F00])
  {
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle"];
    v21 = [(PXBarsController *)self delegate];
    v15 = [v21 barsControllerActionsForSelectionContextMenu:self];

    v22 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:v15];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v14 menu:v22];
    [v9 setAccessibilityIdentifier:v4];

    goto LABEL_19;
  }

  if ([v4 isEqualToString:*off_1E7721E90])
  {
    v20 = [MEMORY[0x1E69DC708] fixedSpaceItemOfWidth:8.0];
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
      v17 = [(PXPhotosDetailsBarsController *)self _barButtonItemByActionType];
      [v17 setObject:v9 forKeyedSubscript:v8];
    }
  }

  if (!v6)
  {
    v18 = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
    [v18 setObject:v9 forKeyedSubscript:v4];
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

- (id)_barButtonItemsForBarItems:(id)a3 placement:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    if ([v7 count] == 1)
    {
      v9 = [v7 objectAtIndexedSubscript:0];
      v10 = [v9 identifier];
      v11 = [(PXPhotosDetailsBarsController *)self _barButtonItemForBarItemIdentifier:v10];

      if (!v11)
      {
        PXAssertGetLog();
      }

      v12 = [v9 identifier];
      v13 = [(PXPhotosDetailsBarsController *)self _shouldEnableActionWithBarItemIdentifier:v12];

      [v11 setEnabled:v13];
      [v8 addObject:v11];
      if (a4 == 6)
      {
        v14 = [(PXPhotosDetailsBarsController *)self _flexibleSpaceBarButtonItem];
        [v8 insertObject:v14 atIndex:0];

        v15 = [(PXPhotosDetailsBarsController *)self _flexibleSpaceBarButtonItem];
        [v8 addObject:v15];
      }
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __70__PXPhotosDetailsBarsController__barButtonItemsForBarItems_placement___block_invoke;
      v17[3] = &unk_1E7738818;
      v17[4] = self;
      v8 = v8;
      v18 = v8;
      v19 = v7;
      v20 = a4;
      v21 = a2;
      [v19 enumerateObjectsUsingBlock:v17];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  v2 = [(PXPhotosDetailsBarsController *)self _viewModel];
  v3 = [v2 selectionManager];
  v4 = [v3 selectionSnapshot];

  v5 = [v4 dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 dataSource];
    v7 = [v6 photosDataSource];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 selectedIndexPaths];
  v9 = v8;
  if (v7 && [v8 count] >= 1)
  {
    v10 = [v7 assetsAtIndexPaths:v9];
    PXLocalizedSelectionMessageForAssets(v10);
  }

  v11 = PXLocalizedStringFromTable(@"PXPhotosDetailsBarSelectItemsTitle", @"PhotosUICore");

  return v11;
}

- (int64_t)_titleViewVerticalSizeClassForExtendedTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 layoutSizeClass] == 1 && objc_msgSend(v3, "layoutOrientation") == 2;

  return v4;
}

- (void)_setSelectionManager:(id)a3
{
  v5 = a3;
  selectionManager = self->__selectionManager;
  if (selectionManager != v5)
  {
    v7 = v5;
    if (selectionManager)
    {
      [(PXSectionedSelectionManager *)selectionManager unregisterChangeObserver:self context:PXSelectionManagerObservationContext_102797];
    }

    objc_storeStrong(&self->__selectionManager, a3);
    [(PXSectionedSelectionManager *)v7 registerChangeObserver:self context:PXSelectionManagerObservationContext_102797];
    v5 = v7;
  }
}

- (PXAssetActionManager)_assetActionManager
{
  if (self->_needsUpdateFlags.assetActionManager)
  {
    self->_needsUpdateFlags.assetActionManager = 0;
    v3 = [(PXPhotosDetailsBarsController *)self createAssetActionManager];
    assetActionManager = self->__assetActionManager;
    self->__assetActionManager = v3;

    [(PXAssetActionManager *)self->__assetActionManager setPerformerDelegate:self];
  }

  v5 = self->__assetActionManager;

  return v5;
}

- (void)_invalidateAssetActionManager
{
  self->_needsUpdateFlags.assetActionManager = 1;
  v3 = [(PXPhotosDetailsBarsController *)self _barButtonItemCacheByBarItemIdentifier];
  [v3 removeAllObjects];

  [(PXBarsController *)self invalidateBars];
}

- (PXAssetCollectionActionManager)_assetCollectionActionManager
{
  if (self->_needsUpdateFlags.assetCollectionActionManager)
  {
    self->_needsUpdateFlags.assetCollectionActionManager = 0;
    v3 = [(PXPhotosDetailsBarsController *)self createAssetCollectionActionManager];
    assetCollectionActionManager = self->__assetCollectionActionManager;
    self->__assetCollectionActionManager = v3;

    [(PXAssetCollectionActionManager *)self->__assetCollectionActionManager setPerformerDelegate:self];
  }

  v5 = self->__assetCollectionActionManager;

  return v5;
}

- (id)_assetCollection
{
  v2 = [(PXPhotosDetailsBarsController *)self _dataSource];
  v3 = [v2 collectionListFetchResult];
  v4 = [v3 firstObject];

  return v4;
}

- (PXPhotosDetailsBarsController)initWithContext:(id)a3 viewModel:(id)a4 extendedTraitCollection:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsBarsController.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"photosDetailsContext"}];
  }

  v27.receiver = self;
  v27.super_class = PXPhotosDetailsBarsController;
  v13 = [(PXBarsController *)&v27 init];
  v14 = v13;
  if (v13)
  {
    v13->_needsUpdateFlags = 257;
    objc_storeStrong(&v13->__context, a3);
    v15 = [v10 photosDataSource];
    dataSource = v14->__dataSource;
    v14->__dataSource = v15;

    [(PXPhotosDataSource *)v14->__dataSource registerChangeObserver:v14];
    objc_storeStrong(&v14->__extendedTraitCollection, a5);
    [(PXExtendedTraitCollection *)v14->__extendedTraitCollection registerChangeObserver:v14 context:PXExtendedTraitCollectionObservationContext_102796];
    objc_storeStrong(&v14->__viewModel, a4);
    [(PXPhotosDetailsViewModel *)v14->__viewModel registerChangeObserver:v14 context:PXViewModelObservationContext_102795];
    v17 = [[PXPhotosBarButtonItemsController alloc] initWithExtendedTraitCollection:v12 viewModel:0];
    barButtonItemsController = v14->_barButtonItemsController;
    v14->_barButtonItemsController = v17;

    v19 = [MEMORY[0x1E695DF90] dictionary];
    barButtonItemByActionType = v14->__barButtonItemByActionType;
    v14->__barButtonItemByActionType = v19;

    v21 = [MEMORY[0x1E695DF90] dictionary];
    barButtonItemCacheByBarItemIdentifier = v14->__barButtonItemCacheByBarItemIdentifier;
    v14->__barButtonItemCacheByBarItemIdentifier = v21;

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsBarsController.m" lineNumber:101 description:{@"%s is not available as initializer", "-[PXPhotosDetailsBarsController init]"}];

  abort();
}

@end