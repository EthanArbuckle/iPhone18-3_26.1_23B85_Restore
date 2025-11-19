@interface WFSystemOverlayViewController
- (BOOL)shouldDisplaySash;
- (BOOL)shouldOwnHomeGesture;
- (BOOL)shouldShowDimmingLayer;
- (CGSize)bannerSize;
- (CGSize)platterContentSize;
- (NSString)description;
- (WFCompactPlatterView)outgoingPlatterViewAwaitingSizeTransition;
- (WFSystemOverlayViewController)init;
- (double)maximumExpectedHeightForPlatterPresentation:(id)a3;
- (double)platterOffsetFromPresentationEdge;
- (double)sashViewHeight;
- (void)bannerGestureDidEndWithDismissal:(BOOL)a3;
- (void)beginObservingForPresentation;
- (void)beginObservingKeyboard;
- (void)dealloc;
- (void)dismissEmbeddedPlatterWithCompletion:(id)a3 interruptible:(BOOL)a4;
- (void)handleTapGesture:(id)a3;
- (void)keyboardDidChange:(id)a3;
- (void)layoutDimmingLayer;
- (void)layoutEmbeddedPlatter;
- (void)loadView;
- (void)performBumpAnimation;
- (void)performLayoutUpdate;
- (void)platterPresentationDidInvalidateSize:(id)a3;
- (void)presentationTransitionWillOccur:(id)a3;
- (void)resetLocalIdleTimer;
- (void)setAttributionTitle:(id)a3 icon:(id)a4 previouslyHidden:(BOOL)a5;
- (void)setContainerViewColorMatrixOpacity:(double)a3;
- (void)setDismissalPhase:(unint64_t)a3;
- (void)setEmbeddedPlatter:(id)a3;
- (void)setPlatterCornerRadius:(double)a3;
- (void)setQueuedStatusPlatter:(id)a3;
- (void)setRootModalViewController:(id)a3;
- (void)stopObservingForPresentation;
- (void)stopObservingKeyboard;
- (void)transitionFromPlatter:(id)a3 toPlatter:(id)a4;
- (void)updateContainerViewFrameAnimated:(BOOL)a3;
- (void)updateDimmingLayerVisibility;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

  v3 = [(WFSystemOverlayViewController *)self embeddedPlatter];

  if (!v3)
  {
    return 1;
  }

  v4 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v6 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  v7 = [v6 hasCustomHomeGestureBehavior];

  return v7;
}

- (void)presentationTransitionWillOccur:(id)a3
{
  v19 = a3;
  v4 = [v19 object];
  NSClassFromString(&cfstr_Uidatepickerco.isa);
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  v5 = [v19 object];
  NSClassFromString(&cfstr_Uicontextmenua.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v7 = [v19 name];
    v8 = [v7 isEqualToString:*MEMORY[0x277D76E38]];

    if (v8)
    {
      v9 = [(WFSystemOverlayViewController *)self rootModalViewController];

      if (!v9)
      {
        v10 = [(WFSystemOverlayViewController *)self view];
        v11 = [v10 _screen];
        [v11 bounds];
        [(WFSystemOverlayViewController *)self setPreferredContentSize:v12, v13];

        v4 = [v19 object];
        [(WFSystemOverlayViewController *)self setRootModalViewController:v4];
LABEL_2:
      }
    }

    else
    {
      v14 = [v19 name];
      v15 = [v14 isEqualToString:*MEMORY[0x277D76E30]];

      if (v15)
      {
        v16 = [v19 object];
        v17 = [(WFSystemOverlayViewController *)self rootModalViewController];
        v18 = [v16 isEqual:v17];

        if (v18)
        {
          [(WFSystemOverlayViewController *)self setRootModalViewController:0];
          [(WFSystemOverlayViewController *)self bannerSize];
          [(WFSystemOverlayViewController *)self setPreferredContentSize:?];
          v4 = [(WFSystemOverlayViewController *)self presentableHomeGestureContext];
          [v4 setWantsHomeGesture:0];
          goto LABEL_2;
        }
      }
    }
  }
}

- (void)stopObservingForPresentation
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
}

- (void)beginObservingForPresentation
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_presentationTransitionWillOccur_ name:*MEMORY[0x277D76E38] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_presentationTransitionWillOccur_ name:*MEMORY[0x277D76E30] object:0];
}

