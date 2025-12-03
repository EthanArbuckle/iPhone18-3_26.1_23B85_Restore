@interface SBTransientOverlayViewController
- (BOOL)_isKeyboardVisibleForSpringBoard;
- (BOOL)hasVisibleStatusBar;
- (BOOL)shouldAutorotate;
- (CGAffineTransform)presentationContentTransform;
- (CGAffineTransform)presentationHomeGrabberTransform;
- (CGRect)_currentStatusBarFrameForStyle:(int64_t)style;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (NSString)preferredDisplayLayoutElementIdentifier;
- (SBIdleTimerCoordinating)idleTimerCoordinator;
- (SBSDisplayLayoutElement)_displayLayoutElement;
- (SBTransientOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBTransientOverlayViewControllerDelegate)transientOverlayDelegate;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIView)contentView;
- (_UILegibilitySettings)preferredStatusBarLegibilitySettings;
- (id)_newHomeGrabberViewWithFrame:(CGRect)frame;
- (id)_sbWindowScene;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (id)succinctDescription;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applyStatusBarStyleRequestWithInitialStatusBarSettings:(id)settings;
- (void)_invalidateKeyboardHomeAffordanceAssertion;
- (void)_keyboardWillHideNotification:(id)notification;
- (void)_keyboardWillShowNotification:(id)notification;
- (void)_updateGrabberViewConfiguration;
- (void)_updateGrabberViewHiddenConfigurationAnimated:(BOOL)animated;
- (void)addPresentationBackgroundView:(id)view;
- (void)dealloc;
- (void)endIgnoringAppearanceUpdates;
- (void)endIgnoringContentOverlayInsetUpdates;
- (void)preserveInputViewsAnimated:(BOOL)animated;
- (void)removePresentationBackgroundView:(id)view;
- (void)restoreInputViewsAnimated:(BOOL)animated;
- (void)setContainerOrientation:(int64_t)orientation;
- (void)setDisplayLayoutElementActive:(BOOL)active;
- (void)setNeedsAudioCategoriesDisablingVolumeHUDUpdate;
- (void)setNeedsContentOpaqueUpdate;
- (void)setNeedsFeaturePolicyUpdate;
- (void)setNeedsGestureDismissalStyleUpdate;
- (void)setNeedsHIDEventDeferringDisabledUpdate;
- (void)setNeedsIdleTimerReset;
- (void)setNeedsOrientationUpdatesDisabledUpdate;
- (void)setNeedsProximityDetectionUpdate;
- (void)setNeedsSceneDeactivationUpdate;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setNeedsUpdateOfSupportedInterfaceOrientations;
- (void)setNeedsWhitePointAdaptivityStyleUpdate;
- (void)setNeedsWindowHitTestingUpdate;
- (void)setPresentationContentCornerRadius:(double)radius;
- (void)setPresentationContentTransform:(CGAffineTransform *)transform;
- (void)setPresentationDimmingViewHidden:(BOOL)hidden;
- (void)setPresentationHomeGrabberAdditionalEdgeSpacing:(double)spacing;
- (void)setPresentationHomeGrabberAlpha:(double)alpha;
- (void)setPresentationHomeGrabberTransform:(CGAffineTransform *)transform;
- (void)setPresentationPrefersHomeGrabberHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setPresentationPrefersStatusBarHidden:(BOOL)hidden initialStatusBarSettings:(id)settings;
- (void)updateDisplayLayoutElementWithBuilder:(id)builder;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBTransientOverlayViewController

- (SBTransientOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v13.receiver = self;
  v13.super_class = SBTransientOverlayViewController;
  v4 = [(SBTransientOverlayViewController *)&v13 initWithNibName:name bundle:bundle];
  if (v4)
  {
    rootSettings = [MEMORY[0x277D65E80] rootSettings];
    v6 = *(v4 + 129);
    *(v4 + 129) = rootSettings;

    *(v4 + 159) = 0x3FF0000000000000;
    v7 = MEMORY[0x277CBF2C0];
    v8 = *(MEMORY[0x277CBF2C0] + 32);
    *(v4 + 1352) = v8;
    v10 = *v7;
    v9 = v7[1];
    *(v4 + 1320) = *v7;
    *(v4 + 1336) = v9;
    *(v4 + 1368) = v10;
    *(v4 + 1384) = v9;
    *(v4 + 1400) = v8;
    *(v4 + 136) = 0x7FFFFFFFFFFFFFFFLL;
    *(v4 + 134) = 0x7FFFFFFFFFFFFFFFLL;
    v4[1126] = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__keyboardWillHideNotification_ name:*MEMORY[0x277D76C50] object:0];
    [defaultCenter addObserver:v4 selector:sel__keyboardWillShowNotification_ name:*MEMORY[0x277D76C60] object:0];
    [v4 setPresentationDimmingViewHidden:1];
  }

  return v4;
}

