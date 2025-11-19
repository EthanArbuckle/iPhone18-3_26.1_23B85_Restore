@interface SBHomeScreenViewController
- (BOOL)shouldAutorotate;
- (BOOL)usesGlassGroup;
- (CGRect)_homeAffordanceFrameForHomeAffordanceInteraction;
- (CGRect)_homeAffordanceFrameForLayout;
- (SBHomeScreenViewController)initWithWindowScene:(id)a3 contextProvider:(id)a4 iconManager:(id)a5 appearanceController:(id)a6;
- (UIView)iconContentView;
- (_UILegibilitySettings)legibilitySettings;
- (id)_autorotationPreventionReasons;
- (id)appearanceController;
- (id)containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:(BOOL)a3;
- (id)containerViewForPresentingContextMenuForIconView:(id)a3;
- (id)contextProvider;
- (id)iconManager;
- (id)windowScene;
- (int64_t)effectiveOrientation;
- (uint64_t)hasPerformedInitialLayout;
- (uint64_t)homeAffordanceInteraction;
- (uint64_t)homeAffordanceView;
- (uint64_t)homeScreenFloatingDockAssertion;
- (uint64_t)isRotating;
- (uint64_t)returnToSpotlightPolicy;
- (uint64_t)setPerformedInitialLayout:(uint64_t)result;
- (uint64_t)setRotating:(uint64_t)result;
- (uint64_t)widgetEditFloatingDockAssertion;
- (uint64_t)widgetEditViewControllerOrientationUpdateDeferralAssertion;
- (uint64_t)zStackParticipant;
- (unint64_t)possibleInterfaceOrientations;
- (unint64_t)supportedInterfaceOrientations;
- (void)_acquireFloatingDockBehaviorAssertionIfNecessaryForFloatingDockController:(id)a3;
- (void)_acquireForceTouchOrientationUpdateDeferralAssertionForIconView:(id)a3;
- (void)_acquireForceTouchWindowLevelAssertionForIconView:(id)a3;
- (void)_animateTransitionToSize:(CGSize)a3 andInterfaceOrientation:(int64_t)a4 withTransitionContext:(id)a5;
- (void)_appIconForceTouchControllerDidDismissNotification:(id)a3;
- (void)_appIconForceTouchControllerWillPresentNotification:(id)a3;
- (void)_autorotationPreventionReasons;
- (void)_beginAppearanceTransitionForChildViewControllersToVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_cleanupAfterTransitionToSize:(CGSize)a3 fromInterfaceOrientation:(int64_t)a4 withTransitionContext:(id)a5;
- (void)_dismissAllIconForceTouchControllersDidFire:(id)a3;
- (void)_endAppearanceTransitionForChildViewControllersToVisible:(BOOL)a3;
- (void)_floatingDockFrameDidChange:(id)a3;
- (void)_iconEditingDidChange:(id)a3;
- (void)_performInitialLayoutWithOrientation:(int64_t)a3;
- (void)_prepareForTransitionToSize:(CGSize)a3 andInterfaceOrientation:(int64_t)a4 withTransitionCoordinator:(id)a5;
- (void)_relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:(id)a3;
- (void)_relinquishForceTouchWindowLevelAssertionForIconView:(id)a3;
- (void)_updateHomeAffordanceInteraction;
- (void)_updateHomeAffordanceView;
- (void)_updateIconContentViewOrientationAndLayoutIfNeeded;
- (void)_widgetEditViewDidDisappearImplementation;
- (void)_widgetEditViewWillAppear:(id)a3;
- (void)dealloc;
- (void)homeAffordanceInteractionDidRecognizeSingleTap:(id)a3;
- (void)loadView;
- (void)nudgeIconInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)setAllowIconRotation:(BOOL)a3 forReason:(id)a4;
- (void)setHomeAffordanceInteraction:(uint64_t)a1;
- (void)setHomeAffordanceInteractionAllowed:(BOOL)a3;
- (void)setHomeAffordanceView:(uint64_t)a1;
- (void)setHomeScreenFloatingDockAssertion:(uint64_t)a1;
- (void)setIconContentHidden:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setUsesGlassGroup:(BOOL)a3;
- (void)setWidgetEditFloatingDockAssertion:(uint64_t)a1;
- (void)setWidgetEditViewControllerOrientationUpdateDeferralAssertion:(uint64_t)a1;
- (void)setZStackParticipant:(uint64_t)a1;
- (void)shouldAutorotate;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBHomeScreenViewController

- (void)_updateHomeAffordanceInteraction
{
  if ([(SBHomeScreenViewController *)self isHomeAffordanceInteractionAllowed])
  {
    if (self)
    {
      zStackParticipant = self->_zStackParticipant;
    }

    else
    {
      zStackParticipant = 0;
    }

    v4 = [(SBFZStackParticipant *)zStackParticipant activationState]== 0;
  }

  else
  {
    v4 = 0;
  }

  if (self)
  {
    homeAffordanceInteraction = self->_homeAffordanceInteraction;
  }

  else
  {
    homeAffordanceInteraction = 0;
  }

  [(SBFHomeAffordanceInteraction *)homeAffordanceInteraction setEnabled:v4];
}

