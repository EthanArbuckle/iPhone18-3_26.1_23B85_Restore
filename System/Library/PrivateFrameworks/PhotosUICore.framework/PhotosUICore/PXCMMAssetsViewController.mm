@interface PXCMMAssetsViewController
- (BOOL)_areAllNotCopiedAssetsSelected;
- (BOOL)_isAssetAlreadyImportedAtIndexPath:(PXSimpleIndexPath *)path;
- (BOOL)_isAssetAlreadyImportedAtIndexPath:(PXSimpleIndexPath *)path withEngineDrivenLayout:(id)layout;
- (BOOL)_shouldShowDefaultOneUpActions;
- (BOOL)_shouldShowProgressBanner;
- (BOOL)_shouldShowStatusPlaceholder;
- (BOOL)engineDrivenLayout:(id)layout shouldShowDimmingOverlayAtIndexPath:(PXSimpleIndexPath *)path;
- (BOOL)engineDrivenLayout:(id)layout shouldShowStatusBadgeAtIndexPath:(PXSimpleIndexPath *)path;
- (BOOL)oneUpPresentation:(id)presentation allowsActionsForContextMenuInteraction:(id)interaction;
- (BOOL)oneUpPresentation:(id)presentation canStartPreviewingForContextMenuInteraction:(id)interaction;
- (BOOL)swipeSelectionManager:(id)manager shouldSelectItemAtIndexPath:(PXSimpleIndexPath *)path;
- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)mode;
- (CGRect)engineDrivenLayout:(id)layout contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio;
- (CGSize)_maximumThumbnailSize;
- (PXActionManager)assetActionManager;
- (PXAssetReference)_focusedAssetReference;
- (PXCMMAssetsViewController)initWithSession:(id)session;
- (PXCMMAssetsViewControllerDelegate)delegate;
- (PXOneUpPresentation)_oneUpPresentation;
- (PXSimpleIndexPath)_assetIndexPathAtLocation:(SEL)location padding:(CGPoint)padding kind:(UIEdgeInsets)kind;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)contentInset;
- (double)_bannerHeightFromReferenceSize:(CGSize)size;
- (double)_headerHeightFromReferenceSize:(CGSize)size insets:(UIEdgeInsets)insets;
- (double)_progressBannerViewLayoutHeight;
- (double)_statusFooterHeightFromReferenceSize:(CGSize)size insets:(UIEdgeInsets)insets;
- (double)engineDrivenLayout:(id)layout aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)path;
- (id)_assetActionManagerWithSelectionManager:(id)manager;
- (id)_assetReferenceAtPoint:(CGPoint)point padding:(UIEdgeInsets)padding;
- (id)_createAddButton;
- (id)_createBannerTileController;
- (id)_createNewLayout;
- (id)_createNewLayoutGeneratorWithReferenceSize:(CGSize)size;
- (id)_createOverlayTileView;
- (id)_createPosterTileController;
- (id)_createSectionHeaderController;
- (id)_createSelectionManagerWithAssetReference:(id)reference;
- (id)_createStatusBadgeTileView;
- (id)_createStatusFooter;
- (id)_createStatusPlaceholderTileView;
- (id)_indexPathsForAssetReferences:(id)references inDataSource:(id)source;
- (id)assetsScene:(id)scene layoutForDataSource:(id)source;
- (id)assetsScene:(id)scene transitionAnimationCoordinatorForChange:(id)change;
- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference;
- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference;
- (id)oneUpPresentationActionManager:(id)manager;
- (id)oneUpPresentationActionManagerForPreviewing:(id)previewing;
- (id)oneUpPresentationDataSourceManager:(id)manager;
- (id)oneUpPresentationImportStatusManager:(id)manager;
- (id)oneUpPresentationMediaProvider:(id)provider;
- (int64_t)_assetImportStateAtIndexPath:(PXSimpleIndexPath *)path withDataSource:(id)source;
- (int64_t)engineDrivenLayout:(id)layout assetStatusAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)oneUpPresentationActionContext:(id)context;
- (unint64_t)_additionalTileCount;
- (void)_configureBannerTile:(id)tile;
- (void)_configureLayout:(id)layout;
- (void)_deselectAllAssets;
- (void)_handleLongPress:(id)press;
- (void)_handleSpaceBar:(id)bar;
- (void)_handleTap:(id)tap;
- (void)_invalidateLayoutGenerator;
- (void)_performInitialSelectionIfNeeded;
- (void)_performTilingChangeWithoutAnimationTransition:(id)transition;
- (void)_scheduleLayout;
- (void)_selectAllAssets;
- (void)_selectCuratedAssets;
- (void)_selectNonCopiedAssets;
- (void)_selectionModeDidChange;
- (void)_setHiddenAssetReferences:(id)references;
- (void)_setLayoutType:(int64_t)type;
- (void)_toggleAssetSelectionAtIndexPath:(PXSimpleIndexPath *)path;
- (void)_transitionLayoutGesture:(id)gesture;
- (void)_updateAssetsScene;
- (void)_updateGestures;
- (void)_updateLayoutEngine;
- (void)_updatePlaceholder;
- (void)_updateProgressBannerViewConstraints;
- (void)_updateProgressBannerViewVisibility;
- (void)_updateSelectionEnabled;
- (void)_updateSelectionIfNeeded;
- (void)_updateStyle;
- (void)addButtonTapped:(id)tapped;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)didTapActionButtonInBannerTileController:(id)controller;
- (void)engineDrivenLayoutReferenceSizeDidChange:(id)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible;
- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references;
- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller;
- (void)progressBannerView:(id)view dismissViewController:(id)controller;
- (void)progressBannerViewLayoutHeightDidChange:(id)change;
- (void)setActionInProgress:(BOOL)progress;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setDelegate:(id)delegate;
- (void)setUserSelectionEnabled:(BOOL)enabled;
- (void)statusController:(id)controller configurationDidChange:(id)change;
- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)mode;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXCMMAssetsViewController

- (PXCMMAssetsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXActionManager)assetActionManager
{
  _focusedAssetReference = [(PXCMMAssetsViewController *)self _focusedAssetReference];
  if (_focusedAssetReference)
  {
    v4 = [(PXCMMAssetsViewController *)self _createSelectionManagerWithAssetReference:_focusedAssetReference];
    v5 = [(PXCMMAssetsViewController *)self _assetActionManagerWithSelectionManager:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIActivityItemsConfigurationReading)activityItemsConfiguration
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  selectionEnabled = [viewModel selectionEnabled];

  if (selectionEnabled)
  {
    boopableItemsProvider = [(PXCMMAssetsViewController *)self boopableItemsProvider];

    if (!boopableItemsProvider)
    {
      v7 = objc_alloc_init(PXBoopableItemsProvider);
      [(PXCMMAssetsViewController *)self setBoopableItemsProvider:v7];

      session2 = [(PXCMMComponentViewController *)self session];
      viewModel2 = [session2 viewModel];
      selectionManager = [viewModel2 selectionManager];
      boopableItemsProvider2 = [(PXCMMAssetsViewController *)self boopableItemsProvider];
      [boopableItemsProvider2 setSelectionManager:selectionManager];

      session3 = [(PXCMMComponentViewController *)self session];
      mediaProvider = [session3 mediaProvider];
      boopableItemsProvider3 = [(PXCMMAssetsViewController *)self boopableItemsProvider];
      [boopableItemsProvider3 setImagePreviewMediaProvider:mediaProvider];
    }

    boopableItemsProvider4 = [(PXCMMAssetsViewController *)self boopableItemsProvider];
  }

  else
  {
    boopableItemsProvider4 = 0;
  }

  return boopableItemsProvider4;
}

- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  if (controllerCopy)
  {
    [(PXCMMAssetsViewController *)self presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [(PXCMMAssetsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didTapActionButtonInBannerTileController:(id)controller
{
  session = [(PXCMMComponentViewController *)self session];
  activityType = [session activityType];

  if (activityType == 2)
  {
    self->_receivingActionButtonWasTapped = 1;
  }

  delegate = [(PXCMMAssetsViewController *)self delegate];
  [delegate assetsViewControllerDidTapActionButton:self];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXCMMViewModelObservationContext_204652 == context)
  {
    v13 = observableCopy;
    if ((changeCopy & 0x600) != 0)
    {
      [(PXCMMAssetsViewController *)self _selectionModeDidChange];
      observableCopy = v13;
    }

    if ((changeCopy & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    [(PXCMMAssetsViewController *)self _updatePlaceholder];
LABEL_13:
    [(PXCMMAssetsViewController *)self _updateProgressBannerViewVisibility];
    goto LABEL_14;
  }

  if (PXMomentShareStatusPresentationObservationContext_204653 == context)
  {
    if ((changeCopy & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    v13 = observableCopy;
    [(PXCMMAssetsViewController *)self _updateSelectionEnabled];
    goto LABEL_13;
  }

  if (PXSpecManagerObservationContext_204654 == context)
  {
    if (changeCopy)
    {
      v13 = observableCopy;
      spec = [(PXFeatureSpecManager *)self->_specManager spec];
      spec = self->_spec;
      self->_spec = spec;

      [(PXCMMAssetsViewController *)self _updateStyle];
      [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
      goto LABEL_14;
    }
  }

  else
  {
    if (PXSelectionManagerObservationContext_204655 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1805 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 2) != 0)
    {
      v13 = observableCopy;
      [(PXCMMAssetsViewController *)self _updateSelectionIfNeeded];
LABEL_14:
      observableCopy = v13;
    }
  }

LABEL_15:
}

- (void)statusController:(id)controller configurationDidChange:(id)change
{
  sceneController = self->_sceneController;
  changeCopy = change;
  viewTileReusePool = [(PXAssetsScene *)sceneController viewTileReusePool];
  v7 = [viewTileReusePool checkOutReusableObjectWithReuseIdentifier:8870950];

  v9 = v7;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  [v8 setConfiguration:changeCopy];
}

- (BOOL)_shouldShowStatusPlaceholder
{
  if (!self->_momentShareStatusPresentationForFooter)
  {
    return 0;
  }

  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  shouldShowPlaceholder = [viewModel shouldShowPlaceholder];

  return shouldShowPlaceholder;
}

- (void)progressBannerView:(id)view dismissViewController:(id)controller
{
  presentingViewController = [controller presentingViewController];

  if (presentingViewController == self)
  {

    [(PXCMMAssetsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)progressBannerViewLayoutHeightDidChange:(id)change
{
  [(PXCMMAssetsViewController *)self _updateProgressBannerViewConstraints];

  [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
}

- (void)_updateProgressBannerViewConstraints
{
  v22[4] = *MEMORY[0x1E69E9840];
  superview = [(PXCMMProgressBannerView *)self->_progressBannerView superview];
  safeAreaLayoutGuide = [superview safeAreaLayoutGuide];
  [(PXCMMProgressBannerView *)self->_progressBannerView layoutHeight];
  v5 = v4;
  topAnchor = [(PXCMMProgressBannerView *)self->_progressBannerView topAnchor];
  bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
  v18 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:-v5];
  v22[0] = v18;
  leadingAnchor = [(PXCMMProgressBannerView *)self->_progressBannerView leadingAnchor];
  leadingAnchor2 = [superview leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[1] = v6;
  trailingAnchor = [(PXCMMProgressBannerView *)self->_progressBannerView trailingAnchor];
  trailingAnchor2 = [superview trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[2] = v9;
  bottomAnchor2 = [(PXCMMProgressBannerView *)self->_progressBannerView bottomAnchor];
  bottomAnchor3 = [superview bottomAnchor];
  v12 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v22[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];

  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_progressBannerViewConstraints];
  progressBannerViewConstraints = self->_progressBannerViewConstraints;
  self->_progressBannerViewConstraints = v13;
  v15 = v13;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_progressBannerViewConstraints];
}

- (void)_updateProgressBannerViewVisibility
{
  _shouldShowProgressBanner = [(PXCMMAssetsViewController *)self _shouldShowProgressBanner];
  if (_shouldShowProgressBanner == [(PXCMMProgressBannerView *)self->_progressBannerView isHidden])
  {
    [(PXCMMProgressBannerView *)self->_progressBannerView setHidden:_shouldShowProgressBanner ^ 1u];

    [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
  }
}

- (double)_progressBannerViewLayoutHeight
{
  if (![(PXCMMAssetsViewController *)self _shouldShowProgressBanner])
  {
    return 0.0;
  }

  progressBannerView = self->_progressBannerView;

  [(PXCMMProgressBannerView *)progressBannerView layoutHeight];
  return result;
}

- (BOOL)_shouldShowProgressBanner
{
  if (self->_momentShareStatusPresentationForFooter && ![(PXCMMAssetsViewController *)self _shouldShowStatusPlaceholder]&& ([(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentationForFooter state]- 1) < 4)
  {
    return 1;
  }

  v3 = +[PXCompleteMyMomentSettings sharedInstance];
  showProgressBannerView = [v3 showProgressBannerView];

  if (showProgressBannerView)
  {
    if (_shouldShowProgressBanner_predicate != -1)
    {
      dispatch_once(&_shouldShowProgressBanner_predicate, &__block_literal_global_552);
    }

    return 1;
  }

  return 0;
}

void __54__PXCMMAssetsViewController__shouldShowProgressBanner__block_invoke()
{
  v0 = PLSharingGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A3C1C000, v0, OS_LOG_TYPE_DEFAULT, "Debug setting forced the progress banner to be visible", v1, 2u);
  }
}

- (int64_t)engineDrivenLayout:(id)layout assetStatusAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSource = [layout dataSource];
  v7 = *&path->item;
  v10[0] = *&path->dataSourceIdentifier;
  v10[1] = v7;
  v8 = [(PXCMMAssetsViewController *)self _assetImportStateAtIndexPath:v10 withDataSource:dataSource];

  if ((v8 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A5382B30[v8 - 1];
  }
}

- (BOOL)engineDrivenLayout:(id)layout shouldShowStatusBadgeAtIndexPath:(PXSimpleIndexPath *)path
{
  layoutCopy = layout;
  session = [(PXCMMComponentViewController *)self session];
  if ([session activityType] == 2)
  {
    dataSource = [layoutCopy dataSource];
    v9 = *&path->item;
    v17[0] = *&path->dataSourceIdentifier;
    v17[1] = v9;
    v10 = [(PXCMMAssetsViewController *)self _assetImportStateAtIndexPath:v17 withDataSource:dataSource];

    session2 = [(PXCMMComponentViewController *)self session];
    viewModel = [session2 viewModel];
    isSelecting = [viewModel isSelecting];

    v14 = 2;
    if (!isSelecting)
    {
      v14 = 3;
    }

    v15 = v10 == v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)engineDrivenLayout:(id)layout shouldShowDimmingOverlayAtIndexPath:(PXSimpleIndexPath *)path
{
  layoutCopy = layout;
  session = [(PXCMMComponentViewController *)self session];
  if ([session activityType] == 2 && (objc_msgSend(session, "viewModel"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isSelecting"), v8, v9))
  {
    dataSource = [layoutCopy dataSource];
    v11 = *&path->item;
    v15[0] = *&path->dataSourceIdentifier;
    v15[1] = v11;
    v12 = [(PXCMMAssetsViewController *)self _assetImportStateAtIndexPath:v15 withDataSource:dataSource];

    v13 = v12 == 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CGRect)engineDrivenLayout:(id)layout contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio
{
  dataSource = [layout dataSource];
  v8 = *&path->item;
  v22[0] = *&path->dataSourceIdentifier;
  v22[1] = v8;
  v9 = [dataSource assetAtItemIndexPath:v22];

  if (objc_opt_respondsToSelector())
  {
    [v9 bestCropRectForAspectRatio:ratio];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *off_1E77221F8;
    v13 = *(off_1E77221F8 + 1);
    v15 = *(off_1E77221F8 + 2);
    v17 = *(off_1E77221F8 + 3);
  }

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)engineDrivenLayout:(id)layout aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSource = [layout dataSource];
  v6 = *&path->item;
  v11[0] = *&path->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [dataSource assetAtItemIndexPath:v11];

  v8 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v7 aspectRatio];
    v8 = v9;
  }

  return v8;
}

- (void)engineDrivenLayoutReferenceSizeDidChange:(id)change
{
  changeCopy = change;
  targetLayout = [(PXTilingController *)self->_tilingController targetLayout];

  v5 = changeCopy;
  if (targetLayout == changeCopy)
  {
    [changeCopy referenceSize];
    v5 = changeCopy;
    if (self->_knownReferenceSize.width != v6 || self->_knownReferenceSize.height != v7)
    {
      self->_knownReferenceSize.width = v6;
      self->_knownReferenceSize.height = v7;
      [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
      v5 = changeCopy;
    }
  }
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  v7 = self->_sceneController;
  v8 = *&identifier->index[5];
  v15 = *&identifier->index[3];
  v16 = v8;
  v17 = *&identifier->index[7];
  v18 = identifier->index[9];
  v9 = *&identifier->index[1];
  v13 = *&identifier->length;
  v14 = v9;
  if ([(PXAssetsScene *)v7 providesTileForIdentifier:&v13])
  {
    v10 = *&identifier->index[5];
    v15 = *&identifier->index[3];
    v16 = v10;
    v17 = *&identifier->index[7];
    v18 = identifier->index[9];
    v11 = *&identifier->index[1];
    v13 = *&identifier->length;
    v14 = v11;
    [(PXUIAssetsScene *)v7 checkInTile:tile withIdentifier:&v13];
  }

  else
  {
    viewTileReusePool = [(PXAssetsScene *)v7 viewTileReusePool];
    [viewTileReusePool checkInReusableObject:tile];

    [(NSMutableSet *)self->_inUseTiles removeObject:tile];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  v8 = self->_sceneController;
  v9 = *&identifier->index[5];
  v26 = *&identifier->index[3];
  v27 = v9;
  v28 = *&identifier->index[7];
  v29 = identifier->index[9];
  v10 = *&identifier->index[1];
  v24 = *&identifier->length;
  v25 = v10;
  if (![(PXAssetsScene *)v8 providesTileForIdentifier:&v24])
  {
    v14 = identifier->index[0];
    if (v14 > 8439979)
    {
      if (v14 > 8439981)
      {
        if (v14 == 8439982)
        {
          viewTileReusePool = [(PXAssetsScene *)v8 viewTileReusePool];
          v16 = viewTileReusePool;
          v17 = 8870948;
        }

        else
        {
          if (v14 != 8439984)
          {
            goto LABEL_25;
          }

          viewTileReusePool = [(PXAssetsScene *)v8 viewTileReusePool];
          v16 = viewTileReusePool;
          v17 = 8870950;
        }
      }

      else
      {
        if (v14 != 8439980)
        {
          viewTileReusePool2 = [(PXAssetsScene *)v8 viewTileReusePool];
          v13 = [viewTileReusePool2 checkOutReusableObjectWithReuseIdentifier:8870947];

          [(PXCMMAssetsViewController *)self _configureBannerTile:v13];
          if (!v13)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        viewTileReusePool = [(PXAssetsScene *)v8 viewTileReusePool];
        v16 = viewTileReusePool;
        v17 = 8870944;
      }
    }

    else if (v14 > 8439962)
    {
      if (v14 == 8439963)
      {
        viewTileReusePool = [(PXAssetsScene *)v8 viewTileReusePool];
        v16 = viewTileReusePool;
        v17 = 8870945;
      }

      else
      {
        if (v14 != 8439964)
        {
          goto LABEL_25;
        }

        viewTileReusePool = [(PXAssetsScene *)v8 viewTileReusePool];
        v16 = viewTileReusePool;
        v17 = 8870946;
      }
    }

    else if (v14 == 8439952)
    {
      viewTileReusePool = [(PXAssetsScene *)v8 viewTileReusePool];
      v16 = viewTileReusePool;
      v17 = 8870942;
    }

    else
    {
      if (v14 != 8439962)
      {
        goto LABEL_25;
      }

      viewTileReusePool = [(PXAssetsScene *)v8 viewTileReusePool];
      v16 = viewTileReusePool;
      v17 = 8870943;
    }

    v13 = [viewTileReusePool checkOutReusableObjectWithReuseIdentifier:v17];

    if (v13)
    {
LABEL_24:
      [(NSMutableSet *)self->_inUseTiles addObject:v13];
      goto LABEL_26;
    }

LABEL_25:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = *&identifier->index[5];
    v26 = *&identifier->index[3];
    v27 = v20;
    v28 = *&identifier->index[7];
    v29 = identifier->index[9];
    v21 = *&identifier->index[1];
    v24 = *&identifier->length;
    v25 = v21;
    v22 = PXTileIdentifierDescription(&v24);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1559 description:{@"%@ couldn't check out tile for identifier:%@, layout:%@", self, v22, layoutCopy}];

    v13 = 0;
    goto LABEL_26;
  }

  v11 = *&identifier->index[5];
  v26 = *&identifier->index[3];
  v27 = v11;
  v28 = *&identifier->index[7];
  v29 = identifier->index[9];
  v12 = *&identifier->index[1];
  v24 = *&identifier->length;
  v25 = v12;
  v13 = [(PXUIAssetsScene *)v8 checkOutTileForIdentifier:&v24 layout:layoutCopy];
  if (!v13)
  {
    goto LABEL_25;
  }

LABEL_26:

  return v13;
}

- (void)_configureBannerTile:(id)tile
{
  tileCopy = tile;
  session = [(PXCMMComponentViewController *)self session];
  sourceType = [session sourceType];
  activityType = [session activityType];
  if (!sourceType && activityType == 1)
  {
    peopleSuggestionsPreviewDataSourceManager = [session peopleSuggestionsPreviewDataSourceManager];
    v8 = peopleSuggestionsPreviewDataSourceManager;
    if (peopleSuggestionsPreviewDataSourceManager)
    {
      peopleSuggestionsDataSourceManager = peopleSuggestionsPreviewDataSourceManager;
    }

    else
    {
      peopleSuggestionsDataSourceManager = [session peopleSuggestionsDataSourceManager];
    }

    v10 = peopleSuggestionsDataSourceManager;

    [tileCopy setPeopleSuggestionsDataSourceManager:v10];
  }
}

- (id)assetsScene:(id)scene transitionAnimationCoordinatorForChange:(id)change
{
  v38 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (self->_layoutAnimationsGloballyDisabled)
  {
    v7 = 0;
  }

  else
  {
    dataSourceManager = [scene dataSourceManager];
    changeHistory = [dataSourceManager changeHistory];
    v7 = [PXAssetsTileTransitionCoordinator transitionCoordinatorForChange:changeCopy changeHistory:changeHistory];

    v10 = +[PXCompleteMyMomentSettings sharedInstance];
    LODWORD(dataSourceManager) = [v10 sectionHeadersShouldFloat];

    if (dataSourceManager)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      invalidationContexts = [changeCopy invalidationContexts];
      v12 = [invalidationContexts countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v33;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v33 != v14)
            {
              objc_enumerationMutation(invalidationContexts);
            }

            v16 = [*(*(&v32 + 1) + 8 * i) tag];
            v17 = [v16 isEqualToString:@"PXCMMSectionHeaderTileGroupInvalidation"];

            if (v17)
            {

              [v7 disableAnimationsForTileKind:8439963];
              goto LABEL_14;
            }
          }

          v13 = [invalidationContexts countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_14:
    v18 = +[PXCompleteMyMomentSettings sharedInstance];
    showFloatingBanner = [v18 showFloatingBanner];

    if (showFloatingBanner)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      invalidationContexts2 = [changeCopy invalidationContexts];
      v21 = [invalidationContexts2 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        while (2)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(invalidationContexts2);
            }

            v25 = [*(*(&v28 + 1) + 8 * j) tag];
            v26 = [v25 isEqualToString:@"PXCMMBannerTileGroupInvalidationTag"];

            if (v26)
            {

              [v7 disableAnimationsForTileKind:8439981];
              goto LABEL_25;
            }
          }

          v22 = [invalidationContexts2 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_25:
    [v7 disableAnimationsForTileKind:8439964];
  }

  return v7;
}

- (id)assetsScene:(id)scene layoutForDataSource:(id)source
{
  sourceCopy = source;
  [(PXCMMAssetsViewController *)self _updateLayoutEngine];
  dataSourceSnapshot = [(PXSectionedLayoutEngine *)self->_layoutEngine dataSourceSnapshot];
  identifier = [dataSourceSnapshot identifier];

  session = [(PXCMMComponentViewController *)self session];
  dataSourceManager = [session dataSourceManager];
  changeHistory = [dataSourceManager changeHistory];
  v11 = [changeHistory changeDetailsFromDataSourceIdentifier:identifier toDataSourceIdentifier:{objc_msgSend(sourceCopy, "identifier")}];

  if ([v11 count] == 1)
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  layoutEngine = self->_layoutEngine;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __61__PXCMMAssetsViewController_assetsScene_layoutForDataSource___block_invoke;
  v22 = &unk_1E77440B8;
  v23 = sourceCopy;
  v24 = firstObject;
  v14 = firstObject;
  v15 = sourceCopy;
  v16 = [(PXSectionedLayoutEngine *)layoutEngine performChangesAndWait:&v19];
  v17 = [(PXCMMAssetsViewController *)self _createNewLayout:v19];

  return v17;
}

- (void)_updateLayoutEngine
{
  [(PXCMMSpec *)self->_spec reviewContentInsets];
  [(PXCMMSpec *)self->_spec reviewSafeAreaInsets];
  PXEdgeInsetsAdd();
}

- (double)_statusFooterHeightFromReferenceSize:(CGSize)size insets:(UIEdgeInsets)insets
{
  if (self->_momentShareStatusPresentationForFooter && ![(PXCMMAssetsViewController *)self _shouldShowStatusPlaceholder])
  {
    if (!self->_measuringStatusFooterView)
    {
      v5 = [PXPhotosGlobalFooterView alloc];
      v6 = [(PXPhotosGlobalFooterView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      measuringStatusFooterView = self->_measuringStatusFooterView;
      self->_measuringStatusFooterView = v6;

      [(PXPhotosGlobalFooterView *)self->_measuringStatusFooterView setViewModel:self->_statusFooterViewModel];
    }

    PXEdgeInsetsInsetSize();
  }

  return 0.0;
}

- (double)_bannerHeightFromReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = +[PXCompleteMyMomentSettings sharedInstance];
  showFloatingBanner = [v6 showFloatingBanner];

  v8 = 0.0;
  if (showFloatingBanner)
  {
    momentShareStatusPresentationForPoster = self->_momentShareStatusPresentationForPoster;
    if (!momentShareStatusPresentationForPoster || (v10 = [(PXMomentShareStatusPresentation *)momentShareStatusPresentationForPoster type]) != 0 && (v10 != 1 || ([(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentationForPoster state]& 0xFFFFFFFFFFFFFFFDLL) != 4 && ![(PXCMMAssetsViewController *)self _shouldShowStatusPlaceholder]))
    {
      session = [(PXCMMComponentViewController *)self session];
      measuringBannerTile = self->_measuringBannerTile;
      if (!measuringBannerTile)
      {
        v13 = [PXCMMBannerTileController alloc];
        activityType = [session activityType];
        sourceType = [session sourceType];
        viewModel = [session viewModel];
        v17 = self->_momentShareStatusPresentationForPoster;
        importStatusManager = [session importStatusManager];
        v19 = [(PXCMMBannerTileController *)v13 initWithActivityType:activityType sourceType:sourceType viewModel:viewModel momentShareStatusPresentation:v17 importStatusManager:importStatusManager];
        v20 = self->_measuringBannerTile;
        self->_measuringBannerTile = v19;

        [(PXCMMAssetsViewController *)self _configureBannerTile:self->_measuringBannerTile];
        measuringBannerTile = self->_measuringBannerTile;
      }

      view = [(PXCMMBannerTileController *)measuringBannerTile view];
      [view sizeThatFits:{width, height}];
      v8 = v22;
    }
  }

  return v8;
}

- (double)_headerHeightFromReferenceSize:(CGSize)size insets:(UIEdgeInsets)insets
{
  v4 = +[PXCompleteMyMomentSettings sharedInstance];
  showAttachedHeaderView = [v4 showAttachedHeaderView];

  if (showAttachedHeaderView)
  {
    PXEdgeInsetsInsetSize();
  }

  return 0.0;
}

- (id)_createNewLayoutGeneratorWithReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = +[PXCompleteMyMomentSettings sharedInstance];
  if ([v6 showSectionHeaders])
  {
    _shouldShowStatusPlaceholder = [(PXCMMAssetsViewController *)self _shouldShowStatusPlaceholder];

    v8 = 0.0;
    if (!_shouldShowStatusPlaceholder)
    {
      [(PXCMMSpec *)self->_spec reviewSectionHeaderHeight];
      v8 = v9;
    }
  }

  else
  {

    v8 = 0.0;
  }

  _layoutType = [(PXCMMAssetsViewController *)self _layoutType];
  _additionalTileCount = [(PXCMMAssetsViewController *)self _additionalTileCount];
  [(PXCMMSpec *)self->_spec reviewGridItemSize];
  v13 = v12;
  v15 = v14;
  [(PXCMMSpec *)self->_spec reviewGridInterItemSpacing];
  v17 = v16;
  v19 = v18;
  [(PXCMMSpec *)self->_spec reviewGridContentInsets];
  return [PXCMMLayoutGenerator layoutGeneratorForLayoutType:_layoutType withReferenceSize:_additionalTileCount additionalTileCount:width headerHeight:height itemSize:v8 interItemSpacing:v13 contentInsets:v15, v17, v19, v20, v21, v22, v23];
}

- (void)_configureLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [layoutCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1290 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v16, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1290 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v16}];
  }

LABEL_3:
  [layoutCopy setPlaceholderMode:{-[PXCMMAssetsViewController _shouldShowStatusPlaceholder](self, "_shouldShowStatusPlaceholder")}];
  [layoutCopy setContentMode:{-[PXCMMSpec reviewGridContentMode](self->_spec, "reviewGridContentMode")}];
  if (self->_userSelectionEnabled)
  {
    v5 = 1025;
  }

  else
  {
    v5 = 0;
  }

  [layoutCopy setSelectionBadgeOptions:v5];
  [layoutCopy setBadgeOptions:3];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [layoutCopy setHasFloatingBanner:!IsAccessibilityCategory];
  v9 = +[PXCompleteMyMomentSettings sharedInstance];
  [layoutCopy setHasFloatingSectionHeaders:{objc_msgSend(v9, "sectionHeadersShouldFloat")}];

  [(PXCMMSpec *)self->_spec reviewContentInsets];
  [layoutCopy setHeaderFooterSideInset:v10];
  [(PXCMMSpec *)self->_spec reviewHeaderTopInset];
  [layoutCopy setHeaderTopInset:?];
  [(PXCMMSpec *)self->_spec reviewFooterBottomInset];
  [layoutCopy setFooterBottomInset:?];
  [(PXCMMAssetsViewController *)self _progressBannerViewLayoutHeight];
  [(PXCMMSpec *)self->_spec reviewSafeAreaInsets];
  [layoutCopy setReviewSafeAreaInsets:?];
  _hiddenAssetReferences = [(PXCMMAssetsViewController *)self _hiddenAssetReferences];
  dataSource = [layoutCopy dataSource];
  v13 = [(PXCMMAssetsViewController *)self _indexPathsForAssetReferences:_hiddenAssetReferences inDataSource:dataSource];

  [layoutCopy setHiddenIndexPaths:v13];
}

- (id)_createNewLayout
{
  [(PXSectionedLayoutEngine *)self->_layoutEngine layoutSnapshot];
  if (!objc_claimAutoreleasedReturnValue())
  {
    targetLayout = [(PXTilingController *)self->_tilingController targetLayout];
    layoutSnapshot = [targetLayout layoutSnapshot];

    if (!layoutSnapshot)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1266 description:@"The layout engine should always return a layoutSnapshot."];
    }
  }

  [(PXCMMSpec *)self->_spec reviewContentInsets];
  [(PXCMMSpec *)self->_spec reviewSafeAreaInsets];
  PXEdgeInsetsAdd();
}

- (void)_invalidateLayoutGenerator
{
  layoutGenerator = self->_layoutGenerator;
  self->_layoutGenerator = 0;

  layoutEngine = self->_layoutEngine;
  self->_layoutEngine = 0;

  updater = self->_updater;

  [(PXUpdater *)updater setNeedsUpdateOf:sel__updateLayoutEngine];
}

- (unint64_t)_additionalTileCount
{
  delegate = +[PXCompleteMyMomentSettings sharedInstance];
  if ([delegate shouldShowInlineAddButton])
  {
    _layoutType = [(PXCMMAssetsViewController *)self _layoutType];

    if (_layoutType == 1 || !self->_delegateRespondsTo.shouldShowAddMoreButton)
    {
      return 0;
    }

    delegate = [(PXCMMAssetsViewController *)self delegate];
    v5 = [delegate shouldShowAddMoreButtonForAssetsViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_performTilingChangeWithoutAnimationTransition:(id)transition
{
  layoutAnimationsGloballyDisabled = self->_layoutAnimationsGloballyDisabled;
  self->_layoutAnimationsGloballyDisabled = 1;
  (*(transition + 2))(transition, a2);
  [(PXUIScrollViewController *)self->_scrollViewController updateIfNeeded];
  self->_layoutAnimationsGloballyDisabled = layoutAnimationsGloballyDisabled;
}

- (void)_setLayoutType:(int64_t)type
{
  if (self->__layoutType != type)
  {
    self->__layoutType = type;
    [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
  }
}

- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references
{
  v24 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  session = [(PXCMMComponentViewController *)self session];
  dataSourceManager = [session dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  v9 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(referencesCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = referencesCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [dataSource assetReferenceForAssetReference:*(*(&v19 + 1) + 8 * v14)];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__PXCMMAssetsViewController_oneUpPresentation_setHiddenAssetReferences___block_invoke;
  v17[3] = &unk_1E774C620;
  v17[4] = self;
  v18 = v9;
  v16 = v9;
  [(PXCMMAssetsViewController *)self _performTilingChangeWithoutAnimationTransition:v17];
}

- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference
{
  referenceCopy = reference;
  [(PXUIScrollViewController *)self->_scrollViewController updateIfNeeded];
  currentLayout = [(PXTilingController *)self->_tilingController currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentLayout2 = [(PXTilingController *)self->_tilingController currentLayout];
  }

  else
  {
    currentLayout2 = 0;
  }

  memset(v22, 0, sizeof(v22));
  dataSource = [currentLayout2 dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:referenceCopy];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  if (*&v22[0] == *off_1E7721F68)
  {
    image = 0;
  }

  else
  {
    tilingController = self->_tilingController;
    v20 = 0;
    v21 = 0;
    v14 = xmmword_1A5380D20;
    v15 = *&v22[0];
    v16 = *(v22 + 8);
    v17 = *(&v22[1] + 1);
    v18 = 0u;
    v19 = 0u;
    image = 0;
    if ([(PXTilingController *)tilingController getTile:&v21 geometry:0 group:0 userData:0 forTileWithIdentifier:&v14])
    {
      v12 = v21;
      if ([v12 conformsToProtocol:&unk_1F1A50488])
      {
        image = [v12 image];
      }

      else
      {
        image = 0;
      }
    }
  }

  return image;
}

- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible
{
  visibleCopy = visible;
  [(PXUIScrollViewController *)self->_scrollViewController updateIfNeeded];
  currentLayout = [(PXTilingController *)self->_tilingController currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentLayout2 = [(PXTilingController *)self->_tilingController currentLayout];
  }

  else
  {
    currentLayout2 = 0;
  }

  memset(v18, 0, sizeof(v18));
  dataSource = [currentLayout2 dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:visibleCopy];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  if (*&v18[0] != *off_1E7721F68)
  {
    memset(v17, 0, sizeof(v17));
    v10 = xmmword_1A5380D20;
    v11 = *&v18[0];
    v12 = *(v18 + 8);
    v13 = *(&v18[1] + 1);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    if ([currentLayout2 getGeometry:v17 group:0 userData:0 forTileWithIdentifier:&v10])
    {
      [(PXUIScrollViewController *)self->_scrollViewController scrollView];
      [objc_claimAutoreleasedReturnValue() bounds];
      [(PXUIScrollViewController *)self->_scrollViewController contentInset];
      PXEdgeInsetsInsetRect();
    }
  }
}

- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference
{
  referenceCopy = reference;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  session = [(PXCMMComponentViewController *)self session];
  dataSourceManager = [session dataSourceManager];

  [(PXUIScrollViewController *)self->_scrollViewController updateIfNeeded];
  v69 = 0u;
  v70 = 0u;
  dataSource = [dataSourceManager dataSource];
  v13 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:referenceCopy];
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  v14 = *off_1E77221F8;
  v15 = *(off_1E77221F8 + 1);
  v16 = *(off_1E77221F8 + 2);
  v17 = *(off_1E77221F8 + 3);

  v18 = v69;
  if (v69 != *off_1E7721F68)
  {
    v19 = *(&v69 + 1);
    v20 = v70;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    tilingController = self->_tilingController;
    v45 = xmmword_1A5380D20;
    v46 = v69;
    v47 = v70;
    v48 = 0u;
    v49 = 0u;
    *&v50 = 0;
    if ([(PXTilingController *)tilingController getTile:0 geometry:&v57 group:0 userData:0 forTileWithIdentifier:&v45])
    {
      v7 = *(&v57 + 1);
      v6 = *&v57;
      v9 = *(&v58 + 1);
      v8 = *&v58;
      v14 = *(&v66 + 1);
      v16 = *(&v67 + 1);
      v15 = *&v67;
      v17 = *&v68;
    }

    v72.origin.x = v6;
    v72.origin.y = v7;
    v72.size.width = v8;
    v72.size.height = v9;
    if (CGRectIsNull(v72))
    {
      v37 = referenceCopy;
      currentLayout = [(PXAssetsScene *)self->_sceneController currentLayout];
      v23 = v69;
      dataSource2 = [currentLayout dataSource];
      identifier = [dataSource2 identifier];

      if (v23 == identifier)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v38 = xmmword_1A5380D20;
        v39 = v18;
        v40 = v19;
        v41 = v20;
        v42 = 0u;
        v43 = 0u;
        v44 = 0;
        if ([currentLayout getGeometry:&v45 group:0 userData:0 forTileWithIdentifier:&v38])
        {
          v26 = +[PXTilingCoordinateSpaceConverter defaultConverter];
          coordinateSpaceIdentifier = [currentLayout coordinateSpaceIdentifier];
          contentCoordinateSpaceIdentifier = [(PXTilingController *)self->_tilingController contentCoordinateSpaceIdentifier];
          [v26 convertRect:coordinateSpaceIdentifier fromCoordinateSpaceIdentifier:contentCoordinateSpaceIdentifier toCoordinateSpaceIdentifier:{v45, v46}];
          v6 = v29;
          v7 = v30;
          v8 = v31;
          v9 = v32;
        }
      }

      referenceCopy = v37;
    }
  }

  v73.origin.x = v6;
  v73.origin.y = v7;
  v73.size.width = v8;
  v73.size.height = v9;
  if (CGRectIsNull(v73))
  {
    v33 = 0;
  }

  else
  {
    v34 = [off_1E7721860 alloc];
    contentCoordinateSpace = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
    v33 = [v34 initWithRect:contentCoordinateSpace inCoordinateSpace:{v6, v7, v8, v9}];

    [v33 setImageContentsRect:{v14, v15, v16, v17}];
  }

  return v33;
}

- (id)oneUpPresentationImportStatusManager:(id)manager
{
  session = [(PXCMMComponentViewController *)self session];
  importStatusManager = [session importStatusManager];

  return importStatusManager;
}

- (BOOL)oneUpPresentation:(id)presentation allowsActionsForContextMenuInteraction:(id)interaction
{
  v4 = [(PXCMMComponentViewController *)self session:presentation];
  viewModel = [v4 viewModel];
  isSelecting = [viewModel isSelecting];

  return isSelecting ^ 1;
}

- (BOOL)oneUpPresentation:(id)presentation canStartPreviewingForContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  view = +[PXCompleteMyMomentSettings sharedInstance];
  if ([view disableClickyOrb])
  {
    v7 = 0;
LABEL_6:

    goto LABEL_7;
  }

  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  isSelecting = [viewModel isSelecting];

  if ((isSelecting & 1) == 0)
  {
    view = [interactionCopy view];
    [interactionCopy locationInView:view];
    v12 = v11;
    v14 = v13;
    contentCoordinateSpace = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
    [contentCoordinateSpace convertPoint:view fromCoordinateSpace:{v12, v14}];
    v17 = v16;
    v19 = v18;

    v20 = [(PXCMMAssetsViewController *)self _assetReferenceAtPoint:v17 padding:v19, *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
    navigatedAssetReference = self->_navigatedAssetReference;
    self->_navigatedAssetReference = v20;

    v7 = v20 != 0;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)oneUpPresentationActionManagerForPreviewing:(id)previewing
{
  if (self->_navigatedAssetReference)
  {
    v4 = [(PXCMMAssetsViewController *)self _createSelectionManagerWithAssetReference:?];
    v5 = [(PXCMMAssetsViewController *)self _assetActionManagerWithSelectionManager:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)oneUpPresentationActionManager:(id)manager
{
  if ([(PXCMMAssetsViewController *)self _shouldShowDefaultOneUpActions])
  {
    v4 = 0;
  }

  else
  {
    session = [(PXCMMComponentViewController *)self session];
    viewModel = [session viewModel];
    isSelecting = [viewModel isSelecting];

    if (isSelecting)
    {
      session2 = [(PXCMMComponentViewController *)self session];
      viewModel2 = [session2 viewModel];
      selectionManager = [viewModel2 selectionManager];
    }

    else if (self->_navigatedAssetReference)
    {
      selectionManager = [(PXCMMAssetsViewController *)self _createSelectionManagerWithAssetReference:?];
    }

    else
    {
      selectionManager = 0;
    }

    v4 = [(PXCMMAssetsViewController *)self _assetActionManagerWithSelectionManager:selectionManager];
  }

  return v4;
}

- (id)_assetActionManagerWithSelectionManager:(id)manager
{
  v30 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  dataSourceManager = [managerCopy dataSourceManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:managerCopy];
    [(PXActionManager *)v10 setPerformerDelegate:self];
    v11 = session;
    activityType = [v11 activityType];
    importStatusManager = [v11 importStatusManager];

    if (activityType != 2)
    {
      goto LABEL_5;
    }

    if (importStatusManager)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_5;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotoKitImportStatusManager *_ImportStatusManagerForSession(PXCMMSession *__strong)"];
      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      px_descriptionForAssertionMessage = [importStatusManager px_descriptionForAssertionMessage];
      [currentHandler handleFailureInFunction:v23 file:@"PXCMMAssetsViewController.m" lineNumber:76 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"session.importStatusManager", v25, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotoKitImportStatusManager *_ImportStatusManagerForSession(PXCMMSession *__strong)"];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [currentHandler handleFailureInFunction:v23 file:@"PXCMMAssetsViewController.m" lineNumber:76 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"session.importStatusManager", v25}];
    }

LABEL_5:
    [(PXPhotoKitAssetActionManager *)v10 setImportStatusManager:importStatusManager];

    importSessionID = [v11 importSessionID];
    [(PXPhotoKitAssetActionManager *)v10 setImportSessionID:importSessionID];

    isSelecting = [viewModel isSelecting];
    v16 = +[PXCompleteMyMomentSettings sharedInstance];
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v17 addObject:*off_1E7721A28];
    if (isSelecting)
    {
      v18 = off_1E7721BE0;
    }

    else
    {
      if (([v16 disablePrintAction] & 1) == 0)
      {
        [v17 addObject:*off_1E7721B40];
      }

      if (([v16 disableShareAction] & 1) == 0)
      {
        [v17 addObject:*off_1E7721B88];
      }

      if (([v16 disableShowInAllPhotosAction] & 1) == 0)
      {
        [v17 addObject:*off_1E7721B98];
      }

      if ([v16 disableCopyAction])
      {
        goto LABEL_19;
      }

      v18 = off_1E7721A58;
    }

    [v17 addObject:*v18];
LABEL_19:
    [(PXActionManager *)v10 setAllowedActionTypes:v17];

    goto LABEL_20;
  }

  v19 = PLSharingGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138412290;
    v29 = v20;
    _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "%@: Unable to provide action manager because data source manager is not of type PXPhotoKitAssetsDataSourceManager.", buf, 0xCu);
  }

  v10 = 0;
LABEL_20:

  return v10;
}

- (id)_createSelectionManagerWithAssetReference:(id)reference
{
  v13 = 0u;
  v14 = 0u;
  if (reference)
  {
    [reference indexPath];
  }

  v12[0] = v13;
  v12[1] = v14;
  v4 = [off_1E7721768 indexPathSetWithIndexPath:v12];
  session = [(PXCMMComponentViewController *)self session];
  dataSourceManager = [session dataSourceManager];

  v7 = [[off_1E77218C8 alloc] initWithDataSourceManager:dataSourceManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PXCMMAssetsViewController__createSelectionManagerWithAssetReference___block_invoke;
  v10[3] = &unk_1E7744008;
  v11 = v4;
  v8 = v4;
  [v7 performChanges:v10];

  return v7;
}

- (id)oneUpPresentationMediaProvider:(id)provider
{
  session = [(PXCMMComponentViewController *)self session];
  mediaProvider = [session mediaProvider];

  return mediaProvider;
}

- (id)oneUpPresentationDataSourceManager:(id)manager
{
  session = [(PXCMMComponentViewController *)self session];
  dataSourceManager = [session dataSourceManager];

  return dataSourceManager;
}

- (int64_t)oneUpPresentationActionContext:(id)context
{
  _shouldShowDefaultOneUpActions = [(PXCMMAssetsViewController *)self _shouldShowDefaultOneUpActions];
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];

  if ([viewModel isSelecting])
  {
    v7 = 3;
  }

  else
  {
    session2 = [(PXCMMComponentViewController *)self session];
    activityType = [session2 activityType];

    v7 = 1;
    if (activityType == 2)
    {
      v7 = 2;
    }
  }

  if (_shouldShowDefaultOneUpActions)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (BOOL)_shouldShowDefaultOneUpActions
{
  session = [(PXCMMComponentViewController *)self session];
  if ([session sourceType] || objc_msgSend(session, "activityType") != 1)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    session2 = [(PXCMMComponentViewController *)self session];
    viewModel = [session2 viewModel];
    v6 = [viewModel isSelecting] ^ 1;
  }

  return v6;
}

- (PXOneUpPresentation)_oneUpPresentation
{
  if (self->_delegateRespondsTo.oneUpPresentation)
  {
    delegate = [(PXCMMAssetsViewController *)self delegate];
    v4 = [delegate oneUpPresentationForAssetsViewController:self];

    [v4 setDelegate:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateSelectionIfNeeded
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  activityType = [session activityType];
  if (([viewModel isSelecting] & 1) == 0 && activityType == 2)
  {
    [(PXCMMAssetsViewController *)self _selectNonCopiedAssets];
  }
}

- (void)_updatePlaceholder
{
  [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
  if (![(PXCMMAssetsViewController *)self _shouldShowStatusPlaceholder])
  {

    [(PXCMMAssetsViewController *)self _performInitialSelectionIfNeeded];
  }
}

- (void)_selectionModeDidChange
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  activityType = [session activityType];
  if (![viewModel isSelecting])
  {
    [(PXCMMAssetsViewController *)self setUserSelectionEnabled:0];
    if (activityType == 2)
    {
      goto LABEL_6;
    }

    if (activityType != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    [(PXCMMAssetsViewController *)self _selectAllAssets];
    goto LABEL_9;
  }

  [(PXCMMAssetsViewController *)self setUserSelectionEnabled:1];
  if (activityType == 1)
  {
    goto LABEL_8;
  }

  if (activityType == 2)
  {
LABEL_6:
    [(PXCMMAssetsViewController *)self _selectNonCopiedAssets];
  }

LABEL_9:
  [(PXCMMAssetsViewController *)self invalidateBoopableItemsProvider];
}

- (void)addButtonTapped:(id)tapped
{
  if (self->_delegateRespondsTo.didTapAddMoreButton)
  {
    delegate = [(PXCMMAssetsViewController *)self delegate];
    [delegate didTapAddMoreButtonForAssetsViewController:self];
  }
}

- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)mode
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  [viewModel performChanges:&__block_literal_global_463_204711];
}

- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)mode
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  isSelecting = [viewModel isSelecting];

  return isSelecting;
}

- (BOOL)swipeSelectionManager:(id)manager shouldSelectItemAtIndexPath:(PXSimpleIndexPath *)path
{
  v4 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v4;
  return ![(PXCMMAssetsViewController *)self _isAssetAlreadyImportedAtIndexPath:v6];
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestAboveLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  scrollViewController = self->_scrollViewController;
  locationCopy = location;
  contentCoordinateSpace = [(PXUIScrollViewController *)scrollViewController contentCoordinateSpace];
  scrollView = [(PXSwipeSelectionManager *)self->_swipeSelectionManager scrollView];
  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];

  scrollView2 = [locationCopy scrollView];

  [scrollView2 frame];
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathClosestLeadingLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  contentCoordinateSpace = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
  scrollView = [(PXSwipeSelectionManager *)self->_swipeSelectionManager scrollView];
  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];

  scrollView2 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager scrollView];
  [scrollView2 frame];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)manager itemIndexPathAtLocation:(id)location
{
  y = a5.y;
  x = a5.x;
  contentCoordinateSpace = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
  scrollView = [(PXSwipeSelectionManager *)self->_swipeSelectionManager scrollView];
  [contentCoordinateSpace convertPoint:scrollView fromCoordinateSpace:{x, y}];
  v12 = v11;
  v14 = v13;

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v15 = *off_1E7721FA0;
  v16 = *(off_1E7721FA0 + 1);
  v17 = *(off_1E7721FA0 + 2);
  v18 = *(off_1E7721FA0 + 3);

  return [(PXCMMAssetsViewController *)self _assetIndexPathAtLocation:v12 padding:v14, v15, v16, v17, v18];
}

- (BOOL)_isAssetAlreadyImportedAtIndexPath:(PXSimpleIndexPath *)path withEngineDrivenLayout:(id)layout
{
  dataSource = [layout dataSource];
  v7 = *&path->item;
  v10[0] = *&path->dataSourceIdentifier;
  v10[1] = v7;
  v8 = [(PXCMMAssetsViewController *)self _assetImportStateAtIndexPath:v10 withDataSource:dataSource];

  return (v8 - 1) < 2;
}

- (BOOL)_isAssetAlreadyImportedAtIndexPath:(PXSimpleIndexPath *)path
{
  currentLayout = [(PXTilingController *)self->_tilingController currentLayout];
  v6 = *&path->item;
  v8[0] = *&path->dataSourceIdentifier;
  v8[1] = v6;
  LOBYTE(path) = [(PXCMMAssetsViewController *)self _isAssetAlreadyImportedAtIndexPath:v8 withEngineDrivenLayout:currentLayout];

  return path;
}

- (int64_t)_assetImportStateAtIndexPath:(PXSimpleIndexPath *)path withDataSource:(id)source
{
  sourceCopy = source;
  session = [(PXCMMComponentViewController *)self session];
  importStatusManager = [session importStatusManager];

  if (importStatusManager)
  {
    v9 = *&path->item;
    v13[0] = *&path->dataSourceIdentifier;
    v13[1] = v9;
    v10 = [sourceCopy assetAtItemIndexPath:v13];
    if (v10)
    {
      v11 = [importStatusManager importStateForAsset:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PXSimpleIndexPath)_assetIndexPathAtLocation:(SEL)location padding:(CGPoint)padding kind:(UIEdgeInsets)kind
{
  right = kind.right;
  bottom = kind.bottom;
  left = kind.left;
  top = kind.top;
  y = padding.y;
  x = padding.x;
  v15 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v15;
  session = [(PXCMMComponentViewController *)self session];
  dataSourceManager = [session dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  identifier = [dataSource identifier];

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  tilingController = [(PXAssetsScene *)self->_sceneController tilingController];
  v21 = tilingController;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__PXCMMAssetsViewController__assetIndexPathAtLocation_padding_kind___block_invoke;
  v24[3] = &__block_descriptor_48_e355_B504__0_PXTileIdentifier_Q_10Q__8_v96_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_104_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_296Q488___NSObject__496l;
  v24[4] = a6;
  v24[5] = identifier;
  if (tilingController)
  {
    [tilingController hitTestTileAtPoint:v24 padding:x passingTest:{y, top, left, bottom, right}];
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  if (v25)
  {
    if (*(&v25 + 1) == a6)
    {
      v23 = v27;
      *&retstr->dataSourceIdentifier = v26;
      *&retstr->item = v23;
    }
  }

  return result;
}

- (id)_assetReferenceAtPoint:(CGPoint)point padding:(UIEdgeInsets)padding
{
  v11 = 0u;
  v12 = 0u;
  [(PXCMMAssetsViewController *)self _assetIndexPathAtLocation:point.x padding:point.y, padding.top, padding.left, padding.bottom, padding.right];
  if (*off_1E7721F68)
  {
    session = [(PXCMMComponentViewController *)self session];
    dataSourceManager = [session dataSourceManager];
    dataSource = [dataSourceManager dataSource];

    v10[0] = v11;
    v10[1] = v12;
    v5 = [dataSource assetReferenceAtItemIndexPath:v10];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_toggleAssetSelectionAtIndexPath:(PXSimpleIndexPath *)path
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];

  selectionSnapshot = [selectionManager selectionSnapshot];
  v8 = *&path->item;
  v15[0] = *&path->dataSourceIdentifier;
  v15[1] = v8;
  v9 = [selectionSnapshot isIndexPathSelected:v15];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PXCMMAssetsViewController__toggleAssetSelectionAtIndexPath___block_invoke;
  v11[3] = &__block_descriptor_65_e37_v16__0___PXMutableSelectionManager__8l;
  v14 = v9 ^ 1;
  v10 = *&path->item;
  v12 = *&path->dataSourceIdentifier;
  v13 = v10;
  [selectionManager performChanges:v11];
}

uint64_t __62__PXCMMAssetsViewController__toggleAssetSelectionAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v3;
  return [a2 setSelectedState:v2 forIndexPath:v5];
}

- (void)_handleSpaceBar:(id)bar
{
  _focusedAssetReference = [(PXCMMAssetsViewController *)self _focusedAssetReference];
  navigatedAssetReference = self->_navigatedAssetReference;
  self->_navigatedAssetReference = _focusedAssetReference;

  if (self->_navigatedAssetReference)
  {
    _oneUpPresentation = [(PXCMMAssetsViewController *)self _oneUpPresentation];
    [_oneUpPresentation startWithConfigurationHandler:0];
  }
}

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    contentCoordinateSpace = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
    [pressCopy px_locationInCoordinateSpace:contentCoordinateSpace];
    v6 = v5;
    v8 = v7;

    v9 = [(PXCMMAssetsViewController *)self _assetReferenceAtPoint:v6 padding:v8, *off_1E7721FA0, *(off_1E7721FA0 + 1), *(off_1E7721FA0 + 2), *(off_1E7721FA0 + 3)];
    navigatedAssetReference = self->_navigatedAssetReference;
    self->_navigatedAssetReference = v9;

    if (self->_navigatedAssetReference)
    {
      _oneUpPresentation = [(PXCMMAssetsViewController *)self _oneUpPresentation];
      [_oneUpPresentation startWithConfigurationHandler:0];
    }
  }
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
  {
    session = [(PXCMMComponentViewController *)self session];
    viewModel = [session viewModel];

    isSelecting = [viewModel isSelecting];
    oneUpDisabled = [viewModel oneUpDisabled];
    v9 = self->_scrollViewController;
    contentCoordinateSpace = [(PXUIScrollViewController *)v9 contentCoordinateSpace];
    [tapCopy px_locationInCoordinateSpace:contentCoordinateSpace];
    v12 = v11;
    v14 = v13;

    if (isSelecting)
    {
      v33 = 0u;
      v34 = 0u;
      [(PXCMMAssetsViewController *)self _assetIndexPathAtLocation:v12 padding:v14, *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
      if (*off_1E7721F68)
      {
        v31 = v33;
        v32 = v34;
        if ([(PXCMMAssetsViewController *)self _isAssetAlreadyImportedAtIndexPath:&v31])
        {
          currentLayout = [(PXTilingController *)self->_tilingController currentLayout];
          dataSource = [currentLayout dataSource];
          v31 = v33;
          v32 = v34;
          v15 = [dataSource assetAtItemIndexPath:&v31];
          mediaType = [v15 mediaType];
          v17 = PXLocalizedAssetMessageForUsage(mediaType, 0, 2);
          v18 = PXLocalizedAssetMessageForUsage(mediaType, 0, 3);
          v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v17 message:v18 preferredStyle:1];
          v20 = MEMORY[0x1E69DC648];
          v21 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
          v22 = [v20 actionWithTitle:v21 style:0 handler:0];
          [v19 addAction:v22];

          [(PXCMMAssetsViewController *)self presentViewController:v19 animated:1 completion:0];
        }

        else
        {
          v31 = v33;
          v32 = v34;
          [(PXCMMAssetsViewController *)self _toggleAssetSelectionAtIndexPath:&v31];
        }
      }
    }

    else if ((oneUpDisabled & 1) == 0)
    {
      v23 = [(PXCMMAssetsViewController *)self _assetReferenceAtPoint:v12 padding:v14, *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
      navigatedAssetReference = self->_navigatedAssetReference;
      self->_navigatedAssetReference = v23;

      v25 = self->_navigatedAssetReference;
      if (v25)
      {
        customAssetSelectionHandler = self->_customAssetSelectionHandler;
        if (customAssetSelectionHandler)
        {
          session2 = [(PXCMMComponentViewController *)self session];
          dataSourceManager = [session2 dataSourceManager];
          customAssetSelectionHandler[2](customAssetSelectionHandler, v25, dataSourceManager);
        }

        else
        {
          session2 = [(PXCMMAssetsViewController *)self _oneUpPresentation];
          [session2 startWithConfigurationHandler:0];
        }
      }
    }
  }
}

- (void)setActionInProgress:(BOOL)progress
{
  progressCopy = progress;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PXCMMAssetsViewController_setActionInProgress___block_invoke;
  aBlock[3] = &unk_1E774C648;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (self->_actionInProgress == progressCopy)
  {
    if (!progressCopy)
    {
      goto LABEL_8;
    }

LABEL_6:
    v5[2](v5);
    goto LABEL_8;
  }

  self->_actionInProgress = progressCopy;
  session = [(PXCMMComponentViewController *)self session];
  activityType = [session activityType];

  if (activityType == 2)
  {
    if (!progressCopy)
    {
      [(PXCMMAssetsViewController *)self _selectNonCopiedAssets];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

LABEL_8:
}

void __49__PXCMMAssetsViewController_setActionInProgress___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) session];
  v2 = [v1 viewModel];

  if ([v2 isSelecting])
  {
    [v2 performChanges:&__block_literal_global_453_204720];
  }
}

- (PXAssetReference)_focusedAssetReference
{
  v2 = MEMORY[0x1E69DCA38];
  view = [(PXCMMAssetsViewController *)self view];
  v4 = [v2 focusSystemForEnvironment:view];
  focusedItem = [v4 focusedItem];

  parentFocusEnvironment = [focusedItem parentFocusEnvironment];
  focusItemContainer = [parentFocusEnvironment focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  if (coordinateSpace)
  {
    [focusedItem frame];
    PXRectGetCenter();
  }

  return 0;
}

- (void)_transitionLayoutGesture:(id)gesture
{
  _layoutType = [(PXCMMAssetsViewController *)self _layoutType];
  if (_layoutType > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A5382B08[_layoutType];
  }

  [(PXCMMAssetsViewController *)self _setLayoutType:v5];
}

- (void)_updateGestures
{
  if (!self->_tapSelectionGesture)
  {
    v3 = [[PXUITapGestureRecognizer alloc] initWithTarget:self action:sel__handleTap_];
    tapSelectionGesture = self->_tapSelectionGesture;
    self->_tapSelectionGesture = v3;

    [(PXUITapGestureRecognizer *)self->_tapSelectionGesture setNumberOfTapsRequired:1];
    view = [(PXCMMAssetsViewController *)self view];
    [view addGestureRecognizer:self->_tapSelectionGesture];
  }

  if (!self->_longPressGesture)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPress_];
    longPressGesture = self->_longPressGesture;
    self->_longPressGesture = v6;

    view2 = [(PXCMMAssetsViewController *)self view];
    [view2 addGestureRecognizer:self->_longPressGesture];
  }

  v9 = +[PXCompleteMyMomentSettings sharedInstance];
  allowSwipeSelection = [v9 allowSwipeSelection];

  if (allowSwipeSelection)
  {
    swipeSelectionManager = self->_swipeSelectionManager;
    if (self->_userSelectionEnabled)
    {
      if (!swipeSelectionManager)
      {
        v12 = [off_1E77218F0 alloc];
        session = [(PXCMMComponentViewController *)self session];
        viewModel = [session viewModel];
        selectionManager = [viewModel selectionManager];
        scrollView = [(PXUIScrollViewController *)self->_scrollViewController scrollView];
        v17 = [v12 initWithSelectionManager:selectionManager scrollView:scrollView];
        v18 = self->_swipeSelectionManager;
        self->_swipeSelectionManager = v17;

        [(PXSwipeSelectionManager *)self->_swipeSelectionManager setDelegate:self];
      }
    }

    else
    {
      [(PXSwipeSelectionManager *)swipeSelectionManager setDelegate:0];
      v19 = self->_swipeSelectionManager;
      self->_swipeSelectionManager = 0;
    }
  }

  view3 = +[PXCompleteMyMomentSettings sharedInstance];
  if ([view3 allowLayoutTransitionGesture])
  {
    layoutTransitionGesture = self->_layoutTransitionGesture;

    if (layoutTransitionGesture)
    {
      return;
    }

    v21 = [[PXUITapGestureRecognizer alloc] initWithTarget:self action:sel__transitionLayoutGesture_];
    v22 = self->_layoutTransitionGesture;
    self->_layoutTransitionGesture = v21;

    [(PXUITapGestureRecognizer *)self->_layoutTransitionGesture setNumberOfTapsRequired:2];
    view3 = [(PXCMMAssetsViewController *)self view];
    [view3 addGestureRecognizer:self->_layoutTransitionGesture];
  }
}

- (void)_updateStyle
{
  scrollView = [(PXUIScrollViewController *)self->_scrollViewController scrollView];
  reviewBackgroundColor = [(PXCMMSpec *)self->_spec reviewBackgroundColor];
  [scrollView setBackgroundColor:reviewBackgroundColor];
}

- (id)_indexPathsForAssetReferences:(id)references inDataSource:(id)source
{
  v24 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  sourceCopy = source;
  v7 = [referencesCopy count];
  v8 = 0;
  if (sourceCopy && v7)
  {
    v8 = objc_alloc_init(off_1E77217C8);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = referencesCopy;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v17 = 0u;
          v18 = 0u;
          [sourceCopy indexPathForAssetReference:v14];
          v16[0] = v17;
          v16[1] = v18;
          [v8 addIndexPath:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (void)_setHiddenAssetReferences:(id)references
{
  referencesCopy = references;
  if (referencesCopy)
  {
    v7 = referencesCopy;
    if ([(NSSet *)referencesCopy count])
    {
      v5 = v7;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  if (self->__hiddenAssetReferences != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->__hiddenAssetReferences, v5);
    targetLayout = [(PXAssetsScene *)self->_sceneController targetLayout];
    [(PXCMMAssetsViewController *)self _configureLayout:targetLayout];

    v5 = v8;
  }
}

- (void)setUserSelectionEnabled:(BOOL)enabled
{
  if (self->_userSelectionEnabled != enabled)
  {
    self->_userSelectionEnabled = enabled;
    [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updateGestures];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->shouldShowAddMoreButton = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->didTapAddMoreButton = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->oneUpPresentation = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateAssetsScene];
  }
}

- (id)_createOverlayTileView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v2 setUserInteractionEnabled:0];
  v3 = [[PXCMMTileReusableView alloc] initWithView:v2];

  return v3;
}

- (id)_createStatusBadgeTileView
{
  v2 = objc_alloc_init(PXCMMAssetStatusBadgeView);

  return v2;
}

- (id)_createStatusPlaceholderTileView
{
  v3 = objc_alloc(MEMORY[0x1E69DC8D0]);
  configuration = [(PXStatusController *)self->_statusController configuration];
  v5 = [v3 initWithConfiguration:configuration];

  v6 = [[PXCMMTileReusableView alloc] initWithView:v5];

  return v6;
}

- (id)_createSectionHeaderController
{
  session = [(PXCMMComponentViewController *)self session];
  v4 = [PXCMMSectionHeaderController alloc];
  activityType = [session activityType];
  viewModel = [session viewModel];
  momentShareStatusPresentationForFooter = self->_momentShareStatusPresentationForFooter;
  importStatusManager = [session importStatusManager];
  v9 = [(PXCMMSectionHeaderController *)v4 initWithActivityType:activityType viewModel:viewModel momentShareStatusPresentation:momentShareStatusPresentationForFooter importStatusManager:importStatusManager];

  return v9;
}

- (id)_createAddButton
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  v4 = [MEMORY[0x1E69DC738] buttonWithType:0];
  quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  [v4 setBackgroundColor:quaternarySystemFillColor];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setTintColor:systemBlueColor];

  [v4 setImage:v3 forState:0];
  [v4 addTarget:self action:sel_addButtonTapped_ forControlEvents:64];
  v7 = [[PXCMMTileReusableView alloc] initWithView:v4];

  return v7;
}

- (id)_createBannerTileController
{
  session = [(PXCMMComponentViewController *)self session];
  v4 = [PXCMMBannerTileController alloc];
  activityType = [session activityType];
  sourceType = [session sourceType];
  viewModel = [session viewModel];
  momentShareStatusPresentationForPoster = self->_momentShareStatusPresentationForPoster;
  importStatusManager = [session importStatusManager];
  v10 = [(PXCMMBannerTileController *)v4 initWithActivityType:activityType sourceType:sourceType viewModel:viewModel momentShareStatusPresentation:momentShareStatusPresentationForPoster importStatusManager:importStatusManager];

  [(PXCMMBannerTileController *)v10 setDelegate:self];

  return v10;
}

- (id)_createStatusFooter
{
  v3 = [PXPhotosGlobalFooterView alloc];
  v4 = [(PXPhotosGlobalFooterView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PXPhotosGlobalFooterView *)v4 setViewModel:self->_statusFooterViewModel];
  [(PXPhotosGlobalFooterView *)v4 setDelegate:self];
  v5 = [[PXCMMTileReusableView alloc] initWithView:v4];

  return v5;
}

- (id)_createPosterTileController
{
  session = [(PXCMMComponentViewController *)self session];
  v4 = [PXCMMPosterTileController alloc];
  activityType = [session activityType];
  viewModel = [session viewModel];
  v7 = [(PXCMMPosterTileController *)v4 initWithActivityType:activityType viewModel:viewModel momentShareStatusPresentation:self->_momentShareStatusPresentationForPoster];

  return v7;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PXCMMAssetsViewController;
  [(PXCMMAssetsViewController *)&v4 viewDidDisappear:disappear];
  [(PXUIScrollViewController *)self->_scrollViewController unregisterObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXCMMAssetsViewController;
  [(PXCMMAssetsViewController *)&v4 viewWillAppear:appear];
  [(PXUIScrollViewController *)self->_scrollViewController registerObserver:self];
}

- (void)viewDidLoad
{
  v49[4] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = PXCMMAssetsViewController;
  [(PXCMMAssetsViewController *)&v48 viewDidLoad];
  view = [(PXCMMAssetsViewController *)self view];
  [view bounds];
  self->_knownReferenceSize.width = v4;
  self->_knownReferenceSize.height = v5;

  [(PXUpdater *)self->_updater updateIfNeeded];
  view2 = [(PXCMMAssetsViewController *)self view];
  scrollView = [(PXUIScrollViewController *)self->_scrollViewController scrollView];
  reviewBackgroundColor = [(PXCMMSpec *)self->_spec reviewBackgroundColor];
  [scrollView setBackgroundColor:reviewBackgroundColor];

  [scrollView setAlwaysBounceVertical:1];
  [scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [scrollView setContentInsetAdjustmentBehavior:2];
  [view2 addSubview:scrollView];
  v24 = MEMORY[0x1E696ACD8];
  topAnchor = [scrollView topAnchor];
  topAnchor2 = [view2 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v49[0] = v26;
  leadingAnchor = [scrollView leadingAnchor];
  leadingAnchor2 = [view2 leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v49[1] = v8;
  trailingAnchor = [scrollView trailingAnchor];
  trailingAnchor2 = [view2 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v49[2] = v11;
  bottomAnchor = [scrollView bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v49[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
  [v24 activateConstraints:v15];

  if (self->_momentShareStatusPresentationForFooter)
  {
    v16 = [[PXCMMProgressBannerView alloc] initWithMomentShareStatusPresentation:self->_momentShareStatusPresentationForFooter];
    progressBannerView = self->_progressBannerView;
    self->_progressBannerView = v16;

    [(PXCMMProgressBannerView *)self->_progressBannerView setDelegate:self];
    [(PXCMMProgressBannerView *)self->_progressBannerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [view2 addSubview:self->_progressBannerView];
    layer = [(PXCMMProgressBannerView *)self->_progressBannerView layer];
    [layer setZPosition:1.0];

    [(PXCMMAssetsViewController *)self _updateProgressBannerViewVisibility];
    [(PXCMMAssetsViewController *)self _updateProgressBannerViewConstraints];
  }

  [(PXCMMAssetsViewController *)self _updateSelectionEnabled];
  _oneUpPresentation = [(PXCMMAssetsViewController *)self _oneUpPresentation];
  contextMenuInteraction = [_oneUpPresentation contextMenuInteraction];

  [scrollView addInteraction:contextMenuInteraction];
  v21 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@" " modifierFlags:0 action:sel__handleSpaceBar_];
  [(PXCMMAssetsViewController *)self addKeyCommand:v21];

  viewTileReusePool = [(PXAssetsScene *)self->_sceneController viewTileReusePool];
  objc_initWeak(&location, self);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke;
  v45[3] = &unk_1E7744030;
  objc_copyWeak(&v46, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:8870942 creationHandler:v45];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_2;
  v43[3] = &unk_1E7744030;
  objc_copyWeak(&v44, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:8870946 creationHandler:v43];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_3;
  v41[3] = &unk_1E7744030;
  objc_copyWeak(&v42, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:8870943 creationHandler:v41];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_4;
  v39[3] = &unk_1E7744030;
  objc_copyWeak(&v40, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:8870944 creationHandler:v39];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_5;
  v37[3] = &unk_1E7744030;
  objc_copyWeak(&v38, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:8870948 creationHandler:v37];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_6;
  v35[3] = &unk_1E7744030;
  objc_copyWeak(&v36, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:8870947 creationHandler:v35];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_7;
  v33[3] = &unk_1E7744030;
  objc_copyWeak(&v34, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:8870945 creationHandler:v33];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_8;
  v31[3] = &unk_1E7744030;
  objc_copyWeak(&v32, &location);
  [viewTileReusePool registerReusableObjectForReuseIdentifier:8870950 creationHandler:v31];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

id __40__PXCMMAssetsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _createOverlayTileView];

  return v2;
}

id __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _createStatusBadgeTileView];

  return v2;
}

id __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _createAddButton];

  return v2;
}

id __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _createPosterTileController];

  return v2;
}

id __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _createStatusFooter];

  return v2;
}

id __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _createBannerTileController];

  return v2;
}

id __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _createSectionHeaderController];

  return v2;
}

id __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _createStatusPlaceholderTileView];

  return v2;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXCMMAssetsViewController;
  [(PXCMMAssetsViewController *)&v3 viewDidLayoutSubviews];
  [(PXUpdater *)self->_updater updateIfNeeded];
}

- (void)_scheduleLayout
{
  viewIfLoaded = [(PXCMMAssetsViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)_deselectAllAssets
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];

  [selectionManager performChanges:&__block_literal_global_398];
}

- (void)_selectAllAssets
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];

  [selectionManager performChanges:&__block_literal_global_396];
}