- (void)dealloc
{
  if (self->_statusBar)
  {
    _sbWindowScene = [(SBTransientOverlayViewController *)self _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    reusePool = [statusBarManager reusePool];
    [reusePool recycleStatusBar:self->_statusBar];
  }

  [(SBTransientOverlayViewController *)self _invalidateKeyboardHomeAffordanceAssertion];
  [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
  self->_isDisplayLayoutElementActive = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76C60] object:0];

  v7.receiver = self;
  v7.super_class = SBTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v7 dealloc];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBTransientOverlayViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBTransientOverlayViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (SBSDisplayLayoutElement)_displayLayoutElement
{
  displayLayoutElement = self->_displayLayoutElement;
  if (!displayLayoutElement)
  {
    v4 = objc_alloc(MEMORY[0x277D66A50]);
    preferredDisplayLayoutElementIdentifier = [(SBTransientOverlayViewController *)self preferredDisplayLayoutElementIdentifier];
    v6 = [v4 initWithIdentifier:preferredDisplayLayoutElementIdentifier];
    v7 = self->_displayLayoutElement;
    self->_displayLayoutElement = v6;

    displayLayoutElement = self->_displayLayoutElement;
  }

  return displayLayoutElement;
}

- (void)updateDisplayLayoutElementWithBuilder:(id)builder
{
  builderCopy = builder;
  _displayLayoutElement = [(SBTransientOverlayViewController *)self _displayLayoutElement];
  if (self->_displayLayoutElementAssertion)
  {
    _sbWindowScene = [(SBTransientOverlayViewController *)self _sbWindowScene];
    displayLayoutPublisher = [_sbWindowScene displayLayoutPublisher];

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [displayLayoutPublisher transitionAssertionWithReason:v8];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    builderCopy[2](builderCopy, _displayLayoutElement);
  }

  else
  {
    builderCopy[2](builderCopy, _displayLayoutElement);
    if (![(SBTransientOverlayViewController *)self isDisplayLayoutElementActive])
    {
      goto LABEL_6;
    }

    _sbWindowScene2 = [(SBTransientOverlayViewController *)self _sbWindowScene];
    displayLayoutPublisher = [_sbWindowScene2 displayLayoutPublisher];

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v9 = [displayLayoutPublisher transitionAssertionWithReason:v13];

    builderCopy[2](builderCopy, _displayLayoutElement);
  }

  v14 = [displayLayoutPublisher addElement:_displayLayoutElement];
  v15 = self->_displayLayoutElementAssertion;
  self->_displayLayoutElementAssertion = v14;

  [v9 invalidate];
LABEL_6:
}

- (void)setDisplayLayoutElementActive:(BOOL)active
{
  self->_isDisplayLayoutElementActive = active;
  if (active)
  {

    [(SBTransientOverlayViewController *)self updateDisplayLayoutElementWithBuilder:&__block_literal_global_447];
  }

  else
  {
    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;
  }
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  v4 = [WeakRetained defaultPreferredInterfaceOrientationForPresentationForTransientOverlayViewController:self];

  return v4;
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewControllerNeedsStatusBarAppearanceUpdate:self];

  [(SBTransientOverlayViewController *)self _applyStatusBarStyleRequestWithInitialStatusBarSettings:0];
}