- (int64_t)effectiveOrientation
{
  if (([(SBHomeScreenViewController *)self isViewLoaded]& 1) == 0)
  {
    [(SBHomeScreenViewController *)self allowedInterfaceOrientations];
    return 1;
  }

  v3 = [(SBHomeScreenViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(SBHomeScreenViewController *)self view];
    v6 = [v5 window];
    v7 = [v6 _windowInterfaceOrientation];
  }

  else
  {
    v5 = [(SBHomeScreenViewController *)self _iconContentView];
    v7 = [v5 orientation];
  }

  [(SBHomeScreenViewController *)self allowedInterfaceOrientations];
  if (!v7)
  {
    return 1;
  }

  if (SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    return v7;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)possibleInterfaceOrientations
{
  if (![SBApp homeScreenRotationStyleWantsUIKitRotation])
  {
    return 2;
  }

  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v2 = [v4 userInterfaceIdiom] == 1;
  }

  if (v2)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (void)viewWillLayoutSubviews
{
  [(SBHomeScreenViewController *)self _updateIconContentViewOrientationAndLayoutIfNeeded];
  v3 = [(SBHomeScreenViewController *)self view];
  v4 = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  v5 = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
  v6 = [v5 libraryViewControllerForWindowScene:v4];
  v7 = [v6 viewIfLoaded];
  v8 = [v7 superview];

  if (v8 == v3)
  {
    v9 = v7;
    [v3 bringSubviewToFront:v9];
    v10 = [v6 externalBackgroundView];
    v11 = [v10 superview];

    if (v11 == v3)
    {
      v12 = v10;

      [v3 insertSubview:v12 belowSubview:v9];
      v9 = v12;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [v5 homeScreenOverlayController];
  v14 = [v13 viewController];
  v15 = [v14 view];

  v16 = [v15 superview];

  if (v16 == v3)
  {
    if (v9)
    {
      [v3 insertSubview:v15 belowSubview:v9];
    }

    else
    {
      [v3 bringSubviewToFront:v15];
    }
  }

  v17 = [(SBHomeScreenViewController *)self iconEffectView];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 superview];

    if (v19)
    {
      [v3 sendSubviewToBack:v18];
    }

    else
    {
      [v3 insertSubview:v18 atIndex:0];
    }
  }

  v20.receiver = self;
  v20.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v20 viewWillLayoutSubviews];
}

- (void)_updateIconContentViewOrientationAndLayoutIfNeeded
{
  if (!self->_rotating)
  {
    [(SBHomeScreenViewController *)self _updateIconContentViewOrientationAndLayoutIfNeeded];
  }
}

- (UIView)iconContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconContentView);

  return WeakRetained;
}

- (id)iconManager
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 139);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)contextProvider
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 138);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)windowScene
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 136);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v16 viewDidLayoutSubviews];
  v3 = [(SBHomeScreenViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBHomeScreenViewController *)self iconContentView];
  [v12 setBounds:{v5, v7, v9, v11}];
  UIRectGetCenter();
  [v12 setCenter:?];
  if (self)
  {
    v13 = self->_homeAffordanceView;
    if (v13)
    {
      [(SBHomeScreenViewController *)self _homeAffordanceFrameForLayout];
      SBRectWithSize();
      [(SBFHomeAffordanceView *)v13 setBounds:?];
      UIRectGetCenter();
      [(SBFHomeAffordanceView *)v13 setCenter:?];
      [(SBFHomeAffordanceInteraction *)self->_homeAffordanceInteraction setNeedsUpdate];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [(SBHomeScreenViewController *)self iconEffectView];
  v15 = v14;
  if (v14)
  {
    [v14 setBounds:{v5, v7, v9, v11}];
    UIRectGetCenter();
    [v15 setCenter:?];
  }
}

- (CGRect)_homeAffordanceFrameForLayout
{
  v3 = [(SBHomeScreenViewController *)self view];
  [v3 bounds];
  CGRectGetMidX(v40);
  v4 = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
  v5 = [v4 rootFolderController];
  if ([v5 isDockExternal])
  {
    v6 = [v4 floatingDockViewController];
    v7 = [v6 view];
    v8 = [v7 _screen];
    v9 = [v8 fixedCoordinateSpace];

    [v6 floatingDockScreenFrame];
    [v3 convertRect:v9 fromCoordinateSpace:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    recta = v16;
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_1_30();
    v41.origin.x = v11;
    v41.origin.y = v13;
    v41.size.width = v15;
    v41.size.height = recta;
    CGRectGetMaxY(v41);
  }

  else
  {
    v6 = [v5 folderView];
    v9 = [v6 dockView];
    v17 = [v9 dockListView];
    [v17 bounds];
    [v3 convertRect:v17 fromView:?];
    rectb = v18;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_1_30();
    v42.origin.x = rectb;
    v42.origin.y = v20;
    v42.size.width = v22;
    v42.size.height = v24;
    CGRectGetMaxY(v42);
  }

  [(SBHomeScreenViewController *)self _homeAffordanceFrameForHomeAffordanceInteraction];
  v25 = [(SBHomeScreenViewController *)self traitCollection];
  [v25 displayScale];
  UIRectCenteredAboutPointScale();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = v27;
  v35 = v29;
  v36 = v31;
  v37 = v33;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (CGRect)_homeAffordanceFrameForHomeAffordanceInteraction
{
  v2 = [(SBHomeScreenViewController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [MEMORY[0x277D26708] sharedInstance];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  rect = *MEMORY[0x277CBF3A0];
  v13 = objc_opt_class();
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  [v13 suggestedSizeForContentWidth:v11 withSettings:CGRectGetWidth(v33)];
  v15 = v14;
  v17 = v16;
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  Width = CGRectGetWidth(v34);
  v35.origin.x = rect;
  v35.origin.y = v12;
  v35.size.width = v15;
  v35.size.height = v17;
  v19 = (Width - CGRectGetWidth(v35)) * 0.5;
  v36.origin.x = v4;
  v36.origin.y = v6;
  v36.size.width = v8;
  v36.size.height = v10;
  CGRectGetHeight(v36);
  v37.origin.x = v19;
  v37.origin.y = v12;
  v37.size.width = v15;
  v37.size.height = v17;
  CGRectGetHeight(v37);
  [v11 edgeSpacing];
  SBScreenScale();
  BSRectRoundForScale();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(SBHomeScreenViewController *)self allowedInterfaceOrientations];
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    v5 = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
    if (([v5 hasAnimatingFolder] & 1) != 0 || objc_msgSend(v5, "isIconDragging") && !-[SBHomeScreenViewController homeScreenAutorotatesEvenWhenIconIsDragging](self, "homeScreenAutorotatesEvenWhenIconIsDragging") || objc_msgSend(v5, "isTransitioningHomeScreenState"))
    {
      v6 = [(SBHomeScreenViewController *)self view];
      v7 = [v6 window];

      [v7 interfaceOrientation];
      v3 = XBInterfaceOrientationMaskForInterfaceOrientation();
    }
  }

  return v3;
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  v6 = [(SBHomeScreenViewController *)a1 windowScene];
  v7 = [v6 statusBarManager];
  v8 = [v7 assertionManager];
  *a3 = v8;

  v9 = [v8 newSettingsAssertionWithSettings:a2 atLevel:0 reason:@"Homescreen Child/Presented VC"];
  v10 = *(a1 + 1008);
  *(a1 + 1008) = v9;

  v11 = *(a1 + 1008);
  v12 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  [v11 acquireWithAnimationParameters:v12];
}

- (SBHomeScreenViewController)initWithWindowScene:(id)a3 contextProvider:(id)a4 iconManager:(id)a5 appearanceController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    [SBHomeScreenViewController initWithWindowScene:contextProvider:iconManager:appearanceController:];
  }

  v29.receiver = self;
  v29.super_class = SBHomeScreenViewController;
  v14 = [(SBHomeScreenViewController *)&v29 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_windowScene, v10);
    objc_storeWeak(&v15->_appearanceController, v13);
    objc_storeWeak(&v15->_contextProvider, v11);
    objc_storeWeak(&v15->_iconManager, v12);
    [v11 addFloatingDockControllerObserver:v15];
    v16 = -[SBIconContentView initWithOrientation:]([SBIconContentView alloc], "initWithOrientation:", [SBApp activeInterfaceOrientation]);
    [(SBIconContentView *)v16 setAccessibilityIdentifier:@"Home screen icons"];
    [(SBIconContentView *)v16 _setIgnoreBackdropViewsWhenHiding:1];
    objc_storeWeak(&v15->_iconContentView, v16);
    [(SBHomeScreenViewController *)v15 setIconContentHidden:1];
    if (SBHFeatureEnabled() && [v10 isMainDisplayWindowScene])
    {
      v17 = objc_alloc(MEMORY[0x277D662B0]);
      [(SBIconContentView *)v16 bounds];
      v18 = [v17 initWithFrame:?];
      iconEffectView = v15->_iconEffectView;
      v15->_iconEffectView = v18;
      v20 = v18;

      v21 = [(SBHVisibleContentPresenter *)v20 globalSheenEffect];
      v22 = [(SBHomeScreenViewController *)v15 traitOverrides];
      v23 = objc_opt_self();

      [v22 setObject:v21 forTrait:v23];
    }

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v15 selector:sel__dismissAllIconForceTouchControllersDidFire_ name:*MEMORY[0x277D66598] object:0];
    [v24 addObserver:v15 selector:sel__floatingDockFrameDidChange_ name:@"SBFloatingDockControllerFrameDidChangeNotification" object:0];
    [v24 addObserver:v15 selector:sel__iconEditingDidChange_ name:*MEMORY[0x277D66560] object:0];
    v25 = +[SBHomeScreenReturnToSpotlightPolicy areSpotlightBreadcrumbsEnabled];
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = objc_alloc_init(SBHomeScreenReturnToSpotlightPolicy);
    }

    objc_storeStrong(&v15->_returnToSpotlightPolicy, v26);
    if (!v25)
    {
    }

    v27 = [v10 assistantController];
    [v27 addObserver:v15];

    v15->_homeAffordanceInteractionAllowed = 1;
  }

  return v15;
}

