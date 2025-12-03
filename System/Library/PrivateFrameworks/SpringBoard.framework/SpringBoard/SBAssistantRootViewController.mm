@interface SBAssistantRootViewController
- (BOOL)dimsContentBelow;
- (SBAssistantRootViewController)initWithScreen:(id)screen;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)childViewControllerForScreenEdgesDeferringSystemGestures;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)_updateHomeAffordance;
- (void)_updateKeyboardForHomeGesture;
- (void)getRotationContentSettings:(id *)settings forWindow:(id)window;
- (void)loadView;
- (void)screen;
- (void)setDimsContentBelow:(BOOL)below;
- (void)setFluidDismissalState:(id)state;
- (void)setNeedsUpdateOfHomeIndicatorAutoHidden;
- (void)setNeedsUpdateOfScreenEdgesDeferringSystemGestures;
- (void)setOwnsHomeGesture:(BOOL)gesture;
- (void)setScreen:(uint64_t)screen;
- (void)setShowsHomeAffordance:(BOOL)affordance;
- (void)viewWillLayoutSubviews;
@end

@implementation SBAssistantRootViewController

- (SBAssistantRootViewController)initWithScreen:(id)screen
{
  screenCopy = screen;
  v11.receiver = self;
  v11.super_class = SBAssistantRootViewController;
  v6 = [(SBAssistantRootViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screen, screen);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v7 selector:sel__keyboardWillHideNotification_ name:*MEMORY[0x277D76C50] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v7 selector:sel__keyboardWillShowNotification_ name:*MEMORY[0x277D76C60] object:0];

  return v7;
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = SBAssistantRootViewController;
  [(SBFTouchPassThroughViewController *)&v21 loadView];
  v3 = objc_alloc(MEMORY[0x277D65F80]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  clippingView = self->_clippingView;
  self->_clippingView = v8;

  v10 = self->_clippingView;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SBFTouchPassThroughView *)v10 setBackgroundColor:clearColor];

  [(SBFTouchPassThroughView *)self->_clippingView setClipsToBounds:1];
  view = [(SBAssistantRootViewController *)self view];
  [view addSubview:self->_clippingView];

  v13 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v4, v5, v6, v7}];
  contentView = self->_contentView;
  self->_contentView = v13;

  v15 = self->_contentView;
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(SBFTouchPassThroughView *)v15 setBackgroundColor:clearColor2];

  [(SBFTouchPassThroughView *)self->_clippingView addSubview:self->_contentView];
  v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  dimmingView = self->_dimmingView;
  self->_dimmingView = v17;

  [(UIView *)self->_dimmingView setAlpha:0.0];
  v19 = self->_dimmingView;
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v19 setBackgroundColor:blackColor];

  [(UIView *)self->_dimmingView bs_setHitTestingDisabled:1];
  [(SBFTouchPassThroughView *)self->_clippingView addSubview:self->_dimmingView];
  [(SBAssistantRootViewController *)self _updateHomeAffordance];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = SBAssistantRootViewController;
  [(SBAssistantRootViewController *)&v15 viewWillLayoutSubviews];
  view = [(SBAssistantRootViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SBFTouchPassThroughView *)self->_clippingView setFrame:v5, v7, v9, v11];
  [(SBFTouchPassThroughView *)self->_clippingView bringSubviewToFront:self->_dimmingView];
  [(SBFTouchPassThroughView *)self->_clippingView bringSubviewToFront:self->_contentView];
  if (self->_homeAffordanceView)
  {
    [(SBFTouchPassThroughView *)self->_clippingView bringSubviewToFront:?];
  }

  [(SBFTouchPassThroughView *)self->_contentView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_dimmingView setFrame:v5, v7, v9, v11];
  siriPresentationViewController = self->_siriPresentationViewController;
  if (siriPresentationViewController)
  {
    view2 = [(SiriPresentationSpringBoardMainScreenViewController *)siriPresentationViewController view];
    [view2 setFrame:{v5, v7, v9, v11}];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBAssistantCanRepositionOrbIfNecessary" object:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  siriPresentationViewController = self->_siriPresentationViewController;
  if (siriPresentationViewController)
  {
    return [(SiriPresentationSpringBoardMainScreenViewController *)siriPresentationViewController supportedInterfaceOrientations];
  }

  else
  {
    return 30;
  }
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  childViewControllerForHomeIndicatorAutoHidden = [(SiriPresentationSpringBoardMainScreenViewController *)self->_siriPresentationViewController childViewControllerForHomeIndicatorAutoHidden];
  siriPresentationViewController = childViewControllerForHomeIndicatorAutoHidden;
  if (!childViewControllerForHomeIndicatorAutoHidden)
  {
    siriPresentationViewController = self->_siriPresentationViewController;
  }

  v5 = siriPresentationViewController;

  return siriPresentationViewController;
}

