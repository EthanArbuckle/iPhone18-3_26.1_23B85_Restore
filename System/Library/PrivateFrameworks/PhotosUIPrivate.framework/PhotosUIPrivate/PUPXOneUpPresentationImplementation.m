@interface PUPXOneUpPresentationImplementation
+ (id)implementationForOneUpPresentation:(id)a3;
- (BOOL)canStartAnimated:(BOOL)a3;
- (BOOL)canStop;
- (BOOL)handlePresentingPinchGestureRecognizer:(id)a3;
- (BOOL)oneUpPresentationHelperPreventRevealInMomentAction:(id)a3;
- (BOOL)oneUpPresentationHelperShouldAutoPlay:(id)a3;
- (BOOL)oneUpPresentationHelperShouldDisableAutoPlayback:(id)a3;
- (BOOL)oneUpPresentationHelperWantsShowInLibraryButton:(id)a3;
- (BOOL)startWithConfigurationHandler:(id)a3;
- (PXAssetReference)lastViewedAssetReference;
- (PXOneUpPresentation)_oneUpPresentation;
- (id)_initWithOneUpPresentation:(id)a3;
- (id)oneUpPresentationHelper:(id)a3 currentImageForAssetReference:(id)a4;
- (id)oneUpPresentationHelper:(id)a3 presentingScrollViewForAssetReference:(id)a4;
- (id)oneUpPresentationHelper:(id)a3 regionOfInterestForAssetReference:(id)a4 cropInsets:(UIEdgeInsets *)a5;
- (id)oneUpPresentationHelperContextualVideoThumbnailIdentifier:(id)a3;
- (id)oneUpPresentationHelperOriginalViewController:(id)a3;
- (id)oneUpPresentationHelperSearchQueryMatchInfo:(id)a3;
- (id)oneUpPresentationHelperViewController:(id)a3;
- (id)oneUpPresentationHelperViewHostingTilingView:(id)a3;
- (id)previewViewControllerAllowingActions:(BOOL)a3;
- (id)regionOfInterestForAssetReference:(id)a3;
- (int64_t)oneUpPresentationOrigin:(id)a3;
- (unint64_t)oneUpPresentationHelperAdditionalOptions:(id)a3;
- (void)commitPreviewViewController:(id)a3;
- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4;
- (void)invalidatePresentingGeometry;
- (void)oneUpPresentationHelper:(id)a3 didDismissOneUpViewController:(id)a4;
- (void)oneUpPresentationHelper:(id)a3 scrollAssetReferenceToVisible:(id)a4;
- (void)oneUpPresentationHelper:(id)a3 shouldHideAssetReferences:(id)a4;
- (void)oneUpPresentationHelperStateDidChange:(id)a3;
- (void)presentingViewControllerViewDidAppear:(BOOL)a3;
- (void)presentingViewControllerViewDidDisappear:(BOOL)a3;
- (void)presentingViewControllerViewIsAppearing:(BOOL)a3;
- (void)presentingViewControllerViewWillAppear:(BOOL)a3;
- (void)presentingViewControllerViewWillDisappear:(BOOL)a3;
- (void)registerStateChangeHandler:(id)a3;
- (void)stopAnimated:(BOOL)a3;
@end

@implementation PUPXOneUpPresentationImplementation

- (PXOneUpPresentation)_oneUpPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->__oneUpPresentation);

  return WeakRetained;
}

- (void)invalidatePresentingGeometry
{
  v2 = [(PUPXOneUpPresentationImplementation *)self _helper];
  [v2 presentingViewControllerScrollViewDidScroll:0];
}

- (void)oneUpPresentationHelper:(id)a3 shouldHideAssetReferences:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) pxAssetReference];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  [v13 setHiddenAssetReferences:v6];
}

- (void)oneUpPresentationHelper:(id)a3 scrollAssetReferenceToVisible:(id)a4
{
  v6 = [a4 pxAssetReference];
  v5 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  [v5 scrollAssetReferenceToVisible:v6];
}

- (id)oneUpPresentationHelper:(id)a3 currentImageForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v7 = [v5 pxAssetReference];

  v8 = [v6 currentImageForAssetReference:v7];

  return v8;
}

