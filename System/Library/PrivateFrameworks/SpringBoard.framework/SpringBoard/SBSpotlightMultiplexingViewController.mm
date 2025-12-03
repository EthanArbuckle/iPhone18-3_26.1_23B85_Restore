@interface SBSpotlightMultiplexingViewController
+ (BOOL)isShownWithinWindow:(id)window;
+ (BOOL)isShownWithinWindowScene:(id)scene;
+ (SBSpotlightHostedContentMetrics)_class_spotlightHostedContentMetrics;
+ (SPUIRemoteSearchViewController)sharedRemoteSearchViewController;
+ (double)effectiveSpotlightSearchFieldAvoidanceHeight;
+ (id)keyboardFocusTargetIfActiveForeground;
+ (id)spotlightSceneIdentityTokenIfActiveForeground;
+ (unint64_t)spotlightSupportedInterfaceOrientations;
- (BOOL)_isStatusBarEffectivelyHidden;
- (BOOL)_remoteSearchViewControllerHasKeyboardPresented;
- (BOOL)externalKeyboardViewContainsKeyboard;
- (BOOL)isVisibleOnScreen;
- (FBSDisplayConfiguration)targetDisplayConfiguration;
- (SBSpotlightHostedContentMetrics)spotlightHostedContentMetrics;
- (SBSpotlightMultiplexingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SBSpotlightMultiplexingViewControllerDelegate)delegate;
- (SPUIRemoteSearchViewDelegate)spotlightDelegate;
- (id)_displayConfigurationForExternalClients;
- (id)_effectiveKeyboardContentView;
- (id)_getSceneHandleFromSceneManager:(id)manager;
- (id)_spotlightSceneIdentifier;
- (id)dismissScene:(id)scene;
- (id)parentSceneIdentityToken;
- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block;
- (id)sceneHandle;
- (unint64_t)_appStatusBarSettingsLevelForSpotlightMultiplexingLevel:(unint64_t)level;
- (unint64_t)remoteSearchViewPresentationSource;
- (void)_acquireInputUIPresentingAssertionIfNecessary;
- (void)_clearStatusBarHiddenAssertion;
- (void)_clearStatusBarStyleAssertionAnimated:(BOOL)animated;
- (void)_configureExternalKeyboardView;
- (void)_configureExternalKeyboardView:(BOOL)view;
- (void)_configureSceneObservation:(BOOL)observation forScene:(id)scene;
- (void)_configureStatusBarScrollToTopView;
- (void)_evaluateSearchContentAvailabilityForScene:(id)scene;
- (void)_invalidateInputUIPresentingAssertion;
- (void)_notifyExternalKeyboardViewContainsKeyboard:(BOOL)keyboard;
- (void)_registerStatusBarScrollToTopView;
- (void)_registerStatusBarScrollToTopViewWithWindow:(id)window;
- (void)_returnKeyboardToSpotlightIfNecessary;
- (void)_unregisterStatusBarScrollToTopView;
- (void)_unregisterStatusBarScrollToTopViewWithWindow:(id)window;
- (void)_updateStatusBarHiddenAssertion;
- (void)_updateStatusBarStyleAssertion;
- (void)_updateStatusBarStyleAssertionToStyle:(int64_t)style animated:(BOOL)animated;
- (void)dealloc;
- (void)didBecomeActiveDelegate;
- (void)didResignActiveDelegate:(BOOL)delegate;
- (void)dismissSearchView;
- (void)invalidate;
- (void)keyboardLayersDidChange:(id)change;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneManager:(id)manager didAddScene:(id)scene;
- (void)sceneManager:(id)manager didDestroyScene:(id)scene;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAlphaTo:(double)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarHiddenTo:(BOOL)to withAnimation:(int64_t)animation;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to;
- (void)searchViewContentAvailabilityDidChange;
- (void)searchViewKeyboardPresentationStateDidChange;
- (void)setLegibilitySettings:(id)settings;
- (void)setWantsExternalKeyboardView:(BOOL)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBSpotlightMultiplexingViewController

+ (SPUIRemoteSearchViewController)sharedRemoteSearchViewController
{
  if (sharedRemoteSearchViewController_onceToken != -1)
  {
    +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
  }

  v3 = __remoteSearchViewController;

  return v3;
}

- (void)didBecomeActiveDelegate
{
  v29 = *MEMORY[0x277D85DE8];
  [(SBSpotlightMultiplexingViewController *)self setActiveDelegate:1];
  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  [mEMORY[0x277D0AAD8] addObserver:self];

  v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  [v4 addObserver:self];

  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  medusaHostedKeyboardWindowController = [_sbWindowScene medusaHostedKeyboardWindowController];
  [medusaHostedKeyboardWindowController addObserver:self];

  [(SBSpotlightMultiplexingViewController *)self _configureStatusBarScrollToTopView];
  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  legibilitySettings = [(SBSpotlightMultiplexingViewController *)self legibilitySettings];
  [sharedRemoteSearchViewController setLegibilitySettings:legibilitySettings];

  [sharedRemoteSearchViewController setSource:{-[SBSpotlightMultiplexingViewController remoteSearchViewPresentationSource](self, "remoteSearchViewPresentationSource")}];
  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  [(SBSpotlightMultiplexingViewController *)self _configureSceneObservation:1 forScene:sceneIfExists];

  parentViewController = [sharedRemoteSearchViewController parentViewController];
  v12 = parentViewController;
  if (parentViewController != self)
  {
    if (parentViewController)
    {
      [sharedRemoteSearchViewController willMoveToParentViewController:0];
      view = [sharedRemoteSearchViewController view];
      [view removeFromSuperview];

      [sharedRemoteSearchViewController removeFromParentViewController];
    }

    [(SBSpotlightMultiplexingViewController *)self addChildViewController:sharedRemoteSearchViewController];
    view2 = [sharedRemoteSearchViewController view];
    view3 = [(SBSpotlightMultiplexingViewController *)self view];
    [view3 bounds];
    [view2 setFrame:?];

    [view2 setAutoresizingMask:18];
    view4 = [(SBSpotlightMultiplexingViewController *)self view];
    [view4 addSubview:view2];

    [sharedRemoteSearchViewController didMoveToParentViewController:self];
  }

  _appearState = [(SBSpotlightMultiplexingViewController *)self _appearState];
  _appearState2 = [sharedRemoteSearchViewController _appearState];
  if (_appearState != _appearState2)
  {
    if ((_appearState - 1) < 2)
    {
      if ((_appearState2 - 3) <= 0xFFFFFFFD)
      {
        v22 = SBLogSpotlight();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          selfCopy4 = self;
          _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "didBecomeActiveDelegate: %{public}@ is putting search VC in Appearing state", &v27, 0xCu);
        }

        _displayConfigurationForExternalClients = [(SBSpotlightMultiplexingViewController *)self _displayConfigurationForExternalClients];
        [sharedRemoteSearchViewController setDisplayConfiguration:_displayConfigurationForExternalClients];

        [(SBSpotlightMultiplexingViewController *)self bs_beginAppearanceTransitionForChildViewController:sharedRemoteSearchViewController toVisible:1 animated:_appearState == 1];
      }

      if (_appearState == 2)
      {
        v20 = SBLogSpotlight();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          selfCopy4 = self;
          _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "didBecomeActiveDelegate: %{public}@ is putting search VC in Appeared state", &v27, 0xCu);
        }

        v21 = 1;
        goto LABEL_26;
      }
    }

    else if (_appearState == 3 || !_appearState)
    {
      if (_appearState2 && _appearState2 != 3)
      {
        v19 = SBLogSpotlight();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          selfCopy4 = self;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "didBecomeActiveDelegate: %{public}@ is putting search VC in Disappearing state", &v27, 0xCu);
        }

        [(SBSpotlightMultiplexingViewController *)self bs_beginAppearanceTransitionForChildViewController:sharedRemoteSearchViewController toVisible:0 animated:_appearState == 3];
      }

      if (!_appearState)
      {
        v20 = SBLogSpotlight();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          selfCopy4 = self;
          _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "didBecomeActiveDelegate: %{public}@ is putting search VC in Disappeared state", &v27, 0xCu);
        }

        v21 = 0;
