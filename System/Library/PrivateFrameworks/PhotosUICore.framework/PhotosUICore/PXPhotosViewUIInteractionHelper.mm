@interface PXPhotosViewUIInteractionHelper
- (BOOL)handlePresentingPinchGestureRecognizer:(id)recognizer forViewInteraction:(id)interaction;
- (BOOL)isContextMenuInteractionActiveForViewInteraction:(id)interaction;
- (BOOL)oneUpPresentation:(id)presentation allowsActionsForContextMenuInteraction:(id)interaction;
- (BOOL)oneUpPresentation:(id)presentation allowsMultiSelectMenuForInteraction:(id)interaction;
- (BOOL)oneUpPresentation:(id)presentation allowsPreviewCommittingForContextMenuInteraction:(id)interaction;
- (BOOL)oneUpPresentation:(id)presentation canStartPreviewingForContextMenuInteraction:(id)interaction;
- (BOOL)oneUpPresentation:(id)presentation commitPreviewForContextMenuInteraction:(id)interaction;
- (BOOL)oneUpPresentationShouldDisableAutoPlayback:(id)playback;
- (BOOL)oneUpPresentationShouldPreventShowInAllPhotosAction:(id)action;
- (BOOL)oneUpPresentationWantsShowInLibraryButton:(id)button;
- (BOOL)presentOneUpForAssetReference:(id)reference configurationHandler:(id)handler;
- (BOOL)presentOneUpForAssetReference:(id)reference configurationHandler:(id)handler completionHandler:(id)completionHandler;
- (BOOL)presentOneUpForAssetReference:(id)reference style:(int64_t)style;
- (PXPhotosViewUIInteraction)interaction;
- (PXPhotosViewUIInteractionHelper)init;
- (PXPhotosViewUIInteractionHelper)initWithInteraction:(id)interaction viewModel:(id)model;
- (id)_createActionManagerForNavigatedAssetReferenceUsingSectionDataSource:(BOOL)source;
- (id)_createSelectionManagerForNavigatedAssetSection;
- (id)_targetedPreviewForSecondaryAssetReference:(id)reference;
- (id)contextMenuInteractionForViewInteraction:(id)interaction;
- (id)oneUpPresentation:(id)presentation accessoriesForContextMenuInteraction:(id)interaction configuration:(id)configuration;
- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference;
- (id)oneUpPresentation:(id)presentation presentingScrollViewForAssetReference:(id)reference;
- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference;
- (id)oneUpPresentation:(id)presentation secondaryIdentifiersForConfiguration:(id)configuration;
- (id)oneUpPresentation:(id)presentation styleForContextMenuInteraction:(id)interaction configuration:(id)configuration;
- (id)oneUpPresentationActionManager:(id)manager;
- (id)oneUpPresentationActionManagerForPreviewing:(id)previewing;
- (id)oneUpPresentationContextualVideoThumbnailIdentifier:(id)identifier;
- (id)oneUpPresentationDataSourceManager:(id)manager;
- (id)oneUpPresentationInitialAssetReference:(id)reference;
- (id)oneUpPresentationMediaProvider:(id)provider;
- (id)oneUpPresentationPrivacyController:(id)controller;
- (id)oneUpPresentationSearchQueryMatchInfo:(id)info;
- (int64_t)oneUpPresentationActionContext:(id)context;
- (int64_t)oneUpPresentationOrigin:(id)origin;
- (void)didMakeInteractiveSelectionChangeForInteraction:(id)interaction;
- (void)didSetupGesturesForInteraction:(id)interaction;
- (void)navigatedSectionDataSourceManagerDidChangeForInteraction:(id)interaction;
- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible;
- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references;
- (void)oneUpPresentation:(id)presentation willEndPreviewingForContextMenuInteraction:(id)interaction configuration:(id)configuration;
- (void)preventTargetedContextMenuDismissalAnimationForViewInteraction:(id)interaction;
- (void)scrollViewControllerDidChangeForInteraction:(id)interaction;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)setOneUpPresentation:(id)presentation;
@end

