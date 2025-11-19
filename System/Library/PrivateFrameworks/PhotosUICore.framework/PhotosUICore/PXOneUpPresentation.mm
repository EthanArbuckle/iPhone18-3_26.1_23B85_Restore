@interface PXOneUpPresentation
+ (id)_sharedDefaultImplementationDelegate;
+ (void)viewController:(id)a3 willPresentOneUpInViewController:(id)a4;
- (BOOL)canStartAnimated:(BOOL)a3;
- (BOOL)canStop;
- (BOOL)handlePresentingPinchGestureRecognizer:(id)a3;
- (BOOL)isContextMenuInteractionActive;
- (BOOL)preventShowInAllPhotosAction;
- (BOOL)shouldAutoPlay;
- (BOOL)shouldDisableAutoPlayback;
- (BOOL)startWithConfigurationHandler:(id)a3;
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
- (PXOneUpPresentation)initWithPresentingViewController:(id)a3;
- (PXOneUpPresentationDelegate)delegate;
- (PXOneUpPresentationImplementationDelegate)_implementationDelegate;
- (PXOneUpPresentationImplementationDelegate)implementationDelegate;
- (PXPhotosDetailsContext)photosDetailsContext;
- (PXSearchQueryMatchInfo)searchQueryMatchInfo;
- (PXUIMediaProvider)mediaProvider;
- (UIContextMenuInteraction)contextMenuInteraction;
- (UIViewController)originalPresentingViewController;
- (UIViewController)presentingViewController;
- (id)_contextMenuInteraction:(id)a3 accessoriesForMenuWithConfiguration:(id)a4;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)currentImageForAssetReference:(id)a3;
- (id)presentingScrollViewForAssetReference:(id)a3;
- (id)previewViewControllerAllowingActions:(BOOL)a3;
- (id)regionOfInterestForAssetReference:(id)a3;
- (int64_t)actionContext;
- (int64_t)origin;
- (void)_setImplementationDelegate:(id)a3;
- (void)_updateImplementationDelegate;
- (void)cleanUp;
- (void)commitPreviewViewController:(id)a3;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4;
- (void)invalidatePresentingGeometry;
- (void)presentingViewControllerViewDidAppear:(BOOL)a3;
- (void)presentingViewControllerViewDidDisappear:(BOOL)a3;
- (void)presentingViewControllerViewIsAppearing:(BOOL)a3;
- (void)presentingViewControllerViewWillAppear:(BOOL)a3;
- (void)presentingViewControllerViewWillDisappear:(BOOL)a3;
- (void)scrollAssetReferenceToVisible:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHiddenAssetReferences:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setStrongDelegate:(id)a3;
- (void)stopAnimated:(BOOL)a3;
- (void)waitForTransitionToFinishWithTimeout:(double)a3 completionHandler:(id)a4;
@end

@implementation PXOneUpPresentation