LABEL_26:

        [(SBSpotlightMultiplexingViewController *)self bs_endAppearanceTransitionForChildViewController:sharedRemoteSearchViewController toVisible:v21];
      }
    }
  }

  v24 = +[SBKeyboardFocusCoordinator sharedInstance];
  _sbWindowScene2 = [(UIViewController *)self _sbWindowScene];
  v26 = +[SBKeyboardFocusArbitrationReason spotlightMultiplexingDidBecomeActiveDelegate];
  [v24 requestArbitrationForSBWindowScene:_sbWindowScene2 forReason:v26];

  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
  [(SBSpotlightMultiplexingViewController *)self _analyticsLogSpotlightInvocationWhereAndHowWithSource:[(SBSpotlightMultiplexingViewController *)self remoteSearchViewPresentationSource]];
}

- (void)_updateStatusBarHiddenAssertion
{
  if ([(SBSpotlightMultiplexingViewController *)self _isStatusBarEffectivelyHidden])
  {
    v3 = [(SBSpotlightMultiplexingViewController *)self _appStatusBarSettingsLevelForSpotlightMultiplexingLevel:[(SBSpotlightMultiplexingViewController *)self level]];
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    assertionManager = [statusBarManager assertionManager];

    v6 = [assertionManager newSettingsAssertionWithStatusBarHidden:1 atLevel:v3 reason:@"hiding for Spotlight"];
    hideStatusBarAssertion = self->_hideStatusBarAssertion;
    self->_hideStatusBarAssertion = v6;

    [(SBWindowSceneStatusBarSettingsAssertion *)self->_hideStatusBarAssertion acquire];
  }

  else
  {

    [(SBSpotlightMultiplexingViewController *)self _clearStatusBarHiddenAssertion];
  }
}

- (BOOL)_isStatusBarEffectivelyHidden
{
  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  if (sceneIfExists)
  {
    isActiveDelegate = [(SBSpotlightMultiplexingViewController *)self isActiveDelegate];

    if (isActiveDelegate)
    {
      statusBarStateProvider = [sceneHandle statusBarStateProvider];
      if ([statusBarStateProvider statusBarHidden])
      {
        LOBYTE(sceneIfExists) = 1;
      }

      else
      {
        [statusBarStateProvider statusBarAlpha];
        LOBYTE(sceneIfExists) = v7 == 0.0;
      }
    }

    else
    {
      LOBYTE(sceneIfExists) = 0;
    }
  }

  return sceneIfExists;
}

- (id)sceneHandle
{
  sceneHandle = self->_sceneHandle;
  if (!sceneHandle)
  {
    v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    v5 = [(SBSpotlightMultiplexingViewController *)self _getSceneHandleFromSceneManager:v4];
    v6 = self->_sceneHandle;
    self->_sceneHandle = v5;

    sceneHandle = self->_sceneHandle;
  }

  return sceneHandle;
}

- (void)_clearStatusBarHiddenAssertion
{
  [(SBWindowSceneStatusBarSettingsAssertion *)self->_hideStatusBarAssertion invalidate];
  hideStatusBarAssertion = self->_hideStatusBarAssertion;
  self->_hideStatusBarAssertion = 0;
}

- (void)_registerStatusBarScrollToTopView
{
  view = [(SBSpotlightMultiplexingViewController *)self view];
  window = [view window];
  [(SBSpotlightMultiplexingViewController *)self _registerStatusBarScrollToTopViewWithWindow:window];
}

