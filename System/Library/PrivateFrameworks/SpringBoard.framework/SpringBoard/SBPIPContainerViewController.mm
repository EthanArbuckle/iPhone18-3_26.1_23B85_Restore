@interface SBPIPContainerViewController
- (BOOL)handleStashingForTransitionContext:(id)a3;
- (BOOL)prefersIdleTimerDisabled;
- (BOOL)requiresMedusaKeyboard;
- (BOOL)shouldSuppressAssociatedElementsInSystemAperture;
- (BOOL)toggleUserPreferredScale;
- (CGRect)_contentViewFrameInDisplayReferenceSpace;
- (CGRect)_frameInFixedCoordinateSpace:(CGRect)a3 transformedToInterfaceOrientation:(int64_t)a4;
- (NSNumber)overrideResourcesUsageReductionTimeout;
- (SBPIPContainerViewController)initWithCoder:(id)a3;
- (SBPIPContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBPIPContainerViewController)initWithPIPController:(id)a3 interactionSettings:(id)a4 adapter:(id)a5;
- (SBPIPContainerViewController)tetheredContainerViewController;
- (SBPIPContainerViewController)tetheringContainerViewController;
- (SBPIPContainerViewControllerInteractionObserver)interactionObserver;
- (UIEdgeInsets)_resolvedSafeAreaInsetsForWindowScene:(id)a3;
- (UIEdgeInsets)_safeAreaInsetsForScene:(id)a3;
- (UIEdgeInsets)effectiveEdgeInsets;
- (UIEdgeInsets)effectiveEdgeInsetsForWindowScene:(id)a3;
- (UIEdgeInsets)stashedPadding;
- (UIView)morphAnimatorTargetContainerView;
- (UIView)morphAnimatorTargetView;
- (id)_blackCurtainViewForStopAnimation;
- (id)_blurSpringAnimationWithParameters:(id)a3 fromValue:(id)a4 toValue:(id)a5;
- (id)hostedAppSceneHandle;
- (id)maximumAvailableVerticalPadding;
- (int)processIdentifier;
- (int64_t)windowInterfaceOrientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)SB_accessibilityToggleStashed;
- (void)_addBlurFilterToView:(id)a3;
- (void)_handleMicroPiPRotationDisplayLink:(id)a3;
- (void)_layoutWithNonOperationFrame;
- (void)_notifyStashStateChanged:(BOOL)a3;
- (void)_removeBlurFilterFromView:(id)a3;
- (void)_removeMicroPIPMirrorView;
- (void)_requireInterfaceOrientation:(int64_t)a3;
- (void)_setAdapter:(id)a3;
- (void)_setStashTabHidden:(BOOL)a3 left:(BOOL)a4 completion:(id)a5;
- (void)_updateContentPadding;
- (void)_updateContentViewFrame:(CGRect)a3 reason:(id)a4 usingDisplayArrangementSpace:(BOOL)a5;
- (void)_updateDisplayLayoutElementReferenceFrame;
- (void)acquireInterfaceOrientationLock;
- (void)dealloc;
- (void)forcePictureInPictureToFrame:(CGRect)a3;
- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4;
- (void)handleDestructionRequestForSceneHandle:(id)a3;
- (void)interactionController:(id)a3 didSettleOnStashState:(BOOL)a4;
- (void)interactionController:(id)a3 didUpdateStashProgress:(double)a4;
- (void)interactionControllerDidBeginEdgeResizing:(id)a3;
- (void)interactionControllerDidBeginInteraction:(id)a3 forGestureRecognizer:(id)a4;
- (void)interactionControllerDidBeginSizeChange:(id)a3 behavior:(int)a4;
- (void)interactionControllerDidEndAllInteractions:(id)a3 targetWindowScene:(id)a4;
- (void)interactionControllerDidEndEdgeResizing:(id)a3;
- (void)interactionControllerDidEndSizeChange:(id)a3;
- (void)interactionControllerDidUpdateEdgeInsets:(id)a3;
- (void)interactionControllerPanGestureDidEnd:(id)a3;
- (void)invalidate;
- (void)layoutForTetheringInteractionController:(id)a3 behavior:(int)a4;
- (void)loadView;
- (void)noteWindowSceneDidChange;
- (void)performAfterInFlightAnimationsComplete:(id)a3;
- (void)relinquishInterfaceOrientationLock;
- (void)rotationAnimationDidBeginToRotation:(int64_t)a3 contentViewFrame:(CGRect)a4;
- (void)rotationAnimationDidCompleteToRotation:(int64_t)a3 contentViewFrame:(CGRect)a4;
- (void)rotationAnimationWillBeginToRotation:(int64_t)a3 contentViewFrame:(CGRect)a4;
- (void)rotationAnimationWillCompleteToRotation:(int64_t)a3 contentViewFrame:(CGRect)a4;
- (void)setConnectedWindowScenes:(id)a3;
- (void)setContentScale:(double)a3;
- (void)setContentViewPadding:(UIEdgeInsets)a3;
- (void)setDisplayLayoutElementActive:(BOOL)a3;
- (void)setEffectiveEdgeInsets:(UIEdgeInsets)a3;
- (void)setInteractionControllerEnabled:(BOOL)a3 stashed:(BOOL)a4 dataSource:(id)a5;
- (void)setIsActivelyTethered:(BOOL)a3 mode:(int64_t)a4;
- (void)setNeedsLayoutForInteractionController:(id)a3 traits:(unint64_t)a4 withReason:(unint64_t)a5 behavior:(int)a6 completion:(id)a7;
- (void)setPrefersHiddenFromClonedDisplay:(BOOL)a3;
- (void)setStashed:(BOOL)a3;
- (void)setStashedPadding:(UIEdgeInsets)a3;
- (void)setTetheredContainerViewController:(id)a3;
- (void)startAnimationDidBeginWithInitialInterfaceOrientation:(int64_t)a3;
- (void)startAnimationDidCompleteWithInitialInterfaceOrientation:(int64_t)a3;
- (void)startAnimationWillBeginWithInitialInterfaceOrientation:(int64_t)a3 initialFrame:(CGRect)a4;
- (void)startDisplayLink;
- (void)startResourcesUsageReductionAfterTimeout:(double)a3;
- (void)startShowingContentWithAnimationSettings:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)stopAnimationDidBeginWithFinalInterfaceOrientation:(int64_t)a3 finalFrame:(CGRect)a4;
- (void)stopAnimationDidCompleteWithFinalInterfaceOrientation:(int64_t)a3;
- (void)stopAnimationWillBeginWithFinalInterfaceOrientation:(int64_t)a3 finalFrame:(CGRect)a4;
- (void)stopDisplayLink;
- (void)stopResourcesUsageReduction;
- (void)stopShowingContentWithAnimationSettings:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)transitionAnimationDidEnd;
- (void)transitionAnimationWillBegin;
- (void)updateDisplayLayoutElementWithBuilder:(id)a3;
- (void)updatePreferredContentSize:(CGSize)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBPIPContainerViewController

- (SBPIPContainerViewController)initWithPIPController:(id)a3 interactionSettings:(id)a4 adapter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SBLogPIP();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SBPIPContainerViewController initWithPIPController:interactionSettings:adapter:];
  }

  v30.receiver = self;
  v30.super_class = SBPIPContainerViewController;
  v12 = [(SBPIPContainerViewController *)&v30 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_pipController, v8);
    objc_storeStrong(&v13->_interactionSettings, a4);
    v13->_requiredInterfaceOrientation = 0;
    v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observerHashTable = v13->_observerHashTable;
    v13->_observerHashTable = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    waitInteractionAnimationsCompletionBlocks = v13->_waitInteractionAnimationsCompletionBlocks;
    v13->_waitInteractionAnimationsCompletionBlocks = v16;

    v18 = [(SBPIPInteractionSettings *)v13->_interactionSettings interactiveFluidBehavior];
    interactiveAnimationSettings = v13->_interactiveAnimationSettings;
    v13->_interactiveAnimationSettings = v18;

    v20 = [(SBPIPInteractionSettings *)v13->_interactionSettings stashTabFluidBehavior];
    stashTabAnimationSettings = v13->_stashTabAnimationSettings;
    v13->_stashTabAnimationSettings = v20;

    v22 = [(SBPIPInteractionSettings *)v13->_interactionSettings regionUpdateFluidBehavior];
    regionUpdateAnimationSettings = v13->_regionUpdateAnimationSettings;
    v13->_regionUpdateAnimationSettings = v22;

    [(SBPIPContainerViewController *)v13 _setAdapter:v10];
    v24 = objc_alloc(MEMORY[0x277D66A50]);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v24 initWithIdentifier:v26];
    displayLayoutElement = v13->_displayLayoutElement;
    v13->_displayLayoutElement = v27;

    [(SBSDisplayLayoutElement *)v13->_displayLayoutElement setLayoutRole:5];
    [(SBSDisplayLayoutElement *)v13->_displayLayoutElement setUIApplicationElement:1];
  }

  return v13;
}

- (SBPIPContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = _SBFLoggingMethodProem();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v6 handleFailureInMethod:a2 object:self file:@"SBPIPContainerViewController.m" lineNumber:211 description:{@"%@ is not a valid initializer. You must call -[%@ initWithPictureInPictureViewController:].", v7, v9}];

  return 0;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)invalidate
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBPIPContainerViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"SBPIPContainerViewController.m" lineNumber:236 description:{@"%@ does not support unarchiving from a nib.", v7}];

  return 0;
}

