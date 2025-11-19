@interface SBPIPStashableWrapperViewController
- (CGSize)minimumStashTabSize;
- (CGSize)preferredContentSize;
- (SBPIPStashableWrapperViewController)initWithContentViewController:(id)a3 cornerRadius:(double)a4 stashVisualSettings:(id)a5 shadowSettings:(id)a6;
- (SBPIPStashableWrapperViewControllerDelegate)delegate;
- (id)_newShadowViewWithSettings:(id)a3;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (void)_addMaskViewSubviewIfNeeded;
- (void)_applyDropShadowSettings:(id)a3 toView:(id)a4;
- (void)_handleTapWhileStashedGestureRecognizer:(id)a3;
- (void)_layoutStashTabViewsIfNeeded;
- (void)_resetStashTabViewsIfPossible;
- (void)_setPortalActive:(BOOL)a3 left:(BOOL)a4;
- (void)_setStashMaskActive:(BOOL)a3;
- (void)_setStashProgress:(double)a3 animated:(BOOL)a4;
- (void)_setStashedTabHidden:(BOOL)a3 left:(BOOL)a4;
- (void)_updateContentCornerRadiusForMaskActive:(BOOL)a3;
- (void)dealloc;
- (void)loadView;
- (void)setInteractivelyResizing:(BOOL)a3;
- (void)setMinimumStashTabSize:(CGSize)a3;
- (void)setStashTabHidden:(BOOL)a3 left:(BOOL)a4 withSpringBehavior:(id)a5 completion:(id)a6;
- (void)setStashed:(BOOL)a3 animated:(BOOL)a4;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBPIPStashableWrapperViewController

- (SBPIPStashableWrapperViewController)initWithContentViewController:(id)a3 cornerRadius:(double)a4 stashVisualSettings:(id)a5 shadowSettings:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = SBLogPIP();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [SBPIPBackdropView initWithFrame:];
  }

  v18.receiver = self;
  v18.super_class = SBPIPStashableWrapperViewController;
  v15 = [(SBPIPStashableWrapperViewController *)&v18 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_settings, a5);
    objc_storeStrong(&v16->_shadowSettings, a6);
    v16->_cornerRadiusMetric = a4;
    objc_storeStrong(&v16->_contentViewController, a3);
    v16->_stashTabHidden = 1;
    [(SBPIPStashableWrapperViewController *)v16 setAccessibilityIdentifier:@"SBPIP-StashingContainerViewController"];
    [(PTSettings *)v16->_shadowSettings addKeyPathObserver:v16];
  }

  return v16;
}

- (void)dealloc
{
  v3 = SBLogPIP();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBPIPBackdropView initWithFrame:];
  }

  [(PTSettings *)self->_shadowSettings removeKeyPathObserver:self];
  if ([(SBPIPStashableWrapperViewController *)self isViewLoaded])
  {
    [(UIViewController *)self->_contentViewController willMoveToParentViewController:0];
    v4 = [(UIViewController *)self->_contentViewController view];
    [v4 removeFromSuperview];

    [(UIViewController *)self->_contentViewController removeFromParentViewController];
  }

  v5.receiver = self;
  v5.super_class = SBPIPStashableWrapperViewController;
  [(SBPIPStashableWrapperViewController *)&v5 dealloc];
}

- (void)setStashed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_stashed != a3)
  {
    v5 = a3;
    self->_stashed = a3;
    v7 = 0.0;
    if (a3)
    {
      v7 = 1.0;
    }

    [(SBPIPStashableWrapperViewController *)self _setStashProgress:a4 animated:v7];
    if ([(SBPIPStashableWrapperViewController *)self isViewLoaded])
    {
      if (v5)
      {
        v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapWhileStashedGestureRecognizer_];
        stashedTapGestureRecognizer = self->_stashedTapGestureRecognizer;
        self->_stashedTapGestureRecognizer = v8;

        v10 = [(SBPIPStashableWrapperViewController *)self view];
        [v10 addGestureRecognizer:self->_stashedTapGestureRecognizer];
      }

      else
      {
        v10 = [(SBPIPStashableWrapperViewController *)self view];
        [v10 removeGestureRecognizer:self->_stashedTapGestureRecognizer];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained stashableWrapper:self didTransitionToStashed:v5];
    }
  }
}

