@interface PXCuratedLibraryBarsController
+ (int64_t)_segmentIndexValueForZoomLevel:(int64_t)a3;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (PXBarAppearance)barAppearance;
- (PXBarsControllerDelegate)delegate;
- (PXCuratedLibraryBarsController)init;
- (PXCuratedLibraryBarsController)initWithCuratedLibraryViewController:(id)a3 viewModel:(id)a4;
- (PXCuratedLibraryFilterToggleButtonController)filterButtonController;
- (PXCuratedLibraryZoomLevelSegmentedControl)zoomLevelSegmentedControl;
- (UIButton)selectModeChevronButton;
- (UILabel)selectModeCaptionLabel;
- (double)actionPerformerBottomPaddingForPresentingToast:(id)a3;
- (id)_contextMenuRegionOfInterestInGridView;
- (id)_createZoomLevelMenuActionWithZoomLevel:(int64_t)a3 isSelected:(BOOL)a4;
- (id)_identifierForActionType:(id)a3;
- (id)_selectionModeIdentifier;
- (id)centerBarButtonItemIdentifiers;
- (id)centerToolbarItemIdentifiers;
- (id)createAssetActionManagerForAssetReference:(id)a3;
- (id)createBarButtonItemForIdentifier:(id)a3 placement:(unint64_t)a4;
- (id)createRepresentativeItemForIdentifier:(id)a3 placement:(unint64_t)a4;
- (id)leadingToolbarItemIdentifiers;
- (id)leftBarButtonItemIdentifiers;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (id)rightBarButtonItemIdentifiers;
- (id)trailingToolbarItemIdentifiers;
- (id)undoManagerForActionPerformer:(id)a3;
- (void)_appIntentsAssetsActionDidFinishNotification:(id)a3;
- (void)_invalidateSelectModeBarButtonItems;
- (void)_setZoomLevelSegmentedControl:(int64_t)a3;
- (void)_updateSelectModeCaption;
- (void)_updateSubtitle;
- (void)_updateTitle;
- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4;
- (void)handleCancelBarButtonItem:(id)a3;
- (void)handleExplicitBackBarButtonItem:(id)a3;
- (void)handleSearchActionWithSearchText:(id)a3 completion:(id)a4;
- (void)handleSelectBarButtonItem:(id)a3;
- (void)handleZoomLevelSegmentedControl:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)swift_initWithCuratedLibraryViewController:(id)a3 viewModel:(id)a4;
- (void)updateBars;
@end

@implementation PXCuratedLibraryBarsController

- (void)swift_initWithCuratedLibraryViewController:(id)a3 viewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A3C8AB44(v6, v7);
}

- (void)_updateTitle
{
  v2 = self;
  sub_1A3C8B9A4();
}

- (void)_updateSubtitle
{
  v2 = self;
  sub_1A3C8C270();
}

- (void)updateBars
{
  v3 = [(PXCuratedLibraryBarsController *)self viewModel];
  v4 = [v3 wantsNavigationBarVisible];
  v5 = [v3 wantsTabBarVisible];
  v6 = [v3 wantsToolbarVisible];
  [v3 lastChromeVisibilityChangeReason];
  v7 = [v3 zoomLevel];
  v8 = [[PXBarAnimationOptions alloc] initWithType:0];
  v9 = [(PXCuratedLibraryBarsController *)self barAppearance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__PXCuratedLibraryBarsController_updateBars__block_invoke;
  v12[3] = &__block_descriptor_35_e34_v16__0___PXMutableBarAppearance__8l;
  v13 = v4;
  v14 = v6;
  v15 = v5;
  [v9 performChangesWithAnimationOptions:v8 changes:v12];

  [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_zoomLevelSegmentedControl setSelectedSegmentIndex:[PXCuratedLibraryBarsController _segmentIndexValueForZoomLevel:v7]];
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryBarsController;
  [(PXBarsController *)&v11 updateBars];
  v10 = [(PXCuratedLibraryBarsController *)self delegate];
  [v10 curatedLibraryBarsControllerDidUpdateBars:self];
}

- (PXBarAppearance)barAppearance
{
  v2 = [(PXBarsController *)self viewController];
  v3 = [v2 px_barAppearance];

  return v3;
}

void __44__PXCuratedLibraryBarsController_updateBars__block_invoke(unsigned __int8 *a1, void *a2)
{
  v3 = a1[32];
  v4 = a2;
  [v4 setPrefersNavigationBarVisible:v3];
  [v4 setPrefersToolbarVisible:a1[33]];
  [v4 setPrefersTabBarVisible:a1[34]];
  v5 = +[PXCuratedLibrarySettings sharedInstance];
  [v4 setPrefersStatusBarVisible:{objc_msgSend(v5, "showStatusBar")}];
}

- (id)leftBarButtonItemIdentifiers
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = +[PXLemonadeSettings sharedInstance];
  if (![v3 enableTabs])
  {
    goto LABEL_7;
  }

  v4 = [(PXBarsController *)self viewController];
  v5 = [v4 traitCollection];
  if ([v5 horizontalSizeClass] != 1)
  {

LABEL_7:
    goto LABEL_8;
  }

  v6 = +[PXCuratedLibrarySettings sharedInstance];
  v7 = [v6 enableTabBarAccessoryControls];

  if (v7)
  {
LABEL_8:
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  v8 = [(PXCuratedLibraryBarsController *)self viewModel];
  v9 = [v8 libraryState];

  v10 = [(PXCuratedLibraryBarsController *)self viewModel];
  if ([v10 zoomLevel] == 1)
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v13 = [(PXCuratedLibraryBarsController *)self viewModel];
    v14 = [v13 isSelecting];
    v11 = MEMORY[0x1E695E0F0];
    if ((v14 & 1) == 0 && (v9 & 2) != 0)
    {
      v15[0] = *off_1E7721E70;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }
  }

LABEL_9:

  return v11;
}