- (void)setNeedsWhitePointAdaptivityStyleUpdate
{
  transientOverlayDelegate = [(SBTransientOverlayViewController *)self transientOverlayDelegate];
  [transientOverlayDelegate transientOverlayViewControllerNeedsWhitePointAdaptivityStyleUpdate:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  v4 = [WeakRetained defaultSupportedInterfaceOrientationsForTransientOverlayViewController:self];

  return v4;
}

- (BOOL)shouldAutorotate
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleTransientOverlay"))
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  v5 = [WeakRetained defaultShouldAutorotateForTransientOverlayViewController:self];

  return v5;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v4 viewDidAppear:appear];
  if (![(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates])
  {
    [(SBTransientOverlayViewController *)self setDisplayLayoutElementActive:1];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v4 viewDidDisappear:disappear];
  if (![(SBTransientOverlayViewController *)self isIgnoringAppearanceUpdates])
  {
    [(SBTransientOverlayViewController *)self setDisplayLayoutElementActive:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SBTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v25 viewDidLayoutSubviews];
  view = [(SBTransientOverlayViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIView *)self->_backgroundView setFrame:?];
  [(UIView *)self->_presentationBackgroundView setFrame:v5, v7, v9, v11];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  subviews = [(UIView *)self->_presentationBackgroundView subviews];
  v13 = [subviews countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(subviews);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        [(UIView *)self->_presentationBackgroundView bounds];
        [v17 setFrame:?];
      }

      v14 = [subviews countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v14);
  }

  [(UIView *)self->_contentContainerView sb_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
  [(UIView *)self->_homeGrabberContainerView sb_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
  contentView = self->_contentView;
  [(UIView *)self->_contentContainerView bounds];
  [(UIView *)contentView setFrame:?];
  grabberView = self->_grabberView;
  [(UIView *)self->_homeGrabberContainerView bounds];
  [(SBHomeGrabberView *)grabberView setFrame:?];
  statusBar = self->_statusBar;
  [(SBTransientOverlayViewController *)self _currentStatusBarFrameForStyle:[(UIStatusBar *)statusBar currentStyle]];
  [(UIStatusBar *)statusBar setFrame:?];
  [(UIView *)self->_dimmingView setFrame:v5, v7, v9, v11];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = SBTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v30 viewDidLoad];
  view = [(SBTransientOverlayViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v6, v8, v10}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v12;

  [view addSubview:self->_backgroundView];
  if ([(SBTransientOverlayViewController *)self preventsClippingToBounds])
  {
    v14 = 0;
  }

  else
  {
    v14 = BSFloatGreaterThanFloat();
  }

  v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v15;

  [(UIView *)self->_contentContainerView _setContinuousCornerRadius:self->_presentationContentCornerRadius];
  [(UIView *)self->_contentContainerView setClipsToBounds:v14];
  v17 = self->_contentContainerView;
  v18 = *&self->_presentationContentTransform.c;
  v27 = *&self->_presentationContentTransform.a;
  v28 = v18;
  v29 = *&self->_presentationContentTransform.tx;
  [(UIView *)v17 setTransform:&v27];
  [view addSubview:self->_contentContainerView];
  v19 = [objc_alloc(MEMORY[0x277D65F80]) initWithFrame:{v5, v7, v9, v11}];
  homeGrabberContainerView = self->_homeGrabberContainerView;
  self->_homeGrabberContainerView = v19;

  [(UIView *)self->_homeGrabberContainerView _setContinuousCornerRadius:self->_presentationContentCornerRadius];
  [(UIView *)self->_homeGrabberContainerView setClipsToBounds:v14];
  v21 = self->_homeGrabberContainerView;
  v22 = *&self->_presentationHomeGrabberTransform.c;
  v27 = *&self->_presentationHomeGrabberTransform.a;
  v28 = v22;
  v29 = *&self->_presentationHomeGrabberTransform.tx;
  [(UIView *)v21 setTransform:&v27];
  [view addSubview:self->_homeGrabberContainerView];
  v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
  contentView = self->_contentView;
  self->_contentView = v23;

  [(UIView *)self->_contentContainerView addSubview:self->_contentView];
  if (self->_statusBar)
  {
    [(UIView *)self->_contentContainerView addSubview:?];
  }

  if (SBFEffectiveHomeButtonType() == 2)
  {
    v25 = [(SBTransientOverlayViewController *)self _newHomeGrabberViewWithFrame:v5, v7, v9, v11];
    grabberView = self->_grabberView;
    self->_grabberView = v25;

    [(SBHomeGrabberView *)self->_grabberView setDelegate:self];
    [(SBHomeGrabberView *)self->_grabberView setHidden:1 forReason:@"_SBTransientOverlayViewControllerHomeGrabberHiddenReason" withAnimationSettings:0];
    [(SBHomeGrabberView *)self->_grabberView setAlpha:self->_presentationHomeGrabberAlpha];
    [(UIView *)self->_homeGrabberContainerView addSubview:self->_grabberView];
    [(SBTransientOverlayViewController *)self _updateGrabberViewConfiguration];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = SBFWindowForViewControllerTransition();
  _toWindowOrientation = [v8 _toWindowOrientation];
  isRotating = [v8 isRotating];
  v13.receiver = self;
  v13.super_class = SBTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (isRotating)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__SBTransientOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v12[3] = &unk_2783BE3B8;
    v12[4] = self;
    v12[5] = _toWindowOrientation;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __87__SBTransientOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v11[3] = &unk_2783A9488;
    v11[4] = self;
    [coordinatorCopy animateAlongsideTransition:v12 completion:v11];
  }
}

void __87__SBTransientOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1240));
  [WeakRetained transientOverlayViewControllerWillBeginRotation:*(a1 + 32) toInterfaceOrientation:*(a1 + 40)];
}

