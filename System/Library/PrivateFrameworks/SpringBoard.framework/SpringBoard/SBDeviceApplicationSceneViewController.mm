@interface SBDeviceApplicationSceneViewController
- (BOOL)_activeOverlaysWantResignActiveAssertion;
- (BOOL)_isApplicationStatusBarHidden;
- (BOOL)_shouldSuppressHomeGrabber;
- (BOOL)_statusBarHasMatchMoveAnimation;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)overlayViewProviderIsHostedInNonrotatingWindow:(id)a3;
- (BOOL)overlayViewProviderIsHostedInSecureWindow:(id)a3;
- (BOOL)sceneResizesHostedContext;
- (SBApplicationSceneBackgroundView)backgroundView;
- (SBDeviceApplicationSceneViewController)initWithSceneHandle:(id)a3;
- (SBDeviceApplicationSceneViewControllerDelegate)delegate;
- (SBHomeGrabberView)homeGrabberView;
- (id)animationFactoryForImplicitTransitionFromMode:(int64_t)a3 toMode:(int64_t)a4 defaultFactory:(id)a5;
- (id)backgroundActivitiesToSuppress;
- (id)currentStatusBarStyleAttributes;
- (id)hostWindowForOverlayViewProvider:(id)a3;
- (id)initialTraitsParticipantForOverlayViewProvider:(id)a3;
- (id)prepareForContentRotation;
- (id)statusBar:(id)a3 effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:(id)a4;
- (id)statusBarAssertionWithStatusBarHidden:(BOOL)a3 atLevel:(unint64_t)a4;
- (id)statusBarAssertionWithStatusBarSettings:(id)a3 atLevel:(unint64_t)a4;
- (id)windowSceneForOverlayViewProvider:(id)a3;
- (int64_t)_currentStatusBarStyle;
- (int64_t)_currentStatusBarStyleForPartWithIdentifier:(id)a3;
- (int64_t)_effectiveStyleForPartIdentifier:(id)a3;
- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)a3;
- (int64_t)leadingStatusBarStyle;
- (int64_t)overriddenRequestedStyleFromStyle:(int64_t)a3;
- (int64_t)trailingStatusBarStyle;
- (unint64_t)statusBar:(id)a3 effectiveStyleOverridesForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5;
- (void)_addStatusBarMatchMoveAnimationForView:(id)a3;
- (void)_applyBackgroundActivitiesToSuppress:(id)a3 toSceneWithIdentifier:(id)a4;
- (void)_configureForCurrentSecureDisplayState;
- (void)_configureForSecureDisplay:(BOOL)a3;
- (void)_configureStatusBarWithCurrentStyleRequest;
- (void)_createSceneOverlayViewProvidersIfNecessary;
- (void)_createStatusBar;
- (void)_deactivateOverlay:(id)a3 forViewProvider:(id)a4;
- (void)_destroySceneOverlayViewProviders;
- (void)_layoutStatusBar;
- (void)_recalculateResignActiveAssertionForActiveOverlays;
- (void)_relinquishResignActiveAssertion;
- (void)_removeStatusBar;
- (void)_removeStatusBarMatchMoveAnimation;
- (void)_setRealStatusBarStyleDelegate:(id)a3;
- (void)_setStatusBarAssertions:(id)a3;
- (void)_setStatusBarStyle:(int64_t)a3;
- (void)_setStatusBarStyle:(int64_t)a3 forPartWithIdentifier:(id)a4;
- (void)_setupStatusBarStylesFromSceneHandle:(id)a3;
- (void)_statusBarDoubleTapTop:(id)a3;
- (void)_statusBarTapped:(id)a3 type:(int64_t)a4;
- (void)_updateSceneFullyOccludedState:(id)a3 fullyOccluded:(BOOL)a4;
- (void)_updateStatusBarAppearanceForOverlayProvider:(id)a3;
- (void)_updateStatusBarState;
- (void)_updateWindowControlsAdaptiveStyle;
- (void)activateOverlayForViewProvider:(id)a3;
- (void)beginMaskingForReason:(int64_t)a3 continuation:(id)a4 scene:(id)a5;
- (void)containerDidUpdateTraitsParticipant:(id)a3;
- (void)deactivateOverlayForViewProvider:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4;
- (void)invalidate;
- (void)invalidateMasking:(id)a3;
- (void)overlayViewProviderNeedsStatusBarAppearanceUpdate:(id)a3;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didMoveFromSceneManager:(id)a4;
- (void)sceneView:(id)a3 changedPreferredStatusBarStyleTo:(int64_t)a4;
- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarHiddenTo:(BOOL)a4 withAnimation:(int64_t)a5;
- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarStyleTo:(int64_t)a4;
- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarStyleTo:(int64_t)a4 forPartWithIdentifier:(id)a5;
- (void)setBackgroundView:(id)a3;
- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5;
- (void)setHomeGrabberDisplayMode:(int64_t)a3;
- (void)setRendersWhileLocked:(BOOL)a3;
- (void)setSceneFlattenMode:(id)a3;
- (void)setSceneFullyOccluded:(BOOL)a3;
- (void)setSceneMinificationFilter:(id)a3;
- (void)setSceneRendersAsynchronously:(BOOL)a3;
- (void)setSceneResizesHostedContext:(BOOL)a3;
- (void)statusBarAssertionDidInvalidate:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)a3;
- (void)willRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 alongsideContainerView:(id)a5 animated:(BOOL)a6;
@end

@implementation SBDeviceApplicationSceneViewController

- (BOOL)_shouldSuppressHomeGrabber
{
  homeGrabberDisplayMode = self->_homeGrabberDisplayMode;
  if (!homeGrabberDisplayMode)
  {
    v3 = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings isEnabled];
    homeGrabberDisplayMode = 1;
    if (v3)
    {
      homeGrabberDisplayMode = 2;
    }
  }

  return homeGrabberDisplayMode == 1;
}

- (SBApplicationSceneBackgroundView)backgroundView
{
  v2 = [(SBSceneViewController *)self _sceneView];
  v3 = [v2 backgroundView];

  return v3;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SBDeviceApplicationSceneViewController;
  [(SBSceneViewController *)&v7 viewDidLoad];
  [(SBDeviceApplicationSceneViewController *)self _configureForCurrentSecureDisplayState];
  v3 = [(SBSceneViewController *)self _sceneView];
  [v3 setDelegate:self];
  v4 = [(SBDeviceApplicationSceneViewController *)self sceneMinificationFilter];
  [v3 setMinificationFilter:v4];

  [v3 setRendersAsynchronously:{-[SBDeviceApplicationSceneViewController sceneRendersAsynchronously](self, "sceneRendersAsynchronously")}];
  [v3 setAsynchronousOpaque:1];
  [(SBDeviceApplicationSceneViewController *)self _updateSceneFullyOccludedState:v3 fullyOccluded:[(SBDeviceApplicationSceneViewController *)self sceneFullyOccluded]];
  v5 = [(SBDeviceApplicationSceneViewController *)self sceneFlattenMode];
  [v3 setFlattenMode:v5];

  if (self->_statusBarAssertions || self->_shouldDrawStatusBarInsideSceneView)
  {
    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  }

  if (![(SBDeviceApplicationSceneViewController *)self _shouldSuppressHomeGrabber])
  {
    v6 = [(SBDeviceApplicationSceneViewController *)self homeGrabberPillSettings];
    [v3 createHomeGrabberViewIfNecessaryWithSettings:v6];
  }
}