- (void)loadView
{
  v3 = [SBHomeScreenView alloc];
  v4 = [(SBHomeScreenView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SBHomeScreenViewController *)self setView:v4];
}

- (BOOL)shouldAutorotate
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [SBApp homeScreenRotationStyleWantsUIKitRotation];
    if (v3)
    {
      [(SBHomeScreenViewController *)&self->super.super.super.isa shouldAutorotate];
      LOBYTE(v3) = v5;
    }
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v6 viewWillAppear:?];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__appIconForceTouchControllerWillPresentNotification_ name:*MEMORY[0x277D66720] object:0];
  [v5 addObserver:self selector:sel__appIconForceTouchControllerDidDismissNotification_ name:*MEMORY[0x277D66718] object:0];
  [(SBHomeScreenViewController *)self _beginAppearanceTransitionForChildViewControllersToVisible:1 animated:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v5 viewWillDisappear:?];
  [(SBHomeScreenViewController *)self _beginAppearanceTransitionForChildViewControllersToVisible:0 animated:v3];
  [(SBHomeScreenViewController *)self resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v4 viewDidDisappear:a3];
  [(SBHomeScreenViewController *)self _widgetEditViewDidDisappearImplementation];
  [(SBHomeScreenViewController *)self _endAppearanceTransitionForChildViewControllersToVisible:0];
}

- (_UILegibilitySettings)legibilitySettings
{
  v2 = [(SBHomeScreenViewController *)self _homeScreenView];
  v3 = [v2 statusBarLegibilityView];
  v4 = [v3 legibilitySettings];

  return v4;
}

- (void)setLegibilitySettings:(id)a3
{
  v4 = a3;
  v6 = [(SBHomeScreenViewController *)self _homeScreenView];
  v5 = [v6 statusBarLegibilityView];
  [v5 setLegibilitySettings:v4];
}

- (void)setIconContentHidden:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_iconContentHidden != a3)
  {
    v3 = a3;
    self->_iconContentHidden = a3;
    v5 = [(SBHomeScreenViewController *)self _homeScreenView];
    v6 = [(SBHomeScreenViewController *)self iconContentView];
    if (([v6 isDescendantOfView:v5] & 1) == 0)
    {
      [v5 setIconContentView:v6];
    }

    v7 = !v3;
    [(SBHomeScreenViewController *)self _beginAppearanceTransitionForChildViewControllersToVisible:v7 animated:0];
    if (v7)
    {
      v9 = [v5 statusBarLegibilityView];
      [v5 insertSubview:v6 aboveSubview:v9];

      [v6 setHidden:0];
      [(SBHomeScreenViewController *)self _updateIconContentViewOrientationAndLayoutIfNeeded];
      [v6 layoutIfNeeded];
      [(SBHomeScreenViewController *)self _endAppearanceTransitionForChildViewControllersToVisible:v7];
      v10 = [v6 window];
      v11 = [v10 interfaceOrientation];
      v12 = [(SBHomeScreenViewController *)self interfaceOrientation];
      if (v11)
      {
        v13 = v12;
        if (v12 != v11)
        {
          v14 = BKLogOrientationGlobal();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 134218240;
            v16 = v11;
            v17 = 2048;
            v18 = v13;
            _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Home screen orientation did not match between window and view controller (%li vs %li)", &v15, 0x16u);
          }

          [(SBHomeScreenViewController *)self setInterfaceOrientation:v11];
          [(SBHomeScreenViewController *)self _updateIconContentViewOrientationAndLayoutIfNeeded];
        }
      }
    }

    else
    {
      [v6 setHidden:1];
      v8 = [v6 firstResponder];
      [v8 resignFirstResponder];

      [(SBHomeScreenViewController *)self _endAppearanceTransitionForChildViewControllersToVisible:v7];
    }

    [v5 setNeedsLayout];
    [v5 layoutIfNeeded];
  }
}

