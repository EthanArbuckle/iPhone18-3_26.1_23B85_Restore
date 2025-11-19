@interface SBPIPPegasusContainerAdapter
- (BOOL)handleDoubleTapGesture;
- (BOOL)handleTapWhileStashedGesture;
- (BOOL)shouldPointerInteractionBeginForInteractionController:(id)a3 atLocation:(CGPoint)a4 inView:(id)a5;
- (BOOL)shouldSuppressAssociatedElementsInSystemAperture;
- (NSNumber)overrideResourcesUsageReductionTimeout;
- (SBPIPPegasusContainerAdapter)initWithPictureInPictureViewController:(id)a3;
- (UIEdgeInsets)interactionController:(id)a3 edgeInsetsForWindowScene:(id)a4;
- (UIEdgeInsets)interactionController:(id)a3 stashedPaddingForWindowScene:(id)a4;
- (id)bundleIdentifierForContainerViewController:(id)a3;
- (id)debugName;
- (id)defaultPositionHyperregionComposers;
- (id)interactionControllerConnectedWindowScenes:(id)a3;
- (id)layoutSettings;
- (id)systemPointerInteractionManagerForInteractionController:(id)a3;
- (int)processIdentifierForContainerViewController:(id)a3;
- (void)_acquireVisibilityAssertionIfNeeded;
- (void)_createOrInvalidateStashTabVisibilityPolicyProvider;
- (void)_invalidateVisibilityAssertion;
- (void)_performStopAnimationWithFinalInterfaceOrientation:(int64_t)a3 finalLayerFrame:(CGRect)a4 completionHandler:(id)a5;
- (void)_reloadMenuButton;
- (void)acquireInterfaceOrientationLock;
- (void)containerViewController:(id)a3 didUpdateStashState:(BOOL)a4 springSettings:(id)a5;
- (void)containerViewController:(id)a3 wantsStashTabHidden:(BOOL)a4 left:(BOOL)a5 springSettings:(id)a6 completion:(id)a7;
- (void)containerViewControllerDidEndSizeChange:(id)a3;
- (void)containerViewControllerWillBeginSizeChange:(id)a3 behavior:(int)a4;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviewsForContainerViewController:(id)a3;
- (void)loadSubviewsForContainerViewController:(id)a3;
- (void)notePictureInPictureViewControllerPrefersHiddenFromClonedDisplayDidChange;
- (void)notePictureInPictureViewControllerTetheringDidUpdate;
- (void)performRotateAnimationWithRotation:(int64_t)a3 completionHandler:(id)a4;
- (void)performStartAnimationWithCompletionHandler:(id)a3;
- (void)performStartInIsolationWithCompletionHandler:(id)a3;
- (void)performStopAnimationWithFinalInterfaceOrientation:(int64_t)a3 finalLayerFrame:(CGRect)a4 completionHandler:(id)a5;
- (void)performStopInIsolationWithCompletionHandler:(id)a3;
- (void)pictureInPictureClientDidRequestStashing;
- (void)preferredContentSizeDidChangeForPictureInPictureViewController;
- (void)prepareStartAnimationWithInitialInterfaceOrientation:(int64_t)a3 initialLayerFrame:(CGRect)a4 completionHandler:(id)a5;
- (void)relinquishInterfaceOrientationLock;
- (void)setContainerViewController:(id)a3;
- (void)stashTabVisibilityPolicyProviderDidUpdatePolicy:(id)a3;
@end

@implementation SBPIPPegasusContainerAdapter

- (SBPIPPegasusContainerAdapter)initWithPictureInPictureViewController:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SBPIPPegasusContainerAdapter;
  v6 = [(SBPIPPegasusContainerAdapter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pictureInPictureViewController, a3);
    [(PGPictureInPictureViewController *)v7->_pictureInPictureViewController setContentContainer:v7];
    v8 = +[SBPIPContentViewLayoutMetrics pegasusMetricsForContentType:](SBPIPContentViewLayoutMetrics, "pegasusMetricsForContentType:", [v5 contentType]);
    [v8 minimumStashedTabSize];
    v7->_minimumStashTabSize.width = v9;
    v7->_minimumStashTabSize.height = v10;
  }

  return v7;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPPegasusContainerAdapter.m" lineNumber:94 description:{@"Attempting to dealloc %@ without invalidating.", a2}];
}