- (id)centerBarButtonItemIdentifiers
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = +[PXLemonadeSettings sharedInstance];
  if (![v3 enableTabs])
  {
    goto LABEL_6;
  }

  v4 = [(PXCuratedLibraryBarsController *)self viewModel];
  if ([v4 isSelecting])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v7 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  v5 = [(PXBarsController *)self viewController];
  v6 = [v5 traitCollection];
  if ([v6 horizontalSizeClass] == 1)
  {

    goto LABEL_5;
  }

  v9 = [(PXBarsController *)self viewController];
  v10 = [v9 splitViewController];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11[0] = *off_1E7721F58;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
LABEL_8:

  return v7;
}

- (id)rightBarButtonItemIdentifiers
{
  v40[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PXCuratedLibraryBarsController *)self viewModel];
  v5 = [v4 zoomLevel];

  if (v5 == 4)
  {
    v6 = [(PXCuratedLibraryBarsController *)self viewModel];
    v7 = [(PXCuratedLibraryBarsController *)self viewModel];
    v8 = [v7 libraryState];

    v9 = [(PXBarsController *)self viewController];
    v10 = [v9 traitCollection];
    if ([v10 horizontalSizeClass] == 1)
    {
      v11 = 1;
    }

    else
    {
      v12 = [(PXBarsController *)self viewController];
      v13 = [v12 splitViewController];
      v11 = v13 == 0;
    }

    v14 = +[PXLemonadeSettings sharedInstance];
    v15 = [v14 enableTabs];

    v16 = [v6 isSelecting];
    if (v15)
    {
      if (v16)
      {
        v17 = *off_1E7721F28;
        v40[0] = *off_1E7721E30;
        v40[1] = v17;
        v40[2] = *off_1E7721F00;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
        [v3 addObjectsFromArray:v18];

        v19 = [(PXCuratedLibraryBarsController *)self filterButtonController];
        LOBYTE(v18) = [v19 shouldHideButton];

        if ((v18 & 1) == 0)
        {
          [v3 addObject:*off_1E7721F20];
        }

        if (v11)
        {
          goto LABEL_31;
        }

        v20 = off_1E7721F38;
        goto LABEL_25;
      }

      v21 = [(PXBarsController *)self viewController];
      v22 = [v21 traitCollection];
      v23 = [v22 userInterfaceIdiom];

      if (v23 == 1 || !v11)
      {
        v25 = *off_1E7721F28;
        v39[0] = *off_1E7721EE0;
        v39[1] = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
        [v3 addObjectsFromArray:v26];
      }

      if ((v8 & 2) != 0)
      {
        [v3 addObject:*off_1E7721EE8];
      }

      v27 = [(PXCuratedLibraryBarsController *)self filterButtonController];
      v28 = [v27 shouldHideButton];

      if (!v28)
      {
        v32 = *off_1E7721F20;
        if (!v11)
        {
          v37[0] = *off_1E7721F28;
          v37[1] = v32;
          v37[2] = *off_1E7721F38;
          v30 = MEMORY[0x1E695DEC8];
          v31 = v37;
          v33 = 3;
          goto LABEL_30;
        }

        v36[0] = *off_1E7721F28;
        v36[1] = v32;
        v30 = MEMORY[0x1E695DEC8];
        v31 = v36;
LABEL_28:
        v33 = 2;
LABEL_30:
        v34 = [v30 arrayWithObjects:v31 count:v33];
        [v3 addObjectsFromArray:v34];

        goto LABEL_31;
      }

      if (!v11)
      {
        v29 = *off_1E7721F38;
        v38[0] = *off_1E7721F28;
        v38[1] = v29;
        v30 = MEMORY[0x1E695DEC8];
        v31 = v38;
        goto LABEL_28;
      }

LABEL_31:

      goto LABEL_32;
    }

    if (v16)
    {
      v20 = off_1E7721E28;
    }

    else
    {
      if ((v8 & 2) == 0)
      {
        goto LABEL_31;
      }

      v20 = off_1E7721EE8;
    }

LABEL_25:
    [v3 addObject:*v20];
    goto LABEL_31;
  }