- (BOOL)shouldDisplaySash
{
  v3 = [MEMORY[0x277D79F18] currentDevice];
  if ([v3 hasSystemAperture])
  {
    v4 = +[WFBannerPrototypeSettings sharedSettings];
    v5 = [v4 simulateStatusBannerDevice];

    if (!v5)
    {
      isKindOfClass = 0;
      return isKindOfClass & 1;
    }
  }

  else
  {
  }

  v7 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v8 = [(WFSystemOverlayViewController *)self embeddedPlatter];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (double)sashViewHeight
{
  v3 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  if (![v3 shouldHideSashView])
  {
    goto LABEL_4;
  }

  v4 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  v5 = [v4 platterView];
  v6 = [v5 primaryText];
  if ([v6 length])
  {

LABEL_4:
    goto LABEL_5;
  }

  v9 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  v10 = [v9 platterView];
  v11 = [v10 secondaryText];
  v12 = [v11 length];

  if (!v12)
  {
    return 0.0;
  }

LABEL_5:
  v7 = [(WFSystemOverlayViewController *)self shouldDisplaySash];
  result = 47.0;
  if (!v7)
  {
    return 15.0;
  }

  return result;
}

- (CGSize)bannerSize
{
  if ([(WFSystemOverlayViewController *)self contentIsFullScreen])
  {
    v3 = [(WFSystemOverlayViewController *)self view];
    v4 = [v3 _screen];
    [v4 bounds];
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
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 _peripheryInsets];
  v4 = v3 + 14.0;

  return v4;
}

- (CGSize)platterContentSize
{
  v3 = [(WFSystemOverlayViewController *)self view];
  v4 = [v3 _window];
  v5 = [(WFSystemOverlayViewController *)self view];
  v6 = [v5 _screen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v11 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  [WFCompactPlatterPresentationController presentedViewFrameInContainerView:v4 containerViewSize:1 withSizeCalculation:v11 ofPresentedPlatter:v8, v10];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (double)maximumExpectedHeightForPlatterPresentation:(id)a3
{
  v4 = [(WFSystemOverlayViewController *)self view];
  v5 = [(WFSystemOverlayViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v10 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  [WFCompactPlatterPresentationController presentedViewFrameInContainerView:v4 containerViewSize:0 withSizeCalculation:v10 ofPresentedPlatter:v7, v9];
  v12 = v11;

  return v12;
}

- (void)platterPresentationDidInvalidateSize:(id)a3
{
  [(WFSystemOverlayViewController *)self updateContainerViewFrameAnimated:1];
  [(WFSystemOverlayViewController *)self bannerSize];

  [(WFSystemOverlayViewController *)self setPreferredContentSize:?];
}

- (void)keyboardDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76BD8]];

  if (!v6 || [v6 BOOLValue])
  {
    v7 = [(WFSystemOverlayViewController *)self embeddedPlatter];

    if (v7)
    {
      v8 = [v4 name];
      -[WFSystemOverlayViewController setKeyboardIsVisible:](self, "setKeyboardIsVisible:", [v8 isEqualToString:*MEMORY[0x277D76C60]]);

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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
}

- (void)beginObservingKeyboard
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_keyboardDidChange_ name:*MEMORY[0x277D76C60] object:0];
  [v3 addObserver:self selector:sel_keyboardDidChange_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)bannerGestureDidEndWithDismissal:(BOOL)a3
{
  if (a3)
  {
    [(WFSystemOverlayViewController *)self setDismissalPhase:2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__WFSystemOverlayViewController_bannerGestureDidEndWithDismissal___block_invoke;
    v7[3] = &unk_279EE8A78;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:2 delay:v7 options:0 animations:0.3 completion:0.0];
    v4 = [(WFSystemOverlayViewController *)self dismissalHandler];
    (v4)[2](v4, @"Banner was swiped away.");

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

- (void)handleTapGesture:(id)a3
{
  if ([(WFSystemOverlayViewController *)self keyboardIsVisible])
  {
    v5 = [(WFSystemOverlayViewController *)self view];
    [v5 endEditing:1];
  }

  else
  {
    v4 = [(WFSystemOverlayViewController *)self dismissalHandler];
    (v4)[2](v4, @"Disambiguation dimming layer was tapped.");

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
  v3 = [(WFSystemOverlayViewController *)self dimmingView];

  if (v3)
  {
    [(WFSystemOverlayViewController *)self bannerSize];
    v5 = v4;
    [(WFSystemOverlayViewController *)self bannerContentOutsets];
    v7 = v6;
    v9 = -v8;
    v11 = v10 + v5 + v8;
    v12 = [(WFSystemOverlayViewController *)self view];
    v13 = [v12 _screen];
    [v13 bounds];
    v15 = v14;
    [(WFSystemOverlayViewController *)self platterOffsetFromPresentationEdge];
    v17 = v16 + v15;

    v18 = [(WFSystemOverlayViewController *)self dimmingView];
    [v18 setFrame:{v9, -100.0 - v7, v11, v17 + 100.0}];
  }
}

- (void)updateDimmingLayerVisibility
{
  v3 = [(WFSystemOverlayViewController *)self shouldShowDimmingLayer];
  if (v3)
  {
    v4 = [(WFSystemOverlayViewController *)self dimmingView];

    if (!v4)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__WFSystemOverlayViewController_updateDimmingLayerVisibility__block_invoke;
      v11[3] = &unk_279EE8A78;
      v11[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v11];
    }
  }

  v5 = [(WFSystemOverlayViewController *)self dimmingView];

  if (v5)
  {
    if (v3)
    {
      v6 = [(WFSystemOverlayViewController *)self dimmingView];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(WFSystemOverlayViewController *)self bannerGesture];
    [v7 setDimmingView:v6];

    if (v3)
    {
    }

    v8 = [(WFSystemOverlayViewController *)self dimmingView];
    [v8 setCaptureTouches:v3];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__WFSystemOverlayViewController_updateDimmingLayerVisibility__block_invoke_2;
    v9[3] = &unk_279EE8AA0;
    v9[4] = self;
    v10 = v3;
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

  v4 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else if ([(WFSystemOverlayViewController *)self keyboardIsVisible])
  {
    v5 = [(WFSystemOverlayViewController *)self traitCollection];
    v3 = [v5 userInterfaceIdiom] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dismissEmbeddedPlatterWithCompletion:(id)a3 interruptible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[WFBannerPrototypeSettings sharedSettings];
  v8 = [v7 transitionSettings];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__WFSystemOverlayViewController_dismissEmbeddedPlatterWithCompletion_interruptible___block_invoke;
  aBlock[3] = &unk_279EE8C58;
  aBlock[4] = self;
  v9 = v8;
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
  if (v4)
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
  if (v4)
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
  v21 = v6;
  v25 = v21;
  v22 = [v19 initWithInterval:MEMORY[0x277D85CD0] queue:v24 handler:v20];
  [(WFSystemOverlayViewController *)self setDismissalCompletionTimer:v22];

  v23 = [(WFSystemOverlayViewController *)self dismissalCompletionTimer];
  [v23 start];

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

- (void)setDismissalPhase:(unint64_t)a3
{
  self->_dismissalPhase = a3;
  if (a3)
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
    v4 = [(WFSystemOverlayViewController *)self dismissalCompletionTimer];
    [v4 cancel];

    v5 = [(WFSystemOverlayViewController *)self dismissalAlphaOutAnimationTimer];
    [v5 cancel];

    [(WFSystemOverlayViewController *)self setDismissalCompletionTimer:0];

    [(WFSystemOverlayViewController *)self setDismissalAlphaOutAnimationTimer:0];
  }
}

void __51__WFSystemOverlayViewController_setDismissalPhase___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setCaptureTouches:0];
}

- (void)setQueuedStatusPlatter:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_queuedStatusPlatter, a3);
  v6 = [(WFSystemOverlayViewController *)self queuedStatusPlatterTimer];
  [v6 cancel];

  [(WFSystemOverlayViewController *)self setQueuedStatusPlatterTimer:0];
  if (v5)
  {
    v7 = [(WFSystemOverlayViewController *)self embeddedPlatter];
    if (v7)
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
      v14 = v5;
      v11 = [v8 initWithInterval:v9 queue:v13 handler:0.2];
      [(WFSystemOverlayViewController *)self setQueuedStatusPlatterTimer:v11];

      v12 = [(WFSystemOverlayViewController *)self queuedStatusPlatterTimer];
      [v12 start];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      [(WFSystemOverlayViewController *)self setEmbeddedPlatter:v5];
    }
  }
}

void __56__WFSystemOverlayViewController_setQueuedStatusPlatter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setEmbeddedPlatter:*(a1 + 32)];
}