- (BOOL)_areAllNotCopiedAssetsSelected
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];

  session2 = [(PXCMMComponentViewController *)self session];
  importStatusManager = [session2 importStatusManager];

  selectionSnapshot = [selectionManager selectionSnapshot];
  LOBYTE(viewModel) = [selectionSnapshot areAllUnsavedAssetsSelectedWithImportStatusManager:importStatusManager];

  return viewModel;
}

- (void)_selectNonCopiedAssets
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];

  session2 = [(PXCMMComponentViewController *)self session];
  importStatusManager = [session2 importStatusManager];

  [selectionManager selectNonCopiedAssetsWithImportStatusManager:importStatusManager];
}

- (void)_selectCuratedAssets
{
  session = [(PXCMMComponentViewController *)self session];
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];

  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];
  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:332 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"dataSourceSnapshot", v14, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:332 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"dataSourceSnapshot", v14}];
  }

LABEL_3:
  indexPathSet = [off_1E77217C8 indexPathSet];
  if (dataSource)
  {
    [dataSource firstItemIndexPath];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__PXCMMAssetsViewController__selectCuratedAssets__block_invoke;
  v19[3] = &unk_1E7744508;
  v10 = dataSource;
  v20 = v10;
  v11 = indexPathSet;
  v21 = v11;
  [v10 enumerateItemIndexPathsStartingAtIndexPath:v22 reverseDirection:0 usingBlock:v19];
  if ([v11 count])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__PXCMMAssetsViewController__selectCuratedAssets__block_invoke_2;
    v17[3] = &unk_1E7744008;
    v18 = v11;
    [selectionManager performChanges:v17];
  }
}