LABEL_32:

  return v3;
}

- (PXCuratedLibraryFilterToggleButtonController)filterButtonController
{
  filterButtonController = self->_filterButtonController;
  if (!filterButtonController)
  {
    v4 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v4 setCornerStyle:4];
    v5 = [MEMORY[0x1E69DC888] tintColor];
    [v4 setBaseBackgroundColor:v5];

    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down"];
    [v4 setImage:v6];

    v7 = [PXCuratedLibraryFilterToggleButtonController alloc];
    v8 = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
    v9 = [v8 viewProvider];
    v10 = [v9 viewModel];
    v11 = [(PXCuratedLibraryFilterToggleButtonController *)v7 initWithViewModel:v10 buttonConfiguration:v4];
    v12 = self->_filterButtonController;
    self->_filterButtonController = v11;

    filterButtonController = self->_filterButtonController;
  }

  return filterButtonController;
}

- (id)leadingToolbarItemIdentifiers
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1A590D320](self, a2))
  {
    v3 = [(PXCuratedLibraryBarsController *)self viewModel];
    if ([v3 isSelecting])
    {
      v6[0] = *off_1E7721F08;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)centerToolbarItemIdentifiers
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1A590D320](self, a2);
  v4 = [(PXCuratedLibraryBarsController *)self viewModel];
  v5 = [v4 isSelecting];
  if (v3)
  {
    if (v5)
    {
      v14[0] = *off_1E7721EF8;
      v6 = MEMORY[0x1E695DEC8];
      v7 = v14;
      v8 = 1;
LABEL_6:
      v11 = [v6 arrayWithObjects:v7 count:v8];
      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v9 = *off_1E7721F28;
    v13[0] = *off_1E7721F08;
    v13[1] = v9;
    v13[2] = *off_1E7721EF8;
    v13[3] = v9;
    v10 = *off_1E7721E90;
    v13[4] = *off_1E7721F50;
    v13[5] = v10;
    v13[6] = *off_1E7721F00;
    v6 = MEMORY[0x1E695DEC8];
    v7 = v13;
    v8 = 7;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)trailingToolbarItemIdentifiers
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1A590D320](self, a2))
  {
    v3 = [(PXCuratedLibraryBarsController *)self viewModel];
    if ([v3 isSelecting])
    {
      v6[0] = *off_1E7721F50;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXBarsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)handleSearchActionWithSearchText:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = v6;
  if (a3)
  {
    v8 = sub_1A524C674();
    a3 = v9;
    if (v7)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      v7 = sub_1A3F3D4CC;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = self;
  sub_1A4404BD0(v8, a3, v7, v10);
  sub_1A3C784D4(v7, v10);
}

- (void)_setZoomLevelSegmentedControl:(int64_t)a3
{
  v5 = 1;
  if (a3 != 2)
  {
    v5 = 2;
  }

  if (a3 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = [(PXCuratedLibraryBarsController *)self zoomLevelSegmentedControl];
  [v7 setSelectedSegmentIndex:v6];

  v8 = [(PXCuratedLibraryBarsController *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PXCuratedLibraryBarsController__setZoomLevelSegmentedControl___block_invoke;
  v9[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
  v9[4] = a3;
  [v8 performChanges:v9];

  [(PXBarsController *)self invalidateBars];
}

- (id)_createZoomLevelMenuActionWithZoomLevel:(int64_t)a3 isSelected:(BOOL)a4
{
  v4 = a4;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC628];
  v7 = PXCuratedLibraryZoomLevelLocalizedTitle(a3, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PXCuratedLibraryBarsController__createZoomLevelMenuActionWithZoomLevel_isSelected___block_invoke;
  v10[3] = &unk_1E773F798;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v8 = [v6 actionWithTitle:v7 image:0 identifier:0 handler:v10];

  if (v4)
  {
    [v8 setState:1];
  }

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);

  return v8;
}

void __85__PXCuratedLibraryBarsController__createZoomLevelMenuActionWithZoomLevel_isSelected___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setZoomLevelSegmentedControl:*(a1 + 40)];
}

- (void)_invalidateSelectModeBarButtonItems
{
  v8[5] = *MEMORY[0x1E69E9840];
  v3 = [(PXCuratedLibraryBarsController *)self viewModel];
  v4 = [v3 assetActionManager];
  [v4 setPerformerDelegate:self];

  v5 = *off_1E7721F08;
  v8[0] = *off_1E7721F00;
  v8[1] = v5;
  v6 = *off_1E7721EF8;
  v8[2] = *off_1E7721F50;
  v8[3] = v6;
  v8[4] = *off_1E7721F58;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
  [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v7];

  [(PXBarsController *)self invalidateBars];
}

- (id)_contextMenuRegionOfInterestInGridView
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__39757;
  v26 = __Block_byref_object_dispose__39758;
  v27 = 0;
  v3 = [(PXBarsController *)self viewController];
  v4 = [v3 px_oneUpPresentation];
  v5 = [v4 contextMenuInteraction];

  if (v5)
  {
    v6 = [(PXBarsController *)self viewController];
    v7 = [v6 px_oneUpPresentation];
    v8 = [v7 contextMenuInteraction];

    v9 = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
    v10 = [v9 viewProvider];
    v11 = [v10 gridView];

    [v8 locationInView:v11];
    v13 = v12;
    v15 = v14;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__PXCuratedLibraryBarsController__contextMenuRegionOfInterestInGridView__block_invoke;
    v19[3] = &unk_1E7731458;
    v21 = &v22;
    v16 = v11;
    v20 = v16;
    [v16 enumerateCuratedLibraryHitTestResultsAtPoint:v19 usingBlock:{v13, v15}];
  }

  v17 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v17;
}

void __72__PXCuratedLibraryBarsController__contextMenuRegionOfInterestInGridView__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 assetReference];
  if (v5)
  {
    v9 = v5;
    v6 = [*(a1 + 32) regionOfInterestForObjectReference:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = v9;
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (PXCuratedLibraryBarsControllerViewModelObserverContext == a5)
  {
    v9 = v8;
    if ((a4 & 0x400045) != 0)
    {
      [(PXBarsController *)self invalidateBars];
    }

    if (a4)
    {
      [(PXBarsController *)self setWantsAnimatedBarsUpdate:1];
    }

    if ((a4 & 9) != 0)
    {
      [(PXCuratedLibraryBarsController *)self _invalidateSelectModeBarButtonItems];
    }

    if ((a4 & 2) != 0)
    {
      [(PXCuratedLibraryBarsController *)self _updateSelectModeCaption];
    }

    if ((a4 & 0x80000000000) != 0)
    {
      [(PXBarsController *)self invalidateBarButtonItemWithIdentifier:*off_1E7721F38];
    }

    [(PXBarsController *)self updateIfNeeded];
    v8 = v9;
  }
}

- (double)actionPerformerBottomPaddingForPresentingToast:(id)a3
{
  v3 = [(PXCuratedLibraryBarsController *)self viewModel];
  v4 = [v3 styleGuide];

  v5 = 0.0;
  if (([v4 secondaryToolbarPlacement] - 1) <= 1)
  {
    [v4 secondaryToolbarPadding];
    v7 = v6;
    [v4 secondaryToolbarSize];
    v5 = v7 + v8;
  }

  return v5;
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  v4 = [a3 actionType];
  v5 = [(PXCuratedLibraryBarsController *)self _contextMenuRegionOfInterestInGridView];
  if (v5)
  {
    v6 = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
    v7 = [v6 viewProvider];
    v8 = [v7 gridView];

    v9 = [(PXBarsController *)self viewController];
    [v5 rectInCoordinateSpace:v8];
    v10 = [off_1E7721960 popoverPresenterWithViewController:v9 sourceView:v8 sourceRect:?];
  }

  else
  {
    v8 = [(PXCuratedLibraryBarsController *)self _identifierForActionType:v4];
    v9 = [(PXBarsController *)self cachedBarButtonItemForIdentifier:v8];
    v11 = [(PXBarsController *)self viewController];
    v10 = [off_1E7721960 popoverPresenterWithViewController:v11 sourceItem:v9];
  }

  return v10;
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
  if (a4)
  {
    v7 = a4;
    v8 = [v7 popoverPresentationController];
    if (v8)
    {
      v9 = [v6 sender];
      v10 = [v9 conformsToProtocol:&unk_1F1915FF0];

      if (v10)
      {
        v11 = [v6 sender];
        [v8 setSourceItem:v11];
      }

      else
      {
        v11 = [(PXCuratedLibraryBarsController *)self _contextMenuRegionOfInterestInGridView];
        if (v11)
        {
          v12 = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
          v13 = [v12 viewProvider];
          v14 = [v13 gridView];

          [v8 setSourceView:v14];
          [v11 rectInCoordinateSpace:v14];
          [v8 setSourceRect:?];
        }
      }

      v15 = [v8 sourceItem];
      if (!v15)
      {
        v16 = [v8 sourceView];

        if (v16)
        {
          goto LABEL_10;
        }

        v15 = [v6 actionType];
        v19 = [(PXCuratedLibraryBarsController *)self _identifierForActionType:v15];
        v20 = [(PXBarsController *)self cachedBarButtonItemForIdentifier:v19];
        [v8 setSourceItem:v20];
      }
    }

LABEL_10:
    v17 = [(PXBarsController *)self viewController];
    [v17 presentViewController:v7 animated:1 completion:0];
  }

  return a4 != 0;
}

- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  v10 = v6;
  if (a4 == 10)
  {
    [(PXCuratedLibraryBarsController *)self setActiveActionPerformer:v6];
    [(PXCuratedLibraryBarsController *)self setLastActionPerformer:v10];
  }

  else
  {
    v7 = [(PXCuratedLibraryBarsController *)self activeActionPerformer];

    if (v7 == v10)
    {
      [(PXCuratedLibraryBarsController *)self setActiveActionPerformer:0];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 shouldExitSelectModeForState:a4])
    {
      v8 = [(PXCuratedLibraryBarsController *)self lastActionPerformer];

      if (v8 == v10)
      {
        v9 = [(PXCuratedLibraryBarsController *)self viewModel];
        [v9 performChanges:&__block_literal_global_419];
      }
    }
  }
}

