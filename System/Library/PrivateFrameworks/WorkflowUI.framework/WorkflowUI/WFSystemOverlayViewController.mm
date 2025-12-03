@interface WFSystemOverlayViewController
- (BOOL)shouldDisplaySash;
- (BOOL)shouldOwnHomeGesture;
- (BOOL)shouldShowDimmingLayer;
- (CGSize)bannerSize;
- (CGSize)platterContentSize;
- (NSString)description;
- (WFCompactPlatterView)outgoingPlatterViewAwaitingSizeTransition;
- (WFSystemOverlayViewController)init;
- (double)maximumExpectedHeightForPlatterPresentation:(id)presentation;
- (double)platterOffsetFromPresentationEdge;
- (double)sashViewHeight;
- (void)bannerGestureDidEndWithDismissal:(BOOL)dismissal;
- (void)beginObservingForPresentation;
- (void)beginObservingKeyboard;
- (void)dealloc;
- (void)dismissEmbeddedPlatterWithCompletion:(id)completion interruptible:(BOOL)interruptible;
- (void)handleTapGesture:(id)gesture;
- (void)keyboardDidChange:(id)change;
- (void)layoutDimmingLayer;
- (void)layoutEmbeddedPlatter;
- (void)loadView;
- (void)performBumpAnimation;
- (void)performLayoutUpdate;
- (void)platterPresentationDidInvalidateSize:(id)size;
- (void)presentationTransitionWillOccur:(id)occur;
- (void)resetLocalIdleTimer;
- (void)setAttributionTitle:(id)title icon:(id)icon previouslyHidden:(BOOL)hidden;
- (void)setContainerViewColorMatrixOpacity:(double)opacity;
- (void)setDismissalPhase:(unint64_t)phase;
- (void)setEmbeddedPlatter:(id)platter;
- (void)setPlatterCornerRadius:(double)radius;
- (void)setQueuedStatusPlatter:(id)platter;
- (void)setRootModalViewController:(id)controller;
- (void)stopObservingForPresentation;
- (void)stopObservingKeyboard;
- (void)transitionFromPlatter:(id)platter toPlatter:(id)toPlatter;
- (void)updateContainerViewFrameAnimated:(BOOL)animated;
- (void)updateDimmingLayerVisibility;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation WFSystemOverlayViewController

- (WFCompactPlatterView)outgoingPlatterViewAwaitingSizeTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_outgoingPlatterViewAwaitingSizeTransition);

  return WeakRetained;
}

- (BOOL)shouldOwnHomeGesture
{
  if ([(WFSystemOverlayViewController *)self keyboardIsVisible])
  {
    return 1;
  }

  embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];

  if (!embeddedPlatter)
  {
    return 1;
  }

  embeddedPlatter2 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  embeddedPlatter3 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  hasCustomHomeGestureBehavior = [embeddedPlatter3 hasCustomHomeGestureBehavior];

  return hasCustomHomeGestureBehavior;
}

- (void)presentationTransitionWillOccur:(id)occur
{
  occurCopy = occur;
  object = [occurCopy object];
  NSClassFromString(&cfstr_Uidatepickerco.isa);
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  object2 = [occurCopy object];
  NSClassFromString(&cfstr_Uicontextmenua.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    name = [occurCopy name];
    v8 = [name isEqualToString:*MEMORY[0x277D76E38]];

    if (v8)
    {
      rootModalViewController = [(WFSystemOverlayViewController *)self rootModalViewController];

      if (!rootModalViewController)
      {
        view = [(WFSystemOverlayViewController *)self view];
        _screen = [view _screen];
        [_screen bounds];
        [(WFSystemOverlayViewController *)self setPreferredContentSize:v12, v13];

        object = [occurCopy object];
        [(WFSystemOverlayViewController *)self setRootModalViewController:object];
LABEL_2:
      }
    }

    else
    {
      name2 = [occurCopy name];
      v15 = [name2 isEqualToString:*MEMORY[0x277D76E30]];

      if (v15)
      {
        object3 = [occurCopy object];
        rootModalViewController2 = [(WFSystemOverlayViewController *)self rootModalViewController];
        v18 = [object3 isEqual:rootModalViewController2];

        if (v18)
        {
          [(WFSystemOverlayViewController *)self setRootModalViewController:0];
          [(WFSystemOverlayViewController *)self bannerSize];
          [(WFSystemOverlayViewController *)self setPreferredContentSize:?];
          object = [(WFSystemOverlayViewController *)self presentableHomeGestureContext];
          [object setWantsHomeGesture:0];
          goto LABEL_2;
        }
      }
    }
  }
}

- (void)stopObservingForPresentation
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)beginObservingForPresentation
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_presentationTransitionWillOccur_ name:*MEMORY[0x277D76E38] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_presentationTransitionWillOccur_ name:*MEMORY[0x277D76E30] object:0];
}

- (BOOL)shouldDisplaySash
{
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  if ([currentDevice hasSystemAperture])
  {
    v4 = +[WFBannerPrototypeSettings sharedSettings];
    simulateStatusBannerDevice = [v4 simulateStatusBannerDevice];

    if (!simulateStatusBannerDevice)
    {
      isKindOfClass = 0;
      return isKindOfClass & 1;
    }
  }

  else
  {
  }

  embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    embeddedPlatter2 = [(WFSystemOverlayViewController *)self embeddedPlatter];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (double)sashViewHeight
{
  embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];
  if (![embeddedPlatter shouldHideSashView])
  {
    goto LABEL_4;
  }

  embeddedPlatter2 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  platterView = [embeddedPlatter2 platterView];
  primaryText = [platterView primaryText];
  if ([primaryText length])
  {

LABEL_4:
    goto LABEL_5;
  }

  embeddedPlatter3 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  platterView2 = [embeddedPlatter3 platterView];
  secondaryText = [platterView2 secondaryText];
  v12 = [secondaryText length];

  if (!v12)
  {
    return 0.0;
  }

LABEL_5:
  shouldDisplaySash = [(WFSystemOverlayViewController *)self shouldDisplaySash];
  result = 47.0;
  if (!shouldDisplaySash)
  {
    return 15.0;
  }

  return result;
}

- (CGSize)bannerSize
{
  if ([(WFSystemOverlayViewController *)self contentIsFullScreen])
  {
    view = [(WFSystemOverlayViewController *)self view];
    _screen = [view _screen];
    [_screen bounds];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [(WFSystemOverlayViewController *)self platterContentSize];
    v6 = v9;
    v8 = 1.0;
  }

  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)platterOffsetFromPresentationEdge
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _peripheryInsets];
  v4 = v3 + 14.0;

  return v4;
}

- (CGSize)platterContentSize
{
  view = [(WFSystemOverlayViewController *)self view];
  _window = [view _window];
  view2 = [(WFSystemOverlayViewController *)self view];
  _screen = [view2 _screen];
  [_screen bounds];
  v8 = v7;
  v10 = v9;
  embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];
  [WFCompactPlatterPresentationController presentedViewFrameInContainerView:_window containerViewSize:1 withSizeCalculation:embeddedPlatter ofPresentedPlatter:v8, v10];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (double)maximumExpectedHeightForPlatterPresentation:(id)presentation
{
  view = [(WFSystemOverlayViewController *)self view];
  view2 = [(WFSystemOverlayViewController *)self view];
  [view2 bounds];
  v7 = v6;
  v9 = v8;
  embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];
  [WFCompactPlatterPresentationController presentedViewFrameInContainerView:view containerViewSize:0 withSizeCalculation:embeddedPlatter ofPresentedPlatter:v7, v9];
  v12 = v11;

  return v12;
}

- (void)platterPresentationDidInvalidateSize:(id)size
{
  [(WFSystemOverlayViewController *)self updateContainerViewFrameAnimated:1];
  [(WFSystemOverlayViewController *)self bannerSize];

  [(WFSystemOverlayViewController *)self setPreferredContentSize:?];
}

- (void)keyboardDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76BD8]];

  if (!v6 || [v6 BOOLValue])
  {
    embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];

    if (embeddedPlatter)
    {
      name = [changeCopy name];
      -[WFSystemOverlayViewController setKeyboardIsVisible:](self, "setKeyboardIsVisible:", [name isEqualToString:*MEMORY[0x277D76C60]]);

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__WFSystemOverlayViewController_keyboardDidChange___block_invoke;
      block[3] = &unk_279EE8A78;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __51__WFSystemOverlayViewController_keyboardDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateHomeGestureOwnership];
  [*(a1 + 32) updateDimmingLayerVisibility];
  v2 = *(a1 + 32);
  [v2 bannerSize];

  return [v2 setPreferredContentSize:?];
}

- (void)stopObservingKeyboard
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C50] object:0];
}

- (void)beginObservingKeyboard
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardDidChange_ name:*MEMORY[0x277D76C60] object:0];
  [defaultCenter addObserver:self selector:sel_keyboardDidChange_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)bannerGestureDidEndWithDismissal:(BOOL)dismissal
{
  if (dismissal)
  {
    [(WFSystemOverlayViewController *)self setDismissalPhase:2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__WFSystemOverlayViewController_bannerGestureDidEndWithDismissal___block_invoke;
    v7[3] = &unk_279EE8A78;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:2 delay:v7 options:0 animations:0.3 completion:0.0];
    dismissalHandler = [(WFSystemOverlayViewController *)self dismissalHandler];
    (dismissalHandler)[2](dismissalHandler, @"Banner was swiped away.");

    v5 = dispatch_time(0, 100000000);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__WFSystemOverlayViewController_bannerGestureDidEndWithDismissal___block_invoke_2;
    v6[3] = &unk_279EE8A78;
    v6[4] = self;
    dispatch_after(v5, MEMORY[0x277D85CD0], v6);
  }

  else
  {

    [(WFSystemOverlayViewController *)self setFreezePlatterLayout:?];
  }
}