- (void)setAttributionTitle:(id)a3 icon:(id)a4 previouslyHidden:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
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
    v12 = [(WFSystemOverlayViewController *)self sashView];

    if (v12)
    {
      v13 = [(WFSystemOverlayViewController *)self sashView];
      v14 = [v13 title];
      v15 = [v14 isEqualToString:v8];

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
        v29 = v9;
        v30 = v8;
        v31 = v11;
        v33 = 0x3FC0000000000000;
        v32 = v35;
        [v16 animateWithDuration:0x10000 delay:v34 options:v28 animations:0.125 completion:0.0];
      }

      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v18 = [WFCompactPlatterSashView alloc];
      v19 = [(WFCompactPlatterSashView *)v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [(WFSystemOverlayViewController *)self setSashView:v19];

      v20 = [(WFSystemOverlayViewController *)self sashView];
      [v20 setAutoresizesSubviews:1];

      v21 = [(WFSystemOverlayViewController *)self sashView];
      [v21 setIcon:v9];

      v22 = [(WFSystemOverlayViewController *)self sashView];
      [v22 setTitle:v8];

      v23 = [(WFSystemOverlayViewController *)self materialView];
      v24 = [(WFSystemOverlayViewController *)self sashView];
      [v23 addSubview:v24];

      v11[2](v11);
      if (!v5)
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

- (void)setPlatterCornerRadius:(double)a3
{
  [(WFSystemOverlayViewController *)self platterCornerRadius];
  if (v5 != a3)
  {
    [(WFSystemOverlayViewController *)self platterCornerRadius];
    v7 = v6;
    self->_platterCornerRadius = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__WFSystemOverlayViewController_setPlatterCornerRadius___block_invoke;
    aBlock[3] = &unk_279EE89D8;
    aBlock[4] = self;
    *&aBlock[5] = a3;
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
  v3 = [(WFSystemOverlayViewController *)self embeddedPlatter];

  if (v3)
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

- (void)setContainerViewColorMatrixOpacity:(double)a3
{
  v3 = a3;
  v4 = [(WFSystemOverlayViewController *)self containerView];
  v5 = [v4 layer];
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
  v17 = v3;
  v18 = 0;
  v6 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v7];
  [v5 setValue:v6 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];
}

- (void)updateContainerViewFrameAnimated:(BOOL)a3
{
  v3 = a3;
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
    v12 = [(WFSystemOverlayViewController *)self view];
    v13 = [v12 _screen];
    [v13 bounds];
    v11 = (v14 - v6) * 0.5;
  }

  v15 = 5.0;
  if ([(WFSystemOverlayViewController *)self contentIsFullScreen])
  {
    [(WFSystemOverlayViewController *)self platterOffsetFromPresentationEdge];
    v15 = v16;
  }

  v17 = v8 + v10;
  if (v3)
  {
    v18 = [(WFSystemOverlayViewController *)self containerView];
    [v18 bounds];
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
      v20 = [(WFSystemOverlayViewController *)self outgoingPlatterViewAwaitingSizeTransition];
      v21 = [(WFSystemOverlayViewController *)self embeddedPlatter];
      v22 = [v21 platterView];

      v23 = [v20 actionGroupView];
      v24 = [v22 actionGroupView];
      [v20 setSuppressContentViewLayout:1];
      if (v23 == v24)
      {
        v34 = 0;
      }

      else
      {
        v25 = [v23 actions];
        v26 = [v25 count];
        v27 = [v24 actions];
        if (v26 == [v27 count])
        {
          [v23 bounds];
          v29 = v28;
          v31 = v30;
          [v24 bounds];
          v34 = v31 == v33 && v29 == v32;
        }

        else
        {
          v34 = 0;
        }
      }

      v35 = [v20 clippingContentView];
      [v35 frame];
      v37 = v36;

      v38 = [v22 clippingContentView];
      [v38 frame];
      v40 = v39;

      if ([MEMORY[0x277CBEBD0] universalPreviewsEnabled] && v37 > 0.0 && v40 > 0.0)
      {
        if (!v34)
        {
          v58 = [v20 actionGroupView];
          if (v58)
          {

            goto LABEL_45;
          }

          v116 = [v22 actionGroupView];

          if (v116)
          {
LABEL_45:
            v117 = [(WFSystemOverlayViewController *)self activeTransitioningActionGroupViewPortal];

            if (v117)
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
          v41 = [v20 backdropView];
          [v41 frame];
          v124 = v42;
          v126 = v8 + v10;
          v44 = v43;
          v122 = v45;
          v47 = v46;

          v48 = [v20 backdropView];
          v49 = v44;
          v17 = v126;
          [v48 setFrame:{v49, v124, v122, v40 - v37 + v47}];
        }

        [v22 frame];
        v51 = v50;
        [v20 frame];
        v53 = v51 - v52;
        memset(&v157, 0, sizeof(v157));
        CGAffineTransformMakeScale(&t1, 1.0, (v37 + v53) / v37);
        CGAffineTransformMakeTranslation(&t2, 0.0, v53 * 0.5);
        CGAffineTransformConcat(&v157, &t1, &t2);
        memset(&t1, 0, sizeof(t1));
        CGAffineTransformMakeScale(&t2, 1.0, (v40 - v53) / v40);
        CGAffineTransformMakeTranslation(&v154, 0.0, v53 * -0.5);
        CGAffineTransformConcat(&t1, &t2, &v154);
        v54 = [v22 clippingContentView];
        t2 = t1;
        [v54 setTransform:&t2];

        v55 = MEMORY[0x277D75D18];
        v150[0] = MEMORY[0x277D85DD0];
        v150[1] = 3221225472;
        v150[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_3;
        v150[3] = &unk_279EE8568;
        v151 = v20;
        v153 = v157;
        v152 = v22;
        [v55 _animateUsingSpringWithDampingRatio:0 response:v150 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
      }

      if (v34)
      {
        v56 = [(WFSystemOverlayViewController *)self activeTransitioningActionGroupViewPortal];

        v121 = self;
        if (v56)
        {
          v57 = [(WFSystemOverlayViewController *)self activeTransitioningActionGroupViewPortal];
        }

        else
        {
          v127 = v17;
          [v23 bounds];
          v60 = v59;
          v62 = v61;
          v64 = v63;
          v66 = v65;
          v67 = [(WFSystemOverlayViewController *)self containerView];
          [v23 convertRect:v67 toView:{v60, v62, v64, v66}];
          v123 = v69;
          v125 = v68;
          v71 = v70;
          v73 = v72;

          [v24 frame];
          v75 = v74;
          v77 = v76;
          [v23 bounds];
          [v24 setFrame:{v75, v77}];
          v57 = [objc_alloc(MEMORY[0x277D76180]) initWithFrame:{v125, v123, v71, v73}];
          [v57 setHidesSourceView:1];
          [v57 setAllowsHitTesting:1];
          [v57 setForwardsClientHitTestingToSourceView:1];
          v78 = [(WFSystemOverlayViewController *)self containerView];
          [v78 addSubview:v57];

          [(WFSystemOverlayViewController *)self setActiveTransitioningActionGroupViewPortal:v57];
          v79 = +[WFBannerPrototypeSettings sharedSettings];
          v80 = [v79 debugMorphTransitions];

          if (v80)
          {
            v81 = [MEMORY[0x277D75348] systemGreenColor];
            v82 = [v81 CGColor];
            v83 = [v57 layer];
            [v83 setBorderColor:v82];

            v84 = [v57 layer];
            [v84 setBorderWidth:1.0];

            [v57 setHidesSourceView:0];
          }

          v17 = v127;
        }

        v120 = v57;
        [v57 setSourceView:{v24, v22, v20}];
        [v23 removeFromSuperview];
        v85 = [v24 actions];
        v86 = [v85 count];

        if (v86)
        {
          v87 = 0;
          v129 = v23;
          do
          {
            v88 = [v23 arrangedSubviews];
            v89 = [v88 objectAtIndexedSubscript:v87];

            v90 = v24;
            v91 = [v24 arrangedSubviews];
            v92 = [v91 objectAtIndexedSubscript:v87];

            v93 = [v89 backgroundColor];
            v94 = [v92 backgroundColor];
            if (([v94 isEqual:v93] & 1) == 0)
            {
              [v92 setBackgroundColor:v93];
              v95 = MEMORY[0x277D75D18];
              v147[0] = MEMORY[0x277D85DD0];
              v147[1] = 3221225472;
              v147[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_5;
              v147[3] = &unk_279EE8C58;
              v148 = v92;
              v149 = v94;
              [v95 animateWithDuration:0x10000 delay:v147 options:0 animations:0.2 completion:0.0];
            }

            v96 = [v89 titleLabel];
            v97 = [v96 text];

            v98 = [v92 titleLabel];
            v99 = [v98 text];

            if (([v99 isEqualToString:v97] & 1) == 0)
            {
              [v92 setTitle:v97 forState:0];
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
              v144 = v99;
              [v100 animateWithDuration:0x10000 delay:v145 options:v142 animations:0.125 completion:0.0];
            }

            v101 = [v89 layer];
            v102 = [v101 presentationLayer];
            [v102 opacity];
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
            v24 = v90;
            v106 = [v90 actions];
            v107 = [v106 count];

            v23 = v129;
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
        v135 = v23;
        [v108 _animateUsingSpringWithDampingRatio:0 response:v133 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.3 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.0];
        v110 = [(WFSystemOverlayViewController *)v121 actionGroupViewTransitionCompletionTimer];
        [v110 cancel];

        objc_initWeak(&v157, v121);
        v111 = objc_alloc(MEMORY[0x277D79F48]);
        v112 = MEMORY[0x277D85CD0];
        v113 = MEMORY[0x277D85CD0];
        v131[0] = MEMORY[0x277D85DD0];
        v131[1] = 3221225472;
        v131[2] = __66__WFSystemOverlayViewController_updateContainerViewFrameAnimated___block_invoke_12;
        v131[3] = &unk_279EE8908;
        objc_copyWeak(&v132, &v157);
        v22 = v118;
        v20 = v119;
        v114 = [v111 initWithInterval:v112 queue:v131 handler:0.55];
        [(WFSystemOverlayViewController *)v121 setActionGroupViewTransitionCompletionTimer:v114];

        v115 = [(WFSystemOverlayViewController *)v121 actionGroupViewTransitionCompletionTimer];
        [v115 start];

        objc_destroyWeak(&v132);
        objc_destroyWeak(&v157);

LABEL_47:
        return;
      }

      goto LABEL_45;
    }
  }

  v128 = [(WFSystemOverlayViewController *)self containerView];
  [v128 setFrame:{v11, v15, v6, v8 + v10}];
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

- (void)transitionFromPlatter:(id)a3 toPlatter:(id)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[WFBannerPrototypeSettings sharedSettings];
  v9 = [v8 debugMorphTransitions];

  v10 = [v7 platterView];
  v11 = v10;
  if (v9)
  {
    [v10 setAlpha:0.5];
  }

  else
  {
    [v10 setAlpha:0.0];

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
    v13 = [v6 platterView];
    v14 = [v13 layer];
    v30[0] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [v14 setFilters:v15];
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
  v29 = v6;
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
  v20 = v7;
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
  v3 = [(WFSystemOverlayViewController *)self containerView];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v4;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:v8];

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

- (void)setEmbeddedPlatter:(id)a3
{
  v105[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = [(WFSystemOverlayViewController *)self embeddedPlatter];

  if (v6 != v5)
  {
    [(WFSystemOverlayViewController *)self setQueuedStatusPlatter:0];
    v7 = [(WFSystemOverlayViewController *)self embeddedPlatter];
    objc_storeStrong(&self->_embeddedPlatter, a3);
    [v5 setPlatterContentContainer:self];
    [v7 setPlatterContentContainer:0];
    v8 = [(WFSystemOverlayViewController *)self containerView];

    if (v8)
    {
      [(WFSystemOverlayViewController *)self updateDimmingLayerVisibility];
    }

    else
    {
      v9 = objc_opt_new();
      v10 = [(WFSystemOverlayViewController *)self view];
      [v10 addSubview:v9];

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
      v14 = [(WFSystemOverlayViewController *)self containerView];
      v15 = [v14 layer];
      v105[0] = v13;
      v105[1] = v11;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:2];
      [v15 setFilters:v16];

      v17 = objc_opt_new();
      [v17 setAutoresizingMask:18];
      if ((_UISolariumEnabled() & 1) == 0)
      {
        v18 = +[WFBannerPrototypeSettings sharedSettings];
        v19 = [v18 debugShadowsEnabled];

        v20 = [v17 layer];
        v21 = v20;
        v22 = 45.0;
        if (v19)
        {
          v22 = 2.0;
          v23 = 1.0;
        }

        else
        {
          v23 = *"\nף>";
        }

        [v20 setShadowRadius:v22];

        v24 = [v17 layer];
        *&v25 = v23;
        [v24 setShadowOpacity:v25];

        v26 = [v17 layer];
        [v26 setShadowOffset:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

        v27 = [v17 layer];
        [v27 setPunchoutShadow:1];
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

      v32 = [(WFSystemOverlayViewController *)self bannerGesture];
      [v32 setDelegate:self];

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
    v34 = [v7 view];
    [v34 setAutoresizingMask:0];

    v35 = [v5 view];
    v36 = MEMORY[0x277CCACA8];
    v37 = [v5 platterView];
    v38 = [v37 attribution];
    v39 = [v38 title];
    v40 = [v36 stringWithFormat:@"junior_attribution: %@", v39];
    [v35 setAccessibilityIdentifier:v40];

    v41 = [(WFSystemOverlayViewController *)self materialView];
    v42 = [v5 view];
    [v41 addSubview:v42];

    [(WFSystemOverlayViewController *)self setFreezePlatterLayout:1];
    [(WFSystemOverlayViewController *)self layoutEmbeddedPlatter];
    v43 = [(WFSystemOverlayViewController *)self view];
    [v43 layoutIfNeeded];

    [(WFSystemOverlayViewController *)self setFreezePlatterLayout:0];
    if (v7)
    {
      [(WFSystemOverlayViewController *)self transitionFromPlatter:v7 toPlatter:v5];
      v44 = [v7 platterView];
      [(WFSystemOverlayViewController *)self setOutgoingPlatterViewAwaitingSizeTransition:v44];

      [(WFSystemOverlayViewController *)self updateContainerViewFrameAnimated:1];
      [(WFSystemOverlayViewController *)self updateDimmingLayerVisibility];
      [(WFSystemOverlayViewController *)self resetLocalIdleTimer];
    }

    else
    {
      [(WFSystemOverlayViewController *)self updateContainerViewFrameAnimated:0];
    }

    v45 = [v5 nestedScrollView];
    v46 = [(WFSystemOverlayViewController *)self bannerGesture];
    v47 = v46;
    if (v45)
    {
      [v46 setEmbeddedScrollView:v45];

      v47 = [v5 scrollView];
      [v47 setScrollEnabled:0];
    }

    else
    {
      v48 = [v5 scrollView];
      [v47 setEmbeddedScrollView:v48];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = 34.0;
    }

    else
    {
      v50 = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
      v49 = 39.0;
      if (v50)
      {
        v49 = 42.0;
      }
    }

    [(WFSystemOverlayViewController *)self setPlatterCornerRadius:v49];
    v51 = [v5 platterView];
    v52 = [v51 attribution];
    v53 = [v52 title];
    v54 = [v5 platterView];
    v55 = [v54 attribution];
    v56 = [v55 icon];
    -[WFSystemOverlayViewController setAttributionTitle:icon:previouslyHidden:](self, "setAttributionTitle:icon:previouslyHidden:", v53, v56, [v7 shouldHideSashView]);

    v57 = +[WFBannerPrototypeSettings sharedSettings];
    LODWORD(v52) = [v57 debugMorphTransitions];

    if (v52)
    {
      v58 = [MEMORY[0x277D75348] systemBlueColor];
      v59 = v58;
      v60 = [v58 CGColor];
      v61 = [v5 view];
      v62 = [v61 layer];
      [v62 setBorderColor:v60];

      v63 = [v5 view];
      v64 = [v63 layer];
      [v64 setBorderWidth:1.0];

      v65 = [MEMORY[0x277D75348] systemRedColor];
      v66 = v65;
      v67 = [v65 CGColor];
      v68 = [v5 platterView];
      v69 = [v68 actionGroupView];
      v70 = [v69 layer];
      [v70 setBorderColor:v67];

      v71 = [v5 platterView];
      v72 = [v71 actionGroupView];
      v73 = [v72 layer];
      [v73 setBorderWidth:1.0];

      v74 = [MEMORY[0x277D75348] systemYellowColor];
      v75 = v74;
      v76 = [v74 CGColor];
      v77 = [v5 platterView];
      v78 = [v77 clippingContentView];
      v79 = [v78 layer];
      [v79 setBorderColor:v76];

      v80 = [v5 platterView];
      v81 = [v80 clippingContentView];
      v82 = [v81 layer];
      [v82 setBorderWidth:1.0];
    }

    v83 = +[WFBannerPrototypeSettings sharedSettings];
    v84 = [v83 bannerFramesEnabled];

    if (v84)
    {
      v85 = [(WFSystemOverlayViewController *)self dialogDescriptionLabel];

      if (v85)
      {
        dialogDescriptionLabel = [(WFSystemOverlayViewController *)self materialView];
        v87 = [(WFSystemOverlayViewController *)self dialogDescriptionLabel];
        [dialogDescriptionLabel bringSubviewToFront:v87];
      }

      else
      {
        v88 = objc_alloc(MEMORY[0x277D756B8]);
        v89 = [(WFSystemOverlayViewController *)self materialView];
        [v89 frame];
        v91 = [v88 initWithFrame:{40.0, 0.0, v90 + -80.0, 14.0}];

        [(UILabel *)v91 setAutoresizingMask:2];
        v92 = [MEMORY[0x277D75348] labelColor];
        [(UILabel *)v91 setTextColor:v92];

        v93 = [MEMORY[0x277D74300] systemFontOfSize:8.0 weight:*MEMORY[0x277D74420]];
        [(UILabel *)v91 setFont:v93];

        [(UILabel *)v91 setTextAlignment:1];
        v94 = [(WFSystemOverlayViewController *)self materialView];
        [v94 addSubview:v91];

        dialogDescriptionLabel = self->_dialogDescriptionLabel;
        self->_dialogDescriptionLabel = v91;
      }

      v95 = [(WFSystemOverlayViewController *)self dialogDescriptionLabel];
      v96 = [v5 description];
      [v95 setText:v96];
    }

    v97 = v5;
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

- (void)setRootModalViewController:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_rootModalViewController, a3);
  if (!v5)
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
  v3 = [(WFSystemOverlayViewController *)self systemIdleTimerOverrideAssertion];

  if (!v3)
  {
    v4 = [MEMORY[0x277D1B260] sharedInstance];
    v15 = 0;
    v5 = [v4 newAssertionToDisableIdleTimerForReason:@"Shortcut is running error:{overriding lock screen idle timer.", &v15}];

    [(WFSystemOverlayViewController *)self setSystemIdleTimerOverrideAssertion:v5];
  }

  v6 = [(WFSystemOverlayViewController *)self localIdleTimer];
  [v6 cancel];

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

  v11 = [(WFSystemOverlayViewController *)self localIdleTimer];
  [v11 start];

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
  v3 = [(WFSystemOverlayViewController *)self dismissalPhase];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279EE8650[v3];
  }

  v5 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = WFSystemOverlayViewController;
  v6 = [(WFSystemOverlayViewController *)&v12 description];
  v7 = [(WFSystemOverlayViewController *)self embeddedPlatter];
  v8 = [(WFSystemOverlayViewController *)self presentedViewController];
  v9 = [(WFSystemOverlayViewController *)self queuedStatusPlatter];
  v10 = [v5 stringWithFormat:@"<%@, embedded platter: %@, presented VC: %@, queuedStatusPlatter: %@, dismissalPhase: %@>", v6, v7, v8, v9, v4];

  return v10;
}

- (void)dealloc
{
  v3 = [(WFSystemOverlayViewController *)self systemIdleTimerOverrideAssertion];
  [v3 invalidate];

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
  v3 = [(WFSystemOverlayViewController *)self containerView];
  [v3 frame];
  v6 = v5 == *(MEMORY[0x277CBF348] + 8) && v4 == *MEMORY[0x277CBF348];

  if (v6 == [(WFSystemOverlayViewController *)self contentIsFullScreen])
  {
    v7 = [(WFSystemOverlayViewController *)self containerView];
    v8 = v7;
    if (v7)
    {
      [v7 transform];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = [(WFSystemOverlayViewController *)self localIdleTimer];
  [v4 cancel];

  v5 = [(WFSystemOverlayViewController *)self systemIdleTimerOverrideAssertion];
  [v5 invalidate];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v7 viewIsAppearing:a3];
  [(WFSystemOverlayViewController *)self setViewIsAppearingCalled:1];
  v4 = [(WFSystemOverlayViewController *)self viewIsAppearingHandler];

  if (v4)
  {
    v5 = [(WFSystemOverlayViewController *)self viewIsAppearingHandler];
    v5[2]();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFSystemOverlayViewController_viewIsAppearing___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v25.receiver = self;
  v25.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v25 viewWillAppear:?];
  [(WFSystemOverlayViewController *)self setViewWillAppearCalled:1];
  [(WFSystemOverlayViewController *)self bannerSize];
  [(WFSystemOverlayViewController *)self setPreferredContentSize:?];
  v5 = +[WFBannerPrototypeSettings sharedSettings];
  v6 = [v5 bannerFramesEnabled];

  if (v6)
  {
    v7 = [(WFSystemOverlayViewController *)self view];
    v8 = [v7 window];
    v9 = [v8 layer];
    v10 = [MEMORY[0x277D75348] systemGreenColor];
    v11 = [v10 colorWithAlphaComponent:0.9];
    [v9 setBorderColor:{objc_msgSend(v11, "CGColor")}];

    v12 = [(WFSystemOverlayViewController *)self view];
    v13 = [v12 window];
    v14 = [v13 layer];
    [v14 setBorderWidth:2.0];

    v15 = [(WFSystemOverlayViewController *)self view];
    v16 = [v15 window];
    v17 = [MEMORY[0x277D79F18] currentDevice];
    [v17 screenCornerRadius];
    [v16 _setContinuousCornerRadius:?];

    v18 = [(WFSystemOverlayViewController *)self containerView];
    v19 = [v18 layer];
    v20 = [MEMORY[0x277D75348] systemOrangeColor];
    v21 = [v20 colorWithAlphaComponent:0.9];
    [v19 setBorderColor:{objc_msgSend(v21, "CGColor")}];

    v22 = [(WFSystemOverlayViewController *)self containerView];
    v23 = [v22 layer];
    [v23 setBorderWidth:1.0];
  }

  v24.receiver = self;
  v24.super_class = WFSystemOverlayViewController;
  [(WFSystemOverlayViewController *)&v24 viewWillAppear:v3];
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