void __87__SBTransientOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1240));
  [WeakRetained transientOverlayViewControllerDidEndRotation:*(a1 + 32)];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v12.receiver = self;
  v12.super_class = SBTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v12 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  keyboardHomeAffordanceAssertion = self->_keyboardHomeAffordanceAssertion;
  if (keyboardHomeAffordanceAssertion && self->_keyboardHomeAffordanceAssertionWindow != windowCopy)
  {
    v9 = keyboardHomeAffordanceAssertion;
    v10 = [SBKeyboardHomeAffordanceAssertion assertionForGestureWindow:windowCopy];
    v11 = self->_keyboardHomeAffordanceAssertion;
    self->_keyboardHomeAffordanceAssertion = v10;

    objc_storeStrong(&self->_keyboardHomeAffordanceAssertionWindow, window);
    [(SBKeyboardHomeAffordanceAssertion *)v9 invalidate];
  }
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  hasVisibleStatusBar = [(SBTransientOverlayViewController *)self hasVisibleStatusBar];
  v8 = 0.0;
  if (hasVisibleStatusBar)
  {
    [(UIStatusBar *)self->_statusBar currentHeight];
  }

  v9 = [sb_thisDeviceDisplayEdgeInfo sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:v8];

  containerOrientation = [(SBTransientOverlayViewController *)self containerOrientation];
  traitCollection = [(SBTransientOverlayViewController *)self traitCollection];
  [v9 sb_orientedEdgeInsetsForInterfaceOrientation:containerOrientation traitCollection:traitCollection];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  if (absolute)
  {
    *absolute = 1;
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (UIView)contentView
{
  [(SBTransientOverlayViewController *)self loadViewIfNeeded];
  contentView = self->_contentView;

  return contentView;
}

- (BOOL)hasVisibleStatusBar
{
  [(UIStatusBar *)self->_statusBar alpha];

  return BSFloatGreaterThanFloat();
}

- (NSString)preferredDisplayLayoutElementIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)setContainerOrientation:(int64_t)orientation
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_containerOrientation != orientation)
  {
    self->_containerOrientation = orientation;
    [(UIStatusBar *)self->_statusBar setOrientation:?];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    childViewControllers = [(SBTransientOverlayViewController *)self childViewControllers];
    v5 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(childViewControllers);
          }

          [*(*(&v9 + 1) + 8 * v8++) _updateContentOverlayInsetsFromParentIfNecessary];
        }

        while (v6 != v8);
        v6 = [childViewControllers countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setPresentationContentCornerRadius:(double)radius
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_presentationContentCornerRadius = radius;
    [(UIView *)self->_contentView _setContinuousCornerRadius:radius];
    if ([(SBTransientOverlayViewController *)self preventsClippingToBounds])
    {
      v5 = 0;
    }

    else
    {
      v5 = BSFloatGreaterThanFloat();
    }

    contentView = self->_contentView;

    [(UIView *)contentView setClipsToBounds:v5];
  }
}

- (void)setPresentationContentTransform:(CGAffineTransform *)transform
{
  p_presentationContentTransform = &self->_presentationContentTransform;
  v6 = *&self->_presentationContentTransform.c;
  *&t1.a = *&self->_presentationContentTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_presentationContentTransform.tx;
  v7 = *&transform->c;
  *&v12.a = *&transform->a;
  *&v12.c = v7;
  *&v12.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_presentationContentTransform->c = *&transform->c;
    *&p_presentationContentTransform->tx = v9;
    *&p_presentationContentTransform->a = v8;
    contentContainerView = self->_contentContainerView;
    v11 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v11;
    *&t1.tx = *&transform->tx;
    [(UIView *)contentContainerView setTransform:&t1];
  }
}

- (void)setPresentationHomeGrabberTransform:(CGAffineTransform *)transform
{
  p_presentationHomeGrabberTransform = &self->_presentationHomeGrabberTransform;
  v6 = *&self->_presentationHomeGrabberTransform.c;
  *&t1.a = *&self->_presentationHomeGrabberTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_presentationHomeGrabberTransform.tx;
  v7 = *&transform->c;
  *&v12.a = *&transform->a;
  *&v12.c = v7;
  *&v12.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_presentationHomeGrabberTransform->c = *&transform->c;
    *&p_presentationHomeGrabberTransform->tx = v9;
    *&p_presentationHomeGrabberTransform->a = v8;
    homeGrabberContainerView = self->_homeGrabberContainerView;
    v11 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v11;
    *&t1.tx = *&transform->tx;
    [(UIView *)homeGrabberContainerView setTransform:&t1];
  }
}

- (void)setPresentationHomeGrabberAdditionalEdgeSpacing:(double)spacing
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_presentationHomeGrabberAdditionalEdgeSpacing = spacing;
    [(SBHomeGrabberView *)self->_grabberView setNeedsLayout];
    grabberView = self->_grabberView;

    [(SBHomeGrabberView *)grabberView layoutIfNeeded];
  }
}

- (void)setPresentationDimmingViewHidden:(BOOL)hidden
{
  if (self->_presentationDimmingViewHidden != hidden)
  {
    self->_presentationDimmingViewHidden = hidden;
    dimmingView = self->_dimmingView;
    if (hidden)
    {
      if (dimmingView)
      {
        [(SBTransientOverlayViewController *)self removePresentationBackgroundView:self->_dimmingView];
        v5 = self->_dimmingView;
        self->_dimmingView = 0;
      }
    }

    else if (!dimmingView)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __69__SBTransientOverlayViewController_setPresentationDimmingViewHidden___block_invoke;
      v6[3] = &unk_2783A8C18;
      v6[4] = self;
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v6];
    }
  }
}

uint64_t __69__SBTransientOverlayViewController_setPresentationDimmingViewHidden___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D65F80]);
  v3 = [*(a1 + 32) view];
  [v3 bounds];
  v4 = [v2 initWithFrame:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1016);
  *(v5 + 1016) = v4;

  v7 = *(a1 + 32);
  v8 = v7[127];
  v9 = [v7 presentationDimmingViewColor];
  [v8 setBackgroundColor:v9];

  [*(a1 + 32) setPresentationDimmingAlpha:0.0];
  v10 = *(a1 + 32);
  v11 = v10[127];

  return [v10 addPresentationBackgroundView:v11];
}