- (void)_updateStatusBarStyleAssertion
{
  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  settings = [sceneIfExists settings];

  if (objc_opt_respondsToSelector())
  {
    forcedStatusBarStyle = [settings forcedStatusBarStyle];
    v6 = forcedStatusBarStyle;
    if (forcedStatusBarStyle)
    {
      integerValue = [forcedStatusBarStyle integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertionToStyle:integerValue animated:1];
}

- (SBSpotlightHostedContentMetrics)spotlightHostedContentMetrics
{
  retstr->searchBarCornerRadius = 0.0;
  retstr->searchBarSize = 0u;
  retstr->dockedSearchBarSize = 0u;
  *&retstr->keyboardHeight = 0u;
  result = objc_opt_class();
  if (result)
  {

    return [(SBSpotlightHostedContentMetrics *)result _class_spotlightHostedContentMetrics];
  }

  else
  {
    retstr->searchBarCornerRadius = 0.0;
    retstr->searchBarSize = 0u;
    retstr->dockedSearchBarSize = 0u;
    *&retstr->keyboardHeight = 0u;
  }

  return result;
}

- (void)_configureExternalKeyboardView
{
  _remoteSearchViewControllerHasKeyboardPresented = [(SBSpotlightMultiplexingViewController *)self _remoteSearchViewControllerHasKeyboardPresented];

  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView:_remoteSearchViewControllerHasKeyboardPresented];
}

- (id)_effectiveKeyboardContentView
{
  if ([MEMORY[0x277D75658] usesInputSystemUI])
  {
    [(SBSpotlightMultiplexingViewController *)self hostedInputUIView];
  }

  else
  {
    [(SBSpotlightMultiplexingViewController *)self keyboardHostView];
  }
  v3 = ;

  return v3;
}

- (id)_displayConfigurationForExternalClients
{
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
  identity = [WeakRetained identity];
  isMainDisplay = [identity isMainDisplay];

  if (isMainDisplay)
  {
    mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
  }

  else
  {
    mainConfiguration = WeakRetained;
  }

  v6 = mainConfiguration;

  return v6;
}

+ (SBSpotlightHostedContentMetrics)_class_spotlightHostedContentMetrics
{
  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  [sharedRemoteSearchViewController keyboardHeight];
  v5 = v4;
  retstr->keyboardHeight = v4;
  [sharedRemoteSearchViewController keyboardProtectorHeight];
  retstr->keyboardProtectorHeight = v6;
  [sharedRemoteSearchViewController searchBarSize];
  v8 = v7;
  v10 = v9;
  retstr->searchBarSize.width = v7;
  retstr->searchBarSize.height = v9;
  [sharedRemoteSearchViewController dockedSearchBarSize];
  v12 = v11;
  v14 = v13;
  retstr->dockedSearchBarSize.width = v11;
  retstr->dockedSearchBarSize.height = v13;
  p_dockedSearchBarSize = &retstr->dockedSearchBarSize;
  [sharedRemoteSearchViewController searchBarCornerRadius];
  retstr->searchBarCornerRadius = v16;
  _sbDisplayConfiguration = [sharedRemoteSearchViewController _sbDisplayConfiguration];
  identity = [_sbDisplayConfiguration identity];
  if ([identity isContinuityDisplay])
  {
    isInHardwareKeyboardMode = 1;
  }

  else
  {
    isInHardwareKeyboardMode = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
  }

  if (BSFloatIsZero() && (isInHardwareKeyboardMode & 1) == 0)
  {
    [MEMORY[0x277D75658] sizeForInterfaceOrientation:1];
    v5 = v20;
    retstr->keyboardHeight = v20;
  }

  if (BSFloatIsZero())
  {
    v21 = _os_feature_enabled_impl();
    v22 = 62.0;
    if (v21)
    {
      v22 = v5 + 62.0;
    }

    retstr->keyboardProtectorHeight = v22;
  }

  v23 = *MEMORY[0x277CBF3A8];
  v24 = *(MEMORY[0x277CBF3A8] + 8);
  if (v8 == *MEMORY[0x277CBF3A8] && v10 == v24)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v28 = v27;

    retstr->searchBarSize.width = v28 + -16.0;
    retstr->searchBarSize.height = 48.0;
  }

  if (v12 == v23 && v14 == v24)
  {
    *p_dockedSearchBarSize = retstr->searchBarSize;
    p_dockedSearchBarSize->width = p_dockedSearchBarSize->width + -40.0;
  }

  if (BSFloatIsZero())
  {
    retstr->searchBarCornerRadius = 10.0;
  }

  return result;
}

- (BOOL)_remoteSearchViewControllerHasKeyboardPresented
{
  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  isKeyboardPresented = [sharedRemoteSearchViewController isKeyboardPresented];

  return isKeyboardPresented;
}

- (BOOL)externalKeyboardViewContainsKeyboard
{
  _effectiveKeyboardContentView = [(SBSpotlightMultiplexingViewController *)self _effectiveKeyboardContentView];

  if (!_effectiveKeyboardContentView)
  {
    return 0;
  }

  return [(SBSpotlightMultiplexingViewController *)self _remoteSearchViewControllerHasKeyboardPresented];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v6 viewDidLayoutSubviews];
  inputUIView = [(SBSpotlightMultiplexingViewController *)self inputUIView];
  if (inputUIView)
  {
    view = [(SBSpotlightMultiplexingViewController *)self view];
    superview = [inputUIView superview];

    if (superview == view)
    {
      [view bounds];
      UIRectGetCenter();
      [inputUIView setCenter:?];
    }
  }
}

- (id)_spotlightSceneIdentifier
{
  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  sceneIdentifier = [sharedRemoteSearchViewController sceneIdentifier];

  return sceneIdentifier;
}

- (SBSpotlightMultiplexingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (unint64_t)spotlightSupportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v4 = 30;
  }

  else
  {
    v4 = 2;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v4;
  }

  v5 = objc_opt_class();

  return [v5 spotlightSupportedInterfaceOrientations];
}

+ (double)effectiveSpotlightSearchFieldAvoidanceHeight
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 0.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [self _class_spotlightHostedContentMetrics];
    return 0.0;
  }

  return result;
}

void __73__SBSpotlightMultiplexingViewController_sharedRemoteSearchViewController__block_invoke()
{
  v0 = objc_opt_new();
  v1 = __remoteSearchViewController;
  __remoteSearchViewController = v0;

  v2 = __remoteSearchViewController;
  v3 = +[SBSpotlightDelegateManager sharedInstance];
  [v2 setDelegate:v3];
}

+ (BOOL)isShownWithinWindow:(id)window
{
  windowCopy = window;
  sharedRemoteSearchViewControllerIfExists = [objc_opt_class() sharedRemoteSearchViewControllerIfExists];
  v5 = sharedRemoteSearchViewControllerIfExists;
  if (sharedRemoteSearchViewControllerIfExists)
  {
    view = [sharedRemoteSearchViewControllerIfExists view];
    window = [view window];
    if (window == windowCopy)
    {
      isBeingPresented = [v5 isBeingPresented];
    }

    else
    {
      isBeingPresented = 0;
    }
  }

  else
  {
    isBeingPresented = 0;
  }

  return isBeingPresented;
}

