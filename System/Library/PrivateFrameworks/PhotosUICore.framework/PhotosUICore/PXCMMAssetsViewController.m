@interface PXCMMAssetsViewController
- (BOOL)_areAllNotCopiedAssetsSelected;
- (BOOL)_isAssetAlreadyImportedAtIndexPath:(PXSimpleIndexPath *)a3;
- (BOOL)_isAssetAlreadyImportedAtIndexPath:(PXSimpleIndexPath *)a3 withEngineDrivenLayout:(id)a4;
- (BOOL)_shouldShowDefaultOneUpActions;
- (BOOL)_shouldShowProgressBanner;
- (BOOL)_shouldShowStatusPlaceholder;
- (BOOL)engineDrivenLayout:(id)a3 shouldShowDimmingOverlayAtIndexPath:(PXSimpleIndexPath *)a4;
- (BOOL)engineDrivenLayout:(id)a3 shouldShowStatusBadgeAtIndexPath:(PXSimpleIndexPath *)a4;
- (BOOL)oneUpPresentation:(id)a3 allowsActionsForContextMenuInteraction:(id)a4;
- (BOOL)oneUpPresentation:(id)a3 canStartPreviewingForContextMenuInteraction:(id)a4;
- (BOOL)swipeSelectionManager:(id)a3 shouldSelectItemAtIndexPath:(PXSimpleIndexPath *)a4;
- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)a3;
- (CGRect)engineDrivenLayout:(id)a3 contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)a4 forAspectRatio:(double)a5;
- (CGSize)_maximumThumbnailSize;
- (PXActionManager)assetActionManager;
- (PXAssetReference)_focusedAssetReference;
- (PXCMMAssetsViewController)initWithSession:(id)a3;
- (PXCMMAssetsViewControllerDelegate)delegate;
- (PXOneUpPresentation)_oneUpPresentation;
- (PXSimpleIndexPath)_assetIndexPathAtLocation:(SEL)a3 padding:(CGPoint)a4 kind:(UIEdgeInsets)a5;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4;
- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4;
- (UIActivityItemsConfigurationReading)activityItemsConfiguration;
- (UIEdgeInsets)contentInset;
- (double)_bannerHeightFromReferenceSize:(CGSize)a3;
- (double)_headerHeightFromReferenceSize:(CGSize)a3 insets:(UIEdgeInsets)a4;
- (double)_progressBannerViewLayoutHeight;
- (double)_statusFooterHeightFromReferenceSize:(CGSize)a3 insets:(UIEdgeInsets)a4;
- (double)engineDrivenLayout:(id)a3 aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)a4;
- (id)_assetActionManagerWithSelectionManager:(id)a3;
- (id)_assetReferenceAtPoint:(CGPoint)a3 padding:(UIEdgeInsets)a4;
- (id)_createAddButton;
- (id)_createBannerTileController;
- (id)_createNewLayout;
- (id)_createNewLayoutGeneratorWithReferenceSize:(CGSize)a3;
- (id)_createOverlayTileView;
- (id)_createPosterTileController;
- (id)_createSectionHeaderController;
- (id)_createSelectionManagerWithAssetReference:(id)a3;
- (id)_createStatusBadgeTileView;
- (id)_createStatusFooter;
- (id)_createStatusPlaceholderTileView;
- (id)_indexPathsForAssetReferences:(id)a3 inDataSource:(id)a4;
- (id)assetsScene:(id)a3 layoutForDataSource:(id)a4;
- (id)assetsScene:(id)a3 transitionAnimationCoordinatorForChange:(id)a4;
- (id)oneUpPresentation:(id)a3 currentImageForAssetReference:(id)a4;
- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4;
- (id)oneUpPresentationActionManager:(id)a3;
- (id)oneUpPresentationActionManagerForPreviewing:(id)a3;
- (id)oneUpPresentationDataSourceManager:(id)a3;
- (id)oneUpPresentationImportStatusManager:(id)a3;
- (id)oneUpPresentationMediaProvider:(id)a3;
- (int64_t)_assetImportStateAtIndexPath:(PXSimpleIndexPath *)a3 withDataSource:(id)a4;
- (int64_t)engineDrivenLayout:(id)a3 assetStatusAtIndexPath:(PXSimpleIndexPath *)a4;
- (int64_t)oneUpPresentationActionContext:(id)a3;
- (unint64_t)_additionalTileCount;
- (void)_configureBannerTile:(id)a3;
- (void)_configureLayout:(id)a3;
- (void)_deselectAllAssets;
- (void)_handleLongPress:(id)a3;
- (void)_handleSpaceBar:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_invalidateLayoutGenerator;
- (void)_performInitialSelectionIfNeeded;
- (void)_performTilingChangeWithoutAnimationTransition:(id)a3;
- (void)_scheduleLayout;
- (void)_selectAllAssets;
- (void)_selectCuratedAssets;
- (void)_selectNonCopiedAssets;
- (void)_selectionModeDidChange;
- (void)_setHiddenAssetReferences:(id)a3;
- (void)_setLayoutType:(int64_t)a3;
- (void)_toggleAssetSelectionAtIndexPath:(PXSimpleIndexPath *)a3;
- (void)_transitionLayoutGesture:(id)a3;
- (void)_updateAssetsScene;
- (void)_updateGestures;
- (void)_updateLayoutEngine;
- (void)_updatePlaceholder;
- (void)_updateProgressBannerViewConstraints;
- (void)_updateProgressBannerViewVisibility;
- (void)_updateSelectionEnabled;
- (void)_updateSelectionIfNeeded;
- (void)_updateStyle;
- (void)addButtonTapped:(id)a3;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)didTapActionButtonInBannerTileController:(id)a3;
- (void)engineDrivenLayoutReferenceSizeDidChange:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4;
- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4;
- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4;
- (void)progressBannerView:(id)a3 dismissViewController:(id)a4;
- (void)progressBannerViewLayoutHeightDidChange:(id)a3;
- (void)setActionInProgress:(BOOL)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setDelegate:(id)a3;
- (void)setUserSelectionEnabled:(BOOL)a3;
- (void)statusController:(id)a3 configurationDidChange:(id)a4;
- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v3 = [(PXCMMAssetsViewController *)self _focusedAssetReference];
  if (v3)
  {
    v4 = [(PXCMMAssetsViewController *)self _createSelectionManagerWithAssetReference:v3];
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
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [v3 viewModel];
  v5 = [v4 selectionEnabled];

  if (v5)
  {
    v6 = [(PXCMMAssetsViewController *)self boopableItemsProvider];

    if (!v6)
    {
      v7 = objc_alloc_init(PXBoopableItemsProvider);
      [(PXCMMAssetsViewController *)self setBoopableItemsProvider:v7];

      v8 = [(PXCMMComponentViewController *)self session];
      v9 = [v8 viewModel];
      v10 = [v9 selectionManager];
      v11 = [(PXCMMAssetsViewController *)self boopableItemsProvider];
      [v11 setSelectionManager:v10];

      v12 = [(PXCMMComponentViewController *)self session];
      v13 = [v12 mediaProvider];
      v14 = [(PXCMMAssetsViewController *)self boopableItemsProvider];
      [v14 setImagePreviewMediaProvider:v13];
    }

    v15 = [(PXCMMAssetsViewController *)self boopableItemsProvider];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    [(PXCMMAssetsViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    [(PXCMMAssetsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didTapActionButtonInBannerTileController:(id)a3
{
  v4 = [(PXCMMComponentViewController *)self session];
  v5 = [v4 activityType];

  if (v5 == 2)
  {
    self->_receivingActionButtonWasTapped = 1;
  }

  v6 = [(PXCMMAssetsViewController *)self delegate];
  [v6 assetsViewControllerDidTapActionButton:self];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXCMMViewModelObservationContext_204652 == a5)
  {
    v13 = v9;
    if ((v6 & 0x600) != 0)
    {
      [(PXCMMAssetsViewController *)self _selectionModeDidChange];
      v9 = v13;
    }

    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    [(PXCMMAssetsViewController *)self _updatePlaceholder];
LABEL_13:
    [(PXCMMAssetsViewController *)self _updateProgressBannerViewVisibility];
    goto LABEL_14;
  }

  if (PXMomentShareStatusPresentationObservationContext_204653 == a5)
  {
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    v13 = v9;
    [(PXCMMAssetsViewController *)self _updateSelectionEnabled];
    goto LABEL_13;
  }

  if (PXSpecManagerObservationContext_204654 == a5)
  {
    if (v6)
    {
      v13 = v9;
      v10 = [(PXFeatureSpecManager *)self->_specManager spec];
      spec = self->_spec;
      self->_spec = v10;

      [(PXCMMAssetsViewController *)self _updateStyle];
      [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
      goto LABEL_14;
    }
  }

  else
  {
    if (PXSelectionManagerObservationContext_204655 != a5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1805 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 2) != 0)
    {
      v13 = v9;
      [(PXCMMAssetsViewController *)self _updateSelectionIfNeeded];
LABEL_14:
      v9 = v13;
    }
  }

LABEL_15:
}

- (void)statusController:(id)a3 configurationDidChange:(id)a4
{
  sceneController = self->_sceneController;
  v5 = a4;
  v6 = [(PXAssetsScene *)sceneController viewTileReusePool];
  v7 = [v6 checkOutReusableObjectWithReuseIdentifier:8870950];

  v9 = v7;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  [v8 setConfiguration:v5];
}

- (BOOL)_shouldShowStatusPlaceholder
{
  if (!self->_momentShareStatusPresentationForFooter)
  {
    return 0;
  }

  v2 = [(PXCMMComponentViewController *)self session];
  v3 = [v2 viewModel];
  v4 = [v3 shouldShowPlaceholder];

  return v4;
}

- (void)progressBannerView:(id)a3 dismissViewController:(id)a4
{
  v5 = [a4 presentingViewController];

  if (v5 == self)
  {

    [(PXCMMAssetsViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)progressBannerViewLayoutHeightDidChange:(id)a3
{
  [(PXCMMAssetsViewController *)self _updateProgressBannerViewConstraints];

  [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
}

- (void)_updateProgressBannerViewConstraints
{
  v22[4] = *MEMORY[0x1E69E9840];
  v3 = [(PXCMMProgressBannerView *)self->_progressBannerView superview];
  v21 = [v3 safeAreaLayoutGuide];
  [(PXCMMProgressBannerView *)self->_progressBannerView layoutHeight];
  v5 = v4;
  v20 = [(PXCMMProgressBannerView *)self->_progressBannerView topAnchor];
  v19 = [v21 bottomAnchor];
  v18 = [v20 constraintEqualToAnchor:v19 constant:-v5];
  v22[0] = v18;
  v17 = [(PXCMMProgressBannerView *)self->_progressBannerView leadingAnchor];
  v16 = [v3 leadingAnchor];
  v6 = [v17 constraintEqualToAnchor:v16];
  v22[1] = v6;
  v7 = [(PXCMMProgressBannerView *)self->_progressBannerView trailingAnchor];
  v8 = [v3 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v22[2] = v9;
  v10 = [(PXCMMProgressBannerView *)self->_progressBannerView bottomAnchor];
  v11 = [v3 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
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
  v3 = [(PXCMMAssetsViewController *)self _shouldShowProgressBanner];
  if (v3 == [(PXCMMProgressBannerView *)self->_progressBannerView isHidden])
  {
    [(PXCMMProgressBannerView *)self->_progressBannerView setHidden:v3 ^ 1u];

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
  v4 = [v3 showProgressBannerView];

  if (v4)
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

- (int64_t)engineDrivenLayout:(id)a3 assetStatusAtIndexPath:(PXSimpleIndexPath *)a4
{
  v6 = [a3 dataSource];
  v7 = *&a4->item;
  v10[0] = *&a4->dataSourceIdentifier;
  v10[1] = v7;
  v8 = [(PXCMMAssetsViewController *)self _assetImportStateAtIndexPath:v10 withDataSource:v6];

  if ((v8 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A5382B30[v8 - 1];
  }
}

- (BOOL)engineDrivenLayout:(id)a3 shouldShowStatusBadgeAtIndexPath:(PXSimpleIndexPath *)a4
{
  v6 = a3;
  v7 = [(PXCMMComponentViewController *)self session];
  if ([v7 activityType] == 2)
  {
    v8 = [v6 dataSource];
    v9 = *&a4->item;
    v17[0] = *&a4->dataSourceIdentifier;
    v17[1] = v9;
    v10 = [(PXCMMAssetsViewController *)self _assetImportStateAtIndexPath:v17 withDataSource:v8];

    v11 = [(PXCMMComponentViewController *)self session];
    v12 = [v11 viewModel];
    v13 = [v12 isSelecting];

    v14 = 2;
    if (!v13)
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

- (BOOL)engineDrivenLayout:(id)a3 shouldShowDimmingOverlayAtIndexPath:(PXSimpleIndexPath *)a4
{
  v6 = a3;
  v7 = [(PXCMMComponentViewController *)self session];
  if ([v7 activityType] == 2 && (objc_msgSend(v7, "viewModel"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isSelecting"), v8, v9))
  {
    v10 = [v6 dataSource];
    v11 = *&a4->item;
    v15[0] = *&a4->dataSourceIdentifier;
    v15[1] = v11;
    v12 = [(PXCMMAssetsViewController *)self _assetImportStateAtIndexPath:v15 withDataSource:v10];

    v13 = v12 == 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CGRect)engineDrivenLayout:(id)a3 contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)a4 forAspectRatio:(double)a5
{
  v7 = [a3 dataSource];
  v8 = *&a4->item;
  v22[0] = *&a4->dataSourceIdentifier;
  v22[1] = v8;
  v9 = [v7 assetAtItemIndexPath:v22];

  if (objc_opt_respondsToSelector())
  {
    [v9 bestCropRectForAspectRatio:a5];
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

- (double)engineDrivenLayout:(id)a3 aspectRatioForItemAtIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = *&a4->item;
  v11[0] = *&a4->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [v5 assetAtItemIndexPath:v11];

  v8 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v7 aspectRatio];
    v8 = v9;
  }

  return v8;
}

- (void)engineDrivenLayoutReferenceSizeDidChange:(id)a3
{
  v9 = a3;
  v4 = [(PXTilingController *)self->_tilingController targetLayout];

  v5 = v9;
  if (v4 == v9)
  {
    [v9 referenceSize];
    v5 = v9;
    if (self->_knownReferenceSize.width != v6 || self->_knownReferenceSize.height != v7)
    {
      self->_knownReferenceSize.width = v6;
      self->_knownReferenceSize.height = v7;
      [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
      v5 = v9;
    }
  }
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v7 = self->_sceneController;
  v8 = *&a4->index[5];
  v15 = *&a4->index[3];
  v16 = v8;
  v17 = *&a4->index[7];
  v18 = a4->index[9];
  v9 = *&a4->index[1];
  v13 = *&a4->length;
  v14 = v9;
  if ([(PXAssetsScene *)v7 providesTileForIdentifier:&v13])
  {
    v10 = *&a4->index[5];
    v15 = *&a4->index[3];
    v16 = v10;
    v17 = *&a4->index[7];
    v18 = a4->index[9];
    v11 = *&a4->index[1];
    v13 = *&a4->length;
    v14 = v11;
    [(PXUIAssetsScene *)v7 checkInTile:a3 withIdentifier:&v13];
  }

  else
  {
    v12 = [(PXAssetsScene *)v7 viewTileReusePool];
    [v12 checkInReusableObject:a3];

    [(NSMutableSet *)self->_inUseTiles removeObject:a3];
  }
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v7 = a4;
  v8 = self->_sceneController;
  v9 = *&a3->index[5];
  v26 = *&a3->index[3];
  v27 = v9;
  v28 = *&a3->index[7];
  v29 = a3->index[9];
  v10 = *&a3->index[1];
  v24 = *&a3->length;
  v25 = v10;
  if (![(PXAssetsScene *)v8 providesTileForIdentifier:&v24])
  {
    v14 = a3->index[0];
    if (v14 > 8439979)
    {
      if (v14 > 8439981)
      {
        if (v14 == 8439982)
        {
          v15 = [(PXAssetsScene *)v8 viewTileReusePool];
          v16 = v15;
          v17 = 8870948;
        }

        else
        {
          if (v14 != 8439984)
          {
            goto LABEL_25;
          }

          v15 = [(PXAssetsScene *)v8 viewTileReusePool];
          v16 = v15;
          v17 = 8870950;
        }
      }

      else
      {
        if (v14 != 8439980)
        {
          v18 = [(PXAssetsScene *)v8 viewTileReusePool];
          v13 = [v18 checkOutReusableObjectWithReuseIdentifier:8870947];

          [(PXCMMAssetsViewController *)self _configureBannerTile:v13];
          if (!v13)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        v15 = [(PXAssetsScene *)v8 viewTileReusePool];
        v16 = v15;
        v17 = 8870944;
      }
    }

    else if (v14 > 8439962)
    {
      if (v14 == 8439963)
      {
        v15 = [(PXAssetsScene *)v8 viewTileReusePool];
        v16 = v15;
        v17 = 8870945;
      }

      else
      {
        if (v14 != 8439964)
        {
          goto LABEL_25;
        }

        v15 = [(PXAssetsScene *)v8 viewTileReusePool];
        v16 = v15;
        v17 = 8870946;
      }
    }

    else if (v14 == 8439952)
    {
      v15 = [(PXAssetsScene *)v8 viewTileReusePool];
      v16 = v15;
      v17 = 8870942;
    }

    else
    {
      if (v14 != 8439962)
      {
        goto LABEL_25;
      }

      v15 = [(PXAssetsScene *)v8 viewTileReusePool];
      v16 = v15;
      v17 = 8870943;
    }

    v13 = [v15 checkOutReusableObjectWithReuseIdentifier:v17];

    if (v13)
    {
LABEL_24:
      [(NSMutableSet *)self->_inUseTiles addObject:v13];
      goto LABEL_26;
    }

LABEL_25:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = *&a3->index[5];
    v26 = *&a3->index[3];
    v27 = v20;
    v28 = *&a3->index[7];
    v29 = a3->index[9];
    v21 = *&a3->index[1];
    v24 = *&a3->length;
    v25 = v21;
    v22 = PXTileIdentifierDescription(&v24);
    [v19 handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1559 description:{@"%@ couldn't check out tile for identifier:%@, layout:%@", self, v22, v7}];

    v13 = 0;
    goto LABEL_26;
  }

  v11 = *&a3->index[5];
  v26 = *&a3->index[3];
  v27 = v11;
  v28 = *&a3->index[7];
  v29 = a3->index[9];
  v12 = *&a3->index[1];
  v24 = *&a3->length;
  v25 = v12;
  v13 = [(PXUIAssetsScene *)v8 checkOutTileForIdentifier:&v24 layout:v7];
  if (!v13)
  {
    goto LABEL_25;
  }

LABEL_26:

  return v13;
}

- (void)_configureBannerTile:(id)a3
{
  v11 = a3;
  v4 = [(PXCMMComponentViewController *)self session];
  v5 = [v4 sourceType];
  v6 = [v4 activityType];
  if (!v5 && v6 == 1)
  {
    v7 = [v4 peopleSuggestionsPreviewDataSourceManager];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v4 peopleSuggestionsDataSourceManager];
    }

    v10 = v9;

    [v11 setPeopleSuggestionsDataSourceManager:v10];
  }
}

- (id)assetsScene:(id)a3 transitionAnimationCoordinatorForChange:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_layoutAnimationsGloballyDisabled)
  {
    v7 = 0;
  }

  else
  {
    v8 = [a3 dataSourceManager];
    v9 = [v8 changeHistory];
    v7 = [PXAssetsTileTransitionCoordinator transitionCoordinatorForChange:v6 changeHistory:v9];

    v10 = +[PXCompleteMyMomentSettings sharedInstance];
    LODWORD(v8) = [v10 sectionHeadersShouldFloat];

    if (v8)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v11 = [v6 invalidationContexts];
      v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v32 + 1) + 8 * i) tag];
            v17 = [v16 isEqualToString:@"PXCMMSectionHeaderTileGroupInvalidation"];

            if (v17)
            {

              [v7 disableAnimationsForTileKind:8439963];
              goto LABEL_14;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
    v19 = [v18 showFloatingBanner];

    if (v19)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v20 = [v6 invalidationContexts];
      v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
              objc_enumerationMutation(v20);
            }

            v25 = [*(*(&v28 + 1) + 8 * j) tag];
            v26 = [v25 isEqualToString:@"PXCMMBannerTileGroupInvalidationTag"];

            if (v26)
            {

              [v7 disableAnimationsForTileKind:8439981];
              goto LABEL_25;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
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

- (id)assetsScene:(id)a3 layoutForDataSource:(id)a4
{
  v5 = a4;
  [(PXCMMAssetsViewController *)self _updateLayoutEngine];
  v6 = [(PXSectionedLayoutEngine *)self->_layoutEngine dataSourceSnapshot];
  v7 = [v6 identifier];

  v8 = [(PXCMMComponentViewController *)self session];
  v9 = [v8 dataSourceManager];
  v10 = [v9 changeHistory];
  v11 = [v10 changeDetailsFromDataSourceIdentifier:v7 toDataSourceIdentifier:{objc_msgSend(v5, "identifier")}];

  if ([v11 count] == 1)
  {
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  layoutEngine = self->_layoutEngine;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __61__PXCMMAssetsViewController_assetsScene_layoutForDataSource___block_invoke;
  v22 = &unk_1E77440B8;
  v23 = v5;
  v24 = v12;
  v14 = v12;
  v15 = v5;
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

- (double)_statusFooterHeightFromReferenceSize:(CGSize)a3 insets:(UIEdgeInsets)a4
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

- (double)_bannerHeightFromReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[PXCompleteMyMomentSettings sharedInstance];
  v7 = [v6 showFloatingBanner];

  v8 = 0.0;
  if (v7)
  {
    momentShareStatusPresentationForPoster = self->_momentShareStatusPresentationForPoster;
    if (!momentShareStatusPresentationForPoster || (v10 = [(PXMomentShareStatusPresentation *)momentShareStatusPresentationForPoster type]) != 0 && (v10 != 1 || ([(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentationForPoster state]& 0xFFFFFFFFFFFFFFFDLL) != 4 && ![(PXCMMAssetsViewController *)self _shouldShowStatusPlaceholder]))
    {
      v11 = [(PXCMMComponentViewController *)self session];
      measuringBannerTile = self->_measuringBannerTile;
      if (!measuringBannerTile)
      {
        v13 = [PXCMMBannerTileController alloc];
        v14 = [v11 activityType];
        v15 = [v11 sourceType];
        v16 = [v11 viewModel];
        v17 = self->_momentShareStatusPresentationForPoster;
        v18 = [v11 importStatusManager];
        v19 = [(PXCMMBannerTileController *)v13 initWithActivityType:v14 sourceType:v15 viewModel:v16 momentShareStatusPresentation:v17 importStatusManager:v18];
        v20 = self->_measuringBannerTile;
        self->_measuringBannerTile = v19;

        [(PXCMMAssetsViewController *)self _configureBannerTile:self->_measuringBannerTile];
        measuringBannerTile = self->_measuringBannerTile;
      }

      v21 = [(PXCMMBannerTileController *)measuringBannerTile view];
      [v21 sizeThatFits:{width, height}];
      v8 = v22;
    }
  }

  return v8;
}

- (double)_headerHeightFromReferenceSize:(CGSize)a3 insets:(UIEdgeInsets)a4
{
  v4 = +[PXCompleteMyMomentSettings sharedInstance];
  v5 = [v4 showAttachedHeaderView];

  if (v5)
  {
    PXEdgeInsetsInsetSize();
  }

  return 0.0;
}

- (id)_createNewLayoutGeneratorWithReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[PXCompleteMyMomentSettings sharedInstance];
  if ([v6 showSectionHeaders])
  {
    v7 = [(PXCMMAssetsViewController *)self _shouldShowStatusPlaceholder];

    v8 = 0.0;
    if (!v7)
    {
      [(PXCMMSpec *)self->_spec reviewSectionHeaderHeight];
      v8 = v9;
    }
  }

  else
  {

    v8 = 0.0;
  }

  v10 = [(PXCMMAssetsViewController *)self _layoutType];
  v11 = [(PXCMMAssetsViewController *)self _additionalTileCount];
  [(PXCMMSpec *)self->_spec reviewGridItemSize];
  v13 = v12;
  v15 = v14;
  [(PXCMMSpec *)self->_spec reviewGridInterItemSpacing];
  v17 = v16;
  v19 = v18;
  [(PXCMMSpec *)self->_spec reviewGridContentInsets];
  return [PXCMMLayoutGenerator layoutGeneratorForLayoutType:v10 withReferenceSize:v11 additionalTileCount:width headerHeight:height itemSize:v8 interItemSpacing:v13 contentInsets:v15, v17, v19, v20, v21, v22, v23];
}

- (void)_configureLayout:(id)a3
{
  v19 = a3;
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [v19 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1290 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layout", v16, v18}];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1290 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layout", v16}];
  }

LABEL_3:
  [v19 setPlaceholderMode:{-[PXCMMAssetsViewController _shouldShowStatusPlaceholder](self, "_shouldShowStatusPlaceholder")}];
  [v19 setContentMode:{-[PXCMMSpec reviewGridContentMode](self->_spec, "reviewGridContentMode")}];
  if (self->_userSelectionEnabled)
  {
    v5 = 1025;
  }

  else
  {
    v5 = 0;
  }

  [v19 setSelectionBadgeOptions:v5];
  [v19 setBadgeOptions:3];
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  [v19 setHasFloatingBanner:!IsAccessibilityCategory];
  v9 = +[PXCompleteMyMomentSettings sharedInstance];
  [v19 setHasFloatingSectionHeaders:{objc_msgSend(v9, "sectionHeadersShouldFloat")}];

  [(PXCMMSpec *)self->_spec reviewContentInsets];
  [v19 setHeaderFooterSideInset:v10];
  [(PXCMMSpec *)self->_spec reviewHeaderTopInset];
  [v19 setHeaderTopInset:?];
  [(PXCMMSpec *)self->_spec reviewFooterBottomInset];
  [v19 setFooterBottomInset:?];
  [(PXCMMAssetsViewController *)self _progressBannerViewLayoutHeight];
  [(PXCMMSpec *)self->_spec reviewSafeAreaInsets];
  [v19 setReviewSafeAreaInsets:?];
  v11 = [(PXCMMAssetsViewController *)self _hiddenAssetReferences];
  v12 = [v19 dataSource];
  v13 = [(PXCMMAssetsViewController *)self _indexPathsForAssetReferences:v11 inDataSource:v12];

  [v19 setHiddenIndexPaths:v13];
}

- (id)_createNewLayout
{
  [(PXSectionedLayoutEngine *)self->_layoutEngine layoutSnapshot];
  if (!objc_claimAutoreleasedReturnValue())
  {
    v4 = [(PXTilingController *)self->_tilingController targetLayout];
    v5 = [v4 layoutSnapshot];

    if (!v5)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:1266 description:@"The layout engine should always return a layoutSnapshot."];
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
  v3 = +[PXCompleteMyMomentSettings sharedInstance];
  if ([v3 shouldShowInlineAddButton])
  {
    v4 = [(PXCMMAssetsViewController *)self _layoutType];

    if (v4 == 1 || !self->_delegateRespondsTo.shouldShowAddMoreButton)
    {
      return 0;
    }

    v3 = [(PXCMMAssetsViewController *)self delegate];
    v5 = [v3 shouldShowAddMoreButtonForAssetsViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_performTilingChangeWithoutAnimationTransition:(id)a3
{
  layoutAnimationsGloballyDisabled = self->_layoutAnimationsGloballyDisabled;
  self->_layoutAnimationsGloballyDisabled = 1;
  (*(a3 + 2))(a3, a2);
  [(PXUIScrollViewController *)self->_scrollViewController updateIfNeeded];
  self->_layoutAnimationsGloballyDisabled = layoutAnimationsGloballyDisabled;
}

- (void)_setLayoutType:(int64_t)a3
{
  if (self->__layoutType != a3)
  {
    self->__layoutType = a3;
    [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
  }
}

- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXCMMComponentViewController *)self session];
  v7 = [v6 dataSourceManager];
  v8 = [v7 dataSource];

  v9 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v5;
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

        v15 = [v8 assetReferenceForAssetReference:*(*(&v19 + 1) + 8 * v14)];
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

- (id)oneUpPresentation:(id)a3 currentImageForAssetReference:(id)a4
{
  v5 = a4;
  [(PXUIScrollViewController *)self->_scrollViewController updateIfNeeded];
  v6 = [(PXTilingController *)self->_tilingController currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(PXTilingController *)self->_tilingController currentLayout];
  }

  else
  {
    v7 = 0;
  }

  memset(v22, 0, sizeof(v22));
  v8 = [v7 dataSource];
  v9 = v8;
  if (v8)
  {
    [v8 indexPathForAssetReference:v5];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  if (*&v22[0] == *off_1E7721F68)
  {
    v10 = 0;
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
    v10 = 0;
    if ([(PXTilingController *)tilingController getTile:&v21 geometry:0 group:0 userData:0 forTileWithIdentifier:&v14])
    {
      v12 = v21;
      if ([v12 conformsToProtocol:&unk_1F1A50488])
      {
        v10 = [v12 image];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4
{
  v5 = a4;
  [(PXUIScrollViewController *)self->_scrollViewController updateIfNeeded];
  v6 = [(PXTilingController *)self->_tilingController currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(PXTilingController *)self->_tilingController currentLayout];
  }

  else
  {
    v7 = 0;
  }

  memset(v18, 0, sizeof(v18));
  v8 = [v7 dataSource];
  v9 = v8;
  if (v8)
  {
    [v8 indexPathForAssetReference:v5];
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
    if ([v7 getGeometry:v17 group:0 userData:0 forTileWithIdentifier:&v10])
    {
      [(PXUIScrollViewController *)self->_scrollViewController scrollView];
      [objc_claimAutoreleasedReturnValue() bounds];
      [(PXUIScrollViewController *)self->_scrollViewController contentInset];
      PXEdgeInsetsInsetRect();
    }
  }
}

- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4
{
  v5 = a4;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  v10 = [(PXCMMComponentViewController *)self session];
  v11 = [v10 dataSourceManager];

  [(PXUIScrollViewController *)self->_scrollViewController updateIfNeeded];
  v69 = 0u;
  v70 = 0u;
  v12 = [v11 dataSource];
  v13 = v12;
  if (v12)
  {
    [v12 indexPathForAssetReference:v5];
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
      v37 = v5;
      v22 = [(PXAssetsScene *)self->_sceneController currentLayout];
      v23 = v69;
      v24 = [v22 dataSource];
      v25 = [v24 identifier];

      if (v23 == v25)
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
        if ([v22 getGeometry:&v45 group:0 userData:0 forTileWithIdentifier:&v38])
        {
          v26 = +[PXTilingCoordinateSpaceConverter defaultConverter];
          v27 = [v22 coordinateSpaceIdentifier];
          v28 = [(PXTilingController *)self->_tilingController contentCoordinateSpaceIdentifier];
          [v26 convertRect:v27 fromCoordinateSpaceIdentifier:v28 toCoordinateSpaceIdentifier:{v45, v46}];
          v6 = v29;
          v7 = v30;
          v8 = v31;
          v9 = v32;
        }
      }

      v5 = v37;
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
    v35 = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
    v33 = [v34 initWithRect:v35 inCoordinateSpace:{v6, v7, v8, v9}];

    [v33 setImageContentsRect:{v14, v15, v16, v17}];
  }

  return v33;
}

- (id)oneUpPresentationImportStatusManager:(id)a3
{
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [v3 importStatusManager];

  return v4;
}

- (BOOL)oneUpPresentation:(id)a3 allowsActionsForContextMenuInteraction:(id)a4
{
  v4 = [(PXCMMComponentViewController *)self session:a3];
  v5 = [v4 viewModel];
  v6 = [v5 isSelecting];

  return v6 ^ 1;
}

- (BOOL)oneUpPresentation:(id)a3 canStartPreviewingForContextMenuInteraction:(id)a4
{
  v5 = a4;
  v6 = +[PXCompleteMyMomentSettings sharedInstance];
  if ([v6 disableClickyOrb])
  {
    v7 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v8 = [(PXCMMComponentViewController *)self session];
  v9 = [v8 viewModel];
  v10 = [v9 isSelecting];

  if ((v10 & 1) == 0)
  {
    v6 = [v5 view];
    [v5 locationInView:v6];
    v12 = v11;
    v14 = v13;
    v15 = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
    [v15 convertPoint:v6 fromCoordinateSpace:{v12, v14}];
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

- (id)oneUpPresentationActionManagerForPreviewing:(id)a3
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

- (id)oneUpPresentationActionManager:(id)a3
{
  if ([(PXCMMAssetsViewController *)self _shouldShowDefaultOneUpActions])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PXCMMComponentViewController *)self session];
    v6 = [v5 viewModel];
    v7 = [v6 isSelecting];

    if (v7)
    {
      v8 = [(PXCMMComponentViewController *)self session];
      v9 = [v8 viewModel];
      v10 = [v9 selectionManager];
    }

    else if (self->_navigatedAssetReference)
    {
      v10 = [(PXCMMAssetsViewController *)self _createSelectionManagerWithAssetReference:?];
    }

    else
    {
      v10 = 0;
    }

    v4 = [(PXCMMAssetsViewController *)self _assetActionManagerWithSelectionManager:v10];
  }

  return v4;
}

- (id)_assetActionManagerWithSelectionManager:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXCMMComponentViewController *)self session];
  v7 = [v6 viewModel];
  v8 = [v5 dataSourceManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v5];
    [(PXActionManager *)v10 setPerformerDelegate:self];
    v11 = v6;
    v12 = [v11 activityType];
    v13 = [v11 importStatusManager];

    if (v12 != 2)
    {
      goto LABEL_5;
    }

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_5;
      }

      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotoKitImportStatusManager *_ImportStatusManagerForSession(PXCMMSession *__strong)"];
      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      v27 = [v13 px_descriptionForAssertionMessage];
      [v22 handleFailureInFunction:v23 file:@"PXCMMAssetsViewController.m" lineNumber:76 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"session.importStatusManager", v25, v27}];
    }

    else
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotoKitImportStatusManager *_ImportStatusManagerForSession(PXCMMSession *__strong)"];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [v22 handleFailureInFunction:v23 file:@"PXCMMAssetsViewController.m" lineNumber:76 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"session.importStatusManager", v25}];
    }

LABEL_5:
    [(PXPhotoKitAssetActionManager *)v10 setImportStatusManager:v13];

    v14 = [v11 importSessionID];
    [(PXPhotoKitAssetActionManager *)v10 setImportSessionID:v14];

    v15 = [v7 isSelecting];
    v16 = +[PXCompleteMyMomentSettings sharedInstance];
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v17 addObject:*off_1E7721A28];
    if (v15)
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

- (id)_createSelectionManagerWithAssetReference:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  if (a3)
  {
    [a3 indexPath];
  }

  v12[0] = v13;
  v12[1] = v14;
  v4 = [off_1E7721768 indexPathSetWithIndexPath:v12];
  v5 = [(PXCMMComponentViewController *)self session];
  v6 = [v5 dataSourceManager];

  v7 = [[off_1E77218C8 alloc] initWithDataSourceManager:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PXCMMAssetsViewController__createSelectionManagerWithAssetReference___block_invoke;
  v10[3] = &unk_1E7744008;
  v11 = v4;
  v8 = v4;
  [v7 performChanges:v10];

  return v7;
}

- (id)oneUpPresentationMediaProvider:(id)a3
{
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [v3 mediaProvider];

  return v4;
}

- (id)oneUpPresentationDataSourceManager:(id)a3
{
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [v3 dataSourceManager];

  return v4;
}

- (int64_t)oneUpPresentationActionContext:(id)a3
{
  v4 = [(PXCMMAssetsViewController *)self _shouldShowDefaultOneUpActions];
  v5 = [(PXCMMComponentViewController *)self session];
  v6 = [v5 viewModel];

  if ([v6 isSelecting])
  {
    v7 = 3;
  }

  else
  {
    v8 = [(PXCMMComponentViewController *)self session];
    v9 = [v8 activityType];

    v7 = 1;
    if (v9 == 2)
    {
      v7 = 2;
    }
  }

  if (v4)
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
  v3 = [(PXCMMComponentViewController *)self session];
  if ([v3 sourceType] || objc_msgSend(v3, "activityType") != 1)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v4 = [(PXCMMComponentViewController *)self session];
    v5 = [v4 viewModel];
    v6 = [v5 isSelecting] ^ 1;
  }

  return v6;
}

- (PXOneUpPresentation)_oneUpPresentation
{
  if (self->_delegateRespondsTo.oneUpPresentation)
  {
    v3 = [(PXCMMAssetsViewController *)self delegate];
    v4 = [v3 oneUpPresentationForAssetsViewController:self];

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
  v5 = [(PXCMMComponentViewController *)self session];
  v3 = [v5 viewModel];
  v4 = [v5 activityType];
  if (([v3 isSelecting] & 1) == 0 && v4 == 2)
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
  v5 = [(PXCMMComponentViewController *)self session];
  v3 = [v5 viewModel];
  v4 = [v5 activityType];
  if (![v3 isSelecting])
  {
    [(PXCMMAssetsViewController *)self setUserSelectionEnabled:0];
    if (v4 == 2)
    {
      goto LABEL_6;
    }

    if (v4 != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    [(PXCMMAssetsViewController *)self _selectAllAssets];
    goto LABEL_9;
  }

  [(PXCMMAssetsViewController *)self setUserSelectionEnabled:1];
  if (v4 == 1)
  {
    goto LABEL_8;
  }

  if (v4 == 2)
  {
LABEL_6:
    [(PXCMMAssetsViewController *)self _selectNonCopiedAssets];
  }

LABEL_9:
  [(PXCMMAssetsViewController *)self invalidateBoopableItemsProvider];
}

- (void)addButtonTapped:(id)a3
{
  if (self->_delegateRespondsTo.didTapAddMoreButton)
  {
    v5 = [(PXCMMAssetsViewController *)self delegate];
    [v5 didTapAddMoreButtonForAssetsViewController:self];
  }
}

- (void)swipeSelectionManagerAutomaticallyTransitionToMultiSelectMode:(id)a3
{
  v4 = [(PXCMMComponentViewController *)self session];
  v3 = [v4 viewModel];
  [v3 performChanges:&__block_literal_global_463_204711];
}

- (BOOL)swipeSelectionManagerIsInMultiSelectMode:(id)a3
{
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [v3 viewModel];
  v5 = [v4 isSelecting];

  return v5;
}

- (BOOL)swipeSelectionManager:(id)a3 shouldSelectItemAtIndexPath:(PXSimpleIndexPath *)a4
{
  v4 = *&a4->item;
  v6[0] = *&a4->dataSourceIdentifier;
  v6[1] = v4;
  return ![(PXCMMAssetsViewController *)self _isAssetAlreadyImportedAtIndexPath:v6];
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestAboveLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  scrollViewController = self->_scrollViewController;
  v10 = a4;
  v11 = [(PXUIScrollViewController *)scrollViewController contentCoordinateSpace];
  v12 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager scrollView];
  [v11 convertPoint:v12 fromCoordinateSpace:{x, y}];

  v13 = [v10 scrollView];

  [v13 frame];
  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathClosestLeadingLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  v9 = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
  v10 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager scrollView];
  [v9 convertPoint:v10 fromCoordinateSpace:{x, y}];

  v11 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager scrollView];
  [v11 frame];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  PXEdgeInsetsMake();
}

- (PXSimpleIndexPath)swipeSelectionManager:(SEL)a3 itemIndexPathAtLocation:(id)a4
{
  y = a5.y;
  x = a5.x;
  v9 = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
  v10 = [(PXSwipeSelectionManager *)self->_swipeSelectionManager scrollView];
  [v9 convertPoint:v10 fromCoordinateSpace:{x, y}];
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

- (BOOL)_isAssetAlreadyImportedAtIndexPath:(PXSimpleIndexPath *)a3 withEngineDrivenLayout:(id)a4
{
  v6 = [a4 dataSource];
  v7 = *&a3->item;
  v10[0] = *&a3->dataSourceIdentifier;
  v10[1] = v7;
  v8 = [(PXCMMAssetsViewController *)self _assetImportStateAtIndexPath:v10 withDataSource:v6];

  return (v8 - 1) < 2;
}

- (BOOL)_isAssetAlreadyImportedAtIndexPath:(PXSimpleIndexPath *)a3
{
  v5 = [(PXTilingController *)self->_tilingController currentLayout];
  v6 = *&a3->item;
  v8[0] = *&a3->dataSourceIdentifier;
  v8[1] = v6;
  LOBYTE(a3) = [(PXCMMAssetsViewController *)self _isAssetAlreadyImportedAtIndexPath:v8 withEngineDrivenLayout:v5];

  return a3;
}

- (int64_t)_assetImportStateAtIndexPath:(PXSimpleIndexPath *)a3 withDataSource:(id)a4
{
  v6 = a4;
  v7 = [(PXCMMComponentViewController *)self session];
  v8 = [v7 importStatusManager];

  if (v8)
  {
    v9 = *&a3->item;
    v13[0] = *&a3->dataSourceIdentifier;
    v13[1] = v9;
    v10 = [v6 assetAtItemIndexPath:v13];
    if (v10)
    {
      v11 = [v8 importStateForAsset:v10];
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

- (PXSimpleIndexPath)_assetIndexPathAtLocation:(SEL)a3 padding:(CGPoint)a4 kind:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  y = a4.y;
  x = a4.x;
  v15 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v15;
  v16 = [(PXCMMComponentViewController *)self session];
  v17 = [v16 dataSourceManager];
  v18 = [v17 dataSource];
  v19 = [v18 identifier];

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v20 = [(PXAssetsScene *)self->_sceneController tilingController];
  v21 = v20;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__PXCMMAssetsViewController__assetIndexPathAtLocation_padding_kind___block_invoke;
  v24[3] = &__block_descriptor_48_e355_B504__0_PXTileIdentifier_Q_10Q__8_v96_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_104_PXTileGeometry__CGRect__CGPoint_dd__CGSize_dd___CGPoint_dd__CGSize_dd__CGAffineTransform_dddddd_ddB_CGSize_dd__CGRect__CGPoint_dd__CGSize_dd___v_296Q488___NSObject__496l;
  v24[4] = a6;
  v24[5] = v19;
  if (v20)
  {
    [v20 hitTestTileAtPoint:v24 padding:x passingTest:{y, top, left, bottom, right}];
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

- (id)_assetReferenceAtPoint:(CGPoint)a3 padding:(UIEdgeInsets)a4
{
  v11 = 0u;
  v12 = 0u;
  [(PXCMMAssetsViewController *)self _assetIndexPathAtLocation:a3.x padding:a3.y, a4.top, a4.left, a4.bottom, a4.right];
  if (*off_1E7721F68)
  {
    v6 = [(PXCMMComponentViewController *)self session];
    v7 = [v6 dataSourceManager];
    v8 = [v7 dataSource];

    v10[0] = v11;
    v10[1] = v12;
    v5 = [v8 assetReferenceAtItemIndexPath:v10];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_toggleAssetSelectionAtIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(PXCMMComponentViewController *)self session];
  v5 = [v4 viewModel];
  v6 = [v5 selectionManager];

  v7 = [v6 selectionSnapshot];
  v8 = *&a3->item;
  v15[0] = *&a3->dataSourceIdentifier;
  v15[1] = v8;
  v9 = [v7 isIndexPathSelected:v15];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PXCMMAssetsViewController__toggleAssetSelectionAtIndexPath___block_invoke;
  v11[3] = &__block_descriptor_65_e37_v16__0___PXMutableSelectionManager__8l;
  v14 = v9 ^ 1;
  v10 = *&a3->item;
  v12 = *&a3->dataSourceIdentifier;
  v13 = v10;
  [v6 performChanges:v11];
}

uint64_t __62__PXCMMAssetsViewController__toggleAssetSelectionAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  v5[0] = *(a1 + 32);
  v5[1] = v3;
  return [a2 setSelectedState:v2 forIndexPath:v5];
}

- (void)_handleSpaceBar:(id)a3
{
  v4 = [(PXCMMAssetsViewController *)self _focusedAssetReference];
  navigatedAssetReference = self->_navigatedAssetReference;
  self->_navigatedAssetReference = v4;

  if (self->_navigatedAssetReference)
  {
    v6 = [(PXCMMAssetsViewController *)self _oneUpPresentation];
    [v6 startWithConfigurationHandler:0];
  }
}

- (void)_handleLongPress:(id)a3
{
  v12 = a3;
  if ([v12 state] == 1)
  {
    v4 = [(PXUIScrollViewController *)self->_scrollViewController contentCoordinateSpace];
    [v12 px_locationInCoordinateSpace:v4];
    v6 = v5;
    v8 = v7;

    v9 = [(PXCMMAssetsViewController *)self _assetReferenceAtPoint:v6 padding:v8, *off_1E7721FA0, *(off_1E7721FA0 + 1), *(off_1E7721FA0 + 2), *(off_1E7721FA0 + 3)];
    navigatedAssetReference = self->_navigatedAssetReference;
    self->_navigatedAssetReference = v9;

    if (self->_navigatedAssetReference)
    {
      v11 = [(PXCMMAssetsViewController *)self _oneUpPresentation];
      [v11 startWithConfigurationHandler:0];
    }
  }
}

- (void)_handleTap:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [(PXCMMComponentViewController *)self session];
    v6 = [v5 viewModel];

    v7 = [v6 isSelecting];
    v8 = [v6 oneUpDisabled];
    v9 = self->_scrollViewController;
    v10 = [(PXUIScrollViewController *)v9 contentCoordinateSpace];
    [v4 px_locationInCoordinateSpace:v10];
    v12 = v11;
    v14 = v13;

    if (v7)
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
          v30 = [(PXTilingController *)self->_tilingController currentLayout];
          v29 = [v30 dataSource];
          v31 = v33;
          v32 = v34;
          v15 = [v29 assetAtItemIndexPath:&v31];
          v16 = [v15 mediaType];
          v17 = PXLocalizedAssetMessageForUsage(v16, 0, 2);
          v18 = PXLocalizedAssetMessageForUsage(v16, 0, 3);
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

    else if ((v8 & 1) == 0)
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
          v27 = [(PXCMMComponentViewController *)self session];
          v28 = [v27 dataSourceManager];
          customAssetSelectionHandler[2](customAssetSelectionHandler, v25, v28);
        }

        else
        {
          v27 = [(PXCMMAssetsViewController *)self _oneUpPresentation];
          [v27 startWithConfigurationHandler:0];
        }
      }
    }
  }
}

- (void)setActionInProgress:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__PXCMMAssetsViewController_setActionInProgress___block_invoke;
  aBlock[3] = &unk_1E774C648;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (self->_actionInProgress == v3)
  {
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_6:
    v5[2](v5);
    goto LABEL_8;
  }

  self->_actionInProgress = v3;
  v6 = [(PXCMMComponentViewController *)self session];
  v7 = [v6 activityType];

  if (v7 == 2)
  {
    if (!v3)
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
  v3 = [(PXCMMAssetsViewController *)self view];
  v4 = [v2 focusSystemForEnvironment:v3];
  v5 = [v4 focusedItem];

  v6 = [v5 parentFocusEnvironment];
  v7 = [v6 focusItemContainer];
  v8 = [v7 coordinateSpace];

  if (v8)
  {
    [v5 frame];
    PXRectGetCenter();
  }

  return 0;
}

- (void)_transitionLayoutGesture:(id)a3
{
  v4 = [(PXCMMAssetsViewController *)self _layoutType];
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A5382B08[v4];
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
    v5 = [(PXCMMAssetsViewController *)self view];
    [v5 addGestureRecognizer:self->_tapSelectionGesture];
  }

  if (!self->_longPressGesture)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__handleLongPress_];
    longPressGesture = self->_longPressGesture;
    self->_longPressGesture = v6;

    v8 = [(PXCMMAssetsViewController *)self view];
    [v8 addGestureRecognizer:self->_longPressGesture];
  }

  v9 = +[PXCompleteMyMomentSettings sharedInstance];
  v10 = [v9 allowSwipeSelection];

  if (v10)
  {
    swipeSelectionManager = self->_swipeSelectionManager;
    if (self->_userSelectionEnabled)
    {
      if (!swipeSelectionManager)
      {
        v12 = [off_1E77218F0 alloc];
        v13 = [(PXCMMComponentViewController *)self session];
        v14 = [v13 viewModel];
        v15 = [v14 selectionManager];
        v16 = [(PXUIScrollViewController *)self->_scrollViewController scrollView];
        v17 = [v12 initWithSelectionManager:v15 scrollView:v16];
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

  v23 = +[PXCompleteMyMomentSettings sharedInstance];
  if ([v23 allowLayoutTransitionGesture])
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
    v23 = [(PXCMMAssetsViewController *)self view];
    [v23 addGestureRecognizer:self->_layoutTransitionGesture];
  }
}

- (void)_updateStyle
{
  v4 = [(PXUIScrollViewController *)self->_scrollViewController scrollView];
  v3 = [(PXCMMSpec *)self->_spec reviewBackgroundColor];
  [v4 setBackgroundColor:v3];
}

- (id)_indexPathsForAssetReferences:(id)a3 inDataSource:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v8 = 0;
  if (v6 && v7)
  {
    v8 = objc_alloc_init(off_1E77217C8);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v5;
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
          [v6 indexPathForAssetReference:v14];
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

- (void)_setHiddenAssetReferences:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if ([(NSSet *)v4 count])
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
    v6 = [(PXAssetsScene *)self->_sceneController targetLayout];
    [(PXCMMAssetsViewController *)self _configureLayout:v6];

    v5 = v8;
  }
}

- (void)setUserSelectionEnabled:(BOOL)a3
{
  if (self->_userSelectionEnabled != a3)
  {
    self->_userSelectionEnabled = a3;
    [(PXCMMAssetsViewController *)self _invalidateLayoutGenerator];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updateGestures];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = a3;
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
  v4 = [(PXStatusController *)self->_statusController configuration];
  v5 = [v3 initWithConfiguration:v4];

  v6 = [[PXCMMTileReusableView alloc] initWithView:v5];

  return v6;
}

- (id)_createSectionHeaderController
{
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [PXCMMSectionHeaderController alloc];
  v5 = [v3 activityType];
  v6 = [v3 viewModel];
  momentShareStatusPresentationForFooter = self->_momentShareStatusPresentationForFooter;
  v8 = [v3 importStatusManager];
  v9 = [(PXCMMSectionHeaderController *)v4 initWithActivityType:v5 viewModel:v6 momentShareStatusPresentation:momentShareStatusPresentationForFooter importStatusManager:v8];

  return v9;
}

- (id)_createAddButton
{
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  v4 = [MEMORY[0x1E69DC738] buttonWithType:0];
  v5 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  [v4 setBackgroundColor:v5];

  v6 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setTintColor:v6];

  [v4 setImage:v3 forState:0];
  [v4 addTarget:self action:sel_addButtonTapped_ forControlEvents:64];
  v7 = [[PXCMMTileReusableView alloc] initWithView:v4];

  return v7;
}

- (id)_createBannerTileController
{
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [PXCMMBannerTileController alloc];
  v5 = [v3 activityType];
  v6 = [v3 sourceType];
  v7 = [v3 viewModel];
  momentShareStatusPresentationForPoster = self->_momentShareStatusPresentationForPoster;
  v9 = [v3 importStatusManager];
  v10 = [(PXCMMBannerTileController *)v4 initWithActivityType:v5 sourceType:v6 viewModel:v7 momentShareStatusPresentation:momentShareStatusPresentationForPoster importStatusManager:v9];

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
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [PXCMMPosterTileController alloc];
  v5 = [v3 activityType];
  v6 = [v3 viewModel];
  v7 = [(PXCMMPosterTileController *)v4 initWithActivityType:v5 viewModel:v6 momentShareStatusPresentation:self->_momentShareStatusPresentationForPoster];

  return v7;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXCMMAssetsViewController;
  [(PXCMMAssetsViewController *)&v4 viewDidDisappear:a3];
  [(PXUIScrollViewController *)self->_scrollViewController unregisterObserver:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXCMMAssetsViewController;
  [(PXCMMAssetsViewController *)&v4 viewWillAppear:a3];
  [(PXUIScrollViewController *)self->_scrollViewController registerObserver:self];
}

- (void)viewDidLoad
{
  v49[4] = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = PXCMMAssetsViewController;
  [(PXCMMAssetsViewController *)&v48 viewDidLoad];
  v3 = [(PXCMMAssetsViewController *)self view];
  [v3 bounds];
  self->_knownReferenceSize.width = v4;
  self->_knownReferenceSize.height = v5;

  [(PXUpdater *)self->_updater updateIfNeeded];
  v29 = [(PXCMMAssetsViewController *)self view];
  v30 = [(PXUIScrollViewController *)self->_scrollViewController scrollView];
  v6 = [(PXCMMSpec *)self->_spec reviewBackgroundColor];
  [v30 setBackgroundColor:v6];

  [v30 setAlwaysBounceVertical:1];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 setContentInsetAdjustmentBehavior:2];
  [v29 addSubview:v30];
  v24 = MEMORY[0x1E696ACD8];
  v28 = [v30 topAnchor];
  v27 = [v29 topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v49[0] = v26;
  v25 = [v30 leadingAnchor];
  v7 = [v29 leadingAnchor];
  v8 = [v25 constraintEqualToAnchor:v7];
  v49[1] = v8;
  v9 = [v30 trailingAnchor];
  v10 = [v29 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v49[2] = v11;
  v12 = [v30 bottomAnchor];
  v13 = [v29 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
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
    [v29 addSubview:self->_progressBannerView];
    v18 = [(PXCMMProgressBannerView *)self->_progressBannerView layer];
    [v18 setZPosition:1.0];

    [(PXCMMAssetsViewController *)self _updateProgressBannerViewVisibility];
    [(PXCMMAssetsViewController *)self _updateProgressBannerViewConstraints];
  }

  [(PXCMMAssetsViewController *)self _updateSelectionEnabled];
  v19 = [(PXCMMAssetsViewController *)self _oneUpPresentation];
  v20 = [v19 contextMenuInteraction];

  [v30 addInteraction:v20];
  v21 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@" " modifierFlags:0 action:sel__handleSpaceBar_];
  [(PXCMMAssetsViewController *)self addKeyCommand:v21];

  v22 = [(PXAssetsScene *)self->_sceneController viewTileReusePool];
  objc_initWeak(&location, self);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke;
  v45[3] = &unk_1E7744030;
  objc_copyWeak(&v46, &location);
  [v22 registerReusableObjectForReuseIdentifier:8870942 creationHandler:v45];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_2;
  v43[3] = &unk_1E7744030;
  objc_copyWeak(&v44, &location);
  [v22 registerReusableObjectForReuseIdentifier:8870946 creationHandler:v43];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_3;
  v41[3] = &unk_1E7744030;
  objc_copyWeak(&v42, &location);
  [v22 registerReusableObjectForReuseIdentifier:8870943 creationHandler:v41];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_4;
  v39[3] = &unk_1E7744030;
  objc_copyWeak(&v40, &location);
  [v22 registerReusableObjectForReuseIdentifier:8870944 creationHandler:v39];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_5;
  v37[3] = &unk_1E7744030;
  objc_copyWeak(&v38, &location);
  [v22 registerReusableObjectForReuseIdentifier:8870948 creationHandler:v37];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_6;
  v35[3] = &unk_1E7744030;
  objc_copyWeak(&v36, &location);
  [v22 registerReusableObjectForReuseIdentifier:8870947 creationHandler:v35];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_7;
  v33[3] = &unk_1E7744030;
  objc_copyWeak(&v34, &location);
  [v22 registerReusableObjectForReuseIdentifier:8870945 creationHandler:v33];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __40__PXCMMAssetsViewController_viewDidLoad__block_invoke_8;
  v31[3] = &unk_1E7744030;
  objc_copyWeak(&v32, &location);
  [v22 registerReusableObjectForReuseIdentifier:8870950 creationHandler:v31];
  v23 = [MEMORY[0x1E696AD88] defaultCenter];
  [v23 addObserver:self selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

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
  v2 = [(PXCMMAssetsViewController *)self viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)_deselectAllAssets
{
  v2 = [(PXCMMComponentViewController *)self session];
  v3 = [v2 viewModel];
  v4 = [v3 selectionManager];

  [v4 performChanges:&__block_literal_global_398];
}

- (void)_selectAllAssets
{
  v2 = [(PXCMMComponentViewController *)self session];
  v3 = [v2 viewModel];
  v4 = [v3 selectionManager];

  [v4 performChanges:&__block_literal_global_396];
}

- (BOOL)_areAllNotCopiedAssetsSelected
{
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [v3 viewModel];
  v5 = [v4 selectionManager];

  v6 = [(PXCMMComponentViewController *)self session];
  v7 = [v6 importStatusManager];

  v8 = [v5 selectionSnapshot];
  LOBYTE(v4) = [v8 areAllUnsavedAssetsSelectedWithImportStatusManager:v7];

  return v4;
}

- (void)_selectNonCopiedAssets
{
  v3 = [(PXCMMComponentViewController *)self session];
  v4 = [v3 viewModel];
  v7 = [v4 selectionManager];

  v5 = [(PXCMMComponentViewController *)self session];
  v6 = [v5 importStatusManager];

  [v7 selectNonCopiedAssetsWithImportStatusManager:v6];
}

- (void)_selectCuratedAssets
{
  v4 = [(PXCMMComponentViewController *)self session];
  v5 = [v4 viewModel];
  v6 = [v5 selectionManager];

  v7 = [v6 selectionSnapshot];
  v8 = [v7 dataSource];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v8 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:332 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"dataSourceSnapshot", v14, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PXCMMAssetsViewController.m" lineNumber:332 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"dataSourceSnapshot", v14}];
  }

LABEL_3:
  v9 = [off_1E77217C8 indexPathSet];
  if (v8)
  {
    [v8 firstItemIndexPath];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__PXCMMAssetsViewController__selectCuratedAssets__block_invoke;
  v19[3] = &unk_1E7744508;
  v10 = v8;
  v20 = v10;
  v11 = v9;
  v21 = v11;
  [v10 enumerateItemIndexPathsStartingAtIndexPath:v22 reverseDirection:0 usingBlock:v19];
  if ([v11 count])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__PXCMMAssetsViewController__selectCuratedAssets__block_invoke_2;
    v17[3] = &unk_1E7744008;
    v18 = v11;
    [v6 performChanges:v17];
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
    v3 = [(PXCMMComponentViewController *)self session];
    v4 = [v3 activityType];

    if (v4 == 2)
    {

      [(PXCMMAssetsViewController *)self _selectNonCopiedAssets];
    }

    else if (v4 == 1)
    {

      [(PXCMMAssetsViewController *)self _selectAllAssets];
    }
  }
}

- (void)_updateSelectionEnabled
{
  if (([(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentationForPoster state]& 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v3 = [(PXCMMComponentViewController *)self session];
    v4 = [v3 viewModel];

    [v4 performChanges:&__block_literal_global_204765];
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
    v3 = [(PXCMMComponentViewController *)self session];
    v33 = [v3 dataSourceManager];
    v4 = [v3 mediaProvider];
    v5 = [v3 viewModel];
    v6 = [v5 selectionManager];

    v7 = [(PXCMMAssetsViewController *)self _createNewLayout];
    v8 = [off_1E7721938 alloc];
    v9 = [(PXCMMAssetsViewController *)self view];
    [v9 bounds];
    v10 = [v8 initWithFrame:?];
    scrollViewController = self->_scrollViewController;
    self->_scrollViewController = v10;

    v12 = objc_alloc_init(PXBasicUIViewTileAnimator);
    tileAnimator = self->_tileAnimator;
    self->_tileAnimator = &v12->super;

    v14 = [[PXTilingController alloc] initWithLayout:v7];
    tilingController = self->_tilingController;
    self->_tilingController = v14;

    [(PXTilingController *)self->_tilingController setScrollController:self->_scrollViewController];
    [(PXTilingController *)self->_tilingController setTileAnimator:self->_tileAnimator];
    v16 = [[PXUIAssetsScene alloc] initWithTilingController:self->_tilingController mediaProvider:v4 dataSourceManager:v33 selectionManager:v6 delegate:self];
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
  v32 = [(PXUIScrollViewController *)self->_scrollViewController scrollView];
  [v32 setVerticalScrollIndicatorInsets:{v25, v27, v29, v31}];
}

- (CGSize)_maximumThumbnailSize
{
  v2 = [MEMORY[0x1E69BF248] defaultFormatChooser];
  v3 = [v2 masterThumbnailFormat];

  [v3 sizeWithFallBackSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (PXCMMAssetsViewController)initWithSession:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PXCMMAssetsViewController;
  v5 = [(PXCMMComponentViewController *)&v37 initWithSession:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    inUseTiles = v5->_inUseTiles;
    v5->_inUseTiles = v6;

    v8 = +[PXCompleteMyMomentSettings sharedInstance];
    v5->__layoutType = [v8 initialLayoutType];

    v5->_needsToPerformInitialSelection = 1;
    v9 = [v4 customAssetSelectionHandler];
    v10 = [v9 copy];
    customAssetSelectionHandler = v5->_customAssetSelectionHandler;
    v5->_customAssetSelectionHandler = v10;

    [(PXCMMAssetsViewController *)v5 px_enableExtendedTraitCollection];
    v12 = [(PXCMMAssetsViewController *)v5 px_extendedTraitCollection];
    v13 = -[PXCMMSpecManager initWithExtendedTraitCollection:activityType:]([PXCMMSpecManager alloc], "initWithExtendedTraitCollection:activityType:", v12, [v4 activityType]);
    specManager = v5->_specManager;
    v5->_specManager = v13;

    v15 = [(PXFeatureSpecManager *)v5->_specManager spec];
    spec = v5->_spec;
    v5->_spec = v15;

    [(PXCMMSpecManager *)v5->_specManager registerChangeObserver:v5 context:PXSpecManagerObservationContext_204654];
    v17 = [v4 viewModel];
    [v17 registerChangeObserver:v5 context:PXCMMViewModelObservationContext_204652];

    v18 = [v4 viewModel];
    v5->_userSelectionEnabled = [v18 isSelecting];

    v19 = [v4 momentShareStatusPresentationWithPresentationStyle:2];
    momentShareStatusPresentationForFooter = v5->_momentShareStatusPresentationForFooter;
    v5->_momentShareStatusPresentationForFooter = v19;

    [(PXMomentShareStatusPresentation *)v5->_momentShareStatusPresentationForFooter registerChangeObserver:v5 context:PXMomentShareStatusPresentationObservationContext_204653];
    if (v5->_momentShareStatusPresentationForFooter)
    {
      v21 = [[PXCMMFooterViewModel alloc] initWithMomentShareStatusPresentation:v5->_momentShareStatusPresentationForFooter mode:0];
      statusFooterViewModel = v5->_statusFooterViewModel;
      v5->_statusFooterViewModel = v21;
    }

    v23 = [v4 momentShareStatusPresentationWithPresentationStyle:1];
    momentShareStatusPresentationForPoster = v5->_momentShareStatusPresentationForPoster;
    v5->_momentShareStatusPresentationForPoster = v23;

    [(PXMomentShareStatusPresentation *)v5->_momentShareStatusPresentationForPoster registerChangeObserver:v5 context:PXMomentShareStatusPresentationObservationContext_204653];
    v25 = [v4 viewModel];
    v26 = [v25 selectionManager];

    [v26 registerChangeObserver:v5 context:PXSelectionManagerObservationContext_204655];
    v27 = objc_alloc_init(off_1E77218E0);
    statusController = v5->_statusController;
    v5->_statusController = v27;

    [(PXStatusController *)v5->_statusController setDelegate:v5];
    if (v5->_momentShareStatusPresentationForFooter)
    {
      v29 = [PXCMMStatusController alloc];
      v30 = v5->_momentShareStatusPresentationForFooter;
      v31 = [(PXStatusController *)v5->_statusController viewModel];
      v32 = [(PXCMMStatusController *)v29 initWithStatusPresentation:v30 viewModel:v31];
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