@implementation PXPhotosViewUIInteractionHelper

- (PXPhotosViewUIInteraction)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_interaction);

  return WeakRetained;
}

- (id)_targetedPreviewForSecondaryAssetReference:(id)reference
{
  referenceCopy = reference;
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  dataSource = [selectionSnapshot dataSource];
  v9 = dataSource;
  if (referenceCopy)
  {
    v10 = [dataSource assetReferenceForAssetReference:referenceCopy];
    v11 = v10;
    if (v10)
    {
      [v10 indexPath];
      if ([selectionSnapshot isIndexPathSelected:&v15])
      {
        interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
        v13 = [interaction targetedPreviewForAssetReference:v11];

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

- (id)oneUpPresentation:(id)presentation secondaryIdentifiersForConfiguration:(id)configuration
{
  v5 = [(PXPhotosViewUIInteractionHelper *)self viewModel:presentation];
  if ([v5 isInSelectMode] && objc_msgSend(v5, "allowsMultiSelectMenu"))
  {
    selectionManager = [v5 selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];

    dataSource = [selectionSnapshot dataSource];
    interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
    navigatedAssetReference = [interaction navigatedAssetReference];

    v21 = 0u;
    v22 = 0u;
    if (navigatedAssetReference)
    {
      if (dataSource)
      {
        [dataSource indexPathForAssetReference:navigatedAssetReference];
      }
    }

    else
    {
      v12 = *(off_1E7722228 + 1);
      v21 = *off_1E7722228;
      v22 = v12;
    }

    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v20[0] = v21;
    v20[1] = v22;
    if ([selectedIndexPaths containsIndexPath:v20])
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __90__PXPhotosViewUIInteractionHelper_oneUpPresentation_secondaryIdentifiersForConfiguration___block_invoke;
      v15[3] = &unk_1E7733920;
      v18 = v21;
      v19 = v22;
      v16 = dataSource;
      v17 = v11;
      [selectedIndexPaths enumerateAllIndexPathsUsingBlock:v15];
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

- (id)oneUpPresentationContextualVideoThumbnailIdentifier:(id)identifier
{
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  navigatedAssetReference = [interaction navigatedAssetReference];

  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  searchContextualVideoThumbnailIdentifiers = [viewModel searchContextualVideoThumbnailIdentifiers];
  if (![searchContextualVideoThumbnailIdentifiers count])
  {
    v12 = 0;
    goto LABEL_5;
  }

  asset = [navigatedAssetReference asset];
  uuid = [asset uuid];

  if (uuid)
  {
    viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
    searchContextualVideoThumbnailIdentifiers = [viewModel searchContextualVideoThumbnailIdentifiers];
    asset2 = [navigatedAssetReference asset];
    uuid2 = [asset2 uuid];
    v12 = [searchContextualVideoThumbnailIdentifiers objectForKeyedSubscript:uuid2];

LABEL_5:
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (id)oneUpPresentationSearchQueryMatchInfo:(id)info
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  searchQueryMatchInfo = [viewModel searchQueryMatchInfo];

  return searchQueryMatchInfo;
}

- (BOOL)oneUpPresentationWantsShowInLibraryButton:(id)button
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  wantsOneUpShowInLibraryButton = [viewModel wantsOneUpShowInLibraryButton];

  return wantsOneUpShowInLibraryButton;
}

- (BOOL)oneUpPresentationShouldPreventShowInAllPhotosAction:(id)action
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  preventShowInAllPhotosAction = [viewModel preventShowInAllPhotosAction];

  return preventShowInAllPhotosAction;
}

- (int64_t)oneUpPresentationActionContext:(id)context
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  allowsCMMActions = [viewModel allowsCMMActions];

  if (allowsCMMActions)
  {
    return 4;
  }

  viewModel2 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  allowsPickAssetAction = [viewModel2 allowsPickAssetAction];

  if (allowsPickAssetAction)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (id)oneUpPresentation:(id)presentation presentingScrollViewForAssetReference:(id)reference
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self interaction:presentation];
  scrollView = [v4 scrollView];

  return scrollView;
}

- (id)oneUpPresentationActionManagerForPreviewing:(id)previewing
{
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  createContextMenuActionManagerForNavigatedPreviewAssetReference = [interaction createContextMenuActionManagerForNavigatedPreviewAssetReference];

  return createContextMenuActionManagerForNavigatedPreviewAssetReference;
}

- (id)oneUpPresentationActionManager:(id)manager
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v5 = [viewModel oneUpAssetsViewMode] != 0;

  return [(PXPhotosViewUIInteractionHelper *)self _createActionManagerForNavigatedAssetReferenceUsingSectionDataSource:v5];
}

- (void)oneUpPresentation:(id)presentation setHiddenAssetReferences:(id)references
{
  referencesCopy = references;
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  [interaction setHiddenAssetReferences:referencesCopy];
}

- (void)oneUpPresentation:(id)presentation scrollAssetReferenceToVisible:(id)visible
{
  visibleCopy = visible;
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v6 = interaction;
  if (interaction)
  {
    v7 = [interaction adjustOneUpAssetReferenceToScrollToVisible:visibleCopy];

    v8 = v7;
  }

  else
  {
    v8 = visibleCopy;
  }

  v11 = v8;
  if (v8)
  {
    contentController = [v6 contentController];
    [contentController scrollToRevealAssetReference:v11 completionHandler:0];

    [v6 setNavigatedAssetReference:v11];
  }
}

- (id)oneUpPresentation:(id)presentation currentImageForAssetReference:(id)reference
{
  referenceCopy = reference;
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v11 = 0;
  v7 = [interaction regionOfInterestForAssetReference:referenceCopy image:&v11];
  v8 = v11;
  v9 = v11;

  return v8;
}

- (id)oneUpPresentation:(id)presentation regionOfInterestForAssetReference:(id)reference
{
  referenceCopy = reference;
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [interaction regionOfInterestForAssetReference:referenceCopy image:0];

  return v7;
}

- (id)oneUpPresentation:(id)presentation styleForContextMenuInteraction:(id)interaction configuration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  allowsAccessoriesContextMenuCustomization = [viewModel allowsAccessoriesContextMenuCustomization];

  if (allowsAccessoriesContextMenuCustomization)
  {
    interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
    v12 = [interaction _contextMenuInteraction:interactionCopy styleForMenuWithConfiguration:configurationCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)oneUpPresentation:(id)presentation accessoriesForContextMenuInteraction:(id)interaction configuration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  allowsAccessoriesContextMenuCustomization = [viewModel allowsAccessoriesContextMenuCustomization];

  if (allowsAccessoriesContextMenuCustomization)
  {
    interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
    v12 = [interaction _contextMenuInteraction:interactionCopy accessoriesForMenuWithConfiguration:configurationCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)oneUpPresentation:(id)presentation willEndPreviewingForContextMenuInteraction:(id)interaction configuration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  [interaction willEndPreviewingForContextMenuInteraction:interactionCopy];

  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  allowsAccessoriesContextMenuCustomization = [viewModel allowsAccessoriesContextMenuCustomization];

  if (allowsAccessoriesContextMenuCustomization)
  {
    interaction2 = [(PXPhotosViewUIInteractionHelper *)self interaction];
    [interaction2 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:0];
  }
}

- (BOOL)oneUpPresentation:(id)presentation commitPreviewForContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [interaction commitPreviewForContextMenuInteraction:interactionCopy];

  return v7;
}

- (BOOL)oneUpPresentation:(id)presentation allowsPreviewCommittingForContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [interaction allowsPreviewCommittingForContextMenuInteraction:interactionCopy];

  return v7;
}

- (BOOL)oneUpPresentation:(id)presentation allowsMultiSelectMenuForInteraction:(id)interaction
{
  v4 = [(PXPhotosViewUIInteractionHelper *)self viewModel:presentation];
  if ([v4 allowsMultiSelectMenu])
  {
    isInSelectMode = [v4 isInSelectMode];
  }

  else
  {
    isInSelectMode = 0;
  }

  return isInSelectMode;
}

- (BOOL)oneUpPresentationShouldDisableAutoPlayback:(id)playback
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  disableAutoPlaybackInOneUp = [viewModel disableAutoPlaybackInOneUp];

  return disableAutoPlaybackInOneUp;
}

