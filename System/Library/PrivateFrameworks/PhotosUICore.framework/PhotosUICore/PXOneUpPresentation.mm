@interface PXOneUpPresentation
+ (id)_sharedDefaultImplementationDelegate;
+ (void)viewController:(id)controller willPresentOneUpInViewController:(id)viewController;
- (BOOL)canStartAnimated:(BOOL)animated;
- (BOOL)canStop;
- (BOOL)handlePresentingPinchGestureRecognizer:(id)recognizer;
- (BOOL)isContextMenuInteractionActive;
- (BOOL)preventShowInAllPhotosAction;
- (BOOL)shouldAutoPlay;
- (BOOL)shouldDisableAutoPlayback;
- (BOOL)startWithConfigurationHandler:(id)handler;
- (BOOL)wantsShowInLibraryButton;
- (NSString)searchContextualVideoThumbnailIdentifier;
- (PXAssetActionManager)actionManager;
- (PXAssetActionManager)actionManagerForPreviewing;
- (PXAssetImportStatusManager)importStatusManager;
- (PXAssetReference)initialAssetReference;
- (PXAssetReference)lastViewedAssetReference;
- (PXAssetsDataSourceManager)dataSourceManager;
- (PXContentPrivacyController)privacyController;
- (PXOneUpPresentation)init;
- (PXOneUpPresentation)initWithPresentingViewController:(id)controller;
- (PXOneUpPresentationDelegate)delegate;
- (PXOneUpPresentationImplementationDelegate)_implementationDelegate;
- (PXOneUpPresentationImplementationDelegate)implementationDelegate;
- (PXPhotosDetailsContext)photosDetailsContext;
- (PXSearchQueryMatchInfo)searchQueryMatchInfo;
- (PXUIMediaProvider)mediaProvider;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UIViewController)originalPresentingViewController;
- (UIViewController)presentingViewController;
- (id)_contextMenuInteraction:(id)interaction accessoriesForMenuWithConfiguration:(id)configuration;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)currentImageForAssetReference:(id)reference;
- (id)presentingScrollViewForAssetReference:(id)reference;
- (id)previewViewControllerAllowingActions:(BOOL)actions;
- (id)regionOfInterestForAssetReference:(id)reference;
- (int64_t)actionContext;
- (int64_t)origin;
- (void)_setImplementationDelegate:(id)delegate;
- (void)_updateImplementationDelegate;
- (void)cleanUp;
- (void)commitPreviewViewController:(id)controller;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing;
- (void)invalidatePresentingGeometry;
- (void)presentingViewControllerViewDidAppear:(BOOL)appear;
- (void)presentingViewControllerViewDidDisappear:(BOOL)disappear;
- (void)presentingViewControllerViewIsAppearing:(BOOL)appearing;
- (void)presentingViewControllerViewWillAppear:(BOOL)appear;
- (void)presentingViewControllerViewWillDisappear:(BOOL)disappear;
- (void)scrollAssetReferenceToVisible:(id)visible;
- (void)setDelegate:(id)delegate;
- (void)setHiddenAssetReferences:(id)references;
- (void)setState:(int64_t)state;
- (void)setStrongDelegate:(id)delegate;
- (void)stopAnimated:(BOOL)animated;
- (void)waitForTransitionToFinishWithTimeout:(double)timeout completionHandler:(id)handler;
@end

@implementation PXOneUpPresentation

- (void)_updateImplementationDelegate
{
  presentingViewController = [(PXOneUpPresentation *)self presentingViewController];
  px_oneUpPresentation = [presentingViewController px_oneUpPresentation];
  implementationDelegate = [px_oneUpPresentation implementationDelegate];

  v5 = implementationDelegate;
  if (!implementationDelegate)
  {
    do
    {
      parentViewController = [presentingViewController parentViewController];
      if (!parentViewController)
      {
        v5 = +[PXOneUpPresentation _sharedDefaultImplementationDelegate];
        goto LABEL_7;
      }

      v6 = parentViewController;

      px_oneUpPresentation2 = [v6 px_oneUpPresentation];
      implementationDelegate2 = [px_oneUpPresentation2 implementationDelegate];

      v5 = implementationDelegate2;
      presentingViewController = v6;
    }

    while (!implementationDelegate2);
    presentingViewController = v6;
  }

LABEL_7:
  v11 = v5;
  [(PXOneUpPresentation *)self _setImplementationDelegate:v5];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (PXOneUpPresentationImplementationDelegate)implementationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_implementationDelegate);

  return WeakRetained;
}