- (void)loadView
{
  v3 = [SBPIPContainerViewControllerRootView alloc];
  v6 = [(SBPIPContainerViewControllerRootView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SBPIPContainerViewControllerRootView *)v6 setClipsToBounds:1];
  [(SBPIPContainerViewControllerRootView *)v6 setOpaque:0];
  [(SBPIPContainerViewController *)self setView:v6];
  v4 = [(UIViewController *)self->_contentViewController view];
  contentView = self->_contentView;
  self->_contentView = v4;

  [(UIView *)self->_contentView setHidden:1];
  [(SBPIPContainerViewController *)self addChildViewController:self->_contentViewController];
  [(SBPIPContainerViewControllerRootView *)v6 addSubview:self->_contentView];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
}

- (void)noteWindowSceneDidChange
{
  [(SBPIPContainerViewController *)self setInteractionsEnabled:0];
  [(SBPIPContainerViewController *)self setInteractionsEnabled:1];
  wantsDisplayLayoutElement = self->_wantsDisplayLayoutElement;

  [(SBPIPContainerViewController *)self setDisplayLayoutElementActive:wantsDisplayLayoutElement];
}

- (void)startShowingContentWithAnimationSettings:(id)a3 parameters:(id)a4 completion:(id)a5
{
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = a3;
  v11 = a5;
  [(UIView *)self->_contentView setHidden:0];
  [(SBMicroPIPTetheringMirrorView *)self->_microPIPTetheringViewMirror setHidden:0];
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v13 = [(SBPIPContainerViewController *)self processIdentifier];
  v14 = [(SBPIPContainerViewController *)self scenePersistenceIdentifier];
  v15 = [WeakRetained pictureInPictureMorphAnimatorControllerForProcessIdentifier:v13 scenePersistenceIdentifier:v14];

  if (!v10 || v15)
  {
    if (v11)
    {
      v11[2](v11);
    }
  }

  else
  {
    [(SBPIPContainerViewController *)self _addBlurFilterToView:self->_contentView];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:var2];
    v17 = [(SBPIPContainerViewController *)self _blurSpringAnimationWithParameters:v10 fromValue:v16 toValue:&unk_28336F470];

    v18 = [(UIView *)self->_contentView layer];
    [v18 addAnimation:v17 forKey:@"filters.gaussianBlur.inputRadius"];

    [(UIView *)self->_contentView setAlpha:var1];
    contentView = self->_contentView;
    CGAffineTransformMakeScale(&v27, var0, var0);
    [(UIView *)contentView setTransform:&v27];
    v20 = MEMORY[0x277CF0D38];
    v21 = [v10 BSAnimationSettings];
    v22 = [v20 factoryWithSettings:v21];

    v23 = MEMORY[0x277CF0D38];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __95__SBPIPContainerViewController_startShowingContentWithAnimationSettings_parameters_completion___block_invoke;
    v26[3] = &unk_2783A8C18;
    v26[4] = self;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __95__SBPIPContainerViewController_startShowingContentWithAnimationSettings_parameters_completion___block_invoke_2;
    v24[3] = &unk_2783A9C98;
    v24[4] = self;
    v25 = v11;
    [v23 animateWithFactory:v22 actions:v26 completion:v24];
  }
}

uint64_t __95__SBPIPContainerViewController_startShowingContentWithAnimationSettings_parameters_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 1000);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __95__SBPIPContainerViewController_startShowingContentWithAnimationSettings_parameters_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _removeBlurFilterFromView:*(*(a1 + 32) + 1000)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)stopShowingContentWithAnimationSettings:(id)a3 parameters:(id)a4 completion:(id)a5
{
  var2 = a4.var2;
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    [(SBPIPContainerViewController *)self _addBlurFilterToView:self->_contentView];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:var2];
    v14 = [(SBPIPContainerViewController *)self _blurSpringAnimationWithParameters:v10 fromValue:&unk_28336F470 toValue:v13];

    v15 = [(UIView *)self->_contentView layer];
    [v15 addAnimation:v14 forKey:@"filters.gaussianBlur.inputRadius"];

    v16 = MEMORY[0x277CF0D38];
    v17 = [v10 BSAnimationSettings];
    v18 = [v16 factoryWithSettings:v17];

    v19 = MEMORY[0x277CF0D38];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __94__SBPIPContainerViewController_stopShowingContentWithAnimationSettings_parameters_completion___block_invoke;
    v22[3] = &unk_2783AECC8;
    v22[4] = self;
    *&v22[5] = var0;
    *&v22[6] = var1;
    *&v22[7] = var2;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __94__SBPIPContainerViewController_stopShowingContentWithAnimationSettings_parameters_completion___block_invoke_2;
    v20[3] = &unk_2783A9C98;
    v20[4] = self;
    v21 = v12;
    [v19 animateWithFactory:v18 actions:v22 completion:v20];
  }

  else if (v11)
  {
    [(UIView *)self->_contentView setHidden:1];
    v12[2](v12);
  }
}

uint64_t __94__SBPIPContainerViewController_stopShowingContentWithAnimationSettings_parameters_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) setAlpha:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 1000);
  CGAffineTransformMakeScale(&v4, *(a1 + 40), *(a1 + 40));
  return [v2 setTransform:&v4];
}

uint64_t __94__SBPIPContainerViewController_stopShowingContentWithAnimationSettings_parameters_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) setHidden:1];
  [*(a1 + 32) _removeBlurFilterFromView:*(*(a1 + 32) + 1000)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_blurSpringAnimationWithParameters:(id)a3 fromValue:(id)a4 toValue:(id)a5
{
  v7 = MEMORY[0x277CD9FA0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v11 setBeginTime:CACurrentMediaTime()];
  [v11 setFillMode:*MEMORY[0x277CDA228]];
  [v11 setFromValue:v9];

  [v11 setToValue:v8];
  [v10 mass];
  [v11 setMass:?];
  [v10 stiffness];
  [v11 setStiffness:?];
  [v10 damping];
  [v11 setDamping:?];
  [v10 duration];
  v13 = v12;

  [v11 setDuration:v13];

  return v11;
}

- (void)_addBlurFilterToView:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9EA0];
  v4 = *MEMORY[0x277CDA328];
  v5 = a3;
  v6 = [v3 filterWithType:v4];
  [v6 setName:@"gaussianBlur"];
  [v6 setValue:@"default" forKey:@"inputQuality"];
  [v6 setValue:@"default" forKey:@"inputIntermediateBitDepth"];
  [v6 setValue:&unk_28336F470 forKey:@"inputRadius"];
  v7 = MEMORY[0x277CBEC28];
  [v6 setValue:MEMORY[0x277CBEC28] forKey:@"inputNormalizeEdges"];
  [v6 setValue:v7 forKey:@"inputHardEdges"];
  v8 = [v5 layer];

  v10[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v8 setFilters:v9];
}

- (void)_removeBlurFilterFromView:(id)a3
{
  v3 = [a3 layer];
  [v3 setFilters:0];
}

- (void)setInteractionControllerEnabled:(BOOL)a3 stashed:(BOOL)a4 dataSource:(id)a5
{
  v5 = a3;
  if (!self->_interactionController)
  {
    v7 = a4;
    v8 = a5;
    [(SBPIPContainerViewController *)self loadViewIfNeeded];
    v9 = [SBPIPInteractionController alloc];
    contentView = self->_contentView;
    [(UIViewController *)self->_contentViewController preferredContentSize];
    v11 = [(SBPIPInteractionController *)v9 initWithInteractionTargetView:contentView preferredContentSize:self->_interactionSettings interactionSettings:v8 dataSource:self delegate:?];

    interactionController = self->_interactionController;
    self->_interactionController = v11;

    [(SBPIPContainerViewController *)self _updateContentPadding];
    [(SBPIPInteractionController *)self->_interactionController setStashed:v7];
    [(SBPIPInteractionController *)self->_interactionController initialFrame];
    [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Setup Interaction Controller" reason:1 usingDisplayArrangementSpace:?];
  }

  [(SBPIPContainerViewController *)self setInteractionsEnabled:v5, a4, a5];
}

- (void)startAnimationWillBeginWithInitialInterfaceOrientation:(int64_t)a3 initialFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(UIView *)self->_contentView setHidden:0];
  [(SBPIPContainerViewController *)self _frameInFixedCoordinateSpace:a3 transformedToInterfaceOrientation:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(SBPIPContainerViewController *)self _requireInterfaceOrientation:a3];
  [(SBPIPInteractionController *)self->_interactionController setEnabled:0];

  [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Prepare Start Animation" reason:0 usingDisplayArrangementSpace:v11, v13, v15, v17];
}