- (BOOL)usesGlassGroup
{
  v2 = [(SBHomeScreenViewController *)self _homeScreenView];
  v3 = [v2 usesGlassGroup];

  return v3;
}

- (void)setUsesGlassGroup:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHomeScreenViewController *)self _homeScreenView];
  [v4 setUsesGlassGroup:v3];
}

- (id)_autorotationPreventionReasons
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB18] array];
    if ([SBApp homeScreenRotationStyleWantsUIKitRotation])
    {
      [SBHomeScreenViewController _autorotationPreventionReasons];
    }

    else
    {
      [v3 addObject:@"homeScreenRotationStyle"];
    }

    v4 = [v3 count];
    if ([(SBHomeScreenViewController *)self shouldAutorotate]!= (v4 == 0))
    {
      [SBHomeScreenViewController _autorotationPreventionReasons];
    }
  }

  return v3;
}

- (void)_beginAppearanceTransitionForChildViewControllersToVisible:(BOOL)a3 animated:(BOOL)a4
{
  v17 = a3;
  v18 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(SBHomeScreenViewController *)self childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
        v12 = [(UIViewController *)self _sbWindowScene];
        v13 = [v11 libraryViewControllerForWindowScene:v12];

        v14 = [v11 homeScreenOverlayController];
        v15 = [v14 viewController];

        if (v10 != v15 && v10 != v13)
        {
          [(SBHomeScreenViewController *)self bs_beginAppearanceTransitionForChildViewController:v10 toVisible:v17 animated:v18];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)setHomeAffordanceInteractionAllowed:(BOOL)a3
{
  if (self->_homeAffordanceInteractionAllowed != a3)
  {
    self->_homeAffordanceInteractionAllowed = a3;
    [(SBHomeScreenViewController *)self _updateHomeAffordanceInteraction];
  }
}

- (void)_animateTransitionToSize:(CGSize)a3 andInterfaceOrientation:(int64_t)a4 withTransitionContext:(id)a5
{
  [a5 transitionDuration];
  v7 = v6;
  v8 = +[SBWallpaperController sharedInstance];
  [v8 orientationSource:2 willAnimateRotationToInterfaceOrientation:a4 duration:v7];
}

- (void)_cleanupAfterTransitionToSize:(CGSize)a3 fromInterfaceOrientation:(int64_t)a4 withTransitionContext:(id)a5
{
  v6 = [SBWallpaperController sharedInstance:a4];
  [v6 orientationSource:2 didRotateFromInterfaceOrientation:a4];

  [SBApp resetIdleTimerAndUndim];
  v7 = +[SBReachabilityManager sharedInstance];
  [v7 setReachabilityTemporarilyDisabled:0 forReason:@"MainWindowRotation"];

  v8 = SBApp;

  [v8 noteHomeScreenLayoutDidChange];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = SBFWindowForViewControllerTransition();
  v9 = [v8 _toWindowOrientation];
  v10 = [v8 _fromWindowOrientation];
  if (([(SBHomeScreenViewController *)self supportedInterfaceOrientations]& (1 << v9)) != 0)
  {
    self->_rotating = 1;
    v11 = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
    [v11 dismissAppIconForceTouchControllers:0];
    v12 = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
    v13 = [v12 iconShareSheetManager];
    [v13 hideIconShareSheetsIfAnyForRotationAnimation];
    [v11 dismissHomeScreenOverlayUsingTransitionCoordinator:v7];
    [v12 dismissModalInteractions];
    [(SBHomeScreenViewController *)self _prepareForTransitionToSize:v9 andInterfaceOrientation:v7 withTransitionCoordinator:width, height];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SBHomeScreenViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v16[3] = &unk_2783BF4A0;
    v16[4] = self;
    *&v16[5] = width;
    *&v16[6] = height;
    v16[7] = v9;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__SBHomeScreenViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v15[3] = &unk_2783BF4A0;
    v15[4] = self;
    *&v15[5] = width;
    *&v15[6] = height;
    v15[7] = v10;
    [v7 animateAlongsideTransition:v16 completion:v15];
    v14.receiver = self;
    v14.super_class = SBHomeScreenViewController;
    [(SBHomeScreenViewController *)&v14 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  }
}

void __81__SBHomeScreenViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _animateTransitionToSize:*(a1 + 56) andInterfaceOrientation:a2 withTransitionContext:{*(a1 + 40), *(a1 + 48)}];
  v3 = [*(a1 + 32) _iconContentView];
  [v3 setOrientation:*(a1 + 56)];
}

uint64_t __81__SBHomeScreenViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _cleanupAfterTransitionToSize:*(a1 + 56) fromInterfaceOrientation:a2 withTransitionContext:{*(a1 + 40), *(a1 + 48)}];
  *(*(a1 + 32) + 1035) = 0;
  return result;
}

- (void)nudgeIconInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen") & 1) == 0)
  {
    v7 = [(SBHomeScreenViewController *)self view];
    v9 = [v7 window];

    if ([SBApp homeScreenRotationStyleWantsUIKitRotation])
    {
      v8 = [(SBHomeScreenViewController *)self isViewLoaded];
      if ((a3 - 1) <= 3 && v8 && [v9 _windowInterfaceOrientation] != a3)
      {
        [v9 _legacySetRotatableViewOrientation:a3 updateStatusBar:1 duration:0 force:a4];
      }
    }
  }
}