void __66__WFSystemOverlayViewController_bannerGestureDidEndWithDismissal___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) materialView];
  v1 = [v2 layer];
  [v1 setShadowOpacity:0.0];
}

void __66__WFSystemOverlayViewController_bannerGestureDidEndWithDismissal___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 endEditing:1];
}

- (void)handleTapGesture:(id)gesture
{
  if ([(WFSystemOverlayViewController *)self keyboardIsVisible])
  {
    view = [(WFSystemOverlayViewController *)self view];
    [view endEditing:1];
  }

  else
  {
    dismissalHandler = [(WFSystemOverlayViewController *)self dismissalHandler];
    (dismissalHandler)[2](dismissalHandler, @"Disambiguation dimming layer was tapped.");

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__WFSystemOverlayViewController_handleTapGesture___block_invoke;
    v6[3] = &unk_279EE8A78;
    v6[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v6 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  }
}

uint64_t __50__WFSystemOverlayViewController_handleTapGesture___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__WFSystemOverlayViewController_handleTapGesture___block_invoke_2;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __50__WFSystemOverlayViewController_handleTapGesture___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setAlpha:0.0];
}

- (void)layoutDimmingLayer
{
  dimmingView = [(WFSystemOverlayViewController *)self dimmingView];

  if (dimmingView)
  {
    [(WFSystemOverlayViewController *)self bannerSize];
    v5 = v4;
    [(WFSystemOverlayViewController *)self bannerContentOutsets];
    v7 = v6;
    v9 = -v8;
    v11 = v10 + v5 + v8;
    view = [(WFSystemOverlayViewController *)self view];
    _screen = [view _screen];
    [_screen bounds];
    v15 = v14;
    [(WFSystemOverlayViewController *)self platterOffsetFromPresentationEdge];
    v17 = v16 + v15;

    dimmingView2 = [(WFSystemOverlayViewController *)self dimmingView];
    [dimmingView2 setFrame:{v9, -100.0 - v7, v11, v17 + 100.0}];
  }
}

- (void)updateDimmingLayerVisibility
{
  shouldShowDimmingLayer = [(WFSystemOverlayViewController *)self shouldShowDimmingLayer];
  if (shouldShowDimmingLayer)
  {
    dimmingView = [(WFSystemOverlayViewController *)self dimmingView];

    if (!dimmingView)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__WFSystemOverlayViewController_updateDimmingLayerVisibility__block_invoke;
      v11[3] = &unk_279EE8A78;
      v11[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v11];
    }
  }

  dimmingView2 = [(WFSystemOverlayViewController *)self dimmingView];

  if (dimmingView2)
  {
    if (shouldShowDimmingLayer)
    {
      dimmingView3 = [(WFSystemOverlayViewController *)self dimmingView];
    }

    else
    {
      dimmingView3 = 0;
    }

    bannerGesture = [(WFSystemOverlayViewController *)self bannerGesture];
    [bannerGesture setDimmingView:dimmingView3];

    if (shouldShowDimmingLayer)
    {
    }

    dimmingView4 = [(WFSystemOverlayViewController *)self dimmingView];
    [dimmingView4 setCaptureTouches:shouldShowDimmingLayer];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__WFSystemOverlayViewController_updateDimmingLayerVisibility__block_invoke_2;
    v9[3] = &unk_279EE8AA0;
    v9[4] = self;
    v10 = shouldShowDimmingLayer;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v9 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.37 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  }
}

void __61__WFSystemOverlayViewController_updateDimmingLayerVisibility__block_invoke(uint64_t a1)
{
  v9 = objc_opt_new();
  [v9 setAlpha:0.0];
  v2 = [*(a1 + 32) view];
  [v2 insertSubview:v9 atIndex:0];

  [*(a1 + 32) setDimmingView:v9];
  [*(a1 + 32) layoutDimmingLayer];
  v3 = +[WFBannerPrototypeSettings sharedSettings];
  v4 = [v3 bannerFramesEnabled];

  if (v4)
  {
    v5 = [v9 layer];
    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    [v5 setBorderColor:{objc_msgSend(v6, "CGColor")}];

    v7 = [v9 layer];
    [v7 setBorderWidth:4.0];
  }

  v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:*(a1 + 32) action:sel_handleTapGesture_];
  [v9 addGestureRecognizer:v8];
}

uint64_t __61__WFSystemOverlayViewController_updateDimmingLayerVisibility__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__WFSystemOverlayViewController_updateDimmingLayerVisibility__block_invoke_3;
  v4[3] = &unk_279EE8AA0;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v6.minimum, *&v6.maximum, *&v6.preferred}];
}

void __61__WFSystemOverlayViewController_updateDimmingLayerVisibility__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) dimmingView];
  [v2 setAlpha:v1];
}