- (void)invalidate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPPegasusContainerAdapter.m" lineNumber:101 description:@"Attempting to -invalidate twice; this is unsupported."];
}

- (void)setContainerViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_containerViewController, obj);
    if (objc_opt_respondsToSelector())
    {
      [obj setPrefersHiddenFromClonedDisplay:{-[PGPictureInPictureViewController prefersHiddenFromClonedDisplay](self->_pictureInPictureViewController, "prefersHiddenFromClonedDisplay")}];
    }
  }
}

- (void)loadSubviewsForContainerViewController:(id)a3
{
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setMinimumStashTabSize:a3, self->_minimumStashTabSize.width, self->_minimumStashTabSize.height];

  [(SBPIPPegasusContainerAdapter *)self _reloadMenuButton];
}

- (void)layoutSubviewsForContainerViewController:(id)a3
{
  v17 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController tetheringViewController];
  v4 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController tetheringMode];
  v5 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v17)
  {
    if (v4 != 1)
    {
      goto LABEL_8;
    }

    v19.origin.x = v7;
    v19.origin.y = v9;
    v19.size.width = v11;
    v19.size.height = v13;
    Width = CGRectGetWidth(v19);
    v20.origin.x = v7;
    v20.origin.y = v9;
    v20.size.width = v11;
    v20.size.height = v13;
    Height = CGRectGetHeight(v20);
    if (Width < Height)
    {
      Height = Width;
    }

    v16 = Height / 3.0;
  }

  else
  {
    [objc_opt_class() contentCornerRadiusForViewSize:{v11, v13}];
  }

  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setContentCornerRadius:1 animated:v16];
LABEL_8:
}

- (id)bundleIdentifierForContainerViewController:(id)a3
{
  v3 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController application];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (int)processIdentifierForContainerViewController:(id)a3
{
  v3 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController application];
  v4 = [v3 processIdentifier];

  return v4;
}

- (void)containerViewController:(id)a3 didUpdateStashState:(BOOL)a4 springSettings:(id)a5
{
  v5 = a4;
  v7 = a5;
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setStashed:v5];
  if (!v5)
  {
    [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setStashTabHidden:1 left:0 withSpringBehavior:v7];
  }

  [(SBPIPPegasusContainerAdapter *)self _createOrInvalidateStashTabVisibilityPolicyProvider];
}

- (void)containerViewControllerWillBeginSizeChange:(id)a3 behavior:(int)a4
{
  if (!self->_isChangingSize)
  {
    self->_isChangingSize = 1;
    [(PGPictureInPictureViewController *)self->_pictureInPictureViewController hostedWindowSizeChangeBegan];
    pictureInPictureViewController = self->_pictureInPictureViewController;

    [(PGPictureInPictureViewController *)pictureInPictureViewController setInteractivelyResizing:a4 != 0];
  }
}

- (void)containerViewControllerDidEndSizeChange:(id)a3
{
  if (self->_isChangingSize)
  {
    self->_isChangingSize = 0;
    [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setInteractivelyResizing:0];
    pictureInPictureViewController = self->_pictureInPictureViewController;
    v6 = [(PGPictureInPictureViewController *)pictureInPictureViewController view];
    [v6 bounds];
    [(PGPictureInPictureViewController *)pictureInPictureViewController updateHostedWindowSize:v7, v8];

    v9 = self->_pictureInPictureViewController;

    [(PGPictureInPictureViewController *)v9 hostedWindowSizeChangeEnded];
  }
}