- (BOOL)oneUpPresentation:(id)presentation allowsActionsForContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [interaction allowsActionsForContextMenuInteraction:interactionCopy];

  return v7;
}

- (BOOL)oneUpPresentation:(id)presentation canStartPreviewingForContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  v7 = [interaction canStartContextMenuInteraction:interactionCopy];

  return v7;
}

- (id)oneUpPresentationInitialAssetReference:(id)reference
{
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  navigatedAssetReference = [interaction navigatedAssetReference];

  return navigatedAssetReference;
}

- (id)oneUpPresentationPrivacyController:(id)controller
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  privacyController = [viewModel privacyController];

  return privacyController;
}

- (id)oneUpPresentationMediaProvider:(id)provider
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  mediaProvider = [viewModel mediaProvider];

  return mediaProvider;
}

- (id)oneUpPresentationDataSourceManager:(id)manager
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  if ([viewModel oneUpAssetsViewMode])
  {
    interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
    navigatedAssetSectionDataSourceManager = [interaction navigatedAssetSectionDataSourceManager];
  }

  else
  {
    navigatedAssetSectionDataSourceManager = [viewModel dataSourceManager];
  }

  return navigatedAssetSectionDataSourceManager;
}

- (int64_t)oneUpPresentationOrigin:(id)origin
{
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  oneUpPresentationOrigin = [viewModel oneUpPresentationOrigin];

  return oneUpPresentationOrigin;
}