- (void)setPresentationHomeGrabberAlpha:(double)alpha
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_presentationHomeGrabberAlpha = alpha;
    grabberView = self->_grabberView;

    [(SBHomeGrabberView *)grabberView setAlpha:alpha];
  }
}

- (id)_sbWindowScene
{
  v14.receiver = self;
  v14.super_class = SBTransientOverlayViewController;
  _sbWindowScene = [(UIViewController *)&v14 _sbWindowScene];
  v4 = _sbWindowScene;
  if (_sbWindowScene)
  {
    associatedWindowScene = _sbWindowScene;
  }

  else
  {
    viewIfLoaded = [(SBTransientOverlayViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    windowScene = [window windowScene];
    v9 = objc_opt_class();
    v10 = windowScene;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    associatedWindowScene = [v12 associatedWindowScene];
  }

  return associatedWindowScene;
}

- (void)endIgnoringAppearanceUpdates
{
  appearanceUpdateIgnoreCount = self->_appearanceUpdateIgnoreCount;
  v3 = appearanceUpdateIgnoreCount == 1;
  v4 = appearanceUpdateIgnoreCount < 1;
  v5 = appearanceUpdateIgnoreCount - 1;
  if (!v4)
  {
    self->_appearanceUpdateIgnoreCount = v5;
    if (v3)
    {
      v7 = [(SBTransientOverlayViewController *)self _appearState]== 2;

      [(SBTransientOverlayViewController *)self setDisplayLayoutElementActive:v7];
    }
  }
}

- (void)endIgnoringContentOverlayInsetUpdates
{
  contentOverlayInsetUpdateIgnoreCount = self->_contentOverlayInsetUpdateIgnoreCount;
  v3 = contentOverlayInsetUpdateIgnoreCount < 1;
  v4 = contentOverlayInsetUpdateIgnoreCount - 1;
  if (!v3)
  {
    self->_contentOverlayInsetUpdateIgnoreCount = v4;
  }
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v2 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  [(SBTransientOverlayBlockTransitionCoordinator *)v2 setStartTransitionHandler:&__block_literal_global_38_3];
  return v2;
}

void __85__SBTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 performAlongsideTransitions];
  [v2 completeTransition:1];
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v2 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  [(SBTransientOverlayBlockTransitionCoordinator *)v2 setStartTransitionHandler:&__block_literal_global_40_6];
  return v2;
}

void __88__SBTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 performAlongsideTransitions];
  [v2 completeTransition:1];
}

- (void)preserveInputViewsAnimated:(BOOL)animated
{
  if (!self->_hasPreservedInputViews)
  {
    animatedCopy = animated;
    self->_hasPreservedInputViews = 1;
    mEMORY[0x277D75830] = [MEMORY[0x277D75830] sharedInstance];
    v6 = [MEMORY[0x277CCAE60] valueWithPointer:self];
    [mEMORY[0x277D75830] _preserveInputViewsWithId:v6 animated:animatedCopy];
  }
}

- (void)restoreInputViewsAnimated:(BOOL)animated
{
  if (self->_hasPreservedInputViews)
  {
    animatedCopy = animated;
    self->_hasPreservedInputViews = 0;
    mEMORY[0x277D75830] = [MEMORY[0x277D75830] sharedInstance];
    v6 = [MEMORY[0x277CCAE60] valueWithPointer:self];
    [mEMORY[0x277D75830] _restoreInputViewsWithId:v6 animated:animatedCopy];
  }
}

- (_UILegibilitySettings)preferredStatusBarLegibilitySettings
{
  preferredStatusBarStyle = [(SBTransientOverlayViewController *)self preferredStatusBarStyle];
  if (preferredStatusBarStyle == -1)
  {
    v7 = 0;
  }

  else
  {
    if (!preferredStatusBarStyle)
    {
      traitCollection = [(SBTransientOverlayViewController *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
      {
        preferredStatusBarStyle = 1;
      }

      else
      {
        preferredStatusBarStyle = 3;
      }
    }

    if (preferredStatusBarStyle == 3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [objc_alloc(MEMORY[0x277D760A8]) initWithStyle:v6];
  }

  return v7;
}

- (void)setNeedsContentOpaqueUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewControllerNeedsContentOpaqueUpdate:self];
}

- (void)setNeedsFeaturePolicyUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewControllerNeedsFeaturePolicyUpdate:self];
}

- (void)setNeedsGestureDismissalStyleUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewControllerNeedsGestureDismissalStyleUpdate:self];
}

- (void)setNeedsIdleTimerReset
{
  v2 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  [v2 resetIdleTimerForReason:@"TransientOverlay"];
}

- (void)setNeedsUpdateOfSupportedInterfaceOrientations
{
  v4.receiver = self;
  v4.super_class = SBTransientOverlayViewController;
  [(UIViewController *)&v4 setNeedsUpdateOfSupportedInterfaceOrientations];
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayDidUpdateSupportedInterfaceOrientations:self];
}

- (void)setNeedsOrientationUpdatesDisabledUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewControllerNeedsOrientationUpdatesDisabledUpdate:self];
}

- (void)setNeedsProximityDetectionUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewControllerNeedsProximityDetectionUpdate:self];
}

- (void)setNeedsAudioCategoriesDisablingVolumeHUDUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewController:self requestZStackParticipantPreferencesUpdateWithReason:@"AudioCategoriesDisablingVolumeHUD Updated"];
}

- (void)setNeedsSceneDeactivationUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewControllerNeedsSceneDeactivationUpdate:self];
}

- (void)setPresentationPrefersHomeGrabberHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  presentationPrefersHomeGrabberHidden = self->_presentationPrefersHomeGrabberHidden;
  if (presentationPrefersHomeGrabberHidden == 0x7FFFFFFFFFFFFFFFLL || presentationPrefersHomeGrabberHidden != BSSettingFlagForBool())
  {
    self->_presentationPrefersHomeGrabberHidden = BSSettingFlagForBool();

    [(SBTransientOverlayViewController *)self _updateGrabberViewHiddenConfigurationAnimated:animatedCopy];
  }
}

- (void)setPresentationPrefersStatusBarHidden:(BOOL)hidden initialStatusBarSettings:(id)settings
{
  hiddenCopy = hidden;
  settingsCopy = settings;
  presentationPrefersStatusBarHidden = self->_presentationPrefersStatusBarHidden;
  v10 = settingsCopy;
  if (settingsCopy || (v8 = 0, presentationPrefersStatusBarHidden != hiddenCopy))
  {
    self->_presentationPrefersStatusBarHidden = hiddenCopy;
    [(SBTransientOverlayViewController *)self _applyStatusBarStyleRequestWithInitialStatusBarSettings:settingsCopy];
    v8 = v10;
  }

  if (presentationPrefersStatusBarHidden != hiddenCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
    [WeakRetained transientOverlayViewControllerDidUpdatePresentationPrefersStatusBarHidden:self];

    v8 = v10;
  }
}

- (void)setNeedsWindowHitTestingUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewControllerNeedsWindowHitTestingUpdate:self];
}

- (void)setNeedsHIDEventDeferringDisabledUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  [WeakRetained transientOverlayViewControllerDidUpdateHIDEventDeferringDisabled:self];
}

- (void)addPresentationBackgroundView:(id)view
{
  viewCopy = view;
  presentationBackgroundView = self->_presentationBackgroundView;
  v10 = viewCopy;
  if (!presentationBackgroundView)
  {
    view = [(SBTransientOverlayViewController *)self view];
    v7 = objc_alloc(MEMORY[0x277D75D18]);
    [view bounds];
    v8 = [v7 initWithFrame:?];
    v9 = self->_presentationBackgroundView;
    self->_presentationBackgroundView = v8;

    [view insertSubview:self->_presentationBackgroundView belowSubview:self->_backgroundView];
    viewCopy = v10;
    presentationBackgroundView = self->_presentationBackgroundView;
  }

  [(UIView *)presentationBackgroundView addSubview:viewCopy];
  [(UIView *)self->_presentationBackgroundView bounds];
  [v10 setFrame:?];
}

- (void)removePresentationBackgroundView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  presentationBackgroundView = self->_presentationBackgroundView;

  if (superview == presentationBackgroundView)
  {
    [viewCopy removeFromSuperview];
  }

  subviews = [(UIView *)self->_presentationBackgroundView subviews];
  v7 = [subviews count];

  if (!v7)
  {
    [(UIView *)self->_presentationBackgroundView removeFromSuperview];
    v8 = self->_presentationBackgroundView;
    self->_presentationBackgroundView = 0;
  }
}

- (void)_keyboardWillHideNotification:(id)notification
{
  if (self->_keyboardVisible)
  {
    self->_keyboardVisible = 0;
    [(SBTransientOverlayViewController *)self _updateGrabberViewHiddenConfigurationAnimated:1];
  }

  [(SBTransientOverlayViewController *)self handleWillShowKeyboard:0];
}

- (void)_keyboardWillShowNotification:(id)notification
{
  if ([(SBTransientOverlayViewController *)self _isKeyboardVisibleForSpringBoard])
  {
    if (self->_keyboardVisible != 1)
    {
      self->_keyboardVisible = 1;
      [(SBTransientOverlayViewController *)self _updateGrabberViewHiddenConfigurationAnimated:1];
    }
  }

  else
  {
    self->_keyboardVisible = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(SBTransientOverlayViewController *)self handleWillShowKeyboard:1];
}

- (BOOL)_isKeyboardVisibleForSpringBoard
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  LOBYTE(selfCopy) = [WeakRetained isKeyboardVisibleForSpringBoardForTransientOverlayViewController:selfCopy];

  return selfCopy;
}

- (id)_newHomeGrabberViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [SBHomeGrabberView alloc];

  return [(SBHomeGrabberView *)v7 initWithFrame:x, y, width, height];
}

