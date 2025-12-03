@interface PUPXOneUpPresentationImplementation
+ (id)implementationForOneUpPresentation:(id)presentation;
- (BOOL)canStartAnimated:(BOOL)animated;
- (BOOL)canStop;
- (BOOL)handlePresentingPinchGestureRecognizer:(id)recognizer;
- (BOOL)oneUpPresentationHelperPreventRevealInMomentAction:(id)action;
- (BOOL)oneUpPresentationHelperShouldAutoPlay:(id)play;
- (BOOL)oneUpPresentationHelperShouldDisableAutoPlayback:(id)playback;
- (BOOL)oneUpPresentationHelperWantsShowInLibraryButton:(id)button;
- (BOOL)startWithConfigurationHandler:(id)handler;
- (PXAssetReference)lastViewedAssetReference;
- (PXOneUpPresentation)_oneUpPresentation;
- (id)_initWithOneUpPresentation:(id)presentation;
- (id)oneUpPresentationHelper:(id)helper currentImageForAssetReference:(id)reference;
- (id)oneUpPresentationHelper:(id)helper presentingScrollViewForAssetReference:(id)reference;
- (id)oneUpPresentationHelper:(id)helper regionOfInterestForAssetReference:(id)reference cropInsets:(UIEdgeInsets *)insets;
- (id)oneUpPresentationHelperContextualVideoThumbnailIdentifier:(id)identifier;
- (id)oneUpPresentationHelperOriginalViewController:(id)controller;
- (id)oneUpPresentationHelperSearchQueryMatchInfo:(id)info;
- (id)oneUpPresentationHelperViewController:(id)controller;
- (id)oneUpPresentationHelperViewHostingTilingView:(id)view;
- (id)previewViewControllerAllowingActions:(BOOL)actions;
- (id)regionOfInterestForAssetReference:(id)reference;
- (int64_t)oneUpPresentationOrigin:(id)origin;
- (unint64_t)oneUpPresentationHelperAdditionalOptions:(id)options;
- (void)commitPreviewViewController:(id)controller;
- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing;
- (void)invalidatePresentingGeometry;
- (void)oneUpPresentationHelper:(id)helper didDismissOneUpViewController:(id)controller;
- (void)oneUpPresentationHelper:(id)helper scrollAssetReferenceToVisible:(id)visible;
- (void)oneUpPresentationHelper:(id)helper shouldHideAssetReferences:(id)references;
- (void)oneUpPresentationHelperStateDidChange:(id)change;
- (void)presentingViewControllerViewDidAppear:(BOOL)appear;
- (void)presentingViewControllerViewDidDisappear:(BOOL)disappear;
- (void)presentingViewControllerViewIsAppearing:(BOOL)appearing;
- (void)presentingViewControllerViewWillAppear:(BOOL)appear;
- (void)presentingViewControllerViewWillDisappear:(BOOL)disappear;
- (void)registerStateChangeHandler:(id)handler;
- (void)stopAnimated:(BOOL)animated;
@end

@implementation PUPXOneUpPresentationImplementation

- (PXOneUpPresentation)_oneUpPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->__oneUpPresentation);

  return WeakRetained;
}

- (void)invalidatePresentingGeometry
{
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  [_helper presentingViewControllerScrollViewDidScroll:0];
}