+ (BOOL)isShownWithinWindowScene:(id)scene
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  windows = [scene windows];
  v5 = [windows countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(windows);
        }

        if ([self isShownWithinWindow:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [windows countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (id)keyboardFocusTargetIfActiveForeground
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__87;
  v16 = __Block_byref_object_dispose__87;
  v17 = 0;
  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  sceneIdentifier = [sharedRemoteSearchViewController sceneIdentifier];

  v4 = [MEMORY[0x277D0ADC0] identityForIdentifier:sceneIdentifier workspaceIdentifier:@"com.apple.Spotlight"];
  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__SBSpotlightMultiplexingViewController_keyboardFocusTargetIfActiveForeground__block_invoke;
  v9[3] = &unk_2783B0A20;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [mEMORY[0x277D0AAD8] enumerateScenesWithBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __78__SBSpotlightMultiplexingViewController_keyboardFocusTargetIfActiveForeground__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  if ([v11 isActive])
  {
    v5 = [v11 settings];
    if ([v5 isForeground])
    {
      v6 = [v11 identity];
      v7 = [v6 isEqual:*(a1 + 32)];

      if (v7)
      {
        v8 = [SBKeyboardFocusTarget targetForFBScene:v11];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        *a3 = 1;
      }
    }

    else
    {
    }
  }
}

+ (id)spotlightSceneIdentityTokenIfActiveForeground
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__87;
  v16 = __Block_byref_object_dispose__87;
  v17 = 0;
  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  sceneIdentifier = [sharedRemoteSearchViewController sceneIdentifier];

  v4 = [MEMORY[0x277D0ADC0] identityForIdentifier:sceneIdentifier workspaceIdentifier:@"com.apple.Spotlight"];
  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SBSpotlightMultiplexingViewController_spotlightSceneIdentityTokenIfActiveForeground__block_invoke;
  v9[3] = &unk_2783B0A20;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [mEMORY[0x277D0AAD8] enumerateScenesWithBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __86__SBSpotlightMultiplexingViewController_spotlightSceneIdentityTokenIfActiveForeground__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  if ([v11 isActive])
  {
    v5 = [v11 settings];
    if ([v5 isForeground])
    {
      v6 = [v11 identity];
      v7 = [v6 isEqual:*(a1 + 32)];

      if (v7)
      {
        v8 = [v11 identityToken];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        *a3 = 1;
      }
    }

    else
    {
    }
  }
}

- (SBSpotlightMultiplexingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SBSpotlightMultiplexingViewController;
  v4 = [(SBSpotlightMultiplexingViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SBSpotlightMultiplexingViewController *)v4 _acquireInputUIPresentingAssertionIfNecessary];
  }

  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  if (![(SBSpotlightMultiplexingViewController *)self isInvalidated])
  {
    v3 = SBLogSpotlight();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ was deallocated without being invalidated. Invalidating now.", buf, 0xCu);
    }

    [(SBSpotlightMultiplexingViewController *)self invalidate];
  }

  v4.receiver = self;
  v4.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v4 dealloc];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
    {
      sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
      [sharedRemoteSearchViewController setLegibilitySettings:settingsCopy];
    }
  }
}

- (void)invalidate
{
  if (![(SBSpotlightMultiplexingViewController *)self isInvalidated])
  {
    [(SBSpotlightMultiplexingViewController *)self setInvalidated:1];
    [(SBSpotlightMultiplexingViewController *)self _invalidateInputUIPresentingAssertion];
    v3 = +[SBSpotlightDelegateManager sharedInstance];
    [v3 removeSpotlightDelegate:self forLevel:{-[SBSpotlightMultiplexingViewController level](self, "level")}];

    keyboardPresenter = [(SBSpotlightMultiplexingViewController *)self keyboardPresenter];
    [keyboardPresenter invalidate];
  }
}

