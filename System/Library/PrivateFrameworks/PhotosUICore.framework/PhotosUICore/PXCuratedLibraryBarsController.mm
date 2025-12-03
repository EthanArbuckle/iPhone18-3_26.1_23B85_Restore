@interface PXCuratedLibraryBarsController
+ (int64_t)_segmentIndexValueForZoomLevel:(int64_t)level;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (PXBarAppearance)barAppearance;
- (PXBarsControllerDelegate)delegate;
- (PXCuratedLibraryBarsController)init;
- (PXCuratedLibraryBarsController)initWithCuratedLibraryViewController:(id)controller viewModel:(id)model;
- (PXCuratedLibraryFilterToggleButtonController)filterButtonController;
- (PXCuratedLibraryZoomLevelSegmentedControl)zoomLevelSegmentedControl;
- (UIButton)selectModeChevronButton;
- (UILabel)selectModeCaptionLabel;
- (double)actionPerformerBottomPaddingForPresentingToast:(id)toast;
- (id)_contextMenuRegionOfInterestInGridView;
- (id)_createZoomLevelMenuActionWithZoomLevel:(int64_t)level isSelected:(BOOL)selected;
- (id)_identifierForActionType:(id)type;
- (id)_selectionModeIdentifier;
- (id)centerBarButtonItemIdentifiers;
- (id)centerToolbarItemIdentifiers;
- (id)createAssetActionManagerForAssetReference:(id)reference;
- (id)createBarButtonItemForIdentifier:(id)identifier placement:(unint64_t)placement;
- (id)createRepresentativeItemForIdentifier:(id)identifier placement:(unint64_t)placement;
- (id)leadingToolbarItemIdentifiers;
- (id)leftBarButtonItemIdentifiers;
- (id)presentationEnvironmentForActionPerformer:(id)performer;
- (id)rightBarButtonItemIdentifiers;
- (id)trailingToolbarItemIdentifiers;
- (id)undoManagerForActionPerformer:(id)performer;
- (void)_appIntentsAssetsActionDidFinishNotification:(id)notification;
- (void)_invalidateSelectModeBarButtonItems;
- (void)_setZoomLevelSegmentedControl:(int64_t)control;
- (void)_updateSelectModeCaption;
- (void)_updateSubtitle;
- (void)_updateTitle;
- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state;
- (void)handleCancelBarButtonItem:(id)item;
- (void)handleExplicitBackBarButtonItem:(id)item;
- (void)handleSearchActionWithSearchText:(id)text completion:(id)completion;
- (void)handleSelectBarButtonItem:(id)item;
- (void)handleZoomLevelSegmentedControl:(id)control;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)swift_initWithCuratedLibraryViewController:(id)controller viewModel:(id)model;
- (void)updateBars;
@end

@implementation PXCuratedLibraryBarsController

- (void)swift_initWithCuratedLibraryViewController:(id)controller viewModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  selfCopy = self;
  sub_1A3C8AB44(controllerCopy, modelCopy);
}

- (void)_updateTitle
{
  selfCopy = self;
  sub_1A3C8B9A4();
}

- (void)_updateSubtitle
{
  selfCopy = self;
  sub_1A3C8C270();
}