- (void)oneUpPresentationHelper:(id)helper shouldHideAssetReferences:(id)references
{
  v19 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  v6 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(referencesCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = referencesCopy;
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

        pxAssetReference = [*(*(&v14 + 1) + 8 * v11) pxAssetReference];
        [v6 addObject:pxAssetReference];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  [_oneUpPresentation setHiddenAssetReferences:v6];
}

- (void)oneUpPresentationHelper:(id)helper scrollAssetReferenceToVisible:(id)visible
{
  pxAssetReference = [visible pxAssetReference];
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  [_oneUpPresentation scrollAssetReferenceToVisible:pxAssetReference];
}

- (id)oneUpPresentationHelper:(id)helper currentImageForAssetReference:(id)reference
{
  referenceCopy = reference;
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  pxAssetReference = [referenceCopy pxAssetReference];

  v8 = [_oneUpPresentation currentImageForAssetReference:pxAssetReference];

  return v8;
}

- (id)oneUpPresentationHelper:(id)helper regionOfInterestForAssetReference:(id)reference cropInsets:(UIEdgeInsets *)insets
{
  pxAssetReference = [reference pxAssetReference];
  v7 = [(PUPXOneUpPresentationImplementation *)self regionOfInterestForAssetReference:pxAssetReference];

  return v7;
}

- (void)oneUpPresentationHelper:(id)helper didDismissOneUpViewController:(id)controller
{
  v4 = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation:helper];
  [v4 cleanUp];
}

- (id)oneUpPresentationHelperContextualVideoThumbnailIdentifier:(id)identifier
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  searchContextualVideoThumbnailIdentifier = [_oneUpPresentation searchContextualVideoThumbnailIdentifier];

  return searchContextualVideoThumbnailIdentifier;
}

- (id)oneUpPresentationHelperSearchQueryMatchInfo:(id)info
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  searchQueryMatchInfo = [_oneUpPresentation searchQueryMatchInfo];

  return searchQueryMatchInfo;
}

- (BOOL)oneUpPresentationHelperShouldDisableAutoPlayback:(id)playback
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  shouldDisableAutoPlayback = [_oneUpPresentation shouldDisableAutoPlayback];

  return shouldDisableAutoPlayback;
}

- (id)oneUpPresentationHelper:(id)helper presentingScrollViewForAssetReference:(id)reference
{
  referenceCopy = reference;
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  pxAssetReference = [referenceCopy pxAssetReference];

  v8 = [_oneUpPresentation presentingScrollViewForAssetReference:pxAssetReference];

  return v8;
}

- (id)oneUpPresentationHelperViewHostingTilingView:(id)view
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  originalPresentingViewController = [_oneUpPresentation originalPresentingViewController];
  viewIfLoaded = [originalPresentingViewController viewIfLoaded];

  return viewIfLoaded;
}

- (void)oneUpPresentationHelperStateDidChange:(id)change
{
  changeCopy = change;
  stateChangeHandler = [(PUPXOneUpPresentationImplementation *)self stateChangeHandler];
  if (stateChangeHandler)
  {
    state = [changeCopy state];
    if ((state - 1) >= 7)
    {
      v6 = 0;
    }

    else
    {
      v6 = state;
    }

    stateChangeHandler[2](stateChangeHandler, v6);
  }
}

- (unint64_t)oneUpPresentationHelperAdditionalOptions:(id)options
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  actionContext = [_oneUpPresentation actionContext];

  if (actionContext > 3)
  {
    v8 = 65728;
    if (actionContext != 0xFFFF)
    {
      v8 = 0;
    }

    if (actionContext == 4)
    {
      return 133312;
    }

    else
    {
      return v8;
    }
  }

  else if ((actionContext - 1) >= 2)
  {
    if (actionContext == 3)
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
    mEMORY[0x1E69C33D8] = [MEMORY[0x1E69C33D8] sharedInstance];
    disableDetailView = [mEMORY[0x1E69C33D8] disableDetailView];

    if (disableDetailView)
    {
      return 192;
    }

    else
    {
      return 128;
    }
  }
}

- (BOOL)oneUpPresentationHelperWantsShowInLibraryButton:(id)button
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  wantsShowInLibraryButton = [_oneUpPresentation wantsShowInLibraryButton];

  return wantsShowInLibraryButton;
}

- (BOOL)oneUpPresentationHelperPreventRevealInMomentAction:(id)action
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  preventShowInAllPhotosAction = [_oneUpPresentation preventShowInAllPhotosAction];

  return preventShowInAllPhotosAction;
}

- (BOOL)oneUpPresentationHelperShouldAutoPlay:(id)play
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  shouldAutoPlay = [_oneUpPresentation shouldAutoPlay];

  return shouldAutoPlay;
}