- (id)oneUpPresentationHelper:(id)a3 regionOfInterestForAssetReference:(id)a4 cropInsets:(UIEdgeInsets *)a5
{
  v6 = [a4 pxAssetReference];
  v7 = [(PUPXOneUpPresentationImplementation *)self regionOfInterestForAssetReference:v6];

  return v7;
}

- (void)oneUpPresentationHelper:(id)a3 didDismissOneUpViewController:(id)a4
{
  v4 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation:a3];
  [v4 cleanUp];
}

- (id)oneUpPresentationHelperContextualVideoThumbnailIdentifier:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 searchContextualVideoThumbnailIdentifier];

  return v4;
}

- (id)oneUpPresentationHelperSearchQueryMatchInfo:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 searchQueryMatchInfo];

  return v4;
}

- (BOOL)oneUpPresentationHelperShouldDisableAutoPlayback:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 shouldDisableAutoPlayback];

  return v4;
}

- (id)oneUpPresentationHelper:(id)a3 presentingScrollViewForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v7 = [v5 pxAssetReference];

  v8 = [v6 presentingScrollViewForAssetReference:v7];

  return v8;
}

- (id)oneUpPresentationHelperViewHostingTilingView:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 originalPresentingViewController];
  v5 = [v4 viewIfLoaded];

  return v5;
}

- (void)oneUpPresentationHelperStateDidChange:(id)a3
{
  v7 = a3;
  v4 = [(PUPXOneUpPresentationImplementation *)self stateChangeHandler];
  if (v4)
  {
    v5 = [v7 state];
    if ((v5 - 1) >= 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    v4[2](v4, v6);
  }
}

- (unint64_t)oneUpPresentationHelperAdditionalOptions:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 actionContext];

  if (v4 > 3)
  {
    v8 = 65728;
    if (v4 != 0xFFFF)
    {
      v8 = 0;
    }

    if (v4 == 4)
    {
      return 133312;
    }

    else
    {
      return v8;
    }
  }

  else if ((v4 - 1) >= 2)
  {
    if (v4 == 3)
    {
      return 224;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69C33D8] sharedInstance];
    v6 = [v5 disableDetailView];

    if (v6)
    {
      return 192;
    }

    else
    {
      return 128;
    }
  }
}

- (BOOL)oneUpPresentationHelperWantsShowInLibraryButton:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 wantsShowInLibraryButton];

  return v4;
}

- (BOOL)oneUpPresentationHelperPreventRevealInMomentAction:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 preventShowInAllPhotosAction];

  return v4;
}

- (BOOL)oneUpPresentationHelperShouldAutoPlay:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 shouldAutoPlay];

  return v4;
}

- (int64_t)oneUpPresentationOrigin:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 origin];

  return v4;
}

- (id)oneUpPresentationHelperOriginalViewController:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 originalPresentingViewController];

  return v4;
}

- (id)oneUpPresentationHelperViewController:(id)a3
{
  v3 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v4 = [v3 presentingViewController];

  return v4;
}

- (id)regionOfInterestForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v6 = [v5 regionOfInterestForAssetReference:v4];

  return v6;
}

- (BOOL)handlePresentingPinchGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(PUPXOneUpPresentationImplementation *)self _helper];
  v6 = [v5 handlePresentingPinchGestureRecognizer:v4];

  return v6;
}

- (void)stopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPXOneUpPresentationImplementation *)self canStop];
  v6 = [(PUPXOneUpPresentationImplementation *)self _helper];
  [v6 dismissOneUpViewControllerForced:!v5 animated:v3];
}

- (BOOL)canStop
{
  v2 = [(PUPXOneUpPresentationImplementation *)self _helper];
  v3 = [v2 canDismissOneUpViewController];

  return v3;
}

- (void)commitPreviewViewController:(id)a3
{
  v4 = a3;
  v5 = [(PUPXOneUpPresentationImplementation *)self _helper];
  [v5 commitPreviewViewController:v4];
}

- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUPXOneUpPresentationImplementation *)self _helper];
  [v7 didDismissPreviewViewController:v6 committing:v4];
}

