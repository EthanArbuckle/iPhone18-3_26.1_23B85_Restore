@interface PXPhotosViewUIInteractionHelper
- (BOOL)handlePresentingPinchGestureRecognizer:(id)a3 forViewInteraction:(id)a4;
- (BOOL)isContextMenuInteractionActiveForViewInteraction:(id)a3;
- (BOOL)oneUpPresentation:(id)a3 allowsActionsForContextMenuInteraction:(id)a4;
- (BOOL)oneUpPresentation:(id)a3 allowsMultiSelectMenuForInteraction:(id)a4;
- (BOOL)oneUpPresentation:(id)a3 allowsPreviewCommittingForContextMenuInteraction:(id)a4;
- (BOOL)oneUpPresentation:(id)a3 canStartPreviewingForContextMenuInteraction:(id)a4;
- (BOOL)oneUpPresentation:(id)a3 commitPreviewForContextMenuInteraction:(id)a4;
- (BOOL)oneUpPresentationShouldDisableAutoPlayback:(id)a3;
- (BOOL)oneUpPresentationShouldPreventShowInAllPhotosAction:(id)a3;
- (BOOL)oneUpPresentationWantsShowInLibraryButton:(id)a3;
- (BOOL)presentOneUpForAssetReference:(id)a3 configurationHandler:(id)a4;
- (BOOL)presentOneUpForAssetReference:(id)a3 configurationHandler:(id)a4 completionHandler:(id)a5;
- (BOOL)presentOneUpForAssetReference:(id)a3 style:(int64_t)a4;
- (PXPhotosViewUIInteraction)interaction;
- (PXPhotosViewUIInteractionHelper)init;
- (PXPhotosViewUIInteractionHelper)initWithInteraction:(id)a3 viewModel:(id)a4;
- (id)_createActionManagerForNavigatedAssetReferenceUsingSectionDataSource:(BOOL)a3;
- (id)_createSelectionManagerForNavigatedAssetSection;
- (id)_targetedPreviewForSecondaryAssetReference:(id)a3;
- (id)contextMenuInteractionForViewInteraction:(id)a3;
- (id)oneUpPresentation:(id)a3 accessoriesForContextMenuInteraction:(id)a4 configuration:(id)a5;
- (id)oneUpPresentation:(id)a3 currentImageForAssetReference:(id)a4;
- (id)oneUpPresentation:(id)a3 presentingScrollViewForAssetReference:(id)a4;
- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4;
- (id)oneUpPresentation:(id)a3 secondaryIdentifiersForConfiguration:(id)a4;
- (id)oneUpPresentation:(id)a3 styleForContextMenuInteraction:(id)a4 configuration:(id)a5;
- (id)oneUpPresentationActionManager:(id)a3;
- (id)oneUpPresentationActionManagerForPreviewing:(id)a3;
- (id)oneUpPresentationContextualVideoThumbnailIdentifier:(id)a3;
- (id)oneUpPresentationDataSourceManager:(id)a3;
- (id)oneUpPresentationInitialAssetReference:(id)a3;
- (id)oneUpPresentationMediaProvider:(id)a3;
- (id)oneUpPresentationPrivacyController:(id)a3;
- (id)oneUpPresentationSearchQueryMatchInfo:(id)a3;
- (int64_t)oneUpPresentationActionContext:(id)a3;
- (int64_t)oneUpPresentationOrigin:(id)a3;
- (void)didMakeInteractiveSelectionChangeForInteraction:(id)a3;
- (void)didSetupGesturesForInteraction:(id)a3;
- (void)navigatedSectionDataSourceManagerDidChangeForInteraction:(id)a3;
- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4;
- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4;
- (void)oneUpPresentation:(id)a3 willEndPreviewingForContextMenuInteraction:(id)a4 configuration:(id)a5;
- (void)preventTargetedContextMenuDismissalAnimationForViewInteraction:(id)a3;
- (void)scrollViewControllerDidChangeForInteraction:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)setOneUpPresentation:(id)a3;
@end

@implementation PXPhotosViewUIInteractionHelper

- (PXPhotosViewUIInteraction)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);

  return WeakRetained;
}

- (id)_targetedPreviewForSecondaryAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v6 = [v5 selectionManager];
  v7 = [v6 selectionSnapshot];

  v8 = [v7 dataSource];
  v9 = v8;
  if (v4)
  {
    v10 = [v8 assetReferenceForAssetReference:v4];
    v11 = v10;
    if (v10)
    {
      [v10 indexPath];
      if ([v7 isIndexPathSelected:&v15])
      {
        v12 = [(PXPhotosViewUIInteractionHelper *)self interaction];
        v13 = [v12 targetedPreviewForAssetReference:v11];

        goto LABEL_7;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)oneUpPresentation:(id)a3 secondaryIdentifiersForConfiguration:(id)a4
{
  v5 = [(PXPhotosViewUIInteractionHelper *)self viewModel:a3];
  if ([v5 isInSelectMode] && objc_msgSend(v5, "allowsMultiSelectMenu"))
  {
    v6 = [v5 selectionManager];
    v7 = [v6 selectionSnapshot];

    v8 = [v7 dataSource];
    v9 = [(PXPhotosViewUIInteractionHelper *)self interaction];
    v10 = [v9 navigatedAssetReference];

    v21 = 0u;
    v22 = 0u;
    if (v10)
    {
      if (v8)
      {
        [v8 indexPathForAssetReference:v10];
      }
    }

    else
    {
      v12 = *(off_1E7722228 + 1);
      v21 = *off_1E7722228;
      v22 = v12;
    }

    v13 = [v7 selectedIndexPaths];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20[0] = v21;
    v20[1] = v22;
    if ([v13 containsIndexPath:v20])
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __90__PXPhotosViewUIInteractionHelper_oneUpPresentation_secondaryIdentifiersForConfiguration___block_invoke;
      v15[3] = &unk_1E7733920;
      v18 = v21;
      v19 = v22;
      v16 = v8;
      v17 = v11;
      [v13 enumerateAllIndexPathsUsingBlock:v15];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __90__PXPhotosViewUIInteractionHelper_oneUpPresentation_secondaryIdentifiersForConfiguration___block_invoke(uint64_t a1, int64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a2, *(a1 + 48)), vceqq_s64(a2[1], *(a1 + 64))))) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = a2[1];
    v6[0] = *a2;
    v6[1] = v4;
    v5 = [v3 assetReferenceAtItemIndexPath:v6];
    [*(a1 + 40) addObject:v5];
  }
}

- (id)oneUpPresentationContextualVideoThumbnailIdentifier:(id)a3
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v5 = [v4 navigatedAssetReference];

  v6 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v7 = [v6 searchContextualVideoThumbnailIdentifiers];
  if (![v7 count])
  {
    v12 = 0;
    goto LABEL_5;
  }

  v8 = [v5 asset];
  v9 = [v8 uuid];

  if (v9)
  {
    v6 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
    v7 = [v6 searchContextualVideoThumbnailIdentifiers];
    v10 = [v5 asset];
    v11 = [v10 uuid];
    v12 = [v7 objectForKeyedSubscript:v11];

LABEL_5:
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)oneUpPresentationSearchQueryMatchInfo:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v4 = [v3 searchQueryMatchInfo];

  return v4;
}

- (BOOL)oneUpPresentationWantsShowInLibraryButton:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v4 = [v3 wantsOneUpShowInLibraryButton];

  return v4;
}

- (BOOL)oneUpPresentationShouldPreventShowInAllPhotosAction:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v4 = [v3 preventShowInAllPhotosAction];

  return v4;
}

- (int64_t)oneUpPresentationActionContext:(id)a3
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v5 = [v4 allowsCMMActions];

  if (v5)
  {
    return 4;
  }

  v7 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v8 = [v7 allowsPickAssetAction];

  if (v8)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (id)oneUpPresentation:(id)a3 presentingScrollViewForAssetReference:(id)a4
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self interaction:a3];
  v5 = [v4 scrollView];

  return v5;
}

- (id)oneUpPresentationActionManagerForPreviewing:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v4 = [v3 createContextMenuActionManagerForNavigatedPreviewAssetReference];

  return v4;
}

- (id)oneUpPresentationActionManager:(id)a3
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v5 = [v4 oneUpAssetsViewMode] != 0;

  return [(PXPhotosViewUIInteractionHelper *)self _createActionManagerForNavigatedAssetReferenceUsingSectionDataSource:v5];
}