uint64_t __49__PXCMMAssetsViewController__selectCuratedAssets__block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 32);
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  result = [v4 isAssetAtIndexPathPartOfCuratedSet:&v9];
  if (result)
  {
    v7 = *(a1 + 40);
    v8 = a2[1];
    v9 = *a2;
    v10 = v8;
    return [v7 addIndexPath:&v9];
  }

  return result;
}

- (void)_performInitialSelectionIfNeeded
{
  if (self->_needsToPerformInitialSelection && ![(PXCMMAssetsViewController *)self _shouldShowStatusPlaceholder])
  {
    self->_needsToPerformInitialSelection = 0;
    session = [(PXCMMComponentViewController *)self session];
    activityType = [session activityType];

    if (activityType == 2)
    {

      [(PXCMMAssetsViewController *)self _selectNonCopiedAssets];
    }

    else if (activityType == 1)
    {

      [(PXCMMAssetsViewController *)self _selectAllAssets];
    }
  }
}

- (void)_updateSelectionEnabled
{
  if (([(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentationForPoster state]& 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    session = [(PXCMMComponentViewController *)self session];
    viewModel = [session viewModel];

    [viewModel performChanges:&__block_literal_global_204765];
  }
}

void __52__PXCMMAssetsViewController__updateSelectionEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setSelectionEnabled:0];
  [v2 setSelecting:0];
}