- (void)startAnimationDidBeginWithInitialInterfaceOrientation:(int64_t)a3
{
  [(SBPIPContainerViewController *)self _requireInterfaceOrientation:0];
  [(SBPIPInteractionController *)self->_interactionController initialFrame];

  [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Perform Start Animation" reason:1 usingDisplayArrangementSpace:?];
}

- (void)startAnimationDidCompleteWithInitialInterfaceOrientation:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  [(SBPIPInteractionController *)self->_interactionController setEnabled:1];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_observerHashTable;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 containerViewController:self didFinishStartAnimationWithInitialInterfaceOrientation:{a3, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ([(SBPIPContainerViewController *)self windowInterfaceOrientation]!= a3)
  {
    [(SBPIPContainerViewController *)self _updateContentPadding];
  }
}

- (id)_blackCurtainViewForStopAnimation
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(SBPIPContainerViewController *)self view];
  v3 = [v2 subviews];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)stopAnimationWillBeginWithFinalInterfaceOrientation:(int64_t)a3 finalFrame:(CGRect)a4
{
  [(SBPIPInteractionController *)self->_interactionController setEnabled:0, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  [(SBPIPContainerViewController *)self setStashed:0];
  [(SBPIPContainerViewController *)self _removeMicroPIPMirrorView];
  v8 = [(SBPIPContainerViewController *)self _blackCurtainViewForStopAnimation];
  if (!v8 || (v6 = [(SBPIPContainerViewController *)self windowInterfaceOrientation]== a3, v7 = v8, !v6))
  {
    [v8 setAlpha:0.0];
    v7 = v8;
  }
}

- (void)stopAnimationDidBeginWithFinalInterfaceOrientation:(int64_t)a3 finalFrame:(CGRect)a4
{
  [(SBPIPContainerViewController *)self _frameInFixedCoordinateSpace:a4.origin.x transformedToInterfaceOrientation:a4.origin.y, a4.size.width, a4.size.height];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SBPIPContainerViewController *)self _requireInterfaceOrientation:a3];
  [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Perform Stop Animation" reason:0 usingDisplayArrangementSpace:v7, v9, v11, v13];
  v14 = [(SBPIPContainerViewController *)self _blackCurtainViewForStopAnimation];
  if (v14)
  {
    v16 = v14;
    v15 = [(SBPIPContainerViewController *)self windowInterfaceOrientation]== a3;
    v14 = v16;
    if (v15)
    {
      [v16 setAlpha:0.0];
      v14 = v16;
    }
  }
}

- (void)stopAnimationDidCompleteWithFinalInterfaceOrientation:(int64_t)a3
{
  interactionController = self->_interactionController;
  self->_interactionController = 0;

  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
}

- (void)performAfterInFlightAnimationsComplete:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_inFlightAnimationCounter)
  {
    waitInteractionAnimationsCompletionBlocks = self->_waitInteractionAnimationsCompletionBlocks;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__SBPIPContainerViewController_performAfterInFlightAnimationsComplete___block_invoke;
    v8[3] = &unk_2783A9348;
    v9 = v4;
    v7 = MEMORY[0x223D6F7F0](v8);
    [(NSMutableArray *)waitInteractionAnimationsCompletionBlocks addObject:v7];
  }

  else
  {
    v4[2](v4);
  }
}

- (BOOL)toggleUserPreferredScale
{
  interactionController = self->_interactionController;
  if (interactionController)
  {
    [(SBPIPInteractionController *)self->_interactionController toggleUserPreferredScale];
  }

  return interactionController != 0;
}

- (void)updatePreferredContentSize:(CGSize)a3
{
  [(SBPIPInteractionController *)self->_interactionController setPreferredContentSize:a3.width, a3.height];
  if (self->_activelyTethered)
  {

    [(SBPIPContainerViewController *)self _layoutWithNonOperationFrame];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBPIPContainerViewController;
  [(SBPIPContainerViewController *)&v3 viewDidLoad];
  if (*(self + 1224))
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter loadSubviewsForContainerViewController:self];
  }
}