- (void)_applyStatusBarStyleRequestWithInitialStatusBarSettings:(id)settings
{
  v36 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  _preferredStatusBarVisibility = [(SBTransientOverlayViewController *)self _preferredStatusBarVisibility];
  if (self->_presentationPrefersStatusBarHidden || (v6 = _preferredStatusBarVisibility) == 0)
  {
    [(UIStatusBar *)self->_statusBar setAlpha:0.0];
  }

  else
  {
    preferredStatusBarStyle = [(SBTransientOverlayViewController *)self preferredStatusBarStyle];
    _sbWindowScene = [(SBTransientOverlayViewController *)self _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];

    reusePool = [statusBarManager reusePool];
    assertionManager = [statusBarManager assertionManager];
    if (!self->_statusBar)
    {
      [(SBTransientOverlayViewController *)self _currentStatusBarFrameForStyle:preferredStatusBarStyle];
      v12 = [reusePool getReusableStatusBarWithReason:@"TransientOverlay" withFrame:?];
      statusBar = self->_statusBar;
      self->_statusBar = v12;

      [(UIView *)self->_contentContainerView addSubview:self->_statusBar];
    }

    if (settingsCopy)
    {
      v14 = [assertionManager effectiveStatusBarStyleRequestWithSettings:settingsCopy];
      objc_storeStrong(&self->_currentStatusBarStyleRequest, v14);
      v15 = MEMORY[0x277D75D18];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __92__SBTransientOverlayViewController__applyStatusBarStyleRequestWithInitialStatusBarSettings___block_invoke;
      v32[3] = &unk_2783A8ED8;
      v32[4] = self;
      v33 = v14;
      v34 = settingsCopy;
      v16 = v14;
      [v15 performWithoutAnimation:v32];
    }

    v17 = objc_alloc_init(SBMutableStatusBarSettings);
    v18 = v17;
    if (v6 == 2)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.0;
    }

    [(SBMutableStatusBarSettings *)v17 setStyle:preferredStatusBarStyle];
    preferredStatusBarLegibilitySettings = [(SBTransientOverlayViewController *)self preferredStatusBarLegibilitySettings];
    [(SBMutableStatusBarSettings *)v18 setLegibilitySettings:preferredStatusBarLegibilitySettings];

    preferredBackgroundActivitiesToSuppress = [(SBTransientOverlayViewController *)self preferredBackgroundActivitiesToSuppress];
    [(SBMutableStatusBarSettings *)v18 setBackgroundActivitiesToSuppress:preferredBackgroundActivitiesToSuppress];

    v22 = [assertionManager effectiveStatusBarStyleRequestWithSettings:v18];
    objc_storeStrong(&self->_currentStatusBarStyleRequest, v22);
    [(UIStatusBar *)self->_statusBar setAlpha:v19];
    if (BSFloatGreaterThanFloat())
    {
      [(UIStatusBar *)self->_statusBar setStyleRequest:v22];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  childViewControllers = [(SBTransientOverlayViewController *)self childViewControllers];
  v24 = [childViewControllers countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v28 + 1) + 8 * i) _updateContentOverlayInsetsFromParentIfNecessary];
      }

      v25 = [childViewControllers countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v25);
  }
}

void __92__SBTransientOverlayViewController__applyStatusBarStyleRequestWithInitialStatusBarSettings___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1080) setStyleRequest:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1080);
  v4 = [*(a1 + 48) alpha];
  [v4 floatValue];
  [v2 setAlpha:v3];
}

- (CGRect)_currentStatusBarFrameForStyle:(int64_t)style
{
  [(UIView *)self->_contentContainerView bounds];
  CGRectGetWidth(v10);
  [MEMORY[0x277D75A78] heightForStyle:style orientation:{-[SBTransientOverlayViewController containerOrientation](self, "containerOrientation")}];

  BSRectWithSize();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)_invalidateKeyboardHomeAffordanceAssertion
{
  [(SBKeyboardHomeAffordanceAssertion *)self->_keyboardHomeAffordanceAssertion invalidate];
  keyboardHomeAffordanceAssertion = self->_keyboardHomeAffordanceAssertion;
  self->_keyboardHomeAffordanceAssertion = 0;

  keyboardHomeAffordanceAssertionWindow = self->_keyboardHomeAffordanceAssertionWindow;
  self->_keyboardHomeAffordanceAssertionWindow = 0;
}

- (void)_updateGrabberViewConfiguration
{
  selfCopy = [(SBTransientOverlayViewController *)self childViewControllerForHomeIndicatorAutoHidden];
  v4 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  prefersHomeIndicatorAutoHidden = [selfCopy prefersHomeIndicatorAutoHidden];

  grabberView = self->_grabberView;
  grabberSettings = self->_grabberSettings;
  if (prefersHomeIndicatorAutoHidden)
  {
    [(SBFHomeGrabberSettings *)grabberSettings autoHideTimeOnAppRequest];
    [(SBHomeGrabberView *)grabberView turnOnAutoHideWithInitialDelay:?];
  }

  else
  {
    [(SBFHomeGrabberSettings *)grabberSettings delayForUnhideOnAppRequest];
    [(SBHomeGrabberView *)grabberView turnOffAutoHideWithDelay:?];
  }

  selfCopy2 = [(SBTransientOverlayViewController *)self childViewControllerForScreenEdgesDeferringSystemGestures];
  v9 = selfCopy2;
  if (!selfCopy2)
  {
    selfCopy2 = self;
  }

  preferredScreenEdgesDeferringSystemGestures = [selfCopy2 preferredScreenEdgesDeferringSystemGestures];

  [(SBHomeGrabberView *)self->_grabberView setEdgeProtectEnabled:(preferredScreenEdgesDeferringSystemGestures >> 2) & 1];
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);
  v12 = [WeakRetained transientOverlayViewControllerIsForegroundActive:self];

  v13 = self->_grabberView;

  [(SBHomeGrabberView *)v13 setHomeAffordanceInteractionEnabled:v12];
}