- (BOOL)shouldShowDimmingLayer
{
  if ([(WFSystemOverlayViewController *)self dismissalPhase])
  {
    return 0;
  }

  embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else if ([(WFSystemOverlayViewController *)self keyboardIsVisible])
  {
    traitCollection = [(WFSystemOverlayViewController *)self traitCollection];
    v3 = [traitCollection userInterfaceIdiom] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dismissEmbeddedPlatterWithCompletion:(id)completion interruptible:(BOOL)interruptible
{
  interruptibleCopy = interruptible;
  completionCopy = completion;
  v7 = +[WFBannerPrototypeSettings sharedSettings];
  transitionSettings = [v7 transitionSettings];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke;
  aBlock[3] = &unk_279EE8C58;
  aBlock[4] = self;
  v9 = transitionSettings;
  v36 = v9;
  v10 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_6;
  v32[3] = &unk_279EE8CA8;
  v32[4] = self;
  v11 = v9;
  v33 = v11;
  v12 = v7;
  v34 = v12;
  v13 = _Block_copy(v32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_16;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (interruptibleCopy)
  {
    [(WFSystemOverlayViewController *)self setDismissalPhase:1];
    v10[2](v10);
    [v11 hintDuration];
    v15 = dispatch_time(0, (v14 / 1000.0 * 1000000000.0));
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_17;
    v29[3] = &unk_279EE8B18;
    v29[4] = self;
    v30 = v13;
    v16 = MEMORY[0x277D85CD0];
    dispatch_after(v15, MEMORY[0x277D85CD0], v29);
  }

  else
  {
    v13[2](v13);
  }

  v17 = dispatch_time(0, 200000000);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_18;
  v28[3] = &unk_279EE8A78;
  v28[4] = self;
  v18 = MEMORY[0x277D85CD0];
  dispatch_after(v17, MEMORY[0x277D85CD0], v28);

  objc_initWeak(&location, self);
  v19 = objc_alloc(MEMORY[0x277D79F48]);
  if (interruptibleCopy)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.3;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_19;
  v24[3] = &unk_279EE84F0;
  objc_copyWeak(&v26, &location);
  v21 = completionCopy;
  v25 = v21;
  v22 = [v19 initWithInterval:MEMORY[0x277D85CD0] queue:v24 handler:v20];
  [(WFSystemOverlayViewController *)self setDismissalCompletionTimer:v22];

  dismissalCompletionTimer = [(WFSystemOverlayViewController *)self dismissalCompletionTimer];
  [dismissalCompletionTimer start];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_2;
  v2[3] = &unk_279EE8C58;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_6(id *a1)
{
  if ([a1[4] dismissalPhase] != 2)
  {
    [a1[4] setDismissalPhase:2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_7;
    block[3] = &unk_279EE8CA8;
    v2 = a1[5];
    v3 = a1[4];
    v5 = v2;
    v6 = v3;
    v7 = a1[6];
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_16(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 endEditing:1];

  v4 = [*(a1 + 32) embeddedPlatter];
  v3 = [v4 scrollView];
  [v3 setAutoresizingMask:0];
}

uint64_t __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_17(uint64_t a1)
{
  result = [*(a1 + 32) dismissalPhase];
  if (result == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDismissalPhase:0];
  (*(*(a1 + 32) + 16))();
  [WeakRetained setDismissalCompletionTimer:0];
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_7(id *a1)
{
  if ([a1[4] disableTransition])
  {
    v2 = a1[5];

    [v2 setContainerViewColorMatrixOpacity:0.0];
  }

  else
  {
    v3 = MEMORY[0x277D75D18];
    [a1[4] poofOutScaleResponse];
    v5 = v4;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_8;
    v40[3] = &unk_279EE8CA8;
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v41 = v6;
    v42 = v7;
    v43 = v8;
    [v3 _animateUsingSpringWithDampingRatio:0 response:v40 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v5 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
    v9 = [a1[5] containerView];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    *location = *MEMORY[0x277CBF2C0];
    v38 = v10;
    v39 = *(MEMORY[0x277CBF2C0] + 32);
    [v9 setTransform:location];

    v11 = +[WFBannerPrototypeSettings sharedSettings];
    v12 = [v11 blurFilterEnabled];

    if (v12)
    {
      v13 = [a1[5] containerView];
      v14 = [v13 layer];
      [v14 setValue:&unk_2883C22D0 forKeyPath:@"filters.gaussianBlur.inputRadius"];

      [a1[4] poofOutBlurDelay];
      v16 = dispatch_time(0, (v15 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_10;
      block[3] = &unk_279EE8C58;
      v17 = a1[4];
      v18 = a1[5];
      v35 = v17;
      v36 = v18;
      dispatch_after(v16, MEMORY[0x277D85CD0], block);
    }

    v19 = [a1[6] gestureSettings];
    v20 = [v19 alphaOutEnabled];

    if (v20)
    {
      objc_initWeak(location, a1[5]);
      v21 = objc_alloc(MEMORY[0x277D79F48]);
      [a1[4] poofOutAlphaDelay];
      v23 = v22;
      v24 = MEMORY[0x277D85CD0];
      v25 = MEMORY[0x277D85CD0];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_13;
      v31 = &unk_279EE8630;
      objc_copyWeak(&v33, location);
      v32 = a1[4];
      v26 = [v21 initWithInterval:v24 queue:&v28 handler:v23];
      [a1[5] setDismissalAlphaOutAnimationTimer:{v26, v28, v29, v30, v31}];

      v27 = [a1[5] dismissalAlphaOutAnimationTimer];
      [v27 start];

      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }
  }
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v16 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v16.minimum;
  maximum = v16.maximum;
  preferred = v16.preferred;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_9;
  v12[3] = &unk_279EE8CA8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v15 = v8;
  *&v9 = minimum;
  *&v10 = maximum;
  *&v11 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v12 animations:{v9, v10, v11}];
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  [*(a1 + 32) poofOutBlurResponse];
  v4 = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_11;
  v7[3] = &unk_279EE8C58;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  [v2 _animateUsingSpringWithDampingRatio:0 response:v7 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v4 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = MEMORY[0x277D75D18];
  [*(a1 + 32) poofOutAlphaResponse];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_14;
  v5[3] = &unk_279EE8A78;
  v5[4] = WeakRetained;
  [v3 _animateUsingSpringWithDampingRatio:0 response:v5 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v4 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  [WeakRetained setDismissalAlphaOutAnimationTimer:0];
}

uint64_t __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_14(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_15;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_11(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v12.minimum;
  maximum = v12.maximum;
  preferred = v12.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_12;
  v10[3] = &unk_279EE8C58;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v10 animations:{v7, v8, v9}];
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_12(uint64_t a1)
{
  v5 = [*(a1 + 32) containerView];
  v2 = [v5 layer];
  v3 = MEMORY[0x277CCABB0];
  [*(a1 + 40) poofOutBlurRadius];
  v4 = [v3 numberWithDouble:?];
  [v2 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_9(id *a1)
{
  [a1[4] poofOutScale];
  v3 = v2;
  v4 = [a1[6] gestureSettings];
  [v4 poof_scale_multiplier_y];
  CGAffineTransformMakeScale(&v8, v3, v3 * v5);
  v6 = [a1[5] containerView];
  v7 = v8;
  [v6 setTransform:&v7];
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_2(uint64_t a1)
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_3;
    v15[3] = &unk_279EE8A78;
    v15[4] = *(a1 + 32);
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v15 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:1.0 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
    [*(a1 + 40) hintAnimationTargetScale];
    v3 = v2;
    [*(a1 + 40) hintAnimationTargetScale];
    CGAffineTransformMakeScale(&v14, v3, v4);
    v5 = MEMORY[0x277D75D18];
    [*(a1 + 40) hintAnimationResponse];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v11 = *&v14.a;
    v12 = *&v14.c;
    v10[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_4;
    v10[3] = &unk_279EE8518;
    v10[4] = *(a1 + 32);
    v13 = *&v14.tx;
    [v5 _animateUsingSpringWithDampingRatio:0 response:v10 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v6 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
    v7 = [*(a1 + 32) containerView];
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    v9[0] = *MEMORY[0x277CBF2C0];
    v9[1] = v8;
    v9[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v7 setTransform:v9];
  }
}

uint64_t __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v9 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_5;
  v5[3] = &unk_279EE8518;
  v5[4] = *(a1 + 32);
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 72);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v5 animations:{*&v9.minimum, *&v9.maximum, *&v9.preferred}];
}

void __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 setTransform:&v2];
}

- (void)setDismissalPhase:(unint64_t)phase
{
  self->_dismissalPhase = phase;
  if (phase)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__WFSystemOverlayViewController_setDismissalPhase___block_invoke;
    block[3] = &unk_279EE8A78;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    dismissalCompletionTimer = [(WFSystemOverlayViewController *)self dismissalCompletionTimer];
    [dismissalCompletionTimer cancel];

    dismissalAlphaOutAnimationTimer = [(WFSystemOverlayViewController *)self dismissalAlphaOutAnimationTimer];
    [dismissalAlphaOutAnimationTimer cancel];

    [(WFSystemOverlayViewController *)self setDismissalCompletionTimer:0];

    [(WFSystemOverlayViewController *)self setDismissalAlphaOutAnimationTimer:0];
  }
}

void __51__WFSystemOverlayViewController_setDismissalPhase___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setCaptureTouches:0];
}

- (void)setQueuedStatusPlatter:(id)platter
{
  platterCopy = platter;
  objc_storeStrong(&self->_queuedStatusPlatter, platter);
  queuedStatusPlatterTimer = [(WFSystemOverlayViewController *)self queuedStatusPlatterTimer];
  [queuedStatusPlatterTimer cancel];

  [(WFSystemOverlayViewController *)self setQueuedStatusPlatterTimer:0];
  if (platterCopy)
  {
    embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];
    if (embeddedPlatter)
    {
      objc_initWeak(&location, self);
      v8 = objc_alloc(MEMORY[0x277D79F48]);
      v9 = MEMORY[0x277D85CD0];
      v10 = MEMORY[0x277D85CD0];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__WFSystemOverlayViewController_setQueuedStatusPlatter___block_invoke;
      v13[3] = &unk_279EE8630;
      objc_copyWeak(&v15, &location);
      v14 = platterCopy;
      v11 = [v8 initWithInterval:v9 queue:v13 handler:0.2];
      [(WFSystemOverlayViewController *)self setQueuedStatusPlatterTimer:v11];

      queuedStatusPlatterTimer2 = [(WFSystemOverlayViewController *)self queuedStatusPlatterTimer];
      [queuedStatusPlatterTimer2 start];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [(WFSystemOverlayViewController *)self setEmbeddedPlatter:platterCopy];
    }
  }
}

void __56__WFSystemOverlayViewController_setQueuedStatusPlatter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setEmbeddedPlatter:*(a1 + 32)];
}

- (void)setAttributionTitle:(id)title icon:(id)icon previouslyHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  titleCopy = title;
  iconCopy = icon;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke;
  aBlock[3] = &unk_279EE8868;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  if ([(WFSystemOverlayViewController *)self shouldDisplaySash])
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke_3;
    v36[3] = &unk_279EE8A78;
    v36[4] = self;
    v11 = _Block_copy(v36);
    sashView = [(WFSystemOverlayViewController *)self sashView];

    if (sashView)
    {
      sashView2 = [(WFSystemOverlayViewController *)self sashView];
      title = [sashView2 title];
      v15 = [title isEqualToString:titleCopy];

      if ((v15 & 1) == 0)
      {
        v16 = MEMORY[0x277D75D18];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke_4;
        v34[3] = &unk_279EE8A50;
        v35 = v10;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke_5;
        v28[3] = &unk_279EE8608;
        v28[4] = self;
        v29 = iconCopy;
        v30 = titleCopy;
        v31 = v11;
        v33 = 0x3FC0000000000000;
        v32 = v35;
        [v16 animateWithDuration:0x10000 delay:v34 options:v28 animations:0.125 completion:0.0];
      }

      if (!hiddenCopy)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v18 = [WFCompactPlatterSashView alloc];
      v19 = [(WFCompactPlatterSashView *)v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [(WFSystemOverlayViewController *)self setSashView:v19];

      sashView3 = [(WFSystemOverlayViewController *)self sashView];
      [sashView3 setAutoresizesSubviews:1];

      sashView4 = [(WFSystemOverlayViewController *)self sashView];
      [sashView4 setIcon:iconCopy];

      sashView5 = [(WFSystemOverlayViewController *)self sashView];
      [sashView5 setTitle:titleCopy];

      materialView = [(WFSystemOverlayViewController *)self materialView];
      sashView6 = [(WFSystemOverlayViewController *)self sashView];
      [materialView addSubview:sashView6];

      v11[2](v11);
      if (!hiddenCopy)
      {
LABEL_11:

        goto LABEL_12;
      }

      (*(v10 + 2))(v10, 0);
    }

    v25 = MEMORY[0x277D75D18];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke_7;
    v26[3] = &unk_279EE8A50;
    v27 = v10;
    [v25 animateWithDuration:0x20000 delay:v26 options:0 animations:0.125 completion:0.125];

    goto LABEL_11;
  }

  v17 = MEMORY[0x277D75D18];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke_2;
  v37[3] = &unk_279EE8A50;
  v38 = v10;
  [v17 animateWithDuration:0x10000 delay:v37 options:0 animations:0.125 completion:0.0];

LABEL_12:
}

void __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [*(a1 + 32) sashView];
  v5 = [v4 iconView];
  [v5 setAlpha:v3];

  v7 = [*(a1 + 32) sashView];
  v6 = [v7 label];
  [v6 setAlpha:v3];
}

void __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  if (!CGRectIsEmpty(v21))
  {
    [*(*(a1 + 32) + 1064) sizeThatFits:{v8, v10}];
    BSRectWithSize();
    v11 = [*(a1 + 32) view];
    v12 = [v11 _window];
    v13 = [v12 screen];
    [v13 scale];
    UIRectIntegralWithScale();
    v4 = v14;
    v6 = v15;
    v8 = v16;
    v10 = v17;
  }

  v18 = [*(a1 + 32) sashView];
  [v18 setFrame:{v4, v6, v8, v10}];

  v19 = [*(a1 + 32) sashView];
  [v19 setNeedsLayout];
}

void __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) sashView];
  [v2 setIcon:*(a1 + 40)];

  v3 = [*(a1 + 32) sashView];
  [v3 setTitle:*(a1 + 48)];

  (*(*(a1 + 56) + 16))();
  v4 = MEMORY[0x277D75D18];
  v5 = *(a1 + 72);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__WFSystemOverlayViewController_setAttributionTitle_icon_previouslyHidden___block_invoke_6;
  v6[3] = &unk_279EE8A50;
  v7 = *(a1 + 64);
  [v4 animateWithDuration:0x20000 delay:v6 options:0 animations:v5 completion:0.0];
}