- (void)viewDidLayoutSubviews
{
  if (self->_interactionController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pipController);
    v4 = [WeakRetained isHandlingContextWindowSceneUpdate];

    if ((v4 & 1) == 0)
    {
      v5 = [(SBPIPContainerViewController *)self windowInterfaceOrientation];
      interactionController = self->_interactionController;
      v7 = [(SBPIPContainerViewController *)self view];
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v12 = [(UIViewController *)self _sbWindowScene];
      [(SBPIPInteractionController *)interactionController setContainerSize:v5 withOrientation:v12 scene:v9, v11];

      [(SBPIPContainerViewController *)self _updateContentPadding];
      if ((*(self + 1224) & 2) != 0)
      {
        adapter = self->_adapter;

        [(SBPIPContainerViewControllerAdapter *)adapter layoutSubviewsForContainerViewController:self];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBPIPContainerViewController;
  [(SBPIPContainerViewController *)&v5 viewDidAppear:a3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SBPIPContainerViewController_viewDidAppear___block_invoke;
  v4[3] = &unk_2783B66A8;
  v4[4] = self;
  [(SBPIPContainerViewController *)self updateDisplayLayoutElementWithBuilder:v4];
  [(SBPIPContainerViewController *)self setDisplayLayoutElementActive:1];
}

void __46__SBPIPContainerViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 bundleIdentifier];
  [v5 setBundleIdentifier:v4];

  [*(a1 + 32) _contentViewFrameInDisplayReferenceSpace];
  [v5 setReferenceFrame:?];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBPIPContainerViewController;
  [(SBPIPContainerViewController *)&v4 viewWillDisappear:a3];
  [(SBPIPContainerViewController *)self setDisplayLayoutElementActive:0];
}

- (BOOL)handleStashingForTransitionContext:(id)a3
{
  if (*(self + 1227))
  {
    return [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self shouldHandleStashingForTransitionContext:a3];
  }

  else
  {
    return 0;
  }
}

- (void)_updateContentPadding
{
  v3 = [(UIViewController *)self _sbWindowScene];
  [(SBPIPContainerViewController *)self effectiveEdgeInsetsForWindowScene:v3];
  [(SBPIPContainerViewController *)self setEffectiveEdgeInsets:?];
}

- (UIEdgeInsets)_safeAreaInsetsForScene:(id)a3
{
  v4 = a3;
  v5 = [(SBPIPContainerViewController *)self view];
  v6 = [v5 _sbWindowScene];

  if (v6 == v4)
  {
    v7 = [(SBPIPContainerViewController *)self view];
    [v7 safeAreaInsets];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  else
  {
    v7 = [v4 windows];
    v8 = [v7 bs_firstObjectPassingTest:&__block_literal_global_205];
    [v8 safeAreaInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  v21 = v10;
  v22 = v12;
  v23 = v14;
  v24 = v16;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (UIEdgeInsets)_resolvedSafeAreaInsetsForWindowScene:(id)a3
{
  v4 = a3;
  v5 = [v4 screen];
  [v5 _peripheryInsets];
  v7 = v6;
  v9 = v8;

  [(SBPIPContainerViewController *)self _safeAreaInsetsForScene:v4];
  v11 = v10;
  v13 = v12;
  v14 = [(SBPIPContainerViewController *)self view];
  v15 = [v14 _sbWindowScene];
  if (v15 == v4)
  {
    v16 = [(SBPIPContainerViewController *)self windowInterfaceOrientation];
  }

  else
  {
    v16 = [v4 interfaceOrientation];
  }

  v17 = v16;

  v18 = __sb__runningInSpringBoard();
  v19 = v18;
  if (v18)
  {
    v20 = 0.0;
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v14 = [MEMORY[0x277D75418] currentDevice];
    if ([v14 userInterfaceIdiom] == 1)
    {
      goto LABEL_16;
    }
  }

  if (__sb__runningInSpringBoard())
  {
    if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
    {
      v21 = SBFEffectiveHomeButtonType() == 2;
      if (v19)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v22 = [MEMORY[0x277D75418] currentDevice];
    if (![v22 userInterfaceIdiom])
    {
      v21 = SBFEffectiveHomeButtonType() == 2;

      if (v19)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v20 = 0.0;
  if (v19)
  {
LABEL_23:
    v23 = 0.0;
    goto LABEL_24;
  }

LABEL_16:
  v21 = 0;
LABEL_17:

LABEL_18:
  v20 = 0.0;
  if (!v21 || !v17)
  {
    goto LABEL_23;
  }

  if (v17 == 3)
  {
    +[SBPIPContentViewLayoutMetrics minimumLandscapePadding];
    v11 = v31;
    +[SBPIPContentViewLayoutMetrics unstashedPeripheryPadding];
    v23 = v7 + v32;
    +[SBPIPContentViewLayoutMetrics minimumLandscapePadding];
    v20 = v33;
  }

  else
  {
    v23 = 0.0;
    if (v17 == 4)
    {
      +[SBPIPContentViewLayoutMetrics minimumLandscapePadding];
      v11 = v24;
      +[SBPIPContentViewLayoutMetrics minimumLandscapePadding];
      v23 = v25;
      +[SBPIPContentViewLayoutMetrics unstashedPeripheryPadding];
      v20 = v9 + v26;
    }
  }

LABEL_24:

  v27 = v11;
  v28 = v23;
  v29 = v13;
  v30 = v20;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

- (void)setEffectiveEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_effectiveEdgeInsets.top, v3), vceqq_f64(*&self->_effectiveEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_effectiveEdgeInsets = a3;
    [(SBPIPInteractionController *)self->_interactionController reloadInsets];
  }
}

- (UIEdgeInsets)effectiveEdgeInsetsForWindowScene:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  [WeakRetained pictureInPictureWindowMarginsOnWindowScene:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(SBPIPContainerViewController *)self _resolvedSafeAreaInsetsForWindowScene:v5];
  v15 = [(UIViewController *)self _sbWindowScene];
  if (v15 == v5)
  {
    v16 = [(SBPIPContainerViewController *)self windowInterfaceOrientation];
  }

  else
  {
    v16 = [v5 interfaceOrientation];
  }

  v17 = v16;

  v18 = [(SBPIPInteractionController *)self->_interactionController layoutSettings];
  [v18 contentViewPadding];

  v19 = __sb__runningInSpringBoard();
  if (!v19)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    if ([v3 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
      [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
    }

    goto LABEL_14;
  }

  v18 = v19;
  if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
  {
    [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
  }

  else
  {
    if (SBFEffectiveHomeButtonType() != 2)
    {
      [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
    }

    if ((v18 & 1) == 0)
    {
LABEL_14:
    }
  }

  v20 = __sb__runningInSpringBoard();
  v21 = v20;
  if (v20)
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v18 = [MEMORY[0x277D75418] currentDevice];
    if ([v18 userInterfaceIdiom] == 1)
    {
      goto LABEL_30;
    }
  }

  if (__sb__runningInSpringBoard())
  {
    if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
    {
      SBFEffectiveHomeButtonType();
      if (v21)
      {
        goto LABEL_31;
      }

LABEL_30:

      goto LABEL_31;
    }

LABEL_26:
    if (v21)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v22 = [MEMORY[0x277D75418] currentDevice];
  if ([v22 userInterfaceIdiom])
  {

    goto LABEL_26;
  }

  SBFEffectiveHomeButtonType();

  if ((v21 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  UIEdgeInsetsAdd();
  UIEdgeInsetsMax();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = SBLogPIP();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v51.top = v24;
    v51.left = v26;
    v51.bottom = v28;
    v51.right = v30;
    v32 = NSStringFromUIEdgeInsets(v51);
    v33 = [(SBPIPContainerViewController *)self view];
    [v33 safeAreaInsets];
    v34 = NSStringFromUIEdgeInsets(v52);
    v53.top = v8;
    v53.left = v10;
    v53.bottom = v12;
    v53.right = v14;
    v35 = NSStringFromUIEdgeInsets(v53);
    *buf = 134219010;
    v41 = self;
    v42 = 2114;
    v43 = v32;
    v44 = 2114;
    v45 = v34;
    v46 = 2114;
    v47 = v35;
    v48 = 2048;
    v49 = v17;
    _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "[%p] [PIP Container] Applying new edge insets: %{public}@. Derived from picking maximum between safeAreaInsets: %{public}@, and our extra content padding: %{public}@, adjusted for interface orientation: %ld", buf, 0x34u);
  }

  v36 = v24;
  v37 = v26;
  v38 = v28;
  v39 = v30;
  result.right = v39;
  result.bottom = v38;
  result.left = v37;
  result.top = v36;
  return result;
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SBPIPContainerViewController;
  [(SBPIPContainerViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(SBPIPContainerViewController *)self _updateContentPadding];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = SBPIPContainerViewController;
  v7 = a4;
  [(SBPIPContainerViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__SBPIPContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_2783A9488;
  v12[4] = self;
  [v7 animateAlongsideTransition:0 completion:v12];
  v8 = SBFWindowForViewControllerTransition();

  v9 = [v8 _toWindowOrientation];
  interactionController = self->_interactionController;
  v11 = [(UIViewController *)self _sbWindowScene];
  [(SBPIPInteractionController *)interactionController setContainerSize:v9 withOrientation:v11 scene:width, height];
}

- (void)setNeedsLayoutForInteractionController:(id)a3 traits:(unint64_t)a4 withReason:(unint64_t)a5 behavior:(int)a6 completion:(id)a7
{
  v67 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v14 = SBLogPIP();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    v58 = self;
    v59 = 2048;
    v60 = v12;
    v61 = 2048;
    v62 = a4;
    v63 = 2048;
    v64 = a5;
    v65 = 1024;
    v66 = a6;
    _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "[%p][Layout] setNeedsLayoutForInteractionController[%p] for traits:%lu reason:%lu behavior:%u.", buf, 0x30u);
  }

  v15 = [v12 isEnabled];
  if ((a5 & 0x8000) != 0 || v15)
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __109__SBPIPContainerViewController_setNeedsLayoutForInteractionController_traits_withReason_behavior_completion___block_invoke;
    v51[3] = &unk_2783B8D18;
    v54 = a4;
    v55 = a5;
    v52 = v12;
    v53 = self;
    v56 = a6;
    v16 = MEMORY[0x223D6F7F0](v51);
    v17 = +[SBBacklightController sharedInstance];
    v18 = [v17 screenIsOn];

    WeakRetained = objc_loadWeakRetained(&self->_pipController);
    v20 = [(UIViewController *)self _sbWindowScene];
    v21 = [WeakRetained isPictureInPictureWindowVisibleOnWindowScene:v20];

    v22 = 0;
    if (v18 && v21)
    {
      v22 = ![(UIView *)self->_contentView isHidden];
    }

    if (!a6 || !((a5 >> 15) & 1 | v22 & 1))
    {
      v16[2](v16);
      if (v13)
      {
        v13[2](v13, 1, 0);
      }

      goto LABEL_28;
    }

    v23 = &OBJC_IVAR___SBPIPContainerViewController__stashTabAnimationSettings;
    if ((a5 & 0x800) == 0)
    {
      v23 = &OBJC_IVAR___SBPIPContainerViewController__interactiveAnimationSettings;
    }

    v24 = a6 == 2 && (a5 & 0x5000) != 0;
    if (((a6 == 2) & (a5 >> 13)) != 0)
    {
      v23 = &OBJC_IVAR___SBPIPContainerViewController__regionUpdateAnimationSettings;
    }

    metricsAnimationSettings = *(&self->super.super.super.isa + *v23);
    metricsAnimatableProperty = self->_metricsAnimatableProperty;
    if (v24)
    {
      [(UIViewFloatAnimatableProperty *)metricsAnimatableProperty invalidate];
      v27 = objc_alloc_init(MEMORY[0x277D75D38]);
      v28 = self->_metricsAnimatableProperty;
      self->_metricsAnimatableProperty = v27;

      [(UIViewFloatAnimatableProperty *)self->_metricsAnimatableProperty setValue:0.0];
      v29 = metricsAnimationSettings;
      metricsAnimationSettings = self->_metricsAnimationSettings;
      self->_metricsAnimationSettings = v29;
    }

    else
    {
      if (!metricsAnimatableProperty || ([(UIViewFloatAnimatableProperty *)metricsAnimatableProperty isInvalidated]& 1) != 0)
      {
        goto LABEL_27;
      }

      [(UIViewFloatAnimatableProperty *)self->_metricsAnimatableProperty presentationValue];
      v31 = v30;
      v29 = objc_alloc_init(MEMORY[0x277D65E60]);
      [(SBFFluidBehaviorSettings *)metricsAnimationSettings trackingResponse];
      v33 = v32;
      [(SBFFluidBehaviorSettings *)self->_metricsAnimationSettings response];
      v35 = v31 * (v33 - v34);
      [(SBFFluidBehaviorSettings *)self->_metricsAnimationSettings response];
      [(SBFFluidBehaviorSettings *)v29 setTrackingResponse:v35 + v36];
      [(SBFFluidBehaviorSettings *)metricsAnimationSettings response];
      v38 = v37;
      [(SBFFluidBehaviorSettings *)self->_metricsAnimationSettings response];
      v40 = v31 * (v38 - v39);
      [(SBFFluidBehaviorSettings *)self->_metricsAnimationSettings response];
      [(SBFFluidBehaviorSettings *)v29 setResponse:v40 + v41];
      [(SBFFluidBehaviorSettings *)metricsAnimationSettings trackingDampingRatio];
      [(SBFFluidBehaviorSettings *)v29 setTrackingDampingRatio:?];
      [(SBFFluidBehaviorSettings *)metricsAnimationSettings dampingRatio];
      [(SBFFluidBehaviorSettings *)v29 setDampingRatio:?];
    }

    metricsAnimationSettings = v29;
LABEL_27:
    ++self->_inFlightAnimationCounter;
    metricsUpdateGenCount = self->_metricsUpdateGenCount;
    self->_metricsUpdateGenCount = metricsUpdateGenCount + 1;
    v43 = MEMORY[0x277D75D18];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __109__SBPIPContainerViewController_setNeedsLayoutForInteractionController_traits_withReason_behavior_completion___block_invoke_2;
    v48[3] = &unk_2783B1770;
    v50 = v24;
    v48[4] = self;
    v49 = v16;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __109__SBPIPContainerViewController_setNeedsLayoutForInteractionController_traits_withReason_behavior_completion___block_invoke_4;
    v44[3] = &unk_2783B8D40;
    v47 = v24;
    v44[4] = self;
    v46 = metricsUpdateGenCount;
    v45 = v13;
    [v43 _animateUsingSpringBehavior:metricsAnimationSettings tracking:a6 == 1 animations:v48 completion:v44];

LABEL_28:
    goto LABEL_29;
  }

  if (v13)
  {
    v13[2](v13, 0, 0);
  }

LABEL_29:
}

void __109__SBPIPContainerViewController_setNeedsLayoutForInteractionController_traits_withReason_behavior_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutInteractedTraits:*(a1 + 48) withReason:*(a1 + 56) source:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1264));
  [WeakRetained layoutForTetheringInteractionController:*(a1 + 32) behavior:*(a1 + 64)];
}

void __109__SBPIPContainerViewController_setNeedsLayoutForInteractionController_traits_withReason_behavior_completion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v13.minimum;
  maximum = v13.maximum;
  preferred = v13.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __109__SBPIPContainerViewController_setNeedsLayoutForInteractionController_traits_withReason_behavior_completion___block_invoke_3;
  v10[3] = &unk_2783B1770;
  v12 = *(a1 + 48);
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114124 updateReason:v10 animations:{v7, v8, v9}];
}

uint64_t __109__SBPIPContainerViewController_setNeedsLayoutForInteractionController_traits_withReason_behavior_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 1128) setValue:1.0];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __109__SBPIPContainerViewController_setNeedsLayoutForInteractionController_traits_withReason_behavior_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 1104);
  if (*(a1 + 56) == 1)
  {
    v6 = *(a1 + 32);
    if (*(v6 + 1136) == *(a1 + 48))
    {
      [*(v6 + 1128) invalidate];
      v7 = *(a1 + 32);
      v8 = *(v7 + 1128);
      *(v7 + 1128) = 0;

      v9 = *(a1 + 32);
      v10 = *(v9 + 1120);
      *(v9 + 1120) = 0;
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3);
  }

  v12 = *(a1 + 32);
  if (!*(v12 + 1104) && [*(v12 + 1112) count])
  {
    v13 = [*(*(a1 + 32) + 1112) copy];
    [*(*(a1 + 32) + 1112) removeAllObjects];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          (*(*(*(&v19 + 1) + 8 * v18) + 16))(*(*(&v19 + 1) + 8 * v18));
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }
}

