@interface SBPIPContainerViewController
- (BOOL)handleStashingForTransitionContext:(id)context;
- (BOOL)prefersIdleTimerDisabled;
- (BOOL)requiresMedusaKeyboard;
- (BOOL)shouldSuppressAssociatedElementsInSystemAperture;
- (BOOL)toggleUserPreferredScale;
- (CGRect)_contentViewFrameInDisplayReferenceSpace;
- (CGRect)_frameInFixedCoordinateSpace:(CGRect)space transformedToInterfaceOrientation:(int64_t)orientation;
- (NSNumber)overrideResourcesUsageReductionTimeout;
- (SBPIPContainerViewController)initWithCoder:(id)coder;
- (SBPIPContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBPIPContainerViewController)initWithPIPController:(id)controller interactionSettings:(id)settings adapter:(id)adapter;
- (SBPIPContainerViewController)tetheredContainerViewController;
- (SBPIPContainerViewController)tetheringContainerViewController;
- (SBPIPContainerViewControllerInteractionObserver)interactionObserver;
- (UIEdgeInsets)_resolvedSafeAreaInsetsForWindowScene:(id)scene;
- (UIEdgeInsets)_safeAreaInsetsForScene:(id)scene;
- (UIEdgeInsets)effectiveEdgeInsets;
- (UIEdgeInsets)effectiveEdgeInsetsForWindowScene:(id)scene;
- (UIEdgeInsets)stashedPadding;
- (UIView)morphAnimatorTargetContainerView;
- (UIView)morphAnimatorTargetView;
- (id)_blackCurtainViewForStopAnimation;
- (id)_blurSpringAnimationWithParameters:(id)parameters fromValue:(id)value toValue:(id)toValue;
- (id)hostedAppSceneHandle;
- (id)maximumAvailableVerticalPadding;
- (int)processIdentifier;
- (int64_t)windowInterfaceOrientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)SB_accessibilityToggleStashed;
- (void)_addBlurFilterToView:(id)view;
- (void)_handleMicroPiPRotationDisplayLink:(id)link;
- (void)_layoutWithNonOperationFrame;
- (void)_notifyStashStateChanged:(BOOL)changed;
- (void)_removeBlurFilterFromView:(id)view;
- (void)_removeMicroPIPMirrorView;
- (void)_requireInterfaceOrientation:(int64_t)orientation;
- (void)_setAdapter:(id)adapter;
- (void)_setStashTabHidden:(BOOL)hidden left:(BOOL)left completion:(id)completion;
- (void)_updateContentPadding;
- (void)_updateContentViewFrame:(CGRect)frame reason:(id)reason usingDisplayArrangementSpace:(BOOL)space;
- (void)_updateDisplayLayoutElementReferenceFrame;
- (void)acquireInterfaceOrientationLock;
- (void)dealloc;
- (void)forcePictureInPictureToFrame:(CGRect)frame;
- (void)getRotationContentSettings:(id *)settings forWindow:(id)window;
- (void)handleDestructionRequestForSceneHandle:(id)handle;
- (void)interactionController:(id)controller didSettleOnStashState:(BOOL)state;
- (void)interactionController:(id)controller didUpdateStashProgress:(double)progress;
- (void)interactionControllerDidBeginEdgeResizing:(id)resizing;
- (void)interactionControllerDidBeginInteraction:(id)interaction forGestureRecognizer:(id)recognizer;
- (void)interactionControllerDidBeginSizeChange:(id)change behavior:(int)behavior;
- (void)interactionControllerDidEndAllInteractions:(id)interactions targetWindowScene:(id)scene;
- (void)interactionControllerDidEndEdgeResizing:(id)resizing;
- (void)interactionControllerDidEndSizeChange:(id)change;
- (void)interactionControllerDidUpdateEdgeInsets:(id)insets;
- (void)interactionControllerPanGestureDidEnd:(id)end;
- (void)invalidate;
- (void)layoutForTetheringInteractionController:(id)controller behavior:(int)behavior;
- (void)loadView;
- (void)noteWindowSceneDidChange;
- (void)performAfterInFlightAnimationsComplete:(id)complete;
- (void)relinquishInterfaceOrientationLock;
- (void)rotationAnimationDidBeginToRotation:(int64_t)rotation contentViewFrame:(CGRect)frame;
- (void)rotationAnimationDidCompleteToRotation:(int64_t)rotation contentViewFrame:(CGRect)frame;
- (void)rotationAnimationWillBeginToRotation:(int64_t)rotation contentViewFrame:(CGRect)frame;
- (void)rotationAnimationWillCompleteToRotation:(int64_t)rotation contentViewFrame:(CGRect)frame;
- (void)setConnectedWindowScenes:(id)scenes;
- (void)setContentScale:(double)scale;
- (void)setContentViewPadding:(UIEdgeInsets)padding;
- (void)setDisplayLayoutElementActive:(BOOL)active;
- (void)setEffectiveEdgeInsets:(UIEdgeInsets)insets;
- (void)setInteractionControllerEnabled:(BOOL)enabled stashed:(BOOL)stashed dataSource:(id)source;
- (void)setIsActivelyTethered:(BOOL)tethered mode:(int64_t)mode;
- (void)setNeedsLayoutForInteractionController:(id)controller traits:(unint64_t)traits withReason:(unint64_t)reason behavior:(int)behavior completion:(id)completion;
- (void)setPrefersHiddenFromClonedDisplay:(BOOL)display;
- (void)setStashed:(BOOL)stashed;
- (void)setStashedPadding:(UIEdgeInsets)padding;
- (void)setTetheredContainerViewController:(id)controller;
- (void)startAnimationDidBeginWithInitialInterfaceOrientation:(int64_t)orientation;
- (void)startAnimationDidCompleteWithInitialInterfaceOrientation:(int64_t)orientation;
- (void)startAnimationWillBeginWithInitialInterfaceOrientation:(int64_t)orientation initialFrame:(CGRect)frame;
- (void)startDisplayLink;
- (void)startResourcesUsageReductionAfterTimeout:(double)timeout;
- (void)startShowingContentWithAnimationSettings:(id)settings parameters:(id)parameters completion:(id)completion;
- (void)stopAnimationDidBeginWithFinalInterfaceOrientation:(int64_t)orientation finalFrame:(CGRect)frame;
- (void)stopAnimationDidCompleteWithFinalInterfaceOrientation:(int64_t)orientation;
- (void)stopAnimationWillBeginWithFinalInterfaceOrientation:(int64_t)orientation finalFrame:(CGRect)frame;
- (void)stopDisplayLink;
- (void)stopResourcesUsageReduction;
- (void)stopShowingContentWithAnimationSettings:(id)settings parameters:(id)parameters completion:(id)completion;
- (void)transitionAnimationDidEnd;
- (void)transitionAnimationWillBegin;
- (void)updateDisplayLayoutElementWithBuilder:(id)builder;
- (void)updatePreferredContentSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBPIPContainerViewController

- (SBPIPContainerViewController)initWithPIPController:(id)controller interactionSettings:(id)settings adapter:(id)adapter
{
  controllerCopy = controller;
  settingsCopy = settings;
  adapterCopy = adapter;
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
    objc_storeWeak(&v12->_pipController, controllerCopy);
    objc_storeStrong(&v13->_interactionSettings, settings);
    v13->_requiredInterfaceOrientation = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observerHashTable = v13->_observerHashTable;
    v13->_observerHashTable = weakObjectsHashTable;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    waitInteractionAnimationsCompletionBlocks = v13->_waitInteractionAnimationsCompletionBlocks;
    v13->_waitInteractionAnimationsCompletionBlocks = v16;

    interactiveFluidBehavior = [(SBPIPInteractionSettings *)v13->_interactionSettings interactiveFluidBehavior];
    interactiveAnimationSettings = v13->_interactiveAnimationSettings;
    v13->_interactiveAnimationSettings = interactiveFluidBehavior;

    stashTabFluidBehavior = [(SBPIPInteractionSettings *)v13->_interactionSettings stashTabFluidBehavior];
    stashTabAnimationSettings = v13->_stashTabAnimationSettings;
    v13->_stashTabAnimationSettings = stashTabFluidBehavior;

    regionUpdateFluidBehavior = [(SBPIPInteractionSettings *)v13->_interactionSettings regionUpdateFluidBehavior];
    regionUpdateAnimationSettings = v13->_regionUpdateAnimationSettings;
    v13->_regionUpdateAnimationSettings = regionUpdateFluidBehavior;

    [(SBPIPContainerViewController *)v13 _setAdapter:adapterCopy];
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

- (SBPIPContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = _SBFLoggingMethodProem();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBPIPContainerViewController.m" lineNumber:211 description:{@"%@ is not a valid initializer. You must call -[%@ initWithPictureInPictureViewController:].", v7, v9}];

  return 0;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)invalidate
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBPIPContainerViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBPIPContainerViewController.m" lineNumber:236 description:{@"%@ does not support unarchiving from a nib.", v7}];

  return 0;
}