- (void)setInteractivelyResizing:(BOOL)a3
{
  if (self->_interactivelyResizing != a3)
  {
    self->_interactivelyResizing = a3;
    [(SBPIPStashableWrapperViewController *)self _resetStashTabViewsIfPossible];
    v5 = [(SBPIPStashableWrapperViewController *)self view];
    [v5 setNeedsLayout];

    v6 = [(SBPIPStashableWrapperViewController *)self view];
    [v6 layoutIfNeeded];
  }
}

- (void)setMinimumStashTabSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_minimumStashTabSize.width != a3.width || self->_minimumStashTabSize.height != a3.height)
  {
    self->_minimumStashTabSize = a3;
    if ([(SBPIPStashableWrapperViewController *)self isViewLoaded])
    {
      WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
      [WeakRetained setMinimumStashTabSize:{width, height}];

      stashView = self->_stashView;

      [(SBPIPStashView *)stashView setStashedTabWidth:width];
    }
  }
}

- (void)_setStashProgress:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v43 = *MEMORY[0x277D85DE8];
  [(SBPIPStashView *)self->_stashView blurProgress];
  v9 = v8;
  IsZero = BSFloatIsZero();
  if (a3 < 0.2)
  {
    v11 = IsZero;
  }

  else
  {
    v11 = 0;
  }

  if (v9 != a3 && (v11 & 1) == 0 && [(SBPIPStashableWrapperViewController *)self isViewLoaded])
  {
    v12 = BSFloatIsZero();
    if ((v12 & 1) == 0 && [(SBPIPStashView *)self->_stashView isHidden])
    {
      v13 = SBLogPIP();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromSelector(a2);
        *buf = 138543874;
        v38 = v14;
        v39 = 1024;
        v40 = 145;
        v41 = 2114;
        v42 = @"not hidden";
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[Layout] %{public}@:%d Stash view set %{public}@", buf, 0x1Cu);
      }

      [(SBPIPStashView *)self->_stashView setHidden:0];
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __66__SBPIPStashableWrapperViewController__setStashProgress_animated___block_invoke;
    v35[3] = &unk_2783ABD10;
    v35[4] = self;
    v36 = v12;
    *&v35[5] = a3;
    v15 = MEMORY[0x223D6F7F0](v35);
    v16 = self->_inFlightStashProgressAnimationIdentifier + 1;
    self->_inFlightStashProgressAnimationIdentifier = v16;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __66__SBPIPStashableWrapperViewController__setStashProgress_animated___block_invoke_2;
    v33[3] = &unk_2783AE7A0;
    v34 = v12;
    v33[4] = self;
    v33[5] = v16;
    v33[6] = a2;
    v17 = MEMORY[0x223D6F7F0](v33);
    IsOne = BSFloatIsOne();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __66__SBPIPStashableWrapperViewController__setStashProgress_animated___block_invoke_14;
    v32[3] = &unk_2783A8BC8;
    if (IsOne)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 1.0;
    }

    v32[4] = self;
    *&v32[5] = v19;
    v20 = MEMORY[0x223D6F7F0](v32);
    if (v4)
    {
      v21 = MEMORY[0x277D75D18];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__SBPIPStashableWrapperViewController__setStashProgress_animated___block_invoke_2_16;
      v30[3] = &unk_2783A9348;
      v31 = v15;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__SBPIPStashableWrapperViewController__setStashProgress_animated___block_invoke_3;
      v28[3] = &unk_2783A9C70;
      v29 = v17;
      [v21 SBPIP_animateUsingDefaultTimingWithOptions:4 animations:v30 completion:v28];
      [(UIView *)self->_shadowView alpha];
      if (v22 != v19)
      {
        v23 = MEMORY[0x277D75D18];
        if (IsOne)
        {
          v24 = 0.5;
        }

        else
        {
          v24 = 0.2;
        }

        if (IsOne)
        {
          v25 = 0.5;
        }

        else
        {
          v25 = 0.0;
        }

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __66__SBPIPStashableWrapperViewController__setStashProgress_animated___block_invoke_4;
        v26[3] = &unk_2783A9348;
        v27 = v20;
        [v23 animateWithDuration:0 delay:v26 options:0 animations:v24 completion:v25];
      }
    }

    else
    {
      v15[2](v15);
      v17[2](v17);
      v20[2](v20);
    }
  }
}

uint64_t __66__SBPIPStashableWrapperViewController__setStashProgress_animated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1024);
  v3 = 1.0;
  if (*(a1 + 48))
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(*(a1 + 32) + 1024);
  v5 = *(a1 + 40);

  return [v4 setBlurProgress:v5];
}

