@interface SBHomeScreenViewController
- (BOOL)shouldAutorotate;
- (BOOL)usesGlassGroup;
- (CGRect)_homeAffordanceFrameForHomeAffordanceInteraction;
- (CGRect)_homeAffordanceFrameForLayout;
- (SBHomeScreenViewController)initWithWindowScene:(id)scene contextProvider:(id)provider iconManager:(id)manager appearanceController:(id)controller;
- (UIView)iconContentView;
- (_UILegibilitySettings)legibilitySettings;
- (id)_autorotationPreventionReasons;
- (id)appearanceController;
- (id)containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:(BOOL)sheet;
- (id)containerViewForPresentingContextMenuForIconView:(id)view;
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
- (void)_acquireFloatingDockBehaviorAssertionIfNecessaryForFloatingDockController:(id)controller;
- (void)_acquireForceTouchOrientationUpdateDeferralAssertionForIconView:(id)view;
- (void)_acquireForceTouchWindowLevelAssertionForIconView:(id)view;
- (void)_animateTransitionToSize:(CGSize)size andInterfaceOrientation:(int64_t)orientation withTransitionContext:(id)context;
- (void)_appIconForceTouchControllerDidDismissNotification:(id)notification;
- (void)_appIconForceTouchControllerWillPresentNotification:(id)notification;
- (void)_autorotationPreventionReasons;
- (void)_beginAppearanceTransitionForChildViewControllersToVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_cleanupAfterTransitionToSize:(CGSize)size fromInterfaceOrientation:(int64_t)orientation withTransitionContext:(id)context;
- (void)_dismissAllIconForceTouchControllersDidFire:(id)fire;
- (void)_endAppearanceTransitionForChildViewControllersToVisible:(BOOL)visible;
- (void)_floatingDockFrameDidChange:(id)change;
- (void)_iconEditingDidChange:(id)change;
- (void)_performInitialLayoutWithOrientation:(int64_t)orientation;
- (void)_prepareForTransitionToSize:(CGSize)size andInterfaceOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator;
- (void)_relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:(id)view;
- (void)_relinquishForceTouchWindowLevelAssertionForIconView:(id)view;
- (void)_updateHomeAffordanceInteraction;
- (void)_updateHomeAffordanceView;
- (void)_updateIconContentViewOrientationAndLayoutIfNeeded;
- (void)_widgetEditViewDidDisappearImplementation;
- (void)_widgetEditViewWillAppear:(id)appear;
- (void)dealloc;
- (void)homeAffordanceInteractionDidRecognizeSingleTap:(id)tap;
- (void)loadView;
- (void)nudgeIconInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)setAllowIconRotation:(BOOL)rotation forReason:(id)reason;
- (void)setHomeAffordanceInteraction:(uint64_t)interaction;
- (void)setHomeAffordanceInteractionAllowed:(BOOL)allowed;
- (void)setHomeAffordanceView:(uint64_t)view;
- (void)setHomeScreenFloatingDockAssertion:(uint64_t)assertion;
- (void)setIconContentHidden:(BOOL)hidden;
- (void)setLegibilitySettings:(id)settings;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setUsesGlassGroup:(BOOL)group;
- (void)setWidgetEditFloatingDockAssertion:(uint64_t)assertion;
- (void)setWidgetEditViewControllerOrientationUpdateDeferralAssertion:(uint64_t)assertion;
- (void)setZStackParticipant:(uint64_t)participant;
- (void)shouldAutorotate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
- (void)zStackParticipantDidChange:(id)change;
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

  view = [(SBHomeScreenViewController *)self view];
  window = [view window];

  if (window)
  {
    view2 = [(SBHomeScreenViewController *)self view];
    window2 = [view2 window];
    _windowInterfaceOrientation = [window2 _windowInterfaceOrientation];
  }

  else
  {
    view2 = [(SBHomeScreenViewController *)self _iconContentView];
    _windowInterfaceOrientation = [view2 orientation];
  }

  [(SBHomeScreenViewController *)self allowedInterfaceOrientations];
  if (!_windowInterfaceOrientation)
  {
    return 1;
  }

  if (SBFInterfaceOrientationMaskContainsInterfaceOrientation())
  {
    return _windowInterfaceOrientation;
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 1;
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
  view = [(SBHomeScreenViewController *)self view];
  windowScene = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  contextProvider = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
  v6 = [contextProvider libraryViewControllerForWindowScene:windowScene];
  viewIfLoaded = [v6 viewIfLoaded];
  superview = [viewIfLoaded superview];

  if (superview == view)
  {
    v9 = viewIfLoaded;
    [view bringSubviewToFront:v9];
    externalBackgroundView = [v6 externalBackgroundView];
    superview2 = [externalBackgroundView superview];

    if (superview2 == view)
    {
      v12 = externalBackgroundView;

      [view insertSubview:v12 belowSubview:v9];
      v9 = v12;
    }
  }

  else
  {
    v9 = 0;
  }

  homeScreenOverlayController = [contextProvider homeScreenOverlayController];
  viewController = [homeScreenOverlayController viewController];
  view2 = [viewController view];

  superview3 = [view2 superview];

  if (superview3 == view)
  {
    if (v9)
    {
      [view insertSubview:view2 belowSubview:v9];
    }

    else
    {
      [view bringSubviewToFront:view2];
    }
  }

  iconEffectView = [(SBHomeScreenViewController *)self iconEffectView];
  v18 = iconEffectView;
  if (iconEffectView)
  {
    superview4 = [iconEffectView superview];

    if (superview4)
    {
      [view sendSubviewToBack:v18];
    }

    else
    {
      [view insertSubview:v18 atIndex:0];
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
  view = [(SBHomeScreenViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  iconContentView = [(SBHomeScreenViewController *)self iconContentView];
  [iconContentView setBounds:{v5, v7, v9, v11}];
  UIRectGetCenter();
  [iconContentView setCenter:?];
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

  iconEffectView = [(SBHomeScreenViewController *)self iconEffectView];
  v15 = iconEffectView;
  if (iconEffectView)
  {
    [iconEffectView setBounds:{v5, v7, v9, v11}];
    UIRectGetCenter();
    [v15 setCenter:?];
  }
}

- (CGRect)_homeAffordanceFrameForLayout
{
  view = [(SBHomeScreenViewController *)self view];
  [view bounds];
  CGRectGetMidX(v40);
  iconManager = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
  rootFolderController = [iconManager rootFolderController];
  if ([rootFolderController isDockExternal])
  {
    floatingDockViewController = [iconManager floatingDockViewController];
    view2 = [floatingDockViewController view];
    _screen = [view2 _screen];
    fixedCoordinateSpace = [_screen fixedCoordinateSpace];

    [floatingDockViewController floatingDockScreenFrame];
    [view convertRect:fixedCoordinateSpace fromCoordinateSpace:?];
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
    floatingDockViewController = [rootFolderController folderView];
    fixedCoordinateSpace = [floatingDockViewController dockView];
    dockListView = [fixedCoordinateSpace dockListView];
    [dockListView bounds];
    [view convertRect:dockListView fromView:?];
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
  traitCollection = [(SBHomeScreenViewController *)self traitCollection];
  [traitCollection displayScale];
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
  view = [(SBHomeScreenViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  mEMORY[0x277D26708] = [MEMORY[0x277D26708] sharedInstance];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  rect = *MEMORY[0x277CBF3A0];
  v13 = objc_opt_class();
  v33.origin.x = v4;
  v33.origin.y = v6;
  v33.size.width = v8;
  v33.size.height = v10;
  [v13 suggestedSizeForContentWidth:mEMORY[0x277D26708] withSettings:CGRectGetWidth(v33)];
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
  [mEMORY[0x277D26708] edgeSpacing];
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
  allowedInterfaceOrientations = [(SBHomeScreenViewController *)self allowedInterfaceOrientations];
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    iconManager = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
    if (([iconManager hasAnimatingFolder] & 1) != 0 || objc_msgSend(iconManager, "isIconDragging") && !-[SBHomeScreenViewController homeScreenAutorotatesEvenWhenIconIsDragging](self, "homeScreenAutorotatesEvenWhenIconIsDragging") || objc_msgSend(iconManager, "isTransitioningHomeScreenState"))
    {
      view = [(SBHomeScreenViewController *)self view];
      window = [view window];

      [window interfaceOrientation];
      allowedInterfaceOrientations = XBInterfaceOrientationMaskForInterfaceOrientation();
    }
  }

  return allowedInterfaceOrientations;
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  windowScene = [(SBHomeScreenViewController *)self windowScene];
  statusBarManager = [windowScene statusBarManager];
  assertionManager = [statusBarManager assertionManager];
  *a3 = assertionManager;

  v9 = [assertionManager newSettingsAssertionWithSettings:a2 atLevel:0 reason:@"Homescreen Child/Presented VC"];
  v10 = *(self + 1008);
  *(self + 1008) = v9;

  v11 = *(self + 1008);
  initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  [v11 acquireWithAnimationParameters:initWithDefaultParameters];
}

- (SBHomeScreenViewController)initWithWindowScene:(id)scene contextProvider:(id)provider iconManager:(id)manager appearanceController:(id)controller
{
  sceneCopy = scene;
  providerCopy = provider;
  managerCopy = manager;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    [SBHomeScreenViewController initWithWindowScene:contextProvider:iconManager:appearanceController:];
  }

  v29.receiver = self;
  v29.super_class = SBHomeScreenViewController;
  v14 = [(SBHomeScreenViewController *)&v29 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_windowScene, sceneCopy);
    objc_storeWeak(&v15->_appearanceController, controllerCopy);
    objc_storeWeak(&v15->_contextProvider, providerCopy);
    objc_storeWeak(&v15->_iconManager, managerCopy);
    [providerCopy addFloatingDockControllerObserver:v15];
    v16 = -[SBIconContentView initWithOrientation:]([SBIconContentView alloc], "initWithOrientation:", [SBApp activeInterfaceOrientation]);
    [(SBIconContentView *)v16 setAccessibilityIdentifier:@"Home screen icons"];
    [(SBIconContentView *)v16 _setIgnoreBackdropViewsWhenHiding:1];
    objc_storeWeak(&v15->_iconContentView, v16);
    [(SBHomeScreenViewController *)v15 setIconContentHidden:1];
    if (SBHFeatureEnabled() && [sceneCopy isMainDisplayWindowScene])
    {
      v17 = objc_alloc(MEMORY[0x277D662B0]);
      [(SBIconContentView *)v16 bounds];
      v18 = [v17 initWithFrame:?];
      iconEffectView = v15->_iconEffectView;
      v15->_iconEffectView = v18;
      v20 = v18;

      globalSheenEffect = [(SBHVisibleContentPresenter *)v20 globalSheenEffect];
      traitOverrides = [(SBHomeScreenViewController *)v15 traitOverrides];
      v23 = objc_opt_self();

      [traitOverrides setObject:globalSheenEffect forTrait:v23];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__dismissAllIconForceTouchControllersDidFire_ name:*MEMORY[0x277D66598] object:0];
    [defaultCenter addObserver:v15 selector:sel__floatingDockFrameDidChange_ name:@"SBFloatingDockControllerFrameDidChangeNotification" object:0];
    [defaultCenter addObserver:v15 selector:sel__iconEditingDidChange_ name:*MEMORY[0x277D66560] object:0];
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

    assistantController = [sceneCopy assistantController];
    [assistantController addObserver:v15];

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
    LOBYTE(homeScreenRotationStyleWantsUIKitRotation) = 1;
  }

  else
  {
    homeScreenRotationStyleWantsUIKitRotation = [SBApp homeScreenRotationStyleWantsUIKitRotation];
    if (homeScreenRotationStyleWantsUIKitRotation)
    {
      [(SBHomeScreenViewController *)&self->super.super.super.isa shouldAutorotate];
      LOBYTE(homeScreenRotationStyleWantsUIKitRotation) = v5;
    }
  }

  return homeScreenRotationStyleWantsUIKitRotation;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v6 viewWillAppear:?];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__appIconForceTouchControllerWillPresentNotification_ name:*MEMORY[0x277D66720] object:0];
  [defaultCenter addObserver:self selector:sel__appIconForceTouchControllerDidDismissNotification_ name:*MEMORY[0x277D66718] object:0];
  [(SBHomeScreenViewController *)self _beginAppearanceTransitionForChildViewControllersToVisible:1 animated:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v5 viewWillDisappear:?];
  [(SBHomeScreenViewController *)self _beginAppearanceTransitionForChildViewControllersToVisible:0 animated:disappearCopy];
  [(SBHomeScreenViewController *)self resignFirstResponder];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v4 viewDidDisappear:disappear];
  [(SBHomeScreenViewController *)self _widgetEditViewDidDisappearImplementation];
  [(SBHomeScreenViewController *)self _endAppearanceTransitionForChildViewControllersToVisible:0];
}

- (_UILegibilitySettings)legibilitySettings
{
  _homeScreenView = [(SBHomeScreenViewController *)self _homeScreenView];
  statusBarLegibilityView = [_homeScreenView statusBarLegibilityView];
  legibilitySettings = [statusBarLegibilityView legibilitySettings];

  return legibilitySettings;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  _homeScreenView = [(SBHomeScreenViewController *)self _homeScreenView];
  statusBarLegibilityView = [_homeScreenView statusBarLegibilityView];
  [statusBarLegibilityView setLegibilitySettings:settingsCopy];
}

- (void)setIconContentHidden:(BOOL)hidden
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_iconContentHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_iconContentHidden = hidden;
    _homeScreenView = [(SBHomeScreenViewController *)self _homeScreenView];
    iconContentView = [(SBHomeScreenViewController *)self iconContentView];
    if (([iconContentView isDescendantOfView:_homeScreenView] & 1) == 0)
    {
      [_homeScreenView setIconContentView:iconContentView];
    }

    v7 = !hiddenCopy;
    [(SBHomeScreenViewController *)self _beginAppearanceTransitionForChildViewControllersToVisible:v7 animated:0];
    if (v7)
    {
      statusBarLegibilityView = [_homeScreenView statusBarLegibilityView];
      [_homeScreenView insertSubview:iconContentView aboveSubview:statusBarLegibilityView];

      [iconContentView setHidden:0];
      [(SBHomeScreenViewController *)self _updateIconContentViewOrientationAndLayoutIfNeeded];
      [iconContentView layoutIfNeeded];
      [(SBHomeScreenViewController *)self _endAppearanceTransitionForChildViewControllersToVisible:v7];
      window = [iconContentView window];
      interfaceOrientation = [window interfaceOrientation];
      interfaceOrientation2 = [(SBHomeScreenViewController *)self interfaceOrientation];
      if (interfaceOrientation)
      {
        v13 = interfaceOrientation2;
        if (interfaceOrientation2 != interfaceOrientation)
        {
          v14 = BKLogOrientationGlobal();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 134218240;
            v16 = interfaceOrientation;
            v17 = 2048;
            v18 = v13;
            _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Home screen orientation did not match between window and view controller (%li vs %li)", &v15, 0x16u);
          }

          [(SBHomeScreenViewController *)self setInterfaceOrientation:interfaceOrientation];
          [(SBHomeScreenViewController *)self _updateIconContentViewOrientationAndLayoutIfNeeded];
        }
      }
    }

    else
    {
      [iconContentView setHidden:1];
      firstResponder = [iconContentView firstResponder];
      [firstResponder resignFirstResponder];

      [(SBHomeScreenViewController *)self _endAppearanceTransitionForChildViewControllersToVisible:v7];
    }

    [_homeScreenView setNeedsLayout];
    [_homeScreenView layoutIfNeeded];
  }
}