- (void)setNeedsUpdateOfHomeIndicatorAutoHidden
{
  v3.receiver = self;
  v3.super_class = SBAssistantRootViewController;
  [(SBAssistantRootViewController *)&v3 setNeedsUpdateOfHomeIndicatorAutoHidden];
  [(SBAssistantRootViewController *)self _updateHomeAffordance];
}

- (id)childViewControllerForScreenEdgesDeferringSystemGestures
{
  childViewControllerForScreenEdgesDeferringSystemGestures = [(SiriPresentationSpringBoardMainScreenViewController *)self->_siriPresentationViewController childViewControllerForScreenEdgesDeferringSystemGestures];
  siriPresentationViewController = childViewControllerForScreenEdgesDeferringSystemGestures;
  if (!childViewControllerForScreenEdgesDeferringSystemGestures)
  {
    siriPresentationViewController = self->_siriPresentationViewController;
  }

  v5 = siriPresentationViewController;

  return siriPresentationViewController;
}

- (void)setNeedsUpdateOfScreenEdgesDeferringSystemGestures
{
  v3.receiver = self;
  v3.super_class = SBAssistantRootViewController;
  [(SBAssistantRootViewController *)&v3 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  [(SBAssistantRootViewController *)self _updateHomeAffordance];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  _sbWindowScene = [controller _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];

  statusBar = [statusBarManager statusBar];
  [statusBar defaultHeight];
  v10 = v9;

  sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  v12 = [sb_thisDeviceDisplayEdgeInfo sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:v10];

  interfaceOrientation = [(SBAssistantRootViewController *)self interfaceOrientation];
  traitCollection = [(SBAssistantRootViewController *)self traitCollection];
  [v12 sb_orientedEdgeInsetsForInterfaceOrientation:interfaceOrientation traitCollection:traitCollection];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (absolute)
  {
    *absolute = 1;
  }

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.right = v26;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (void)getRotationContentSettings:(id *)settings forWindow:(id)window
{
  if (settings)
  {
    settings->var6 = 0;
  }
}

- (void)setOwnsHomeGesture:(BOOL)gesture
{
  if (self->_ownsHomeGesture != gesture)
  {
    self->_ownsHomeGesture = gesture;
    [(SBAssistantRootViewController *)self _updateHomeAffordance];
  }
}

- (void)setShowsHomeAffordance:(BOOL)affordance
{
  if (self->_showsHomeAffordance != affordance)
  {
    self->_showsHomeAffordance = affordance;
    [(SBAssistantRootViewController *)self _updateHomeAffordance];
  }
}

- (void)_updateHomeAffordance
{
  viewIfLoaded = [(SBAssistantRootViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    if (self->_showsHomeAffordance)
    {
      if (self->_ownsHomeGesture)
      {
        if (!self->_homeAffordanceView && SBFEffectiveHomeButtonType() == 2)
        {
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __54__SBAssistantRootViewController__updateHomeAffordance__block_invoke;
          v24[3] = &unk_2783A8C18;
          v24[4] = self;
          [MEMORY[0x277D75D18] performWithoutAnimation:v24];
        }

        v4 = 1;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    homeAffordanceView = self->_homeAffordanceView;
    if (homeAffordanceView)
    {
      childViewControllerForHomeIndicatorAutoHidden = [(SBAssistantRootViewController *)self childViewControllerForHomeIndicatorAutoHidden];
      -[SBHomeGrabberView setAutoHides:](homeAffordanceView, "setAutoHides:", [childViewControllerForHomeIndicatorAutoHidden prefersHomeIndicatorAutoHidden]);

      childViewControllerForScreenEdgesDeferringSystemGestures = [(SBAssistantRootViewController *)self childViewControllerForScreenEdgesDeferringSystemGestures];
      v8 = ([childViewControllerForScreenEdgesDeferringSystemGestures preferredScreenEdgesDeferringSystemGestures] >> 2) & 1;

      [(SBHomeGrabberView *)self->_homeAffordanceView setEdgeProtectEnabled:v8];
      fluidDismissalState = [(SBAssistantRootViewController *)self fluidDismissalState];
      v10 = fluidDismissalState;
      if (fluidDismissalState)
      {
        [fluidDismissalState contentRect];
        v12 = v11;
        [(SBFTouchPassThroughView *)self->_clippingView bounds];
        v13 = self->_homeAffordanceView;
        CGAffineTransformMakeScale(&v23, v12 / v14, v12 / v14);
        [(SBHomeGrabberView *)v13 setTransform:&v23];
        v15 = self->_homeAffordanceView;
        UIRectGetCenter();
        [(SBHomeGrabberView *)v15 setCenter:?];
      }

      else
      {
        v16 = self->_homeAffordanceView;
        v17 = *(MEMORY[0x277CBF2C0] + 16);
        *&v23.a = *MEMORY[0x277CBF2C0];
        *&v23.c = v17;
        *&v23.tx = *(MEMORY[0x277CBF2C0] + 32);
        [(SBHomeGrabberView *)v16 setTransform:&v23];
        v18 = self->_homeAffordanceView;
        [(SBFTouchPassThroughView *)self->_clippingView bounds];
        [(SBHomeGrabberView *)v18 setFrame:?];
      }

      grabberSettings = self->_grabberSettings;
      if (v4)
      {
        [(SBFHomeGrabberSettings *)grabberSettings unhideForHomeGestureOwnershipAnimationSettings];
      }

      else
      {
        [(SBFHomeGrabberSettings *)grabberSettings hideForHomeGestureOwnershipAnimationSettings];
      }
      v20 = ;
      v21 = self->_homeAffordanceView;
      bSAnimationSettings = [v20 BSAnimationSettings];
      [(SBHomeGrabberView *)v21 setHidden:v4 ^ 1 forReason:@"hide assistant affordance when unowned" withAnimationSettings:bSAnimationSettings];

      [(SBHomeGrabberView *)self->_homeAffordanceView setHomeAffordanceInteractionEnabled:v4];
    }

    [(SBAssistantRootViewController *)self _updateKeyboardForHomeGesture];
  }
}

uint64_t __54__SBAssistantRootViewController__updateHomeAffordance__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__SBAssistantRootViewController__updateHomeAffordance__block_invoke_2;
  v2[3] = &unk_2783A8C18;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v2];
}

void __54__SBAssistantRootViewController__updateHomeAffordance__block_invoke_2(uint64_t a1)
{
  v2 = [SBHomeGrabberView alloc];
  [*(*(a1 + 32) + 1008) bounds];
  v3 = [(SBHomeGrabberView *)v2 initWithFrame:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1040);
  *(v4 + 1040) = v3;

  [*(*(a1 + 32) + 1040) setAutoresizingMask:18];
  [*(*(a1 + 32) + 1040) setColorBias:2];
  [*(*(a1 + 32) + 1040) setHidden:1 forReason:@"hide assistant affordance when unowned" withAnimationSettings:0];
  [*(*(a1 + 32) + 1008) addSubview:*(*(a1 + 32) + 1040)];
  v6 = [MEMORY[0x277D65E80] rootSettings];
  v7 = *(a1 + 32);
  v8 = *(v7 + 1056);
  *(v7 + 1056) = v6;
}

- (void)_updateKeyboardForHomeGesture
{
  fluidDismissalState = [(SBAssistantRootViewController *)self fluidDismissalState];

  if ([(SBAssistantRootViewController *)self ownsHomeGesture])
  {
    keyboardPresented = self->_keyboardPresented;
    if (keyboardPresented && fluidDismissalState == 0)
    {
      goto LABEL_13;
    }

    if (self->_keyboardPresented && fluidDismissalState != 0)
    {
      keyboardStashed = 1;
      goto LABEL_20;
    }

    keyboardStashed = (fluidDismissalState != 0) & ~keyboardPresented & self->_keyboardStashed;
    if (((fluidDismissalState != 0) & ~keyboardPresented) == 0 && self->_keyboardStashed)
    {
LABEL_13:
      keyboardStashed = 0;
      goto LABEL_16;
    }

LABEL_20:
    keyboardHomeAffordanceAssertion = self->_keyboardHomeAffordanceAssertion;
    if (keyboardHomeAffordanceAssertion)
    {
      [(SBKeyboardHomeAffordanceAssertion *)keyboardHomeAffordanceAssertion invalidate];
      v13 = self->_keyboardHomeAffordanceAssertion;
      self->_keyboardHomeAffordanceAssertion = 0;
    }

    goto LABEL_22;
  }

  if (!fluidDismissalState)
  {
    keyboardStashed = 0;
    goto LABEL_20;
  }

  keyboardStashed = self->_keyboardStashed;
  if (!self->_keyboardHomeAffordanceAssertion)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (SBFEffectiveHomeButtonType() != 2)
  {
    goto LABEL_20;
  }

  if (!self->_keyboardHomeAffordanceAssertion)
  {
    view = [(SBAssistantRootViewController *)self view];
    window = [view window];
    v9 = [SBKeyboardHomeAffordanceAssertion assertionForGestureWindow:window];
    v10 = self->_keyboardHomeAffordanceAssertion;
    self->_keyboardHomeAffordanceAssertion = v9;
  }

LABEL_22:
  if (keyboardStashed)
  {
    if (self->_keyboardStashed)
    {
      return;
    }

    self->_keyboardStashed = 1;
    mEMORY[0x277D75830] = [MEMORY[0x277D75830] sharedInstance];
    v14 = [MEMORY[0x277CCAE60] valueWithPointer:self];
    [mEMORY[0x277D75830] _preserveInputViewsWithId:v14 animated:1];
  }

  else
  {
    if (!self->_keyboardStashed)
    {
      return;
    }

    self->_keyboardStashed = 0;
    mEMORY[0x277D75830] = [MEMORY[0x277D75830] sharedInstance];
    v14 = [MEMORY[0x277CCAE60] valueWithPointer:self];
    [mEMORY[0x277D75830] _restoreInputViewsWithId:v14 animated:1];
  }
}

- (BOOL)dimsContentBelow
{
  [(UIView *)self->_dimmingView alpha];

  return BSFloatGreaterThanFloat();
}

- (void)setDimsContentBelow:(BOOL)below
{
  belowCopy = below;
  rootSettings = [MEMORY[0x277D65F38] rootSettings];
  systemAssistantExperienceSettings = [rootSettings systemAssistantExperienceSettings];

  v7 = 0;
  if (belowCopy)
  {
    traitCollection = [(SBAssistantRootViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      [systemAssistantExperienceSettings typeToSiriDarkInterfaceDimmingAlpha];
    }

    else
    {
      [systemAssistantExperienceSettings typeToSiriLightInterfaceDimmingAlpha];
    }

    v7 = v10;
  }

  v11 = MEMORY[0x277D75D18];
  typeToSiriDimmingAnimationSettings = [systemAssistantExperienceSettings typeToSiriDimmingAnimationSettings];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SBAssistantRootViewController_setDimsContentBelow___block_invoke;
  v13[3] = &unk_2783A8BC8;
  v13[4] = self;
  v13[5] = v7;
  [v11 sb_animateWithSettings:typeToSiriDimmingAnimationSettings mode:3 animations:v13 completion:0];
}

- (void)_setStatusBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (animated)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__SBAssistantRootViewController__setStatusBarHidden_animated___block_invoke;
    v6[3] = &unk_2783A9F58;
    v6[4] = self;
    hiddenCopy = hidden;
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v6 options:0 animations:0.35 completion:0.0];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __62__SBAssistantRootViewController__setStatusBarHidden_animated___block_invoke_2;
    v4[3] = &unk_2783A9F58;
    v4[4] = self;
    hiddenCopy2 = hidden;
    [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  }
}

- (void)setFluidDismissalState:(id)state
{
  stateCopy = state;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_fluidDismissalState, state);
    [(SiriPresentationSpringBoardMainScreenViewController *)self->_siriPresentationViewController setFluidDismissalState:stateCopy];
    [(SBAssistantRootViewController *)self _updateHomeAffordance];
    [(SBAssistantRootViewController *)self _updateKeyboardForHomeGesture];
    if (stateCopy)
    {
      if ([stateCopy transitionPhase])
      {
        v5 = [stateCopy transitionPhase] == 1;
      }

      else
      {
        view = [(SBAssistantRootViewController *)self view];
        [view bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [stateCopy contentRect];
        v17.origin.x = v8;
        v17.origin.y = v10;
        v17.size.width = v12;
        v17.size.height = v14;
        CGRectGetWidth(v17);
        v5 = BSFloatLessThanFloat();
      }
    }

    else
    {
      v5 = 0;
    }

    [(SBAssistantRootViewController *)self _setStatusBarHidden:v5 animated:1];
  }
}

- (void)setScreen:(uint64_t)screen
{
  if (screen)
  {
    objc_storeStrong((screen + 1032), a2);
  }
}

- (void)screen
{
  if (self)
  {
    v2 = self[129];
    if (v2)
    {
      self = v2;
    }

    else
    {
      self = [MEMORY[0x277D759A0] mainScreen];
    }

    v1 = vars8;
  }

  return self;
}

@end