- (void)_updateAssetsScene
{
  v36 = *MEMORY[0x1E69E9840];
  if (!self->_sceneController && [(PXCMMAssetsViewController *)self isViewLoaded])
  {
    session = [(PXCMMComponentViewController *)self session];
    dataSourceManager = [session dataSourceManager];
    mediaProvider = [session mediaProvider];
    viewModel = [session viewModel];
    selectionManager = [viewModel selectionManager];

    _createNewLayout = [(PXCMMAssetsViewController *)self _createNewLayout];
    v8 = [off_1E7721938 alloc];
    view = [(PXCMMAssetsViewController *)self view];
    [view bounds];
    v10 = [v8 initWithFrame:?];
    scrollViewController = self->_scrollViewController;
    self->_scrollViewController = v10;

    v12 = objc_alloc_init(PXBasicUIViewTileAnimator);
    tileAnimator = self->_tileAnimator;
    self->_tileAnimator = &v12->super;

    v14 = [[PXTilingController alloc] initWithLayout:_createNewLayout];
    tilingController = self->_tilingController;
    self->_tilingController = v14;

    [(PXTilingController *)self->_tilingController setScrollController:self->_scrollViewController];
    [(PXTilingController *)self->_tilingController setTileAnimator:self->_tileAnimator];
    v16 = [[PXUIAssetsScene alloc] initWithTilingController:self->_tilingController mediaProvider:mediaProvider dataSourceManager:dataSourceManager selectionManager:selectionManager delegate:self];
    sceneController = self->_sceneController;
    self->_sceneController = v16;

    [(PXTilingController *)self->_tilingController setTileSource:self];
    [(PXTilingController *)self->_tilingController setTransitionDelegate:self->_sceneController];
    [(PXTilingController *)self->_tilingController setScrollDelegate:self->_sceneController];
    [(PXCMMAssetsViewController *)self _maximumThumbnailSize];
    v19 = v18;
    v21 = v20;
    v22 = PLSharingGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v37.width = v19;
      v37.height = v21;
      v23 = NSStringFromCGSize(v37);
      *buf = 138543362;
      v35 = v23;
      _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_DEFAULT, "Setting the maximum image request size to %{public}@", buf, 0xCu);
    }

    [(PXUIAssetsScene *)self->_sceneController setMaximumImageSize:v19, v21];
    [(PXCMMAssetsViewController *)self _performInitialSelectionIfNeeded];
  }

  [(PXCMMAssetsViewController *)self contentInset];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [(PXUIScrollViewController *)self->_scrollViewController setContentInset:?];
  scrollView = [(PXUIScrollViewController *)self->_scrollViewController scrollView];
  [scrollView setVerticalScrollIndicatorInsets:{v25, v27, v29, v31}];
}