+ (id)_sharedDefaultImplementationDelegate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PXOneUpPresentation__sharedDefaultImplementationDelegate__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_sharedDefaultImplementationDelegate_onceToken_174784 != -1)
  {
    dispatch_once(&_sharedDefaultImplementationDelegate_onceToken_174784, block);
  }

  v2 = _sharedDefaultImplementationDelegate_defaultImplementationDelegate_174785;

  return v2;
}

void __59__PXOneUpPresentation__sharedDefaultImplementationDelegate__block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) defaultImplementationDelegate];
    v3 = _sharedDefaultImplementationDelegate_defaultImplementationDelegate_174785;
    _sharedDefaultImplementationDelegate_defaultImplementationDelegate_174785 = v2;
  }
}

- (UIContextMenuInteraction)contextMenuInteraction
{
  contextMenuInteraction = self->_contextMenuInteraction;
  if (!contextMenuInteraction)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    v5 = self->_contextMenuInteraction;
    self->_contextMenuInteraction = v4;

    contextMenuInteraction = self->_contextMenuInteraction;
  }

  return contextMenuInteraction;
}

- (PXOneUpPresentationImplementationDelegate)_implementationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__implementationDelegate);

  return WeakRetained;
}

- (void)invalidatePresentingGeometry
{
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToInvalidatePresentingGeometry)
  {
    _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
    [_implementationDelegate oneUpPresentationInvalidatePresentingGeometry:self];
  }
}

- (UIViewController)originalPresentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_originalPresentingViewController);

  return WeakRetained;
}