- (void)oneUpPresentation:(id)a3 setHiddenAssetReferences:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  [v6 setHiddenAssetReferences:v5];
}

- (void)oneUpPresentation:(id)a3 scrollAssetReferenceToVisible:(id)a4
{
  v10 = a4;
  v5 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 adjustOneUpAssetReferenceToScrollToVisible:v10];

    v8 = v7;
  }

  else
  {
    v8 = v10;
  }

  v11 = v8;
  if (v8)
  {
    v9 = [v6 contentController];
    [v9 scrollToRevealAssetReference:v11 completionHandler:0];

    [v6 setNavigatedAssetReference:v11];
  }
}

- (id)oneUpPresentation:(id)a3 currentImageForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v11 = 0;
  v7 = [v6 regionOfInterestForAssetReference:v5 image:&v11];
  v8 = v11;
  v9 = v11;

  return v8;
}

- (id)oneUpPresentation:(id)a3 regionOfInterestForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [v6 regionOfInterestForAssetReference:v5 image:0];

  return v7;
}

- (id)oneUpPresentation:(id)a3 styleForContextMenuInteraction:(id)a4 configuration:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v10 = [v9 allowsAccessoriesContextMenuCustomization];

  if (v10)
  {
    v11 = [(PXPhotosViewUIInteractionHelper *)self interaction];
    v12 = [v11 _contextMenuInteraction:v7 styleForMenuWithConfiguration:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)oneUpPresentation:(id)a3 accessoriesForContextMenuInteraction:(id)a4 configuration:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v10 = [v9 allowsAccessoriesContextMenuCustomization];

  if (v10)
  {
    v11 = [(PXPhotosViewUIInteractionHelper *)self interaction];
    v12 = [v11 _contextMenuInteraction:v7 accessoriesForMenuWithConfiguration:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)oneUpPresentation:(id)a3 willEndPreviewingForContextMenuInteraction:(id)a4 configuration:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  [v8 willEndPreviewingForContextMenuInteraction:v12];

  v9 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v10 = [v9 allowsAccessoriesContextMenuCustomization];

  if (v10)
  {
    v11 = [(PXPhotosViewUIInteractionHelper *)self interaction];
    [v11 contextMenuInteraction:v12 willEndForConfiguration:v7 animator:0];
  }
}

- (BOOL)oneUpPresentation:(id)a3 commitPreviewForContextMenuInteraction:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [v6 commitPreviewForContextMenuInteraction:v5];

  return v7;
}

- (BOOL)oneUpPresentation:(id)a3 allowsPreviewCommittingForContextMenuInteraction:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [v6 allowsPreviewCommittingForContextMenuInteraction:v5];

  return v7;
}

- (BOOL)oneUpPresentation:(id)a3 allowsMultiSelectMenuForInteraction:(id)a4
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self viewModel:a3];
  if ([v4 allowsMultiSelectMenu])
  {
    v5 = [v4 isInSelectMode];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)oneUpPresentationShouldDisableAutoPlayback:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v4 = [v3 disableAutoPlaybackInOneUp];

  return v4;
}

- (BOOL)oneUpPresentation:(id)a3 allowsActionsForContextMenuInteraction:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [v6 allowsActionsForContextMenuInteraction:v5];

  return v7;
}

- (BOOL)oneUpPresentation:(id)a3 canStartPreviewingForContextMenuInteraction:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [v6 canStartContextMenuInteraction:v5];

  return v7;
}

- (id)oneUpPresentationInitialAssetReference:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v4 = [v3 navigatedAssetReference];

  return v4;
}

- (id)oneUpPresentationPrivacyController:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v4 = [v3 privacyController];

  return v4;
}

- (id)oneUpPresentationMediaProvider:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v4 = [v3 mediaProvider];

  return v4;
}

- (id)oneUpPresentationDataSourceManager:(id)a3
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  if ([v4 oneUpAssetsViewMode])
  {
    v5 = [(PXPhotosViewUIInteractionHelper *)self interaction];
    v6 = [v5 navigatedAssetSectionDataSourceManager];
  }

  else
  {
    v6 = [v4 dataSourceManager];
  }

  return v6;
}

- (int64_t)oneUpPresentationOrigin:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v4 = [v3 oneUpPresentationOrigin];

  return v4;
}