- (void)setPlatterCornerRadius:(double)radius
{
  [(WFSystemOverlayViewController *)self platterCornerRadius];
  if (v5 != radius)
  {
    [(WFSystemOverlayViewController *)self platterCornerRadius];
    v7 = v6;
    self->_platterCornerRadius = radius;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__WFSystemOverlayViewController_setPlatterCornerRadius___block_invoke;
    aBlock[3] = &unk_279EE89D8;
    aBlock[4] = self;
    *&aBlock[5] = radius;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (v7 == 0.0)
    {
      v8[2](v8);
    }

    else
    {
      v10 = MEMORY[0x277D75D18];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __56__WFSystemOverlayViewController_setPlatterCornerRadius___block_invoke_2;
      v11[3] = &unk_279EE8A50;
      v12 = v8;
      [v10 animateWithDuration:v11 animations:0.2];
    }
  }
}

void __56__WFSystemOverlayViewController_setPlatterCornerRadius___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) materialView];
  [v2 _setContinuousCornerRadius:v1];
}

- (void)performLayoutUpdate
{
  [(WFSystemOverlayViewController *)self bannerSize];
  [(WFSystemOverlayViewController *)self setPreferredContentSize:?];

  [(WFSystemOverlayViewController *)self updateContainerViewFrameAnimated:0];
}

- (void)layoutEmbeddedPlatter
{
  embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];

  if (embeddedPlatter)
  {
    [(WFSystemOverlayViewController *)self platterContentSize];
    v5 = v4;
    v7 = v6;
    [(WFSystemOverlayViewController *)self sashViewHeight];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__WFSystemOverlayViewController_layoutEmbeddedPlatter__block_invoke;
    v9[3] = &unk_279EE85E0;
    v9[4] = self;
    v9[5] = v8;
    v9[6] = v5;
    v9[7] = v7;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v9];
  }
}

void __54__WFSystemOverlayViewController_layoutEmbeddedPlatter__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) embeddedPlatter];
  v2 = [v3 view];
  [v2 setFrame:{0.0, *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
}

- (void)setContainerViewColorMatrixOpacity:(double)opacity
{
  opacityCopy = opacity;
  containerView = [(WFSystemOverlayViewController *)self containerView];
  layer = [containerView layer];
  v7 = 1065353216;
  v9 = 0;
  v8 = 0;
  v10 = 0x3F80000000000000;
  v12 = 0;
  v11 = 0;
  v13 = 0x3F80000000000000;
  v15 = 0;
  v14 = 0;
  v16 = 0;
  v17 = opacityCopy;
  v18 = 0;
  v6 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v7];
  [layer setValue:v6 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];
}