- (void)interactionControllerDidBeginSizeChange:(id)a3 behavior:(int)a4
{
  v4 = *&a4;
  v7 = a3;
  if ((*(self + 1226) & 2) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerWillBeginSizeChange:self behavior:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionControllerDidBeginSizeChange:v7 behavior:v4];
}

- (void)interactionControllerDidEndSizeChange:(id)a3
{
  v5 = a3;
  if ((*(self + 1226) & 4) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerDidEndSizeChange:self];
  }

  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionControllerDidEndSizeChange:v5];
}

- (void)interactionController:(id)a3 didUpdateStashProgress:(double)a4
{
  v7 = a3;
  if ((*(self + 1226) & 8) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self didUpdateStashProgress:a4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionController:v7 didUpdateStashProgress:a4];
}

- (void)interactionController:(id)a3 didSettleOnStashState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(SBPIPContainerViewController *)self _notifyStashStateChanged:v4];
  if ((*(self + 1225) & 0x10) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self didSettleOnStashState:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionController:v6 didSettleOnStashState:v4];
}

- (void)interactionControllerDidBeginInteraction:(id)a3 forGestureRecognizer:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ((*(self + 1225) & 0x20) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self willBeginInteractionWithGestureRecognizer:v6];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionObserver);
  [WeakRetained containerViewControllerDidBeginInteraction:self];

  v8 = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [v8 interactionControllerDidBeginInteraction:v9 forGestureRecognizer:v6];
}

- (void)interactionControllerDidEndAllInteractions:(id)a3 targetWindowScene:(id)a4
{
  v9 = a4;
  v6 = a3;
  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
  if ((*(self + 1225) & 0x40) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerDidEndInteraction:self targetWindowScene:v9];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionObserver);
  [WeakRetained containerViewControllerDidEndInteraction:self targetWindowScene:v9];

  v8 = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [v8 interactionControllerDidEndAllInteractions:v6 targetWindowScene:v9];

  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
  [(SBPIPContainerViewController *)self _updateContentPadding];
}

- (void)interactionControllerPanGestureDidEnd:(id)a3
{
  v5 = a3;
  if (*(self + 1225) < 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerPanGestureDidEnd:self];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionControllerPanGestureDidEnd:v5];
}

- (void)interactionControllerDidUpdateEdgeInsets:(id)a3
{
  v4 = a3;
  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionControllerDidUpdateEdgeInsets:v4];
}

- (void)interactionControllerDidBeginEdgeResizing:(id)a3
{
  if ((*(self + 1227) & 4) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerDidBeginEdgeResize:self];
  }
}

- (void)interactionControllerDidEndEdgeResizing:(id)a3
{
  if ((*(self + 1227) & 8) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerDidEndEdgeResize:self];
  }
}

- (void)updateDisplayLayoutElementWithBuilder:(id)a3
{
  if (self->_displayLayoutElementAssertion)
  {
    v5 = a3;
    v6 = [(UIViewController *)self _sbWindowScene];
    if (!v6)
    {
      [SBPIPContainerViewController updateDisplayLayoutElementWithBuilder:];
    }

    v14 = [v6 displayLayoutPublisher];
    if (!v14)
    {
      [(SBPIPContainerViewController *)a2 updateDisplayLayoutElementWithBuilder:v6];
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v14 transitionAssertionWithReason:v8];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    v5[2](v5, self->_displayLayoutElement);
    v11 = [v14 addElement:self->_displayLayoutElement];
    v12 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v11;

    [v9 invalidate];
  }

  else
  {
    v13 = *(a3 + 2);
    v14 = a3;
    v13();
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)a3
{
  self->_wantsDisplayLayoutElement = a3;
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (a3)
  {
    if (displayLayoutElementAssertion)
    {
      return;
    }

    v6 = [(UIViewController *)self _sbWindowScene];
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = [(UIViewController *)self _sbWindowScene];
    v9 = [v8 delegate];

    if (!v9)
    {
      return;
    }

    v10 = [(UIViewController *)self _sbWindowScene];
    if (!v10)
    {
      [SBPIPContainerViewController setDisplayLayoutElementActive:];
    }

    v14 = [v10 displayLayoutPublisher];
    if (!v14)
    {
      [(SBPIPContainerViewController *)a2 setDisplayLayoutElementActive:v10];
    }

    v11 = [v14 addElement:self->_displayLayoutElement];
    v12 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v11;

    v13 = v14;
  }

  else
  {
    if (!displayLayoutElementAssertion)
    {
      return;
    }

    [(BSInvalidatable *)displayLayoutElementAssertion invalidate];
    v13 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;
  }
}

- (void)setIsActivelyTethered:(BOOL)a3 mode:(int64_t)a4
{
  if (self->_activelyTethered == a3)
  {
    return;
  }

  v5 = a3;
  self->_activelyTethered = a3;
  preTetheringLayoutSettings = self->_preTetheringLayoutSettings;
  if (a3)
  {
    if (preTetheringLayoutSettings)
    {
      v26 = 0;
    }

    else
    {
      v9 = [(SBPIPInteractionController *)self->_interactionController layoutSettings];
      v10 = self->_preTetheringLayoutSettings;
      self->_preTetheringLayoutSettings = v9;

      [(SBPIPInteractionController *)self->_interactionController preferredNormalizedScale];
      self->_preTetheringNormalizedContentScale = v11;
      v26 = self->_preTetheringLayoutSettings;
    }
  }

  else
  {
    v26 = preTetheringLayoutSettings;
    v8 = self->_preTetheringLayoutSettings;
    self->_preTetheringLayoutSettings = 0;
  }

  if (self->_activelyTethered)
  {
    if (a4 == 1)
    {
      if (!self->_microPIPLayoutSettings)
      {
        v12 = +[SBPIPContentViewLayoutMetrics pegasusDefaultMicroPIPMetrics];
        v13 = [[SBPIPContentViewLayoutSettings alloc] initWithPlatformMetrics:v12 contentSize:1.0, 1.0];
        microPIPLayoutSettings = self->_microPIPLayoutSettings;
        self->_microPIPLayoutSettings = v13;
      }

      if ([(UIView *)self->_contentView isHidden])
      {
        v15 = 0;
      }

      else
      {
        v15 = 2;
      }

      self->_tetheredInMicroPIPMode = 1;
      v16 = self->_microPIPLayoutSettings;

      if (!self->_microPIPTetheringViewMirror)
      {
        v17 = [SBMicroPIPTetheringMirrorView alloc];
        v18 = [(SBMicroPIPTetheringMirrorView *)v17 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        microPIPTetheringViewMirror = self->_microPIPTetheringViewMirror;
        self->_microPIPTetheringViewMirror = v18;

        [(SBMicroPIPTetheringMirrorView *)self->_microPIPTetheringViewMirror setHidden:[(UIView *)self->_contentView isHidden]];
        v20 = [(SBPIPContainerViewController *)self view];
        [v20 addSubview:self->_microPIPTetheringViewMirror];
      }

      v26 = v16;
      goto LABEL_20;
    }
  }

  else if (self->_tetheredInMicroPIPMode)
  {
    self->_tetheredInMicroPIPMode = 0;
    [(SBPIPContainerViewController *)self _removeMicroPIPMirrorView];
  }

  v15 = 2;
  if (!a4)
  {
LABEL_21:
    [(SBPIPInteractionController *)self->_interactionController setStashed:0];
    if (!v5)
    {
      [(SBPIPInteractionController *)self->_interactionController setEnabled:1];
    }

    WeakRetained = objc_loadWeakRetained(&self->_tetheringContainerViewController);
    interactionController = self->_interactionController;
    v23 = [WeakRetained interactionController];
    [v23 currentNormalizedScale];
    [(SBPIPInteractionController *)interactionController setPreferredNormalizedScale:0 additionalReasons:2 animationBehavior:?];

    [(SBPIPInteractionController *)self->_interactionController setContentLayoutSettings:v26 animationBehavior:v15];
    v24 = self->_interactionController;
    if (v5)
    {
      [(SBPIPInteractionController *)v24 setEnabled:0];
      v25 = [WeakRetained interactionController];
      [v25 setTargetOverlayView:self->_microPIPTetheringViewMirror];
    }

    else
    {
      [(SBPIPInteractionController *)v24 setPreferredNormalizedScale:self->_preTetheringNormalizedContentScale];
    }

    goto LABEL_27;
  }

LABEL_20:
  if (v5)
  {
    goto LABEL_21;
  }

LABEL_27:
}

- (void)layoutForTetheringInteractionController:(id)a3 behavior:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if (self->_activelyTethered)
  {
    if (self->_tetheredInMicroPIPMode)
    {
      v7 = [(SBMicroPIPTetheringMirrorView *)self->_microPIPTetheringViewMirror contentPlaceholderView];
      interactionController = self->_interactionController;
      [v6 currentNormalizedScale];
      [(SBPIPInteractionController *)interactionController setPreferredNormalizedScale:0 additionalReasons:v4 animationBehavior:?];
      [(SBPIPInteractionController *)self->_interactionController nonoperationalFrame];
      [v7 setBounds:{0.0, 0.0}];
      [v7 layoutIfNeeded];
      [(SBMicroPIPTetheringMirrorView *)self->_microPIPTetheringViewMirror layoutIfNeeded];
      v9 = [(UIView *)self->_contentView superview];
      v10 = [(SBPIPContainerViewController *)self view];

      if (v9 == v10)
      {
        v12 = [v7 superview];
        [v7 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [(SBPIPContainerViewController *)self view];
        [v12 convertRect:v21 toView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [(UIView *)self->_contentView setFrame:v23, v25, v27, v29];
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __81__SBPIPContainerViewController_layoutForTetheringInteractionController_behavior___block_invoke;
        v33 = &unk_2783A92D8;
        v34 = self;
        v35 = v7;
        [(SBPIPContainerViewController *)self performAfterInFlightAnimationsComplete:&v30];
      }

      else
      {
        contentView = self->_contentView;
        [v7 bounds];
        [(UIView *)contentView setFrame:?];
      }
    }

    [(UIView *)self->_contentView layoutIfNeeded:v30];
  }
}

void __81__SBPIPContainerViewController_layoutForTetheringInteractionController_behavior___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) superview];
  v3 = [*(a1 + 32) view];

  if (v2 == v3)
  {
    v4 = MEMORY[0x277D75D18];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __81__SBPIPContainerViewController_layoutForTetheringInteractionController_behavior___block_invoke_2;
    v7[3] = &unk_2783A92D8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    [v4 _performWithoutRetargetingAnimations:v7];
  }
}