- (void)containerViewController:(id)a3 wantsStashTabHidden:(BOOL)a4 left:(BOOL)a5 springSettings:(id)a6 completion:(id)a7
{
  v8 = a5;
  v9 = a4;
  v12 = a7;
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setStashTabHidden:v9 left:v8 withSpringBehavior:a6];
  v11 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12);
    v11 = v12;
  }
}

- (void)notePictureInPictureViewControllerTetheringDidUpdate
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPPegasusContainerAdapter.m" lineNumber:258 description:@"SBPIPController was expected"];
}

- (void)preferredContentSizeDidChangeForPictureInPictureViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController preferredContentSize];
  [WeakRetained updatePreferredContentSize:?];
}

- (void)prepareStartAnimationWithInitialInterfaceOrientation:(int64_t)a3 initialLayerFrame:(CGRect)a4 completionHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained startAnimationWillBeginWithInitialInterfaceOrientation:a3 initialFrame:{x, y, width, height}];

  v11[2](v11);

  [(SBPIPPegasusContainerAdapter *)self _acquireVisibilityAssertionIfNeeded];
}

- (void)performStartAnimationWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(SBPIPPegasusContainerAdapter *)self _acquireVisibilityAssertionIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v6 = [WeakRetained windowInterfaceOrientation];
  [WeakRetained startShowingContentWithAnimationSettings:0 parameters:0 completion:{0.0, 0.0, 0.0}];
  v7 = MEMORY[0x277D38BF0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SBPIPPegasusContainerAdapter_performStartAnimationWithCompletionHandler___block_invoke;
  v14[3] = &unk_2783A8BC8;
  v15 = WeakRetained;
  v16 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SBPIPPegasusContainerAdapter_performStartAnimationWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_2783C1938;
  v11 = v15;
  v12 = v4;
  v13 = v6;
  v8 = v15;
  v9 = v4;
  [v7 animateViewWithAnimationType:0 initialSpringVelocity:v14 animations:v10 completion:0.0];
}

uint64_t __75__SBPIPPegasusContainerAdapter_performStartAnimationWithCompletionHandler___block_invoke_2(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = a1[6];

  return [v2 startAnimationDidCompleteWithInitialInterfaceOrientation:v3];
}

- (void)performStartInIsolationWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(SBPIPPegasusContainerAdapter *)self _acquireVisibilityAssertionIfNeeded];
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController showChrome:1 animated:0];
  v5 = +[SBPIPSettingsDomain rootSettings];
  v6 = [v5 fadeInOutSettings];
  v16 = [v6 fadeInOutAnimationSettings];

  v7 = +[SBPIPSettingsDomain rootSettings];
  v8 = [v7 fadeInOutSettings];
  [v8 fadeInInitialValues];
  v10 = v9;
  v12 = v11;
  v14 = v13;

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained startShowingContentWithAnimationSettings:v16 parameters:v4 completion:{v10, v12, v14}];
}

- (void)performStopInIsolationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[SBPIPSettingsDomain rootSettings];
  v6 = [v5 fadeInOutSettings];
  v7 = [v6 fadeInOutAnimationSettings];

  v8 = +[SBPIPSettingsDomain rootSettings];
  v9 = [v8 fadeInOutSettings];
  [v9 fadeOutFinalValues];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__SBPIPPegasusContainerAdapter_performStopInIsolationWithCompletionHandler___block_invoke;
  v18[3] = &unk_2783A9878;
  v18[4] = self;
  v19 = v4;
  v17 = v4;
  [WeakRetained stopShowingContentWithAnimationSettings:v7 parameters:v18 completion:{v11, v13, v15}];
}

uint64_t __76__SBPIPPegasusContainerAdapter_performStopInIsolationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 _invalidateVisibilityAssertion];
}