- (void)_updateImplementationDelegate
{
  v3 = [(PXOneUpPresentation *)self presentingViewController];
  v4 = [v3 px_oneUpPresentation];
  v9 = [v4 implementationDelegate];

  v5 = v9;
  if (!v9)
  {
    do
    {
      v8 = [v3 parentViewController];
      if (!v8)
      {
        v5 = +[PXOneUpPresentation _sharedDefaultImplementationDelegate];
        goto LABEL_7;
      }

      v6 = v8;

      v7 = [v6 px_oneUpPresentation];
      v10 = [v7 implementationDelegate];

      v5 = v10;
      v3 = v6;
    }

    while (!v10);
    v3 = v6;
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
  block[4] = a1;
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
    v3 = [(PXOneUpPresentation *)self _implementationDelegate];
    [v3 oneUpPresentationInvalidatePresentingGeometry:self];
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

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  if (self->_delegateFlags.respondsToStyleForContextMenuInteraction)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(PXOneUpPresentation *)self delegate];
    v9 = [v8 oneUpPresentation:self styleForContextMenuInteraction:v7 configuration:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_contextMenuInteraction:(id)a3 accessoriesForMenuWithConfiguration:(id)a4
{
  if (self->_delegateFlags.respondsToAccessoriesForContextMenuInteraction)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(PXOneUpPresentation *)self delegate];
    v9 = [v8 oneUpPresentation:self accessoriesForContextMenuInteraction:v7 configuration:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXOneUpPresentation *)self contextMenuStateByConfiguration];
  v12 = [v11 objectForKey:v9];

  v13 = [(PXOneUpPresentation *)self currentPreviewViewController];
  [(PXOneUpPresentation *)self setCurrentPreviewViewController:0];
  v14 = [(PXOneUpPresentation *)self dataSourceManager];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__174652;
  v30[4] = __Block_byref_object_dispose__174653;
  v31 = 0;
  if (v10)
  {
    v15 = [(PXOneUpPresentation *)self interactionTargetedPreview];

    if (v15)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __79__PXOneUpPresentation_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
      v29[3] = &unk_1E774A5C8;
      v29[4] = v30;
      [v14 performChanges:v29];
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PXOneUpPresentation_contextMenuInteraction_willEndForConfiguration_animator___block_invoke_2;
  aBlock[3] = &unk_1E77448F8;
  aBlock[4] = self;
  v16 = v12;
  v23 = v16;
  v17 = v13;
  v24 = v17;
  v18 = v8;
  v25 = v18;
  v19 = v9;
  v26 = v19;
  v28 = v30;
  v20 = v14;
  v27 = v20;
  v21 = _Block_copy(aBlock);
  if (v10 && !UIAccessibilityIsReduceMotionEnabled())
  {
    [v10 addCompletion:v21];
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

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(PXOneUpPresentation *)self interactionTargetedPreview];
  if (v9 && ([v7 secondaryItemIdentifiers], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v8), v10, v11))
  {
    v12 = [(PXOneUpPresentation *)self delegate];
    v13 = [v12 oneUpPresentation:self previewForDismissingToSecondaryItemWithIdentifier:v8 configuration:v7];
  }

  else
  {
    v12 = [(PXOneUpPresentation *)self initialAssetReference];
    v14 = [(PXOneUpPresentation *)self presentingScrollViewForAssetReference:v12];
    v15 = v14;
    if (v9 && v12 && ([v14 window], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v17 = [(PXOneUpPresentation *)self regionOfInterestForAssetReference:v12];
      if (v17)
      {
        v18 = [v15 coordinateSpace];
        [v17 rectInCoordinateSpace:v18];

        v19 = objc_alloc(MEMORY[0x1E69DCE38]);
        PXRectGetCenter();
      }

      v9 = 0;
    }

    else
    {
      [(PXOneUpPresentation *)self setHiddenAssetReferences:0];
    }

    v9 = v9;

    v13 = v9;
  }

  return v13;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_delegateFlags.respondsToAllowsPreviewCommittingForContextMenuInteraction || (-[PXOneUpPresentation delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 oneUpPresentation:self allowsPreviewCommittingForContextMenuInteraction:v8], v11, v12))
  {
    v13 = [(PXOneUpPresentation *)self contextMenuStateByConfiguration];
    v14 = [v13 objectForKey:v9];

    if ([v14 actionsAllowedForContextMenuInteraction])
    {
      if (!self->_delegateFlags.respondsToCommitPreviewForContextMenuInteraction || (-[PXOneUpPresentation delegate](self, "delegate"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 oneUpPresentation:self commitPreviewForContextMenuInteraction:v8], v15, (v16 & 1) == 0))
      {
        v17 = [(PXOneUpPresentation *)self currentPreviewViewController];
        if (v17)
        {
          [v14 setIsPreviewCommitting:1];
          [v10 setPreferredCommitStyle:1];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __104__PXOneUpPresentation_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
          v18[3] = &unk_1E774C620;
          v18[4] = self;
          v19 = v17;
          [v10 addCompletion:v18];
        }
      }
    }
  }
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v10 secondaryItemIdentifiers];
  LODWORD(a4) = [v11 containsObject:v9];

  if (!a4)
  {
    v14 = [(PXOneUpPresentation *)self initialAssetReference];
    [(PXOneUpPresentation *)self currentImageForAssetReference:v14];
    objc_claimAutoreleasedReturnValue();
    v15 = [(PXOneUpPresentation *)self regionOfInterestForAssetReference:v14];
    [(PXOneUpPresentation *)self presentingScrollViewForAssetReference:v14];
    v16 = [objc_claimAutoreleasedReturnValue() coordinateSpace];
    [v15 rectInCoordinateSpace:v16];

    v17 = [v15 placeholderViewFactory];

    if (v17)
    {
      v18 = [v15 placeholderViewFactory];
      (v18)[2](v18, v15);

      v19 = objc_alloc(MEMORY[0x1E69DCE38]);
      PXRectGetCenter();
    }

    PXPreviewImageViewForImage();
  }

  v12 = [(PXOneUpPresentation *)self delegate];
  v13 = [v12 oneUpPresentation:self previewForHighlightingSecondaryItemWithIdentifier:v9 configuration:v10];

  return v13;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [off_1E7721810 sharedInstance];
  v7 = [v6 enableMultiSelectMenu];

  if (self->_delegateFlags.respondsToCanStartPreviewingForContextMenuInteraction)
  {
    v8 = [(PXOneUpPresentation *)self delegate];
    v9 = [v8 oneUpPresentation:self canStartPreviewingForContextMenuInteraction:v5];
  }

  else
  {
    v9 = 0;
  }

  if (self->_delegateFlags.respondsToAllowsActionsForContextMenuInteraction)
  {
    v10 = [(PXOneUpPresentation *)self delegate];
    v11 = [v10 oneUpPresentation:self allowsActionsForContextMenuInteraction:v5];
  }

  else
  {
    v11 = 1;
  }

  if (self->_delegateFlags.respondsToAllowsMultiSelectMenuForInteraction)
  {
    v12 = [(PXOneUpPresentation *)self delegate];
    v13 = [v12 oneUpPresentation:self allowsMultiSelectMenuForInteraction:v5];

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
    if (v7 && (v13 & 1) != 0)
    {
      v17 = [(PXOneUpPresentation *)self actionManagerForPreviewing];
      v39[0] = *off_1E7721B80;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      v19 = [off_1E7721468 menuElementsForActionManager:v17 excludedActionTypes:v18];
    }

    else
    {
      v19 = [v15 px_previewActionMenus];
    }

    v20 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 children:v19];
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
  if ((v7 & v13) == 1)
  {
    v24 = [(PXOneUpPresentation *)self delegate:v29];
    v25 = [v24 oneUpPresentation:self secondaryIdentifiersForConfiguration:v14];
    [v14 setSecondaryItemIdentifiers:v25];
  }

  [(PXOneUpPresentation *)self setCurrentPreviewViewController:v23, v29, v30, v31, v32];
  v26 = objc_alloc_init(_PXContextMenuConfigurationState);
  [(_PXContextMenuConfigurationState *)v26 setIsContextMenuInteractionActive:1];
  [(_PXContextMenuConfigurationState *)v26 setActionsAllowedForContextMenuInteraction:v11];
  -[_PXContextMenuConfigurationState setInteractionAppearance:](v26, "setInteractionAppearance:", [v5 menuAppearance]);
  v27 = [(PXOneUpPresentation *)self contextMenuStateByConfiguration];
  [v27 setObject:v26 forKey:v14];