- (void)_appIntentsAssetsActionDidFinishNotification:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(PXCuratedLibraryBarsController *)self viewModel];
  if ([v3 isSelecting])
  {
    v4 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = objc_opt_class();
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> received the 'AppIntentsAssetsActionDidFinishNotification': Will dismiss select mode", &v5, 0xCu);
    }

    [v3 performChanges:&__block_literal_global_416];
  }
}

- (void)handleZoomLevelSegmentedControl:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedSegmentIndex];
  v6 = 2;
  v7 = v5 != 1 && v5 != 0;
  if (v5 != 1)
  {
    v6 = v5 == 0;
  }

  v8 = v5 != 2 && v7;
  if (v5 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = v6;
  }

  v10 = [(PXCuratedLibraryBarsController *)self viewModel];
  if (v9 == [v10 zoomLevel])
  {
    v11 = [v4 lastTouchRemainedOnSelectedSegment];

    if (v11)
    {
      v12 = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
      [v12 px_scrollToInitialPositionAnimated:1];
LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
  }

  if (!v8)
  {
    v12 = [(PXCuratedLibraryBarsController *)self viewModel];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__PXCuratedLibraryBarsController_handleZoomLevelSegmentedControl___block_invoke;
    v13[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v13[4] = v9;
    [v12 performChanges:v13];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)handleExplicitBackBarButtonItem:(id)a3
{
  v4 = [(PXCuratedLibraryBarsController *)self viewModel];
  v5 = [v4 zoomLevel];

  if (v5 == 4)
  {
    v6 = 2;
  }

  else
  {
    if (v5 != 2)
    {
      return;
    }

    v6 = 1;
  }

  v7 = [(PXCuratedLibraryBarsController *)self viewModel];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PXCuratedLibraryBarsController_handleExplicitBackBarButtonItem___block_invoke;
  v8[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
  v8[4] = v6;
  [v7 performChanges:v8];
}

- (void)handleCancelBarButtonItem:(id)a3
{
  v3 = [(PXCuratedLibraryBarsController *)self viewModel];
  [v3 performChanges:&__block_literal_global_413];
}

- (void)handleSelectBarButtonItem:(id)a3
{
  v3 = [(PXCuratedLibraryBarsController *)self viewModel];
  [v3 performChanges:&__block_literal_global_39766];
}

- (id)_identifierForActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*off_1E7721B88])
  {
    v4 = off_1E7721F08;
LABEL_6:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:*off_1E7721BF8] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *off_1E7721BE8))
  {
    v4 = off_1E7721F50;
    goto LABEL_6;
  }

  if ([v3 isEqualToString:*off_1E7721A98])
  {
    v4 = off_1E7721F00;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)createBarButtonItemForIdentifier:(id)a3 placement:(unint64_t)a4
{
  v7 = a3;
  v59.receiver = self;
  v59.super_class = PXCuratedLibraryBarsController;
  v8 = [(PXBarsController *)&v59 createBarButtonItemForIdentifier:v7 placement:a4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PXCuratedLibraryBarsController_createBarButtonItemForIdentifier_placement___block_invoke;
  aBlock[3] = &unk_1E7731410;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  if ([v7 isEqualToString:*off_1E7721F28])
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];

    [(PXPhotosPlaceholderSearchBarButtonItem *)v10 setWidth:0.0];
LABEL_5:
    [(PXPhotosPlaceholderSearchBarButtonItem *)v10 setEnabled:1];
LABEL_6:
    v8 = v10;
    goto LABEL_13;
  }

  if ([v7 isEqualToString:*off_1E7721E70])
  {
    v11 = MEMORY[0x1E69DC708];
    v12 = v7;
    v10 = [[v11 alloc] initWithBarButtonSystemItem:101 target:self action:sel_handleExplicitBackBarButtonItem_];

    [(PXPhotosPlaceholderSearchBarButtonItem *)v10 setAccessibilityIdentifier:v12];
    goto LABEL_5;
  }

  if ([v7 isEqualToString:*off_1E7721EE8])
  {
    v13 = sel_handleSelectBarButtonItem_;
LABEL_12:
    v9[2](v9, v8, v13);
    goto LABEL_13;
  }

  if ([v7 isEqualToString:*off_1E7721E28] || objc_msgSend(v7, "isEqualToString:", *off_1E7721E30))
  {
    v13 = sel_handleCancelBarButtonItem_;
    goto LABEL_12;
  }

  if ([v7 isEqualToString:*off_1E7721F08])
  {
    v15 = off_1E7721B88;
    goto LABEL_22;
  }

  if ([v7 isEqualToString:*off_1E7721E10])
  {
    v15 = off_1E7721A18;
    goto LABEL_22;
  }

  if ([v7 isEqualToString:*off_1E7721F50])
  {
    v15 = off_1E7721BF8;
LABEL_22:
    v16 = *v15;
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  if ([v7 isEqualToString:*off_1E7721F38])
  {
    v16 = @"PXCuratedLibraryActionAllPhotosToggleAspectFit";
    v23 = @"PXCuratedLibraryActionAllPhotosToggleAspectFit";
    v24 = [(PXCuratedLibraryBarsController *)self viewModel];
    v25 = [v24 actionManager];
    v19 = [v25 barButtonItemForActionType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"];

    v20 = [(PXCuratedLibraryBarsController *)self viewModel];
    v21 = [v20 actionManager];
    goto LABEL_24;
  }

  if ([v7 isEqualToString:*off_1E7721EC0])
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];

    goto LABEL_6;
  }

  if ([v7 isEqualToString:*off_1E7721EE0])
  {
    objc_initWeak(&location, self);
    v26 = [PXPhotosPlaceholderSearchBarButtonItem alloc];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __77__PXCuratedLibraryBarsController_createBarButtonItemForIdentifier_placement___block_invoke_2;
    v55[3] = &unk_1E774C318;
    objc_copyWeak(&v56, &location);
    v10 = [(PXPhotosPlaceholderSearchBarButtonItem *)v26 initWithAction:v55];

    [(PXPhotosPlaceholderSearchBarButtonItem *)v10 setAccessibilityIdentifier:v7];
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  if ([v7 isEqualToString:*off_1E7721F20])
  {
    v27 = [(PXCuratedLibraryBarsController *)self filterButtonController];
    v28 = [v27 barButtonItem];

LABEL_34:
    v8 = v28;
    goto LABEL_13;
  }

  if ([v7 isEqualToString:*off_1E7721EF8])
  {
    v29 = objc_alloc(MEMORY[0x1E69DC708]);
    v30 = [(PXCuratedLibraryBarsController *)self selectModeCaptionLabel];
    v31 = [v29 initWithCustomView:v30];

    [v31 setEnabled:1];
    [v31 setHidesSharedBackground:1];
    v32 = [(PXCuratedLibraryBarsController *)self viewModel];
    v33 = [v32 photoLibrary];
    v34 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v33];

    if ([v34 hasPreview])
    {
      v54 = v31;
      v35 = [v32 selectionSnapshot];
      v36 = [v35 isAnyItemSelected];

      if (v36)
      {
        v37 = [v32 assetActionManager];
        v38 = *off_1E7721B10;
        v39 = [v37 canPerformActionType:*off_1E7721B10];
        v40 = *off_1E7721B18;
        v41 = [v37 canPerformActionType:*off_1E7721B18];
        if (v39 && v41)
        {
          v42 = *off_1E7721B08;
        }

        else
        {
          if (v39)
          {
            v42 = v38;
          }

          else
          {
            v42 = v40;
          }

          if (((v39 | v41) & 1) == 0)
          {
            v53 = [MEMORY[0x1E696AAA8] currentHandler];
            [v53 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBarsController.m" lineNumber:381 description:@"Code which should be unreachable has been reached"];

            abort();
          }
        }

        v16 = v42;
      }

      else
      {
        v16 = 0;
      }

      v31 = v54;
    }

    else
    {
      v16 = 0;
    }

    v8 = v31;
    if (v16)
    {
LABEL_23:
      v17 = [(PXCuratedLibraryBarsController *)self viewModel];
      v18 = [v17 assetActionManager];
      v19 = [v18 barButtonItemForActionType:v16];

      v20 = [(PXCuratedLibraryBarsController *)self viewModel];
      v21 = [v20 assetActionManager];
LABEL_24:
      v22 = v21;
      [v19 setEnabled:{objc_msgSend(v21, "canPerformActionType:", v16)}];

LABEL_25:
      v8 = v19;
    }
  }

  else
  {
    if ([v7 isEqualToString:*off_1E7721F00])
    {
      v43 = MEMORY[0x1E69DCAB8];
      if (MEMORY[0x1A590D320]())
      {
        v44 = @"ellipsis";
      }

      else
      {
        v44 = @"ellipsis.circle";
      }

      v16 = [v43 systemImageNamed:v44];
      v45 = [(PXCuratedLibraryBarsController *)self delegate];
      v46 = [v45 barsControllerActionsForSelectionContextMenu:self];

      v47 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:v46];
      v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v16 menu:v47];

      v48 = [(PXCuratedLibraryBarsController *)self viewModel];
      v49 = [v48 selectionSnapshot];
      v50 = [v49 selectedIndexPaths];
      [v19 setEnabled:{objc_msgSend(v50, "count") > 0}];

      goto LABEL_25;
    }

    if ([v7 isEqualToString:*off_1E7721F58])
    {
      v51 = objc_alloc(MEMORY[0x1E69DC708]);
      v52 = [(PXCuratedLibraryBarsController *)self zoomLevelSegmentedControl];
      v28 = [v51 initWithCustomView:v52];

      [v28 setEnabled:1];
      [v28 setHidesSharedBackground:1];
      goto LABEL_34;
    }
  }