- (void)updateBars
{
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  wantsNavigationBarVisible = [viewModel wantsNavigationBarVisible];
  wantsTabBarVisible = [viewModel wantsTabBarVisible];
  wantsToolbarVisible = [viewModel wantsToolbarVisible];
  [viewModel lastChromeVisibilityChangeReason];
  zoomLevel = [viewModel zoomLevel];
  v8 = [[PXBarAnimationOptions alloc] initWithType:0];
  barAppearance = [(PXCuratedLibraryBarsController *)self barAppearance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__PXCuratedLibraryBarsController_updateBars__block_invoke;
  v12[3] = &__block_descriptor_35_e34_v16__0___PXMutableBarAppearance__8l;
  v13 = wantsNavigationBarVisible;
  v14 = wantsToolbarVisible;
  v15 = wantsTabBarVisible;
  [barAppearance performChangesWithAnimationOptions:v8 changes:v12];

  [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_zoomLevelSegmentedControl setSelectedSegmentIndex:[PXCuratedLibraryBarsController _segmentIndexValueForZoomLevel:zoomLevel]];
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryBarsController;
  [(PXBarsController *)&v11 updateBars];
  delegate = [(PXCuratedLibraryBarsController *)self delegate];
  [delegate curatedLibraryBarsControllerDidUpdateBars:self];
}

- (PXBarAppearance)barAppearance
{
  viewController = [(PXBarsController *)self viewController];
  px_barAppearance = [viewController px_barAppearance];

  return px_barAppearance;
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

  viewController = [(PXBarsController *)self viewController];
  traitCollection = [viewController traitCollection];
  if ([traitCollection horizontalSizeClass] != 1)
  {

LABEL_7:
    goto LABEL_8;
  }

  v6 = +[PXCuratedLibrarySettings sharedInstance];
  enableTabBarAccessoryControls = [v6 enableTabBarAccessoryControls];

  if (enableTabBarAccessoryControls)
  {
LABEL_8:
    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  libraryState = [viewModel libraryState];

  viewModel2 = [(PXCuratedLibraryBarsController *)self viewModel];
  if ([viewModel2 zoomLevel] == 1)
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  else
  {
    viewModel3 = [(PXCuratedLibraryBarsController *)self viewModel];
    isSelecting = [viewModel3 isSelecting];
    v11 = MEMORY[0x1E695E0F0];
    if ((isSelecting & 1) == 0 && (libraryState & 2) != 0)
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

  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  if ([viewModel isSelecting])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v7 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  viewController = [(PXBarsController *)self viewController];
  traitCollection = [viewController traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {

    goto LABEL_5;
  }

  viewController2 = [(PXBarsController *)self viewController];
  splitViewController = [viewController2 splitViewController];

  if (!splitViewController)
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
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (zoomLevel == 4)
  {
    viewModel2 = [(PXCuratedLibraryBarsController *)self viewModel];
    viewModel3 = [(PXCuratedLibraryBarsController *)self viewModel];
    libraryState = [viewModel3 libraryState];

    viewController = [(PXBarsController *)self viewController];
    traitCollection = [viewController traitCollection];
    if ([traitCollection horizontalSizeClass] == 1)
    {
      v11 = 1;
    }

    else
    {
      viewController2 = [(PXBarsController *)self viewController];
      splitViewController = [viewController2 splitViewController];
      v11 = splitViewController == 0;
    }

    v14 = +[PXLemonadeSettings sharedInstance];
    enableTabs = [v14 enableTabs];

    isSelecting = [viewModel2 isSelecting];
    if (enableTabs)
    {
      if (isSelecting)
      {
        v17 = *off_1E7721F28;
        v40[0] = *off_1E7721E30;
        v40[1] = v17;
        v40[2] = *off_1E7721F00;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
        [v3 addObjectsFromArray:v18];

        filterButtonController = [(PXCuratedLibraryBarsController *)self filterButtonController];
        LOBYTE(v18) = [filterButtonController shouldHideButton];

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

      viewController3 = [(PXBarsController *)self viewController];
      traitCollection2 = [viewController3 traitCollection];
      userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

      if (userInterfaceIdiom == 1 || !v11)
      {
        v25 = *off_1E7721F28;
        v39[0] = *off_1E7721EE0;
        v39[1] = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
        [v3 addObjectsFromArray:v26];
      }

      if ((libraryState & 2) != 0)
      {
        [v3 addObject:*off_1E7721EE8];
      }

      filterButtonController2 = [(PXCuratedLibraryBarsController *)self filterButtonController];
      shouldHideButton = [filterButtonController2 shouldHideButton];

      if (!shouldHideButton)
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

    if (isSelecting)
    {
      v20 = off_1E7721E28;
    }

    else
    {
      if ((libraryState & 2) == 0)
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
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setCornerStyle:4];
    tintColor = [MEMORY[0x1E69DC888] tintColor];
    [plainButtonConfiguration setBaseBackgroundColor:tintColor];

    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.arrow.down"];
    [plainButtonConfiguration setImage:v6];

    v7 = [PXCuratedLibraryFilterToggleButtonController alloc];
    curatedLibraryViewController = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
    viewProvider = [curatedLibraryViewController viewProvider];
    viewModel = [viewProvider viewModel];
    v11 = [(PXCuratedLibraryFilterToggleButtonController *)v7 initWithViewModel:viewModel buttonConfiguration:plainButtonConfiguration];
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
    viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
    if ([viewModel isSelecting])
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
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  isSelecting = [viewModel isSelecting];
  if (v3)
  {
    if (isSelecting)
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

  else if (isSelecting)
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
    viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
    if ([viewModel isSelecting])
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

- (void)handleSearchActionWithSearchText:(id)text completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = v6;
  if (text)
  {
    v8 = sub_1A524C674();
    text = v9;
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
  selfCopy = self;
  sub_1A4404BD0(v8, text, v7, v10);
  sub_1A3C784D4(v7, v10);
}

- (void)_setZoomLevelSegmentedControl:(int64_t)control
{
  v5 = 1;
  if (control != 2)
  {
    v5 = 2;
  }

  if (control == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  zoomLevelSegmentedControl = [(PXCuratedLibraryBarsController *)self zoomLevelSegmentedControl];
  [zoomLevelSegmentedControl setSelectedSegmentIndex:v6];

  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PXCuratedLibraryBarsController__setZoomLevelSegmentedControl___block_invoke;
  v9[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
  v9[4] = control;
  [viewModel performChanges:v9];

  [(PXBarsController *)self invalidateBars];
}

- (id)_createZoomLevelMenuActionWithZoomLevel:(int64_t)level isSelected:(BOOL)selected
{
  selectedCopy = selected;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E69DC628];
  v7 = PXCuratedLibraryZoomLevelLocalizedTitle(level, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PXCuratedLibraryBarsController__createZoomLevelMenuActionWithZoomLevel_isSelected___block_invoke;
  v10[3] = &unk_1E773F798;
  objc_copyWeak(v11, &location);
  v11[1] = level;
  v8 = [v6 actionWithTitle:v7 image:0 identifier:0 handler:v10];

  if (selectedCopy)
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
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  assetActionManager = [viewModel assetActionManager];
  [assetActionManager setPerformerDelegate:self];

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
  viewController = [(PXBarsController *)self viewController];
  px_oneUpPresentation = [viewController px_oneUpPresentation];
  contextMenuInteraction = [px_oneUpPresentation contextMenuInteraction];

  if (contextMenuInteraction)
  {
    viewController2 = [(PXBarsController *)self viewController];
    px_oneUpPresentation2 = [viewController2 px_oneUpPresentation];
    contextMenuInteraction2 = [px_oneUpPresentation2 contextMenuInteraction];

    curatedLibraryViewController = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
    viewProvider = [curatedLibraryViewController viewProvider];
    gridView = [viewProvider gridView];

    [contextMenuInteraction2 locationInView:gridView];
    v13 = v12;
    v15 = v14;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __72__PXCuratedLibraryBarsController__contextMenuRegionOfInterestInGridView__block_invoke;
    v19[3] = &unk_1E7731458;
    v21 = &v22;
    v16 = gridView;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXCuratedLibraryBarsControllerViewModelObserverContext == context)
  {
    v9 = observableCopy;
    if ((change & 0x400045) != 0)
    {
      [(PXBarsController *)self invalidateBars];
    }

    if (change)
    {
      [(PXBarsController *)self setWantsAnimatedBarsUpdate:1];
    }

    if ((change & 9) != 0)
    {
      [(PXCuratedLibraryBarsController *)self _invalidateSelectModeBarButtonItems];
    }

    if ((change & 2) != 0)
    {
      [(PXCuratedLibraryBarsController *)self _updateSelectModeCaption];
    }

    if ((change & 0x80000000000) != 0)
    {
      [(PXBarsController *)self invalidateBarButtonItemWithIdentifier:*off_1E7721F38];
    }

    [(PXBarsController *)self updateIfNeeded];
    observableCopy = v9;
  }
}

- (double)actionPerformerBottomPaddingForPresentingToast:(id)toast
{
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  styleGuide = [viewModel styleGuide];

  v5 = 0.0;
  if (([styleGuide secondaryToolbarPlacement] - 1) <= 1)
  {
    [styleGuide secondaryToolbarPadding];
    v7 = v6;
    [styleGuide secondaryToolbarSize];
    v5 = v7 + v8;
  }

  return v5;
}

- (id)presentationEnvironmentForActionPerformer:(id)performer
{
  actionType = [performer actionType];
  _contextMenuRegionOfInterestInGridView = [(PXCuratedLibraryBarsController *)self _contextMenuRegionOfInterestInGridView];
  if (_contextMenuRegionOfInterestInGridView)
  {
    curatedLibraryViewController = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
    viewProvider = [curatedLibraryViewController viewProvider];
    gridView = [viewProvider gridView];

    viewController = [(PXBarsController *)self viewController];
    [_contextMenuRegionOfInterestInGridView rectInCoordinateSpace:gridView];
    v10 = [off_1E7721960 popoverPresenterWithViewController:viewController sourceView:gridView sourceRect:?];
  }

  else
  {
    gridView = [(PXCuratedLibraryBarsController *)self _identifierForActionType:actionType];
    viewController = [(PXBarsController *)self cachedBarButtonItemForIdentifier:gridView];
    viewController2 = [(PXBarsController *)self viewController];
    v10 = [off_1E7721960 popoverPresenterWithViewController:viewController2 sourceItem:viewController];
  }

  return v10;
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
  if (controller)
  {
    controllerCopy = controller;
    popoverPresentationController = [controllerCopy popoverPresentationController];
    if (popoverPresentationController)
    {
      sender = [performerCopy sender];
      v10 = [sender conformsToProtocol:&unk_1F1915FF0];

      if (v10)
      {
        sender2 = [performerCopy sender];
        [popoverPresentationController setSourceItem:sender2];
      }

      else
      {
        sender2 = [(PXCuratedLibraryBarsController *)self _contextMenuRegionOfInterestInGridView];
        if (sender2)
        {
          curatedLibraryViewController = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
          viewProvider = [curatedLibraryViewController viewProvider];
          gridView = [viewProvider gridView];

          [popoverPresentationController setSourceView:gridView];
          [sender2 rectInCoordinateSpace:gridView];
          [popoverPresentationController setSourceRect:?];
        }
      }

      sourceItem = [popoverPresentationController sourceItem];
      if (!sourceItem)
      {
        sourceView = [popoverPresentationController sourceView];

        if (sourceView)
        {
          goto LABEL_10;
        }

        sourceItem = [performerCopy actionType];
        v19 = [(PXCuratedLibraryBarsController *)self _identifierForActionType:sourceItem];
        v20 = [(PXBarsController *)self cachedBarButtonItemForIdentifier:v19];
        [popoverPresentationController setSourceItem:v20];
      }
    }

LABEL_10:
    viewController = [(PXBarsController *)self viewController];
    [viewController presentViewController:controllerCopy animated:1 completion:0];
  }

  return controller != 0;
}

- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  performerCopy = performer;
  v10 = performerCopy;
  if (state == 10)
  {
    [(PXCuratedLibraryBarsController *)self setActiveActionPerformer:performerCopy];
    [(PXCuratedLibraryBarsController *)self setLastActionPerformer:v10];
  }

  else
  {
    activeActionPerformer = [(PXCuratedLibraryBarsController *)self activeActionPerformer];

    if (activeActionPerformer == v10)
    {
      [(PXCuratedLibraryBarsController *)self setActiveActionPerformer:0];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 shouldExitSelectModeForState:state])
    {
      lastActionPerformer = [(PXCuratedLibraryBarsController *)self lastActionPerformer];

      if (lastActionPerformer == v10)
      {
        viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
        [viewModel performChanges:&__block_literal_global_419];
      }
    }
  }
}

- (void)_appIntentsAssetsActionDidFinishNotification:(id)notification
{
  v7 = *MEMORY[0x1E69E9840];
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  if ([viewModel isSelecting])
  {
    v4 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = objc_opt_class();
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> received the 'AppIntentsAssetsActionDidFinishNotification': Will dismiss select mode", &v5, 0xCu);
    }

    [viewModel performChanges:&__block_literal_global_416];
  }
}

- (void)handleZoomLevelSegmentedControl:(id)control
{
  controlCopy = control;
  selectedSegmentIndex = [controlCopy selectedSegmentIndex];
  v6 = 2;
  v7 = selectedSegmentIndex != 1 && selectedSegmentIndex != 0;
  if (selectedSegmentIndex != 1)
  {
    v6 = selectedSegmentIndex == 0;
  }

  v8 = selectedSegmentIndex != 2 && v7;
  if (selectedSegmentIndex == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = v6;
  }

  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  if (v9 == [viewModel zoomLevel])
  {
    lastTouchRemainedOnSelectedSegment = [controlCopy lastTouchRemainedOnSelectedSegment];

    if (lastTouchRemainedOnSelectedSegment)
    {
      curatedLibraryViewController = [(PXCuratedLibraryBarsController *)self curatedLibraryViewController];
      [curatedLibraryViewController px_scrollToInitialPositionAnimated:1];
LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
  }

  if (!v8)
  {
    curatedLibraryViewController = [(PXCuratedLibraryBarsController *)self viewModel];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__PXCuratedLibraryBarsController_handleZoomLevelSegmentedControl___block_invoke;
    v13[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v13[4] = v9;
    [curatedLibraryViewController performChanges:v13];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)handleExplicitBackBarButtonItem:(id)item
{
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (zoomLevel == 4)
  {
    v6 = 2;
  }

  else
  {
    if (zoomLevel != 2)
    {
      return;
    }

    v6 = 1;
  }

  viewModel2 = [(PXCuratedLibraryBarsController *)self viewModel];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PXCuratedLibraryBarsController_handleExplicitBackBarButtonItem___block_invoke;
  v8[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
  v8[4] = v6;
  [viewModel2 performChanges:v8];
}

- (void)handleCancelBarButtonItem:(id)item
{
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_413];
}

- (void)handleSelectBarButtonItem:(id)item
{
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_39766];
}

- (id)_identifierForActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*off_1E7721B88])
  {
    v4 = off_1E7721F08;
LABEL_6:
    v5 = *v4;
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:*off_1E7721BF8] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *off_1E7721BE8))
  {
    v4 = off_1E7721F50;
    goto LABEL_6;
  }

  if ([typeCopy isEqualToString:*off_1E7721A98])
  {
    v4 = off_1E7721F00;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)createBarButtonItemForIdentifier:(id)identifier placement:(unint64_t)placement
{
  identifierCopy = identifier;
  v59.receiver = self;
  v59.super_class = PXCuratedLibraryBarsController;
  v8 = [(PXBarsController *)&v59 createBarButtonItemForIdentifier:identifierCopy placement:placement];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PXCuratedLibraryBarsController_createBarButtonItemForIdentifier_placement___block_invoke;
  aBlock[3] = &unk_1E7731410;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  if ([identifierCopy isEqualToString:*off_1E7721F28])
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];

    [(PXPhotosPlaceholderSearchBarButtonItem *)v10 setWidth:0.0];
LABEL_5:
    [(PXPhotosPlaceholderSearchBarButtonItem *)v10 setEnabled:1];
LABEL_6:
    v8 = v10;
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E70])
  {
    v11 = MEMORY[0x1E69DC708];
    v12 = identifierCopy;
    v10 = [[v11 alloc] initWithBarButtonSystemItem:101 target:self action:sel_handleExplicitBackBarButtonItem_];

    [(PXPhotosPlaceholderSearchBarButtonItem *)v10 setAccessibilityIdentifier:v12];
    goto LABEL_5;
  }

  if ([identifierCopy isEqualToString:*off_1E7721EE8])
  {
    v13 = sel_handleSelectBarButtonItem_;
LABEL_12:
    v9[2](v9, v8, v13);
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E28] || objc_msgSend(identifierCopy, "isEqualToString:", *off_1E7721E30))
  {
    v13 = sel_handleCancelBarButtonItem_;
    goto LABEL_12;
  }

  if ([identifierCopy isEqualToString:*off_1E7721F08])
  {
    v15 = off_1E7721B88;
    goto LABEL_22;
  }

  if ([identifierCopy isEqualToString:*off_1E7721E10])
  {
    v15 = off_1E7721A18;
    goto LABEL_22;
  }

  if ([identifierCopy isEqualToString:*off_1E7721F50])
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

  if ([identifierCopy isEqualToString:*off_1E7721F38])
  {
    v16 = @"PXCuratedLibraryActionAllPhotosToggleAspectFit";
    v23 = @"PXCuratedLibraryActionAllPhotosToggleAspectFit";
    viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
    actionManager = [viewModel actionManager];
    v19 = [actionManager barButtonItemForActionType:@"PXCuratedLibraryActionAllPhotosToggleAspectFit"];

    viewModel2 = [(PXCuratedLibraryBarsController *)self viewModel];
    actionManager2 = [viewModel2 actionManager];
    goto LABEL_24;
  }

  if ([identifierCopy isEqualToString:*off_1E7721EC0])
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];

    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:*off_1E7721EE0])
  {
    objc_initWeak(&location, self);
    v26 = [PXPhotosPlaceholderSearchBarButtonItem alloc];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __77__PXCuratedLibraryBarsController_createBarButtonItemForIdentifier_placement___block_invoke_2;
    v55[3] = &unk_1E774C318;
    objc_copyWeak(&v56, &location);
    v10 = [(PXPhotosPlaceholderSearchBarButtonItem *)v26 initWithAction:v55];

    [(PXPhotosPlaceholderSearchBarButtonItem *)v10 setAccessibilityIdentifier:identifierCopy];
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:*off_1E7721F20])
  {
    filterButtonController = [(PXCuratedLibraryBarsController *)self filterButtonController];
    barButtonItem = [filterButtonController barButtonItem];

LABEL_34:
    v8 = barButtonItem;
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:*off_1E7721EF8])
  {
    v29 = objc_alloc(MEMORY[0x1E69DC708]);
    selectModeCaptionLabel = [(PXCuratedLibraryBarsController *)self selectModeCaptionLabel];
    v31 = [v29 initWithCustomView:selectModeCaptionLabel];

    [v31 setEnabled:1];
    [v31 setHidesSharedBackground:1];
    viewModel3 = [(PXCuratedLibraryBarsController *)self viewModel];
    photoLibrary = [viewModel3 photoLibrary];
    v34 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

    if ([v34 hasPreview])
    {
      v54 = v31;
      selectionSnapshot = [viewModel3 selectionSnapshot];
      isAnyItemSelected = [selectionSnapshot isAnyItemSelected];

      if (isAnyItemSelected)
      {
        assetActionManager = [viewModel3 assetActionManager];
        v38 = *off_1E7721B10;
        v39 = [assetActionManager canPerformActionType:*off_1E7721B10];
        v40 = *off_1E7721B18;
        v41 = [assetActionManager canPerformActionType:*off_1E7721B18];
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
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBarsController.m" lineNumber:381 description:@"Code which should be unreachable has been reached"];

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
      viewModel4 = [(PXCuratedLibraryBarsController *)self viewModel];
      assetActionManager2 = [viewModel4 assetActionManager];
      v19 = [assetActionManager2 barButtonItemForActionType:v16];

      viewModel2 = [(PXCuratedLibraryBarsController *)self viewModel];
      actionManager2 = [viewModel2 assetActionManager];
LABEL_24:
      v22 = actionManager2;
      [v19 setEnabled:{objc_msgSend(actionManager2, "canPerformActionType:", v16)}];

LABEL_25:
      v8 = v19;
    }
  }

  else
  {
    if ([identifierCopy isEqualToString:*off_1E7721F00])
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
      delegate = [(PXCuratedLibraryBarsController *)self delegate];
      v46 = [delegate barsControllerActionsForSelectionContextMenu:self];

      v47 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:v46];
      v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v16 menu:v47];

      viewModel5 = [(PXCuratedLibraryBarsController *)self viewModel];
      selectionSnapshot2 = [viewModel5 selectionSnapshot];
      selectedIndexPaths = [selectionSnapshot2 selectedIndexPaths];
      [v19 setEnabled:{objc_msgSend(selectedIndexPaths, "count") > 0}];

      goto LABEL_25;
    }

    if ([identifierCopy isEqualToString:*off_1E7721F58])
    {
      v51 = objc_alloc(MEMORY[0x1E69DC708]);
      zoomLevelSegmentedControl = [(PXCuratedLibraryBarsController *)self zoomLevelSegmentedControl];
      barButtonItem = [v51 initWithCustomView:zoomLevelSegmentedControl];

      [barButtonItem setEnabled:1];
      [barButtonItem setHidesSharedBackground:1];
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

- (id)createRepresentativeItemForIdentifier:(id)identifier placement:(unint64_t)placement
{
  v18[3] = *MEMORY[0x1E69E9840];
  if ([identifier isEqualToString:{*off_1E7721F58, placement}])
  {
    viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
    v6 = -[PXCuratedLibraryBarsController _createZoomLevelMenuActionWithZoomLevel:isSelected:](self, "_createZoomLevelMenuActionWithZoomLevel:isSelected:", 1, [viewModel zoomLevel] == 1);
    viewModel2 = [(PXCuratedLibraryBarsController *)self viewModel];
    v8 = -[PXCuratedLibraryBarsController _createZoomLevelMenuActionWithZoomLevel:isSelected:](self, "_createZoomLevelMenuActionWithZoomLevel:isSelected:", 2, [viewModel2 zoomLevel] == 2);
    v18[1] = v8;
    viewModel3 = [(PXCuratedLibraryBarsController *)self viewModel];
    v10 = -[PXCuratedLibraryBarsController _createZoomLevelMenuActionWithZoomLevel:isSelected:](self, "_createZoomLevelMenuActionWithZoomLevel:isSelected:", 4, [viewModel3 zoomLevel] == 4);
    v18[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

    v12 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:32 children:v11];
    v13 = objc_alloc(MEMORY[0x1E69DC708]);
    viewModel4 = [(PXCuratedLibraryBarsController *)self viewModel];
    v15 = PXCuratedLibraryZoomLevelLocalizedTitle([viewModel4 zoomLevel], 0);
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
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  selectModeCaption = [viewModel selectModeCaption];

  PXPhotosBarsUpdateSelectModeCaption(selectModeCaption, self->_selectModeCaptionLabel, self->_selectModeChevronButton);
}

- (id)_selectionModeIdentifier
{
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  photoLibrary = [viewModel photoLibrary];
  v4 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

  if ([v4 hasPreview])
  {
    libraryFilterState = [viewModel libraryFilterState];
    viewMode = [libraryFilterState viewMode];

    if (viewMode != 2)
    {
      goto LABEL_8;
    }
  }

  selectionSnapshot = [viewModel selectionSnapshot];
  if (([selectionSnapshot isAnyItemSelected] & 1) == 0)
  {

LABEL_8:
    v10 = off_1E7721EF8;
    goto LABEL_9;
  }

  sharedInstance = [off_1E7721810 sharedInstance];
  enableMultiSelectMenu = [sharedInstance enableMultiSelectMenu];

  v10 = off_1E7721F00;
  if ((enableMultiSelectMenu & 1) == 0)
  {
    v10 = off_1E7721EF8;
  }

LABEL_9:
  v11 = *v10;
  v12 = *v10;

  return v11;
}

- (id)createAssetActionManagerForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = [PXPhotoKitAssetActionManager alloc];
  viewModel = [(PXCuratedLibraryBarsController *)self viewModel];
  assetsDataSourceManager = [viewModel assetsDataSourceManager];
  currentPhotoKitAssetsDataSourceManager = [assetsDataSourceManager currentPhotoKitAssetsDataSourceManager];
  v9 = [(PXPhotoKitAssetActionManager *)v5 initWithSelectedObjectReference:referenceCopy dataSourceManager:currentPhotoKitAssetsDataSourceManager];

  [(PXActionManager *)v9 setPerformerDelegate:self];
  viewModel2 = [(PXCuratedLibraryBarsController *)self viewModel];
  assetActionManager = [viewModel2 assetActionManager];
  allowedActionTypes = [assetActionManager allowedActionTypes];
  [(PXActionManager *)v9 setAllowedActionTypes:allowedActionTypes];

  return v9;
}

- (PXCuratedLibraryBarsController)initWithCuratedLibraryViewController:(id)controller viewModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = PXCuratedLibraryBarsController;
  v8 = [(PXBarsController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    [(PXBarsController *)v8 setViewController:controllerCopy];
    objc_storeStrong(&v9->_viewModel, model);
    [modelCopy registerChangeObserver:v9 context:PXCuratedLibraryBarsControllerViewModelObserverContext];
    navigationItem = [controllerCopy navigationItem];
    [navigationItem px_setBackButtonDisplayMode:2];

    navigationItem2 = [controllerCopy navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:2];

    specManager = [modelCopy specManager];
    spec = [specManager spec];
    [spec interbuttonSpacing];
    v9->_interbuttonSpacing = v14;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__appIntentsAssetsActionDidFinishNotification_ name:PXAppIntentsAssetsActionDidFinishNotification object:0];

    [(PXCuratedLibraryBarsController *)v9 swift_initWithCuratedLibraryViewController:controllerCopy viewModel:modelCopy];
  }

  return v9;
}

- (PXCuratedLibraryBarsController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBarsController.m" lineNumber:75 description:{@"%s is not available as initializer", "-[PXCuratedLibraryBarsController init]"}];

  abort();
}

+ (int64_t)_segmentIndexValueForZoomLevel:(int64_t)level
{
  if (level > 4)
  {
    return 0;
  }

  else
  {
    return qword_1A5381838[level];
  }
}

@end