- (void)loadView
{
  v3 = [SBPIPContainerViewControllerRootView alloc];
  v6 = [(SBPIPContainerViewControllerRootView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SBPIPContainerViewControllerRootView *)v6 setClipsToBounds:1];
  [(SBPIPContainerViewControllerRootView *)v6 setOpaque:0];
  [(SBPIPContainerViewController *)self setView:v6];
  view = [(UIViewController *)self->_contentViewController view];
  contentView = self->_contentView;
  self->_contentView = view;

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

- (void)startShowingContentWithAnimationSettings:(id)settings parameters:(id)parameters completion:(id)completion
{
  var2 = parameters.var2;
  var1 = parameters.var1;
  var0 = parameters.var0;
  settingsCopy = settings;
  completionCopy = completion;
  [(UIView *)self->_contentView setHidden:0];
  [(SBMicroPIPTetheringMirrorView *)self->_microPIPTetheringViewMirror setHidden:0];
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  processIdentifier = [(SBPIPContainerViewController *)self processIdentifier];
  scenePersistenceIdentifier = [(SBPIPContainerViewController *)self scenePersistenceIdentifier];
  v15 = [WeakRetained pictureInPictureMorphAnimatorControllerForProcessIdentifier:processIdentifier scenePersistenceIdentifier:scenePersistenceIdentifier];

  if (!settingsCopy || v15)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    [(SBPIPContainerViewController *)self _addBlurFilterToView:self->_contentView];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:var2];
    v17 = [(SBPIPContainerViewController *)self _blurSpringAnimationWithParameters:settingsCopy fromValue:v16 toValue:&unk_28336F470];

    layer = [(UIView *)self->_contentView layer];
    [layer addAnimation:v17 forKey:@"filters.gaussianBlur.inputRadius"];

    [(UIView *)self->_contentView setAlpha:var1];
    contentView = self->_contentView;
    CGAffineTransformMakeScale(&v27, var0, var0);
    [(UIView *)contentView setTransform:&v27];
    v20 = MEMORY[0x277CF0D38];
    bSAnimationSettings = [settingsCopy BSAnimationSettings];
    v22 = [v20 factoryWithSettings:bSAnimationSettings];

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
    v25 = completionCopy;
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

- (void)stopShowingContentWithAnimationSettings:(id)settings parameters:(id)parameters completion:(id)completion
{
  var2 = parameters.var2;
  var1 = parameters.var1;
  var0 = parameters.var0;
  settingsCopy = settings;
  completionCopy = completion;
  v12 = completionCopy;
  if (settingsCopy)
  {
    [(SBPIPContainerViewController *)self _addBlurFilterToView:self->_contentView];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:var2];
    v14 = [(SBPIPContainerViewController *)self _blurSpringAnimationWithParameters:settingsCopy fromValue:&unk_28336F470 toValue:v13];

    layer = [(UIView *)self->_contentView layer];
    [layer addAnimation:v14 forKey:@"filters.gaussianBlur.inputRadius"];

    v16 = MEMORY[0x277CF0D38];
    bSAnimationSettings = [settingsCopy BSAnimationSettings];
    v18 = [v16 factoryWithSettings:bSAnimationSettings];

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

  else if (completionCopy)
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

- (id)_blurSpringAnimationWithParameters:(id)parameters fromValue:(id)value toValue:(id)toValue
{
  v7 = MEMORY[0x277CD9FA0];
  toValueCopy = toValue;
  valueCopy = value;
  parametersCopy = parameters;
  v11 = [v7 animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v11 setBeginTime:CACurrentMediaTime()];
  [v11 setFillMode:*MEMORY[0x277CDA228]];
  [v11 setFromValue:valueCopy];

  [v11 setToValue:toValueCopy];
  [parametersCopy mass];
  [v11 setMass:?];
  [parametersCopy stiffness];
  [v11 setStiffness:?];
  [parametersCopy damping];
  [v11 setDamping:?];
  [parametersCopy duration];
  v13 = v12;

  [v11 setDuration:v13];

  return v11;
}

- (void)_addBlurFilterToView:(id)view
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9EA0];
  v4 = *MEMORY[0x277CDA328];
  viewCopy = view;
  v6 = [v3 filterWithType:v4];
  [v6 setName:@"gaussianBlur"];
  [v6 setValue:@"default" forKey:@"inputQuality"];
  [v6 setValue:@"default" forKey:@"inputIntermediateBitDepth"];
  [v6 setValue:&unk_28336F470 forKey:@"inputRadius"];
  v7 = MEMORY[0x277CBEC28];
  [v6 setValue:MEMORY[0x277CBEC28] forKey:@"inputNormalizeEdges"];
  [v6 setValue:v7 forKey:@"inputHardEdges"];
  layer = [viewCopy layer];

  v10[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [layer setFilters:v9];
}

- (void)_removeBlurFilterFromView:(id)view
{
  layer = [view layer];
  [layer setFilters:0];
}

- (void)setInteractionControllerEnabled:(BOOL)enabled stashed:(BOOL)stashed dataSource:(id)source
{
  enabledCopy = enabled;
  if (!self->_interactionController)
  {
    stashedCopy = stashed;
    sourceCopy = source;
    [(SBPIPContainerViewController *)self loadViewIfNeeded];
    v9 = [SBPIPInteractionController alloc];
    contentView = self->_contentView;
    [(UIViewController *)self->_contentViewController preferredContentSize];
    v11 = [(SBPIPInteractionController *)v9 initWithInteractionTargetView:contentView preferredContentSize:self->_interactionSettings interactionSettings:sourceCopy dataSource:self delegate:?];

    interactionController = self->_interactionController;
    self->_interactionController = v11;

    [(SBPIPContainerViewController *)self _updateContentPadding];
    [(SBPIPInteractionController *)self->_interactionController setStashed:stashedCopy];
    [(SBPIPInteractionController *)self->_interactionController initialFrame];
    [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Setup Interaction Controller" reason:1 usingDisplayArrangementSpace:?];
  }

  [(SBPIPContainerViewController *)self setInteractionsEnabled:enabledCopy, stashed, source];
}

- (void)startAnimationWillBeginWithInitialInterfaceOrientation:(int64_t)orientation initialFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self->_contentView setHidden:0];
  [(SBPIPContainerViewController *)self _frameInFixedCoordinateSpace:orientation transformedToInterfaceOrientation:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(SBPIPContainerViewController *)self _requireInterfaceOrientation:orientation];
  [(SBPIPInteractionController *)self->_interactionController setEnabled:0];

  [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Prepare Start Animation" reason:0 usingDisplayArrangementSpace:v11, v13, v15, v17];
}

- (void)startAnimationDidBeginWithInitialInterfaceOrientation:(int64_t)orientation
{
  [(SBPIPContainerViewController *)self _requireInterfaceOrientation:0];
  [(SBPIPInteractionController *)self->_interactionController initialFrame];

  [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Perform Start Animation" reason:1 usingDisplayArrangementSpace:?];
}

- (void)startAnimationDidCompleteWithInitialInterfaceOrientation:(int64_t)orientation
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
          [v10 containerViewController:self didFinishStartAnimationWithInitialInterfaceOrientation:{orientation, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ([(SBPIPContainerViewController *)self windowInterfaceOrientation]!= orientation)
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
  view = [(SBPIPContainerViewController *)self view];
  subviews = [view subviews];

  v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(subviews);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)stopAnimationWillBeginWithFinalInterfaceOrientation:(int64_t)orientation finalFrame:(CGRect)frame
{
  [(SBPIPInteractionController *)self->_interactionController setEnabled:0, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SBPIPContainerViewController *)self setStashed:0];
  [(SBPIPContainerViewController *)self _removeMicroPIPMirrorView];
  _blackCurtainViewForStopAnimation = [(SBPIPContainerViewController *)self _blackCurtainViewForStopAnimation];
  if (!_blackCurtainViewForStopAnimation || (v6 = [(SBPIPContainerViewController *)self windowInterfaceOrientation]== orientation, v7 = _blackCurtainViewForStopAnimation, !v6))
  {
    [_blackCurtainViewForStopAnimation setAlpha:0.0];
    v7 = _blackCurtainViewForStopAnimation;
  }
}

- (void)stopAnimationDidBeginWithFinalInterfaceOrientation:(int64_t)orientation finalFrame:(CGRect)frame
{
  [(SBPIPContainerViewController *)self _frameInFixedCoordinateSpace:frame.origin.x transformedToInterfaceOrientation:frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SBPIPContainerViewController *)self _requireInterfaceOrientation:orientation];
  [(SBPIPContainerViewController *)self _updateContentViewFrame:@"Perform Stop Animation" reason:0 usingDisplayArrangementSpace:v7, v9, v11, v13];
  _blackCurtainViewForStopAnimation = [(SBPIPContainerViewController *)self _blackCurtainViewForStopAnimation];
  if (_blackCurtainViewForStopAnimation)
  {
    v16 = _blackCurtainViewForStopAnimation;
    v15 = [(SBPIPContainerViewController *)self windowInterfaceOrientation]== orientation;
    _blackCurtainViewForStopAnimation = v16;
    if (v15)
    {
      [v16 setAlpha:0.0];
      _blackCurtainViewForStopAnimation = v16;
    }
  }
}

- (void)stopAnimationDidCompleteWithFinalInterfaceOrientation:(int64_t)orientation
{
  interactionController = self->_interactionController;
  self->_interactionController = 0;

  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
}

- (void)performAfterInFlightAnimationsComplete:(id)complete
{
  completeCopy = complete;
  v5 = completeCopy;
  if (self->_inFlightAnimationCounter)
  {
    waitInteractionAnimationsCompletionBlocks = self->_waitInteractionAnimationsCompletionBlocks;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__SBPIPContainerViewController_performAfterInFlightAnimationsComplete___block_invoke;
    v8[3] = &unk_2783A9348;
    v9 = completeCopy;
    v7 = MEMORY[0x223D6F7F0](v8);
    [(NSMutableArray *)waitInteractionAnimationsCompletionBlocks addObject:v7];
  }

  else
  {
    completeCopy[2](completeCopy);
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

- (void)updatePreferredContentSize:(CGSize)size
{
  [(SBPIPInteractionController *)self->_interactionController setPreferredContentSize:size.width, size.height];
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
    isHandlingContextWindowSceneUpdate = [WeakRetained isHandlingContextWindowSceneUpdate];

    if ((isHandlingContextWindowSceneUpdate & 1) == 0)
    {
      windowInterfaceOrientation = [(SBPIPContainerViewController *)self windowInterfaceOrientation];
      interactionController = self->_interactionController;
      view = [(SBPIPContainerViewController *)self view];
      [view bounds];
      v9 = v8;
      v11 = v10;
      _sbWindowScene = [(UIViewController *)self _sbWindowScene];
      [(SBPIPInteractionController *)interactionController setContainerSize:windowInterfaceOrientation withOrientation:_sbWindowScene scene:v9, v11];

      [(SBPIPContainerViewController *)self _updateContentPadding];
      if ((*(self + 1224) & 2) != 0)
      {
        adapter = self->_adapter;

        [(SBPIPContainerViewControllerAdapter *)adapter layoutSubviewsForContainerViewController:self];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBPIPContainerViewController;
  [(SBPIPContainerViewController *)&v5 viewDidAppear:appear];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBPIPContainerViewController;
  [(SBPIPContainerViewController *)&v4 viewWillDisappear:disappear];
  [(SBPIPContainerViewController *)self setDisplayLayoutElementActive:0];
}

- (BOOL)handleStashingForTransitionContext:(id)context
{
  if (*(self + 1227))
  {
    return [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self shouldHandleStashingForTransitionContext:context];
  }

  else
  {
    return 0;
  }
}

- (void)_updateContentPadding
{
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  [(SBPIPContainerViewController *)self effectiveEdgeInsetsForWindowScene:_sbWindowScene];
  [(SBPIPContainerViewController *)self setEffectiveEdgeInsets:?];
}

- (UIEdgeInsets)_safeAreaInsetsForScene:(id)scene
{
  sceneCopy = scene;
  view = [(SBPIPContainerViewController *)self view];
  _sbWindowScene = [view _sbWindowScene];

  if (_sbWindowScene == sceneCopy)
  {
    view2 = [(SBPIPContainerViewController *)self view];
    [view2 safeAreaInsets];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  else
  {
    view2 = [sceneCopy windows];
    v8 = [view2 bs_firstObjectPassingTest:&__block_literal_global_205];
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

- (UIEdgeInsets)_resolvedSafeAreaInsetsForWindowScene:(id)scene
{
  sceneCopy = scene;
  screen = [sceneCopy screen];
  [screen _peripheryInsets];
  v7 = v6;
  v9 = v8;

  [(SBPIPContainerViewController *)self _safeAreaInsetsForScene:sceneCopy];
  v11 = v10;
  v13 = v12;
  view = [(SBPIPContainerViewController *)self view];
  _sbWindowScene = [view _sbWindowScene];
  if (_sbWindowScene == sceneCopy)
  {
    windowInterfaceOrientation = [(SBPIPContainerViewController *)self windowInterfaceOrientation];
  }

  else
  {
    windowInterfaceOrientation = [sceneCopy interfaceOrientation];
  }

  v17 = windowInterfaceOrientation;

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
    view = [MEMORY[0x277D75418] currentDevice];
    if ([view userInterfaceIdiom] == 1)
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if (![currentDevice userInterfaceIdiom])
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

- (void)setEffectiveEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_effectiveEdgeInsets.top, v3), vceqq_f64(*&self->_effectiveEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_effectiveEdgeInsets = insets;
    [(SBPIPInteractionController *)self->_interactionController reloadInsets];
  }
}

- (UIEdgeInsets)effectiveEdgeInsetsForWindowScene:(id)scene
{
  v50 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  [WeakRetained pictureInPictureWindowMarginsOnWindowScene:sceneCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(SBPIPContainerViewController *)self _resolvedSafeAreaInsetsForWindowScene:sceneCopy];
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  if (_sbWindowScene == sceneCopy)
  {
    windowInterfaceOrientation = [(SBPIPContainerViewController *)self windowInterfaceOrientation];
  }

  else
  {
    windowInterfaceOrientation = [sceneCopy interfaceOrientation];
  }

  v17 = windowInterfaceOrientation;

  layoutSettings = [(SBPIPInteractionController *)self->_interactionController layoutSettings];
  [layoutSettings contentViewPadding];

  v19 = __sb__runningInSpringBoard();
  if (!v19)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
    {
      [MEMORY[0x277D75A78] heightForStyle:0 orientation:1];
    }

    goto LABEL_14;
  }

  layoutSettings = v19;
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

    if ((layoutSettings & 1) == 0)
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
    layoutSettings = [MEMORY[0x277D75418] currentDevice];
    if ([layoutSettings userInterfaceIdiom] == 1)
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

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice2 userInterfaceIdiom])
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
    view = [(SBPIPContainerViewController *)self view];
    [view safeAreaInsets];
    v34 = NSStringFromUIEdgeInsets(v52);
    v53.top = v8;
    v53.left = v10;
    v53.bottom = v12;
    v53.right = v14;
    v35 = NSStringFromUIEdgeInsets(v53);
    *buf = 134219010;
    selfCopy = self;
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = SBPIPContainerViewController;
  coordinatorCopy = coordinator;
  [(SBPIPContainerViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__SBPIPContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_2783A9488;
  v12[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v12];
  v8 = SBFWindowForViewControllerTransition();

  _toWindowOrientation = [v8 _toWindowOrientation];
  interactionController = self->_interactionController;
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  [(SBPIPInteractionController *)interactionController setContainerSize:_toWindowOrientation withOrientation:_sbWindowScene scene:width, height];
}

- (void)setNeedsLayoutForInteractionController:(id)controller traits:(unint64_t)traits withReason:(unint64_t)reason behavior:(int)behavior completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  v14 = SBLogPIP();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    selfCopy = self;
    v59 = 2048;
    v60 = controllerCopy;
    v61 = 2048;
    traitsCopy = traits;
    v63 = 2048;
    reasonCopy = reason;
    v65 = 1024;
    behaviorCopy = behavior;
    _os_log_debug_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEBUG, "[%p][Layout] setNeedsLayoutForInteractionController[%p] for traits:%lu reason:%lu behavior:%u.", buf, 0x30u);
  }

  isEnabled = [controllerCopy isEnabled];
  if ((reason & 0x8000) != 0 || isEnabled)
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __109__SBPIPContainerViewController_setNeedsLayoutForInteractionController_traits_withReason_behavior_completion___block_invoke;
    v51[3] = &unk_2783B8D18;
    traitsCopy2 = traits;
    reasonCopy2 = reason;
    v52 = controllerCopy;
    selfCopy2 = self;
    behaviorCopy2 = behavior;
    v16 = MEMORY[0x223D6F7F0](v51);
    v17 = +[SBBacklightController sharedInstance];
    screenIsOn = [v17 screenIsOn];

    WeakRetained = objc_loadWeakRetained(&self->_pipController);
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    v21 = [WeakRetained isPictureInPictureWindowVisibleOnWindowScene:_sbWindowScene];

    v22 = 0;
    if (screenIsOn && v21)
    {
      v22 = ![(UIView *)self->_contentView isHidden];
    }

    if (!behavior || !((reason >> 15) & 1 | v22 & 1))
    {
      v16[2](v16);
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }

      goto LABEL_28;
    }

    v23 = &OBJC_IVAR___SBPIPContainerViewController__stashTabAnimationSettings;
    if ((reason & 0x800) == 0)
    {
      v23 = &OBJC_IVAR___SBPIPContainerViewController__interactiveAnimationSettings;
    }

    v24 = behavior == 2 && (reason & 0x5000) != 0;
    if (((behavior == 2) & (reason >> 13)) != 0)
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
    v45 = completionCopy;
    [v43 _animateUsingSpringBehavior:metricsAnimationSettings tracking:behavior == 1 animations:v48 completion:v44];

LABEL_28:
    goto LABEL_29;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
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

- (void)interactionControllerDidBeginSizeChange:(id)change behavior:(int)behavior
{
  v4 = *&behavior;
  changeCopy = change;
  if ((*(self + 1226) & 2) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerWillBeginSizeChange:self behavior:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionControllerDidBeginSizeChange:changeCopy behavior:v4];
}

- (void)interactionControllerDidEndSizeChange:(id)change
{
  changeCopy = change;
  if ((*(self + 1226) & 4) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerDidEndSizeChange:self];
  }

  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionControllerDidEndSizeChange:changeCopy];
}

- (void)interactionController:(id)controller didUpdateStashProgress:(double)progress
{
  controllerCopy = controller;
  if ((*(self + 1226) & 8) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self didUpdateStashProgress:progress];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionController:controllerCopy didUpdateStashProgress:progress];
}