- (void)performStopAnimationWithFinalInterfaceOrientation:(int64_t)a3 finalLayerFrame:(CGRect)a4 completionHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v12 = [WeakRetained _sbWindowScene];
  objc_initWeak(location, self);
  v13 = self->_pictureInPictureViewController;
  v14 = +[SBSceneManagerCoordinator sharedInstance];
  v15 = [(PGPictureInPictureViewController *)v13 sourceSceneSessionPersistentIdentifier];
  v16 = [v14 sceneManagerForPersistenceIdentifier:v15];
  v44 = v12;
  v45 = v10;

  v17 = [(PGPictureInPictureViewController *)v13 sourceSceneSessionPersistentIdentifier];
  v18 = [v16 existingSceneHandleForPersistenceIdentifier:v17];
  v43 = v16;

  v19 = [v18 sceneIfExists];
  v20 = [v19 settings];
  if ([v20 isForeground])
  {
    v21 = [SBApp windowSceneManager];
    v22 = [v20 displayIdentity];
    v23 = [v21 windowSceneForDisplayIdentity:v22];

    v42 = [v23 switcherController];
    v24 = [v18 application];
    if (([v24 isMedusaCapable] & 1) == 0)
    {
      v25 = [v42 windowManagementContext];
      v26 = [v25 isChamoisOrFlexibleWindowing];

      if (!v26)
      {
LABEL_12:

        goto LABEL_13;
      }

      v24 = [v42 layoutState];
      v27 = [v24 appLayout];
      v56 = 0;
      v57 = &v56;
      v58 = 0x2020000000;
      v59 = 0;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __116__SBPIPPegasusContainerAdapter_performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke;
      v53[3] = &unk_2783B19C0;
      v54 = v18;
      v55 = &v56;
      [v27 enumerate:v53];
      v28 = v27;
      if (v57[3])
      {
        v41 = v27;
        v29 = [(PGPictureInPictureViewController *)v13 view];
        v30 = [v29 window];

        v31 = a3;
        v32 = v30;
        v28 = v41;
        if (!a3)
        {
          v31 = [v32 interfaceOrientation];
        }

        [v42 frameForItemWithRole:v57[3] inMainAppLayout:v41 interfaceOrientation:v31];
        [v32 _convertRectToSceneReferenceSpace:?];
        x = v33;
        y = v34;
        width = v35;
        height = v36;
      }

      _Block_object_dispose(&v56, 8);
    }

    goto LABEL_12;
  }

  v23 = 0;
LABEL_13:
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __116__SBPIPPegasusContainerAdapter_performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2;
  v47[3] = &unk_2783C1988;
  v37 = v23;
  v48 = v37;
  v38 = v44;
  v49 = v38;
  v39 = WeakRetained;
  v50 = v39;
  objc_copyWeak(v52, location);
  v52[1] = a3;
  v52[2] = *&x;
  v52[3] = *&y;
  v52[4] = *&width;
  v52[5] = *&height;
  v40 = v45;
  v51 = v40;
  [v39 performAfterInFlightAnimationsComplete:v47];

  objc_destroyWeak(v52);
  objc_destroyWeak(location);
}

void __116__SBPIPPegasusContainerAdapter_performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = [a3 uniqueIdentifier];
  v8 = [*(a1 + 32) sceneIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }
}

void __116__SBPIPPegasusContainerAdapter_performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && v2 != *(a1 + 40))
  {
    v3 = [*(a1 + 48) view];
    [v3 setHidden:1];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = *(a1 + 72);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __116__SBPIPPegasusContainerAdapter_performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_3;
  v6[3] = &unk_2783C1960;
  v7 = *(a1 + 56);
  objc_copyWeak(&v8, (a1 + 64));
  [WeakRetained _performStopAnimationWithFinalInterfaceOrientation:v5 finalLayerFrame:v6 completionHandler:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  objc_destroyWeak(&v8);
}

void __116__SBPIPPegasusContainerAdapter_performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidateVisibilityAssertion];
}