LABEL_21:

  return v14;
}

- (BOOL)isContextMenuInteractionActive
{
  v2 = [(PXOneUpPresentation *)self contextMenuStateByConfiguration];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_setImplementationDelegate:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__implementationDelegate);

  if (WeakRetained != v5)
  {
    v7 = objc_loadWeakRetained(&self->__implementationDelegate);

    if (v7)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_loadWeakRetained(&self->__implementationDelegate);
      [v8 handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:626 description:{@"not supporting change of implementation delegate (old: %@; new: %@)", v9, v5}];
    }

    objc_storeWeak(&self->__implementationDelegate, v5);
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
    [v5 oneUpPresentation:self registerStateChangeHandler:v10];
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
    v3 = [(PXOneUpPresentation *)self delegate];
    v4 = [v3 oneUpPresentationContextualVideoThumbnailIdentifier:self];
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
    v4 = [(PXOneUpPresentation *)self delegate];
    v5 = [v4 oneUpPresentationSearchQueryMatchInfo:self];

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
      v8 = [(PXOneUpPresentation *)self delegate];
      v9 = [v8 oneUpPresentationMatchedSceneIdentifiers:self];
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
      v14 = [(PXOneUpPresentation *)self delegate];
      v15 = [v14 oneUpPresentationMatchedAudioIdentifiers:self];
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
      v20 = [(PXOneUpPresentation *)self delegate];
      v21 = [v20 oneUpPresentationMatchedHumanActionIdentifiers:self];
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
      v26 = [(PXOneUpPresentation *)self delegate];
      v27 = [v26 oneUpPresentationMatchedPersonLocalIdentifiers:self];
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
      v32 = [(PXOneUpPresentation *)self delegate];
      v33 = [v32 oneUpPresentationMatchedQueryStrings:self];
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
      v39 = [(PXOneUpPresentation *)self delegate];
      v40 = [v39 oneUpPresentationAssetUUIDsAllowedToHighlightText:self];
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