uint64_t __81__SBPIPContainerViewController_layoutForTetheringInteractionController_behavior___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addSubview:*(*(a1 + 40) + 1000)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 1000);
  [v2 bounds];

  return [v3 setFrame:?];
}

- (void)_removeMicroPIPMirrorView
{
  microPIPTetheringViewMirror = self->_microPIPTetheringViewMirror;
  if (microPIPTetheringViewMirror)
  {
    v4 = [(SBMicroPIPTetheringMirrorView *)microPIPTetheringViewMirror contentPlaceholderView];
    [(UIView *)self->_contentView center];
    v6 = v5;
    v8 = v7;
    v9 = [(SBPIPContainerViewController *)self view];
    [v4 convertPoint:v9 toView:{v6, v8}];
    v11 = v10;
    v13 = v12;

    v14 = [(SBPIPContainerViewController *)self view];
    [v14 addSubview:self->_contentView];

    [(UIView *)self->_contentView setCenter:v11, v13];
    [(UIView *)self->_contentView layoutIfNeeded];
    [(SBMicroPIPTetheringMirrorView *)self->_microPIPTetheringViewMirror removeFromSuperview];
    v15 = self->_microPIPTetheringViewMirror;
    self->_microPIPTetheringViewMirror = 0;
  }
}

- (void)setTetheredContainerViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tetheredContainerViewController, obj);
    [(SBPIPInteractionController *)self->_interactionController setStashed:0];
    v5 = obj;
  }
}

- (void)rotationAnimationWillBeginToRotation:(int64_t)a3 contentViewFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(SBPIPContainerViewController *)self currentCanonicalPosition];
  [(UIView *)self->_contentView bounds];
  v13 = v11;
  v14 = v12;
  v15 = 0.5;
  v16 = 0.5;
  if (!self->_activelyTethered)
  {
    if (a3 != 1)
    {
      if (a3)
      {
        goto LABEL_23;
      }

      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_23;
          }

          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (v10 != 2)
      {
        if (v10 != 3)
        {
          goto LABEL_23;
        }

LABEL_21:
        v18 = v11 + v12 * -0.5;
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (v10 > 1)
    {
      if (v10 != 2)
      {
        if (v10 != 3)
        {
          goto LABEL_23;
        }

LABEL_17:
        v17 = v11 * 0.5;
LABEL_20:
        v16 = v17 / v12;
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (!v10)
    {
LABEL_18:
      v18 = v12 * 0.5;
LABEL_22:
      v15 = v18 / v11;
      goto LABEL_23;
    }

    if (v10 == 1)
    {
LABEL_19:
      v17 = v12 + v11 * -0.5;
      goto LABEL_20;
    }
  }

LABEL_23:
  self->_wasInteractionEnabledPreRotationAnimation = [(SBPIPInteractionController *)self->_interactionController isEnabled];
  [(SBPIPInteractionController *)self->_interactionController setEnabled:0];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidX = CGRectGetMidX(v23);
  v24.size.height = height;
  v20 = MidX;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  MidY = CGRectGetMidY(v24);
  [(UIView *)self->_contentView setAnchorPoint:v15, v16];
  [(UIView *)self->_contentView setCenter:v20 + (v15 + -0.5) * v13, MidY + (v16 + -0.5) * v14];
  if (self->_activelyTethered)
  {

    [(SBPIPContainerViewController *)self startDisplayLink];
  }
}

- (void)rotationAnimationDidBeginToRotation:(int64_t)a3 contentViewFrame:(CGRect)a4
{
  if ((a3 - 1) > 2)
  {
    v5 = -1.57079633;
  }

  else
  {
    v5 = dbl_21F8A70D8[a3 - 1];
  }

  if (self->_activelyTethered && BSFloatEqualToFloat())
  {
    contentView = self->_contentView;
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&v9.a = *MEMORY[0x277CBF2C0];
    *&v9.c = v7;
    *&v9.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    v8 = self->_contentView;
    CGAffineTransformMakeRotation(&v9, v5);
    contentView = v8;
  }

  [(UIView *)contentView setTransform:&v9, *&v9.a, *&v9.c, *&v9.tx];
}

- (void)rotationAnimationWillCompleteToRotation:(int64_t)a3 contentViewFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  contentView = self->_contentView;
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  v15[0] = *MEMORY[0x277CBF2C0];
  v15[1] = v11;
  v15[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)contentView setTransform:v15];
  [(UIView *)self->_contentView setAnchorPoint:0.5, 0.5];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [(UIView *)self->_contentView setCenter:MidX, CGRectGetMidY(v17)];
  if (a3 <= 1)
  {
    [(SBPIPInteractionController *)self->_interactionController preferredContentSize];
    [(SBPIPInteractionController *)self->_interactionController setPreferredContentSize:v14, v13];
  }
}

- (void)rotationAnimationDidCompleteToRotation:(int64_t)a3 contentViewFrame:(CGRect)a4
{
  if (self->_activelyTethered)
  {
    [(SBPIPContainerViewController *)self _layoutWithNonOperationFrame:a3];
  }

  [(SBPIPContainerViewController *)self stopDisplayLink];
  [(SBPIPInteractionController *)self->_interactionController setEnabled:self->_wasInteractionEnabledPreRotationAnimation];

  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
}

- (void)_layoutWithNonOperationFrame
{
  [(SBPIPInteractionController *)self->_interactionController nonoperationalFrame];
  [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Rotation end" reason:0 usingDisplayArrangementSpace:0.0, 0.0];
  WeakRetained = objc_loadWeakRetained(&self->_tetheringContainerViewController);
  v3 = [WeakRetained interactionController];
  [(SBPIPContainerViewController *)self layoutForTetheringInteractionController:v3 behavior:0];
}

- (void)startDisplayLink
{
  v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__handleMicroPiPRotationDisplayLink_];
  microPiPRotationDisplayLink = self->_microPiPRotationDisplayLink;
  self->_microPiPRotationDisplayLink = v3;

  v5 = self->_microPiPRotationDisplayLink;
  v6 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x277CBE738]];
}

- (void)_handleMicroPiPRotationDisplayLink:(id)a3
{
  v4 = [(UIView *)self->_contentView layer];
  v5 = [v4 presentationLayer];
  [v5 frame];

  v6 = [(UIView *)self->_contentView superview];
  [v6 bounds];
  v7 = [(UIView *)self->_contentView superview];
  [v7 bounds];

  UIRectGetCenter();
  contentView = self->_contentView;

  [(UIView *)contentView setCenter:?];
}

- (void)stopDisplayLink
{
  [(CADisplayLink *)self->_microPiPRotationDisplayLink invalidate];
  microPiPRotationDisplayLink = self->_microPiPRotationDisplayLink;
  self->_microPiPRotationDisplayLink = 0;
}

- (void)_setStashTabHidden:(BOOL)a3 left:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if ([(SBPIPInteractionController *)self->_interactionController isEnabled])
  {
    v9 = (*(self + 1226) & 0x10) != 0 ? [(SBPIPContainerViewControllerAdapter *)self->_adapter isStashTabHiddenForContainerViewController:self]: 1;
    if (v9 != v6)
    {
      v16 = v5;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = self->_observerHashTable;
      v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v17 + 1) + 8 * v14);
            if (objc_opt_respondsToSelector())
            {
              [v15 containerViewControllerUserMayUpdateStashState:self];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }

      v5 = v16;
    }
  }

  if (*(self + 1226))
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self wantsStashTabHidden:v6 left:v5 springSettings:self->_stashTabAnimationSettings completion:v8];
  }

  else if (v8)
  {
    v8[2](v8);
  }
}