- (CGSize)_maximumThumbnailSize
{
  defaultFormatChooser = [MEMORY[0x1E69BF248] defaultFormatChooser];
  masterThumbnailFormat = [defaultFormatChooser masterThumbnailFormat];

  [masterThumbnailFormat sizeWithFallBackSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (PXCMMAssetsViewController)initWithSession:(id)session
{
  sessionCopy = session;
  v37.receiver = self;
  v37.super_class = PXCMMAssetsViewController;
  v5 = [(PXCMMComponentViewController *)&v37 initWithSession:sessionCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    inUseTiles = v5->_inUseTiles;
    v5->_inUseTiles = v6;

    v8 = +[PXCompleteMyMomentSettings sharedInstance];
    v5->__layoutType = [v8 initialLayoutType];

    v5->_needsToPerformInitialSelection = 1;
    customAssetSelectionHandler = [sessionCopy customAssetSelectionHandler];
    v10 = [customAssetSelectionHandler copy];
    customAssetSelectionHandler = v5->_customAssetSelectionHandler;
    v5->_customAssetSelectionHandler = v10;

    [(PXCMMAssetsViewController *)v5 px_enableExtendedTraitCollection];
    px_extendedTraitCollection = [(PXCMMAssetsViewController *)v5 px_extendedTraitCollection];
    v13 = -[PXCMMSpecManager initWithExtendedTraitCollection:activityType:]([PXCMMSpecManager alloc], "initWithExtendedTraitCollection:activityType:", px_extendedTraitCollection, [sessionCopy activityType]);
    specManager = v5->_specManager;
    v5->_specManager = v13;

    spec = [(PXFeatureSpecManager *)v5->_specManager spec];
    spec = v5->_spec;
    v5->_spec = spec;

    [(PXCMMSpecManager *)v5->_specManager registerChangeObserver:v5 context:PXSpecManagerObservationContext_204654];
    viewModel = [sessionCopy viewModel];
    [viewModel registerChangeObserver:v5 context:PXCMMViewModelObservationContext_204652];

    viewModel2 = [sessionCopy viewModel];
    v5->_userSelectionEnabled = [viewModel2 isSelecting];

    v19 = [sessionCopy momentShareStatusPresentationWithPresentationStyle:2];
    momentShareStatusPresentationForFooter = v5->_momentShareStatusPresentationForFooter;
    v5->_momentShareStatusPresentationForFooter = v19;

    [(PXMomentShareStatusPresentation *)v5->_momentShareStatusPresentationForFooter registerChangeObserver:v5 context:PXMomentShareStatusPresentationObservationContext_204653];
    if (v5->_momentShareStatusPresentationForFooter)
    {
      v21 = [[PXCMMFooterViewModel alloc] initWithMomentShareStatusPresentation:v5->_momentShareStatusPresentationForFooter mode:0];
      statusFooterViewModel = v5->_statusFooterViewModel;
      v5->_statusFooterViewModel = v21;
    }

    v23 = [sessionCopy momentShareStatusPresentationWithPresentationStyle:1];
    momentShareStatusPresentationForPoster = v5->_momentShareStatusPresentationForPoster;
    v5->_momentShareStatusPresentationForPoster = v23;

    [(PXMomentShareStatusPresentation *)v5->_momentShareStatusPresentationForPoster registerChangeObserver:v5 context:PXMomentShareStatusPresentationObservationContext_204653];
    viewModel3 = [sessionCopy viewModel];
    selectionManager = [viewModel3 selectionManager];

    [selectionManager registerChangeObserver:v5 context:PXSelectionManagerObservationContext_204655];
    v27 = objc_alloc_init(off_1E77218E0);
    statusController = v5->_statusController;
    v5->_statusController = v27;

    [(PXStatusController *)v5->_statusController setDelegate:v5];
    if (v5->_momentShareStatusPresentationForFooter)
    {
      v29 = [PXCMMStatusController alloc];
      v30 = v5->_momentShareStatusPresentationForFooter;
      viewModel4 = [(PXStatusController *)v5->_statusController viewModel];
      v32 = [(PXCMMStatusController *)v29 initWithStatusPresentation:v30 viewModel:viewModel4];
      cmmStatusController = v5->_cmmStatusController;
      v5->_cmmStatusController = v32;
    }

    v34 = [[off_1E7721940 alloc] initWithTarget:v5];
    updater = v5->_updater;
    v5->_updater = v34;

    [(PXUpdater *)v5->_updater setNeedsUpdateSelector:sel__scheduleLayout];
    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updateLayoutEngine];
    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updateAssetsScene];
    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updateGestures];
    [(PXUpdater *)v5->_updater setNeedsUpdateOf:sel__updateLayoutEngine];
    [(PXUpdater *)v5->_updater setNeedsUpdateOf:sel__updateAssetsScene];
    [(PXUpdater *)v5->_updater setNeedsUpdateOf:sel__updateGestures];
  }

  return v5;
}

@end