- (void)_performStopAnimationWithFinalInterfaceOrientation:(int64_t)a3 finalLayerFrame:(CGRect)a4 completionHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained stopAnimationWillBeginWithFinalInterfaceOrientation:a3 finalFrame:{x, y, width, height}];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D38BF0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __117__SBPIPPegasusContainerAdapter__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke;
  v20[3] = &unk_2783AE700;
  v21 = WeakRetained;
  v22 = a3;
  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __117__SBPIPPegasusContainerAdapter__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2;
  v16[3] = &unk_2783C19B0;
  v14 = v11;
  v18 = v14;
  v15 = v21;
  v17 = v15;
  v19[1] = a3;
  objc_copyWeak(v19, &location);
  [v13 animateViewWithAnimationType:0 initialSpringVelocity:v20 animations:v16 completion:0.0];
  objc_destroyWeak(v19);

  objc_destroyWeak(&location);
}

void __117__SBPIPPegasusContainerAdapter__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) stopAnimationDidCompleteWithFinalInterfaceOrientation:*(a1 + 56)];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _invalidateVisibilityAssertion];
  }
}

- (void)performRotateAnimationWithRotation:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  if ((a3 - 1) >= 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  v9 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController view];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [WeakRetained rotationAnimationWillBeginToRotation:v8 contentViewFrame:{v11, v13, v15, v17}];
  v18 = +[SBPIPSettingsDomain rootSettings];
  v19 = [v18 interactionSettings];
  v20 = [v19 rotationFluidBehavior];

  v21 = MEMORY[0x277D75D18];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __85__SBPIPPegasusContainerAdapter_performRotateAnimationWithRotation_completionHandler___block_invoke;
  v32[3] = &unk_2783AE700;
  v33 = WeakRetained;
  v34 = v8;
  v35 = v11;
  v36 = v13;
  v37 = v15;
  v38 = v17;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__SBPIPPegasusContainerAdapter_performRotateAnimationWithRotation_completionHandler___block_invoke_3;
  v24[3] = &unk_2783C19D8;
  v26 = v6;
  v27 = v8;
  v28 = v11;
  v29 = v13;
  v30 = v15;
  v31 = v17;
  v25 = v33;
  v22 = v6;
  v23 = v33;
  [v21 _animateUsingSpringBehavior:v20 tracking:1 animations:v32 completion:v24];
}

void __85__SBPIPPegasusContainerAdapter_performRotateAnimationWithRotation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v15 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v15.minimum;
  maximum = v15.maximum;
  preferred = v15.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SBPIPPegasusContainerAdapter_performRotateAnimationWithRotation_completionHandler___block_invoke_2;
  v10[3] = &unk_2783AE700;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v8 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v8;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114140 updateReason:v10 animations:{COERCE_DOUBLE(__PAIR64__(DWORD1(v13), LODWORD(minimum))), *&v8, v9}];
}

uint64_t __85__SBPIPPegasusContainerAdapter_performRotateAnimationWithRotation_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) rotationAnimationWillCompleteToRotation:*(a1 + 48) contentViewFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);

  return [v2 rotationAnimationDidCompleteToRotation:v3 contentViewFrame:{v4, v5, v6, v7}];
}

- (void)acquireInterfaceOrientationLock
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained acquireInterfaceOrientationLock];
}

- (void)relinquishInterfaceOrientationLock
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained relinquishInterfaceOrientationLock];
}

- (BOOL)handleDoubleTapGesture
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v3 = [WeakRetained toggleUserPreferredScale];

  return v3;
}

- (BOOL)handleTapWhileStashedGesture
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setStashed:0];
  v3 = [WeakRetained isStashed];

  return v3 ^ 1;
}

- (void)notePictureInPictureViewControllerPrefersHiddenFromClonedDisplayDidChange
{
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
    [WeakRetained setPrefersHiddenFromClonedDisplay:{-[PGPictureInPictureViewController prefersHiddenFromClonedDisplay](self->_pictureInPictureViewController, "prefersHiddenFromClonedDisplay")}];
  }
}

- (void)pictureInPictureClientDidRequestStashing
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained setStashed:1];
}