- (int64_t)oneUpPresentationOrigin:(id)origin
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  origin = [_oneUpPresentation origin];

  return origin;
}

- (id)oneUpPresentationHelperOriginalViewController:(id)controller
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  originalPresentingViewController = [_oneUpPresentation originalPresentingViewController];

  return originalPresentingViewController;
}

- (id)oneUpPresentationHelperViewController:(id)controller
{
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  presentingViewController = [_oneUpPresentation presentingViewController];

  return presentingViewController;
}

- (id)regionOfInterestForAssetReference:(id)reference
{
  referenceCopy = reference;
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  v6 = [_oneUpPresentation regionOfInterestForAssetReference:referenceCopy];

  return v6;
}

- (BOOL)handlePresentingPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  v6 = [_helper handlePresentingPinchGestureRecognizer:recognizerCopy];

  return v6;
}

- (void)stopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  canStop = [(PUPXOneUpPresentationImplementation *)self canStop];
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  [_helper dismissOneUpViewControllerForced:!canStop animated:animatedCopy];
}

- (BOOL)canStop
{
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  canDismissOneUpViewController = [_helper canDismissOneUpViewController];

  return canDismissOneUpViewController;
}

- (void)commitPreviewViewController:(id)controller
{
  controllerCopy = controller;
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  [_helper commitPreviewViewController:controllerCopy];
}

- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing
{
  committingCopy = committing;
  controllerCopy = controller;
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  [_helper didDismissPreviewViewController:controllerCopy committing:committingCopy];
}

- (id)previewViewControllerAllowingActions:(BOOL)actions
{
  actionsCopy = actions;
  _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
  initialAssetReference = [_oneUpPresentation initialAssetReference];
  if (!initialAssetReference)
  {
    goto LABEL_6;
  }

  v18 = 0u;
  v19 = 0u;
  dataSourceManager = [_oneUpPresentation dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    [dataSource indexPathForAssetReference:initialAssetReference];
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
  v12 = [v11 previewViewControllerForItemAtIndexPath:v10 allowingActions:actionsCopy];
  actionManagerForPreviewing = [_oneUpPresentation actionManagerForPreviewing];
  topmostPresentedViewController = [v11 topmostPresentedViewController];
  [v12 createMenuActionControllerForManagerIfNeeded:actionManagerForPreviewing withPresentingViewController:topmostPresentedViewController regionOfInterestProvider:self];

  return v12;
}

- (BOOL)startWithConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_new();
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v5);
  }

  LODWORD(v6) = -[PUPXOneUpPresentationImplementation canStartAnimated:](self, "canStartAnimated:", [v5 isAnimated]);
  if (v6)
  {
    _oneUpPresentation = [(PUPXOneUpPresentationImplementation *)self _oneUpPresentation];
    initialAssetReference = [_oneUpPresentation initialAssetReference];
    v39 = initialAssetReference;
    v38 = v6;
    if (!initialAssetReference)
    {
      v6 = _oneUpPresentation;
      v13 = 0;
LABEL_17:
      _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
      isAnimated = [v5 isAnimated];
      pu_interactiveMode = [v5 pu_interactiveMode];
      pu_activity = [v5 pu_activity];
      isNavigationSourceWidget = [v5 isNavigationSourceWidget];
      activityCompletion = [v5 activityCompletion];
      [_helper presentOneUpViewControllerFromAssetAtIndexPath:v13 animated:isAnimated interactiveMode:pu_interactiveMode activity:pu_activity isNavigationSourceWidget:isNavigationSourceWidget editActivityCompletion:activityCompletion];

      LOBYTE(v6) = v38;
      goto LABEL_18;
    }

    v9 = initialAssetReference;
    dataSourceManager = [_oneUpPresentation dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    v12 = dataSource;
    if (dataSource)
    {
      [dataSource indexPathForAssetReference:v9];
    }

    if (!*MEMORY[0x1E69C4880])
    {
      v13 = 0;
LABEL_16:
      v6 = _oneUpPresentation;
      goto LABEL_17;
    }

    v14 = PXIndexPathFromSimpleIndexPath();
    _helper2 = [(PUPXOneUpPresentationImplementation *)self _helper];
    browsingSession = [_helper2 browsingSession];
    viewModel = [browsingSession viewModel];
    assetsDataSource = [viewModel assetsDataSource];

    section = [v14 section];
    pu_rootIndexPath = [MEMORY[0x1E696AC88] pu_rootIndexPath];
    v37 = assetsDataSource;
    if (section >= [assetsDataSource numberOfSubItemsAtIndexPath:pu_rootIndexPath])
    {

      v13 = v14;
    }

    else
    {
      item = [v14 item];
      v21 = [MEMORY[0x1E696AC88] indexPathWithIndex:{objc_msgSend(v14, "section")}];
      v22 = [assetsDataSource numberOfSubItemsAtIndexPath:v21];

      v13 = v14;
      if (item < v22)
      {
        goto LABEL_15;
      }
    }

    v23 = [[PUPXAssetReference alloc] initWithPXAssetReference:v39 dataSourceIdentifier:0];
    _helper3 = [(PUPXOneUpPresentationImplementation *)self _helper];
    browsingSession2 = [_helper3 browsingSession];
    viewModel2 = [browsingSession2 viewModel];
    assetsDataSource2 = [viewModel2 assetsDataSource];
    v34 = [assetsDataSource2 indexPathForAssetReference:v23];

    v13 = v34;
LABEL_15:

    goto LABEL_16;
  }

LABEL_18:

  return v6;
}