uint64_t __66__SBPIPStashableWrapperViewController__setStashProgress_animated___block_invoke_2(uint64_t result)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(result + 56) == 1)
  {
    v1 = result;
    if (*(result + 40) == *(*(result + 32) + 1080))
    {
      v2 = SBLogPIP();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = NSStringFromSelector(*(v1 + 48));
        v4 = 138543874;
        v5 = v3;
        v6 = 1024;
        v7 = 157;
        v8 = 2114;
        v9 = @"hidden";
        _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[Layout] %{public}@:%d Stash view set %{public}@", &v4, 0x1Cu);
      }

      [*(*(v1 + 32) + 1024) setHidden:1];
      return [*(v1 + 32) _resetStashTabViewsIfPossible];
    }
  }

  return result;
}

- (void)setStashTabHidden:(BOOL)a3 left:(BOOL)a4 withSpringBehavior:(id)a5 completion:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (__PAIR64__(self->_stashTabShownLeft, self->_stashTabHidden) == __PAIR64__(v7, v8))
  {
    if (v11)
    {
      v11[2](v11);
    }
  }

  else
  {
    self->_stashTabHidden = v8;
    self->_stashTabShownLeft = v7 & ~v8;
    v13 = self->_inFlightStashTabAnimationIdentifier + 1;
    self->_inFlightStashTabAnimationIdentifier = v13;
    v14 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __92__SBPIPStashableWrapperViewController_setStashTabHidden_left_withSpringBehavior_completion___block_invoke;
    v18[3] = &unk_2783AC158;
    v18[4] = self;
    v19 = v8;
    v20 = v7;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__SBPIPStashableWrapperViewController_setStashTabHidden_left_withSpringBehavior_completion___block_invoke_2;
    v15[3] = &unk_2783A92B0;
    v17 = v13;
    v15[4] = self;
    v16 = v11;
    [v14 _animateUsingSpringBehavior:v10 tracking:0 animations:v18 completion:v15];
  }
}