- (id)presentingScrollViewForAssetReference:(id)a3
{
  if (self->_delegateFlags.respondsToScrollView)
  {
    v4 = a3;
    v5 = [(PXOneUpPresentation *)self delegate];
    v6 = [v5 oneUpPresentation:self presentingScrollViewForAssetReference:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHiddenAssetReferences:(id)a3
{
  if (self->_delegateFlags.respondsToSetHiddenAssetReferences)
  {
    v5 = a3;
    v6 = [(PXOneUpPresentation *)self delegate];
    [v6 oneUpPresentation:self setHiddenAssetReferences:v5];
  }
}

- (void)scrollAssetReferenceToVisible:(id)a3
{
  if (self->_delegateFlags.respondsToScrollAssetReferenceToVisible)
  {
    v5 = a3;
    v6 = [(PXOneUpPresentation *)self delegate];
    [v6 oneUpPresentation:self scrollAssetReferenceToVisible:v5];
  }
}

- (id)regionOfInterestForAssetReference:(id)a3
{
  if (self->_delegateFlags.respondsToRegionOfInterestForAssetReference)
  {
    v4 = a3;
    v5 = [(PXOneUpPresentation *)self delegate];
    v6 = [v5 oneUpPresentation:self regionOfInterestForAssetReference:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)currentImageForAssetReference:(id)a3
{
  v4 = a3;
  if (!self->_delegateFlags.respondsToCurrentImageForAssetReference || (-[PXOneUpPresentation delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 oneUpPresentation:self currentImageForAssetReference:v4], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = [(PXOneUpPresentation *)self regionOfInterestForAssetReference:v4];
    v8 = [v7 imageRequester];
    v6 = [v8 image];
  }

  return v6;
}

- (BOOL)wantsShowInLibraryButton
{
  v3 = [(PXOneUpPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 oneUpPresentationWantsShowInLibraryButton:self];
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

  v2 = self;
  v3 = [(PXOneUpPresentation *)self delegate];
  LOBYTE(v2) = [v3 oneUpPresentationShouldPreventShowInAllPhotosAction:v2];

  return v2;
}

- (BOOL)shouldDisableAutoPlayback
{
  if (!self->_delegateFlags.respondsToShouldDisableAutoPlayback)
  {
    return 0;
  }

  v2 = self;
  v3 = [(PXOneUpPresentation *)self delegate];
  LOBYTE(v2) = [v3 oneUpPresentationShouldDisableAutoPlayback:v2];

  return v2;
}

- (BOOL)shouldAutoPlay
{
  if (!self->_delegateFlags.respondsToShouldAutoPlay)
  {
    return 0;
  }

  v2 = self;
  v3 = [(PXOneUpPresentation *)self delegate];
  LOBYTE(v2) = [v3 oneUpPresentationShouldAutoPlay:v2];

  return v2;
}

- (PXAssetImportStatusManager)importStatusManager
{
  if (self->_delegateFlags.respondsToImportStatusManager)
  {
    v3 = [(PXOneUpPresentation *)self delegate];
    v4 = [v3 oneUpPresentationImportStatusManager:self];
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

  v3 = [(PXOneUpPresentation *)self delegate];
  v4 = [v3 oneUpPresentationActionContext:self];

  return v4;
}

- (PXAssetActionManager)actionManagerForPreviewing
{
  if (self->_delegateFlags.respondsToActionManagerForPreviewing)
  {
    v3 = [(PXOneUpPresentation *)self delegate];
    v4 = [v3 oneUpPresentationActionManagerForPreviewing:self];
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
    v3 = [(PXOneUpPresentation *)self delegate];
    v4 = [v3 oneUpPresentationActionManager:self];
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
    v3 = [(PXOneUpPresentation *)self delegate];
    v4 = [v3 oneUpPresentationInitialAssetReference:self];
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
    v3 = [(PXOneUpPresentation *)self delegate];
    v4 = [v3 oneUpPresentationPrivacyController:self];
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
    v3 = [(PXOneUpPresentation *)self delegate];
    v4 = [v3 oneUpPresentationPhotosDetailsContext:self];
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

  v3 = [(PXOneUpPresentation *)self delegate];
  v4 = [v3 oneUpPresentationOrigin:self];

  return v4;
}

- (PXUIMediaProvider)mediaProvider
{
  v4 = [(PXOneUpPresentation *)self delegate];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:400 description:{@"Delegate must be set before %@ is called.", v8}];
  }

  v5 = [v4 oneUpPresentationMediaProvider:self];

  return v5;
}

- (PXAssetsDataSourceManager)dataSourceManager
{
  v4 = [(PXOneUpPresentation *)self delegate];
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:392 description:{@"Delegate must be set before %@ is called.", v8}];
  }

  v5 = [v4 oneUpPresentationDataSourceManager:self];

  return v5;
}

- (BOOL)handlePresentingPinchGestureRecognizer:(id)a3
{
  v4 = a3;
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToHandlePresentingPinchGestureRecognizer)
  {
    v5 = [(PXOneUpPresentation *)self _implementationDelegate];
    v6 = [v5 oneUpPresentation:self handlePresentingPinchGestureRecognizer:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)stopAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PXOneUpPresentation *)self isEnabled])
  {
    v5 = [(PXOneUpPresentation *)self _implementationDelegate];
    [v5 oneUpPresentation:self stopAnimated:v3];
  }
}

- (BOOL)canStop
{
  v3 = [(PXOneUpPresentation *)self isEnabled];
  if (v3)
  {
    if (self->_implementationDelegateFlags.respondsToCanStop)
    {
      v4 = [(PXOneUpPresentation *)self _implementationDelegate];
      v5 = [v4 oneUpPresentationCanStop:self];

      LOBYTE(v3) = v5;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)commitPreviewViewController:(id)a3
{
  v4 = a3;
  v5 = [(PXOneUpPresentation *)self _implementationDelegate];
  [v5 oneUpPresentation:self commitPreviewViewController:v4];
}

- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXOneUpPresentation *)self _implementationDelegate];
  [v7 oneUpPresentation:self didDismissPreviewViewController:v6 committing:v4];
}

- (id)previewViewControllerAllowingActions:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXOneUpPresentation *)self _implementationDelegate];
  v6 = [v5 previewViewControllerForOneUpPresentation:self allowingActions:v3];

  return v6;
}