- (void)interactionController:(id)controller didSettleOnStashState:(BOOL)state
{
  stateCopy = state;
  controllerCopy = controller;
  [(SBPIPContainerViewController *)self _notifyStashStateChanged:stateCopy];
  if ((*(self + 1225) & 0x10) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self didSettleOnStashState:stateCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionController:controllerCopy didSettleOnStashState:stateCopy];
}

- (void)interactionControllerDidBeginInteraction:(id)interaction forGestureRecognizer:(id)recognizer
{
  interactionCopy = interaction;
  recognizerCopy = recognizer;
  if ((*(self + 1225) & 0x20) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self willBeginInteractionWithGestureRecognizer:recognizerCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionObserver);
  [WeakRetained containerViewControllerDidBeginInteraction:self];

  v8 = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [v8 interactionControllerDidBeginInteraction:interactionCopy forGestureRecognizer:recognizerCopy];
}

- (void)interactionControllerDidEndAllInteractions:(id)interactions targetWindowScene:(id)scene
{
  sceneCopy = scene;
  interactionsCopy = interactions;
  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
  if ((*(self + 1225) & 0x40) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerDidEndInteraction:self targetWindowScene:sceneCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_interactionObserver);
  [WeakRetained containerViewControllerDidEndInteraction:self targetWindowScene:sceneCopy];

  v8 = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [v8 interactionControllerDidEndAllInteractions:interactionsCopy targetWindowScene:sceneCopy];

  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
  [(SBPIPContainerViewController *)self _updateContentPadding];
}