- (BOOL)usesGlassGroup
{
  _homeScreenView = [(SBHomeScreenViewController *)self _homeScreenView];
  usesGlassGroup = [_homeScreenView usesGlassGroup];

  return usesGlassGroup;
}

- (void)setUsesGlassGroup:(BOOL)group
{
  groupCopy = group;
  _homeScreenView = [(SBHomeScreenViewController *)self _homeScreenView];
  [_homeScreenView setUsesGlassGroup:groupCopy];
}

- (id)_autorotationPreventionReasons
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen"))
  {
    array = MEMORY[0x277CBEBF8];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    if ([SBApp homeScreenRotationStyleWantsUIKitRotation])
    {
      [SBHomeScreenViewController _autorotationPreventionReasons];
    }

    else
    {
      [array addObject:@"homeScreenRotationStyle"];
    }

    v4 = [array count];
    if ([(SBHomeScreenViewController *)self shouldAutorotate]!= (v4 == 0))
    {
      [SBHomeScreenViewController _autorotationPreventionReasons];
    }
  }

  return array;
}

- (void)_beginAppearanceTransitionForChildViewControllersToVisible:(BOOL)visible animated:(BOOL)animated
{
  visibleCopy = visible;
  animatedCopy = animated;
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  childViewControllers = [(SBHomeScreenViewController *)self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        contextProvider = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
        _sbWindowScene = [(UIViewController *)self _sbWindowScene];
        v13 = [contextProvider libraryViewControllerForWindowScene:_sbWindowScene];

        homeScreenOverlayController = [contextProvider homeScreenOverlayController];
        viewController = [homeScreenOverlayController viewController];

        if (v10 != viewController && v10 != v13)
        {
          [(SBHomeScreenViewController *)self bs_beginAppearanceTransitionForChildViewController:v10 toVisible:visibleCopy animated:animatedCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [childViewControllers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)setHomeAffordanceInteractionAllowed:(BOOL)allowed
{
  if (self->_homeAffordanceInteractionAllowed != allowed)
  {
    self->_homeAffordanceInteractionAllowed = allowed;
    [(SBHomeScreenViewController *)self _updateHomeAffordanceInteraction];
  }
}

- (void)_animateTransitionToSize:(CGSize)size andInterfaceOrientation:(int64_t)orientation withTransitionContext:(id)context
{
  [context transitionDuration];
  v7 = v6;
  v8 = +[SBWallpaperController sharedInstance];
  [v8 orientationSource:2 willAnimateRotationToInterfaceOrientation:orientation duration:v7];
}

- (void)_cleanupAfterTransitionToSize:(CGSize)size fromInterfaceOrientation:(int64_t)orientation withTransitionContext:(id)context
{
  v6 = [SBWallpaperController sharedInstance:orientation];
  [v6 orientationSource:2 didRotateFromInterfaceOrientation:orientation];

  [SBApp resetIdleTimerAndUndim];
  v7 = +[SBReachabilityManager sharedInstance];
  [v7 setReachabilityTemporarilyDisabled:0 forReason:@"MainWindowRotation"];

  v8 = SBApp;

  [v8 noteHomeScreenLayoutDidChange];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = SBFWindowForViewControllerTransition();
  _toWindowOrientation = [v8 _toWindowOrientation];
  _fromWindowOrientation = [v8 _fromWindowOrientation];
  if (([(SBHomeScreenViewController *)self supportedInterfaceOrientations]& (1 << _toWindowOrientation)) != 0)
  {
    self->_rotating = 1;
    contextProvider = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
    [contextProvider dismissAppIconForceTouchControllers:0];
    iconManager = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
    iconShareSheetManager = [iconManager iconShareSheetManager];
    [iconShareSheetManager hideIconShareSheetsIfAnyForRotationAnimation];
    [contextProvider dismissHomeScreenOverlayUsingTransitionCoordinator:coordinatorCopy];
    [iconManager dismissModalInteractions];
    [(SBHomeScreenViewController *)self _prepareForTransitionToSize:_toWindowOrientation andInterfaceOrientation:coordinatorCopy withTransitionCoordinator:width, height];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SBHomeScreenViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v16[3] = &unk_2783BF4A0;
    v16[4] = self;
    *&v16[5] = width;
    *&v16[6] = height;
    v16[7] = _toWindowOrientation;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__SBHomeScreenViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v15[3] = &unk_2783BF4A0;
    v15[4] = self;
    *&v15[5] = width;
    *&v15[6] = height;
    v15[7] = _fromWindowOrientation;
    [coordinatorCopy animateAlongsideTransition:v16 completion:v15];
    v14.receiver = self;
    v14.super_class = SBHomeScreenViewController;
    [(SBHomeScreenViewController *)&v14 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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

- (void)nudgeIconInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen") & 1) == 0)
  {
    view = [(SBHomeScreenViewController *)self view];
    window = [view window];

    if ([SBApp homeScreenRotationStyleWantsUIKitRotation])
    {
      isViewLoaded = [(SBHomeScreenViewController *)self isViewLoaded];
      if ((orientation - 1) <= 3 && isViewLoaded && [window _windowInterfaceOrientation] != orientation)
      {
        [window _legacySetRotatableViewOrientation:orientation updateStatusBar:1 duration:0 force:duration];
      }
    }
  }
}

- (void)setAllowIconRotation:(BOOL)rotation forReason:(id)reason
{
  rotationCopy = rotation;
  v35 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [SBHomeScreenViewController setAllowIconRotation:forReason:];
  }

  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleHomeScreen") & 1) == 0)
  {
    v7 = [(NSMutableSet *)self->_iconRotationPreventionReasons count];
    iconRotationPreventionReasons = self->_iconRotationPreventionReasons;
    if (rotationCopy)
    {
      if (![(NSMutableSet *)iconRotationPreventionReasons containsObject:reasonCopy])
      {
        goto LABEL_15;
      }

      [(NSMutableSet *)self->_iconRotationPreventionReasons removeObject:reasonCopy];
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
            view = [(SBHomeScreenViewController *)self view];
            window = [view window];

            v19 = [SBApp interfaceOrientationForCurrentDeviceOrientation:0];
            _windowInterfaceOrientation = [window _windowInterfaceOrientation];
            activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
            v23 = v19 == _windowInterfaceOrientation && _windowInterfaceOrientation == activeInterfaceOrientation;
            if (!v19 || v23)
            {
              v29 = BKLogOrientationGlobal();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *v32 = 0;
                _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Nudging home screen window orientation because icon rotation changed.", v32, 2u);
              }

              [window sb_updateInterfaceOrientationFromActiveInterfaceOrientation:v15];
            }

            else
            {
              [window _windowInterfaceOrientation];
              v24 = BSInterfaceOrientationDescription();
              v25 = BSInterfaceOrientationDescription();
              shouldAutorotate = [(SBHomeScreenViewController *)self shouldAutorotate];
              v27 = BKLogOrientationGlobal();
              v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
              if (shouldAutorotate)
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
                  _autorotationPreventionReasons = [(SBHomeScreenViewController *)self _autorotationPreventionReasons];
                  v31 = [_autorotationPreventionReasons componentsJoinedByString:{@", "}];
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
      *&v32[4] = reasonCopy;
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

      if (([(NSMutableSet *)iconRotationPreventionReasons containsObject:reasonCopy]& 1) != 0)
      {
        goto LABEL_15;
      }

      [(NSMutableSet *)self->_iconRotationPreventionReasons addObject:reasonCopy];
      v9 = BKLogOrientationGlobal();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *v32 = 138543362;
      *&v32[4] = reasonCopy;
      v10 = "Disabling home screen icon rotation for reason: %{public}@";
    }

    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, v10, v32, 0xCu);
    goto LABEL_14;
  }

LABEL_45:
}

- (void)_appIconForceTouchControllerWillPresentNotification:(id)notification
{
  object = [notification object];
  [(SBHomeScreenViewController *)self _acquireForceTouchOrientationUpdateDeferralAssertionForIconView:object];
  [(SBHomeScreenViewController *)self _acquireForceTouchWindowLevelAssertionForIconView:object];
}

- (void)_appIconForceTouchControllerDidDismissNotification:(id)notification
{
  object = [notification object];
  [(SBHomeScreenViewController *)self _relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:object];
  [(SBHomeScreenViewController *)self _relinquishForceTouchWindowLevelAssertionForIconView:object];
}

- (void)_acquireForceTouchOrientationUpdateDeferralAssertionForIconView:(id)view
{
  viewCopy = view;
  v11 = viewCopy;
  if (!viewCopy)
  {
    [SBHomeScreenViewController _acquireForceTouchOrientationUpdateDeferralAssertionForIconView:];
    viewCopy = 0;
  }

  appIconForceTouchControllerOrientationUpdateDeferralAssertions = self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions;
  if (!appIconForceTouchControllerOrientationUpdateDeferralAssertions)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v7 = self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions;
    self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions = weakToStrongObjectsMapTable;

    viewCopy = v11;
    appIconForceTouchControllerOrientationUpdateDeferralAssertions = self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions;
  }

  v8 = [(NSMapTable *)appIconForceTouchControllerOrientationUpdateDeferralAssertions objectForKey:viewCopy];
  if (!v8)
  {
    v9 = SBApp;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"AppIconForceTouchController is presented context menu for %@", v11];
    v8 = [v9 deviceOrientationUpdateDeferralAssertionWithReason:v10];

    [(NSMapTable *)self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions setObject:v8 forKey:v11];
  }
}

- (void)_relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  if (!viewCopy)
  {
    [SBHomeScreenViewController _relinquishForceTouchOrientationUpdateDeferralAssertionForIconView:];
    viewCopy = 0;
  }

  v5 = [(NSMapTable *)self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions objectForKey:viewCopy];
  [v5 invalidate];
  [(NSMapTable *)self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions removeObjectForKey:v6];
}

- (void)_acquireForceTouchWindowLevelAssertionForIconView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    [SBHomeScreenViewController _acquireForceTouchWindowLevelAssertionForIconView:];
  }

  if (+[SBFloatingDockController isFloatingDockSupported])
  {
    v5 = [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions objectForKey:viewCopy];
    if (!v5)
    {
      window = [viewCopy window];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!self->_appIconForceTouchControllerWindowLevelAssertions)
          {
            weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
            appIconForceTouchControllerWindowLevelAssertions = self->_appIconForceTouchControllerWindowLevelAssertions;
            self->_appIconForceTouchControllerWindowLevelAssertions = weakToStrongObjectsMapTable;
          }

          window2 = [viewCopy window];
          [window2 windowLevel];
          v11 = v10 + -1.0;

          _sbWindowScene = [viewCopy _sbWindowScene];
          floatingDockController = [_sbWindowScene floatingDockController];
          v14 = [SBFloatingDockWindowLevelAssertion alloc];
          v15 = NSStringFromSelector(a2);
          v16 = [(SBFloatingDockWindowLevelAssertion *)v14 initWithFloatingDockController:floatingDockController priority:2 level:v15 reason:v11];

          [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions setObject:v16 forKey:viewCopy];
        }
      }
    }
  }
}