- (BOOL)presentOneUpForAssetReference:(id)a3 configurationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v9 = [v8 viewDelegateRespondsTo:0x80000];

  if (v9)
  {
    v10 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
    v11 = [v10 viewDelegate];
    v12 = [(PXPhotosViewUIInteractionHelper *)self interaction];
    v13 = [v12 presentingViewController];
    [v11 photosViewController:v13 didPresentOneUp:1 forAsset:v6];
  }

  v14 = [(PXPhotosViewUIInteractionHelper *)self presentOneUpForAssetReference:v6 configurationHandler:v7 completionHandler:0];

  return v14;
}

- (BOOL)presentOneUpForAssetReference:(id)a3 configurationHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  v12 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v13 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  [(PXPhotosViewUIInteractionHelper *)self setSensitivityInterventionManager:0];
  v14 = [v8 asset];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  v15 = [v8 asset];
  v16 = [v15 isContentAnalyzedAsPreviewable];

  if (v16)
  {
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v17 = [PXSensitivityInterventionManager alloc];
  v18 = [v8 asset];
  v19 = [(PXSensitivityInterventionManager *)v17 initWithAsset:v18 interventionType:0];

  [(PXPhotosViewUIInteractionHelper *)self setSensitivityInterventionManager:v19];
  if (v19)
  {
    v20 = [(PXSensitivityInterventionManager *)v19 viewControllerToPresent];

    if (v20)
    {
      v21 = [v13 presentingViewController];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __104__PXPhotosViewUIInteractionHelper_presentOneUpForAssetReference_configurationHandler_completionHandler___block_invoke;
      v24[3] = &unk_1E774B308;
      v24[4] = self;
      [(PXSensitivityInterventionManager *)v19 presentFromViewController:v21 completionHandler:v24];

LABEL_12:
      v22 = 0;
      goto LABEL_13;
    }
  }

LABEL_8:
  if (![v12 canPresentOneUp])
  {
    goto LABEL_12;
  }

  [v13 setNavigatedAssetReference:v8];
  if ([v12 oneUpAssetsViewMode] == 2)
  {
    if (v10)
    {
      v10[2](v10, 0);
    }

    goto LABEL_12;
  }

  v22 = [v11 startWithConfigurationHandler:v9];
  if ((v22 & 1) == 0)
  {
    [v13 setNavigatedAssetReference:0];
  }

  if (v10)
  {
    [v11 waitForTransitionToFinishWithTimeout:v10 completionHandler:5.0];
  }

LABEL_13:

  return v22;
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  [v3 invalidatePresentingGeometry];
}

- (void)didMakeInteractiveSelectionChangeForInteraction:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v6 = [v3 presentingViewController];

  v4 = [v6 px_splitViewController];
  v5 = v4;
  if (v4)
  {
    [v4 requestFocusUpdateWithPreferredFocusEnvironment:v6];
  }
}

- (void)navigatedSectionDataSourceManagerDidChangeForInteraction:(id)a3
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v5 = [v4 navigatedAssetSectionDataSourceManager];
  v6 = [v5 dataSource];
  v7 = [v6 containsAnyItems];

  if (v7)
  {
    v10 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
    if ([v10 oneUpAssetsViewMode] == 2)
    {
      v8 = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
      if ([v10 canPresentOneUp] && !objc_msgSend(v8, "state") && (objc_msgSend(v8, "startWithConfigurationHandler:", 0) & 1) == 0)
      {
        v9 = [(PXPhotosViewUIInteractionHelper *)self interaction];
        [v9 setNavigatedAssetReference:0];
      }
    }
  }

  else
  {
    v10 = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
    [v10 stopAnimated:1];
  }
}

- (void)scrollViewControllerDidChangeForInteraction:(id)a3
{
  v4 = [a3 scrollViewController];
  [v4 registerObserver:self];
}

- (void)didSetupGesturesForInteraction:(id)a3
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];

  if (!v4)
  {
    v7 = [(PXPhotosViewUIInteractionHelper *)self interaction];
    v5 = [v7 presentingViewController];
    v6 = [v5 px_oneUpPresentation];
    [(PXPhotosViewUIInteractionHelper *)self setOneUpPresentation:v6];
  }
}