uint64_t __92__SBPIPStashableWrapperViewController_setStashTabHidden_left_withSpringBehavior_completion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v2 == v3[134])
  {
    [v3 _resetStashTabViewsIfPossible];
  }

  result = a1[5];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)loadView
{
  v3 = [SBPIPHitTestExtendableView alloc];
  v4 = [(SBPIPHitTestExtendableView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SBPIPStashableWrapperViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = SBPIPStashableWrapperViewController;
  [(SBPIPStashableWrapperViewController *)&v34 viewDidLoad];
  v3 = [(SBPIPStashableWrapperViewController *)self view];
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
  containerView = self->_containerView;
  self->_containerView = v9;

  [v3 addSubview:self->_containerView];
  [(SBPIPStashableWrapperViewController *)self addChildViewController:self->_contentViewController];
  v11 = [(UIViewController *)self->_contentViewController view];
  contentView = self->_contentView;
  self->_contentView = v11;

  [(UIView *)self->_containerView addSubview:self->_contentView];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  v13 = [[SBPortalView alloc] initWithFrame:v5, v6, v7, v8];
  leftSideContentPortalView = self->_leftSideContentPortalView;
  self->_leftSideContentPortalView = v13;

  v15 = self->_leftSideContentPortalView;
  v30 = *(MEMORY[0x277CBF2C0] + 16);
  *&v32.a = *MEMORY[0x277CBF2C0];
  v31 = *&v32.a;
  *&v32.c = v30;
  *&v32.tx = *(MEMORY[0x277CBF2C0] + 32);
  v29 = *&v32.tx;
  CGAffineTransformScale(&v33, &v32, -1.0, 1.0);
  [(SBPortalView *)v15 setTransform:&v33];
  [(SBPortalView *)self->_leftSideContentPortalView setUserInteractionEnabled:0];
  [(SBPortalView *)self->_leftSideContentPortalView setHidden:1];
  [(UIView *)self->_containerView addSubview:self->_leftSideContentPortalView];
  v16 = [[SBPortalView alloc] initWithFrame:v5, v6, v7, v8];
  rightSideContentPortalView = self->_rightSideContentPortalView;
  self->_rightSideContentPortalView = v16;

  v18 = self->_rightSideContentPortalView;
  *&v32.a = v31;
  *&v32.c = v30;
  *&v32.tx = v29;
  CGAffineTransformScale(&v33, &v32, -1.0, 1.0);
  [(SBPortalView *)v18 setTransform:&v33];
  [(SBPortalView *)self->_rightSideContentPortalView setUserInteractionEnabled:0];
  [(SBPortalView *)self->_rightSideContentPortalView setHidden:1];
  [(UIView *)self->_containerView addSubview:self->_rightSideContentPortalView];
  v19 = [SBPIPStashView alloc];
  [(UIView *)self->_containerView bounds];
  v20 = [(SBPIPStashView *)v19 initWithFrame:self->_settings settings:?];
  stashView = self->_stashView;
  self->_stashView = v20;

  v22 = self->_stashView;
  [(SBPIPStashableWrapperViewController *)self _continuousCornerRadius];
  [(SBPIPStashView *)v22 _setContinuousCornerRadius:?];
  [(SBPIPStashView *)self->_stashView setHidden:1];
  [(SBPIPStashView *)self->_stashView setUserInteractionEnabled:0];
  [(UIView *)self->_containerView addSubview:self->_stashView];
  v23 = [(SBPIPShadowSettings *)self->_shadowSettings bodyShadowSettings];
  v24 = [(SBPIPStashableWrapperViewController *)self _newShadowViewWithSettings:v23];
  shadowView = self->_shadowView;
  self->_shadowView = v24;

  [v3 insertSubview:self->_shadowView atIndex:0];
  v26 = [(SBPIPShadowSettings *)self->_shadowSettings tabShadowSettings];
  v27 = [(SBPIPStashableWrapperViewController *)self _newShadowViewWithSettings:v26];
  tabShadowView = self->_tabShadowView;
  self->_tabShadowView = v27;

  [(UIView *)self->_tabShadowView setHidden:1];
  [v3 insertSubview:self->_tabShadowView atIndex:0];
  [(SBPIPStashableWrapperViewController *)self _addMaskViewSubviewIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v30.receiver = self;
  v30.super_class = SBPIPStashableWrapperViewController;
  [(SBPIPStashableWrapperViewController *)&v30 viewWillLayoutSubviews];
  v3 = [(SBPIPStashableWrapperViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_containerView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_shadowView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_containerView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  contentView = self->_contentView;
  if (self->_interactivelyResizing)
  {
    [(UIView *)contentView bounds];
    v22 = v17 / v21;
    memset(&v29, 0, sizeof(v29));
    v23 = *(MEMORY[0x277CBF2C0] + 16);
    *&v28.a = *MEMORY[0x277CBF2C0];
    *&v28.c = v23;
    *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformScale(&v29, &v28, v22, v22);
    v24 = self->_contentView;
    v28 = v29;
    [(UIView *)v24 setTransform:&v28];
    v25 = self->_contentView;
    v31.origin.x = v13;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    MidX = CGRectGetMidX(v31);
    v32.origin.x = v13;
    v32.origin.y = v15;
    v32.size.width = v17;
    v32.size.height = v19;
    [(UIView *)v25 setCenter:MidX, CGRectGetMidY(v32)];
  }

  else
  {
    v27 = *(MEMORY[0x277CBF2C0] + 16);
    *&v29.a = *MEMORY[0x277CBF2C0];
    *&v29.c = v27;
    *&v29.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(UIView *)contentView setTransform:&v29];
    [(UIView *)self->_contentView setFrame:v13, v15, v17, v19];
  }

  [(UIView *)self->_contentView SBPIP_setAllowsEdgeAntialiasing:self->_interactivelyResizing];
  [(UIView *)self->_contentView setNeedsLayout];
  [(UIView *)self->_contentView layoutIfNeeded];
  [(SBPIPStashableWrapperViewController *)self _layoutStashTabViewsIfNeeded];
}

- (CGSize)preferredContentSize
{
  [(UIViewController *)self->_contentViewController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_layoutStashTabViewsIfNeeded
{
  [(UIView *)self->_containerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v18 = WeakRetained;
    [WeakRetained bounds];
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    v13 = CGRectEqualToRect(v20, v25);
    v12 = v18;
    if (!v13)
    {
      [v18 setFrame:{v4, v6, v8, v10}];
      [v18 layoutIfNeeded];
      tabShadowView = self->_tabShadowView;
      [v18 tabViewBounds];
      [(UIView *)tabShadowView setBounds:?];
      v15 = self->_tabShadowView;
      [v18 center];
      [(UIView *)v15 setCenter:?];
      [(UIView *)self->_tabShadowView layoutIfNeeded];
      leftSideContentPortalView = self->_leftSideContentPortalView;
      v21.origin.x = v4;
      v21.origin.y = v6;
      v21.size.width = v8;
      v21.size.height = v10;
      v22 = CGRectOffset(v21, -(v8 + -1.0), 0.0);
      [(SBPortalView *)leftSideContentPortalView setFrame:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
      rightSideContentPortalView = self->_rightSideContentPortalView;
      v23.origin.x = v4;
      v23.origin.y = v6;
      v23.size.width = v8;
      v23.size.height = v10;
      v24 = CGRectOffset(v23, v8 + -1.0, 0.0);
      [(SBPortalView *)rightSideContentPortalView setFrame:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
      [(SBPortalView *)self->_leftSideContentPortalView layoutIfNeeded];
      [(SBPortalView *)self->_rightSideContentPortalView layoutIfNeeded];
      [(SBPIPStashView *)self->_stashView setFrame:v4, v6, v8, v10];
      [(SBPIPStashView *)self->_stashView layoutIfNeeded];
      v12 = v18;
    }
  }
}

- (void)_setStashedTabHidden:(BOOL)a3 left:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3)
  {
    [(UIView *)self->_tabShadowView setAlpha:0.0];
    [(UIView *)self->_tabShadowView setHidden:0];
    [(SBPIPStashableWrapperViewController *)self _setPortalActive:1 left:v4];
    [(SBPIPStashableWrapperViewController *)self _setStashMaskActive:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
  [WeakRetained setTabHidden:v5 left:v4];

  stashView = self->_stashView;

  [(SBPIPStashView *)stashView setChevronHidden:v5 left:v4];
}

- (void)_setPortalActive:(BOOL)a3 left:(BOOL)a4
{
  v4 = a4;
  leftSideContentPortalView = self->_leftSideContentPortalView;
  v7 = !a3;
  v8 = a3 && a4;
  if (a3 && a4)
  {
    contentView = self->_contentView;
  }

  else
  {
    contentView = 0;
  }

  [(SBPortalView *)leftSideContentPortalView setSourceView:contentView];
  [(SBPortalView *)self->_leftSideContentPortalView setMatchesTransform:1];
  v10 = v7 | v4;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = self->_contentView;
  }

  [(SBPortalView *)self->_rightSideContentPortalView setSourceView:v11];
  [(SBPortalView *)self->_rightSideContentPortalView setMatchesTransform:1];
  [(SBPortalView *)self->_leftSideContentPortalView setHidden:!v8];
  rightSideContentPortalView = self->_rightSideContentPortalView;

  [(SBPortalView *)rightSideContentPortalView setHidden:v10];
}

- (void)_setStashMaskActive:(BOOL)a3
{
  v3 = a3;
  p_stashMaskView = &self->_stashMaskView;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(p_stashMaskView);
    if (WeakRetained)
    {
      v7 = [(UIView *)self->_containerView maskView];

      if (!v7)
      {
        [WeakRetained setHidden:0];
        [(UIView *)self->_containerView setMaskView:WeakRetained];
        v8 = [(SBPIPStashableWrapperViewController *)self view];
        [v8 setHitTestExtenderView:WeakRetained];
      }
    }
  }

  else
  {
    objc_storeWeak(p_stashMaskView, 0);
    [(UIView *)self->_containerView setMaskView:0];
    [(SBPIPStashableWrapperViewController *)self _addMaskViewSubviewIfNeeded];
    WeakRetained = [(SBPIPStashableWrapperViewController *)self view];
    [WeakRetained setHitTestExtenderView:0];
  }

  [(SBPIPStashableWrapperViewController *)self _updateContentCornerRadiusForMaskActive:v3];
}

- (void)_updateContentCornerRadiusForMaskActive:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__SBPIPStashableWrapperViewController__updateContentCornerRadiusForMaskActive___block_invoke;
  v3[3] = &unk_2783A8C18;
  v3[4] = self;
  [MEMORY[0x277D75D18] SBPIP_performWithoutRetargetingAnimation:v3];
}

void __79__SBPIPStashableWrapperViewController__updateContentCornerRadiusForMaskActive___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (void)_addMaskViewSubviewIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);

  if (!WeakRetained)
  {
    v4 = [SBPIPStashedMaskView alloc];
    [(UIView *)self->_containerView bounds];
    obj = [SBPIPStashedMaskView initWithFrame:v4 minimumStashTabSize:"initWithFrame:minimumStashTabSize:"];
    [(SBPIPStashedMaskView *)obj setTabShadowView:self->_tabShadowView];
    [(SBPIPStashedMaskView *)obj setHidden:1];
    [(SBPIPStashableWrapperViewController *)self _continuousCornerRadius];
    [(SBPIPStashedMaskView *)obj _setContinuousCornerRadius:?];
    [(UIView *)self->_containerView addSubview:obj];
    objc_storeWeak(&self->_stashMaskView, obj);
  }
}

- (void)_resetStashTabViewsIfPossible
{
  if (self->_stashTabHidden)
  {
    v3 = [(UIView *)self->_containerView maskView];

    if (v3)
    {
      if (self->_interactivelyResizing || ([(SBPIPStashView *)self->_stashView blurProgress], !BSFloatIsZero()))
      {

        [(SBPIPStashableWrapperViewController *)self _updateContentCornerRadiusForMaskActive:0];
      }

      else
      {
        v4 = SBLogPIP();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[Layout] Removing Stash Tab Views", buf, 2u);
        }

        v5[0] = MEMORY[0x277D85DD0];
        v5[1] = 3221225472;
        v5[2] = __68__SBPIPStashableWrapperViewController__resetStashTabViewsIfPossible__block_invoke;
        v5[3] = &unk_2783A8C18;
        v5[4] = self;
        [MEMORY[0x277D75D18] SBPIP_performWithoutRetargetingAnimation:v5];
      }
    }
  }
}

uint64_t __68__SBPIPStashableWrapperViewController__resetStashTabViewsIfPossible__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1032) setAlpha:0.0];
  [*(*(a1 + 32) + 1032) setHidden:1];
  [*(a1 + 32) _setPortalActive:0 left:0];
  [*(a1 + 32) _setStashMaskActive:0];
  [*(*(a1 + 32) + 1024) resetChevronState];
  [*(*(a1 + 32) + 1032) layoutIfNeeded];
  v2 = *(*(a1 + 32) + 1024);

  return [v2 layoutIfNeeded];
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  if (![(SBPIPStashableWrapperViewController *)self shouldAutorotate])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBPIPStashableWrapperViewController;
  return [(SBPIPStashableWrapperViewController *)&v4 interfaceOrientation];
}