- (void)updateContainerViewFrameAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(WFSystemOverlayViewController *)self shouldFreezePlatterLayout])
  {
    return;
  }

  [(WFSystemOverlayViewController *)self layoutDimmingLayer];
  [(WFSystemOverlayViewController *)self platterContentSize];
  v6 = v5;
  v8 = v7;
  [(WFSystemOverlayViewController *)self sashViewHeight];
  v10 = v9;
  v11 = 0.0;
  if ([(WFSystemOverlayViewController *)self contentIsFullScreen])
  {
    view = [(WFSystemOverlayViewController *)self view];
    _screen = [view _screen];
    [_screen bounds];
    v11 = (v14 - v6) * 0.5;
  }

  v15 = 5.0;
  if ([(WFSystemOverlayViewController *)self contentIsFullScreen])
  {
    [(WFSystemOverlayViewController *)self platterOffsetFromPresentationEdge];
    v15 = v16;
  }

  v17 = v8 + v10;
  if (animatedCopy)
  {
    containerView = [(WFSystemOverlayViewController *)self containerView];
    [containerView bounds];
    v19 = CGRectEqualToRect(v160, *MEMORY[0x277CBF3A0]);

    if (!v19)
    {
      v158[0] = MEMORY[0x277D85DD0];
      v158[1] = 3221225472;
      v158[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke;
      v158[3] = &unk_279EE89B0;
      v158[4] = self;
      *&v158[5] = v11;
      *&v158[6] = v15;
      *&v158[7] = v6;
      *&v158[8] = v8 + v10;
      [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v158 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
      outgoingPlatterViewAwaitingSizeTransition = [(WFSystemOverlayViewController *)self outgoingPlatterViewAwaitingSizeTransition];
      embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];
      platterView = [embeddedPlatter platterView];

      actionGroupView = [outgoingPlatterViewAwaitingSizeTransition actionGroupView];
      actionGroupView2 = [platterView actionGroupView];
      [outgoingPlatterViewAwaitingSizeTransition setSuppressContentViewLayout:1];
      if (actionGroupView == actionGroupView2)
      {
        v34 = 0;
      }

      else
      {
        actions = [actionGroupView actions];
        v26 = [actions count];
        actions2 = [actionGroupView2 actions];
        if (v26 == [actions2 count])
        {
          [actionGroupView bounds];
          v29 = v28;
          v31 = v30;
          [actionGroupView2 bounds];
          v34 = v31 == v33 && v29 == v32;
        }

        else
        {
          v34 = 0;
        }
      }

      clippingContentView = [outgoingPlatterViewAwaitingSizeTransition clippingContentView];
      [clippingContentView frame];
      v37 = v36;

      clippingContentView2 = [platterView clippingContentView];
      [clippingContentView2 frame];
      v40 = v39;

      if ([MEMORY[0x277CBEBD0] universalPreviewsEnabled] && v37 > 0.0 && v40 > 0.0)
      {
        if (!v34)
        {
          actionGroupView3 = [outgoingPlatterViewAwaitingSizeTransition actionGroupView];
          if (actionGroupView3)
          {

            goto LABEL_45;
          }

          actionGroupView4 = [platterView actionGroupView];

          if (actionGroupView4)
          {
LABEL_45:
            activeTransitioningActionGroupViewPortal = [(WFSystemOverlayViewController *)self activeTransitioningActionGroupViewPortal];

            if (activeTransitioningActionGroupViewPortal)
            {
              v130[0] = MEMORY[0x277D85DD0];
              v130[1] = 3221225472;
              v130[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_13;
              v130[3] = &unk_279EE89B0;
              v130[4] = self;
              *&v130[5] = v11;
              *&v130[6] = v15;
              *&v130[7] = v6;
              *&v130[8] = v17;
              [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v130 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
            }

            goto LABEL_47;
          }
        }

        [(WFSystemOverlayViewController *)self setOutgoingPlatterViewAwaitingSizeTransition:0];
        if (v40 > v37)
        {
          backdropView = [outgoingPlatterViewAwaitingSizeTransition backdropView];
          [backdropView frame];
          v124 = v42;
          v126 = v8 + v10;
          v44 = v43;
          v122 = v45;
          v47 = v46;

          backdropView2 = [outgoingPlatterViewAwaitingSizeTransition backdropView];
          v49 = v44;
          v17 = v126;
          [backdropView2 setFrame:{v49, v124, v122, v40 - v37 + v47}];
        }

        [platterView frame];
        v51 = v50;
        [outgoingPlatterViewAwaitingSizeTransition frame];
        v53 = v51 - v52;
        memset(&v157, 0, sizeof(v157));
        CGAffineTransformMakeScale(&t1, 1.0, (v37 + v53) / v37);
        CGAffineTransformMakeTranslation(&t2, 0.0, v53 * 0.5);
        CGAffineTransformConcat(&v157, &t1, &t2);
        memset(&t1, 0, sizeof(t1));
        CGAffineTransformMakeScale(&t2, 1.0, (v40 - v53) / v40);
        CGAffineTransformMakeTranslation(&v154, 0.0, v53 * -0.5);
        CGAffineTransformConcat(&t1, &t2, &v154);
        clippingContentView3 = [platterView clippingContentView];
        t2 = t1;
        [clippingContentView3 setTransform:&t2];

        v55 = MEMORY[0x277D75D18];
        v150[0] = MEMORY[0x277D85DD0];
        v150[1] = 3221225472;
        v150[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_3;
        v150[3] = &unk_279EE8568;
        v151 = outgoingPlatterViewAwaitingSizeTransition;
        v153 = v157;
        v152 = platterView;
        [v55 _animateUsingSpringWithDampingRatio:0 response:v150 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
      }

      if (v34)
      {
        activeTransitioningActionGroupViewPortal2 = [(WFSystemOverlayViewController *)self activeTransitioningActionGroupViewPortal];

        selfCopy = self;
        if (activeTransitioningActionGroupViewPortal2)
        {
          activeTransitioningActionGroupViewPortal3 = [(WFSystemOverlayViewController *)self activeTransitioningActionGroupViewPortal];
        }

        else
        {
          v127 = v17;
          [actionGroupView bounds];
          v60 = v59;
          v62 = v61;
          v64 = v63;
          v66 = v65;
          containerView2 = [(WFSystemOverlayViewController *)self containerView];
          [actionGroupView convertRect:containerView2 toView:{v60, v62, v64, v66}];
          v123 = v69;
          v125 = v68;
          v71 = v70;
          v73 = v72;

          [actionGroupView2 frame];
          v75 = v74;
          v77 = v76;
          [actionGroupView bounds];
          [actionGroupView2 setFrame:{v75, v77}];
          activeTransitioningActionGroupViewPortal3 = [objc_alloc(MEMORY[0x277D76180]) initWithFrame:{v125, v123, v71, v73}];
          [activeTransitioningActionGroupViewPortal3 setHidesSourceView:1];
          [activeTransitioningActionGroupViewPortal3 setAllowsHitTesting:1];
          [activeTransitioningActionGroupViewPortal3 setForwardsClientHitTestingToSourceView:1];
          containerView3 = [(WFSystemOverlayViewController *)self containerView];
          [containerView3 addSubview:activeTransitioningActionGroupViewPortal3];

          [(WFSystemOverlayViewController *)self setActiveTransitioningActionGroupViewPortal:activeTransitioningActionGroupViewPortal3];
          v79 = +[WFBannerPrototypeSettings sharedSettings];
          debugMorphTransitions = [v79 debugMorphTransitions];

          if (debugMorphTransitions)
          {
            systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
            cGColor = [systemGreenColor CGColor];
            layer = [activeTransitioningActionGroupViewPortal3 layer];
            [layer setBorderColor:cGColor];

            layer2 = [activeTransitioningActionGroupViewPortal3 layer];
            [layer2 setBorderWidth:1.0];

            [activeTransitioningActionGroupViewPortal3 setHidesSourceView:0];
          }

          v17 = v127;
        }

        v120 = activeTransitioningActionGroupViewPortal3;
        [activeTransitioningActionGroupViewPortal3 setSourceView:{actionGroupView2, platterView, outgoingPlatterViewAwaitingSizeTransition}];
        [actionGroupView removeFromSuperview];
        actions3 = [actionGroupView2 actions];
        v86 = [actions3 count];

        if (v86)
        {
          v87 = 0;
          v129 = actionGroupView;
          do
          {
            arrangedSubviews = [actionGroupView arrangedSubviews];
            v89 = [arrangedSubviews objectAtIndexedSubscript:v87];

            v90 = actionGroupView2;
            arrangedSubviews2 = [actionGroupView2 arrangedSubviews];
            v92 = [arrangedSubviews2 objectAtIndexedSubscript:v87];

            backgroundColor = [v89 backgroundColor];
            backgroundColor2 = [v92 backgroundColor];
            if (([backgroundColor2 isEqual:backgroundColor] & 1) == 0)
            {
              [v92 setBackgroundColor:backgroundColor];
              v95 = MEMORY[0x277D75D18];
              v147[0] = MEMORY[0x277D85DD0];
              v147[1] = 3221225472;
              v147[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_5;
              v147[3] = &unk_279EE8C58;
              v148 = v92;
              v149 = backgroundColor2;
              [v95 animateWithDuration:0x10000 delay:v147 options:0 animations:0.2 completion:0.0];
            }

            titleLabel = [v89 titleLabel];
            text = [titleLabel text];

            titleLabel2 = [v92 titleLabel];
            text2 = [titleLabel2 text];

            if (([text2 isEqualToString:text] & 1) == 0)
            {
              [v92 setTitle:text forState:0];
              v100 = MEMORY[0x277D75D18];
              v145[0] = MEMORY[0x277D85DD0];
              v145[1] = 3221225472;
              v145[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_6;
              v145[3] = &unk_279EE8A78;
              v146 = v92;
              v142[0] = MEMORY[0x277D85DD0];
              v142[1] = 3221225472;
              v142[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_7;
              v142[3] = &unk_279EE8590;
              v143 = v146;
              v144 = text2;
              [v100 animateWithDuration:0x10000 delay:v145 options:v142 animations:0.125 completion:0.0];
            }

            layer3 = [v89 layer];
            presentationLayer = [layer3 presentationLayer];
            [presentationLayer opacity];
            v104 = v103;

            if (v104 < 1.0)
            {
              [v92 setAlpha:v104];
              v105 = MEMORY[0x277D75D18];
              v140[0] = MEMORY[0x277D85DD0];
              v140[1] = 3221225472;
              v140[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_9;
              v140[3] = &unk_279EE8A78;
              v141 = v92;
              [v105 animateWithDuration:0x10000 delay:v140 options:0 animations:0.25 completion:0.0];
            }

            ++v87;
            actionGroupView2 = v90;
            actions4 = [v90 actions];
            v107 = [actions4 count];

            actionGroupView = v129;
          }

          while (v87 < v107);
        }

        v108 = MEMORY[0x277D75D18];
        v133[0] = MEMORY[0x277D85DD0];
        v133[1] = 3221225472;
        v133[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_10;
        v133[3] = &unk_279EE85B8;
        v109 = v120;
        v134 = v109;
        v136 = v11;
        v137 = v15;
        v138 = v6;
        v139 = v17;
        v135 = actionGroupView;
        [v108 _animateUsingSpringWithDampingRatio:0 response:v133 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
        actionGroupViewTransitionCompletionTimer = [(WFSystemOverlayViewController *)selfCopy actionGroupViewTransitionCompletionTimer];
        [actionGroupViewTransitionCompletionTimer cancel];

        objc_initWeak(&v157, selfCopy);
        v111 = objc_alloc(MEMORY[0x277D79F48]);
        v112 = MEMORY[0x277D85CD0];
        v113 = MEMORY[0x277D85CD0];
        v131[0] = MEMORY[0x277D85DD0];
        v131[1] = 3221225472;
        v131[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_12;
        v131[3] = &unk_279EE8908;
        objc_copyWeak(&v132, &v157);
        platterView = v118;
        outgoingPlatterViewAwaitingSizeTransition = v119;
        v114 = [v111 initWithInterval:v112 queue:v131 handler:0.55];
        [(WFSystemOverlayViewController *)selfCopy setActionGroupViewTransitionCompletionTimer:v114];

        actionGroupViewTransitionCompletionTimer2 = [(WFSystemOverlayViewController *)selfCopy actionGroupViewTransitionCompletionTimer];
        [actionGroupViewTransitionCompletionTimer2 start];

        objc_destroyWeak(&v132);
        objc_destroyWeak(&v157);

LABEL_47:
        return;
      }

      goto LABEL_45;
    }
  }

  containerView4 = [(WFSystemOverlayViewController *)self containerView];
  [containerView4 setFrame:{v11, v15, v6, v8 + v10}];
}

uint64_t __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v8 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_2;
  v5[3] = &unk_279EE89B0;
  v5[4] = *(a1 + 32);
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v5 animations:{*&v8.minimum, *&v8.maximum, *&v8.preferred}];
}

void __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v16 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v16.minimum;
  maximum = v16.maximum;
  preferred = v16.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_4;
  v10[3] = &unk_279EE8568;
  v11 = *(a1 + 32);
  v6 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v6;
  v15 = *(a1 + 80);
  v12 = *(a1 + 40);
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v10 animations:{v7, v8, v9}];
}

void __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v15 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v15.minimum;
  maximum = v15.maximum;
  preferred = v15.preferred;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_11;
  v10[3] = &unk_279EE85B8;
  v11 = *(a1 + 32);
  v6 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v6;
  v12 = *(a1 + 40);
  *&v7 = minimum;
  *&v8 = maximum;
  *&v9 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v10 animations:{v7, v8, v9}];
}

void __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) titleLabel];
  [v1 setAlpha:0.0];
}

void __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setTitle:*(a1 + 40) forState:0];
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_8;
  v3[3] = &unk_279EE8A78;
  v4 = *(a1 + 32);
  [v2 animateWithDuration:0x20000 delay:v3 options:0 animations:0.3 completion:0.0];
}

void __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained activeTransitioningActionGroupViewPortal];
  [v1 removeFromSuperview];

  [WeakRetained setActiveTransitioningActionGroupViewPortal:0];
  [WeakRetained setActionGroupViewTransitionCompletionTimer:0];
}

uint64_t __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_13(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v8 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_14;
  v5[3] = &unk_279EE89B0;
  v5[4] = *(a1 + 32);
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v5 animations:{*&v8.minimum, *&v8.maximum, *&v8.preferred}];
}

void __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_14(uint64_t a1)
{
  v2 = *(a1 + 64);
  v10 = [*(a1 + 32) activeTransitioningActionGroupViewPortal];
  [v10 bounds];
  v4 = v2 - v3;
  v5 = *(a1 + 56);
  v6 = [*(a1 + 32) activeTransitioningActionGroupViewPortal];
  [v6 bounds];
  v8 = v7;
  v9 = [*(a1 + 32) activeTransitioningActionGroupViewPortal];
  [v9 setFrame:{0.0, v4, v5, v8}];
}

void __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_8(uint64_t a1)
{
  v1 = [*(a1 + 32) titleLabel];
  [v1 setAlpha:1.0];
}