- (void)setAllowIconRotation:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!v6)
  {
    [SBHomeScreenViewController setAllowIconRotation:forReason:];
  }

  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen") & 1) == 0)
  {
    v7 = [(NSMutableSet *)self->_iconRotationPreventionReasons count];
    iconRotationPreventionReasons = self->_iconRotationPreventionReasons;
    if (v4)
    {
      if (![(NSMutableSet *)iconRotationPreventionReasons containsObject:v6])
      {
        goto LABEL_15;
      }

      [(NSMutableSet *)self->_iconRotationPreventionReasons removeObject:v6];
      v9 = BKLogOrientationGlobal();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

LABEL_15:
        v13 = [(NSMutableSet *)self->_iconRotationPreventionReasons count];
        if (v7)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          if (self->_disableAnimationForNextIconRotation)
          {
            v15 = 0;
          }

          else
          {
            v16 = +[SBCoverSheetPresentationManager sharedInstance];
            v15 = [v16 isVisible] ^ 1;
          }

          if (SBWorkspaceSpringBoardIsActive())
          {
            v17 = [(SBHomeScreenViewController *)self view];
            v18 = [v17 window];

            v19 = [SBApp interfaceOrientationForCurrentDeviceOrientation:0];
            v20 = [v18 _windowInterfaceOrientation];
            v21 = [SBApp activeInterfaceOrientation];
            v23 = v19 == v20 && v20 == v21;
            if (!v19 || v23)
            {
              v29 = BKLogOrientationGlobal();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *v32 = 0;
                _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Nudging home screen window orientation because icon rotation changed.", v32, 2u);
              }

              [v18 sb_updateInterfaceOrientationFromActiveInterfaceOrientation:v15];
            }

            else
            {
              [v18 _windowInterfaceOrientation];
              v24 = BSInterfaceOrientationDescription();
              v25 = BSInterfaceOrientationDescription();
              v26 = [(SBHomeScreenViewController *)self shouldAutorotate];
              v27 = BKLogOrientationGlobal();
              v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
              if (v26)
              {
                if (v28)
                {
                  *v32 = 138543618;
                  *&v32[4] = v24;
                  *&v32[12] = 2114;
                  *&v32[14] = v25;
                  _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Forcible update for the home screen from %{public}@ to %{public}@.", v32, 0x16u);
                }

                [SBApp updateNativeOrientationWithOrientation:v19 updateMirroredDisplays:1 animated:1 logMessage:@"Force-update active interface orientation after unlock"];
              }

              else
              {
                if (v28)
                {
                  v30 = [(SBHomeScreenViewController *)self _autorotationPreventionReasons];
                  v31 = [v30 componentsJoinedByString:{@", "}];
                  *v32 = 138543874;
                  *&v32[4] = v24;
                  *&v32[12] = 2114;
                  *&v32[14] = v25;
                  v33 = 2114;
                  v34 = v31;
                  _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Not doing a forcible update for the home screen from %{public}@ to %{public}@ because %{public}@.", v32, 0x20u);
                }
              }
            }
          }

          self->_disableAnimationForNextIconRotation = 0;
        }

        goto LABEL_45;
      }

      *v32 = 138543362;
      *&v32[4] = v6;
      v10 = "Enabling home screen icon rotation for reason: %{public}@";
    }

    else
    {
      if (!iconRotationPreventionReasons)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v12 = self->_iconRotationPreventionReasons;
        self->_iconRotationPreventionReasons = v11;

        iconRotationPreventionReasons = self->_iconRotationPreventionReasons;
      }

      if (([(NSMutableSet *)iconRotationPreventionReasons containsObject:v6]& 1) != 0)
      {
        goto LABEL_15;
      }

      [(NSMutableSet *)self->_iconRotationPreventionReasons addObject:v6];
      v9 = BKLogOrientationGlobal();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *v32 = 138543362;
      *&v32[4] = v6;
      v10 = "Disabling home screen icon rotation for reason: %{public}@";
    }

    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, v10, v32, 0xCu);
    goto LABEL_14;
  }

LABEL_45:
}

- (void)_appIconForceTouchControllerWillPresentNotification:(id)a3
{
  v4 = [a3 object];
  [(SBHomeScreenViewController *)self _acquireForceTouchOrientationUpdateDeferralAssertionForIconView:v4];
  [(SBHomeScreenViewController *)self _acquireForceTouchWindowLevelAssertionForIconView:v4];
}

- (void)_appIconForceTouchControllerDidDismissNotification:(id)a3
{
  v4 = [a3 object];
  [(SBHomeScreenViewController *)self _relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:v4];
  [(SBHomeScreenViewController *)self _relinquishForceTouchWindowLevelAssertionForIconView:v4];
}

- (void)_acquireForceTouchOrientationUpdateDeferralAssertionForIconView:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (!v4)
  {
    [SBHomeScreenViewController _acquireForceTouchOrientationUpdateDeferralAssertionForIconView:];
    v4 = 0;
  }

  appIconForceTouchControllerOrientationUpdateDeferralAssertions = self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions;
  if (!appIconForceTouchControllerOrientationUpdateDeferralAssertions)
  {
    v6 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v7 = self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions;
    self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions = v6;

    v4 = v11;
    appIconForceTouchControllerOrientationUpdateDeferralAssertions = self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions;
  }

  v8 = [(NSMapTable *)appIconForceTouchControllerOrientationUpdateDeferralAssertions objectForKey:v4];
  if (!v8)
  {
    v9 = SBApp;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"AppIconForceTouchController is presented context menu for %@", v11];
    v8 = [v9 deviceOrientationUpdateDeferralAssertionWithReason:v10];

    [(NSMapTable *)self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions setObject:v8 forKey:v11];
  }
}

- (void)_relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (!v4)
  {
    [SBHomeScreenViewController _relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:];
    v4 = 0;
  }

  v5 = [(NSMapTable *)self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions objectForKey:v4];
  [v5 invalidate];
  [(NSMapTable *)self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions removeObjectForKey:v6];
}