- (PXOneUpPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  if (self->_delegateFlags.respondsToStyleForContextMenuInteraction)
  {
    configurationCopy = configuration;
    interactionCopy = interaction;
    delegate = [(PXOneUpPresentation *)self delegate];
    v9 = [delegate oneUpPresentation:self styleForContextMenuInteraction:interactionCopy configuration:configurationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction accessoriesForMenuWithConfiguration:(id)configuration
{
  if (self->_delegateFlags.respondsToAccessoriesForContextMenuInteraction)
  {
    configurationCopy = configuration;
    interactionCopy = interaction;
    delegate = [(PXOneUpPresentation *)self delegate];
    v9 = [delegate oneUpPresentation:self accessoriesForContextMenuInteraction:interactionCopy configuration:configurationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  contextMenuStateByConfiguration = [(PXOneUpPresentation *)self contextMenuStateByConfiguration];
  v12 = [contextMenuStateByConfiguration objectForKey:configurationCopy];

  currentPreviewViewController = [(PXOneUpPresentation *)self currentPreviewViewController];
  [(PXOneUpPresentation *)self setCurrentPreviewViewController:0];
  dataSourceManager = [(PXOneUpPresentation *)self dataSourceManager];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__174652;
  v30[4] = __Block_byref_object_dispose__174653;
  v31 = 0;
  if (animatorCopy)
  {
    interactionTargetedPreview = [(PXOneUpPresentation *)self interactionTargetedPreview];

    if (interactionTargetedPreview)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __79__PXOneUpPresentation_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
      v29[3] = &unk_1E774A5C8;
      v29[4] = v30;
      [dataSourceManager performChanges:v29];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PXOneUpPresentation_contextMenuInteraction_willEndForConfiguration_animator___block_invoke_2;
  aBlock[3] = &unk_1E77448F8;
  aBlock[4] = self;
  v16 = v12;
  v23 = v16;
  v17 = currentPreviewViewController;
  v24 = v17;
  v18 = interactionCopy;
  v25 = v18;
  v19 = configurationCopy;
  v26 = v19;
  v28 = v30;
  v20 = dataSourceManager;
  v27 = v20;
  v21 = _Block_copy(aBlock);
  if (animatorCopy && !UIAccessibilityIsReduceMotionEnabled())
  {
    [animatorCopy addCompletion:v21];
  }

  else
  {
    v21[2](v21);
  }

  _Block_object_dispose(v30, 8);
}

void __79__PXOneUpPresentation_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pauseChangeDeliveryWithTimeout:@"PXOneUpPresentation.contextMenuWillEndAnimation" identifier:1.0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __79__PXOneUpPresentation_contextMenuInteraction_willEndForConfiguration_animator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setInteractionTargetedPreview:0];
  if ([*(a1 + 40) interactionAppearance] != 2)
  {
    [*(a1 + 32) setHiddenAssetReferences:0];
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    [*(a1 + 32) didDismissPreviewViewController:v2 committing:{objc_msgSend(*(a1 + 40), "isPreviewCommitting")}];
  }

  v3 = *(a1 + 32);
  if (v3[105] == 1)
  {
    v4 = [v3 delegate];
    [v4 oneUpPresentation:*(a1 + 32) willEndPreviewingForContextMenuInteraction:*(a1 + 56) configuration:*(a1 + 64)];

    v3 = *(a1 + 32);
  }

  v5 = [v3 contextMenuStateByConfiguration];
  [v5 removeObjectForKey:*(a1 + 64)];

  v6 = *(a1 + 80);
  if (*(*(v6 + 8) + 40))
  {
    v7 = *(a1 + 72);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__PXOneUpPresentation_contextMenuInteraction_willEndForConfiguration_animator___block_invoke_3;
    v8[3] = &unk_1E774A5C8;
    v8[4] = v6;
    [v7 performChanges:v8];
  }
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  interactionTargetedPreview = [(PXOneUpPresentation *)self interactionTargetedPreview];
  if (interactionTargetedPreview && ([configurationCopy secondaryItemIdentifiers], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", identifierCopy), v10, v11))
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v13 = [delegate oneUpPresentation:self previewForDismissingToSecondaryItemWithIdentifier:identifierCopy configuration:configurationCopy];
  }

  else
  {
    delegate = [(PXOneUpPresentation *)self initialAssetReference];
    v14 = [(PXOneUpPresentation *)self presentingScrollViewForAssetReference:delegate];
    v15 = v14;
    if (interactionTargetedPreview && delegate && ([v14 window], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v17 = [(PXOneUpPresentation *)self regionOfInterestForAssetReference:delegate];
      if (v17)
      {
        coordinateSpace = [v15 coordinateSpace];
        [v17 rectInCoordinateSpace:coordinateSpace];

        v19 = objc_alloc(MEMORY[0x1E69DCE38]);
        PXRectGetCenter();
      }

      interactionTargetedPreview = 0;
    }

    else
    {
      [(PXOneUpPresentation *)self setHiddenAssetReferences:0];
    }

    interactionTargetedPreview = interactionTargetedPreview;

    v13 = interactionTargetedPreview;
  }

  return v13;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  if (!self->_delegateFlags.respondsToAllowsPreviewCommittingForContextMenuInteraction || (-[PXOneUpPresentation delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 oneUpPresentation:self allowsPreviewCommittingForContextMenuInteraction:interactionCopy], v11, v12))
  {
    contextMenuStateByConfiguration = [(PXOneUpPresentation *)self contextMenuStateByConfiguration];
    v14 = [contextMenuStateByConfiguration objectForKey:configurationCopy];

    if ([v14 actionsAllowedForContextMenuInteraction])
    {
      if (!self->_delegateFlags.respondsToCommitPreviewForContextMenuInteraction || (-[PXOneUpPresentation delegate](self, "delegate"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 oneUpPresentation:self commitPreviewForContextMenuInteraction:interactionCopy], v15, (v16 & 1) == 0))
      {
        currentPreviewViewController = [(PXOneUpPresentation *)self currentPreviewViewController];
        if (currentPreviewViewController)
        {
          [v14 setIsPreviewCommitting:1];
          [animatorCopy setPreferredCommitStyle:1];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __104__PXOneUpPresentation_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
          v18[3] = &unk_1E774C620;
          v18[4] = self;
          v19 = currentPreviewViewController;
          [animatorCopy addCompletion:v18];
        }
      }
    }
  }
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  identifierCopy = identifier;
  configurationCopy = configuration;
  secondaryItemIdentifiers = [configurationCopy secondaryItemIdentifiers];
  LODWORD(configuration) = [secondaryItemIdentifiers containsObject:identifierCopy];

  if (!configuration)
  {
    initialAssetReference = [(PXOneUpPresentation *)self initialAssetReference];
    [(PXOneUpPresentation *)self currentImageForAssetReference:initialAssetReference];
    objc_claimAutoreleasedReturnValue();
    v15 = [(PXOneUpPresentation *)self regionOfInterestForAssetReference:initialAssetReference];
    [(PXOneUpPresentation *)self presentingScrollViewForAssetReference:initialAssetReference];
    coordinateSpace = [objc_claimAutoreleasedReturnValue() coordinateSpace];
    [v15 rectInCoordinateSpace:coordinateSpace];

    placeholderViewFactory = [v15 placeholderViewFactory];

    if (placeholderViewFactory)
    {
      placeholderViewFactory2 = [v15 placeholderViewFactory];
      (placeholderViewFactory2)[2](placeholderViewFactory2, v15);

      v19 = objc_alloc(MEMORY[0x1E69DCE38]);
      PXRectGetCenter();
    }

    PXPreviewImageViewForImage();
  }

  delegate = [(PXOneUpPresentation *)self delegate];
  v13 = [delegate oneUpPresentation:self previewForHighlightingSecondaryItemWithIdentifier:identifierCopy configuration:configurationCopy];

  return v13;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v39[1] = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  sharedInstance = [off_1E7721810 sharedInstance];
  enableMultiSelectMenu = [sharedInstance enableMultiSelectMenu];

  if (self->_delegateFlags.respondsToCanStartPreviewingForContextMenuInteraction)
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v9 = [delegate oneUpPresentation:self canStartPreviewingForContextMenuInteraction:interactionCopy];
  }

  else
  {
    v9 = 0;
  }

  if (self->_delegateFlags.respondsToAllowsActionsForContextMenuInteraction)
  {
    delegate2 = [(PXOneUpPresentation *)self delegate];
    v11 = [delegate2 oneUpPresentation:self allowsActionsForContextMenuInteraction:interactionCopy];
  }

  else
  {
    v11 = 1;
  }

  if (self->_delegateFlags.respondsToAllowsMultiSelectMenuForInteraction)
  {
    delegate3 = [(PXOneUpPresentation *)self delegate];
    v13 = [delegate3 oneUpPresentation:self allowsMultiSelectMenuForInteraction:interactionCopy];

    if (!v9)
    {
LABEL_9:
      v14 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v13 = 0;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v15 = [(PXOneUpPresentation *)self previewViewControllerAllowingActions:v11];
  v16 = v15;
  if (v11)
  {
    if (enableMultiSelectMenu && (v13 & 1) != 0)
    {
      actionManagerForPreviewing = [(PXOneUpPresentation *)self actionManagerForPreviewing];
      v39[0] = *off_1E7721B80;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      px_previewActionMenus = [off_1E7721468 menuElementsForActionManager:actionManagerForPreviewing excludedActionTypes:v18];
    }

    else
    {
      px_previewActionMenus = [v15 px_previewActionMenus];
    }

    v20 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:px_previewActionMenus];
  }

  else
  {
    v20 = 0;
  }

  v21 = MEMORY[0x1E69DC8D8];
  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __77__PXOneUpPresentation_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v37 = &unk_1E7740028;
  v38 = v16;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __77__PXOneUpPresentation_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v32 = &unk_1E7740050;
  v33 = v20;
  v22 = v20;
  v23 = v16;
  v14 = [v21 configurationWithIdentifier:0 previewProvider:&v34 actionProvider:&v29];
  if ((enableMultiSelectMenu & v13) == 1)
  {
    v24 = [(PXOneUpPresentation *)self delegate:v29];
    v25 = [v24 oneUpPresentation:self secondaryIdentifiersForConfiguration:v14];
    [v14 setSecondaryItemIdentifiers:v25];
  }

  [(PXOneUpPresentation *)self setCurrentPreviewViewController:v23, v29, v30, v31, v32];
  v26 = objc_alloc_init(_PXContextMenuConfigurationState);
  [(_PXContextMenuConfigurationState *)v26 setIsContextMenuInteractionActive:1];
  [(_PXContextMenuConfigurationState *)v26 setActionsAllowedForContextMenuInteraction:v11];
  -[_PXContextMenuConfigurationState setInteractionAppearance:](v26, "setInteractionAppearance:", [interactionCopy menuAppearance]);
  contextMenuStateByConfiguration = [(PXOneUpPresentation *)self contextMenuStateByConfiguration];
  [contextMenuStateByConfiguration setObject:v26 forKey:v14];

LABEL_21:

  return v14;
}

- (BOOL)isContextMenuInteractionActive
{
  contextMenuStateByConfiguration = [(PXOneUpPresentation *)self contextMenuStateByConfiguration];
  v3 = [contextMenuStateByConfiguration count] != 0;

  return v3;
}

- (void)_setImplementationDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->__implementationDelegate);

  if (WeakRetained != delegateCopy)
  {
    v7 = objc_loadWeakRetained(&self->__implementationDelegate);

    if (v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_loadWeakRetained(&self->__implementationDelegate);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:626 description:{@"not supporting change of implementation delegate (old: %@; new: %@)", v9, delegateCopy}];
    }

    objc_storeWeak(&self->__implementationDelegate, delegateCopy);
    self->_implementationDelegateFlags.respondsToPresentingViewControllerViewWillAppear = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToPresentingViewControllerViewIsAppearing = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToPresentingViewControllerViewDidAppear = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToPresentingViewControllerViewWillDisappear = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToPresentingViewControllerViewDidDisappear = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToCanStart = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToLastViewedAssetReference = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToCanStop = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToInvalidatePresentingGeometry = objc_opt_respondsToSelector() & 1;
    self->_implementationDelegateFlags.respondsToHandlePresentingPinchGestureRecognizer = objc_opt_respondsToSelector() & 1;
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__PXOneUpPresentation__setImplementationDelegate___block_invoke;
    v10[3] = &unk_1E7740000;
    objc_copyWeak(&v11, &location);
    [delegateCopy oneUpPresentation:self registerStateChangeHandler:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __50__PXOneUpPresentation__setImplementationDelegate___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setState:a2];
}

- (NSString)searchContextualVideoThumbnailIdentifier
{
  if (self->_delegateFlags.respondsToSearchContextualVideoThumbnail)
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v4 = [delegate oneUpPresentationContextualVideoThumbnailIdentifier:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXSearchQueryMatchInfo)searchQueryMatchInfo
{
  v53 = *MEMORY[0x1E69E9840];
  p_delegateFlags = &self->_delegateFlags;
  if (self->_delegateFlags.respondsToSearchContext)
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v5 = [delegate oneUpPresentationSearchQueryMatchInfo:self];

    v6 = PLOneUpGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "PUOneUpPresentation: Delegate provided search query info: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
    if (self->_delegateFlags.respondsToMatchedSceneIdentifiers)
    {
      delegate2 = [(PXOneUpPresentation *)self delegate];
      v9 = [delegate2 oneUpPresentationMatchedSceneIdentifiers:self];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v7;
      }

      v7 = v11;

      v12 = PLOneUpGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v7;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "PUOneUpPresentation: Delegate provided matched scene identifiers: %@", buf, 0xCu);
      }
    }

    v13 = MEMORY[0x1E695E0F0];
    if (p_delegateFlags->respondsToMatchedAudioIdentifiers)
    {
      delegate3 = [(PXOneUpPresentation *)self delegate];
      v15 = [delegate3 oneUpPresentationMatchedAudioIdentifiers:self];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      v13 = v17;

      v18 = PLOneUpGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v13;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "PUOneUpPresentation: Delegate provided matched audio identifiers: %@", buf, 0xCu);
      }
    }

    v19 = MEMORY[0x1E695E0F0];
    if (p_delegateFlags->respondsToMatchedHumanActionIdentifiers)
    {
      delegate4 = [(PXOneUpPresentation *)self delegate];
      v21 = [delegate4 oneUpPresentationMatchedHumanActionIdentifiers:self];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      v19 = v23;

      v24 = PLOneUpGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v19;
        _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_DEFAULT, "PUOneUpPresentation: Delegate provided matched human action identifiers: %@", buf, 0xCu);
      }
    }

    v25 = MEMORY[0x1E695E0F0];
    if (p_delegateFlags->respondsToMatchedPersonLocalIdentifiers)
    {
      delegate5 = [(PXOneUpPresentation *)self delegate];
      v27 = [delegate5 oneUpPresentationMatchedPersonLocalIdentifiers:self];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v25;
      }

      v25 = v29;

      v30 = PLOneUpGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v25;
        _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_DEFAULT, "PUOneUpPresentation: Delegate provided matched person identifiers: %@", buf, 0xCu);
      }
    }

    v6 = v7;
    v31 = MEMORY[0x1E695E0F0];
    if (p_delegateFlags->respondsToMatchedQueryStrings)
    {
      delegate6 = [(PXOneUpPresentation *)self delegate];
      v33 = [delegate6 oneUpPresentationMatchedQueryStrings:self];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v31;
      }

      v31 = v35;
    }

    v36 = v31;
    v37 = v19;
    v38 = MEMORY[0x1E695E0F0];
    if (p_delegateFlags->respondsToAssetUUIDsAllowedToHighlight)
    {
      delegate7 = [(PXOneUpPresentation *)self delegate];
      v40 = [delegate7 oneUpPresentationAssetUUIDsAllowedToHighlightText:self];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = v38;
      }

      v38 = v42;

      v43 = PLOneUpGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v38;
        _os_log_impl(&dword_1A3C1C000, v43, OS_LOG_TYPE_DEFAULT, "PUOneUpPresentation: Delegate provided asset UUIDs to highlight in 1up: %@", buf, 0xCu);
      }
    }

    v44 = [PXSearchQueryMatchInfo alloc];
    v45 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
    v46 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v25];
    v50 = v13;
    v47 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v13];
    v48 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v19];
    v5 = [(PXSearchQueryMatchInfo *)v44 initWithLocalizedQueryString:0 matchedSceneIdentifiers:v45 personLocalIdentifiers:v46 audioIdentifiers:v47 humanActionIdentifiers:v48 ocrTexts:v36 ocrAssetUUIDS:v38 queryEmbedding:0 countOfQueryTerms:0];
  }

  return v5;
}