- (void)_createStatusBar
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(SBSceneViewController *)self sceneHandle];
  v4 = [v3 _windowScene];
  v5 = [v3 sceneIdentifier];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v48 = v5;
  v9 = [v6 stringWithFormat:@"%@ - %@", v8, v5];

  v49 = v4;
  v10 = [v4 statusBarManager];
  v11 = [v10 reusePool];

  objc_storeWeak(&self->_statusBarReusePool, v11);
  v47 = v11;
  v12 = [v11 getReusableStatusBarWithReason:v9];
  statusBar = self->_statusBar;
  self->_statusBar = v12;

  v14 = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  if (v14)
  {
    v15 = [(SBSceneViewController *)self sceneHandle];
    v16 = [v15 breadcrumbProvider];

    if ([v16 hasAssistantBreadcrumb])
    {
      v17 = [v14 actionGestureRecognizer];
      v18 = SBLogSiri();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = _SBFLoggingMethodProem();
        *buf = 138543618;
        v51 = v19;
        v52 = 2114;
        v53 = v17;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating status bar with Assistant breadcrumb; breadcrumb gesture recognizer=%{public}@", buf, 0x16u);
      }

      v20 = +[SBAssistantController sharedInstance];
      [v20 statusBarActionGestureRecognizerDidChange:v17];
    }
  }

  v21 = [v14 actionGestureRecognizer];
  v22 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__statusBarDoubleTapTop_];
  doubleTapTopGestureRecognizer = self->_doubleTapTopGestureRecognizer;
  self->_doubleTapTopGestureRecognizer = v22;

  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer setNumberOfTapsRequired:2];
  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer requireGestureRecognizerToFail:v21];
  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer setDelaysTouchesBegan:0];
  [(UITapGestureRecognizer *)self->_doubleTapTopGestureRecognizer setDelaysTouchesEnded:0];
  [v14 addGestureRecognizer:self->_doubleTapTopGestureRecognizer];
  v24 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__statusBarScrollToTop_];
  scrollToTopGestureRecognizer = self->_scrollToTopGestureRecognizer;
  self->_scrollToTopGestureRecognizer = v24;

  [(UITapGestureRecognizer *)self->_scrollToTopGestureRecognizer requireGestureRecognizerToFail:v21];
  [(UITapGestureRecognizer *)self->_scrollToTopGestureRecognizer setDelegate:self];
  [v14 addGestureRecognizer:self->_scrollToTopGestureRecognizer];
  v26 = +[SBPlatformController sharedInstance];
  v27 = [v26 isInternalInstall];

  if (v27)
  {
    v28 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__statusBarShowDebug_];
    showDebugGestureRecognizer = self->_showDebugGestureRecognizer;
    self->_showDebugGestureRecognizer = v28;

    [(UITapGestureRecognizer *)self->_showDebugGestureRecognizer setNumberOfTouchesRequired:2];
    [(UITapGestureRecognizer *)self->_showDebugGestureRecognizer requireGestureRecognizerToFail:v21];
    [v14 addGestureRecognizer:self->_showDebugGestureRecognizer];
  }

  v30 = [(UIStatusBar *)self->_statusBar layer];
  [v30 setHitTestsAsOpaque:1];

  [(SBDeviceApplicationSceneViewController *)self _setupStatusBarStylesFromSceneHandle:v3];
  [(UIStatusBar *)self->_statusBar requestResolvedStyle:0];
  [(UIStatusBar *)self->_statusBar setStyleDelegate:self];
  [(UIStatusBar *)self->_statusBar setLegibilityStyle:0];
  [(UIStatusBar *)self->_statusBar setForegroundColor:0];
  v31 = +[SBMedusaDomain rootSettings];
  if ([v31 statusBarDebugBackgroundColorsEnabled])
  {
    v32 = self->_statusBar;
    v33 = [MEMORY[0x277D75348] cyanColor];
    v34 = [v33 colorWithAlphaComponent:0.4];
    [(UIStatusBar *)v32 setBackgroundColor:v34];
  }

  v35 = [v3 statusBarStateProvider];
  [v35 addStatusBarObserver:self];

  v36 = [v3 breadcrumbProvider];
  [v36 addObserver:self];

  v37 = [v3 statusBarStateProvider];
  v38 = [v37 backgroundActivitiesToSuppress];

  v39 = [v3 sceneIdentifier];
  [(SBDeviceApplicationSceneViewController *)self _applyBackgroundActivitiesToSuppress:v38 toSceneWithIdentifier:v39];

  v40 = [(SBDeviceApplicationSceneViewController *)self view];
  v41 = objc_alloc(MEMORY[0x277D65F80]);
  [v40 bounds];
  v42 = [v41 initWithFrame:?];
  statusBarWrapperView = self->_statusBarWrapperView;
  self->_statusBarWrapperView = v42;

  v44 = objc_alloc(MEMORY[0x277CF0D78]);
  [v40 bounds];
  v45 = [v44 initWithFrame:?];
  statusBarTransformView = self->_statusBarTransformView;
  self->_statusBarTransformView = v45;

  [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView setAutoresizingMask:18];
  [(UIView *)self->_statusBarWrapperView addSubview:self->_statusBar];
  [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView addContentView:self->_statusBarWrapperView];
  [v40 addSubview:self->_statusBarTransformView];
}

- (BOOL)_isApplicationStatusBarHidden
{
  v2 = [(SBSceneViewController *)self sceneHandle];
  v3 = [v2 statusBarStateProvider];
  v4 = [v3 statusBarHidden];

  return v4;
}

- (void)_layoutStatusBar
{
  if (self->_statusBar)
  {
    v3 = [(SBDeviceApplicationSceneViewController *)self view];
    v4 = [(SBSceneViewController *)self sceneHandle];
    v5 = [v4 application];
    v6 = [(UIStatusBar *)self->_statusBar styleRequest];
    v46 = v3;
    [v3 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v4 statusBarOrientation];
    v16 = v15;
    if (([v5 isMedusaCapable] & 1) == 0)
    {
      v17 = [v4 statusBarStateProvider];
      v16 = [v17 statusBarOrientation];
    }

    if (([v4 isEffectivelyForeground] & 1) == 0)
    {
      v18 = [(SBSceneViewController *)self _sceneView];
      v15 = [v18 orientation];
    }

    if ((v16 - 3) < 2 != (v15 - 3) < 2)
    {
      v19 = v14;
    }

    else
    {
      v19 = v12;
    }

    [MEMORY[0x277D75A78] heightForStyle:objc_msgSend(v6 orientation:{"style"), v16}];
    v21 = v20;
    v22 = [v4 displayIdentity];
    v47 = [v22 currentConfiguration];
    v23 = [v5 classicAppNonFullScreenWithHomeAffordance];
    v44 = v22;
    if ([v22 isMainRootDisplay])
    {
      if (v23)
      {
        v24 = [MEMORY[0x277D75418] currentDevice];
        v25 = [v24 userInterfaceIdiom];

        if ((v25 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ([v5 classicAppPhoneAppRunningOnPad] & 1) == 0)
        {
          [SBUIController statusBarFrameForDeviceApplicationSceneHandle:v4 displayConfiguration:v47 interfaceOrientation:v16 statusBarStyleRequest:v6 withinBounds:0 inReferenceSpace:v8, v10, v12, v14];
          v8 = v26;
          v10 = v27;
          v19 = v28;
          v21 = v29;
        }
      }
    }

    v30 = v16;
    v43 = +[SBMedusaDomain rootSettings];
    v45 = v15;
    v31 = v6;
    v32 = v5;
    if ([v43 statusBarDebugOffsettingEnabled])
    {
      v49.origin.x = v8;
      v49.origin.y = v10;
      v49.size.width = v19;
      v49.size.height = v21;
      CGRectGetHeight(v49);
    }

    v33 = [v4 _windowScene];
    v34 = [v33 switcherController];
    v35 = [v34 windowManagementContext];
    v36 = [v35 isFlexibleWindowingEnabled];

    if (v36)
    {
      memset(&v48, 0, 32);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v38 = WeakRetained;
      v39 = v31;
      if (WeakRetained)
      {
        [WeakRetained windowControlsLayoutForApplicationSceneViewController:self];
      }

      else
      {
        memset(&v48, 0, 32);
      }

      if (*&v48.a == 3 && ([v4 statusBarParts] & 3) != 0)
      {
        [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      }
    }

    else
    {
      v39 = v31;
    }

    statusBar = self->_statusBar;
    SBRectWithSize();
    [(UIStatusBar *)statusBar setBounds:?];
    v41 = self->_statusBar;
    UIRectGetCenter();
    [(UIStatusBar *)v41 setCenter:?];
    if ((BSFloatIsOne() & 1) == 0)
    {
      v42 = self->_statusBar;
      CGAffineTransformMakeScale(&v48, 1.0, 1.0);
      [(UIStatusBar *)v42 setTransform:&v48];
    }

    [(UIStatusBar *)self->_statusBar setAutoresizingMask:34];
    [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView setContentOrientation:v30];
    [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView setContainerOrientation:v45];
    [(UIStatusBar *)self->_statusBar requestResolvedStyle:[(UIStatusBar *)self->_statusBar currentResolvedStyle]];
  }
}

- (void)_configureForCurrentSecureDisplayState
{
  v5 = [(SBSceneViewController *)self sceneHandle];
  v3 = [v5 _windowScene];
  v4 = [v3 secureDisplayStateProvider];
  -[SBDeviceApplicationSceneViewController _configureForSecureDisplay:](self, "_configureForSecureDisplay:", [v4 isInSecureDisplayMode]);
}

- (void)_updateStatusBarState
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(SBDeviceApplicationSceneViewController *)self isViewLoaded])
  {
    if ([(NSHashTable *)self->_statusBarAssertions count]|| self->_shouldDrawStatusBarInsideSceneView)
    {
      v3 = [(NSHashTable *)self->_statusBarAssertions allObjects];
      v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_144];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v28;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v28 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v27 + 1) + 8 * i);
            v12 = [v11 settings];

            if (v12)
            {
              v13 = [v11 settings];
              v14 = v13;
              if (v8)
              {
                [v8 applySettings:v13];
              }

              else
              {
                v8 = [v13 mutableCopy];
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v7);
      }

      else
      {
        v8 = 0;
      }

      if (!self->_statusBar)
      {
        [(SBDeviceApplicationSceneViewController *)self _createStatusBar];
      }

      [(SBDeviceApplicationSceneViewController *)self _configureStatusBarWithCurrentStyleRequest];
      if (!self->_statusBar)
      {
        goto LABEL_33;
      }

      if (v8)
      {
        v15 = [v8 alpha];
        if (!v15)
        {
          v18 = 1.0;
          goto LABEL_30;
        }

        v16 = [v8 alpha];
        [v16 floatValue];
        v18 = v17;
      }

      else
      {
        v15 = [(SBSceneViewController *)self sceneHandle];
        v16 = [v15 statusBarStateProvider];
        [v16 statusBarAlpha];
        v18 = v19;
      }