- (void)_acquireForceTouchWindowLevelAssertionForIconView:(id)a3
{
  v17 = a3;
  if (!v17)
  {
    [SBHomeScreenViewController _acquireForceTouchWindowLevelAssertionForIconView:];
  }

  if (+[SBFloatingDockController isFloatingDockSupported])
  {
    v5 = [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions objectForKey:v17];
    if (!v5)
    {
      v6 = [v17 window];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!self->_appIconForceTouchControllerWindowLevelAssertions)
          {
            v7 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
            appIconForceTouchControllerWindowLevelAssertions = self->_appIconForceTouchControllerWindowLevelAssertions;
            self->_appIconForceTouchControllerWindowLevelAssertions = v7;
          }

          v9 = [v17 window];
          [v9 windowLevel];
          v11 = v10 + -1.0;

          v12 = [v17 _sbWindowScene];
          v13 = [v12 floatingDockController];
          v14 = [SBFloatingDockWindowLevelAssertion alloc];
          v15 = NSStringFromSelector(a2);
          v16 = [(SBFloatingDockWindowLevelAssertion *)v14 initWithFloatingDockController:v13 priority:2 level:v15 reason:v11];

          [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions setObject:v16 forKey:v17];
        }
      }
    }
  }
}

- (void)_relinquishForceTouchWindowLevelAssertionForIconView:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBHomeScreenViewController _relinquishForceTouchWindowLevelAssertionForIconView:];
  }

  if (+[SBFloatingDockController isFloatingDockSupported])
  {
    v4 = [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions objectForKey:v5];
    [v4 invalidate];
    [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions removeObjectForKey:v5];
  }
}

- (void)_dismissAllIconForceTouchControllersDidFire:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(NSMapTable *)self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions copy];
  v5 = [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions copy];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = MEMORY[0x277CBEB98];
  v8 = [v4 keyEnumerator];
  v9 = [v8 allObjects];
  v10 = [v7 setWithArray:v9];
  [v6 unionSet:v10];

  v11 = MEMORY[0x277CBEB98];
  v12 = [v5 keyEnumerator];
  v13 = [v12 allObjects];
  v14 = [v11 setWithArray:v13];
  [v6 unionSet:v14];

  if ([v6 count])
  {
    v15 = SBLogIcon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SBHomeScreenViewController *)v6 _dismissAllIconForceTouchControllersDidFire:v15];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v22 + 1) + 8 * i);
          [(SBHomeScreenViewController *)self _relinquishForceTouchWindowLevelAssertionForIconView:v21];
          [(SBHomeScreenViewController *)self _relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v18);
    }

    [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions removeAllObjects];
    [(NSMapTable *)self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions removeAllObjects];
  }
}

- (void)_floatingDockFrameDidChange:(id)a3
{
  v3 = [(SBHomeScreenViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)zStackParticipantDidChange:(id)a3
{
  v4 = a3;
  v5 = +[(SBWorkspace *)SBMainWorkspace];
  v6 = [v5 currentTransaction];

  v7 = [v6 transitionRequest];
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 source];
  v13 = [(SBHomeScreenReturnToSpotlightPolicy *)self->_returnToSpotlightPolicy homeScreenZStackParticipantDidChange:v4 launchingForSpotlight:v12 == 2];

  if (v13 == 1)
  {
    [(SBHomeScreenViewController *)&self->_returnToSpotlightPolicy zStackParticipantDidChange:v14];
  }

  [(SBHomeScreenViewController *)self _updateHomeAffordanceInteraction];
}

uint64_t __57__SBHomeScreenViewController_zStackParticipantDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clientHandle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.Spotlight"];

  return v4;
}

- (void)dealloc
{
  v3 = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  v4 = [v3 assistantController];
  [v4 removeObserver:self];

  v5 = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
  [v5 removeFloatingDockControllerObserver:self];
  if (self)
  {
    homeScreenFloatingDockAssertion = self->_homeScreenFloatingDockAssertion;
  }

  else
  {
    homeScreenFloatingDockAssertion = 0;
  }

  v7 = homeScreenFloatingDockAssertion;
  [(SBFloatingDockBehaviorAssertion *)v7 invalidate];
  [(SBHomeScreenViewController *)self setHomeScreenFloatingDockAssertion:?];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self];

  v9.receiver = self;
  v9.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v9 dealloc];
}

- (uint64_t)homeScreenFloatingDockAssertion
{
  if (result)
  {
    return *(result + 1120);
  }

  return result;
}

- (void)setHomeScreenFloatingDockAssertion:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 1120);
  }
}

- (id)appearanceController
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 137);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v11 viewDidAppear:a3];
  v4 = [(SBHomeScreenViewController *)self view];
  v5 = [v4 window];
  [v5 _sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary];

  v6 = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  v7 = [v6 statusBarManager];
  v8 = [v7 layoutManager];
  [v8 addActiveLayoutLayer:0];

  if (!self || (v9 = self->_zStackParticipant) == 0)
  {
    v10 = [v6 zStackResolver];
    v9 = [v10 acquireParticipantWithIdentifier:0 delegate:self];
    [(SBHomeScreenViewController *)self setZStackParticipant:v9];
  }

  [(SBHomeScreenViewController *)self _updateHomeAffordanceView];
  [(SBHomeScreenViewController *)self _endAppearanceTransitionForChildViewControllersToVisible:1];
  [(SBHomeScreenViewController *)self becomeFirstResponder];
}

- (uint64_t)zStackParticipant
{
  if (result)
  {
    return *(result + 1144);
  }

  return result;
}

- (void)setZStackParticipant:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 1144);
  }
}

- (uint64_t)homeAffordanceView
{
  if (result)
  {
    return *(result + 1168);
  }

  return result;
}

- (uint64_t)homeAffordanceInteraction
{
  if (result)
  {
    return *(result + 1160);
  }

  return result;
}

- (void)_acquireFloatingDockBehaviorAssertionIfNecessaryForFloatingDockController:(id)a3
{
  v7 = a3;
  v4 = [v7 windowScene];
  v5 = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];

  if (v5 == v4)
  {
    if (!self || (v6 = self->_homeScreenFloatingDockAssertion) == 0)
    {
      v6 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:v7 visibleProgress:1 animated:0 gesturePossible:0 atLevel:@"homescreen" reason:0 withCompletion:1.0];
      [(SBHomeScreenViewController *)self setHomeScreenFloatingDockAssertion:v6];
    }
  }
}