- (NSNumber)overrideResourcesUsageReductionTimeout
{
  v3 = &unk_28336F770;
  if ([(PGPictureInPictureViewController *)self->_pictureInPictureViewController contentType]!= 4 && [(PGPictureInPictureViewController *)self->_pictureInPictureViewController contentType]!= 5)
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldSuppressAssociatedElementsInSystemAperture
{
  if ([(PGPictureInPictureViewController *)self->_pictureInPictureViewController contentType]== 1 || [(PGPictureInPictureViewController *)self->_pictureInPictureViewController contentType]== 2)
  {
    LOBYTE(v3) = 1;
  }

  else if ([(PGPictureInPictureViewController *)self->_pictureInPictureViewController contentType]== 4)
  {
    v5 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController application];
    v6 = [v5 bundleIdentifier];
    v3 = BSEqualStrings() ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)debugName
{
  v2 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController contentType];

  return SBStringFromPGPlaybackStateContentType(v2);
}

- (id)defaultPositionHyperregionComposers
{
  v8[1] = *MEMORY[0x277D85DE8];
  pipPositionHyperregionComposer = self->_pipPositionHyperregionComposer;
  if (!pipPositionHyperregionComposer)
  {
    v4 = objc_alloc_init(SBPIPMultidisplayHyperregionComposer);
    v5 = self->_pipPositionHyperregionComposer;
    self->_pipPositionHyperregionComposer = v4;

    pipPositionHyperregionComposer = self->_pipPositionHyperregionComposer;
  }

  v8[0] = pipPositionHyperregionComposer;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)layoutSettings
{
  v3 = [SBPIPContentViewLayoutSettings alloc];
  v4 = [SBPIPContentViewLayoutMetrics pegasusMetricsForContentType:[(PGPictureInPictureViewController *)self->_pictureInPictureViewController contentType]];
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController preferredContentSize];
  v5 = [(SBPIPContentViewLayoutSettings *)v3 initWithPlatformMetrics:v4 contentSize:?];

  return v5;
}

- (id)systemPointerInteractionManagerForInteractionController:(id)a3
{
  v3 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController _sbWindowScene];
  v4 = [v3 systemPointerInteractionManager];

  return v4;
}

- (UIEdgeInsets)interactionController:(id)a3 edgeInsetsForWindowScene:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained effectiveEdgeInsetsForWindowScene:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (UIEdgeInsets)interactionController:(id)a3 stashedPaddingForWindowScene:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  [WeakRetained stashedPadding];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (id)interactionControllerConnectedWindowScenes:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);
  v4 = [WeakRetained connectedWindowScenes];

  return v4;
}

- (BOOL)shouldPointerInteractionBeginForInteractionController:(id)a3 atLocation:(CGPoint)a4 inView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController _sbWindowScene];
  v10 = [v9 pictureInPictureManager];

  if ([v10 isZStackForegroundActive])
  {
    v11 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController view];
    [v8 convertPoint:v11 toView:{x, y}];
    v13 = v12;
    v15 = v14;

    v16 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController view];
    v17 = [v16 hitTest:0 withEvent:{v13, v15}];
    v18 = objc_opt_class();
    v19 = v17;
    if (v18)
    {
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = v20;

    if (v22)
    {
      v21 = [v22 isHovered] ^ 1;
    }

    else
    {
      LOBYTE(v21) = 1;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (void)stashTabVisibilityPolicyProviderDidUpdatePolicy:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = [v4 stashTabCanBeHidden];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[provider stashTabCanBeHidden] %{BOOL}u", v6, 8u);
  }

  -[PGPictureInPictureViewController setPrefersStashTabSuppressed:](self->_pictureInPictureViewController, "setPrefersStashTabSuppressed:", [v4 stashTabCanBeHidden]);
}

- (void)_reloadMenuButton
{
  v3 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController menuItems];
  v4 = [v3 count];

  menuButton = self->_menuButton;
  if (v4)
  {
    if (!menuButton)
    {
      v6 = +[SBPIPMenuButton pipMenuButton];
      v7 = self->_menuButton;
      self->_menuButton = v6;
    }

    v8 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController menuItems];
    v12 = [v8 bs_map:&__block_literal_global_395];

    v9 = self->_menuButton;
    v10 = [MEMORY[0x277D75710] menuWithChildren:v12];
    [(UIButton *)v9 setMenu:v10];

    v11 = v12;
  }

  else
  {
    [(UIButton *)menuButton removeFromSuperview];
    v11 = self->_menuButton;
    self->_menuButton = 0;
  }
}