- (BOOL)presentOneUpForAssetReference:(id)reference configurationHandler:(id)handler
{
  referenceCopy = reference;
  handlerCopy = handler;
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  v9 = [viewModel viewDelegateRespondsTo:0x80000];

  if (v9)
  {
    viewModel2 = [(PXPhotosViewUIInteractionHelper *)self viewModel];
    viewDelegate = [viewModel2 viewDelegate];
    interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
    presentingViewController = [interaction presentingViewController];
    [viewDelegate photosViewController:presentingViewController didPresentOneUp:1 forAsset:referenceCopy];
  }

  v14 = [(PXPhotosViewUIInteractionHelper *)self presentOneUpForAssetReference:referenceCopy configurationHandler:handlerCopy completionHandler:0];

  return v14;
}

- (BOOL)presentOneUpForAssetReference:(id)reference configurationHandler:(id)handler completionHandler:(id)completionHandler
{
  referenceCopy = reference;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  oneUpPresentation = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  [(PXPhotosViewUIInteractionHelper *)self setSensitivityInterventionManager:0];
  asset = [referenceCopy asset];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  asset2 = [referenceCopy asset];
  isContentAnalyzedAsPreviewable = [asset2 isContentAnalyzedAsPreviewable];

  if (isContentAnalyzedAsPreviewable)
  {
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v17 = [PXSensitivityInterventionManager alloc];
  asset3 = [referenceCopy asset];
  v19 = [(PXSensitivityInterventionManager *)v17 initWithAsset:asset3 interventionType:0];

  [(PXPhotosViewUIInteractionHelper *)self setSensitivityInterventionManager:v19];
  if (v19)
  {
    viewControllerToPresent = [(PXSensitivityInterventionManager *)v19 viewControllerToPresent];

    if (viewControllerToPresent)
    {
      presentingViewController = [interaction presentingViewController];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __104__PXPhotosViewUIInteractionHelper_presentOneUpForAssetReference_configurationHandler_completionHandler___block_invoke;
      v24[3] = &unk_1E774B308;
      v24[4] = self;
      [(PXSensitivityInterventionManager *)v19 presentFromViewController:presentingViewController completionHandler:v24];

LABEL_12:
      v22 = 0;
      goto LABEL_13;
    }
  }

LABEL_8:
  if (![viewModel canPresentOneUp])
  {
    goto LABEL_12;
  }

  [interaction setNavigatedAssetReference:referenceCopy];
  if ([viewModel oneUpAssetsViewMode] == 2)
  {
    if (completionHandlerCopy)
    {
      completionHandlerCopy[2](completionHandlerCopy, 0);
    }

    goto LABEL_12;
  }

  v22 = [oneUpPresentation startWithConfigurationHandler:handlerCopy];
  if ((v22 & 1) == 0)
  {
    [interaction setNavigatedAssetReference:0];
  }

  if (completionHandlerCopy)
  {
    [oneUpPresentation waitForTransitionToFinishWithTimeout:completionHandlerCopy completionHandler:5.0];
  }

LABEL_13:

  return v22;
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  oneUpPresentation = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  [oneUpPresentation invalidatePresentingGeometry];
}

- (void)didMakeInteractiveSelectionChangeForInteraction:(id)interaction
{
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  presentingViewController = [interaction presentingViewController];

  px_splitViewController = [presentingViewController px_splitViewController];
  v5 = px_splitViewController;
  if (px_splitViewController)
  {
    [px_splitViewController requestFocusUpdateWithPreferredFocusEnvironment:presentingViewController];
  }
}

- (void)navigatedSectionDataSourceManagerDidChangeForInteraction:(id)interaction
{
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  navigatedAssetSectionDataSourceManager = [interaction navigatedAssetSectionDataSourceManager];
  dataSource = [navigatedAssetSectionDataSourceManager dataSource];
  containsAnyItems = [dataSource containsAnyItems];

  if (containsAnyItems)
  {
    viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
    if ([viewModel oneUpAssetsViewMode] == 2)
    {
      oneUpPresentation = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
      if ([viewModel canPresentOneUp] && !objc_msgSend(oneUpPresentation, "state") && (objc_msgSend(oneUpPresentation, "startWithConfigurationHandler:", 0) & 1) == 0)
      {
        interaction2 = [(PXPhotosViewUIInteractionHelper *)self interaction];
        [interaction2 setNavigatedAssetReference:0];
      }
    }
  }

  else
  {
    viewModel = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
    [viewModel stopAnimated:1];
  }
}

- (void)scrollViewControllerDidChangeForInteraction:(id)interaction
{
  scrollViewController = [interaction scrollViewController];
  [scrollViewController registerObserver:self];
}

- (void)didSetupGesturesForInteraction:(id)interaction
{
  oneUpPresentation = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];

  if (!oneUpPresentation)
  {
    interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
    presentingViewController = [interaction presentingViewController];
    px_oneUpPresentation = [presentingViewController px_oneUpPresentation];
    [(PXPhotosViewUIInteractionHelper *)self setOneUpPresentation:px_oneUpPresentation];
  }
}