- (id)presentingScrollViewForAssetReference:(id)reference
{
  if (self->_delegateFlags.respondsToScrollView)
  {
    referenceCopy = reference;
    delegate = [(PXOneUpPresentation *)self delegate];
    v6 = [delegate oneUpPresentation:self presentingScrollViewForAssetReference:referenceCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHiddenAssetReferences:(id)references
{
  if (self->_delegateFlags.respondsToSetHiddenAssetReferences)
  {
    referencesCopy = references;
    delegate = [(PXOneUpPresentation *)self delegate];
    [delegate oneUpPresentation:self setHiddenAssetReferences:referencesCopy];
  }
}

- (void)scrollAssetReferenceToVisible:(id)visible
{
  if (self->_delegateFlags.respondsToScrollAssetReferenceToVisible)
  {
    visibleCopy = visible;
    delegate = [(PXOneUpPresentation *)self delegate];
    [delegate oneUpPresentation:self scrollAssetReferenceToVisible:visibleCopy];
  }
}

- (id)regionOfInterestForAssetReference:(id)reference
{
  if (self->_delegateFlags.respondsToRegionOfInterestForAssetReference)
  {
    referenceCopy = reference;
    delegate = [(PXOneUpPresentation *)self delegate];
    v6 = [delegate oneUpPresentation:self regionOfInterestForAssetReference:referenceCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)currentImageForAssetReference:(id)reference
{
  referenceCopy = reference;
  if (!self->_delegateFlags.respondsToCurrentImageForAssetReference || (-[PXOneUpPresentation delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 oneUpPresentation:self currentImageForAssetReference:referenceCopy], image = objc_claimAutoreleasedReturnValue(), v5, !image))
  {
    v7 = [(PXOneUpPresentation *)self regionOfInterestForAssetReference:referenceCopy];
    imageRequester = [v7 imageRequester];
    image = [imageRequester image];
  }

  return image;
}

- (BOOL)wantsShowInLibraryButton
{
  delegate = [(PXOneUpPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate oneUpPresentationWantsShowInLibraryButton:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)preventShowInAllPhotosAction
{
  if (!self->_delegateFlags.respondsToPreventShowInAllPhotos)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(PXOneUpPresentation *)self delegate];
  LOBYTE(selfCopy) = [delegate oneUpPresentationShouldPreventShowInAllPhotosAction:selfCopy];

  return selfCopy;
}

- (BOOL)shouldDisableAutoPlayback
{
  if (!self->_delegateFlags.respondsToShouldDisableAutoPlayback)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(PXOneUpPresentation *)self delegate];
  LOBYTE(selfCopy) = [delegate oneUpPresentationShouldDisableAutoPlayback:selfCopy];

  return selfCopy;
}

- (BOOL)shouldAutoPlay
{
  if (!self->_delegateFlags.respondsToShouldAutoPlay)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(PXOneUpPresentation *)self delegate];
  LOBYTE(selfCopy) = [delegate oneUpPresentationShouldAutoPlay:selfCopy];

  return selfCopy;
}

- (PXAssetImportStatusManager)importStatusManager
{
  if (self->_delegateFlags.respondsToImportStatusManager)
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v4 = [delegate oneUpPresentationImportStatusManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)actionContext
{
  if (!self->_delegateFlags.respondsToActionContext)
  {
    return 0;
  }

  delegate = [(PXOneUpPresentation *)self delegate];
  v4 = [delegate oneUpPresentationActionContext:self];

  return v4;
}

- (PXAssetActionManager)actionManagerForPreviewing
{
  if (self->_delegateFlags.respondsToActionManagerForPreviewing)
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v4 = [delegate oneUpPresentationActionManagerForPreviewing:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXAssetActionManager)actionManager
{
  if (self->_delegateFlags.respondsToActionManager)
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v4 = [delegate oneUpPresentationActionManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXAssetReference)initialAssetReference
{
  if (self->_delegateFlags.respondsToInitialAssetReference)
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v4 = [delegate oneUpPresentationInitialAssetReference:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXContentPrivacyController)privacyController
{
  if (self->_delegateFlags.respondsToPrivacyController)
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v4 = [delegate oneUpPresentationPrivacyController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PXPhotosDetailsContext)photosDetailsContext
{
  if (self->_delegateFlags.respondsToPhotosDetailsContext)
  {
    delegate = [(PXOneUpPresentation *)self delegate];
    v4 = [delegate oneUpPresentationPhotosDetailsContext:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)origin
{
  if (!self->_delegateFlags.respondsToOrigin)
  {
    return 0;
  }

  delegate = [(PXOneUpPresentation *)self delegate];
  v4 = [delegate oneUpPresentationOrigin:self];

  return v4;
}

- (PXUIMediaProvider)mediaProvider
{
  delegate = [(PXOneUpPresentation *)self delegate];
  if (!delegate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:400 description:{@"Delegate must be set before %@ is called.", v8}];
  }

  v5 = [delegate oneUpPresentationMediaProvider:self];

  return v5;
}

- (PXAssetsDataSourceManager)dataSourceManager
{
  delegate = [(PXOneUpPresentation *)self delegate];
  if (!delegate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:392 description:{@"Delegate must be set before %@ is called.", v8}];
  }

  v5 = [delegate oneUpPresentationDataSourceManager:self];

  return v5;
}

- (BOOL)handlePresentingPinchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToHandlePresentingPinchGestureRecognizer)
  {
    _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
    v6 = [_implementationDelegate oneUpPresentation:self handlePresentingPinchGestureRecognizer:recognizerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)stopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(PXOneUpPresentation *)self isEnabled])
  {
    _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
    [_implementationDelegate oneUpPresentation:self stopAnimated:animatedCopy];
  }
}

- (BOOL)canStop
{
  isEnabled = [(PXOneUpPresentation *)self isEnabled];
  if (isEnabled)
  {
    if (self->_implementationDelegateFlags.respondsToCanStop)
    {
      _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
      v5 = [_implementationDelegate oneUpPresentationCanStop:self];

      LOBYTE(isEnabled) = v5;
    }

    else
    {
      LOBYTE(isEnabled) = 1;
    }
  }

  return isEnabled;
}

- (void)commitPreviewViewController:(id)controller
{
  controllerCopy = controller;
  _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
  [_implementationDelegate oneUpPresentation:self commitPreviewViewController:controllerCopy];
}

- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing
{
  committingCopy = committing;
  controllerCopy = controller;
  _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
  [_implementationDelegate oneUpPresentation:self didDismissPreviewViewController:controllerCopy committing:committingCopy];
}

- (id)previewViewControllerAllowingActions:(BOOL)actions
{
  actionsCopy = actions;
  _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
  v6 = [_implementationDelegate previewViewControllerForOneUpPresentation:self allowingActions:actionsCopy];

  return v6;
}

- (void)waitForTransitionToFinishWithTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PXOneUpPresentation *)self state]== 3)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else if (handlerCopy)
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v7 = 0;
    handlerCopy;
    PXIterateAsynchronously();
  }
}

void __78__PXOneUpPresentation_waitForTransitionToFinishWithTimeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) state] == 3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [v3 stop];
  }

  else
  {
    v4 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__PXOneUpPresentation_waitForTransitionToFinishWithTimeout_completionHandler___block_invoke_2;
    block[3] = &unk_1E774C648;
    v6 = v3;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)startWithConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  if (-[PXOneUpPresentation isEnabled](self, "isEnabled") && (-[PXOneUpPresentation _implementationDelegate](self, "_implementationDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 oneUpPresentation:self startWithConfigurationHandler:handlerCopy], v5, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    [(PXOneUpPresentation *)self cleanUp];
    v7 = 0;
  }

  return v7;
}

void __79__PXOneUpPresentation_waitUntilPresentationCanStartAnimated_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) canStartAnimated:*(a1 + 40)])
  {
    [v3 stop];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PXOneUpPresentation_waitUntilPresentationCanStartAnimated_completionHandler___block_invoke_2;
    block[3] = &unk_1E774C648;
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __79__PXOneUpPresentation_waitUntilPresentationCanStartAnimated_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) canStartAnimated:*(a1 + 48)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (PXAssetReference)lastViewedAssetReference
{
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToLastViewedAssetReference)
  {
    _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
    v4 = [_implementationDelegate oneUpPresentationLastViewedAssetReference:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canStartAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isEnabled = [(PXOneUpPresentation *)self isEnabled];
  if (isEnabled)
  {
    if ([(PXOneUpPresentation *)self state]== 3 || !self->_implementationDelegateFlags.respondsToCanStart)
    {
      LOBYTE(isEnabled) = 1;
    }

    else
    {
      _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
      v7 = [_implementationDelegate oneUpPresentation:self canStartAnimated:animatedCopy];

      LOBYTE(isEnabled) = v7;
    }
  }

  return isEnabled;
}

- (void)presentingViewControllerViewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToPresentingViewControllerViewDidDisappear)
  {
    _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
    [_implementationDelegate oneUpPresentation:self presentingViewControllerViewDidDisappear:disappearCopy];
  }
}