- (id)previewViewControllerAllowingActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v6 = [v5 initialAssetReference];
  if (!v6)
  {
    goto LABEL_6;
  }

  v18 = 0u;
  v19 = 0u;
  v7 = [v5 dataSourceManager];
  v8 = [v7 dataSource];
  v9 = v8;
  if (v8)
  {
    [v8 indexPathForAssetReference:v6];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  if (v18 != *MEMORY[0x1E69C4880])
  {
    v16 = v18;
    v17 = v19;
    v10 = PXIndexPathFromSimpleIndexPath();
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  v11 = [(PUPXOneUpPresentationImplementation *)self _helper:v16];
  v12 = [v11 previewViewControllerForItemAtIndexPath:v10 allowingActions:v3];
  v13 = [v5 actionManagerForPreviewing];
  v14 = [v11 topmostPresentedViewController];
  [v12 createMenuActionControllerForManagerIfNeeded:v13 withPresentingViewController:v14 regionOfInterestProvider:self];

  return v12;
}

- (BOOL)startWithConfigurationHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (v4)
  {
    v4[2](v4, v5);
  }

  LODWORD(v6) = -[PUPXOneUpPresentationImplementation canStartAnimated:](self, "canStartAnimated:", [v5 isAnimated]);
  if (v6)
  {
    v7 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
    v8 = [v7 initialAssetReference];
    v39 = v8;
    v38 = v6;
    if (!v8)
    {
      v6 = v7;
      v13 = 0;
LABEL_17:
      v27 = [(PUPXOneUpPresentationImplementation *)self _helper];
      v28 = [v5 isAnimated];
      v29 = [v5 pu_interactiveMode];
      v30 = [v5 pu_activity];
      v31 = [v5 isNavigationSourceWidget];
      v32 = [v5 activityCompletion];
      [v27 presentOneUpViewControllerFromAssetAtIndexPath:v13 animated:v28 interactiveMode:v29 activity:v30 isNavigationSourceWidget:v31 editActivityCompletion:v32];

      LOBYTE(v6) = v38;
      goto LABEL_18;
    }

    v9 = v8;
    v10 = [v7 dataSourceManager];
    v11 = [v10 dataSource];
    v12 = v11;
    if (v11)
    {
      [v11 indexPathForAssetReference:v9];
    }

    if (!*MEMORY[0x1E69C4880])
    {
      v13 = 0;
LABEL_16:
      v6 = v7;
      goto LABEL_17;
    }

    v14 = PXIndexPathFromSimpleIndexPath();
    v15 = [(PUPXOneUpPresentationImplementation *)self _helper];
    v16 = [v15 browsingSession];
    v17 = [v16 viewModel];
    v18 = [v17 assetsDataSource];

    v19 = [v14 section];
    v20 = [MEMORY[0x1E696AC88] pu_rootIndexPath];
    v37 = v18;
    if (v19 >= [v18 numberOfSubItemsAtIndexPath:v20])
    {

      v13 = v14;
    }

    else
    {
      v35 = [v14 item];
      v21 = [MEMORY[0x1E696AC88] indexPathWithIndex:{objc_msgSend(v14, "section")}];
      v22 = [v18 numberOfSubItemsAtIndexPath:v21];

      v13 = v14;
      if (v35 < v22)
      {
        goto LABEL_15;
      }
    }

    v23 = [[PUPXAssetReference alloc] initWithPXAssetReference:v39 dataSourceIdentifier:0];
    v36 = [(PUPXOneUpPresentationImplementation *)self _helper];
    v24 = [v36 browsingSession];
    v25 = [v24 viewModel];
    v26 = [v25 assetsDataSource];
    v34 = [v26 indexPathForAssetReference:v23];

    v13 = v34;
LABEL_15:

    goto LABEL_16;
  }

LABEL_18:

  return v6;
}

- (PXAssetReference)lastViewedAssetReference
{
  v2 = [(PUPXOneUpPresentationImplementation *)self _helper];
  v3 = [v2 lastViewedAssetReference];

  return v3;
}

- (BOOL)canStartAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPXOneUpPresentationImplementation *)self _helper];
  LOBYTE(v3) = [v4 canPresentOneUpViewControllerAnimated:v3];

  return v3;
}

- (void)registerStateChangeHandler:(id)a3
{
  v4 = a3;
  v5 = [(PUPXOneUpPresentationImplementation *)self stateChangeHandler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PUPXOneUpPresentationImplementation_registerStateChangeHandler___block_invoke;
  v8[3] = &unk_1E7B7A738;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(PUPXOneUpPresentationImplementation *)self setStateChangeHandler:v8];
}

uint64_t __66__PUPXOneUpPresentationImplementation_registerStateChangeHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)presentingViewControllerViewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPXOneUpPresentationImplementation *)self _helper];
  [v4 presentingViewControllerViewDidDisappear:v3];
}