- (void)_updateGrabberViewHiddenConfigurationAnimated:(BOOL)animated
{
  if (self->_presentationPrefersHomeGrabberHidden == 0x7FFFFFFFFFFFFFFFLL || SBFEffectiveHomeButtonType() != 2)
  {
    return;
  }

  if (self->_keyboardVisible == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBTransientOverlayViewController *)self _isKeyboardVisibleForSpringBoard];
    self->_keyboardVisible = BSSettingFlagForBool();
  }

  [(SBTransientOverlayViewController *)self loadViewIfNeeded];
  if (self->_presentationPrefersHomeGrabberHidden)
  {
    [(SBTransientOverlayViewController *)self _invalidateKeyboardHomeAffordanceAssertion];
    grabberView = self->_grabberView;
    if (animated)
    {
      obj = [(SBFHomeGrabberSettings *)self->_grabberSettings hideAnimationSettings];
      bSAnimationSettings = [obj BSAnimationSettings];
      v7 = grabberView;
      v8 = 1;
LABEL_18:
      [(SBHomeGrabberView *)v7 setHidden:v8 forReason:@"_SBTransientOverlayViewControllerHomeGrabberHiddenReason" withAnimationSettings:bSAnimationSettings];
      goto LABEL_19;
    }

    v14 = self->_grabberView;
    v15 = 1;
  }

  else
  {
    if (self->_keyboardVisible == 1)
    {
      view = [(SBTransientOverlayViewController *)self view];
      obj = [view window];

      if (obj && !self->_keyboardHomeAffordanceAssertion)
      {
        v10 = [SBKeyboardHomeAffordanceAssertion assertionForGestureWindow:obj];
        keyboardHomeAffordanceAssertion = self->_keyboardHomeAffordanceAssertion;
        self->_keyboardHomeAffordanceAssertion = v10;

        objc_storeStrong(&self->_keyboardHomeAffordanceAssertionWindow, obj);
      }

      v12 = self->_grabberView;
      if (!animated)
      {
        [(SBHomeGrabberView *)self->_grabberView setHidden:1 forReason:@"_SBTransientOverlayViewControllerHomeGrabberHiddenReason" withAnimationSettings:0];
        goto LABEL_20;
      }

      bSAnimationSettings = [(SBFHomeGrabberSettings *)self->_grabberSettings hideAnimationSettings];
      v6BSAnimationSettings = [bSAnimationSettings BSAnimationSettings];
      [(SBHomeGrabberView *)v12 setHidden:1 forReason:@"_SBTransientOverlayViewControllerHomeGrabberHiddenReason" withAnimationSettings:v6BSAnimationSettings];

LABEL_19:
LABEL_20:

      return;
    }

    [(SBTransientOverlayViewController *)self _invalidateKeyboardHomeAffordanceAssertion];
    [(SBHomeGrabberView *)self->_grabberView resetAutoHide];
    v16 = self->_grabberView;
    if (animated)
    {
      obj = [(SBFHomeGrabberSettings *)self->_grabberSettings unhideAnimationSettings];
      bSAnimationSettings = [obj BSAnimationSettings];
      v7 = v16;
      v8 = 0;
      goto LABEL_18;
    }

    v14 = self->_grabberView;
    v15 = 0;
  }

  [(SBHomeGrabberView *)v14 setHidden:v15 forReason:@"_SBTransientOverlayViewControllerHomeGrabberHiddenReason" withAnimationSettings:0];
}

- (SBIdleTimerCoordinating)idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  x = self->_windowedAccessoryCutoutFrameInScreen.origin.x;
  y = self->_windowedAccessoryCutoutFrameInScreen.origin.y;
  width = self->_windowedAccessoryCutoutFrameInScreen.size.width;
  height = self->_windowedAccessoryCutoutFrameInScreen.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (SBTransientOverlayViewControllerDelegate)transientOverlayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transientOverlayDelegate);

  return WeakRetained;
}

- (CGAffineTransform)presentationContentTransform
{
  v3 = *&self[27].ty;
  *&retstr->a = *&self[27].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[28].b;
  return self;
}

- (CGAffineTransform)presentationHomeGrabberTransform
{
  v3 = *&self[28].ty;
  *&retstr->a = *&self[28].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[29].b;
  return self;
}

@end