- (void)presentingViewControllerViewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToPresentingViewControllerViewWillDisappear)
  {
    _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
    [_implementationDelegate oneUpPresentation:self presentingViewControllerViewWillDisappear:disappearCopy];
  }
}

- (void)presentingViewControllerViewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToPresentingViewControllerViewDidAppear)
  {
    _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
    [_implementationDelegate oneUpPresentation:self presentingViewControllerViewDidAppear:appearCopy];
  }
}

- (void)presentingViewControllerViewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  if ([(PXOneUpPresentation *)self isEnabled])
  {
    [(PXOneUpPresentation *)self _updateImplementationDelegate];
    if (self->_implementationDelegateFlags.respondsToPresentingViewControllerViewIsAppearing)
    {
      _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
      [_implementationDelegate oneUpPresentation:self presentingViewControllerViewIsAppearing:appearingCopy];
    }
  }
}

- (void)presentingViewControllerViewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(PXOneUpPresentation *)self isEnabled])
  {
    [(PXOneUpPresentation *)self _updateImplementationDelegate];
    if (self->_implementationDelegateFlags.respondsToPresentingViewControllerViewWillAppear)
    {
      _implementationDelegate = [(PXOneUpPresentation *)self _implementationDelegate];
      [_implementationDelegate oneUpPresentation:self presentingViewControllerViewWillAppear:appearCopy];
    }
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_state = state;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__PXOneUpPresentation_setState___block_invoke;
    v5[3] = &unk_1E774C5F8;
    v5[4] = self;
    [(PXOneUpPresentation *)self performChanges:v5];
  }
}