LABEL_30:
      v23 = [(SBDeviceApplicationSceneViewController *)self _isApplicationStatusBarHidden];
      v24 = 0.0;
      if (!v23)
      {
        v24 = v18;
      }

      [(UIStatusBar *)self->_statusBar setAlpha:v24];
      [v8 setAlpha:&unk_283370BC8];
LABEL_33:
      [(SBApplicationSceneViewController *)self _setOverrideStatusBarSettings:v8];
      v25 = [(SBSceneViewController *)self _sceneView];
      [v25 setForcesStatusBarHidden:1];

      [(SBDeviceApplicationSceneViewController *)self _updateWindowControlsAdaptiveStyle];
      return;
    }

    [(SBDeviceApplicationSceneViewController *)self _removeStatusBar];
    [(SBApplicationSceneViewController *)self _setOverrideStatusBarSettings:0];
    v20 = [(SBSceneViewController *)self _sceneView];
    [v20 setForcesStatusBarHidden:0];

    v26 = [(SBSceneViewController *)self sceneHandle];
    v21 = [v26 statusBarStateProvider];
    [v21 removeStatusBarObserver:self];

    v22 = [v26 breadcrumbProvider];
    [v22 removeObserver:self];
  }
}

- (void)_configureStatusBarWithCurrentStyleRequest
{
  if (self->_statusBar)
  {
    v3 = [(SBSceneViewController *)self sceneHandle];
    v4 = [(SBApplicationSceneViewController *)self overrideStatusBarStyle];
    if (v4 == -1)
    {
      [v3 currentEffectiveStatusBarStyleRequest];
    }

    else
    {
      [v3 statusBarEffectiveStyleRequestWithStyle:_SBStatusBarStyleFromLegacyStyle(v4)];
    }
    v5 = ;
    [(UIStatusBar *)self->_statusBar setStyleRequest:v5];
    [(UIStatusBar *)self->_statusBar setHidden:[(SBDeviceApplicationSceneViewController *)self _isApplicationStatusBarHidden]];
    v6 = [v3 statusBarParts];
    [(UIStatusBar *)self->_statusBar sb_setEnabledStatusBarPartIdentifiersForStatusBarParts:v6];
    if (_UISolariumEnabled())
    {
      [(UIStatusBar *)self->_statusBar bs_setHitTestingDisabled:v6 == 0];
    }

    v7 = [(UIViewController *)self _sbWindowScene];
    v8 = [v7 statusBarManager];
    [v3 statusBarAvoidanceFrame];
    [v8 setAvoidanceFrame:@"SBDeviceApplicationSceneViewController" reason:self->_statusBar statusBar:0 animationSettings:?];

    v9 = [v3 breadcrumbProvider];
    v10 = MEMORY[0x277D75D18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__SBDeviceApplicationSceneViewController__configureStatusBarWithCurrentStyleRequest__block_invoke;
    v16[3] = &unk_2783A8ED8;
    v16[4] = self;
    v11 = v9;
    v17 = v11;
    v12 = v3;
    v18 = v12;
    [v10 performWithoutAnimation:v16];
    if ([(_SBStatusBarChanges *)self->_statusBarChanges statusBarStyleChanged])
    {
      [(SBDeviceApplicationSceneViewController *)self _setStatusBarStyle:[(_SBStatusBarChanges *)self->_statusBarChanges statusBarStyle]];
    }

    if ([(_SBStatusBarChanges *)self->_statusBarChanges statusBarPartStyleChanged])
    {
      v13 = [(_SBStatusBarChanges *)self->_statusBarChanges statusBarPartStyle];
      v14 = [(_SBStatusBarChanges *)self->_statusBarChanges statusBarPartIdentifier];
      [(SBDeviceApplicationSceneViewController *)self _setStatusBarStyle:v13 forPartWithIdentifier:v14];
    }

    [(_SBStatusBarChanges *)self->_statusBarChanges invalidate];
    v15 = [v7 recordingIndicatorManager];
    [v15 updateRecordingIndicatorForStatusBarChanges];
    [(SBDeviceApplicationSceneViewController *)self _layoutStatusBar];
  }
}

void __84__SBDeviceApplicationSceneViewController__configureStatusBarWithCurrentStyleRequest__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1136) statusBar];
  if ([*(a1 + 40) hasBreadcrumb])
  {
    v3 = [*(a1 + 48) overlayStatusBarData];
    [v2 setOverlayData:v3];

    v4 = *(*(a1 + 32) + 1136);
    v5 = MEMORY[0x277D76290];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__SBDeviceApplicationSceneViewController__configureStatusBarWithCurrentStyleRequest__block_invoke_2;
    v7[3] = &unk_2783B2BF8;
    v8 = *(a1 + 40);
    v6 = [v5 actionWithBlock:v7];
    [v4 setAction:v6 forPartWithIdentifier:*MEMORY[0x277D775A0]];
  }

  else
  {
    [v2 setOverlayData:0];
    [*(*(a1 + 32) + 1136) setAction:0 forPartWithIdentifier:*MEMORY[0x277D775A0]];
  }
}