- (void)preventTargetedContextMenuDismissalAnimationForViewInteraction:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  [v3 preventTargetedContextMenuDismissalAnimation];
}

- (BOOL)handlePresentingPinchGestureRecognizer:(id)a3 forViewInteraction:(id)a4
{
  v5 = a3;
  v6 = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  v7 = [v6 handlePresentingPinchGestureRecognizer:v5];

  return v7;
}

- (BOOL)isContextMenuInteractionActiveForViewInteraction:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  v4 = [v3 isContextMenuInteractionActive];

  return v4;
}

- (id)contextMenuInteractionForViewInteraction:(id)a3
{
  v3 = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  v4 = [v3 contextMenuInteraction];

  return v4;
}

- (BOOL)presentOneUpForAssetReference:(id)a3 style:(int64_t)a4
{
  v7 = a3;
  v8 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v9 = [v8 canPresentOneUp];

  if (v9)
  {
    if (a4 == 2)
    {
      v12 = &__block_literal_global_21;
    }

    else
    {
      if (a4 != 1)
      {
        if (a4)
        {
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteractionHelper.m" lineNumber:123 description:{@"Unknown 1up presentation style %ld", a4}];

          abort();
        }

        v10 = self;
        v11 = v7;
        v12 = 0;
        goto LABEL_10;
      }

      v12 = &__block_literal_global_19_59098;
    }

    v10 = self;
    v11 = v7;
LABEL_10:
    v13 = [(PXPhotosViewUIInteractionHelper *)v10 presentOneUpForAssetReference:v11 configurationHandler:v12];
    goto LABEL_11;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_createActionManagerForNavigatedAssetReferenceUsingSectionDataSource:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v6 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [v6 navigatedAssetReference];
  if (!v7)
  {
    PXAssertGetLog();
  }

  v8 = [v5 assetActionManager];
  if (v3)
  {
    v9 = [(PXPhotosViewUIInteractionHelper *)self _createSelectionManagerForNavigatedAssetSection];
    v10 = [objc_alloc(objc_opt_class()) initWithSelectionManager:v9];
  }

  else
  {
    v11 = objc_alloc(objc_opt_class());
    v9 = [v5 dataSourceManager];
    v10 = [v11 initWithSelectedObjectReference:v7 dataSourceManager:v9];
  }

  v12 = v10;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setSupportsAirPlay:1];
  }

  [v12 setPerformerDelegate:v6];
  v13 = [v8 allowedActionTypes];
  [v12 setAllowedActionTypes:v13];

  [v12 setAdditionalPropertiesFromActionManager:v8];

  return v12;
}

- (id)_createSelectionManagerForNavigatedAssetSection
{
  v3 = [off_1E77218C8 alloc];
  v4 = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v5 = [v4 navigatedAssetSectionDataSourceManager];
  v6 = [v3 initWithDataSourceManager:v5];

  [v6 performChanges:&__block_literal_global_59111];

  return v6;
}

- (void)setOneUpPresentation:(id)a3
{
  v5 = a3;
  if (self->_oneUpPresentation != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_oneUpPresentation, a3);
    [(PXOneUpPresentation *)v7 setDelegate:self];
    v6 = [(PXPhotosViewUIInteractionHelper *)self interaction];
    [v6 invalidateContextMenuInteraction];

    v5 = v7;
  }
}

- (PXPhotosViewUIInteractionHelper)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteractionHelper.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXPhotosViewUIInteractionHelper init]"}];

  abort();
}

- (PXPhotosViewUIInteractionHelper)initWithInteraction:(id)a3 viewModel:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PXPhotosViewUIInteractionHelper;
  v9 = [(PXPhotosViewUIInteractionHelper *)&v17 init];
  if (v9)
  {
    v10 = v7;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        objc_storeWeak(&v9->_interaction, v10);
        objc_storeStrong(&v9->_viewModel, a4);

        goto LABEL_5;
      }

      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v14 = NSStringFromClass(v15);
      v16 = [v10 px_descriptionForAssertionMessage];
      [v12 handleFailureInMethod:a2 object:v9 file:@"PXPhotosViewUIInteractionHelper.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"interaction", v14, v16}];
    }

    else
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 handleFailureInMethod:a2 object:v9 file:@"PXPhotosViewUIInteractionHelper.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"interaction", v14}];
    }

    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

@end