- (void)cleanUp
{
  strongDelegate = [(PXOneUpPresentation *)self strongDelegate];

  if (strongDelegate)
  {

    [(PXOneUpPresentation *)self setStrongDelegate:0];
  }
}

- (void)setStrongDelegate:(id)delegate
{
  objc_storeStrong(&self->_strongDelegate, delegate);
  delegateCopy = delegate;
  [(PXOneUpPresentation *)self setDelegate:delegateCopy];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToPhotosDetailsContext = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToPrivacyController = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToInitialAssetReference = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToCanStartPreviewingForContextMenuInteraction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAllowsActionsForContextMenuInteraction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAllowsMultiSelectMenuForInteraction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAllowsPreviewCommittingForContextMenuInteraction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToCommitPreviewForContextMenuInteraction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillStartPreviewingForContextMenuInteraction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillEndPreviewingForContextMenuInteraction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAccessoriesForContextMenuInteraction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToSecondaryIdentifiersForConfiguration = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToStyleForContextMenuInteraction = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToCurrentImageForAssetReference = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToRegionOfInterestForAssetReference = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToScrollAssetReferenceToVisible = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToSetHiddenAssetReferences = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldAutoPlay = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToPreventShowInAllPhotos = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToActionManager = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToActionManagerForPreviewing = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToActionContext = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToImportStatusManager = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToOrigin = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToScrollView = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToSearchContext = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToSearchContextualVideoThumbnail = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMatchedSceneIdentifiers = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMatchedAudioIdentifiers = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMatchedHumanActionIdentifiers = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMatchedPersonLocalIdentifiers = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToAssetUUIDsAllowedToHighlight = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToMatchedQueryStrings = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldDisableAutoPlayback = objc_opt_respondsToSelector() & 1;
  }
}

- (PXOneUpPresentation)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = PXOneUpPresentation;
  v5 = [(PXOneUpPresentation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    contextMenuStateByConfiguration = v6->_contextMenuStateByConfiguration;
    v6->_contextMenuStateByConfiguration = weakToStrongObjectsMapTable;
  }

  return v6;
}

- (PXOneUpPresentation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:117 description:@"unavailable initializer"];

  return 0;
}

+ (void)viewController:(id)controller willPresentOneUpInViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v6 = +[PXWorkaroundSettings sharedInstance];
  shouldWorkAround104295292 = [v6 shouldWorkAround104295292];

  if (shouldWorkAround104295292)
  {
    presentedViewController = [controllerCopy presentedViewController];
    if (presentedViewController && [controllerCopy _mayForwardPresentationsToPresentedViewController] && !objc_msgSend(viewControllerCopy, "modalPresentationStyle"))
    {
      px_oneUpPresentation = [controllerCopy px_oneUpPresentation];
      [presentedViewController px_setOneUpPresentationProxy:px_oneUpPresentation];
    }
  }
}

@end