- (void)_createSceneOverlayViewProvidersIfNecessary
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_overlayViewProviders)
  {
    return;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  overlayViewProviders = self->_overlayViewProviders;
  self->_overlayViewProviders = v3;

  v5 = [(SBSceneViewController *)self sceneHandle];
  v6 = [[SBDeviceApplicationScreenTimeLockoutViewProvider alloc] initWithSceneHandle:v5 delegate:self];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v6];
  v7 = [[SBDeviceApplicationRemoteTransientOverlayViewProvider alloc] initWithSceneHandle:v5 delegate:self handlesSceneBackedRemoteTransientOverlaysOnly:0];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v7];
  v8 = [[SBDeviceApplicationRemoteTransientOverlayViewProvider alloc] initWithSceneHandle:v5 delegate:self handlesSceneBackedRemoteTransientOverlaysOnly:1];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v8];
  v9 = [[SBDeviceApplicationAppClipOverlayViewProvider alloc] initWithSceneHandle:v5 delegate:self];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v9];
  v10 = [[SBDeviceApplicationAppProtectionSceneOverlayViewProvider alloc] initWithSceneHandle:v5 delegate:self];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v10];
  v11 = [(SBDeviceApplicationSceneOverlayViewProvider *)[SBDeviceApplicationMomentsUIViewProvider alloc] initWithSceneHandle:v5 delegate:self];
  [(NSMutableArray *)self->_overlayViewProviders addObject:v11];
  v21 = v7;
  v22 = v6;
  v20 = v8;
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ([MEMORY[0x277D75658] usesInputSystemUI])
    {
      v14 = [(SBDeviceApplicationSceneOverlayViewProvider *)[SBDeviceApplicationInputUIViewProvider alloc] initWithSceneHandle:v5 delegate:self];
      [(NSMutableArray *)self->_overlayViewProviders addObject:v14];
    }

    goto LABEL_8;
  }

  v12 = [MEMORY[0x277D75418] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 != 1)
  {
    goto LABEL_6;
  }

LABEL_8:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = self->_overlayViewProviders;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v23 + 1) + 8 * v19++) noteDisplayModeChange:{-[SBSceneViewController displayMode](self, "displayMode")}];
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneViewController;
  [(SBDeviceApplicationSceneViewController *)&v3 viewDidLayoutSubviews];
  [(SBDeviceApplicationSceneViewController *)self _layoutStatusBar];
}

- (void)_removeStatusBar
{
  v3 = [(UITapGestureRecognizer *)self->_scrollToTopGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_scrollToTopGestureRecognizer];

  scrollToTopGestureRecognizer = self->_scrollToTopGestureRecognizer;
  self->_scrollToTopGestureRecognizer = 0;

  v5 = [(UITapGestureRecognizer *)self->_showDebugGestureRecognizer view];
  [v5 removeGestureRecognizer:self->_showDebugGestureRecognizer];

  showDebugGestureRecognizer = self->_showDebugGestureRecognizer;
  self->_showDebugGestureRecognizer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_statusBarReusePool);
  [WeakRetained recycleStatusBar:self->_statusBar];

  statusBar = self->_statusBar;
  self->_statusBar = 0;

  objc_storeWeak(&self->_statusBarReusePool, 0);
  [(UIView *)self->_statusBarWrapperView removeFromSuperview];
  [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView removeFromSuperview];
  statusBarWrapperView = self->_statusBarWrapperView;
  self->_statusBarWrapperView = 0;

  statusBarTransformView = self->_statusBarTransformView;
  self->_statusBarTransformView = 0;
}

- (int64_t)_currentStatusBarStyle
{
  v2 = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 style];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SBDeviceApplicationSceneViewController)initWithSceneHandle:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBDeviceApplicationSceneViewController *)a2 initWithSceneHandle:v5];
  }

  v13.receiver = self;
  v13.super_class = SBDeviceApplicationSceneViewController;
  v6 = [(SBApplicationSceneViewController *)&v13 initWithSceneHandle:v5];
  if (v6)
  {
    [v5 setShouldApplyAppProtectionSceneSettings:1];
    v7 = [MEMORY[0x277D65E80] rootSettings];
    homeGrabberSettings = v6->_homeGrabberSettings;
    v6->_homeGrabberSettings = v7;

    objc_storeStrong(&v6->_sceneFlattenMode, *MEMORY[0x277CDA9E8]);
    v6->_sceneFullyOccluded = [v5 sceneFullyOccluded];
    v9 = +[SBAppSwitcherDomain rootSettings];
    switcherSettings = v6->_switcherSettings;
    v6->_switcherSettings = v9;

    [v5 addObserver:v6];
    [(SBDeviceApplicationSceneViewController *)v6 _setRealStatusBarStyleDelegate:SBApp];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v6 selector:sel__willEnableSecureDisplay name:*MEMORY[0x277D66028] object:0];
    [v11 addObserver:v6 selector:sel__didDisableSecureDisplay name:*MEMORY[0x277D66020] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(SBSceneViewController *)self sceneHandle];
  [v3 removeObserver:self];
  v4 = [v3 statusBarStateProvider];
  [v4 removeStatusBarObserver:self];

  v5 = [v3 breadcrumbProvider];
  [v5 removeObserver:self];

  [(SBDeviceApplicationSceneViewController *)self _removeStatusBar];
  [(SBDeviceApplicationSceneViewController *)self _relinquishResignActiveAssertion];
  [(SBDeviceApplicationSceneViewController *)self _destroySceneOverlayViewProviders];
  [(BSInvalidatable *)self->_liveContentDisableAssertion invalidate];

  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneViewController;
  [(SBSceneViewController *)&v6 dealloc];
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneViewController;
  [(SBSceneViewController *)&v4 invalidate];
  v3 = [(SBSceneViewController *)self sceneHandle];
  [v3 removeObserver:self];

  [(SBDeviceApplicationSceneViewController *)self _relinquishResignActiveAssertion];
  [(SBDeviceApplicationSceneViewController *)self _destroySceneOverlayViewProviders];
  [(BSInvalidatable *)self->_liveContentDisableAssertion invalidate];
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationSceneViewController;
  [(SBDeviceApplicationSceneViewController *)&v5 didMoveToParentViewController:?];
  if (a3)
  {
    [(SBDeviceApplicationSceneViewController *)self _createSceneOverlayViewProvidersIfNecessary];
  }

  else
  {
    [(SBDeviceApplicationSceneViewController *)self _destroySceneOverlayViewProviders];
  }
}

- (void)setHomeGrabberDisplayMode:(int64_t)a3
{
  if (self->_homeGrabberDisplayMode != a3)
  {
    v5 = [(SBDeviceApplicationSceneViewController *)self _shouldSuppressHomeGrabber];
    self->_homeGrabberDisplayMode = a3;
    v6 = [(SBDeviceApplicationSceneViewController *)self _shouldSuppressHomeGrabber];
    if (v5 != v6)
    {
      v7 = v6;
      v9 = [(SBSceneViewController *)self _sceneView];
      if (v7)
      {
        [v9 tearDownHomeGrabberView];
      }

      else
      {
        v8 = [(SBDeviceApplicationSceneViewController *)self homeGrabberPillSettings];
        [v9 createHomeGrabberViewIfNecessaryWithSettings:v8];
      }
    }
  }
}

- (SBHomeGrabberView)homeGrabberView
{
  v2 = [(SBSceneViewController *)self _sceneView];
  v3 = [v2 homeGrabberView];

  return v3;
}

- (void)setRendersWhileLocked:(BOOL)a3
{
  if (self->_rendersWhileLocked != a3)
  {
    self->_rendersWhileLocked = a3;
    [(SBDeviceApplicationSceneViewController *)self _configureForCurrentSecureDisplayState];
  }
}

- (void)setSceneMinificationFilter:(id)a3
{
  v4 = a3;
  sceneMinificationFilter = self->_sceneMinificationFilter;
  if (sceneMinificationFilter != v4)
  {
    v11 = v4;
    v6 = [(NSString *)sceneMinificationFilter isEqual:v4];
    v4 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v11 copy];
      v8 = self->_sceneMinificationFilter;
      self->_sceneMinificationFilter = v7;

      v9 = [(SBDeviceApplicationSceneViewController *)self isViewLoaded];
      v4 = v11;
      if (v9)
      {
        v10 = [(SBSceneViewController *)self _sceneView];
        [v10 setMinificationFilter:self->_sceneMinificationFilter];

        v4 = v11;
      }
    }
  }
}