- (void)_relinquishForceTouchWindowLevelAssertionForIconView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    [SBHomeScreenViewController _relinquishForceTouchWindowLevelAssertionForIconView:];
  }

  if (+[SBFloatingDockController isFloatingDockSupported])
  {
    v4 = [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions objectForKey:viewCopy];
    [v4 invalidate];
    [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions removeObjectForKey:viewCopy];
  }
}

- (void)_dismissAllIconForceTouchControllersDidFire:(id)fire
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [(NSMapTable *)self->_appIconForceTouchControllerOrientationUpdateDeferralAssertions copy];
  v5 = [(NSMapTable *)self->_appIconForceTouchControllerWindowLevelAssertions copy];
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = MEMORY[0x277CBEB98];
  keyEnumerator = [v4 keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v10 = [v7 setWithArray:allObjects];
  [v6 unionSet:v10];

  v11 = MEMORY[0x277CBEB98];
  keyEnumerator2 = [v5 keyEnumerator];
  allObjects2 = [keyEnumerator2 allObjects];
  v14 = [v11 setWithArray:allObjects2];
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

- (void)_floatingDockFrameDidChange:(id)change
{
  view = [(SBHomeScreenViewController *)self view];
  [view setNeedsLayout];
}

- (void)zStackParticipantDidChange:(id)change
{
  changeCopy = change;
  v5 = +[(SBWorkspace *)SBMainWorkspace];
  currentTransaction = [v5 currentTransaction];

  transitionRequest = [currentTransaction transitionRequest];
  v8 = objc_opt_class();
  v9 = transitionRequest;
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

  source = [v11 source];
  v13 = [(SBHomeScreenReturnToSpotlightPolicy *)self->_returnToSpotlightPolicy homeScreenZStackParticipantDidChange:changeCopy launchingForSpotlight:source == 2];

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
  windowScene = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  assistantController = [windowScene assistantController];
  [assistantController removeObserver:self];

  contextProvider = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
  [contextProvider removeFloatingDockControllerObserver:self];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)setHomeScreenFloatingDockAssertion:(uint64_t)assertion
{
  if (assertion)
  {
    OUTLINED_FUNCTION_0_18(assertion, a2, 1120);
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

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = SBHomeScreenViewController;
  [(SBHomeScreenViewController *)&v11 viewDidAppear:appear];
  view = [(SBHomeScreenViewController *)self view];
  window = [view window];
  [window _sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary];

  windowScene = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  statusBarManager = [windowScene statusBarManager];
  layoutManager = [statusBarManager layoutManager];
  [layoutManager addActiveLayoutLayer:0];

  if (!self || (v9 = self->_zStackParticipant) == 0)
  {
    zStackResolver = [windowScene zStackResolver];
    v9 = [zStackResolver acquireParticipantWithIdentifier:0 delegate:self];
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

- (void)setZStackParticipant:(uint64_t)participant
{
  if (participant)
  {
    OUTLINED_FUNCTION_0_18(participant, a2, 1144);
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

- (void)_acquireFloatingDockBehaviorAssertionIfNecessaryForFloatingDockController:(id)controller
{
  controllerCopy = controller;
  windowScene = [controllerCopy windowScene];
  windowScene2 = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];

  if (windowScene2 == windowScene)
  {
    if (!self || (v6 = self->_homeScreenFloatingDockAssertion) == 0)
    {
      v6 = [[SBFloatingDockBehaviorAssertion alloc] initWithFloatingDockController:controllerCopy visibleProgress:1 animated:0 gesturePossible:0 atLevel:@"homescreen" reason:0 withCompletion:1.0];
      [(SBHomeScreenViewController *)self setHomeScreenFloatingDockAssertion:v6];
    }
  }
}

- (void)_endAppearanceTransitionForChildViewControllersToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  childViewControllers = [(SBHomeScreenViewController *)self childViewControllers];
  v5 = [childViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        contextProvider = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
        _sbWindowScene = [(UIViewController *)self _sbWindowScene];
        v12 = [contextProvider libraryViewControllerForWindowScene:_sbWindowScene];

        homeScreenOverlayController = [contextProvider homeScreenOverlayController];
        viewController = [homeScreenOverlayController viewController];

        if (v9 != viewController && v9 != v12)
        {
          [(SBHomeScreenViewController *)self bs_endAppearanceTransitionForChildViewController:v9 toVisible:visibleCopy];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [childViewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  iconManager = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
  [iconManager cancelAllFolderScrolling];
}

- (void)_performInitialLayoutWithOrientation:(int64_t)orientation
{
  v12 = *MEMORY[0x277D85DE8];
  performedInitialLayout = self->_performedInitialLayout;
  self->_performedInitialLayout = 1;
  v6 = SBLogIcon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    orientationCopy = orientation;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "Peforming initial layout with orientation (%lu)", &v10, 0xCu);
  }

  iconManager = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
  if (orientation)
  {
    _iconContentView = [(SBHomeScreenViewController *)self _iconContentView];
    [_iconContentView setOrientation:orientation];
    [iconManager noteInterfaceOrientationChanged];
  }

  [iconManager resetRootIconLists];
  if (!performedInitialLayout)
  {
    rootFolderController = [iconManager rootFolderController];
    [rootFolderController setCurrentPageIndex:objc_msgSend(rootFolderController animated:{"defaultPageIndex"), 0}];
  }
}

- (void)_updateHomeAffordanceView
{
  windowScene = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  view = [(SBHomeScreenViewController *)self view];
  assistantController = [windowScene assistantController];
  isHomeAffordanceDoubleTapGestureEnabled = [assistantController isHomeAffordanceDoubleTapGestureEnabled];
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
    v7 = isHomeAffordanceDoubleTapGestureEnabled;
  }

  if (v7 == 1)
  {
    v9 = objc_alloc(MEMORY[0x277D65E78]);
    v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v10 setHintStyle:2];
    [view addSubview:v10];
    [(SBHomeScreenViewController *)self setHomeAffordanceView:v10];
    homeAffordanceInteractionManager = [windowScene homeAffordanceInteractionManager];
    newHomeAffordanceInteraction = [homeAffordanceInteractionManager newHomeAffordanceInteraction];
    v13 = newHomeAffordanceInteraction;
    if (newHomeAffordanceInteraction)
    {
      [newHomeAffordanceInteraction setDelegate:self];
      [view addInteraction:v13];
      [(SBHomeScreenViewController *)self setHomeAffordanceInteraction:v13];
      [(SBHomeScreenViewController *)self _updateHomeAffordanceInteraction];
    }
  }

  else
  {
    if (homeAffordanceView)
    {
      v8 = isHomeAffordanceDoubleTapGestureEnabled;
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

      [view removeInteraction:homeAffordanceInteraction];
      [(SBHomeScreenViewController *)self setHomeAffordanceInteraction:?];
    }
  }
}

- (void)setHomeAffordanceView:(uint64_t)view
{
  if (view)
  {
    OUTLINED_FUNCTION_0_18(view, a2, 1168);
  }
}

- (void)setHomeAffordanceInteraction:(uint64_t)interaction
{
  if (interaction)
  {
    OUTLINED_FUNCTION_0_18(interaction, a2, 1160);
  }
}

- (void)_prepareForTransitionToSize:(CGSize)size andInterfaceOrientation:(int64_t)orientation withTransitionCoordinator:(id)coordinator
{
  [coordinator transitionDuration];
  v8 = v7;
  v9 = +[SBWallpaperController sharedInstance];
  [v9 orientationSource:2 willRotateToInterfaceOrientation:orientation duration:v8];

  v10 = +[SBReachabilityManager sharedInstance];
  [v10 setReachabilityTemporarilyDisabled:1 forReason:@"MainWindowRotation"];

  windowScene = [(SBHomeScreenViewController *)&self->super.super.super.isa windowScene];
  LODWORD(v10) = SBWorkspaceLauncherIsActive(windowScene, 1);

  if (v10)
  {
    v12 = SBApp;

    [v12 noteInterfaceOrientationChanged:orientation duration:@"Home Screen is transitioning" logMessage:v8];
  }
}

- (id)containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  contextProvider = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
  if (sheetCopy && (+[SBCoverSheetPresentationManager sharedInstance](SBCoverSheetPresentationManager, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isVisibleAndNotDisappearing], v6, v7))
  {
    coverSheetTodayViewController = [contextProvider coverSheetTodayViewController];
  }

  else
  {
    coverSheetTodayViewController = [contextProvider todayViewController];
  }

  v9 = coverSheetTodayViewController;
  if ([coverSheetTodayViewController _appearState] == 2 || objc_msgSend(v9, "_appearState") == 1)
  {
    containerViewController = [v9 containerViewController];
    v11 = containerViewController;
    if (containerViewController)
    {
      selfCopy = containerViewController;
    }

    else
    {
      selfCopy = self;
    }

    selfCopy2 = selfCopy;
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)containerViewForPresentingContextMenuForIconView:(id)view
{
  viewCopy = view;
  _sbWindowScene = [viewCopy _sbWindowScene];
  floatingDockController = [_sbWindowScene floatingDockController];
  contextProvider = [(SBHomeScreenViewController *)&self->super.super.super.isa contextProvider];
  _openFolderController = [contextProvider _openFolderController];
  floatingDockViewController = [floatingDockController floatingDockViewController];
  presentedFolderController = [floatingDockViewController presentedFolderController];

  location = [viewCopy location];

  if (!floatingDockController || !SBIconLocationGroupContainsLocation())
  {
    if (presentedFolderController)
    {
      selfCopy = presentedFolderController;
    }

    else
    {
      if (_openFolderController)
      {
        _openFolderController2 = [contextProvider _openFolderController];
        goto LABEL_13;
      }

      if (SBIconLocationGroupContainsLocation())
      {
        _openFolderController2 = [(SBHomeScreenViewController *)self containerViewControllerForPresentingFromTodayViewControllerAllowingCoverSheet:0];
        goto LABEL_13;
      }

      if (SBIconLocationGroupContainsLocation())
      {
        _openFolderController2 = [contextProvider libraryViewControllerForWindowScene:_sbWindowScene];
        goto LABEL_13;
      }

      selfCopy = self;
    }

    view = [(SBHomeScreenViewController *)selfCopy view];
    goto LABEL_14;
  }

  _openFolderController2 = [floatingDockController viewController];
LABEL_13:
  v15 = _openFolderController2;
  view = [_openFolderController2 view];

LABEL_14:

  return view;
}

- (void)_widgetEditViewWillAppear:(id)appear
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

- (void)setWidgetEditFloatingDockAssertion:(uint64_t)assertion
{
  if (assertion)
  {
    OUTLINED_FUNCTION_0_18(assertion, a2, 1128);
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

- (void)setWidgetEditViewControllerOrientationUpdateDeferralAssertion:(uint64_t)assertion
{
  if (assertion)
  {
    OUTLINED_FUNCTION_0_18(assertion, a2, 1136);
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

- (void)_iconEditingDidChange:(id)change
{
  if (self)
  {
    self = self->_zStackParticipant;
  }

  [(SBHomeScreenViewController *)self setNeedsUpdatePreferencesWithReason:@"Home Screen editing changed"];
}

- (void)homeAffordanceInteractionDidRecognizeSingleTap:(id)tap
{
  if (self)
  {
    self = self->_homeAffordanceView;
  }

  [(SBHomeScreenViewController *)self performHintAnimation];
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  iconManager = [(SBHomeScreenViewController *)&self->super.super.super.isa iconManager];
  [preferencesCopy setSuppressSystemApertureForSystemChromeSuppression:{objc_msgSend(iconManager, "isEditing")}];
  [preferencesCopy setAllowsDimmingWhenForegroundInactive:1];
}

- (uint64_t)isRotating
{
  if (self)
  {
    v1 = *(self + 1035);
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
  if (self)
  {
    v1 = *(self + 1036);
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
  iconManager = [(SBHomeScreenViewController *)self iconManager];
  appearanceController = [(SBHomeScreenViewController *)self appearanceController];
  if ([iconManager hasAnimatingFolder] || objc_msgSend(iconManager, "isIconDragging") && !objc_msgSend(self, "homeScreenAutorotatesEvenWhenIconIsDragging") || objc_msgSend(self[124], "count") || (objc_msgSend(appearanceController, "isIconListViewTornDown") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [iconManager isTransitioningHomeScreenState] ^ 1;
  }

  *a2 = v5;
}

- (void)_autorotationPreventionReasons
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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