- (void)setWantsExternalKeyboardView:(BOOL)view
{
  if (self->_wantsExternalKeyboardView != view)
  {
    self->_wantsExternalKeyboardView = view;
    [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v8 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
    {
      _sbWindowScene = [(UIViewController *)self _sbWindowScene];
      medusaHostedKeyboardWindowController = [_sbWindowScene medusaHostedKeyboardWindowController];
      [medusaHostedKeyboardWindowController addObserver:self];

      [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
      [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v18 = *MEMORY[0x277D85DE8];
  v5 = +[SBControlCenterCoordinator sharedInstanceIfExists];
  [v5 dismissAnimated:1];

  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  if ([(SBSpotlightMultiplexingViewController *)self isInvalidated])
  {
    v7 = SBLogSpotlight();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ is invalidated, so not adding spotlight delegate", buf, 0xCu);
    }
  }

  else
  {
    v7 = +[SBSpotlightDelegateManager sharedInstance];
    [v7 addSpotlightDelegate:self forLevel:[(SBSpotlightMultiplexingViewController *)self level]];
  }

  [(SBSpotlightMultiplexingViewController *)self _registerStatusBarScrollToTopView];
  if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    [sharedRemoteSearchViewController setSource:{-[SBSpotlightMultiplexingViewController remoteSearchViewPresentationSource](self, "remoteSearchViewPresentationSource")}];
  }

  v15.receiver = self;
  v15.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v15 viewWillAppear:appearCopy];
  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  statusBarStateProvider = [sceneHandle statusBarStateProvider];
  [statusBarStateProvider addStatusBarObserver:self];

  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertion];
  if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      sceneHandle2 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
      [sceneHandle2 setKeyboardContextMaskStyle:2];
    }

    v11 = SBLogSpotlight();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ is appearing, and is the active Spotlight delegate", buf, 0xCu);
    }

    _displayConfigurationForExternalClients = [(SBSpotlightMultiplexingViewController *)self _displayConfigurationForExternalClients];
    [sharedRemoteSearchViewController setDisplayConfiguration:_displayConfigurationForExternalClients];

    [(SBSpotlightMultiplexingViewController *)self bs_beginAppearanceTransitionForChildViewController:sharedRemoteSearchViewController toVisible:1 animated:appearCopy];
  }

  else
  {
    v13 = SBLogSpotlight();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ is appearing, but is not the active Spotlight delegate", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_inputUIPresentingDelegate);
  [WeakRetained scenePresenterVisibilityDidChange:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v13 viewDidAppear:appear];
  if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
    v5 = SBLogSpotlight();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did appear, and is the active Spotlight delegate", buf, 0xCu);
    }

    [(SBSpotlightMultiplexingViewController *)self bs_endAppearanceTransitionForChildViewController:sharedRemoteSearchViewController toVisible:1];
  }

  else
  {
    sharedRemoteSearchViewController = SBLogSpotlight();
    if (os_log_type_enabled(sharedRemoteSearchViewController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_21ED4E000, sharedRemoteSearchViewController, OS_LOG_TYPE_DEFAULT, "%{public}@ did appear, but is not the active Spotlight delegate", buf, 0xCu);
    }
  }

  if (!self->_medusaHostedKeyboardWindowLevelAssertion && [MEMORY[0x277D65D28] enableFloatingWindow])
  {
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    medusaHostedKeyboardWindowController = [_sbWindowScene medusaHostedKeyboardWindowController];
    view = [(SBSpotlightMultiplexingViewController *)self view];
    window = [view window];
    [window windowLevel];
    v11 = [medusaHostedKeyboardWindowController newMedusaHostedKeyboardWindowLevelAssertionWithPriority:2 windowLevel:v10 + 1.0];
    medusaHostedKeyboardWindowLevelAssertion = self->_medusaHostedKeyboardWindowLevelAssertion;
    self->_medusaHostedKeyboardWindowLevelAssertion = v11;
  }

  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertion];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v7 viewWillDisappear:?];
  if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
    v6 = SBLogSpotlight();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ is disappearing, and is the active Spotlight delegate", buf, 0xCu);
    }

    [(SBSpotlightMultiplexingViewController *)self bs_beginAppearanceTransitionForChildViewController:sharedRemoteSearchViewController toVisible:0 animated:disappearCopy];
  }

  else
  {
    sharedRemoteSearchViewController = SBLogSpotlight();
    if (os_log_type_enabled(sharedRemoteSearchViewController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_21ED4E000, sharedRemoteSearchViewController, OS_LOG_TYPE_DEFAULT, "%{public}@ is disappearing, but is not the active Spotlight delegate", buf, 0xCu);
    }
  }

  [(SBSpotlightMultiplexingViewController *)self _clearStatusBarStyleAssertionAnimated:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v16 viewDidDisappear:disappear];
  isActiveDelegate = [(SBSpotlightMultiplexingViewController *)self isActiveDelegate];
  sharedRemoteSearchViewController = SBLogSpotlight();
  v6 = os_log_type_enabled(sharedRemoteSearchViewController, OS_LOG_TYPE_DEFAULT);
  if (isActiveDelegate)
  {
    if (v6)
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_21ED4E000, sharedRemoteSearchViewController, OS_LOG_TYPE_DEFAULT, "%{public}@ did disappear, and is the active Spotlight delegate", buf, 0xCu);
    }

    sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
    [(SBSpotlightMultiplexingViewController *)self bs_endAppearanceTransitionForChildViewController:sharedRemoteSearchViewController toVisible:0];
  }

  else if (v6)
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_21ED4E000, sharedRemoteSearchViewController, OS_LOG_TYPE_DEFAULT, "%{public}@ did disappear, but is not the active Spotlight delegate", buf, 0xCu);
  }

  v7 = +[SBSpotlightDelegateManager sharedInstance];
  [v7 removeSpotlightDelegate:self forLevel:{-[SBSpotlightMultiplexingViewController level](self, "level")}];

  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  statusBarStateProvider = [sceneHandle statusBarStateProvider];
  [statusBarStateProvider removeStatusBarObserver:self];

  [(SBSpotlightMultiplexingViewController *)self _clearStatusBarHiddenAssertion];
  [(SBSpotlightMultiplexingViewController *)self _clearStatusBarStyleAssertionAnimated:1];
  [(SBSpotlightMultiplexingViewController *)self _unregisterStatusBarScrollToTopView];
  v10 = +[SBKeyboardFocusCoordinator sharedInstance];
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  v12 = +[SBKeyboardFocusArbitrationReason spotlightMultiplexingViewDidDisappear];
  [v10 requestArbitrationForSBWindowScene:_sbWindowScene forReason:v12];

  medusaHostedKeyboardWindowLevelAssertion = self->_medusaHostedKeyboardWindowLevelAssertion;
  if (medusaHostedKeyboardWindowLevelAssertion)
  {
    [(SBMedusaHostedKeyboardWindowLevelAssertion *)medusaHostedKeyboardWindowLevelAssertion invalidate];
    v14 = self->_medusaHostedKeyboardWindowLevelAssertion;
    self->_medusaHostedKeyboardWindowLevelAssertion = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_inputUIPresentingDelegate);
  [WeakRetained scenePresenterVisibilityDidChange:self];
}

- (void)dismissSearchView
{
  spotlightDelegate = [(SBSpotlightMultiplexingViewController *)self spotlightDelegate];
  [spotlightDelegate dismissSearchView];
}

- (void)searchViewKeyboardPresentationStateDidChange
{
  v3 = [(SBSpotlightMultiplexingViewController *)self _remoteSearchViewControllerHasKeyboardPresented]^ 1;

  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView:v3];
}

- (void)searchViewContentAvailabilityDidChange
{
  spotlightDelegate = [(SBSpotlightMultiplexingViewController *)self spotlightDelegate];
  if (objc_opt_respondsToSelector())
  {
    [spotlightDelegate searchViewContentAvailabilityDidChange];
  }
}

- (void)didResignActiveDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v16 = *MEMORY[0x277D85DE8];
  v5 = SBLogSpotlight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "didResignActiveDelegate called on %{public}@", &v14, 0xCu);
  }

  [(SBSpotlightMultiplexingViewController *)self setActiveDelegate:0];
  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  [(SBSpotlightMultiplexingViewController *)self _configureSceneObservation:0 forScene:sceneIfExists];

  if (delegateCopy)
  {
    sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
    parentViewController = [sharedRemoteSearchViewController parentViewController];

    if (parentViewController == self && [sharedRemoteSearchViewController _appearState])
    {
      [(SBSpotlightMultiplexingViewController *)self bs_endAppearanceTransitionForChildViewController:sharedRemoteSearchViewController toVisible:0];
    }
  }

  mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
  [mEMORY[0x277D0AAD8] removeObserver:self];

  v11 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  [v11 removeObserver:self];

  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  medusaHostedKeyboardWindowController = [_sbWindowScene medusaHostedKeyboardWindowController];
  [medusaHostedKeyboardWindowController removeObserver:self];
}

