@interface SBFocusActivityPickerTransientOverlayViewController
- (BOOL)_shouldUseCondensedFrame:(CGRect)a3;
- (CGRect)_contractedFrame;
- (CGRect)_contractedFrameNotTargetingSystemAperture;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (SBFocusActivityPickerTransientOverlayViewControllerDelegate)delegate;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (void)_dismiss:(BOOL)a3;
- (void)_handleTap:(id)a3;
- (void)_performTransitionForPresentation:(BOOL)a3 contextProvider:(id)a4 actions:(id)a5 usingAnimationWorkaround:(BOOL)a6;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBFocusActivityPickerTransientOverlayViewController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = SBFocusActivityPickerTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v14 viewDidLoad];
  v3 = [(SBFocusActivityPickerTransientOverlayViewController *)self view];
  v4 = [MEMORY[0x277D26718] materialViewWithRecipe:20 options:2 initialWeighting:0.0];
  backgroundMaterialView = self->_backgroundMaterialView;
  self->_backgroundMaterialView = v4;

  v6 = self->_backgroundMaterialView;
  [v3 bounds];
  [(MTMaterialView *)v6 setFrame:?];
  [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
  [(SBTransientOverlayViewController *)self addPresentationBackgroundView:self->_backgroundMaterialView];
  v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v7;

  [v3 addGestureRecognizer:self->_tapGesture];
  v9 = objc_alloc_init(MEMORY[0x277D0AA08]);
  activityPickerViewController = self->_activityPickerViewController;
  self->_activityPickerViewController = v9;

  v11 = self->_activityPickerViewController;
  v12 = [(SBFocusActivityPickerTransientOverlayViewController *)self traitCollection];
  -[FCUIActivityPickerViewController setFooterPinnedToBottom:](v11, "setFooterPinnedToBottom:", [v12 userInterfaceIdiom] == 0);

  v13 = [(FCUIActivityPickerViewController *)self->_activityPickerViewController view];
  [v3 bounds];
  [v13 setFrame:?];
  [v3 addSubview:v13];
  [v13 setAlpha:0.0];
  [(SBFocusActivityPickerTransientOverlayViewController *)self bs_addChildViewController:self->_activityPickerViewController withSuperview:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBFocusActivityPickerTransientOverlayViewController;
  [(SBFocusActivityPickerTransientOverlayViewController *)&v5 viewWillDisappear:?];
  [(SBFocusActivityPickerTransientOverlayViewController *)self _dismiss:v3];
}

- (CGRect)_contractedFrame
{
  v3 = [SBApp systemApertureControllerForMainDisplay];
  if (!v3 || (-[SBFocusActivityPickerTransientOverlayViewController view](self, "view"), v4 = objc_claimAutoreleasedReturnValue(), [v3 defaultIslandFrameInCoordinateSpace:v4], v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, !-[SBFocusActivityPickerTransientOverlayViewController _shouldUseCondensedFrame:](self, "_shouldUseCondensedFrame:", v6, v8, v10, v12)))
  {
    [(SBFocusActivityPickerTransientOverlayViewController *)self _contractedFrameNotTargetingSystemAperture];
    v6 = v13;
    v8 = v14;
    v10 = v15;
    v12 = v16;
  }

  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)_shouldUseCondensedFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
  {
    return 0;
  }

  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (CGRectIsEmpty(v12))
  {
    return 0;
  }

  v9 = [(SBFocusActivityPickerTransientOverlayViewController *)self view];
  [v9 bounds];
  MidY = CGRectGetMidY(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = MidY > CGRectGetMaxY(v14);

  return v8;
}

- (CGRect)_contractedFrameNotTargetingSystemAperture
{
  v3 = [(SBFocusActivityPickerTransientOverlayViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(SBFocusActivityPickerTransientOverlayViewController *)self sizeForChildContentContainer:self->_activityPickerViewController withParentContainerSize:v5, v7];
  v17 = v8;
  BSRectWithSize();
  v9 = [(SBFocusActivityPickerTransientOverlayViewController *)self view];
  [v9 bounds];
  v10 = [(SBFocusActivityPickerTransientOverlayViewController *)self traitCollection];
  [v10 displayScale];
  UIRectCenteredXInRectScale();
  v12 = v11;

  v13 = -74.0;
  v14 = 74.0;
  v15 = v12;
  v16 = v17;
  result.size.height = v14;
  result.size.width = v16;
  result.origin.y = v13;
  result.origin.x = v15;
  return result;
}

- (void)_performTransitionForPresentation:(BOOL)a3 contextProvider:(id)a4 actions:(id)a5 usingAnimationWorkaround:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  if ([v10 isAnimated])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __138__SBFocusActivityPickerTransientOverlayViewController__performTransitionForPresentation_contextProvider_actions_usingAnimationWorkaround___block_invoke;
    v14[3] = &unk_2783B42A0;
    v17 = a3;
    v14[4] = self;
    v16 = v11;
    v15 = v10;
    v12 = MEMORY[0x223D6F7F0](v14);
    v13 = v12;
    if (v6)
    {
      dispatch_async(MEMORY[0x277D85CD0], v12);
    }

    else
    {
      v12[2](v12);
    }
  }

  else
  {
    (*(v11 + 2))(v11, 0);
    [v10 completeTransition:1];
  }
}