id __49__SBPIPPegasusContainerAdapter__reloadMenuButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v3 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] buttonFontSize];
  v4 = [v3 systemFontOfSize:? weight:?];
  v5 = [MEMORY[0x277D755D0] configurationWithFont:v4];
  v6 = MEMORY[0x277D755B8];
  v7 = [v2 symbolName];
  v8 = [v6 systemImageNamed:v7 withConfiguration:v5];

  v9 = MEMORY[0x277D750C8];
  v10 = [v2 title];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__SBPIPPegasusContainerAdapter__reloadMenuButton__block_invoke_2;
  v13[3] = &unk_2783ADB30;
  objc_copyWeak(&v14, &location);
  v11 = [v9 actionWithTitle:v10 image:v8 identifier:0 handler:v13];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);

  return v11;
}

void __49__SBPIPPegasusContainerAdapter__reloadMenuButton__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invokeAction];
}

- (void)_createOrInvalidateStashTabVisibilityPolicyProvider
{
  if (!self->_isAnyInteractionGestureActive && [(PGPictureInPictureViewController *)self->_pictureInPictureViewController stashed]&& [(PGPictureInPictureViewController *)self->_pictureInPictureViewController wantsStashTabSuppression])
  {
    if (!self->_stashTabVisibilityPolicyProvider)
    {
      v13 = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController _sbWindowScene];
      v5 = [v13 sceneManager];
      v6 = [v13 pictureInPictureManager];
      v7 = v6;
      if (v5 && v6)
      {
        v8 = [SBPIPStashTabSuppressionPolicyProvider alloc];
        v9 = [SBApp bannerManager];
        v10 = [v13 pictureInPictureManager];
        v11 = [(SBPIPStashTabSuppressionPolicyProvider *)v8 initWithObserver:self bannerManager:v9 windowScene:v13 pipManager:v10];
        stashTabVisibilityPolicyProvider = self->_stashTabVisibilityPolicyProvider;
        self->_stashTabVisibilityPolicyProvider = v11;
      }
    }
  }

  else
  {
    [(SBPIPStashTabSuppressionPolicyProvider *)self->_stashTabVisibilityPolicyProvider invalidate];
    v3 = self->_stashTabVisibilityPolicyProvider;
    self->_stashTabVisibilityPolicyProvider = 0;

    pictureInPictureViewController = self->_pictureInPictureViewController;

    [(PGPictureInPictureViewController *)pictureInPictureViewController setPrefersStashTabSuppressed:0];
  }
}

- (void)_acquireVisibilityAssertionIfNeeded
{
  if (!self->_visibilityAssertion)
  {
    v4 = self->_pictureInPictureViewController;
    v5 = +[SBSceneManagerCoordinator sharedInstance];
    v6 = [(PGPictureInPictureViewController *)v4 sourceSceneSessionPersistentIdentifier];
    v17 = [v5 sceneManagerForPersistenceIdentifier:v6];

    v7 = [(PGPictureInPictureViewController *)v4 sourceSceneSessionPersistentIdentifier];
    v8 = [v17 existingSceneHandleForPersistenceIdentifier:v7];

    v9 = [v8 application];
    v10 = [v9 appProtectionAssistant];
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@ - p", v13, v4];
    v15 = [v10 acquireVisibilityAssertionForReason:v14];
    visibilityAssertion = self->_visibilityAssertion;
    self->_visibilityAssertion = v15;
  }
}

- (void)_invalidateVisibilityAssertion
{
  visibilityAssertion = self->_visibilityAssertion;
  self->_visibilityAssertion = 0;
  v3 = visibilityAssertion;

  [(BSInvalidatable *)v3 invalidate];
}

@end