- (void)waitForTransitionToFinishWithTimeout:(double)a3 completionHandler:(id)a4
{
  v5 = a4;
  if ([(PXOneUpPresentation *)self state]== 3)
  {
    if (v5)
    {
      v5[2](v5, 1);
    }
  }

  else if (v5)
  {
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v7 = 0;
    v5;
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

- (BOOL)startWithConfigurationHandler:(id)a3
{
  v4 = a3;
  if (-[PXOneUpPresentation isEnabled](self, "isEnabled") && (-[PXOneUpPresentation _implementationDelegate](self, "_implementationDelegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 oneUpPresentation:self startWithConfigurationHandler:v4], v5, (v6 & 1) != 0))
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
    v3 = [(PXOneUpPresentation *)self _implementationDelegate];
    v4 = [v3 oneUpPresentationLastViewedAssetReference:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canStartAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXOneUpPresentation *)self isEnabled];
  if (v5)
  {
    if ([(PXOneUpPresentation *)self state]== 3 || !self->_implementationDelegateFlags.respondsToCanStart)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v6 = [(PXOneUpPresentation *)self _implementationDelegate];
      v7 = [v6 oneUpPresentation:self canStartAnimated:v3];

      LOBYTE(v5) = v7;
    }
  }

  return v5;
}

- (void)presentingViewControllerViewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToPresentingViewControllerViewDidDisappear)
  {
    v5 = [(PXOneUpPresentation *)self _implementationDelegate];
    [v5 oneUpPresentation:self presentingViewControllerViewDidDisappear:v3];
  }
}

- (void)presentingViewControllerViewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToPresentingViewControllerViewWillDisappear)
  {
    v5 = [(PXOneUpPresentation *)self _implementationDelegate];
    [v5 oneUpPresentation:self presentingViewControllerViewWillDisappear:v3];
  }
}