- (void)sceneManager:(id)manager didAddScene:(id)scene
{
  sceneCopy = scene;
  identifier = [sceneCopy identifier];
  _spotlightSceneIdentifier = [(SBSpotlightMultiplexingViewController *)self _spotlightSceneIdentifier];
  v7 = [identifier isEqualToString:_spotlightSceneIdentifier];

  if (v7)
  {
    v8 = +[SBKeyboardFocusCoordinator sharedInstance];
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    v10 = +[SBKeyboardFocusArbitrationReason spotlightMultiplexingDidCreateScene];
    [v8 requestArbitrationForSBWindowScene:_sbWindowScene forReason:v10];

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertion];
    [(SBSpotlightMultiplexingViewController *)self _configureSceneObservation:1 forScene:sceneCopy];
    if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
    {
      externalKeyboardView = [(SBSpotlightMultiplexingViewController *)self externalKeyboardView];
      if (externalKeyboardView)
      {
        settings = [sceneCopy settings];
        [settings frame];
        [externalKeyboardView setFrame:?];
      }
    }
  }
}

- (void)sceneManager:(id)manager didDestroyScene:(id)scene
{
  sceneCopy = scene;
  identifier = [sceneCopy identifier];
  _spotlightSceneIdentifier = [(SBSpotlightMultiplexingViewController *)self _spotlightSceneIdentifier];
  v7 = [identifier isEqualToString:_spotlightSceneIdentifier];

  if (v7)
  {
    v8 = +[SBKeyboardFocusCoordinator sharedInstance];
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    v10 = +[SBKeyboardFocusArbitrationReason spotlightMultiplexingDidDestroyScene];
    [v8 requestArbitrationForSBWindowScene:_sbWindowScene forReason:v10];

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertion];
    [(SBSpotlightMultiplexingViewController *)self _configureSceneObservation:0 forScene:sceneCopy];
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v28 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  settingsCopy = settings;
  previousSettings = [settingsCopy previousSettings];
  sb_displayIdentityForSceneManagers = [previousSettings sb_displayIdentityForSceneManagers];

  settings = [settingsCopy settings];

  sb_displayIdentityForSceneManagers2 = [settings sb_displayIdentityForSceneManagers];

  if (sb_displayIdentityForSceneManagers && sb_displayIdentityForSceneManagers2 && ([sb_displayIdentityForSceneManagers2 isEqual:sb_displayIdentityForSceneManagers] & 1) == 0)
  {
    v12 = SBLogSpotlight();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543874;
      selfCopy = self;
      v24 = 2114;
      v25 = sb_displayIdentityForSceneManagers;
      v26 = 2114;
      v27 = sb_displayIdentityForSceneManagers2;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ notified that Spotlight scene has changed displays from %{public}@ to %{public}@", &v22, 0x20u);
    }

    windowSceneManager = [SBApp windowSceneManager];
    v14 = [windowSceneManager windowSceneForDisplayIdentity:sb_displayIdentityForSceneManagers2];
    sceneManager = [v14 sceneManager];

    if (sceneManager)
    {
      v16 = [sceneManager existingSceneHandleForScene:sceneCopy];

      if (!v16)
      {
        v17 = [windowSceneManager windowSceneForDisplayIdentity:sb_displayIdentityForSceneManagers];
        sceneManager2 = [v17 sceneManager];

        identity = [sceneCopy identity];
        [sceneManager2 transferOwnershipOfSceneWithIdentity:identity toSceneManager:sceneManager];

        v20 = [(SBSpotlightMultiplexingViewController *)self _getSceneHandleFromSceneManager:sceneManager];
        sceneHandle = self->_sceneHandle;
        self->_sceneHandle = v20;
      }
    }
  }
}

- (id)_getSceneHandleFromSceneManager:(id)manager
{
  v4 = MEMORY[0x277D0ADC0];
  managerCopy = manager;
  _spotlightSceneIdentifier = [(SBSpotlightMultiplexingViewController *)self _spotlightSceneIdentifier];
  v7 = [v4 identityForIdentifier:_spotlightSceneIdentifier workspaceIdentifier:@"com.apple.Spotlight"];

  v8 = _SBApp(@"com.apple.Spotlight");
  displayIdentity = [managerCopy displayIdentity];
  v10 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v8 sceneIdentity:v7 displayIdentity:displayIdentity];

  v11 = [managerCopy fetchOrCreateApplicationSceneHandleForRequest:v10];

  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = v12;

  return v12;
}

- (void)_configureSceneObservation:(BOOL)observation forScene:(id)scene
{
  observationCopy = observation;
  sceneCopy = scene;
  v8 = sceneCopy;
  if (sceneCopy)
  {
    if (observationCopy && (v7 = [(SBSpotlightMultiplexingViewController *)self isActiveDelegate], sceneCopy = v8, v7))
    {
      [v8 addObserver:self];
    }

    else
    {
      [sceneCopy removeObserver:self];
    }

    sceneCopy = v8;
  }

  [(SBSpotlightMultiplexingViewController *)self _evaluateSearchContentAvailabilityForScene:sceneCopy];
}