void __138__SBFocusActivityPickerTransientOverlayViewController__performTransitionForPresentation_contextProvider_actions_usingAnimationWorkaround___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CF0B70];
  if (*(a1 + 56))
  {
    v3 = 0.4;
  }

  else
  {
    v3 = 0.23;
  }

  v4 = MEMORY[0x277CDA7B0];
  if (!*(a1 + 56))
  {
    v4 = MEMORY[0x277CDA7C0];
  }

  v5 = [MEMORY[0x277CD9EF8] functionWithName:*v4];
  v6 = [v2 settingsWithDuration:v5 timingFunction:v3];

  v7 = [v6 mutableCopy];
  v19 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v7 setPreferredFrameRateRange:{*&v19.minimum, *&v19.maximum, *&v19.preferred}];
  [v7 setHighFrameRateReason:1703937];
  v8 = objc_alloc_init(MEMORY[0x277D763A0]);
  [v7 duration];
  [v8 _setDuration:?];
  v9 = [*(a1 + 32) view];
  [v8 _setContainerView:v9];
  v10 = objc_alloc_init(_SBFocusAnimator);
  [v8 _setAnimator:v10];
  v11 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __138__SBFocusActivityPickerTransientOverlayViewController__performTransitionForPresentation_contextProvider_actions_usingAnimationWorkaround___block_invoke_2;
  v16[3] = &unk_2783A9878;
  v12 = *(a1 + 48);
  v17 = v8;
  v18 = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __138__SBFocusActivityPickerTransientOverlayViewController__performTransitionForPresentation_contextProvider_actions_usingAnimationWorkaround___block_invoke_3;
  v14[3] = &unk_2783A9398;
  v15 = *(a1 + 40);
  v13 = v8;
  [v11 _animateWithAnimationSettings:v7 animations:v16 completion:v14];
}

void __138__SBFocusActivityPickerTransientOverlayViewController__performTransitionForPresentation_contextProvider_actions_usingAnimationWorkaround___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _transitionCoordinator];
  (*(v1 + 16))(v1, v2);
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __107__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __107__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __107__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
  v9 = &unk_2783BFA48;
  v10 = *(a1 + 32);
  v11 = v3;
  v4 = v3;
  v5 = MEMORY[0x223D6F7F0](&v6);
  [*(a1 + 32) _performTransitionForPresentation:1 contextProvider:v4 actions:v5 usingAnimationWorkaround:{1, v6, v7, v8, v9, v10}];
}

void __107__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  [*(a1 + 32) sizeForChildContentContainer:*(*(a1 + 32) + 1416) withParentContainerSize:{v7, v9}];
  BSRectWithSize();
  v10 = [*(a1 + 32) traitCollection];
  [v10 displayScale];
  v46 = v11;
  UIRectCenteredIntegralRectScale();
  v13 = v12;
  v47 = v14;
  v16 = v15;
  v18 = v17;

  v19 = [*(a1 + 32) view];
  [v19 safeAreaInsets];
  v21 = v20;

  v22 = [*(a1 + 32) view];
  [*(a1 + 32) _contractedFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [*(*(a1 + 32) + 1416) view];
  v32 = [v31 superview];
  [v22 convertRect:v32 toView:{v24, v26, v28, v30}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __107__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
  v48[3] = &unk_2783A8C18;
  v48[4] = *(a1 + 32);
  [MEMORY[0x277D75D18] performWithoutAnimation:v48];
  v41 = [MEMORY[0x277D0A9E8] sharedActivityManager];
  v42 = [v41 activeActivity];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v45 = [MEMORY[0x277D0A9E8] sharedActivityManager];
    v44 = [v45 defaultActivity];
  }

  [*(*(a1 + 32) + 1416) setExpandedFrame:v44 initialFrame:1 representedActivity:v4 presentationStyle:v13 transitionCoordinator:{v47, v16, v18 - v21, v34, v36, v38, v40}];
  [*(*(a1 + 32) + 1424) setWeighting:1.0];
  [*(a1 + 40) performAlongsideTransitions];
}