- (PXAssetReference)lastViewedAssetReference
{
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  lastViewedAssetReference = [_helper lastViewedAssetReference];

  return lastViewedAssetReference;
}

- (BOOL)canStartAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  LOBYTE(animatedCopy) = [_helper canPresentOneUpViewControllerAnimated:animatedCopy];

  return animatedCopy;
}

- (void)registerStateChangeHandler:(id)handler
{
  handlerCopy = handler;
  stateChangeHandler = [(PUPXOneUpPresentationImplementation *)self stateChangeHandler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PUPXOneUpPresentationImplementation_registerStateChangeHandler___block_invoke;
  v8[3] = &unk_1E7B7A738;
  v9 = stateChangeHandler;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = stateChangeHandler;
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

- (void)presentingViewControllerViewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  [_helper presentingViewControllerViewDidDisappear:disappearCopy];
}

- (void)presentingViewControllerViewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  [_helper presentingViewControllerViewWillDisappear:disappearCopy];
}

- (void)presentingViewControllerViewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  [_helper presentingViewControllerViewDidAppear:appearCopy];
}

- (void)presentingViewControllerViewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  [_helper presentingViewControllerViewIsAppearing:appearingCopy];
}

- (void)presentingViewControllerViewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _helper = [(PUPXOneUpPresentationImplementation *)self _helper];
  [_helper presentingViewControllerViewWillAppear:appearCopy];
}

- (id)_initWithOneUpPresentation:(id)presentation
{
  presentationCopy = presentation;
  v17.receiver = self;
  v17.super_class = PUPXOneUpPresentationImplementation;
  v5 = [(PUPXOneUpPresentationImplementation *)&v17 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    objc_storeWeak(&v5->__oneUpPresentation, presentationCopy);
    objc_initWeak(&location, presentationCopy);
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

+ (id)implementationForOneUpPresentation:(id)presentation
{
  presentationCopy = presentation;
  v4 = objc_getAssociatedObject(presentationCopy, PUImplementationAssociationKey);
  if (!v4)
  {
    v4 = [[PUPXOneUpPresentationImplementation alloc] _initWithOneUpPresentation:presentationCopy];
    objc_setAssociatedObject(presentationCopy, PUImplementationAssociationKey, v4, 1);
  }

  return v4;
}

@end