- (void)_evaluateSearchContentAvailabilityForScene:(id)scene
{
  sceneCopy = scene;
  isSearchContentAvailable = [(SBSpotlightMultiplexingViewController *)self isSearchContentAvailable];
  if (sceneCopy && [(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    v5 = [sceneCopy contentState] == 2;
    [(SBSpotlightMultiplexingViewController *)self setSearchContentAvailable:v5];
    if (isSearchContentAvailable == v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(SBSpotlightMultiplexingViewController *)self setSearchContentAvailable:0];
    v5 = 0;
    if (!isSearchContentAvailable)
    {
      goto LABEL_9;
    }
  }

  delegate = [(SBSpotlightMultiplexingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate spotlightMultiplexingViewController:self searchContentAvailabilityDidChange:v5];
  }

LABEL_9:
}

- (void)keyboardLayersDidChange:(id)change
{
  identifier = [change identifier];
  _spotlightSceneIdentifier = [(SBSpotlightMultiplexingViewController *)self _spotlightSceneIdentifier];
  v6 = [identifier isEqualToString:_spotlightSceneIdentifier];

  if (v6)
  {

    [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  }
}

- (void)_configureStatusBarScrollToTopView
{
  if (!self->_scrollToTopView)
  {
    view = [(SBSpotlightMultiplexingViewController *)self view];
    v3 = [SBScrollToTopSceneProxyView alloc];
    [view bounds];
    v4 = [(SBScrollToTopSceneProxyView *)v3 initWithFrame:?];
    scrollToTopView = self->_scrollToTopView;
    self->_scrollToTopView = v4;

    v6 = self->_scrollToTopView;
    sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
    [(SBScrollToTopSceneProxyView *)v6 setSceneHandle:sceneHandle];

    [(SBScrollToTopSceneProxyView *)self->_scrollToTopView setDelegate:self];
    [view addSubview:self->_scrollToTopView];
    [(SBSpotlightMultiplexingViewController *)self _registerStatusBarScrollToTopView];
  }
}

- (void)_registerStatusBarScrollToTopViewWithWindow:(id)window
{
  scrollToTopView = self->_scrollToTopView;
  if (scrollToTopView)
  {
    [window _registerScrollToTopView:scrollToTopView];
  }
}

- (void)_unregisterStatusBarScrollToTopView
{
  view = [(SBSpotlightMultiplexingViewController *)self view];
  window = [view window];
  [(SBSpotlightMultiplexingViewController *)self _unregisterStatusBarScrollToTopViewWithWindow:window];
}

- (void)_unregisterStatusBarScrollToTopViewWithWindow:(id)window
{
  scrollToTopView = self->_scrollToTopView;
  if (scrollToTopView)
  {
    [window _unregisterScrollToTopView:scrollToTopView];
  }
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAlphaTo:(double)to
{
  identifierCopy = identifier;
  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];
  v8 = [sceneIdentifier isEqualToString:identifierCopy];

  if (v8)
  {

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
  }
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarHiddenTo:(BOOL)to withAnimation:(int64_t)animation
{
  identifierCopy = identifier;
  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];
  v9 = [sceneIdentifier isEqualToString:identifierCopy];

  if (v9)
  {

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
  }
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to
{
  identifierCopy = identifier;
  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];
  v9 = [sceneIdentifier isEqualToString:identifierCopy];

  if (v9)
  {

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertionToStyle:to animated:1];
  }
}

- (void)_updateStatusBarStyleAssertionToStyle:(int64_t)style animated:(BOOL)animated
{
  v15 = objc_alloc_init(SBMutableStatusBarSettings);
  [(SBMutableStatusBarSettings *)v15 setStyle:_SBStatusBarLegacyStyleFromStyle(style)];
  v6 = [MEMORY[0x277D760A8] sharedInstanceForStyle:_SBStatusBarLegibilityStyleFromStyle(style)];
  [(SBMutableStatusBarSettings *)v15 setLegibilitySettings:v6];

  v7 = [(SBSpotlightMultiplexingViewController *)self _appStatusBarSettingsLevelForSpotlightMultiplexingLevel:[(SBSpotlightMultiplexingViewController *)self level]];
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  statusBarManager = [_sbWindowScene statusBarManager];
  assertionManager = [statusBarManager assertionManager];

  v11 = [assertionManager newSettingsAssertionWithSettings:v15 atLevel:v7 reason:@"style for Spotlight"];
  statusBarStyleAssertion = self->_statusBarStyleAssertion;
  self->_statusBarStyleAssertion = v11;

  v13 = self->_statusBarStyleAssertion;
  initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  [(SBWindowSceneStatusBarSettingsAssertion *)v13 acquireWithAnimationParameters:initWithDefaultParameters];
}

- (void)_clearStatusBarStyleAssertionAnimated:(BOOL)animated
{
  statusBarStyleAssertion = self->_statusBarStyleAssertion;
  if (animated)
  {
    initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)statusBarStyleAssertion invalidateWithAnimationParameters:initWithDefaultParameters];
  }

  else
  {
    [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarStyleAssertion invalidate];
  }

  v6 = self->_statusBarStyleAssertion;
  self->_statusBarStyleAssertion = 0;
}

- (unint64_t)_appStatusBarSettingsLevelForSpotlightMultiplexingLevel:(unint64_t)level
{
  if (level == 3)
  {
    return 8;
  }

  else
  {
    return 4 * (level == 2);
  }
}

- (unint64_t)remoteSearchViewPresentationSource
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSpotlightMultiplexingViewController.m" lineNumber:874 description:@"Subclassers must override to use"];

  return 0;
}