void __107__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1416) view];
  [v2 setHidden:0];

  [*(*(a1 + 32) + 1424) setWeighting:0.0];
  v3 = [*(*(a1 + 32) + 1416) view];
  [v3 setAlpha:1.0];
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __104__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __104__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __104__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
  v9 = &unk_2783BFA48;
  v10 = *(a1 + 32);
  v11 = v3;
  v4 = v3;
  v5 = MEMORY[0x223D6F7F0](&v6);
  [*(a1 + 32) _performTransitionForPresentation:0 contextProvider:v4 actions:v5 usingAnimationWorkaround:{0, v6, v7, v8, v9, v10}];
}

void __104__SBFocusActivityPickerTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 view];
  [*(a1 + 32) _contractedFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [*(*(a1 + 32) + 1416) view];
  v15 = [v14 superview];
  [v5 convertRect:v15 toView:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [MEMORY[0x277D0A9E8] sharedActivityManager];
  v25 = [v24 activeActivity];
  v26 = v25;
  if (v25)
  {
    v29 = v25;
  }

  else
  {
    v27 = [MEMORY[0x277D0A9E8] sharedActivityManager];
    v29 = [v27 defaultActivity];
  }

  [*(*(a1 + 32) + 1416) setContractedFrame:v29 representedActivity:1 presentationStyle:v4 transitionCoordinator:{v17, v19, v21, v23}];
  v28 = [*(*(a1 + 32) + 1416) view];
  [v28 setAlpha:0.0];

  [*(*(a1 + 32) + 1424) setWeighting:0.0];
  [*(a1 + 40) performAlongsideTransitions];
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  if (self->_activityPickerViewController == a3)
  {
    CCUIDefaultExpandedContentModuleWidth();

    UISizeRoundToScale();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBFocusActivityPickerTransientOverlayViewController;
    [(SBFocusActivityPickerTransientOverlayViewController *)&v6 sizeForChildContentContainer:a4.width withParentContainerSize:a4.height];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = SBFocusActivityPickerTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (v7)
  {
    [v7 targetTransform];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  if (!CGAffineTransformIsIdentity(&v9))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __106__SBFocusActivityPickerTransientOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_2783B50F8;
    v8[4] = self;
    *&v8[5] = width;
    *&v8[6] = height;
    [v7 animateAlongsideTransition:v8 completion:0];
  }
}

void __106__SBFocusActivityPickerTransientOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sizeForChildContentContainer:*(*(a1 + 32) + 1416) withParentContainerSize:{*(a1 + 40), *(a1 + 48)}];
  BSRectWithSize();
  BSRectWithSize();
  v2 = [*(a1 + 32) traitCollection];
  [v2 displayScale];
  v12 = v3;
  UIRectCenteredXInRectScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v13 = [*(*(a1 + 32) + 1416) view];
  [v13 setFrame:{v5, v7, v9, v11}];
  [v13 setNeedsLayout];
  [v13 layoutIfNeeded];
}

- (void)_dismiss:(BOOL)a3
{
  v3 = a3;
  v5 = +[SBWorkspace mainWorkspace];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBFocusActivityPickerTransientOverlayViewController__dismiss___block_invoke;
  v6[3] = &unk_2783A9F58;
  v6[4] = self;
  v7 = v3;
  [v5 dismissTransientOverlayViewController:self animated:v3 completion:v6];
}

void __64__SBFocusActivityPickerTransientOverlayViewController__dismiss___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1440));
  [WeakRetained focusActivityPickerTransientOverlayViewController:*(a1 + 32) didDismiss:*(a1 + 40)];
}

- (void)_handleTap:(id)a3
{
  if (self->_tapGesture == a3)
  {
    [(SBFocusActivityPickerTransientOverlayViewController *)self _dismiss:1];
  }
}

- (SBFocusActivityPickerTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end