uint64_t __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 72);
  [*(a1 + 40) bounds];
  v4 = v2 - v3;
  v5 = *(a1 + 64);
  [*(a1 + 40) bounds];
  v6 = *(a1 + 32);

  return [v6 setFrame:{0.0, v4, v5}];
}

void __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) clippingContentView];
  v3 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 80);
  [v2 setTransform:&v6];

  v4 = [*(a1 + 40) clippingContentView];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v6 = *MEMORY[0x277CBF2C0];
  v7 = v5;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  [v4 setTransform:&v6];
}

void __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) containerView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

- (void)transitionFromPlatter:(id)platter toPlatter:(id)toPlatter
{
  v30[1] = *MEMORY[0x277D85DE8];
  platterCopy = platter;
  toPlatterCopy = toPlatter;
  v8 = +[WFBannerPrototypeSettings sharedSettings];
  debugMorphTransitions = [v8 debugMorphTransitions];

  platterView = [toPlatterCopy platterView];
  v11 = platterView;
  if (debugMorphTransitions)
  {
    [platterView setAlpha:0.5];
  }

  else
  {
    [platterView setAlpha:0.0];

    if (![MEMORY[0x277CBEBD0] universalPreviewsEnabled])
    {
      goto LABEL_6;
    }

    v11 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v11 setName:@"gaussianBlur"];
    [v11 setValue:&unk_2883C22D0 forKey:*MEMORY[0x277CDA4F0]];
    v12 = MEMORY[0x277CBEC28];
    [v11 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA4C8]];
    [v11 setValue:v12 forKey:*MEMORY[0x277CDA4A0]];
    [v11 setValue:@"default" forKey:*MEMORY[0x277CDA4E8]];
    [v11 setValue:@"default" forKey:*MEMORY[0x277CDA4B8]];
    platterView2 = [platterCopy platterView];
    layer = [platterView2 layer];
    v30[0] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [layer setFilters:v15];
  }

LABEL_6:
  v16 = MEMORY[0x277D75D18];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0.2;
  }

  else
  {
    v17 = 0.1;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke;
  v28[3] = &unk_279EE8A78;
  v29 = platterCopy;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_269;
  v26[3] = &unk_279EE8540;
  v18 = v29;
  v27 = v18;
  [v16 _animateUsingSpringWithDampingRatio:0 response:v28 tracking:v26 dampingRatioSmoothing:1.0 responseSmoothing:v17 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  v19 = dispatch_time(0, 150000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_2_271;
  block[3] = &unk_279EE8A78;
  v20 = toPlatterCopy;
  v25 = v20;
  dispatch_after(v19, MEMORY[0x277D85CD0], block);
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_7;
    v23[3] = &unk_279EE8A78;
    v23[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v23 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    [(WFSystemOverlayViewController *)self performBumpAnimation];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_8;
  v22[3] = &unk_279EE8A78;
  v22[4] = self;
  [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v22 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.35 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_10;
  v21[3] = &unk_279EE8A78;
  v21[4] = self;
  [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v21 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.25 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
}

void __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_2;
  v9[3] = &unk_279EE8A78;
  v10 = *(a1 + 32);
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v9 animations:{v6, v7, v8}];
}

void __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_269(uint64_t a1)
{
  [*(a1 + 32) removeFromParentViewController];
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];
}

void __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_2_271(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CBEBD0] universalPreviewsEnabled])
  {
    v2 = +[WFBannerPrototypeSettings sharedSettings];
    v3 = [v2 debugMorphTransitions];

    if ((v3 & 1) == 0)
    {
      v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      [v4 setName:@"gaussianBlur"];
      [v4 setValue:&unk_2883C22E0 forKey:*MEMORY[0x277CDA4F0]];
      v5 = MEMORY[0x277CBEC28];
      [v4 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA4C8]];
      [v4 setValue:v5 forKey:*MEMORY[0x277CDA4A0]];
      [v4 setValue:@"default" forKey:*MEMORY[0x277CDA4E8]];
      [v4 setValue:@"default" forKey:*MEMORY[0x277CDA4B8]];
      v6 = [*(a1 + 32) platterView];
      v7 = [v6 layer];
      v15[0] = v4;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      [v7 setFilters:v8];

      v9 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_3;
      v13[3] = &unk_279EE8A78;
      v14 = *(a1 + 32);
      [v9 _animateUsingSpringWithDampingRatio:0 response:v13 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
    }
  }

  v10 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_5;
  v11[3] = &unk_279EE8A78;
  v12 = *(a1 + 32);
  [v10 _animateUsingSpringWithDampingRatio:0 response:v11 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.35 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
}

uint64_t __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_9;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_11;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  v1 = [v2 layer];
  [v1 setValue:&unk_2883C22D0 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_4;
  v9[3] = &unk_279EE8A78;
  v10 = *(a1 + 32);
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v9 animations:{v6, v7, v8}];
}

void __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v11 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v11.minimum;
  maximum = v11.maximum;
  preferred = v11.preferred;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_6;
  v9[3] = &unk_279EE8A78;
  v10 = *(a1 + 32);
  *&v6 = minimum;
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v9 animations:{v6, v7, v8}];
}

void __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_6(uint64_t a1)
{
  v1 = [*(a1 + 32) platterView];
  [v1 setAlpha:1.0];
}

void __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) platterView];
  v1 = [v2 layer];
  [v1 setValue:&unk_2883C22D0 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __65__WFSystemOverlayViewController_transitionFromPlatter_toPlatter___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) platterView];
  [v2 setAlpha:0.0];

  v4 = [*(a1 + 32) platterView];
  v3 = [v4 layer];
  [v3 setValue:&unk_2883C22E0 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (void)performBumpAnimation
{
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, 1.028, 1.028);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__WFSystemOverlayViewController_performBumpAnimation__block_invoke;
  v9[3] = &unk_279EE8518;
  v9[4] = self;
  v10 = v11;
  [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v9 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  containerView = [(WFSystemOverlayViewController *)self containerView];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v4;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [containerView setTransform:v8];

  v5 = dispatch_time(0, 125000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__WFSystemOverlayViewController_performBumpAnimation__block_invoke_2;
  block[3] = &unk_279EE8518;
  block[4] = self;
  v7 = v11;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

void __53__WFSystemOverlayViewController_performBumpAnimation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 setTransform:&v2];
}

uint64_t __53__WFSystemOverlayViewController_performBumpAnimation__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v2;
  v6[2] = *(a1 + 72);
  v3 = [*(a1 + 32) containerView];
  [v3 setTransform:v6];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__WFSystemOverlayViewController_performBumpAnimation__block_invoke_3;
  v5[3] = &unk_279EE8A78;
  v5[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:0 response:v5 tracking:0 dampingRatioSmoothing:0.5 responseSmoothing:0.6 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
}

void __53__WFSystemOverlayViewController_performBumpAnimation__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v1 setTransform:v3];
}