- (void)preventTargetedContextMenuDismissalAnimationForViewInteraction:(id)interaction
{
  oneUpPresentation = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  [oneUpPresentation preventTargetedContextMenuDismissalAnimation];
}

- (BOOL)handlePresentingPinchGestureRecognizer:(id)recognizer forViewInteraction:(id)interaction
{
  recognizerCopy = recognizer;
  oneUpPresentation = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  v7 = [oneUpPresentation handlePresentingPinchGestureRecognizer:recognizerCopy];

  return v7;
}

- (BOOL)isContextMenuInteractionActiveForViewInteraction:(id)interaction
{
  oneUpPresentation = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  isContextMenuInteractionActive = [oneUpPresentation isContextMenuInteractionActive];

  return isContextMenuInteractionActive;
}

- (id)contextMenuInteractionForViewInteraction:(id)interaction
{
  oneUpPresentation = [(PXPhotosViewUIInteractionHelper *)self oneUpPresentation];
  contextMenuInteraction = [oneUpPresentation contextMenuInteraction];

  return contextMenuInteraction;
}

- (BOOL)presentOneUpForAssetReference:(id)reference style:(int64_t)style
{
  referenceCopy = reference;
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  canPresentOneUp = [viewModel canPresentOneUp];

  if (canPresentOneUp)
  {
    if (style == 2)
    {
      v12 = &__block_literal_global_21;
    }

    else
    {
      if (style != 1)
      {
        if (style)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteractionHelper.m" lineNumber:123 description:{@"Unknown 1up presentation style %ld", style}];

          abort();
        }

        selfCopy2 = self;
        v11 = referenceCopy;
        v12 = 0;
        goto LABEL_10;
      }

      v12 = &__block_literal_global_19_59098;
    }

    selfCopy2 = self;
    v11 = referenceCopy;
LABEL_10:
    v13 = [(PXPhotosViewUIInteractionHelper *)selfCopy2 presentOneUpForAssetReference:v11 configurationHandler:v12];
    goto LABEL_11;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_createActionManagerForNavigatedAssetReferenceUsingSectionDataSource:(BOOL)source
{
  sourceCopy = source;
  viewModel = [(PXPhotosViewUIInteractionHelper *)self viewModel];
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  navigatedAssetReference = [interaction navigatedAssetReference];
  if (!navigatedAssetReference)
  {
    PXAssertGetLog();
  }

  assetActionManager = [viewModel assetActionManager];
  if (sourceCopy)
  {
    _createSelectionManagerForNavigatedAssetSection = [(PXPhotosViewUIInteractionHelper *)self _createSelectionManagerForNavigatedAssetSection];
    v10 = [objc_alloc(objc_opt_class()) initWithSelectionManager:_createSelectionManagerForNavigatedAssetSection];
  }

  else
  {
    v11 = objc_alloc(objc_opt_class());
    _createSelectionManagerForNavigatedAssetSection = [viewModel dataSourceManager];
    v10 = [v11 initWithSelectedObjectReference:navigatedAssetReference dataSourceManager:_createSelectionManagerForNavigatedAssetSection];
  }

  v12 = v10;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setSupportsAirPlay:1];
  }

  [v12 setPerformerDelegate:interaction];
  allowedActionTypes = [assetActionManager allowedActionTypes];
  [v12 setAllowedActionTypes:allowedActionTypes];

  [v12 setAdditionalPropertiesFromActionManager:assetActionManager];

  return v12;
}