- (void)_endAppearanceTransitionForChildViewControllersToVisible:(BOOL)a3
{
  v17 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(SBHomeScreenViewController *)self childViewControllers];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
        v11 = [(UIViewController *)self _sbWindowScene];
        v12 = [v10 libraryViewControllerForWindowScene:v11];

        v13 = [v10 homeScreenOverlayController];
        v14 = [v13 viewController];

        if (v9 != v14 && v9 != v12)
        {
          [(SBHomeScreenViewController *)self bs_endAppearanceTransitionForChildViewController:v9 toVisible:v17];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
  [v16 cancelAllFolderScrolling];
}

- (void)_performInitialLayoutWithOrientation:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  performedInitialLayout = self->_performedInitialLayout;
  self->_performedInitialLayout = 1;
  v6 = SBLogIcon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "Peforming initial layout with orientation (%lu)", &v10, 0xCu);
  }

  v7 = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
  if (a3)
  {
    v8 = [(SBHomeScreenViewController *)self _iconContentView];
    [v8 setOrientation:a3];
    [v7 noteInterfaceOrientationChanged];
  }

  [v7 resetRootIconLists];
  if (!performedInitialLayout)
  {
    v9 = [v7 rootFolderController];
    [v9 setCurrentPageIndex:objc_msgSend(v9 animated:{"defaultPageIndex"), 0}];
  }
}

- (void)_updateHomeAffordanceView
{
  v15 = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  v3 = [(SBHomeScreenViewController *)self view];
  v4 = [v15 assistantController];
  v5 = [v4 isHomeAffordanceDoubleTapGestureEnabled];
  if (self)
  {
    homeAffordanceView = self->_homeAffordanceView;
  }

  else
  {
    homeAffordanceView = 0;
  }

  if (homeAffordanceView)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == 1)
  {
    v9 = objc_alloc(MEMORY[0x277D65E78]);
    v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v10 setHintStyle:2];
    [v3 addSubview:v10];
    [(SBHomeScreenViewController *)self setHomeAffordanceView:v10];
    v11 = [v15 homeAffordanceInteractionManager];
    v12 = [v11 newHomeAffordanceInteraction];
    v13 = v12;
    if (v12)
    {
      [v12 setDelegate:self];
      [v3 addInteraction:v13];
      [(SBHomeScreenViewController *)self setHomeAffordanceInteraction:v13];
      [(SBHomeScreenViewController *)self _updateHomeAffordanceInteraction];
    }
  }

  else
  {
    if (homeAffordanceView)
    {
      v8 = v5;
    }

    else
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      if (self)
      {
        [(SBFHomeAffordanceView *)self->_homeAffordanceView removeFromSuperview];
        [(SBHomeScreenViewController *)self setHomeAffordanceView:?];
        homeAffordanceInteraction = self->_homeAffordanceInteraction;
      }

      else
      {
        [0 removeFromSuperview];
        [(SBHomeScreenViewController *)0 setHomeAffordanceView:?];
        homeAffordanceInteraction = 0;
      }

      [v3 removeInteraction:homeAffordanceInteraction];
      [(SBHomeScreenViewController *)self setHomeAffordanceInteraction:?];
    }
  }
}

- (void)setHomeAffordanceView:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 1168);
  }
}

- (void)setHomeAffordanceInteraction:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 1160);
  }
}

- (void)_prepareForTransitionToSize:(CGSize)a3 andInterfaceOrientation:(int64_t)a4 withTransitionCoordinator:(id)a5
{
  [a5 transitionDuration];
  v8 = v7;
  v9 = +[SBWallpaperController sharedInstance];
  [v9 orientationSource:2 willRotateToInterfaceOrientation:a4 duration:v8];

  v10 = +[SBReachabilityManager sharedInstance];
  [v10 setReachabilityTemporarilyDisabled:1 forReason:@"MainWindowRotation"];

  v11 = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  LODWORD(v10) = SBWorkspaceLauncherIsActive(v11, 1);

  if (v10)
  {
    v12 = SBApp;

    [v12 noteInterfaceOrientationChanged:a4 duration:@"Home Screen is transitioning" logMessage:v8];
  }
}

- (id)containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
  if (v3 && (+[SBCoverSheetPresentationManager sharedInstance](SBCoverSheetPresentationManager, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isVisibleAndNotDisappearing], v6, v7))
  {
    v8 = [v5 coverSheetTodayViewController];
  }

  else
  {
    v8 = [v5 todayViewController];
  }

  v9 = v8;
  if ([v8 _appearState] == 2 || objc_msgSend(v9, "_appearState") == 1)
  {
    v10 = [v9 containerViewController];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = self;
    }

    v13 = v12;
  }

  else
  {
    v13 = self;
  }

  return v13;
}

- (id)containerViewForPresentingContextMenuForIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 _sbWindowScene];
  v6 = [v5 floatingDockController];
  v7 = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
  v8 = [v7 _openFolderController];
  v9 = [v6 floatingDockViewController];
  v10 = [v9 presentedFolderController];

  v11 = [v4 location];

  if (!v6 || !SBIconLocationGroupContainsLocation())
  {
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      if (v8)
      {
        v12 = [v7 _openFolderController];
        goto LABEL_13;
      }

      if (SBIconLocationGroupContainsLocation())
      {
        v12 = [(SBHomeScreenViewController *)self containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:0];
        goto LABEL_13;
      }

      if (SBIconLocationGroupContainsLocation())
      {
        v12 = [v7 libraryViewControllerForWindowScene:v5];
        goto LABEL_13;
      }

      v13 = self;
    }

    v14 = [(SBHomeScreenViewController *)v13 view];
    goto LABEL_14;
  }

  v12 = [v6 viewController];
LABEL_13:
  v15 = v12;
  v14 = [v12 view];

LABEL_14:

  return v14;
}