- (void)presentingViewControllerViewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPXOneUpPresentationImplementation *)self _helper];
  [v4 presentingViewControllerViewWillDisappear:v3];
}

- (void)presentingViewControllerViewDidAppear:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPXOneUpPresentationImplementation *)self _helper];
  [v4 presentingViewControllerViewDidAppear:v3];
}

- (void)presentingViewControllerViewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPXOneUpPresentationImplementation *)self _helper];
  [v4 presentingViewControllerViewIsAppearing:v3];
}

- (void)presentingViewControllerViewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUPXOneUpPresentationImplementation *)self _helper];
  [v4 presentingViewControllerViewWillAppear:v3];
}

- (id)_initWithOneUpPresentation:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PUPXOneUpPresentationImplementation;
  v5 = [(PUPXOneUpPresentationImplementation *)&v17 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    objc_storeWeak(&v5->__oneUpPresentation, v4);
    objc_initWeak(&location, v4);
    v7 = [PUOneUpPresentationHelper alloc];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __66__PUPXOneUpPresentationImplementation__initWithOneUpPresentation___block_invoke;
    v14 = &unk_1E7B7A710;
    objc_copyWeak(&v15, &location);
    v8 = [(PUOneUpPresentationHelper *)v7 initWithBrowsingSessionCreationBlock:&v11];
    v9 = p_isa[1];
    p_isa[1] = v8;

    [p_isa[1] setDelegate:{p_isa, v11, v12, v13, v14}];
    [p_isa[1] setAssetDisplayDelegate:p_isa];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return p_isa;
}

PUBrowsingSession *__66__PUPXOneUpPresentationImplementation__initWithOneUpPresentation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    v6 = 0;
    goto LABEL_27;
  }

  v3 = [WeakRetained dataSourceManager];
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 currentDataSourceManager];
  }

  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [[PUPhotoKitDataSourceManager alloc] initWithAssetsDataSourceManager:v4];
LABEL_9:
    v7 = v5;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PUPXAssetsDataSourceManager alloc] initWithUnderlyingDataSourceManager:v4];
    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PUAssetsDataSourceManager *PUAssetsDataSourceManagerFromPXAssetsDataSourceManager(PXAssetsDataSourceManager *__strong)"];
  [v8 handleFailureInFunction:v9 file:@"PUPXOneUpPresentationImplementation.m" lineNumber:57 description:{@"unsupported data source manager %@", v4}];

  v7 = 0;
LABEL_11:

  v10 = [v2 mediaProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_alloc_init(PUPhotoKitMediaProvider);
LABEL_15:
    v12 = v11;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [[PUPXMediaProvider alloc] initWithUnderlyingMediaProvider:v10];
    goto LABEL_15;
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PUMediaProvider *PUMediaProviderFromPXMediaProvider(PXMediaProvider *__strong)"];
  [v13 handleFailureInFunction:v14 file:@"PUPXOneUpPresentationImplementation.m" lineNumber:70 description:{@"unsupported media provider %@", v10}];

  v12 = 0;
LABEL_17:

  v15 = v2;
  v16 = [v15 actionManager];
  if (v16 && [v15 actionContext] != 6)
  {
    v18 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PUPXAssetActionManager alloc] initWithUnderlyingActionManager:v18];
    }

    else
    {
      v17 = 0;
    }
  }

  else if ([v15 actionContext] == 6)
  {
    v17 = objc_alloc_init(PUPickerActionManager);
  }

  else
  {
    v17 = 0;
  }

  v19 = [v15 photosDetailsContext];
  v20 = [v15 privacyController];
  v21 = [v15 importStatusManager];
  v6 = [[PUBrowsingSession alloc] initWithDataSourceManager:v7 actionManager:v17 mediaProvider:v12 photosDetailsContext:v19 lowMemoryMode:0 importStatusManager:v21 privacyController:v20];

LABEL_27:

  return v6;
}

+ (id)implementationForOneUpPresentation:(id)a3
{
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, PUImplementationAssociationKey);
  if (!v4)
  {
    v4 = [[PUPXOneUpPresentationImplementation alloc] _initWithOneUpPresentation:v3];
    objc_setAssociatedObject(v3, PUImplementationAssociationKey, v4, 1);
  }

  return v4;
}

@end