- (void)_setAdapter:(id)a3
{
  v5 = a3;
  if (self->_adapter != v5)
  {
    v32 = v5;
    *(self + 1224) = *(self + 1224) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 1224) = *(self + 1224) & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *(self + 1224) = *(self + 1224) & 0xFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *(self + 1224) = *(self + 1224) & 0xF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *(self + 1224) = *(self + 1224) & 0xEF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *(self + 1224) = *(self + 1224) & 0xDF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    *(self + 1224) = *(self + 1224) & 0xBF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 0x80;
    }

    else
    {
      v12 = 0;
    }

    *(self + 1224) = v12 & 0x80 | *(self + 1224) & 0x7F;
    *(self + 1225) = *(self + 1225) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *(self + 1225) = *(self + 1225) & 0xFD | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *(self + 1225) = *(self + 1225) & 0xFB | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *(self + 1225) = *(self + 1225) & 0xF7 | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    *(self + 1225) = *(self + 1225) & 0xEF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    *(self + 1225) = *(self + 1225) & 0xDF | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 64;
    }

    else
    {
      v18 = 0;
    }

    *(self + 1225) = *(self + 1225) & 0xBF | v18;
    if (objc_opt_respondsToSelector())
    {
      v19 = 0x80;
    }

    else
    {
      v19 = 0;
    }

    *(self + 1225) = v19 & 0x80 | *(self + 1225) & 0x7F;
    if (objc_opt_respondsToSelector())
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    *(self + 1227) = *(self + 1227) & 0xFB | v20;
    if (objc_opt_respondsToSelector())
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    *(self + 1227) = *(self + 1227) & 0xF7 | v21;
    *(self + 1226) = *(self + 1226) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    *(self + 1226) = *(self + 1226) & 0xFD | v22;
    if (objc_opt_respondsToSelector())
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    *(self + 1226) = *(self + 1226) & 0xFB | v23;
    if (objc_opt_respondsToSelector())
    {
      v24 = 8;
    }

    else
    {
      v24 = 0;
    }

    *(self + 1226) = *(self + 1226) & 0xF7 | v24;
    if (objc_opt_respondsToSelector())
    {
      v25 = 16;
    }

    else
    {
      v25 = 0;
    }

    *(self + 1226) = *(self + 1226) & 0xEF | v25;
    if (objc_opt_respondsToSelector())
    {
      v26 = 32;
    }

    else
    {
      v26 = 0;
    }

    *(self + 1226) = *(self + 1226) & 0xDF | v26;
    if (objc_opt_respondsToSelector())
    {
      v27 = 64;
    }

    else
    {
      v27 = 0;
    }

    *(self + 1226) = *(self + 1226) & 0xBF | v27;
    if (objc_opt_respondsToSelector())
    {
      v28 = 0x80;
    }

    else
    {
      v28 = 0;
    }

    *(self + 1226) = v28 & 0x80 | *(self + 1226) & 0x7F;
    *(self + 1227) = *(self + 1227) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    *(self + 1227) = *(self + 1227) & 0xFD | v29;
    v30 = [(SBPIPContainerViewControllerAdapter *)v32 contentViewControllerForContainerViewController:self];
    contentViewController = self->_contentViewController;
    self->_contentViewController = v30;

    objc_storeStrong(&self->_adapter, a3);
    [(SBPIPContainerViewControllerAdapter *)self->_adapter setContainerViewController:self];
    v5 = v32;
  }
}

- (int)processIdentifier
{
  adapter = self->_adapter;
  if (adapter)
  {
    return [(SBPIPContainerViewControllerAdapter *)adapter processIdentifierForContainerViewController:self];
  }

  else
  {
    return -1;
  }
}

- (id)maximumAvailableVerticalPadding
{
  v3 = [(SBPIPContainerViewController *)self viewIfLoaded];
  [v3 bounds];
  v5 = v4;

  v6 = [(SBPIPContainerViewController *)self contentViewController];
  v7 = [v6 viewIfLoaded];
  [v7 bounds];
  v9 = v8;

  if (v5 <= 0.0)
  {
    v16 = 0;
    goto LABEL_16;
  }

  v10 = [(SBPIPInteractionController *)self->_interactionController layoutSettings];
  [v10 contentViewPadding];
  v12 = v11;

  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    v14 = v13;
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
      v15 = v20;
      goto LABEL_15;
    }

    if (SBFEffectiveHomeButtonType() == 2)
    {
      v15 = v12;
    }

    else
    {
      [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
      v15 = v18;
    }

    if (v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = [MEMORY[0x277D75418] currentDevice];
    if ([v10 userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
      [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
      v15 = v17;
    }

    else
    {
      v15 = v12;
    }
  }

LABEL_15:
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:{fmax(v5 - (v12 + v9 + v15), 0.0)}];
LABEL_16:

  return v16;
}

- (void)setContentViewPadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentViewPadding.top), vceqq_f64(v4, *&self->_contentViewPadding.bottom)))) & 1) == 0)
  {
    self->_contentViewPadding = a3;
    [(SBPIPContainerViewController *)self _updateContentPadding];
  }
}

- (void)setStashedPadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_stashedPadding.top), vceqq_f64(v4, *&self->_stashedPadding.bottom)))) & 1) == 0)
  {
    self->_stashedPadding = a3;
    [(SBPIPInteractionController *)self->_interactionController reloadInsets];
  }
}

- (void)setStashed:(BOOL)a3
{
  interactionController = self->_interactionController;
  if (interactionController)
  {
    v5 = a3;
    if ((*(self + 1225) & 4) != 0)
    {
      [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self willUpdateStashState:a3];
      interactionController = self->_interactionController;
    }

    [(SBPIPInteractionController *)interactionController setStashed:v5];

    [(SBPIPContainerViewController *)self _notifyStashStateChanged:v5];
  }
}

- (void)setConnectedWindowScenes:(id)a3
{
  v6 = a3;
  if ((BSEqualArrays() & 1) == 0)
  {
    v4 = [v6 copy];
    connectedWindowScenes = self->_connectedWindowScenes;
    self->_connectedWindowScenes = v4;
  }
}

- (void)_notifyStashStateChanged:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if ((*(self + 1225) & 8) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self didUpdateStashState:a3 springSettings:self->_stashTabAnimationSettings];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_observerHashTable;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 containerViewController:self userDidUpdateStashState:{v3, v11}];
        }
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
}

- (void)acquireInterfaceOrientationLock
{
  v7 = *MEMORY[0x277D85DE8];
  if (!self->_interfaceOrientationLockAcquired)
  {
    self->_interfaceOrientationLockAcquired = 1;
    v3 = SBLogPIP();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v6 = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%p][PIP Container] acquireInterfaceOrientationLock", buf, 0xCu);
    }

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __63__SBPIPContainerViewController_acquireInterfaceOrientationLock__block_invoke;
    v4[3] = &unk_2783A8C18;
    v4[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  }
}

- (void)relinquishInterfaceOrientationLock
{
  v6 = *MEMORY[0x277D85DE8];
  if (self->_interfaceOrientationLockAcquired)
  {
    self->_interfaceOrientationLockAcquired = 0;
    v3 = SBLogTraitsArbiter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%p][PIP Container] relinquishInterfaceOrientationLock", &v4, 0xCu);
    }

    [(UIViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)_requireInterfaceOrientation:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_requiredInterfaceOrientation != a3)
  {
    self->_requiredInterfaceOrientation = a3;
    v4 = SBLogTraitsArbiter();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = SBFStringForBSInterfaceOrientation();
      v6 = 134218242;
      v7 = self;
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[%p][PIP Container] requireInterfaceOrientation:%{public}@", &v6, 0x16u);
    }

    [(UIViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v13 = *MEMORY[0x277D85DE8];
  interfaceOrientationLockAcquired = self->_interfaceOrientationLockAcquired;
  requiredInterfaceOrientation = self->_requiredInterfaceOrientation;
  if (interfaceOrientationLockAcquired)
  {
    if (!requiredInterfaceOrientation)
    {
      LOBYTE(requiredInterfaceOrientation) = [(SBPIPContainerViewController *)self windowInterfaceOrientation];
    }

    goto LABEL_5;
  }

  if (requiredInterfaceOrientation)
  {
LABEL_5:
    v5 = 1 << requiredInterfaceOrientation;
    goto LABEL_6;
  }

  v5 = 30;
LABEL_6:
  v6 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x223D6D2C0](v5);
    v9 = 134218242;
    v10 = self;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%p][PIP Container] current supported orientations: %{public}@", &v9, 0x16u);
  }

  return v5;
}

- (void)getRotationContentSettings:(id *)a3 forWindow:(id)a4
{
  if (a3)
  {
    a3->var6 = 0;
  }
}