- (void)_widgetEditViewWillAppear:(id)a3
{
  if ((!self || !self->_widgetEditFloatingDockAssertion) && (-[SBHomeScreenViewController windowScene](&self->super.super.super.isa), v4 = objc_claimAutoreleasedReturnValue(), [v4 floatingDockController], v5 = objc_claimAutoreleasedReturnValue(), v6 = -[SBFloatingDockBehaviorAssertion initWithFloatingDockController:visibleProgress:animated:gesturePossible:atLevel:reason:withCompletion:]([SBFloatingDockBehaviorAssertion alloc], "initWithFloatingDockController:visibleProgress:animated:gesturePossible:atLevel:reason:withCompletion:", v5, 1, 0, 4, @"edit widgets", 0, 0.0), -[SBHomeScreenViewController setWidgetEditFloatingDockAssertion:](self, v6), v6, v5, v4, !self) || !self->_widgetEditViewControllerOrientationUpdateDeferralAssertion)
  {
    v7 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"edit widgets"];
    [(SBHomeScreenViewController *)self setWidgetEditViewControllerOrientationUpdateDeferralAssertion:v7];
  }
}

- (uint64_t)widgetEditFloatingDockAssertion
{
  if (result)
  {
    return *(result + 1128);
  }

  return result;
}

- (void)setWidgetEditFloatingDockAssertion:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 1128);
  }
}

- (uint64_t)widgetEditViewControllerOrientationUpdateDeferralAssertion
{
  if (result)
  {
    return *(result + 1136);
  }

  return result;
}

- (void)setWidgetEditViewControllerOrientationUpdateDeferralAssertion:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_18(a1, a2, 1136);
  }
}

- (void)_widgetEditViewDidDisappearImplementation
{
  if (self)
  {
    [(SBFloatingDockBehaviorAssertion *)self->_widgetEditFloatingDockAssertion invalidate];
    [(SBHomeScreenViewController *)self setWidgetEditFloatingDockAssertion:?];
    widgetEditViewControllerOrientationUpdateDeferralAssertion = self->_widgetEditViewControllerOrientationUpdateDeferralAssertion;
  }

  else
  {
    [0 invalidate];
    [(SBHomeScreenViewController *)0 setWidgetEditFloatingDockAssertion:?];
    widgetEditViewControllerOrientationUpdateDeferralAssertion = 0;
  }

  [(BSInvalidatable *)widgetEditViewControllerOrientationUpdateDeferralAssertion invalidate];

  [(SBHomeScreenViewController *)self setWidgetEditViewControllerOrientationUpdateDeferralAssertion:?];
}

- (void)_iconEditingDidChange:(id)a3
{
  if (self)
  {
    self = self->_zStackParticipant;
  }

  [(SBHomeScreenViewController *)self setNeedsUpdatePreferencesWithReason:@"Home Screen editing changed"];
}

- (void)homeAffordanceInteractionDidRecognizeSingleTap:(id)a3
{
  if (self)
  {
    self = self->_homeAffordanceView;
  }

  [(SBHomeScreenViewController *)self performHintAnimation];
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v5 = a4;
  v6 = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
  [v5 setSuppressSystemApertureForSystemChromeSuppression:{objc_msgSend(v6, "isEditing")}];
  [v5 setAllowsDimmingWhenForegroundInactive:1];
}

- (uint64_t)isRotating
{
  if (a1)
  {
    v1 = *(a1 + 1035);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setRotating:(uint64_t)result
{
  if (result)
  {
    *(result + 1035) = a2;
  }

  return result;
}

- (uint64_t)hasPerformedInitialLayout
{
  if (a1)
  {
    v1 = *(a1 + 1036);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setPerformedInitialLayout:(uint64_t)result
{
  if (result)
  {
    *(result + 1036) = a2;
  }

  return result;
}

- (uint64_t)returnToSpotlightPolicy
{
  if (result)
  {
    return *(result + 1152);
  }

  return result;
}

- (void)initWithWindowScene:contextProvider:iconManager:appearanceController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"appearanceController" object:? file:? lineNumber:? description:?];
}

- (void)shouldAutorotate
{
  v6 = [(SBHomeScreenViewController *)a1 iconManager];
  v4 = [(SBHomeScreenViewController *)a1 appearanceController];
  if ([v6 hasAnimatingFolder] || objc_msgSend(v6, "isIconDragging") && !objc_msgSend(a1, "homeScreenAutorotatesEvenWhenIconIsDragging") || objc_msgSend(a1[124], "count") || (objc_msgSend(v4, "isIconListViewTornDown") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v6 isTransitioningHomeScreenState] ^ 1;
  }

  *a2 = v5;
}

- (void)_autorotationPreventionReasons
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setAllowIconRotation:forReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_acquireForceTouchOrientationUpdateDeferralAssertionForIconView:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"iconView" object:? file:? lineNumber:? description:?];
}

- (void)_relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"iconView" object:? file:? lineNumber:? description:?];
}

- (void)_acquireForceTouchWindowLevelAssertionForIconView:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"iconView" object:? file:? lineNumber:? description:?];
}

- (void)_relinquishForceTouchWindowLevelAssertionForIconView:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"iconView" object:? file:? lineNumber:? description:?];
}

- (void)_dismissAllIconForceTouchControllersDidFire:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Forcefully removing assertions for iconViews: %{public}@", &v2, 0xCu);
}

- (void)zStackParticipantDidChange:(uint64_t)a3 .cold.1(id *a1, id *a2, uint64_t a3)
{
  [*a1 willReactivateSpotlight];
  v6 = +[SBSceneManagerCoordinator sharedInstance];
  v7 = [v6 sceneDeactivationManager];
  v8 = [v7 newAssertionWithReason:5];

  [v8 acquireWithPredicate:&__block_literal_global_333 transitionContext:0];
  v9 = [(SBHomeScreenViewController *)a2 iconManager];
  v10 = [v9 rootFolderController];

  [v10 setPresentationSource:5];
  v11 = [*a1 shouldAnimateReactivation];
  *a3 = MEMORY[0x277D85DD0];
  *(a3 + 8) = 3221225472;
  *(a3 + 16) = __57__SBHomeScreenViewController_zStackParticipantDidChange___block_invoke_2;
  *(a3 + 24) = &unk_2783A8C18;
  *(a3 + 32) = v8;
  v12 = v8;
  [v10 presentSpotlightAnimated:v11 completionHandler:a3];
  [v10 setPresentationSource:0];
}

@end