LABEL_13:

  return v8;
}

void __77__PXCuratedLibraryBarsController_createBarButtonItemForIdentifier_placement___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a2;
    [v5 setTarget:v4];
    [v5 setAction:a3];
  }
}

void __77__PXCuratedLibraryBarsController_createBarButtonItemForIdentifier_placement___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSearchActionWithSearchText:&stru_1F1741150 completion:0];
}

- (id)createRepresentativeItemForIdentifier:(id)a3 placement:(unint64_t)a4
{
  v18[3] = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:{*off_1E7721F58, a4}])
  {
    v5 = [(PXCuratedLibraryBarsController *)self viewModel];
    v6 = -[PXCuratedLibraryBarsController _createZoomLevelMenuActionWithZoomLevel:isSelected:](self, "_createZoomLevelMenuActionWithZoomLevel:isSelected:", 1, [v5 zoomLevel] == 1);
    v7 = [(PXCuratedLibraryBarsController *)self viewModel];
    v8 = -[PXCuratedLibraryBarsController _createZoomLevelMenuActionWithZoomLevel:isSelected:](self, "_createZoomLevelMenuActionWithZoomLevel:isSelected:", 2, [v7 zoomLevel] == 2);
    v18[1] = v8;
    v9 = [(PXCuratedLibraryBarsController *)self viewModel];
    v10 = -[PXCuratedLibraryBarsController _createZoomLevelMenuActionWithZoomLevel:isSelected:](self, "_createZoomLevelMenuActionWithZoomLevel:isSelected:", 4, [v9 zoomLevel] == 4);
    v18[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

    v12 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:32 children:v11];
    v13 = objc_alloc(MEMORY[0x1E69DC708]);
    v14 = [(PXCuratedLibraryBarsController *)self viewModel];
    v15 = PXCuratedLibraryZoomLevelLocalizedTitle([v14 zoomLevel], 0);
    v16 = [v13 initWithTitle:v15 menu:v12];

    [v16 setEnabled:1];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (PXCuratedLibraryZoomLevelSegmentedControl)zoomLevelSegmentedControl
{
  v15 = *MEMORY[0x1E69E9840];
  zoomLevelSegmentedControl = self->_zoomLevelSegmentedControl;
  if (!zoomLevelSegmentedControl)
  {
    v4 = [PXCuratedLibraryZoomLevelSegmentedControl alloc];
    v5 = PXLocalizedStringFromTable(@"PXCuratedLibraryYearsZoomLevelButtonTitle", @"PhotosUICore");
    v12 = v5;
    v6 = PXLocalizedStringFromTable(@"PXCuratedLibraryMonthsZoomLevelButtonTitle", @"PhotosUICore");
    v13 = v6;
    v7 = PXLocalizedStringFromTable(@"PXCuratedLibraryAllPhotosZoomLevelButtonTitle", @"PhotosUICore");
    v14 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:3];
    v9 = [(PXCuratedLibraryZoomLevelSegmentedControl *)v4 initWithItems:v8, v12, v13];

    [(PXCuratedLibraryZoomLevelSegmentedControl *)v9 addTarget:self action:sel_handleZoomLevelSegmentedControl_ forControlEvents:4096];
    [(PXCuratedLibraryZoomLevelSegmentedControl *)v9 _setAlwaysEmitValueChanged:1];
    [(PXCuratedLibraryZoomLevelSegmentedControl *)v9 setSelectedSegmentIndex:2];
    v10 = self->_zoomLevelSegmentedControl;
    self->_zoomLevelSegmentedControl = v9;

    zoomLevelSegmentedControl = self->_zoomLevelSegmentedControl;
  }

  return zoomLevelSegmentedControl;
}