- (void)setSceneRendersAsynchronously:(BOOL)a3
{
  if (self->_sceneRendersAsynchronously != a3)
  {
    self->_sceneRendersAsynchronously = a3;
    if ([(SBDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      v4 = [(SBSceneViewController *)self _sceneView];
      [v4 setRendersAsynchronously:self->_sceneRendersAsynchronously];
    }
  }
}

- (BOOL)sceneResizesHostedContext
{
  v2 = [(SBSceneViewController *)self _sceneView];
  v3 = [v2 resizesHostedContext];

  return v3;
}

- (void)setSceneResizesHostedContext:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSceneViewController *)self _sceneView];
  [v4 setResizesHostedContext:v3];
}

- (void)setSceneFullyOccluded:(BOOL)a3
{
  if (self->_sceneFullyOccluded != a3)
  {
    v3 = a3;
    self->_sceneFullyOccluded = a3;
    v5 = [(SBSceneViewController *)self sceneHandle];
    [v5 setSceneFullyOccluded:v3];

    if ([(SBDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      v6 = [(SBSceneViewController *)self _sceneView];
      [(SBDeviceApplicationSceneViewController *)self _updateSceneFullyOccludedState:v6 fullyOccluded:self->_sceneFullyOccluded];
    }
  }
}

- (void)setSceneFlattenMode:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (!v5)
  {
    [(SBDeviceApplicationSceneViewController *)a2 setSceneFlattenMode:?];
    v5 = 0;
  }

  if (![(NSString *)self->_sceneFlattenMode isEqualToString:v5])
  {
    v6 = [v9 copy];
    sceneFlattenMode = self->_sceneFlattenMode;
    self->_sceneFlattenMode = v6;

    if ([(SBDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      v8 = [(SBSceneViewController *)self _sceneView];
      [v8 setFlattenMode:self->_sceneFlattenMode];
    }
  }
}

- (void)_setStatusBarAssertions:(id)a3
{
  v5 = a3;
  if (self->_statusBarAssertions != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_statusBarAssertions, a3);
    v6 = [(SBDeviceApplicationSceneViewController *)self isViewLoaded];
    v5 = v7;
    if (v6)
    {
      [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
      v5 = v7;
    }
  }
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  v5 = [(SBSceneViewController *)self _sceneView];
  [v5 setBackgroundView:v4];
}

- (id)statusBarAssertionWithStatusBarHidden:(BOOL)a3 atLevel:(unint64_t)a4
{
  v5 = a3;
  v7 = objc_alloc_init(SBMutableStatusBarSettings);
  v8 = 1.0;
  if (v5)
  {
    v8 = 0.0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [(SBMutableStatusBarSettings *)v7 setAlpha:v9];

  v10 = [(SBDeviceApplicationSceneViewController *)self statusBarAssertionWithStatusBarSettings:v7 atLevel:a4];

  return v10;
}

- (id)statusBarAssertionWithStatusBarSettings:(id)a3 atLevel:(unint64_t)a4
{
  v6 = a3;
  if (!self->_statusBarAssertions)
  {
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    statusBarAssertions = self->_statusBarAssertions;
    self->_statusBarAssertions = v7;
  }

  v9 = [[SBSceneViewStatusBarAssertion alloc] initWithStatusBarSettings:v6 nubViewHidden:0x7FFFFFFFFFFFFFFFLL atLevel:a4];
  [(SBSceneViewStatusBarAssertion *)v9 addObserver:self];
  [(NSHashTable *)self->_statusBarAssertions addObject:v9];
  [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];

  return v9;
}

- (void)statusBarAssertionDidInvalidate:(id)a3
{
  [(NSHashTable *)self->_statusBarAssertions removeObject:a3];

  [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
}

uint64_t __63__SBDeviceApplicationSceneViewController__updateStatusBarState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a2, "level")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 level];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)activateOverlayForViewProvider:(id)a3
{
  v13 = a3;
  v4 = [v13 overlayViewController];
  v5 = [v4 parentViewController];

  if (!v5)
  {
    activeOverlayViewProviders = self->_activeOverlayViewProviders;
    if (!activeOverlayViewProviders)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = self->_activeOverlayViewProviders;
      self->_activeOverlayViewProviders = v7;

      activeOverlayViewProviders = self->_activeOverlayViewProviders;
    }

    [(NSMutableArray *)activeOverlayViewProviders addObject:v13];
    v9 = [(SBSceneViewController *)self _sceneView];
    v10 = [v4 overlayView];
    v11 = [(NSMutableArray *)self->_overlayViewProviders containsObject:v13];
    [v4 beginAppearanceTransition:1 animated:v11];
    [(SBDeviceApplicationSceneViewController *)self addChildViewController:v4];
    [v9 addOverlayView:v10 withPriority:{objc_msgSend(v13, "priority")}];
    [v4 didMoveToParentViewController:self];
    [v4 endAppearanceTransition];
    [v13 showContentWithAnimation:v11 completionHandler:0];
    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarAppearanceForOverlayProvider:v13];
    [(SBDeviceApplicationSceneViewController *)self _recalculateResignActiveAssertionForActiveOverlays];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:self];
  }
}

- (void)deactivateOverlayForViewProvider:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_activeOverlayViewProviders containsObject:v4])
  {
    v5 = [v4 overlayViewController];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__SBDeviceApplicationSceneViewController_deactivateOverlayForViewProvider___block_invoke;
    v7[3] = &unk_2783A8ED8;
    v7[4] = self;
    v8 = v5;
    v9 = v4;
    v6 = v5;
    [v9 hideContentWithAnimation:1 completionHandler:v7];
  }
}

- (void)_deactivateOverlay:(id)a3 forViewProvider:(id)a4
{
  activeOverlayViewProviders = self->_activeOverlayViewProviders;
  v7 = a4;
  v8 = a3;
  v16 = [(NSMutableArray *)activeOverlayViewProviders lastObject];
  [v8 beginAppearanceTransition:0 animated:0];
  [v8 willMoveToParentViewController:0];
  v9 = [(SBSceneViewController *)self _sceneView];
  v10 = [v8 overlayView];
  [v9 removeOverlayView:v10 withPriority:{objc_msgSend(v7, "priority")}];

  [v8 removeFromParentViewController];
  [v8 endAppearanceTransition];

  [(NSMutableArray *)self->_activeOverlayViewProviders removeObject:v7];
  if ([(NSMutableArray *)self->_activeOverlayViewProviders count])
  {
    if (![v16 affectsStatusBarPresentation])
    {
      goto LABEL_7;
    }

    v11 = objc_alloc_init(SBMutableStatusBarSettings);
    v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v16, "prefersStatusBarHidden") ^ 1}];
    [(SBMutableStatusBarSettings *)v11 setAlpha:v12];

    -[SBMutableStatusBarSettings setStyle:](v11, "setStyle:", [v16 preferredStatusBarStyle]);
    [(SBSceneViewStatusBarAssertion *)self->_activeOverlayStatusBarAssertion setSettings:v11];
  }

  else
  {
    v13 = self->_activeOverlayViewProviders;
    self->_activeOverlayViewProviders = 0;

    activeOverlayStatusBarAssertion = self->_activeOverlayStatusBarAssertion;
    if (!activeOverlayStatusBarAssertion)
    {
      goto LABEL_7;
    }

    [(SBSceneViewStatusBarAssertion *)activeOverlayStatusBarAssertion invalidate];
    v11 = self->_activeOverlayStatusBarAssertion;
    self->_activeOverlayStatusBarAssertion = 0;
  }

LABEL_7:
  [(SBDeviceApplicationSceneViewController *)self _recalculateResignActiveAssertionForActiveOverlays];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:self];
}