- (void)interactionControllerPanGestureDidEnd:(id)end
{
  endCopy = end;
  if (*(self + 1225) < 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerPanGestureDidEnd:self];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionControllerPanGestureDidEnd:endCopy];
}

- (void)interactionControllerDidUpdateEdgeInsets:(id)insets
{
  insetsCopy = insets;
  [(SBPIPContainerViewController *)self _updateDisplayLayoutElementReferenceFrame];
  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);
  [WeakRetained interactionControllerDidUpdateEdgeInsets:insetsCopy];
}

- (void)interactionControllerDidBeginEdgeResizing:(id)resizing
{
  if ((*(self + 1227) & 4) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerDidBeginEdgeResize:self];
  }
}

- (void)interactionControllerDidEndEdgeResizing:(id)resizing
{
  if ((*(self + 1227) & 8) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewControllerDidEndEdgeResize:self];
  }
}

- (void)updateDisplayLayoutElementWithBuilder:(id)builder
{
  if (self->_displayLayoutElementAssertion)
  {
    builderCopy = builder;
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    if (!_sbWindowScene)
    {
      [SBPIPContainerViewController updateDisplayLayoutElementWithBuilder:];
    }

    builderCopy2 = [_sbWindowScene displayLayoutPublisher];
    if (!builderCopy2)
    {
      [(SBPIPContainerViewController *)a2 updateDisplayLayoutElementWithBuilder:_sbWindowScene];
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [builderCopy2 transitionAssertionWithReason:v8];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    builderCopy[2](builderCopy, self->_displayLayoutElement);
    v11 = [builderCopy2 addElement:self->_displayLayoutElement];
    v12 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v11;

    [v9 invalidate];
  }

  else
  {
    v13 = *(builder + 2);
    builderCopy2 = builder;
    v13();
  }
}

- (void)setDisplayLayoutElementActive:(BOOL)active
{
  self->_wantsDisplayLayoutElement = active;
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (active)
  {
    if (displayLayoutElementAssertion)
    {
      return;
    }

    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    if (!_sbWindowScene)
    {
      return;
    }

    v7 = _sbWindowScene;
    _sbWindowScene2 = [(UIViewController *)self _sbWindowScene];
    delegate = [_sbWindowScene2 delegate];

    if (!delegate)
    {
      return;
    }

    _sbWindowScene3 = [(UIViewController *)self _sbWindowScene];
    if (!_sbWindowScene3)
    {
      [SBPIPContainerViewController setDisplayLayoutElementActive:];
    }

    displayLayoutPublisher = [_sbWindowScene3 displayLayoutPublisher];
    if (!displayLayoutPublisher)
    {
      [(SBPIPContainerViewController *)a2 setDisplayLayoutElementActive:_sbWindowScene3];
    }

    v11 = [displayLayoutPublisher addElement:self->_displayLayoutElement];
    v12 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v11;

    v13 = displayLayoutPublisher;
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

- (void)setIsActivelyTethered:(BOOL)tethered mode:(int64_t)mode
{
  if (self->_activelyTethered == tethered)
  {
    return;
  }

  tetheredCopy = tethered;
  self->_activelyTethered = tethered;
  preTetheringLayoutSettings = self->_preTetheringLayoutSettings;
  if (tethered)
  {
    if (preTetheringLayoutSettings)
    {
      v26 = 0;
    }

    else
    {
      layoutSettings = [(SBPIPInteractionController *)self->_interactionController layoutSettings];
      v10 = self->_preTetheringLayoutSettings;
      self->_preTetheringLayoutSettings = layoutSettings;

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
    if (mode == 1)
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
        view = [(SBPIPContainerViewController *)self view];
        [view addSubview:self->_microPIPTetheringViewMirror];
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
  if (!mode)
  {
LABEL_21:
    [(SBPIPInteractionController *)self->_interactionController setStashed:0];
    if (!tetheredCopy)
    {
      [(SBPIPInteractionController *)self->_interactionController setEnabled:1];
    }

    WeakRetained = objc_loadWeakRetained(&self->_tetheringContainerViewController);
    interactionController = self->_interactionController;
    interactionController = [WeakRetained interactionController];
    [interactionController currentNormalizedScale];
    [(SBPIPInteractionController *)interactionController setPreferredNormalizedScale:0 additionalReasons:2 animationBehavior:?];

    [(SBPIPInteractionController *)self->_interactionController setContentLayoutSettings:v26 animationBehavior:v15];
    v24 = self->_interactionController;
    if (tetheredCopy)
    {
      [(SBPIPInteractionController *)v24 setEnabled:0];
      interactionController2 = [WeakRetained interactionController];
      [interactionController2 setTargetOverlayView:self->_microPIPTetheringViewMirror];
    }

    else
    {
      [(SBPIPInteractionController *)v24 setPreferredNormalizedScale:self->_preTetheringNormalizedContentScale];
    }

    goto LABEL_27;
  }

LABEL_20:
  if (tetheredCopy)
  {
    goto LABEL_21;
  }

LABEL_27:
}

- (void)layoutForTetheringInteractionController:(id)controller behavior:(int)behavior
{
  v4 = *&behavior;
  controllerCopy = controller;
  if (self->_activelyTethered)
  {
    if (self->_tetheredInMicroPIPMode)
    {
      contentPlaceholderView = [(SBMicroPIPTetheringMirrorView *)self->_microPIPTetheringViewMirror contentPlaceholderView];
      interactionController = self->_interactionController;
      [controllerCopy currentNormalizedScale];
      [(SBPIPInteractionController *)interactionController setPreferredNormalizedScale:0 additionalReasons:v4 animationBehavior:?];
      [(SBPIPInteractionController *)self->_interactionController nonoperationalFrame];
      [contentPlaceholderView setBounds:{0.0, 0.0}];
      [contentPlaceholderView layoutIfNeeded];
      [(SBMicroPIPTetheringMirrorView *)self->_microPIPTetheringViewMirror layoutIfNeeded];
      superview = [(UIView *)self->_contentView superview];
      view = [(SBPIPContainerViewController *)self view];

      if (superview == view)
      {
        superview2 = [contentPlaceholderView superview];
        [contentPlaceholderView frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        view2 = [(SBPIPContainerViewController *)self view];
        [superview2 convertRect:view2 toView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [(UIView *)self->_contentView setFrame:v23, v25, v27, v29];
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __81__SBPIPContainerViewController_layoutForTetheringInteractionController_behavior___block_invoke;
        v33 = &unk_2783A92D8;
        selfCopy = self;
        v35 = contentPlaceholderView;
        [(SBPIPContainerViewController *)self performAfterInFlightAnimationsComplete:&v30];
      }

      else
      {
        contentView = self->_contentView;
        [contentPlaceholderView bounds];
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
    contentPlaceholderView = [(SBMicroPIPTetheringMirrorView *)microPIPTetheringViewMirror contentPlaceholderView];
    [(UIView *)self->_contentView center];
    v6 = v5;
    v8 = v7;
    view = [(SBPIPContainerViewController *)self view];
    [contentPlaceholderView convertPoint:view toView:{v6, v8}];
    v11 = v10;
    v13 = v12;

    view2 = [(SBPIPContainerViewController *)self view];
    [view2 addSubview:self->_contentView];

    [(UIView *)self->_contentView setCenter:v11, v13];
    [(UIView *)self->_contentView layoutIfNeeded];
    [(SBMicroPIPTetheringMirrorView *)self->_microPIPTetheringViewMirror removeFromSuperview];
    v15 = self->_microPIPTetheringViewMirror;
    self->_microPIPTetheringViewMirror = 0;
  }
}

- (void)setTetheredContainerViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_tetheredContainerViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tetheredContainerViewController, obj);
    [(SBPIPInteractionController *)self->_interactionController setStashed:0];
    v5 = obj;
  }
}

- (void)rotationAnimationWillBeginToRotation:(int64_t)rotation contentViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  currentCanonicalPosition = [(SBPIPContainerViewController *)self currentCanonicalPosition];
  [(UIView *)self->_contentView bounds];
  v13 = v11;
  v14 = v12;
  v15 = 0.5;
  v16 = 0.5;
  if (!self->_activelyTethered)
  {
    if (rotation != 1)
    {
      if (rotation)
      {
        goto LABEL_23;
      }

      if (currentCanonicalPosition <= 1)
      {
        if (currentCanonicalPosition)
        {
          if (currentCanonicalPosition != 1)
          {
            goto LABEL_23;
          }

          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if (currentCanonicalPosition != 2)
      {
        if (currentCanonicalPosition != 3)
        {
          goto LABEL_23;
        }

LABEL_21:
        v18 = v11 + v12 * -0.5;
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (currentCanonicalPosition > 1)
    {
      if (currentCanonicalPosition != 2)
      {
        if (currentCanonicalPosition != 3)
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

    if (!currentCanonicalPosition)
    {
LABEL_18:
      v18 = v12 * 0.5;
LABEL_22:
      v15 = v18 / v11;
      goto LABEL_23;
    }

    if (currentCanonicalPosition == 1)
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

- (void)rotationAnimationDidBeginToRotation:(int64_t)rotation contentViewFrame:(CGRect)frame
{
  if ((rotation - 1) > 2)
  {
    v5 = -1.57079633;
  }

  else
  {
    v5 = dbl_21F8A70D8[rotation - 1];
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

- (void)rotationAnimationWillCompleteToRotation:(int64_t)rotation contentViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  if (rotation <= 1)
  {
    [(SBPIPInteractionController *)self->_interactionController preferredContentSize];
    [(SBPIPInteractionController *)self->_interactionController setPreferredContentSize:v14, v13];
  }
}

- (void)rotationAnimationDidCompleteToRotation:(int64_t)rotation contentViewFrame:(CGRect)frame
{
  if (self->_activelyTethered)
  {
    [(SBPIPContainerViewController *)self _layoutWithNonOperationFrame:rotation];
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
  interactionController = [WeakRetained interactionController];
  [(SBPIPContainerViewController *)self layoutForTetheringInteractionController:interactionController behavior:0];
}

- (void)startDisplayLink
{
  v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__handleMicroPiPRotationDisplayLink_];
  microPiPRotationDisplayLink = self->_microPiPRotationDisplayLink;
  self->_microPiPRotationDisplayLink = v3;

  v5 = self->_microPiPRotationDisplayLink;
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
}

- (void)_handleMicroPiPRotationDisplayLink:(id)link
{
  layer = [(UIView *)self->_contentView layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer frame];

  superview = [(UIView *)self->_contentView superview];
  [superview bounds];
  superview2 = [(UIView *)self->_contentView superview];
  [superview2 bounds];

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

- (void)_setStashTabHidden:(BOOL)hidden left:(BOOL)left completion:(id)completion
{
  leftCopy = left;
  hiddenCopy = hidden;
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(SBPIPInteractionController *)self->_interactionController isEnabled])
  {
    v9 = (*(self + 1226) & 0x10) != 0 ? [(SBPIPContainerViewControllerAdapter *)self->_adapter isStashTabHiddenForContainerViewController:self]: 1;
    if (v9 != hiddenCopy)
    {
      v16 = leftCopy;
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

      leftCopy = v16;
    }
  }

  if (*(self + 1226))
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self wantsStashTabHidden:hiddenCopy left:leftCopy springSettings:self->_stashTabAnimationSettings completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_setAdapter:(id)adapter
{
  adapterCopy = adapter;
  if (self->_adapter != adapterCopy)
  {
    v32 = adapterCopy;
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

    objc_storeStrong(&self->_adapter, adapter);
    [(SBPIPContainerViewControllerAdapter *)self->_adapter setContainerViewController:self];
    adapterCopy = v32;
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
  viewIfLoaded = [(SBPIPContainerViewController *)self viewIfLoaded];
  [viewIfLoaded bounds];
  v5 = v4;

  contentViewController = [(SBPIPContainerViewController *)self contentViewController];
  viewIfLoaded2 = [contentViewController viewIfLoaded];
  [viewIfLoaded2 bounds];
  v9 = v8;

  if (v5 <= 0.0)
  {
    v16 = 0;
    goto LABEL_16;
  }

  layoutSettings = [(SBPIPInteractionController *)self->_interactionController layoutSettings];
  [layoutSettings contentViewPadding];
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
    layoutSettings = [MEMORY[0x277D75418] currentDevice];
    if ([layoutSettings userInterfaceIdiom] || SBFEffectiveHomeButtonType() != 2)
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

- (void)setContentViewPadding:(UIEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.left;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentViewPadding.top), vceqq_f64(v4, *&self->_contentViewPadding.bottom)))) & 1) == 0)
  {
    self->_contentViewPadding = padding;
    [(SBPIPContainerViewController *)self _updateContentPadding];
  }
}

- (void)setStashedPadding:(UIEdgeInsets)padding
{
  v3.f64[0] = padding.top;
  v3.f64[1] = padding.left;
  v4.f64[0] = padding.bottom;
  v4.f64[1] = padding.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_stashedPadding.top), vceqq_f64(v4, *&self->_stashedPadding.bottom)))) & 1) == 0)
  {
    self->_stashedPadding = padding;
    [(SBPIPInteractionController *)self->_interactionController reloadInsets];
  }
}

- (void)setStashed:(BOOL)stashed
{
  interactionController = self->_interactionController;
  if (interactionController)
  {
    stashedCopy = stashed;
    if ((*(self + 1225) & 4) != 0)
    {
      [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self willUpdateStashState:stashed];
      interactionController = self->_interactionController;
    }

    [(SBPIPInteractionController *)interactionController setStashed:stashedCopy];

    [(SBPIPContainerViewController *)self _notifyStashStateChanged:stashedCopy];
  }
}

- (void)setConnectedWindowScenes:(id)scenes
{
  scenesCopy = scenes;
  if ((BSEqualArrays() & 1) == 0)
  {
    v4 = [scenesCopy copy];
    connectedWindowScenes = self->_connectedWindowScenes;
    self->_connectedWindowScenes = v4;
  }
}

- (void)_notifyStashStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v16 = *MEMORY[0x277D85DE8];
  if ((*(self + 1225) & 8) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self didUpdateStashState:changed springSettings:self->_stashTabAnimationSettings];
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
          [v10 containerViewController:self userDidUpdateStashState:{changedCopy, v11}];
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
      selfCopy = self;
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
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[%p][PIP Container] relinquishInterfaceOrientationLock", &v4, 0xCu);
    }

    [(UIViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)_requireInterfaceOrientation:(int64_t)orientation
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_requiredInterfaceOrientation != orientation)
  {
    self->_requiredInterfaceOrientation = orientation;
    v4 = SBLogTraitsArbiter();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = SBFStringForBSInterfaceOrientation();
      v6 = 134218242;
      selfCopy = self;
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
    selfCopy = self;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[%p][PIP Container] current supported orientations: %{public}@", &v9, 0x16u);
  }

  return v5;
}

- (void)getRotationContentSettings:(id *)settings forWindow:(id)window
{
  if (settings)
  {
    settings->var6 = 0;
  }
}

- (void)startResourcesUsageReductionAfterTimeout:(double)timeout
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
  [(BSAbsoluteMachTimer *)v7 scheduleWithFireInterval:v8 leewayInterval:v10 queue:timeout handler:0.0];

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

- (void)forcePictureInPictureToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)handleDestructionRequestForSceneHandle:(id)handle
{
  if ((*(self + 1224) & 0x20) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self handleDestructionRequestForSceneHandle:handle];
  }
}