- (id)_createSelectionManagerForNavigatedAssetSection
{
  v3 = [off_1E77218C8 alloc];
  interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
  navigatedAssetSectionDataSourceManager = [interaction navigatedAssetSectionDataSourceManager];
  v6 = [v3 initWithDataSourceManager:navigatedAssetSectionDataSourceManager];

  [v6 performChanges:&__block_literal_global_59111];

  return v6;
}

- (void)setOneUpPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (self->_oneUpPresentation != presentationCopy)
  {
    v7 = presentationCopy;
    objc_storeStrong(&self->_oneUpPresentation, presentation);
    [(PXOneUpPresentation *)v7 setDelegate:self];
    interaction = [(PXPhotosViewUIInteractionHelper *)self interaction];
    [interaction invalidateContextMenuInteraction];

    presentationCopy = v7;
  }
}

- (PXPhotosViewUIInteractionHelper)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewUIInteractionHelper.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXPhotosViewUIInteractionHelper init]"}];

  abort();
}

- (PXPhotosViewUIInteractionHelper)initWithInteraction:(id)interaction viewModel:(id)model
{
  interactionCopy = interaction;
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = PXPhotosViewUIInteractionHelper;
  v9 = [(PXPhotosViewUIInteractionHelper *)&v17 init];
  if (v9)
  {
    v10 = interactionCopy;
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        objc_storeWeak(&v9->_interaction, v10);
        objc_storeStrong(&v9->_viewModel, model);

        goto LABEL_5;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = objc_opt_class();
      v14 = NSStringFromClass(v15);
      px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXPhotosViewUIInteractionHelper.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"interaction", v14, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"PXPhotosViewUIInteractionHelper.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"interaction", v14}];
    }

    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

@end