- (void)_configureExternalKeyboardView:(BOOL)view
{
  viewCopy = view;
  usesInputSystemUI = [MEMORY[0x277D75658] usesInputSystemUI];
  _effectiveKeyboardContentView = [(SBSpotlightMultiplexingViewController *)self _effectiveKeyboardContentView];
  if (_effectiveKeyboardContentView)
  {
    v7 = viewCopy;
  }

  else
  {
    v7 = 0;
  }

  if (![(SBSpotlightMultiplexingViewController *)self wantsExternalKeyboardView])
  {
    [(SBSpotlightMultiplexingViewController *)self _returnKeyboardToSpotlightIfNecessary];
    [(SBSpotlightMultiplexingViewController *)self setExternalKeyboardView:0];
    goto LABEL_24;
  }

  sceneHandle = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  externalKeyboardView = [(SBSpotlightMultiplexingViewController *)self externalKeyboardView];
  if (!externalKeyboardView)
  {
    v11 = objc_alloc(MEMORY[0x277D75D18]);
    settings = [sceneIfExists settings];
    [settings frame];
    externalKeyboardView = [v11 initWithFrame:?];

    [(SBSpotlightMultiplexingViewController *)self setExternalKeyboardView:externalKeyboardView];
  }

  if (![(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    [(SBSpotlightMultiplexingViewController *)self _returnKeyboardToSpotlightIfNecessary];
    goto LABEL_23;
  }

  if (!usesInputSystemUI)
  {
    keyboardPresenter = [(SBSpotlightMultiplexingViewController *)self keyboardPresenter];
    if (keyboardPresenter)
    {
      inputUIView = keyboardPresenter;
      goto LABEL_16;
    }

    layerManager = [sceneIfExists layerManager];
    layers = [layerManager layers];
    v20 = [layers bs_firstObjectPassingTest:&__block_literal_global_158];

    if (v20)
    {
      uiPresentationManager = [sceneIfExists uiPresentationManager];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      inputUIView = [uiPresentationManager createPresenterForLayerTarget:v20 identifier:uUIDString];

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __72__SBSpotlightMultiplexingViewController__configureExternalKeyboardView___block_invoke_2;
      v25[3] = &unk_2783A9210;
      v25[4] = self;
      [inputUIView modifyPresentationContext:v25];
      [(SBSpotlightMultiplexingViewController *)self setKeyboardPresenter:inputUIView];
      [inputUIView activate];

      if (inputUIView)
      {
LABEL_16:
        keyboardHostView = [(SBSpotlightMultiplexingViewController *)self keyboardHostView];

        if (!keyboardHostView)
        {
          presentationView = [inputUIView presentationView];
          [(SBSpotlightMultiplexingViewController *)self setKeyboardHostView:presentationView];
          [externalKeyboardView addSubview:presentationView];
        }
      }
    }

    else
    {
      inputUIView = 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  hostedInputUIView = [(SBSpotlightMultiplexingViewController *)self hostedInputUIView];

  if (!hostedInputUIView)
  {
    inputUIView = [(SBSpotlightMultiplexingViewController *)self inputUIView];
    if (inputUIView)
    {
      [(SBSpotlightMultiplexingViewController *)self setHostedInputUIView:inputUIView];
      [externalKeyboardView bounds];
      [inputUIView setFrame:?];
      [externalKeyboardView addSubview:inputUIView];
    }

    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  externalKeyboardViewContainsKeyboard = [(SBSpotlightMultiplexingViewController *)self externalKeyboardViewContainsKeyboard];
  if (v7 != externalKeyboardViewContainsKeyboard)
  {
    [(SBSpotlightMultiplexingViewController *)self _notifyExternalKeyboardViewContainsKeyboard:externalKeyboardViewContainsKeyboard];
  }
}

void __72__SBSpotlightMultiplexingViewController__configureExternalKeyboardView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 view];
  v7 = [v6 window];

  if (v7)
  {
    v8 = [v3 hostTransformer];
    if (v8)
    {
      v9 = [v3 hostTransformer];
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277D75778]);
    }

    memset(&v13, 0, sizeof(v13));
    [v7 interfaceOrientation];
    SBFTransformFromOrientationToOrientation();
    CGAffineTransformInvert(&v13, &v12);
    v12 = v13;
    v11 = [MEMORY[0x277D75CD8] transformWithCGAffineTransform:&v12];
    [v10 addTransform:v11 reason:@"Configure External Keyboard View"];

    [v3 setHostTransformer:v10];
  }

  else
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __72__SBSpotlightMultiplexingViewController__configureExternalKeyboardView___block_invoke_2_cold_1(v4, v10);
    }
  }
}

- (void)_notifyExternalKeyboardViewContainsKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  delegate = [(SBSpotlightMultiplexingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate spotlightMultiplexingViewController:self externalKeyboardViewContainsKeyboardDidChange:keyboardCopy];
  }
}

- (void)_returnKeyboardToSpotlightIfNecessary
{
  if ([MEMORY[0x277D75658] usesInputSystemUI])
  {
    hostedInputUIView = [(SBSpotlightMultiplexingViewController *)self hostedInputUIView];
    window = [hostedInputUIView window];
    view = [(SBSpotlightMultiplexingViewController *)self view];
    window2 = [view window];
    v7 = [window isEqual:window2];

    if (v7)
    {
      hostedInputUIView2 = [(SBSpotlightMultiplexingViewController *)self hostedInputUIView];
      [hostedInputUIView2 removeFromSuperview];
    }

    [(SBSpotlightMultiplexingViewController *)self setHostedInputUIView:0];
    inputUIView = [(SBSpotlightMultiplexingViewController *)self inputUIView];
    if (inputUIView)
    {
      v13 = inputUIView;
      view2 = [(SBSpotlightMultiplexingViewController *)self view];
      [view2 addSubview:v13];
      [view2 bounds];
      UIRectGetCenter();
      [v13 setCenter:?];

      inputUIView = v13;
    }
  }

  else
  {
    keyboardHostView = [(SBSpotlightMultiplexingViewController *)self keyboardHostView];
    [keyboardHostView removeFromSuperview];

    [(SBSpotlightMultiplexingViewController *)self setKeyboardHostView:0];
    keyboardPresenter = [(SBSpotlightMultiplexingViewController *)self keyboardPresenter];
    [keyboardPresenter invalidate];

    [(SBSpotlightMultiplexingViewController *)self setKeyboardPresenter:0];
  }
}

- (void)_acquireInputUIPresentingAssertionIfNecessary
{
  if (!self->_inputUIPresenterAssertion)
  {
    systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
    inputUISceneController = [systemUIScenesCoordinator inputUISceneController];
    v4 = [inputUISceneController addPresenter:self];
    inputUIPresenterAssertion = self->_inputUIPresenterAssertion;
    self->_inputUIPresenterAssertion = v4;
  }
}

- (void)_invalidateInputUIPresentingAssertion
{
  [(BSInvalidatable *)self->_inputUIPresenterAssertion invalidate];
  inputUIPresenterAssertion = self->_inputUIPresenterAssertion;
  self->_inputUIPresenterAssertion = 0;
}

id __95__SBSpotlightMultiplexingViewController__analyticsLogSpotlightInvocationWhereAndHowWithSource___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = *MEMORY[0x277D664D8];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v7[0] = v2;
  v6[1] = *MEMORY[0x277D664E0];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block
{
  v5 = (*(block + 2))(block, a2, scene);
  traitsOrientedViewController = [v5 traitsOrientedViewController];

  view = [traitsOrientedViewController view];
  [(SBSpotlightMultiplexingViewController *)self setInputUIView:view];

  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  return 0;
}

- (id)dismissScene:(id)scene
{
  inputUIView = [(SBSpotlightMultiplexingViewController *)self inputUIView];
  [inputUIView removeFromSuperview];

  [(SBSpotlightMultiplexingViewController *)self setInputUIView:0];
  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  return 0;
}

- (id)parentSceneIdentityToken
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  identityToken = [sceneIfExists identityToken];

  return identityToken;
}

- (BOOL)isVisibleOnScreen
{
  view = [(SBSpotlightMultiplexingViewController *)self view];
  window = [view window];
  v4 = window != 0;

  return v4;
}

- (SPUIRemoteSearchViewDelegate)spotlightDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_spotlightDelegate);

  return WeakRetained;
}

- (FBSDisplayConfiguration)targetDisplayConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);

  return WeakRetained;
}

void __72__SBSpotlightMultiplexingViewController__configureExternalKeyboardView___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Couldn't orient external keyboard for Spotlight presentation since not in the view hierarchy yet %{public}@", &v3, 0xCu);
}

@end