- (BOOL)overlayViewProviderIsHostedInNonrotatingWindow:(id)a3
{
  v4 = [(SBDeviceApplicationSceneViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 applicationSceneViewControllerIsInNonrotatingWindow:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)windowSceneForOverlayViewProvider:(id)a3
{
  v4 = [SBApp windowSceneManager];
  v5 = [(SBSceneViewController *)self sceneHandle];
  v6 = [v4 windowSceneForSceneHandle:v5];

  return v6;
}

- (BOOL)overlayViewProviderIsHostedInSecureWindow:(id)a3
{
  v3 = [(SBDeviceApplicationSceneViewController *)self view];
  v4 = [v3 window];
  v5 = [objc_opt_class() _isSecure];

  return v5;
}

- (id)hostWindowForOverlayViewProvider:(id)a3
{
  v3 = [(SBDeviceApplicationSceneViewController *)self view];
  v4 = [v3 window];

  return v4;
}

- (id)initialTraitsParticipantForOverlayViewProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_traitsParticipantForOverlayContainer);

  return WeakRetained;
}

- (void)overlayViewProviderNeedsStatusBarAppearanceUpdate:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_activeOverlayViewProviders containsObject:?])
  {
    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarAppearanceForOverlayProvider:v4];
  }
}

- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SBDeviceApplicationSceneViewController;
  [(SBSceneViewController *)&v16 setDisplayMode:a3 animationFactory:a4 completion:a5];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_overlayViewProviders;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) noteDisplayModeChange:{a3, v12}];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)animationFactoryForImplicitTransitionFromMode:(int64_t)a3 toMode:(int64_t)a4 defaultFactory:(id)a5
{
  v7 = a5;
  if (a4 == 4 && (-[SBSceneViewController sceneHandle](self, "sceneHandle"), v8 = objc_claimAutoreleasedReturnValue(), [v8 application], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "info"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "shouldSkipCrossfadeToLive"), v10, v9, v8, (v11 & 1) != 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

- (void)sceneView:(id)a3 changedPreferredStatusBarStyleTo:(int64_t)a4
{
  v13 = a3;
  placeholderStatusBarAssertion = self->_placeholderStatusBarAssertion;
  if (a4 == -1)
  {
    [(SBSceneViewStatusBarAssertion *)placeholderStatusBarAssertion invalidate];
    v10 = self->_placeholderStatusBarAssertion;
    self->_placeholderStatusBarAssertion = 0;
  }

  else if (placeholderStatusBarAssertion)
  {
    v7 = [(SBSceneViewStatusBarAssertion *)placeholderStatusBarAssertion settings];
    v8 = [v7 style];

    if (v8 == a4)
    {
      goto LABEL_8;
    }

    v9 = [(SBSceneViewStatusBarAssertion *)self->_placeholderStatusBarAssertion settings];
    v10 = [v9 mutableCopy];

    [(SBMutableStatusBarSettings *)v10 setStyle:a4];
    [(SBSceneViewStatusBarAssertion *)self->_placeholderStatusBarAssertion setSettings:v10];
  }

  else
  {
    v10 = objc_alloc_init(SBMutableStatusBarSettings);
    [(SBMutableStatusBarSettings *)v10 setStyle:a4];
    v11 = [(SBDeviceApplicationSceneViewController *)self statusBarAssertionWithStatusBarSettings:v10 atLevel:0];
    v12 = self->_placeholderStatusBarAssertion;
    self->_placeholderStatusBarAssertion = v11;
  }

LABEL_8:
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  v5 = a4;
  [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  [v5 _setSceneMaskingDelegate:self];
}

- (void)sceneHandle:(id)a3 didMoveFromSceneManager:(id)a4
{
  [(SBDeviceApplicationSceneViewController *)self _configureStatusBarWithCurrentStyleRequest:a3];

  [(SBDeviceApplicationSceneViewController *)self _configureForCurrentSecureDisplayState];
}

- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarStyleTo:(int64_t)a4
{
  v6 = [(SBDeviceApplicationSceneViewController *)self _currentStatusBarStyle];
  activeOverlayStatusBarAssertion = self->_activeOverlayStatusBarAssertion;
  if (activeOverlayStatusBarAssertion)
  {
    v8 = [(SBSceneViewStatusBarAssertion *)activeOverlayStatusBarAssertion settings];
    a4 = _SBStatusBarStyleFromLegacyStyle([v8 style]);
  }

  if (v6 != a4)
  {
    statusBarChanges = self->_statusBarChanges;
    if (!statusBarChanges)
    {
      v10 = objc_opt_new();
      v11 = self->_statusBarChanges;
      self->_statusBarChanges = v10;

      statusBarChanges = self->_statusBarChanges;
    }

    [(_SBStatusBarChanges *)statusBarChanges setStatusBarStyle:a4];

    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  }
}

- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarStyleTo:(int64_t)a4 forPartWithIdentifier:(id)a5
{
  v13 = a5;
  v7 = [(SBDeviceApplicationSceneViewController *)self _currentStatusBarStyleForPartWithIdentifier:?];
  activeOverlayStatusBarAssertion = self->_activeOverlayStatusBarAssertion;
  if (activeOverlayStatusBarAssertion)
  {
    v9 = [(SBSceneViewStatusBarAssertion *)activeOverlayStatusBarAssertion settings];
    a4 = _SBStatusBarStyleFromLegacyStyle([v9 style]);
  }

  if (v7 != a4)
  {
    statusBarChanges = self->_statusBarChanges;
    if (!statusBarChanges)
    {
      v11 = objc_opt_new();
      v12 = self->_statusBarChanges;
      self->_statusBarChanges = v11;

      statusBarChanges = self->_statusBarChanges;
    }

    [(_SBStatusBarChanges *)statusBarChanges setStatusBarPartStyle:a4 forPartWithIdentifier:v13];
    [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  }
}

- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarHiddenTo:(BOOL)a4 withAnimation:(int64_t)a5
{
  v6 = a4;
  [(SBDeviceApplicationSceneViewController *)self _updateStatusBarState];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationSceneViewController:self didUpdateStatusBarHidden:v6 withAnimation:a5];
}

- (void)beginMaskingForReason:(int64_t)a3 continuation:(id)a4 scene:(id)a5
{
  if (a3 == 1)
  {
    v7 = a4;
    v8 = [(SBSceneViewController *)self _sceneView];
    [v8 enableTransitionOverlay:1];
    v7[2](v7, 0);
  }
}

- (void)invalidateMasking:(id)a3
{
  v3 = [(SBSceneViewController *)self _sceneView];
  [v3 enableTransitionOverlay:0];
}

- (int64_t)leadingStatusBarStyle
{
  v2 = [(SBDeviceApplicationSceneViewController *)self _effectiveStyleForPartIdentifier:*MEMORY[0x277D775D0]];

  return _SBStatusBarLegacyStyleFromStyle(v2);
}

- (int64_t)trailingStatusBarStyle
{
  v2 = [(SBDeviceApplicationSceneViewController *)self _effectiveStyleForPartIdentifier:*MEMORY[0x277D775E0]];

  return _SBStatusBarLegacyStyleFromStyle(v2);
}

- (id)backgroundActivitiesToSuppress
{
  v2 = [(SBSceneViewController *)self sceneHandle];
  v3 = [v2 statusBarStateProvider];
  v4 = [v3 backgroundActivitiesToSuppress];

  return v4;
}

- (id)currentStatusBarStyleAttributes
{
  v2 = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 styleAttributes];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)a3
{
  if ([(NSMutableArray *)self->_activeOverlayViewProviders count])
  {
    v5 = [(NSMutableArray *)self->_activeOverlayViewProviders lastObject];
    a3 = [v5 bestHomeAffordanceOrientationForOrientation:a3];
  }

  return a3;
}

- (void)willRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 alongsideContainerView:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v29 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = [(SBSceneViewController *)self sceneHandle];
  if ([v11 wantsDeviceOrientationEventsEnabled] && !-[SBDeviceApplicationSceneViewController _statusBarHasMatchMoveAnimation](self, "_statusBarHasMatchMoveAnimation"))
  {

    if (v6)
    {
      [(SBDeviceApplicationSceneViewController *)self _addStatusBarMatchMoveAnimationForView:v10];
    }
  }

  else
  {
  }

  v12 = [(SBSceneViewController *)self _sceneView];
  [v12 willRotateFromInterfaceOrientation:a3 toInterfaceOrientation:a4 alongsideContainerView:v10 animated:v6];

  v13 = [(SBSceneViewController *)self sceneHandle];
  v14 = [v13 application];
  if ([v14 classicAppPhoneAppRunningOnPad])
  {
    v15 = [(UIViewController *)self _sbWindowScene];
    v16 = [v15 switcherController];
    v17 = [v16 windowManagementContext];
    v18 = [v17 isChamoisOrFlexibleWindowing];

    if (v18)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v19 = self->_activeOverlayViewProviders;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v25;
        do
        {
          v23 = 0;
          do
          {
            if (*v25 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v24 + 1) + 8 * v23++) willDoBoundsPreservingRotationFromInterfaceOrientation:a3 toInterfaceOrientation:{a4, v24}];
          }

          while (v21 != v23);
          v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v21);
      }
    }
  }

  else
  {
  }
}