- (UIButton)selectModeChevronButton
{
  selectModeChevronButton = self->_selectModeChevronButton;
  if (!selectModeChevronButton)
  {
    v4 = PXPhotosBarsSelectModeChevronButton(self);
    v5 = self->_selectModeChevronButton;
    self->_selectModeChevronButton = v4;

    [(PXCuratedLibraryBarsController *)self _updateSelectModeCaption];
    selectModeChevronButton = self->_selectModeChevronButton;
  }

  return selectModeChevronButton;
}

- (UILabel)selectModeCaptionLabel
{
  selectModeCaptionLabel = self->_selectModeCaptionLabel;
  if (!selectModeCaptionLabel)
  {
    v4 = PXPhotosBarsCreateSelectModeCaptionLabel();
    v5 = self->_selectModeCaptionLabel;
    self->_selectModeCaptionLabel = v4;

    [(PXCuratedLibraryBarsController *)self _updateSelectModeCaption];
    selectModeCaptionLabel = self->_selectModeCaptionLabel;
  }

  return selectModeCaptionLabel;
}

- (void)_updateSelectModeCaption
{
  v3 = [(PXCuratedLibraryBarsController *)self viewModel];
  v4 = [v3 selectModeCaption];

  PXPhotosBarsUpdateSelectModeCaption(v4, self->_selectModeCaptionLabel, self->_selectModeChevronButton);
}