- (void)setEmbeddedPlatter:(id)platter
{
  v105[2] = *MEMORY[0x277D85DE8];
  platterCopy = platter;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];

  if (embeddedPlatter != platterCopy)
  {
    [(WFSystemOverlayViewController *)self setQueuedStatusPlatter:0];
    embeddedPlatter2 = [(WFSystemOverlayViewController *)self embeddedPlatter];
    objc_storeStrong(&self->_embeddedPlatter, platter);
    [platterCopy setPlatterContentContainer:self];
    [embeddedPlatter2 setPlatterContentContainer:0];
    containerView = [(WFSystemOverlayViewController *)self containerView];

    if (containerView)
    {
      [(WFSystemOverlayViewController *)self updateDimmingLayerVisibility];
    }

    else
    {
      v9 = objc_opt_new();
      view = [(WFSystemOverlayViewController *)self view];
      [view addSubview:v9];

      [(WFSystemOverlayViewController *)self setContainerView:v9];
      v11 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
      [v11 setName:@"colorMatrix"];
      *(&location[2] + 4) = 0x3F80000000000000;
      *(&location[5] + 4) = 0x3F80000000000000;
      *(&location[1] + 4) = 0;
      *(location + 4) = 0;
      *(&location[4] + 4) = 0;
      *(&location[3] + 4) = 0;
      memset(&location[6] + 4, 0, 28);
      LODWORD(location[0]) = 1065353216;
      v12 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:location];
      [v11 setValue:v12 forKey:*MEMORY[0x277CDA440]];

      v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      [v13 setName:@"gaussianBlur"];
      [v13 setValue:&unk_2883C22D0 forKey:*MEMORY[0x277CDA4F0]];
      [v13 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA4C8]];
      [v13 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CDA4A0]];
      [v13 setValue:@"default" forKey:*MEMORY[0x277CDA4E8]];
      [v13 setValue:@"default" forKey:*MEMORY[0x277CDA4B8]];
      containerView2 = [(WFSystemOverlayViewController *)self containerView];
      layer = [containerView2 layer];
      v105[0] = v13;
      v105[1] = v11;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
      [layer setFilters:v16];

      v17 = objc_opt_new();
      [v17 setAutoresizingMask:18];
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v18 = +[WFBannerPrototypeSettings sharedSettings];
        debugShadowsEnabled = [v18 debugShadowsEnabled];

        layer2 = [v17 layer];
        v21 = layer2;
        v22 = 45.0;
        if (debugShadowsEnabled)
        {
          v22 = 2.0;
          v23 = 1.0;
        }

        else
        {
          v23 = *"\nף>";
        }

        [layer2 setShadowRadius:v22];

        layer3 = [v17 layer];
        *&v25 = v23;
        [layer3 setShadowOpacity:v25];

        layer4 = [v17 layer];
        [layer4 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

        layer5 = [v17 layer];
        [layer5 setPunchoutShadow:1];
      }

      [v9 addSubview:v17];
      if (_UISolariumEnabled())
      {
        v28 = objc_alloc_init(MEMORY[0x277D75D18]);
        v29 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:0 smoothness:10.0];
        [v28 _setBackground:v29];

        v30 = objc_alloc_init(MEMORY[0x277D763B8]);
        [v17 _setBackground:v30];
      }

      else
      {
        v28 = [MEMORY[0x277D26718] materialViewWithRecipe:53 options:0 initialWeighting:1.0];
        [v28 setClipsToBounds:1];
      }

      [v28 setAutoresizingMask:18];
      [v28 setUserInteractionEnabled:1];
      [v28 setClipsToBounds:1];
      [v17 addSubview:v28];
      [(WFSystemOverlayViewController *)self setMaterialView:v28];
      v31 = [[WFBannerGesture alloc] initWithView:v9];
      [(WFSystemOverlayViewController *)self setBannerGesture:v31];

      bannerGesture = [(WFSystemOverlayViewController *)self bannerGesture];
      [bannerGesture setDelegate:self];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke;
      aBlock[3] = &unk_279EE8A78;
      aBlock[4] = self;
      v33 = _Block_copy(aBlock);
      if ([(WFSystemOverlayViewController *)self viewIsAppearingCalled])
      {
        v33[2](v33);
        [(WFSystemOverlayViewController *)self updateDimmingLayerVisibility];
      }

      else
      {
        objc_initWeak(location, self);
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_8;
        v100[3] = &unk_279EE84F0;
        objc_copyWeak(&v102, location);
        v101 = v33;
        [(WFSystemOverlayViewController *)self setViewIsAppearingHandler:v100];

        objc_destroyWeak(&v102);
        objc_destroyWeak(location);
      }
    }

    [(WFSystemOverlayViewController *)self setDismissalPhase:0];
    view2 = [embeddedPlatter2 view];
    [view2 setAutoresizingMask:0];

    view3 = [platterCopy view];
    v36 = MEMORY[0x277CCACA8];
    platterView = [platterCopy platterView];
    attribution = [platterView attribution];
    title = [attribution title];
    v40 = [v36 stringWithFormat:@"junior_attribution: %@", title];
    [view3 setAccessibilityIdentifier:v40];

    materialView = [(WFSystemOverlayViewController *)self materialView];
    view4 = [platterCopy view];
    [materialView addSubview:view4];

    [(WFSystemOverlayViewController *)self setFreezePlatterLayout:1];
    [(WFSystemOverlayViewController *)self layoutEmbeddedPlatter];
    view5 = [(WFSystemOverlayViewController *)self view];
    [view5 layoutIfNeeded];

    [(WFSystemOverlayViewController *)self setFreezePlatterLayout:0];
    if (embeddedPlatter2)
    {
      [(WFSystemOverlayViewController *)self transitionFromPlatter:embeddedPlatter2 toPlatter:platterCopy];
      platterView2 = [embeddedPlatter2 platterView];
      [(WFSystemOverlayViewController *)self setOutgoingPlatterViewAwaitingSizeTransition:platterView2];

      [(WFSystemOverlayViewController *)self updateContainerViewFrameAnimated:1];
      [(WFSystemOverlayViewController *)self updateDimmingLayerVisibility];
      [(WFSystemOverlayViewController *)self resetLocalIdleTimer];
    }

    else
    {
      [(WFSystemOverlayViewController *)self updateContainerViewFrameAnimated:0];
    }

    nestedScrollView = [platterCopy nestedScrollView];
    bannerGesture2 = [(WFSystemOverlayViewController *)self bannerGesture];
    scrollView = bannerGesture2;
    if (nestedScrollView)
    {
      [bannerGesture2 setEmbeddedScrollView:nestedScrollView];

      scrollView = [platterCopy scrollView];
      [scrollView setScrollEnabled:0];
    }

    else
    {
      scrollView2 = [platterCopy scrollView];
      [scrollView setEmbeddedScrollView:scrollView2];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = 34.0;
    }

    else
    {
      universalPreviewsEnabled = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
      v49 = 39.0;
      if (universalPreviewsEnabled)
      {
        v49 = 42.0;
      }
    }

    [(WFSystemOverlayViewController *)self setPlatterCornerRadius:v49];
    platterView3 = [platterCopy platterView];
    attribution2 = [platterView3 attribution];
    title2 = [attribution2 title];
    platterView4 = [platterCopy platterView];
    attribution3 = [platterView4 attribution];
    icon = [attribution3 icon];
    -[WFSystemOverlayViewController setAttributionTitle:icon:previouslyHidden:](self, "setAttributionTitle:icon:previouslyHidden:", title2, icon, [embeddedPlatter2 shouldHideSashView]);

    v57 = +[WFBannerPrototypeSettings sharedSettings];
    LODWORD(attribution2) = [v57 debugMorphTransitions];

    if (attribution2)
    {
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      v59 = systemBlueColor;
      cGColor = [systemBlueColor CGColor];
      view6 = [platterCopy view];
      layer6 = [view6 layer];
      [layer6 setBorderColor:cGColor];

      view7 = [platterCopy view];
      layer7 = [view7 layer];
      [layer7 setBorderWidth:1.0];

      systemRedColor = [MEMORY[0x277D75348] systemRedColor];
      v66 = systemRedColor;
      cGColor2 = [systemRedColor CGColor];
      platterView5 = [platterCopy platterView];
      actionGroupView = [platterView5 actionGroupView];
      layer8 = [actionGroupView layer];
      [layer8 setBorderColor:cGColor2];

      platterView6 = [platterCopy platterView];
      actionGroupView2 = [platterView6 actionGroupView];
      layer9 = [actionGroupView2 layer];
      [layer9 setBorderWidth:1.0];

      systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
      v75 = systemYellowColor;
      cGColor3 = [systemYellowColor CGColor];
      platterView7 = [platterCopy platterView];
      clippingContentView = [platterView7 clippingContentView];
      layer10 = [clippingContentView layer];
      [layer10 setBorderColor:cGColor3];

      platterView8 = [platterCopy platterView];
      clippingContentView2 = [platterView8 clippingContentView];
      layer11 = [clippingContentView2 layer];
      [layer11 setBorderWidth:1.0];
    }

    v83 = +[WFBannerPrototypeSettings sharedSettings];
    bannerFramesEnabled = [v83 bannerFramesEnabled];

    if (bannerFramesEnabled)
    {
      dialogDescriptionLabel = [(WFSystemOverlayViewController *)self dialogDescriptionLabel];

      if (dialogDescriptionLabel)
      {
        dialogDescriptionLabel = [(WFSystemOverlayViewController *)self materialView];
        dialogDescriptionLabel2 = [(WFSystemOverlayViewController *)self dialogDescriptionLabel];
        [dialogDescriptionLabel bringSubviewToFront:dialogDescriptionLabel2];
      }

      else
      {
        v88 = objc_alloc(MEMORY[0x277D756B8]);
        materialView2 = [(WFSystemOverlayViewController *)self materialView];
        [materialView2 frame];
        v91 = [v88 initWithFrame:{40.0, 0.0, v90 + -80.0, 14.0}];

        [(UILabel *)v91 setAutoresizingMask:2];
        labelColor = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v91 setTextColor:labelColor];

        v93 = [MEMORY[0x277D74300] systemFontOfSize:8.0 weight:*MEMORY[0x277D74420]];
        [(UILabel *)v91 setFont:v93];

        [(UILabel *)v91 setTextAlignment:1];
        materialView3 = [(WFSystemOverlayViewController *)self materialView];
        [materialView3 addSubview:v91];

        dialogDescriptionLabel = self->_dialogDescriptionLabel;
        self->_dialogDescriptionLabel = v91;
      }

      dialogDescriptionLabel3 = [(WFSystemOverlayViewController *)self dialogDescriptionLabel];
      v96 = [platterCopy description];
      [dialogDescriptionLabel3 setText:v96];
    }

    v97 = platterCopy;
    if (v97)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_initWeak(location, self);
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_9;
        v98[3] = &unk_279EE8908;
        objc_copyWeak(&v99, location);
        [v97 setResetIdleTimerSuppressionBlock:v98];
        objc_destroyWeak(&v99);
        objc_destroyWeak(location);
      }
    }
  }
}