- (void)presentingViewControllerViewDidAppear:(BOOL)a3
{
  v3 = a3;
  if ([(PXOneUpPresentation *)self isEnabled]&& self->_implementationDelegateFlags.respondsToPresentingViewControllerViewDidAppear)
  {
    v5 = [(PXOneUpPresentation *)self _implementationDelegate];
    [v5 oneUpPresentation:self presentingViewControllerViewDidAppear:v3];
  }
}

- (void)presentingViewControllerViewIsAppearing:(BOOL)a3
{
  v3 = a3;
  if ([(PXOneUpPresentation *)self isEnabled])
  {
    [(PXOneUpPresentation *)self _updateImplementationDelegate];
    if (self->_implementationDelegateFlags.respondsToPresentingViewControllerViewIsAppearing)
    {
      v5 = [(PXOneUpPresentation *)self _implementationDelegate];
      [v5 oneUpPresentation:self presentingViewControllerViewIsAppearing:v3];
    }
  }
}

- (void)presentingViewControllerViewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(PXOneUpPresentation *)self isEnabled])
  {
    [(PXOneUpPresentation *)self _updateImplementationDelegate];
    if (self->_implementationDelegateFlags.respondsToPresentingViewControllerViewWillAppear)
    {
      v5 = [(PXOneUpPresentation *)self _implementationDelegate];
      [v5 oneUpPresentation:self presentingViewControllerViewWillAppear:v3];
    }
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_state = a3;
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
  v3 = [(PXOneUpPresentation *)self strongDelegate];

  if (v3)
  {

    [(PXOneUpPresentation *)self setStrongDelegate:0];
  }
}

- (void)setStrongDelegate:(id)a3
{
  objc_storeStrong(&self->_strongDelegate, a3);
  v5 = a3;
  [(PXOneUpPresentation *)self setDelegate:v5];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (PXOneUpPresentation)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXOneUpPresentation;
  v5 = [(PXOneUpPresentation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
    v7 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    contextMenuStateByConfiguration = v6->_contextMenuStateByConfiguration;
    v6->_contextMenuStateByConfiguration = v7;
  }

  return v6;
}

- (PXOneUpPresentation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXOneUpPresentation.m" lineNumber:117 description:@"unavailable initializer"];

  return 0;
}

+ (void)viewController:(id)a3 willPresentOneUpInViewController:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = +[PXWorkaroundSettings sharedInstance];
  v7 = [v6 shouldWorkAround104295292];

  if (v7)
  {
    v8 = [v10 presentedViewController];
    if (v8 && [v10 _mayForwardPresentationsToPresentedViewController] && !objc_msgSend(v5, "modalPresentationStyle"))
    {
      v9 = [v10 px_oneUpPresentation];
      [v8 px_setOneUpPresentationProxy:v9];
    }
  }
}

@end