- (id)_selectionModeIdentifier
{
  v2 = [(PXCuratedLibraryBarsController *)self viewModel];
  v3 = [v2 photoLibrary];
  v4 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v3];

  if ([v4 hasPreview])
  {
    v5 = [v2 libraryFilterState];
    v6 = [v5 viewMode];

    if (v6 != 2)
    {
      goto LABEL_8;
    }
  }

  v7 = [v2 selectionSnapshot];
  if (([v7 isAnyItemSelected] & 1) == 0)
  {

LABEL_8:
    v10 = off_1E7721EF8;
    goto LABEL_9;
  }

  v8 = [off_1E7721810 sharedInstance];
  v9 = [v8 enableMultiSelectMenu];

  v10 = off_1E7721F00;
  if ((v9 & 1) == 0)
  {
    v10 = off_1E7721EF8;
  }

LABEL_9:
  v11 = *v10;
  v12 = *v10;

  return v11;
}

- (id)createAssetActionManagerForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [PXPhotoKitAssetActionManager alloc];
  v6 = [(PXCuratedLibraryBarsController *)self viewModel];
  v7 = [v6 assetsDataSourceManager];
  v8 = [v7 currentPhotoKitAssetsDataSourceManager];
  v9 = [(PXPhotoKitAssetActionManager *)v5 initWithSelectedObjectReference:v4 dataSourceManager:v8];

  [(PXActionManager *)v9 setPerformerDelegate:self];
  v10 = [(PXCuratedLibraryBarsController *)self viewModel];
  v11 = [v10 assetActionManager];
  v12 = [v11 allowedActionTypes];
  [(PXActionManager *)v9 setAllowedActionTypes:v12];

  return v9;
}