void __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke(uint64_t a1)
{
  v2 = +[WFBannerPrototypeSettings sharedSettings];
  v3 = [v2 transitionSettings];

  if ([v3 disableTransition])
  {
    [*(a1 + 32) setContainerViewColorMatrixOpacity:1.0];
  }

  else
  {
    [v3 poofInScale];
    v5 = v4;
    [v3 poofInScale];
    CGAffineTransformMakeScale(&v26, v5, v6);
    v7 = [*(a1 + 32) containerView];
    v25 = v26;
    [v7 setTransform:&v25];

    v8 = MEMORY[0x277D75D18];
    [v3 poofInScaleDamping];
    v10 = v9;
    [v3 poofInScaleResponse];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_2;
    v24[3] = &unk_279EE8A78;
    v24[4] = *(a1 + 32);
    [v8 _animateUsingSpringWithDampingRatio:0 response:v24 tracking:0 dampingRatioSmoothing:v10 responseSmoothing:v11 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
    v12 = +[WFBannerPrototypeSettings sharedSettings];
    v13 = [v12 blurFilterEnabled];

    if (v13)
    {
      v14 = [*(a1 + 32) containerView];
      v15 = [v14 layer];
      v16 = MEMORY[0x277CCABB0];
      [v3 poofInBlurRadius];
      v17 = [v16 numberWithDouble:?];
      [v15 setValue:v17 forKeyPath:@"filters.gaussianBlur.inputRadius"];

      v18 = MEMORY[0x277D75D18];
      [v3 poofInBlurResponse];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_4;
      v23[3] = &unk_279EE8A78;
      v23[4] = *(a1 + 32);
      [v18 _animateUsingSpringWithDampingRatio:0 response:v23 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v19 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
    }

    v20 = MEMORY[0x277D75D18];
    [v3 poofInAlphaResponse];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_6;
    v22[3] = &unk_279EE8A78;
    v22[4] = *(a1 + 32);
    [v20 _animateUsingSpringWithDampingRatio:0 response:v22 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:v21 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
  }
}

void __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  [WeakRetained updateDimmingLayerVisibility];
  [WeakRetained setViewIsAppearingHandler:0];
}

void __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetLocalIdleTimer];
}

uint64_t __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_3;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_5;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_7;
  v4[3] = &unk_279EE8A78;
  v4[4] = *(a1 + 32);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:1835010 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

void __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  v1 = [v2 layer];
  [v1 setValue:&unk_2883C22D0 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void __52__WFSystemOverlayViewController_setEmbeddedPlatter___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v1 setTransform:v3];
}

- (void)setRootModalViewController:(id)controller
{
  controllerCopy = controller;
  objc_storeStrong(&self->_rootModalViewController, controller);
  if (!controllerCopy)
  {
    v6 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__WFSystemOverlayViewController_setRootModalViewController___block_invoke;
    block[3] = &unk_279EE8A78;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }
}

uint64_t __60__WFSystemOverlayViewController_setRootModalViewController___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bannerSize];

  return [v1 setPreferredContentSize:?];
}

- (void)resetLocalIdleTimer
{
  systemIdleTimerOverrideAssertion = [(WFSystemOverlayViewController *)self systemIdleTimerOverrideAssertion];

  if (!systemIdleTimerOverrideAssertion)
  {
    mEMORY[0x277D1B260] = [MEMORY[0x277D1B260] sharedInstance];
    v15 = 0;
    v5 = [mEMORY[0x277D1B260] newAssertionToDisableIdleTimerForReason:@"Shortcut is running error:{overriding lock screen idle timer.", &v15}];

    [(WFSystemOverlayViewController *)self setSystemIdleTimerOverrideAssertion:v5];
  }

  localIdleTimer = [(WFSystemOverlayViewController *)self localIdleTimer];
  [localIdleTimer cancel];

  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277D79F48]);
  v8 = MEMORY[0x277D85CD0];
  v9 = MEMORY[0x277D85CD0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__WFSystemOverlayViewController_resetLocalIdleTimer__block_invoke;
  v12[3] = &unk_279EE8908;
  objc_copyWeak(&v13, &location);
  v10 = [v7 initWithInterval:v8 queue:v12 handler:30.0];
  [(WFSystemOverlayViewController *)self setLocalIdleTimer:v10];

  localIdleTimer2 = [(WFSystemOverlayViewController *)self localIdleTimer];
  [localIdleTimer2 start];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __52__WFSystemOverlayViewController_resetLocalIdleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained systemIdleTimerOverrideAssertion];
  [v1 invalidate];

  [WeakRetained setSystemIdleTimerOverrideAssertion:0];
  v2 = [WeakRetained localIdleTimer];
  [v2 cancel];

  [WeakRetained setLocalIdleTimer:0];
}

- (NSString)description
{
  dismissalPhase = [(WFSystemOverlayViewController *)self dismissalPhase];
  if (dismissalPhase > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279EE8650[dismissalPhase];
  }

  v5 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = WFSystemOverlayViewController;
  v6 = [(WFSystemOverlayViewController *)&v12 description];
  embeddedPlatter = [(WFSystemOverlayViewController *)self embeddedPlatter];
  presentedViewController = [(WFSystemOverlayViewController *)self presentedViewController];
  queuedStatusPlatter = [(WFSystemOverlayViewController *)self queuedStatusPlatter];
  v10 = [v5 stringWithFormat:@"<%@, embedded platter: %@, presented VC: %@, queuedStatusPlatter: %@, dismissalPhase: %@>", v6, embeddedPlatter, presentedViewController, queuedStatusPlatter, v4];

  return v10;
}

- (void)dealloc
{
  systemIdleTimerOverrideAssertion = [(WFSystemOverlayViewController *)self systemIdleTimerOverrideAssertion];
  [systemIdleTimerOverrideAssertion invalidate];

  [(WFSystemOverlayViewController *)self stopObservingKeyboard];
  v4.receiver = self;
  v4.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v4 dealloc];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v13 viewWillLayoutSubviews];
  containerView = [(WFSystemOverlayViewController *)self containerView];
  [containerView frame];
  v6 = v5 == *(MEMORY[0x277CBF348] + 8) && v4 == *MEMORY[0x277CBF348];

  if (v6 == [(WFSystemOverlayViewController *)self contentIsFullScreen])
  {
    containerView2 = [(WFSystemOverlayViewController *)self containerView];
    v8 = containerView2;
    if (containerView2)
    {
      [containerView2 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v9 = *(MEMORY[0x277CBF2C0] + 16);
    *&v11.a = *MEMORY[0x277CBF2C0];
    *&v11.c = v9;
    *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
    v10 = CGAffineTransformEqualToTransform(&t1, &v11);

    if (v10)
    {
      [(WFSystemOverlayViewController *)self updateContainerViewFrameAnimated:0];
    }
  }

  [(WFSystemOverlayViewController *)self bannerSize];
  [(WFSystemOverlayViewController *)self setPreferredContentSize:?];
  [(WFSystemOverlayViewController *)self layoutEmbeddedPlatter];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  localIdleTimer = [(WFSystemOverlayViewController *)self localIdleTimer];
  [localIdleTimer cancel];

  systemIdleTimerOverrideAssertion = [(WFSystemOverlayViewController *)self systemIdleTimerOverrideAssertion];
  [systemIdleTimerOverrideAssertion invalidate];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v7 viewIsAppearing:appearing];
  [(WFSystemOverlayViewController *)self setViewIsAppearingCalled:1];
  viewIsAppearingHandler = [(WFSystemOverlayViewController *)self viewIsAppearingHandler];

  if (viewIsAppearingHandler)
  {
    viewIsAppearingHandler2 = [(WFSystemOverlayViewController *)self viewIsAppearingHandler];
    viewIsAppearingHandler2[2]();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFSystemOverlayViewController_viewIsAppearing___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v25.receiver = self;
  v25.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v25 viewWillAppear:?];
  [(WFSystemOverlayViewController *)self setViewWillAppearCalled:1];
  [(WFSystemOverlayViewController *)self bannerSize];
  [(WFSystemOverlayViewController *)self setPreferredContentSize:?];
  v5 = +[WFBannerPrototypeSettings sharedSettings];
  bannerFramesEnabled = [v5 bannerFramesEnabled];

  if (bannerFramesEnabled)
  {
    view = [(WFSystemOverlayViewController *)self view];
    window = [view window];
    layer = [window layer];
    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    v11 = [systemGreenColor colorWithAlphaComponent:0.9];
    [layer setBorderColor:{objc_msgSend(v11, "CGColor")}];

    view2 = [(WFSystemOverlayViewController *)self view];
    window2 = [view2 window];
    layer2 = [window2 layer];
    [layer2 setBorderWidth:2.0];

    view3 = [(WFSystemOverlayViewController *)self view];
    window3 = [view3 window];
    currentDevice = [MEMORY[0x277D79F18] currentDevice];
    [currentDevice screenCornerRadius];
    [window3 _setContinuousCornerRadius:?];

    containerView = [(WFSystemOverlayViewController *)self containerView];
    layer3 = [containerView layer];
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    v21 = [systemOrangeColor colorWithAlphaComponent:0.9];
    [layer3 setBorderColor:{objc_msgSend(v21, "CGColor")}];

    containerView2 = [(WFSystemOverlayViewController *)self containerView];
    layer4 = [containerView2 layer];
    [layer4 setBorderWidth:1.0];
  }

  v24.receiver = self;
  v24.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v24 viewWillAppear:appearCopy];
  [(WFSystemOverlayViewController *)self resetLocalIdleTimer];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v3 viewDidLoad];
  [(WFSystemOverlayViewController *)self beginObservingKeyboard];
  [MEMORY[0x277D7BDB0] beginObservingKeyboardNotifications];
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v10 loadView];
  v3 = objc_alloc_init(WFTouchCapturingView);
  objc_initWeak(&location, self);
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __41__WFSystemOverlayViewController_loadView__block_invoke;
  v7 = &unk_279EE8908;
  objc_copyWeak(&v8, &location);
  [(WFTouchCapturingView *)v3 setTouchCapturedHandler:&v4];
  [(WFSystemOverlayViewController *)self setView:v3, v4, v5, v6, v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __41__WFSystemOverlayViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetLocalIdleTimer];
}

- (WFSystemOverlayViewController)init
{
  v6.receiver = self;
  v6.super_class = WFSystemOverlayViewController;
  v2 = [(WFSystemOverlayViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_viewIsAppearingCalled = 0;
    v2->_viewWillAppearCalled = 0;
    v4 = v2;
  }

  return v3;
}

@end