- (void)_updateContentViewFrame:(CGRect)frame reason:(id)reason usingDisplayArrangementSpace:(BOOL)space
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  reasonCopy = reason;
  [(SBPIPInteractionController *)self->_interactionController layoutWithFrame:x reason:y source:width usingDisplayArrangementSpace:height];
  if ((*(self + 1225) & 2) != 0)
  {
    [(SBPIPContainerViewControllerAdapter *)self->_adapter containerViewController:self didUpdateContentViewFrame:reasonCopy reason:x, y, width, height];
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
  isStashed = [(SBPIPContainerViewController *)self isStashed];
  if (isStashed != [(SBSDisplayLayoutElement *)self->_displayLayoutElement sb_isStashedPIP]|| (v21.origin.x = v4, v21.origin.y = v6, v21.size.width = v8, v21.size.height = v10, v22.origin.x = v12, v22.origin.y = v14, v22.size.width = v16, v22.size.height = v18, !CGRectEqualToRect(v21, v22)))
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
  view = [(SBPIPContainerViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  return interfaceOrientation;
}

- (CGRect)_contentViewFrameInDisplayReferenceSpace
{
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 8);
  v5 = *(MEMORY[0x277CBF398] + 16);
  v6 = *(MEMORY[0x277CBF398] + 24);
  if ([(SBPIPContainerViewController *)self isViewLoaded])
  {
    view = [(SBPIPContainerViewController *)self view];
    window = [view window];

    if (window)
    {
      contentView = self->_contentView;
      [(UIView *)contentView bounds];
      [(UIView *)contentView convertRect:0 toView:?];
      [window _convertRectToSceneReferenceSpace:?];
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

- (CGRect)_frameInFixedCoordinateSpace:(CGRect)space transformedToInterfaceOrientation:(int64_t)orientation
{
  view = [(SBPIPContainerViewController *)self view];
  window = [view window];

  screen = [window screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];
  [fixedCoordinateSpace bounds];

  if (!orientation)
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

- (void)setContentScale:(double)scale
{
  if (scale < 0.0 || scale > 1.0)
  {
    [SBPIPContainerViewController setContentScale:scale];
  }

  interactionController = self->_interactionController;

  [(SBPIPInteractionController *)interactionController setPreferredNormalizedScale:scale];
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

- (void)setPrefersHiddenFromClonedDisplay:(BOOL)display
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_prefersHiddenFromClonedDisplay != display)
  {
    self->_prefersHiddenFromClonedDisplay = display;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observerHashTable allObjects];
    v5 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 containerViewControllerDidUpdatePrefersHiddenFromClonedDisplays:self];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (NSNumber)overrideResourcesUsageReductionTimeout
{
  if (objc_opt_respondsToSelector())
  {
    overrideResourcesUsageReductionTimeout = [(SBPIPContainerViewControllerAdapter *)self->_adapter overrideResourcesUsageReductionTimeout];
  }

  else
  {
    overrideResourcesUsageReductionTimeout = 0;
  }

  return overrideResourcesUsageReductionTimeout;
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