- (PXCuratedLibraryBarsController)initWithCuratedLibraryViewController:(id)a3 viewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PXCuratedLibraryBarsController;
  v8 = [(PXBarsController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(PXBarsController *)v8 setViewController:v6];
    objc_storeStrong(&v9->_viewModel, a4);
    [v7 registerChangeObserver:v9 context:PXCuratedLibraryBarsControllerViewModelObserverContext];
    v10 = [v6 navigationItem];
    [v10 px_setBackButtonDisplayMode:2];

    v11 = [v6 navigationItem];
    [v11 setLargeTitleDisplayMode:2];

    v12 = [v7 specManager];
    v13 = [v12 spec];
    [v13 interbuttonSpacing];
    v9->_interbuttonSpacing = v14;

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v9 selector:sel__appIntentsAssetsActionDidFinishNotification_ name:PXAppIntentsAssetsActionDidFinishNotification object:0];

    [(PXCuratedLibraryBarsController *)v9 swift_initWithCuratedLibraryViewController:v6 viewModel:v7];
  }

  return v9;
}

- (PXCuratedLibraryBarsController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBarsController.m" lineNumber:75 description:{@"%s is not available as initializer", "-[PXCuratedLibraryBarsController init]"}];

  abort();
}

+ (int64_t)_segmentIndexValueForZoomLevel:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1A5381838[a3];
  }
}

@end