- (id)prepareForContentRotation
{
  v2 = [(SBSceneViewController *)self _sceneView];
  v3 = [v2 prepareForContentRotation];

  return v3;
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4
{
  v6 = [(SBSceneViewController *)self sceneHandle:a3];
  if ([v6 wantsDeviceOrientationEventsEnabled])
  {
    v5 = [(SBDeviceApplicationSceneViewController *)self _statusBarHasMatchMoveAnimation];

    if (v5)
    {

      [(SBDeviceApplicationSceneViewController *)self _removeStatusBarMatchMoveAnimation];
    }
  }

  else
  {
  }
}

- (void)willPerformNonAnimatedTransitionToInterfaceOrientation:(int64_t)a3
{
  v4 = [(SBSceneViewController *)self _sceneView];
  [v4 willRotateFromInterfaceOrientation:a3 toInterfaceOrientation:a3 alongsideContainerView:0 animated:0];
}

- (void)containerDidUpdateTraitsParticipant:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_traitsParticipantForOverlayContainer, v4);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_activeOverlayViewProviders;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) containerDidUpdateTraitsParticipant:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unint64_t)statusBar:(id)a3 effectiveStyleOverridesForRequestedStyle:(int64_t)a4 overrides:(unint64_t)a5
{
  v5 = a5;
  if (*&self->_conformanceFlags)
  {
    v5 = [(UIStatusBarStyleDelegate_SpringBoardOnly *)self->_realStatusBarStyleDelegate statusBar:a3 effectiveStyleOverridesForRequestedStyle:a4 overrides:a5];
  }

  v7 = [(SBSceneViewController *)self sceneHandle:a3];
  v8 = [v7 statusBarStateProvider];
  v9 = [v8 backgroundActivitiesToSuppress];

  v10 = STUIStyleOverridesForBackgroundActivityIdentifiers();
  return v5 & ~v10;
}

- (int64_t)overriddenRequestedStyleFromStyle:(int64_t)a3
{
  if ((*&self->_conformanceFlags & 4) != 0)
  {
    return [(UIStatusBarStyleDelegate_SpringBoardOnly *)self->_realStatusBarStyleDelegate overriddenRequestedStyleFromStyle:a3];
  }

  else
  {
    return a3;
  }
}

- (id)statusBar:(id)a3 effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBSceneViewController *)self sceneHandle];
  v9 = [v8 statusBarStateProvider];
  v10 = [v9 backgroundActivitiesToSuppress];

  v11 = v7;
  if ((*&self->_conformanceFlags & 2) != 0)
  {
    v11 = [(UIStatusBarStyleDelegate_SpringBoardOnly *)self->_realStatusBarStyleDelegate statusBar:v6 effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:v7];
  }

  v12 = [v11 mutableCopy];
  [v12 minusSet:v10];

  return v12;
}

- (void)_destroySceneOverlayViewProviders
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(NSMutableArray *)self->_activeOverlayViewProviders copy];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(SBDeviceApplicationSceneViewController *)self deactivateOverlayForViewProvider:*(*(&v19 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_activeOverlayViewProviders removeAllObjects];
  activeOverlayViewProviders = self->_activeOverlayViewProviders;
  self->_activeOverlayViewProviders = 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_overlayViewProviders;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) invalidate];
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_overlayViewProviders removeAllObjects];
  overlayViewProviders = self->_overlayViewProviders;
  self->_overlayViewProviders = 0;
}

- (void)_updateStatusBarAppearanceForOverlayProvider:(id)a3
{
  v9 = a3;
  if ([v9 affectsStatusBarPresentation])
  {
    v4 = objc_alloc_init(SBMutableStatusBarSettings);
    v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "prefersStatusBarHidden") ^ 1}];
    [(SBMutableStatusBarSettings *)v4 setAlpha:v5];

    -[SBMutableStatusBarSettings setStyle:](v4, "setStyle:", [v9 preferredStatusBarStyle]);
    activeOverlayStatusBarAssertion = self->_activeOverlayStatusBarAssertion;
    if (activeOverlayStatusBarAssertion)
    {
      [(SBSceneViewStatusBarAssertion *)activeOverlayStatusBarAssertion setSettings:v4];
    }

    else
    {
      v7 = [(SBDeviceApplicationSceneViewController *)self statusBarAssertionWithStatusBarSettings:v4 atLevel:1];
      v8 = self->_activeOverlayStatusBarAssertion;
      self->_activeOverlayStatusBarAssertion = v7;
    }
  }
}

- (void)_recalculateResignActiveAssertionForActiveOverlays
{
  v3 = [(SBDeviceApplicationSceneViewController *)self _activeOverlaysWantResignActiveAssertion];
  resignActiveAssertion = self->_resignActiveAssertion;
  if (v3)
  {
    if (!resignActiveAssertion)
    {
      objc_initWeak(&location, self);
      v5 = +[SBSceneManagerCoordinator sharedInstance];
      v6 = [v5 sceneDeactivationManager];
      v7 = [v6 newAssertionWithReason:7];
      v8 = self->_resignActiveAssertion;
      self->_resignActiveAssertion = v7;

      v9 = self->_resignActiveAssertion;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __92__SBDeviceApplicationSceneViewController__recalculateResignActiveAssertionForActiveOverlays__block_invoke;
      v10[3] = &unk_2783B52B8;
      objc_copyWeak(&v11, &location);
      [(UIApplicationSceneDeactivationAssertion *)v9 acquireWithPredicate:v10 transitionContext:0];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  else if (resignActiveAssertion)
  {

    [(SBDeviceApplicationSceneViewController *)self _relinquishResignActiveAssertion];
  }
}

uint64_t __92__SBDeviceApplicationSceneViewController__recalculateResignActiveAssertionForActiveOverlays__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 identifier];

  v6 = [WeakRetained sceneHandle];
  v7 = [v6 sceneIdentifier];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

- (void)_relinquishResignActiveAssertion
{
  [(UIApplicationSceneDeactivationAssertion *)self->_resignActiveAssertion relinquish];
  resignActiveAssertion = self->_resignActiveAssertion;
  self->_resignActiveAssertion = 0;
}

- (BOOL)_activeOverlaysWantResignActiveAssertion
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_activeOverlayViewProviders;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) wantsResignActiveAssertion])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_setupStatusBarStylesFromSceneHandle:(id)a3
{
  v6 = a3;
  v4 = [v6 sceneIfExists];
  if (v4)
  {
    v5 = [v6 statusBarStateProvider];
    -[SBDeviceApplicationSceneViewController _setStatusBarStyle:](self, "_setStatusBarStyle:", [v5 statusBarStyle]);
    -[SBDeviceApplicationSceneViewController _setStatusBarStyle:forPartWithIdentifier:](self, "_setStatusBarStyle:forPartWithIdentifier:", [v5 statusBarStyleForPartWithIdentifier:*MEMORY[0x277D775D0]], *MEMORY[0x277D775D0]);
    -[SBDeviceApplicationSceneViewController _setStatusBarStyle:forPartWithIdentifier:](self, "_setStatusBarStyle:forPartWithIdentifier:", [v5 statusBarStyleForPartWithIdentifier:*MEMORY[0x277D775B0]], *MEMORY[0x277D775B0]);
    -[SBDeviceApplicationSceneViewController _setStatusBarStyle:forPartWithIdentifier:](self, "_setStatusBarStyle:forPartWithIdentifier:", [v5 statusBarStyleForPartWithIdentifier:*MEMORY[0x277D775E0]], *MEMORY[0x277D775E0]);
  }
}