- (void)_handleTapWhileStashedGestureRecognizer:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained stashableWrapper:self didReceivedTapGesture:v5];
  }
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  v7 = a4;
  if ([v7 hasPrefix:@"bodyShadowSettings"])
  {
    v5 = [(SBPIPShadowSettings *)self->_shadowSettings bodyShadowSettings];
    v6 = &OBJC_IVAR___SBPIPStashableWrapperViewController__shadowView;
  }

  else
  {
    if (![v7 hasPrefix:@"tabShadowSettings"])
    {
      goto LABEL_6;
    }

    v5 = [(SBPIPShadowSettings *)self->_shadowSettings tabShadowSettings];
    v6 = &OBJC_IVAR___SBPIPStashableWrapperViewController__tabShadowView;
  }

  [(SBPIPStashableWrapperViewController *)self _applyDropShadowSettings:v5 toView:*(&self->super.super.super.isa + *v6)];

LABEL_6:
}

- (id)_newShadowViewWithSettings:(id)a3
{
  v4 = MEMORY[0x277D75D18];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setUserInteractionEnabled:0];
  v8 = [v7 layer];
  [v8 setAllowsEdgeAntialiasing:1];

  v9 = [v7 layer];
  [v9 setShadowPathIsBounds:1];

  [(SBPIPStashableWrapperViewController *)self _applyDropShadowSettings:v5 toView:v7];
  return v7;
}

- (void)_applyDropShadowSettings:(id)a3 toView:(id)a4
{
  v20 = a4;
  v5 = a3;
  [v5 opacity];
  v7 = v6;
  [v5 offsetX];
  v9 = v8;
  [v5 offsetY];
  v11 = v10;
  [v5 radius];
  v13 = v12;
  [v5 continuousCornerRadius];
  v15 = v14;

  v16 = [v20 layer];
  [v16 setShadowOffset:{v9, v11}];

  v17 = [v20 layer];
  *&v18 = v7;
  [v17 setShadowOpacity:v18];

  v19 = [v20 layer];
  [v19 setShadowRadius:v13];

  [v20 _setContinuousCornerRadius:v15];
}

- (SBPIPStashableWrapperViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)minimumStashTabSize
{
  width = self->_minimumStashTabSize.width;
  height = self->_minimumStashTabSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end