- (void)startResourcesUsageReductionAfterTimeout:(double)a3
{
  objc_initWeak(&location, self);
  [(BSAbsoluteMachTimer *)self->_stashedStateReduceResourcesUsageTimer invalidate];
  v5 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBPIPContainerViewController.stashedStateReduceResourcesUsageTimer"];
  stashedStateReduceResourcesUsageTimer = self->_stashedStateReduceResourcesUsageTimer;
  self->_stashedStateReduceResourcesUsageTimer = v5;

  v7 = self->_stashedStateReduceResourcesUsageTimer;
  v8 = MEMORY[0x277D85CD0];
  v9 = MEMORY[0x277D85CD0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBPIPContainerViewController_startResourcesUsageReductionAfterTimeout___block_invoke;
  v10[3] = &unk_2783A9918;
  objc_copyWeak(&v11, &location);
  [(BSAbsoluteMachTimer *)v7 scheduleWithFireInterval:v8 leewayInterval:v10 queue:a3 handler:0.0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __73__SBPIPContainerViewController_startResourcesUsageReductionAfterTimeout___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[137] invalidate];
    v3 = v2[137];
    v2[137] = 0;

    if ((*(v2 + 1226) & 0x20) != 0)
    {
      [v2[151] containerViewControllerStartReducingResourcesUsage:v2];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v2[124];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 containerViewControllerStartReducingResourcesUsage:{v2, v10}];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)stopResourcesUsageReduction
{
  v15 = *MEMORY[0x277D85DE8];
  [(BSAbsoluteMachTimer *)self->_stashedStateReduceResourcesUsageTimer invalidate];
  stashedStateReduceResourcesUsageTimer = self->_stashedStateReduceResourcesUsageTimer;
  self->_stashedStateReduceResourcesUsageTimer = 0;

  if ((*(self + 1226) & 0x40) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerStopReducingResourcesUsage:self];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_observerHashTable;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 containerViewControllerStopReducingResourcesUsage:{self, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)forcePictureInPictureToFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SBPIPInteractionController *)self->_interactionController setEnabled:0];

  [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Force PIP To Frame" reason:0 usingDisplayArrangementSpace:x, y, width, height];
}

- (BOOL)prefersIdleTimerDisabled
{
  if ((*(self + 1224) & 4) != 0)
  {
    return [(SBPIPContainerViewControllerAdapter *)self->_adapter shouldDisableIdleTimerForContainerViewController:self];
  }

  else
  {
    return 0;
  }
}

- (UIView)morphAnimatorTargetView
{
  if (*(self + 1224) < 0)
  {
    v4 = [(SBPIPContainerViewControllerAdapter *)self->_adapter morphAnimatorTargetViewForContainerViewController:self, v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIView)morphAnimatorTargetContainerView
{
  if (*(self + 1225))
  {
    v4 = [(SBPIPContainerViewControllerAdapter *)self->_adapter morphAnimatorTargetContainerViewForContainerViewController:self, v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)transitionAnimationWillBegin
{
  if ((*(self + 1224) & 8) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter transitionAnimationWillBeginForContainerViewController:self];
  }
}

- (void)transitionAnimationDidEnd
{
  if ((*(self + 1224) & 0x10) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter transitionAnimationDidEndForContainerViewController:self];
  }
}

- (void)handleDestructionRequestForSceneHandle:(id)a3
{
  if ((*(self + 1224) & 0x20) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self handleDestructionRequestForSceneHandle:a3];
  }
}

- (void)_updateContentViewFrame:(CGRect)a3 reason:(id)a4 usingDisplayArrangementSpace:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  [(SBPIPInteractionController *)self->_interactionController layoutWithFrame:x reason:y source:width usingDisplayArrangementSpace:height];
  if ((*(self + 1225) & 2) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self didUpdateContentViewFrame:v10 reason:x, y, width, height];
  }
}

- (void)_updateDisplayLayoutElementReferenceFrame
{
  [(SBSDisplayLayoutElement *)self->_displayLayoutElement referenceFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBPIPContainerViewController *)self _contentViewFrameInDisplayReferenceSpace];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(SBPIPContainerViewController *)self isStashed];
  if (v19 != [(SBSDisplayLayoutElement *)self->_displayLayoutElement sb_isStashedPIP]|| (v21.origin.x = v4, v21.origin.y = v6, v21.size.width = v8, v21.size.height = v10, v22.origin.x = v12, v22.origin.y = v14, v22.size.width = v16, v22.size.height = v18, !CGRectEqualToRect(v21, v22)))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73__SBPIPContainerViewController__updateDisplayLayoutElementReferenceFrame__block_invoke;
    v20[3] = &unk_2783B7FD0;
    *&v20[5] = v12;
    *&v20[6] = v14;
    *&v20[7] = v16;
    *&v20[8] = v18;
    v20[4] = self;
    [(SBPIPContainerViewController *)self updateDisplayLayoutElementWithBuilder:v20];
  }
}

void __73__SBPIPContainerViewController__updateDisplayLayoutElementReferenceFrame__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = a2;
  [v7 setReferenceFrame:{v3, v4, v5, v6}];
  [v7 sb_setStashedPIP:{objc_msgSend(*(a1 + 32), "isStashed")}];
}

- (id)hostedAppSceneHandle
{
  if ((*(self + 1224) & 0x40) != 0)
  {
    v4 = [(SBPIPContainerViewControllerAdapter *)self->_adapter hostedAppSceneHandleForContainerViewController:self, v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)windowInterfaceOrientation
{
  v2 = [(SBPIPContainerViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 interfaceOrientation];

  return v4;
}

- (CGRect)_contentViewFrameInDisplayReferenceSpace
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  if ([(SBPIPContainerViewController *)self isViewLoaded])
  {
    v7 = [(SBPIPContainerViewController *)self view];
    v8 = [v7 window];

    if (v8)
    {
      contentView = self->_contentView;
      [(UIView *)contentView bounds];
      [(UIView *)contentView convertRect:0 toView:?];
      [v8 _convertRectToSceneReferenceSpace:?];
      v3 = v10;
      v4 = v11;
      v5 = v12;
      v6 = v13;
    }
  }

  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_frameInFixedCoordinateSpace:(CGRect)a3 transformedToInterfaceOrientation:(int64_t)a4
{
  v6 = [(SBPIPContainerViewController *)self view];
  v7 = [v6 window];

  v8 = [v7 screen];
  v9 = [v8 fixedCoordinateSpace];
  [v9 bounds];

  if (!a4)
  {
    [(SBPIPContainerViewController *)self windowInterfaceOrientation];
  }

  _UIWindowConvertRectFromOrientationToOrientation();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

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

- (void)setContentScale:(double)a3
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    [SBPIPContainerViewController setContentScale:a3];
  }

  interactionController = self->_interactionController;

  [(SBPIPInteractionController *)interactionController setPreferredNormalizedScale:a3];
}

- (BOOL)requiresMedusaKeyboard
{
  if (*(self + 1226) < 0)
  {
    return [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerShouldRequireMedusaKeyboard:self];
  }

  else
  {
    return 0;
  }
}

- (void)setPrefersHiddenFromClonedDisplay:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_prefersHiddenFromClonedDisplay != a3)
  {
    self->_prefersHiddenFromClonedDisplay = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_observerHashTable allObjects];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 containerViewControllerDidUpdatePrefersHiddenFromClonedDisplays:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (NSNumber)overrideResourcesUsageReductionTimeout
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SBPIPContainerViewControllerAdapter *)self->_adapter overrideResourcesUsageReductionTimeout];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldSuppressAssociatedElementsInSystemAperture
{
  if ((*(self + 1227) & 2) != 0)
  {
    return [(SBPIPContainerViewControllerAdapter *)self->_adapter shouldSuppressAssociatedElementsInSystemAperture];
  }

  else
  {
    return 0;
  }
}

- (SBPIPContainerViewControllerInteractionObserver)interactionObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionObserver);

  return WeakRetained;
}

- (SBPIPContainerViewController)tetheredContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);

  return WeakRetained;
}

- (SBPIPContainerViewController)tetheringContainerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tetheringContainerViewController);

  return WeakRetained;
}

- (UIEdgeInsets)effectiveEdgeInsets
{
  top = self->_effectiveEdgeInsets.top;
  left = self->_effectiveEdgeInsets.left;
  bottom = self->_effectiveEdgeInsets.bottom;
  right = self->_effectiveEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)stashedPadding
{
  top = self->_stashedPadding.top;
  left = self->_stashedPadding.left;
  bottom = self->_stashedPadding.bottom;
  right = self->_stashedPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)SB_accessibilityToggleStashed
{
  v3 = [(SBPIPContainerViewController *)self isStashed]^ 1;

  [(SBPIPContainerViewController *)self setStashed:v3];
}

- (void)initWithPIPController:interactionSettings:adapter:.cold.1()
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "%{public}@", v3, v4, v5, v6, 2u);
}

- (void)updateDisplayLayoutElementWithBuilder:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)updateDisplayLayoutElementWithBuilder:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBPIPContainerViewController.m" lineNumber:796 description:{@"No publisher for window scene: %@; self: %@", a3, a2}];
}

- (void)setDisplayLayoutElementActive:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)setDisplayLayoutElementActive:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBPIPContainerViewController.m" lineNumber:814 description:{@"No publisher for window scene: %@; self: %@", a3, a2}];
}

- (void)setContentScale:(double)a1 .cold.1(double a1)
{
  OUTLINED_FUNCTION_1_2();
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = _SBFLoggingMethodProem();
  [v5 handleFailureInMethod:v1 object:v2 file:@"SBPIPContainerViewController.m" lineNumber:1394 description:{@"%@ expects scale in range [0..1]. Content scale given in input: %.2f", v4, *&a1}];
}

@end