- (void)_setRealStatusBarStyleDelegate:(id)a3
{
  v5 = a3;
  if (self->_realStatusBarStyleDelegate != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_realStatusBarStyleDelegate, a3);
    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFB | v6;
    v7 = (objc_opt_respondsToSelector() & 1) == 0;
    v5 = v9;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    *&self->_conformanceFlags = *&self->_conformanceFlags & 0xFD | v8;
  }
}

- (void)_applyBackgroundActivitiesToSuppress:(id)a3 toSceneWithIdentifier:(id)a4
{
  statusBar = self->_statusBar;
  if (statusBar)
  {
    v5 = [(UIStatusBar *)self->_statusBar currentResolvedStyle:a3];

    [(UIStatusBar *)statusBar requestResolvedStyle:v5];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_doubleTapTopGestureRecognizer != a3)
  {
    return 1;
  }

  v4 = [(UIViewController *)self _sbWindowScene];
  v5 = [v4 switcherController];
  v6 = [v5 windowManagementContext];
  v7 = [v6 isChamoisOrFlexibleWindowing];

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (*&self->_scrollToTopGestureRecognizer == __PAIR128__(v7, v6))
  {
    v9 = [(UIViewController *)self _sbWindowScene];
    v10 = [v9 switcherController];
    v11 = [v10 windowManagementContext];
    v12 = [v11 isChamoisOrFlexibleWindowing];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_statusBarDoubleTapTop:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationSceneViewController:self statusBarDoubleTapped:v4];
}

- (void)_statusBarTapped:(id)a3 type:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  WeakRetained = self->_overlayViewProviders;
  v8 = [(NSMutableArray *)WeakRetained countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(WeakRetained);
      }

      if ([*(*(&v12 + 1) + 8 * v11) handledStatusBarTap:v6 type:{a4, v12}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)WeakRetained countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(NSMutableArray *)WeakRetained applicationSceneViewController:self statusBarTapped:v6 tapActionType:a4];
  }
}

- (void)_setStatusBarStyle:(int64_t)a3
{
  v4 = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  [v4 setStyle:a3];
}

- (int64_t)_currentStatusBarStyleForPartWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 styleForPartWithIdentifier:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setStatusBarStyle:(int64_t)a3 forPartWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(SBDeviceApplicationSceneViewController *)self _underlyingStatusBarViewIfAvailable];
  [v7 setStyle:a3 forPartWithIdentifier:v6];
}

- (BOOL)_statusBarHasMatchMoveAnimation
{
  v2 = [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView layer];
  v3 = [v2 animationForKey:@"RotationMatchMoveAnimation"];
  v4 = v3 != 0;

  return v4;
}

- (void)_addStatusBarMatchMoveAnimationForView:(id)a3
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD9EE8];
  v5 = a3;
  v6 = [v4 animation];
  v7 = [v5 layer];

  [v6 setSourceLayer:v7];
  [v6 setDuration:INFINITY];
  [v6 setFillMode:*MEMORY[0x277CDA230]];
  [v6 setRemovedOnCompletion:0];
  [v6 setAppliesX:0];
  [v6 setAppliesY:0];
  [v6 setAppliesScale:1];
  [v6 setUsesNormalizedCoordinates:1];
  v8 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
  v14[0] = v8;
  v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 0.0}];
  v14[1] = v9;
  v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 1.0}];
  v14[2] = v10;
  v11 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 1.0}];
  v14[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  [v6 setSourcePoints:v12];

  v13 = [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView layer];
  [v13 addAnimation:v6 forKey:@"RotationMatchMoveAnimation"];
}

- (void)_removeStatusBarMatchMoveAnimation
{
  v2 = [(BSUIOrientationTransformWrapperView *)self->_statusBarTransformView layer];
  [v2 removeAnimationForKey:@"RotationMatchMoveAnimation"];
}

- (int64_t)_effectiveStyleForPartIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBSceneViewController *)self sceneHandle];
  v6 = [v5 statusBarStateProvider];

  v7 = [v6 statusBarStyle];
  v8 = [v6 statusBarPartStyles];
  v9 = [v8 objectForKey:v4];

  if (v9)
  {
    v10 = [v9 integerValue];
    if (v10 != 4)
    {
      v7 = v10;
    }
  }

  return v7;
}

- (void)_updateSceneFullyOccludedState:(id)a3 fullyOccluded:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(SBAppSwitcherSettings *)self->_switcherSettings windowingSettings];
  v7 = [v6 updateWindowLayerFullOcclusion];

  if (v7)
  {
    [v8 setFullyOccluded:v4];
  }
}

- (void)_updateWindowControlsAdaptiveStyle
{
  v3 = [(SBSceneViewController *)self sceneHandle];
  v12 = [v3 statusBarStateProvider];

  v4 = [v12 statusBarPartStyles];
  v5 = [v4 objectForKey:@"trafficLightPartIdentifier"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
    if (v7 == 1)
    {
      v8 = 0;
      v9 = 2;
      goto LABEL_19;
    }

    if (v7 == 2)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_19;
    }
  }

  v10 = [v12 statusBarStyle];
  if (v10 > 3)
  {
    if (v10 != 4)
    {
      v8 = v10 == 64 || v10 == 128;
      if (v10 == 64)
      {
        v9 = 2;
      }

      else
      {
        v9 = v10 == 128;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!v10)
  {
LABEL_18:
    v9 = 0;
    v8 = 1;
    goto LABEL_19;
  }

  v8 = 0;
  if (v10 == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = v10 == 2;
  }

LABEL_19:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained applicationSceneViewController:self didRequestWindowControlsAdaptiveStyle:v9 adaptive:v8];
}

- (void)_configureForSecureDisplay:(BOOL)a3
{
  v3 = a3;
  v35 = *MEMORY[0x277D85DE8];
  v5 = [(SBSceneViewController *)self sceneHandle];
  v6 = [v5 _windowScene];
  v7 = [v6 secureDisplayStateProvider];
  v8 = [v7 supportsSecureDisplayMode];

  v9 = v8 & v3;
  if (v9 != 1 || [(SBDeviceApplicationSceneViewController *)self rendersWhileLocked])
  {
    [(BSInvalidatable *)self->_liveContentDisableAssertion invalidate];
    liveContentDisableAssertion = self->_liveContentDisableAssertion;
    self->_liveContentDisableAssertion = 0;
LABEL_4:

    goto LABEL_5;
  }

  if (!self->_liveContentDisableAssertion)
  {
    liveContentDisableAssertion = [(SBSceneViewController *)self _sceneView];
    v23 = [liveContentDisableAssertion acquireLiveContentDisableAssertionForReason:@"Secure Rendering Enabled"];
    v24 = self->_liveContentDisableAssertion;
    self->_liveContentDisableAssertion = v23;

    goto LABEL_4;
  }

LABEL_5:
  if (v9 != [(SBDeviceApplicationSceneViewController *)self rendersWhileLocked])
  {
    v11 = [(SBSceneViewController *)self _sceneView];
    v12 = [v11 effectiveDisplayMode];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = self->_overlayViewProviders;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        v17 = 0;
        do
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v29 + 1) + 8 * v17++) noteDisplayModeChange:v12];
        }

        while (v15 != v17);
        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v15);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [(NSMutableArray *)self->_activeOverlayViewProviders copy];
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * v22++) configureForSecureDisplay:v9];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }
}

- (SBDeviceApplicationSceneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithSceneHandle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneViewController.m" lineNumber:159 description:{@"SceneHandle must be of type SBDeviceApplicationSceneHandle, but was: %@", a3}];
}

- (void)setSceneFlattenMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBDeviceApplicationSceneViewController.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"sceneFlattenMode"}];
}

@end