@interface SBSpotlightMultiplexingViewController
+ (BOOL)isShownWithinWindow:(id)a3;
+ (BOOL)isShownWithinWindowScene:(id)a3;
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
- (SBSpotlightMultiplexingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBSpotlightMultiplexingViewControllerDelegate)delegate;
- (SPUIRemoteSearchViewDelegate)spotlightDelegate;
- (id)_displayConfigurationForExternalClients;
- (id)_effectiveKeyboardContentView;
- (id)_getSceneHandleFromSceneManager:(id)a3;
- (id)_spotlightSceneIdentifier;
- (id)dismissScene:(id)a3;
- (id)parentSceneIdentityToken;
- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4;
- (id)sceneHandle;
- (unint64_t)_appStatusBarSettingsLevelForSpotlightMultiplexingLevel:(unint64_t)a3;
- (unint64_t)remoteSearchViewPresentationSource;
- (void)_acquireInputUIPresentingAssertionIfNecessary;
- (void)_clearStatusBarHiddenAssertion;
- (void)_clearStatusBarStyleAssertionAnimated:(BOOL)a3;
- (void)_configureExternalKeyboardView;
- (void)_configureExternalKeyboardView:(BOOL)a3;
- (void)_configureSceneObservation:(BOOL)a3 forScene:(id)a4;
- (void)_configureStatusBarScrollToTopView;
- (void)_evaluateSearchContentAvailabilityForScene:(id)a3;
- (void)_invalidateInputUIPresentingAssertion;
- (void)_notifyExternalKeyboardViewContainsKeyboard:(BOOL)a3;
- (void)_registerStatusBarScrollToTopView;
- (void)_registerStatusBarScrollToTopViewWithWindow:(id)a3;
- (void)_returnKeyboardToSpotlightIfNecessary;
- (void)_unregisterStatusBarScrollToTopView;
- (void)_unregisterStatusBarScrollToTopViewWithWindow:(id)a3;
- (void)_updateStatusBarHiddenAssertion;
- (void)_updateStatusBarStyleAssertion;
- (void)_updateStatusBarStyleAssertionToStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)dealloc;
- (void)didBecomeActiveDelegate;
- (void)didResignActiveDelegate:(BOOL)a3;
- (void)dismissSearchView;
- (void)invalidate;
- (void)keyboardLayersDidChange:(id)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneManager:(id)a3 didAddScene:(id)a4;
- (void)sceneManager:(id)a3 didDestroyScene:(id)a4;
- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarAlphaTo:(double)a4;
- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarHiddenTo:(BOOL)a4 withAnimation:(int64_t)a5;
- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarStyleTo:(int64_t)a4;
- (void)searchViewContentAvailabilityDidChange;
- (void)searchViewKeyboardPresentationStateDidChange;
- (void)setLegibilitySettings:(id)a3;
- (void)setWantsExternalKeyboardView:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
  v3 = [MEMORY[0x277D0AAD8] sharedInstance];
  [v3 addObserver:self];

  v4 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  [v4 addObserver:self];

  v5 = [(UIViewController *)self _sbWindowScene];
  v6 = [v5 medusaHostedKeyboardWindowController];
  [v6 addObserver:self];

  [(SBSpotlightMultiplexingViewController *)self _configureStatusBarScrollToTopView];
  v7 = [objc_opt_class() sharedRemoteSearchViewController];
  v8 = [(SBSpotlightMultiplexingViewController *)self legibilitySettings];
  [v7 setLegibilitySettings:v8];

  [v7 setSource:{-[SBSpotlightMultiplexingViewController remoteSearchViewPresentationSource](self, "remoteSearchViewPresentationSource")}];
  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  v9 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v10 = [v9 sceneIfExists];
  [(SBSpotlightMultiplexingViewController *)self _configureSceneObservation:1 forScene:v10];

  v11 = [v7 parentViewController];
  v12 = v11;
  if (v11 != self)
  {
    if (v11)
    {
      [v7 willMoveToParentViewController:0];
      v13 = [v7 view];
      [v13 removeFromSuperview];

      [v7 removeFromParentViewController];
    }

    [(SBSpotlightMultiplexingViewController *)self addChildViewController:v7];
    v14 = [v7 view];
    v15 = [(SBSpotlightMultiplexingViewController *)self view];
    [v15 bounds];
    [v14 setFrame:?];

    [v14 setAutoresizingMask:18];
    v16 = [(SBSpotlightMultiplexingViewController *)self view];
    [v16 addSubview:v14];

    [v7 didMoveToParentViewController:self];
  }

  v17 = [(SBSpotlightMultiplexingViewController *)self _appearState];
  v18 = [v7 _appearState];
  if (v17 != v18)
  {
    if ((v17 - 1) < 2)
    {
      if ((v18 - 3) <= 0xFFFFFFFD)
      {
        v22 = SBLogSpotlight();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          v28 = self;
          _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "didBecomeActiveDelegate: %{public}@ is putting search VC in Appearing state", &v27, 0xCu);
        }

        v23 = [(SBSpotlightMultiplexingViewController *)self _displayConfigurationForExternalClients];
        [v7 setDisplayConfiguration:v23];

        [(SBSpotlightMultiplexingViewController *)self bs_beginAppearanceTransitionForChildViewController:v7 toVisible:1 animated:v17 == 1];
      }

      if (v17 == 2)
      {
        v20 = SBLogSpotlight();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          v28 = self;
          _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "didBecomeActiveDelegate: %{public}@ is putting search VC in Appeared state", &v27, 0xCu);
        }

        v21 = 1;
        goto LABEL_26;
      }
    }

    else if (v17 == 3 || !v17)
    {
      if (v18 && v18 != 3)
      {
        v19 = SBLogSpotlight();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          v28 = self;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "didBecomeActiveDelegate: %{public}@ is putting search VC in Disappearing state", &v27, 0xCu);
        }

        [(SBSpotlightMultiplexingViewController *)self bs_beginAppearanceTransitionForChildViewController:v7 toVisible:0 animated:v17 == 3];
      }

      if (!v17)
      {
        v20 = SBLogSpotlight();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          v28 = self;
          _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "didBecomeActiveDelegate: %{public}@ is putting search VC in Disappeared state", &v27, 0xCu);
        }

        v21 = 0;
LABEL_26:

        [(SBSpotlightMultiplexingViewController *)self bs_endAppearanceTransitionForChildViewController:v7 toVisible:v21];
      }
    }
  }

  v24 = +[SBKeyboardFocusCoordinator sharedInstance];
  v25 = [(UIViewController *)self _sbWindowScene];
  v26 = +[SBKeyboardFocusArbitrationReason spotlightMultiplexingDidBecomeActiveDelegate];
  [v24 requestArbitrationForSBWindowScene:v25 forReason:v26];

  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
  [(SBSpotlightMultiplexingViewController *)self _analyticsLogSpotlightInvocationWhereAndHowWithSource:[(SBSpotlightMultiplexingViewController *)self remoteSearchViewPresentationSource]];
}

- (void)_updateStatusBarHiddenAssertion
{
  if ([(SBSpotlightMultiplexingViewController *)self _isStatusBarEffectivelyHidden])
  {
    v3 = [(SBSpotlightMultiplexingViewController *)self _appStatusBarSettingsLevelForSpotlightMultiplexingLevel:[(SBSpotlightMultiplexingViewController *)self level]];
    v4 = [(UIViewController *)self _sbWindowScene];
    v5 = [v4 statusBarManager];
    v8 = [v5 assertionManager];

    v6 = [v8 newSettingsAssertionWithStatusBarHidden:1 atLevel:v3 reason:@"hiding for Spotlight"];
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
  v3 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v4 = [v3 sceneIfExists];
  if (v4)
  {
    v5 = [(SBSpotlightMultiplexingViewController *)self isActiveDelegate];

    if (v5)
    {
      v6 = [v3 statusBarStateProvider];
      if ([v6 statusBarHidden])
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        [v6 statusBarAlpha];
        LOBYTE(v4) = v7 == 0.0;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
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
  v4 = [(SBSpotlightMultiplexingViewController *)self view];
  v3 = [v4 window];
  [(SBSpotlightMultiplexingViewController *)self _registerStatusBarScrollToTopViewWithWindow:v3];
}

- (void)_updateStatusBarStyleAssertion
{
  v3 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v4 = [v3 sceneIfExists];
  v8 = [v4 settings];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v8 forcedStatusBarStyle];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 integerValue];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertionToStyle:v7 animated:1];
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
  v3 = [(SBSpotlightMultiplexingViewController *)self _remoteSearchViewControllerHasKeyboardPresented];

  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView:v3];
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
  v3 = [WeakRetained identity];
  v4 = [v3 isMainDisplay];

  if (v4)
  {
    v5 = [MEMORY[0x277D0AA90] mainConfiguration];
  }

  else
  {
    v5 = WeakRetained;
  }

  v6 = v5;

  return v6;
}

+ (SBSpotlightHostedContentMetrics)_class_spotlightHostedContentMetrics
{
  v31 = [objc_opt_class() sharedRemoteSearchViewController];
  [v31 keyboardHeight];
  v5 = v4;
  retstr->keyboardHeight = v4;
  [v31 keyboardProtectorHeight];
  retstr->keyboardProtectorHeight = v6;
  [v31 searchBarSize];
  v8 = v7;
  v10 = v9;
  retstr->searchBarSize.width = v7;
  retstr->searchBarSize.height = v9;
  [v31 dockedSearchBarSize];
  v12 = v11;
  v14 = v13;
  retstr->dockedSearchBarSize.width = v11;
  retstr->dockedSearchBarSize.height = v13;
  p_dockedSearchBarSize = &retstr->dockedSearchBarSize;
  [v31 searchBarCornerRadius];
  retstr->searchBarCornerRadius = v16;
  v17 = [v31 _sbDisplayConfiguration];
  v18 = [v17 identity];
  if ([v18 isContinuityDisplay])
  {
    v19 = 1;
  }

  else
  {
    v19 = [MEMORY[0x277D75658] isInHardwareKeyboardMode];
  }

  if (BSFloatIsZero() && (v19 & 1) == 0)
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
    v26 = [MEMORY[0x277D759A0] mainScreen];
    [v26 bounds];
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
  v2 = [objc_opt_class() sharedRemoteSearchViewController];
  v3 = [v2 isKeyboardPresented];

  return v3;
}

- (BOOL)externalKeyboardViewContainsKeyboard
{
  v3 = [(SBSpotlightMultiplexingViewController *)self _effectiveKeyboardContentView];

  if (!v3)
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
  v3 = [(SBSpotlightMultiplexingViewController *)self inputUIView];
  if (v3)
  {
    v4 = [(SBSpotlightMultiplexingViewController *)self view];
    v5 = [v3 superview];

    if (v5 == v4)
    {
      [v4 bounds];
      UIRectGetCenter();
      [v3 setCenter:?];
    }
  }
}

- (id)_spotlightSceneIdentifier
{
  v2 = [objc_opt_class() sharedRemoteSearchViewController];
  v3 = [v2 sceneIdentifier];

  return v3;
}

- (SBSpotlightMultiplexingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (unint64_t)spotlightSupportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  result = 0.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    [a1 _class_spotlightHostedContentMetrics];
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

+ (BOOL)isShownWithinWindow:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() sharedRemoteSearchViewControllerIfExists];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 view];
    v7 = [v6 window];
    if (v7 == v3)
    {
      v8 = [v5 isBeingPresented];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isShownWithinWindowScene:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 windows];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([a1 isShownWithinWindow:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v2 = [objc_opt_class() sharedRemoteSearchViewController];
  v3 = [v2 sceneIdentifier];

  v4 = [MEMORY[0x277D0ADC0] identityForIdentifier:v3 workspaceIdentifier:@"com.apple.Spotlight"];
  v5 = [MEMORY[0x277D0AAD8] sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__SBSpotlightMultiplexingViewController_keyboardFocusTargetIfActiveForeground__block_invoke;
  v9[3] = &unk_2783B0A20;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateScenesWithBlock:v9];

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
  v2 = [objc_opt_class() sharedRemoteSearchViewController];
  v3 = [v2 sceneIdentifier];

  v4 = [MEMORY[0x277D0ADC0] identityForIdentifier:v3 workspaceIdentifier:@"com.apple.Spotlight"];
  v5 = [MEMORY[0x277D0AAD8] sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SBSpotlightMultiplexingViewController_spotlightSceneIdentityTokenIfActiveForeground__block_invoke;
  v9[3] = &unk_2783B0A20;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateScenesWithBlock:v9];

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

- (SBSpotlightMultiplexingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBSpotlightMultiplexingViewController;
  v4 = [(SBSpotlightMultiplexingViewController *)&v7 initWithNibName:a3 bundle:a4];
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
      v6 = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ was deallocated without being invalidated. Invalidating now.", buf, 0xCu);
    }

    [(SBSpotlightMultiplexingViewController *)self invalidate];
  }

  v4.receiver = self;
  v4.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v4 dealloc];
}

- (void)setLegibilitySettings:(id)a3
{
  v6 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
    {
      v5 = [objc_opt_class() sharedRemoteSearchViewController];
      [v5 setLegibilitySettings:v6];
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

    v4 = [(SBSpotlightMultiplexingViewController *)self keyboardPresenter];
    [v4 invalidate];
  }
}

- (void)setWantsExternalKeyboardView:(BOOL)a3
{
  if (self->_wantsExternalKeyboardView != a3)
  {
    self->_wantsExternalKeyboardView = a3;
    [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v8 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
    {
      v6 = [(UIViewController *)self _sbWindowScene];
      v7 = [v6 medusaHostedKeyboardWindowController];
      [v7 addObserver:self];

      [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
      [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = +[SBControlCenterCoordinator sharedInstanceIfExists];
  [v5 dismissAnimated:1];

  v6 = [objc_opt_class() sharedRemoteSearchViewController];
  if ([(SBSpotlightMultiplexingViewController *)self isInvalidated])
  {
    v7 = SBLogSpotlight();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
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
    [v6 setSource:{-[SBSpotlightMultiplexingViewController remoteSearchViewPresentationSource](self, "remoteSearchViewPresentationSource")}];
  }

  v15.receiver = self;
  v15.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v15 viewWillAppear:v3];
  v8 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v9 = [v8 statusBarStateProvider];
  [v9 addStatusBarObserver:self];

  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertion];
  if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      v10 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
      [v10 setKeyboardContextMaskStyle:2];
    }

    v11 = SBLogSpotlight();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ is appearing, and is the active Spotlight delegate", buf, 0xCu);
    }

    v12 = [(SBSpotlightMultiplexingViewController *)self _displayConfigurationForExternalClients];
    [v6 setDisplayConfiguration:v12];

    [(SBSpotlightMultiplexingViewController *)self bs_beginAppearanceTransitionForChildViewController:v6 toVisible:1 animated:v3];
  }

  else
  {
    v13 = SBLogSpotlight();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ is appearing, but is not the active Spotlight delegate", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_inputUIPresentingDelegate);
  [WeakRetained scenePresenterVisibilityDidChange:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v13 viewDidAppear:a3];
  if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    v4 = [objc_opt_class() sharedRemoteSearchViewController];
    v5 = SBLogSpotlight();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did appear, and is the active Spotlight delegate", buf, 0xCu);
    }

    [(SBSpotlightMultiplexingViewController *)self bs_endAppearanceTransitionForChildViewController:v4 toVisible:1];
  }

  else
  {
    v4 = SBLogSpotlight();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ did appear, but is not the active Spotlight delegate", buf, 0xCu);
    }
  }

  if (!self->_medusaHostedKeyboardWindowLevelAssertion && [MEMORY[0x277D65D28] enableFloatingWindow])
  {
    v6 = [(UIViewController *)self _sbWindowScene];
    v7 = [v6 medusaHostedKeyboardWindowController];
    v8 = [(SBSpotlightMultiplexingViewController *)self view];
    v9 = [v8 window];
    [v9 windowLevel];
    v11 = [v7 newMedusaHostedKeyboardWindowLevelAssertionWithPriority:2 windowLevel:v10 + 1.0];
    medusaHostedKeyboardWindowLevelAssertion = self->_medusaHostedKeyboardWindowLevelAssertion;
    self->_medusaHostedKeyboardWindowLevelAssertion = v11;
  }

  [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertion];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v7 viewWillDisappear:?];
  if ([(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    v5 = [objc_opt_class() sharedRemoteSearchViewController];
    v6 = SBLogSpotlight();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = self;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ is disappearing, and is the active Spotlight delegate", buf, 0xCu);
    }

    [(SBSpotlightMultiplexingViewController *)self bs_beginAppearanceTransitionForChildViewController:v5 toVisible:0 animated:v3];
  }

  else
  {
    v5 = SBLogSpotlight();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = self;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ is disappearing, but is not the active Spotlight delegate", buf, 0xCu);
    }
  }

  [(SBSpotlightMultiplexingViewController *)self _clearStatusBarStyleAssertionAnimated:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = SBSpotlightMultiplexingViewController;
  [(SBSpotlightMultiplexingViewController *)&v16 viewDidDisappear:a3];
  v4 = [(SBSpotlightMultiplexingViewController *)self isActiveDelegate];
  v5 = SBLogSpotlight();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138543362;
      v18 = self;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did disappear, and is the active Spotlight delegate", buf, 0xCu);
    }

    v5 = [objc_opt_class() sharedRemoteSearchViewController];
    [(SBSpotlightMultiplexingViewController *)self bs_endAppearanceTransitionForChildViewController:v5 toVisible:0];
  }

  else if (v6)
  {
    *buf = 138543362;
    v18 = self;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did disappear, but is not the active Spotlight delegate", buf, 0xCu);
  }

  v7 = +[SBSpotlightDelegateManager sharedInstance];
  [v7 removeSpotlightDelegate:self forLevel:{-[SBSpotlightMultiplexingViewController level](self, "level")}];

  v8 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v9 = [v8 statusBarStateProvider];
  [v9 removeStatusBarObserver:self];

  [(SBSpotlightMultiplexingViewController *)self _clearStatusBarHiddenAssertion];
  [(SBSpotlightMultiplexingViewController *)self _clearStatusBarStyleAssertionAnimated:1];
  [(SBSpotlightMultiplexingViewController *)self _unregisterStatusBarScrollToTopView];
  v10 = +[SBKeyboardFocusCoordinator sharedInstance];
  v11 = [(UIViewController *)self _sbWindowScene];
  v12 = +[SBKeyboardFocusArbitrationReason spotlightMultiplexingViewDidDisappear];
  [v10 requestArbitrationForSBWindowScene:v11 forReason:v12];

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
  v2 = [(SBSpotlightMultiplexingViewController *)self spotlightDelegate];
  [v2 dismissSearchView];
}

- (void)searchViewKeyboardPresentationStateDidChange
{
  v3 = [(SBSpotlightMultiplexingViewController *)self _remoteSearchViewControllerHasKeyboardPresented]^ 1;

  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView:v3];
}

- (void)searchViewContentAvailabilityDidChange
{
  v2 = [(SBSpotlightMultiplexingViewController *)self spotlightDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 searchViewContentAvailabilityDidChange];
  }
}

- (void)didResignActiveDelegate:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = SBLogSpotlight();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = self;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "didResignActiveDelegate called on %{public}@", &v14, 0xCu);
  }

  [(SBSpotlightMultiplexingViewController *)self setActiveDelegate:0];
  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  v6 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v7 = [v6 sceneIfExists];
  [(SBSpotlightMultiplexingViewController *)self _configureSceneObservation:0 forScene:v7];

  if (v3)
  {
    v8 = [objc_opt_class() sharedRemoteSearchViewController];
    v9 = [v8 parentViewController];

    if (v9 == self && [v8 _appearState])
    {
      [(SBSpotlightMultiplexingViewController *)self bs_endAppearanceTransitionForChildViewController:v8 toVisible:0];
    }
  }

  v10 = [MEMORY[0x277D0AAD8] sharedInstance];
  [v10 removeObserver:self];

  v11 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  [v11 removeObserver:self];

  v12 = [(UIViewController *)self _sbWindowScene];
  v13 = [v12 medusaHostedKeyboardWindowController];
  [v13 removeObserver:self];
}

- (void)sceneManager:(id)a3 didAddScene:(id)a4
{
  v13 = a4;
  v5 = [v13 identifier];
  v6 = [(SBSpotlightMultiplexingViewController *)self _spotlightSceneIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = +[SBKeyboardFocusCoordinator sharedInstance];
    v9 = [(UIViewController *)self _sbWindowScene];
    v10 = +[SBKeyboardFocusArbitrationReason spotlightMultiplexingDidCreateScene];
    [v8 requestArbitrationForSBWindowScene:v9 forReason:v10];

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertion];
    [(SBSpotlightMultiplexingViewController *)self _configureSceneObservation:1 forScene:v13];
    if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
    {
      v11 = [(SBSpotlightMultiplexingViewController *)self externalKeyboardView];
      if (v11)
      {
        v12 = [v13 settings];
        [v12 frame];
        [v11 setFrame:?];
      }
    }
  }
}

- (void)sceneManager:(id)a3 didDestroyScene:(id)a4
{
  v11 = a4;
  v5 = [v11 identifier];
  v6 = [(SBSpotlightMultiplexingViewController *)self _spotlightSceneIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = +[SBKeyboardFocusCoordinator sharedInstance];
    v9 = [(UIViewController *)self _sbWindowScene];
    v10 = +[SBKeyboardFocusArbitrationReason spotlightMultiplexingDidDestroyScene];
    [v8 requestArbitrationForSBWindowScene:v9 forReason:v10];

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertion];
    [(SBSpotlightMultiplexingViewController *)self _configureSceneObservation:0 forScene:v11];
  }
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 previousSettings];
  v9 = [v8 sb_displayIdentityForSceneManagers];

  v10 = [v7 settings];

  v11 = [v10 sb_displayIdentityForSceneManagers];

  if (v9 && v11 && ([v11 isEqual:v9] & 1) == 0)
  {
    v12 = SBLogSpotlight();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543874;
      v23 = self;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ notified that Spotlight scene has changed displays from %{public}@ to %{public}@", &v22, 0x20u);
    }

    v13 = [SBApp windowSceneManager];
    v14 = [v13 windowSceneForDisplayIdentity:v11];
    v15 = [v14 sceneManager];

    if (v15)
    {
      v16 = [v15 existingSceneHandleForScene:v6];

      if (!v16)
      {
        v17 = [v13 windowSceneForDisplayIdentity:v9];
        v18 = [v17 sceneManager];

        v19 = [v6 identity];
        [v18 transferOwnershipOfSceneWithIdentity:v19 toSceneManager:v15];

        v20 = [(SBSpotlightMultiplexingViewController *)self _getSceneHandleFromSceneManager:v15];
        sceneHandle = self->_sceneHandle;
        self->_sceneHandle = v20;
      }
    }
  }
}

- (id)_getSceneHandleFromSceneManager:(id)a3
{
  v4 = MEMORY[0x277D0ADC0];
  v5 = a3;
  v6 = [(SBSpotlightMultiplexingViewController *)self _spotlightSceneIdentifier];
  v7 = [v4 identityForIdentifier:v6 workspaceIdentifier:@"com.apple.Spotlight"];

  v8 = _SBApp(@"com.apple.Spotlight");
  v9 = [v5 displayIdentity];
  v10 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v8 sceneIdentity:v7 displayIdentity:v9];

  v11 = [v5 fetchOrCreateApplicationSceneHandleForRequest:v10];

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

- (void)_configureSceneObservation:(BOOL)a3 forScene:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = v6;
  if (v6)
  {
    if (v4 && (v7 = [(SBSpotlightMultiplexingViewController *)self isActiveDelegate], v6 = v8, v7))
    {
      [v8 addObserver:self];
    }

    else
    {
      [v6 removeObserver:self];
    }

    v6 = v8;
  }

  [(SBSpotlightMultiplexingViewController *)self _evaluateSearchContentAvailabilityForScene:v6];
}

- (void)_evaluateSearchContentAvailabilityForScene:(id)a3
{
  v7 = a3;
  v4 = [(SBSpotlightMultiplexingViewController *)self isSearchContentAvailable];
  if (v7 && [(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    v5 = [v7 contentState] == 2;
    [(SBSpotlightMultiplexingViewController *)self setSearchContentAvailable:v5];
    if (v4 == v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(SBSpotlightMultiplexingViewController *)self setSearchContentAvailable:0];
    v5 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v6 = [(SBSpotlightMultiplexingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 spotlightMultiplexingViewController:self searchContentAvailabilityDidChange:v5];
  }

LABEL_9:
}

- (void)keyboardLayersDidChange:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(SBSpotlightMultiplexingViewController *)self _spotlightSceneIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {

    [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  }
}

- (void)_configureStatusBarScrollToTopView
{
  if (!self->_scrollToTopView)
  {
    v8 = [(SBSpotlightMultiplexingViewController *)self view];
    v3 = [SBScrollToTopSceneProxyView alloc];
    [v8 bounds];
    v4 = [(SBScrollToTopSceneProxyView *)v3 initWithFrame:?];
    scrollToTopView = self->_scrollToTopView;
    self->_scrollToTopView = v4;

    v6 = self->_scrollToTopView;
    v7 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
    [(SBScrollToTopSceneProxyView *)v6 setSceneHandle:v7];

    [(SBScrollToTopSceneProxyView *)self->_scrollToTopView setDelegate:self];
    [v8 addSubview:self->_scrollToTopView];
    [(SBSpotlightMultiplexingViewController *)self _registerStatusBarScrollToTopView];
  }
}

- (void)_registerStatusBarScrollToTopViewWithWindow:(id)a3
{
  scrollToTopView = self->_scrollToTopView;
  if (scrollToTopView)
  {
    [a3 _registerScrollToTopView:scrollToTopView];
  }
}

- (void)_unregisterStatusBarScrollToTopView
{
  v4 = [(SBSpotlightMultiplexingViewController *)self view];
  v3 = [v4 window];
  [(SBSpotlightMultiplexingViewController *)self _unregisterStatusBarScrollToTopViewWithWindow:v3];
}

- (void)_unregisterStatusBarScrollToTopViewWithWindow:(id)a3
{
  scrollToTopView = self->_scrollToTopView;
  if (scrollToTopView)
  {
    [a3 _unregisterScrollToTopView:scrollToTopView];
  }
}

- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarAlphaTo:(double)a4
{
  v5 = a3;
  v6 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v7 = [v6 sceneIdentifier];
  v8 = [v7 isEqualToString:v5];

  if (v8)
  {

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
  }
}

- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarHiddenTo:(BOOL)a4 withAnimation:(int64_t)a5
{
  v6 = a3;
  v7 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v8 = [v7 sceneIdentifier];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarHiddenAssertion];
  }
}

- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarStyleTo:(int64_t)a4
{
  v6 = a3;
  v7 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v8 = [v7 sceneIdentifier];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {

    [(SBSpotlightMultiplexingViewController *)self _updateStatusBarStyleAssertionToStyle:a4 animated:1];
  }
}

- (void)_updateStatusBarStyleAssertionToStyle:(int64_t)a3 animated:(BOOL)a4
{
  v15 = objc_alloc_init(SBMutableStatusBarSettings);
  [(SBMutableStatusBarSettings *)v15 setStyle:_SBStatusBarLegacyStyleFromStyle(a3)];
  v6 = [MEMORY[0x277D760A8] sharedInstanceForStyle:_SBStatusBarLegibilityStyleFromStyle(a3)];
  [(SBMutableStatusBarSettings *)v15 setLegibilitySettings:v6];

  v7 = [(SBSpotlightMultiplexingViewController *)self _appStatusBarSettingsLevelForSpotlightMultiplexingLevel:[(SBSpotlightMultiplexingViewController *)self level]];
  v8 = [(UIViewController *)self _sbWindowScene];
  v9 = [v8 statusBarManager];
  v10 = [v9 assertionManager];

  v11 = [v10 newSettingsAssertionWithSettings:v15 atLevel:v7 reason:@"style for Spotlight"];
  statusBarStyleAssertion = self->_statusBarStyleAssertion;
  self->_statusBarStyleAssertion = v11;

  v13 = self->_statusBarStyleAssertion;
  v14 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  [(SBWindowSceneStatusBarSettingsAssertion *)v13 acquireWithAnimationParameters:v14];
}

- (void)_clearStatusBarStyleAssertionAnimated:(BOOL)a3
{
  statusBarStyleAssertion = self->_statusBarStyleAssertion;
  if (a3)
  {
    v5 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)statusBarStyleAssertion invalidateWithAnimationParameters:v5];
  }

  else
  {
    [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarStyleAssertion invalidate];
  }

  v6 = self->_statusBarStyleAssertion;
  self->_statusBarStyleAssertion = 0;
}

- (unint64_t)_appStatusBarSettingsLevelForSpotlightMultiplexingLevel:(unint64_t)a3
{
  if (a3 == 3)
  {
    return 8;
  }

  else
  {
    return 4 * (a3 == 2);
  }
}

- (unint64_t)remoteSearchViewPresentationSource
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSpotlightMultiplexingViewController.m" lineNumber:874 description:@"Subclassers must override to use"];

  return 0;
}

- (void)_configureExternalKeyboardView:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75658] usesInputSystemUI];
  v6 = [(SBSpotlightMultiplexingViewController *)self _effectiveKeyboardContentView];
  if (v6)
  {
    v7 = v3;
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

  v8 = [(SBSpotlightMultiplexingViewController *)self sceneHandle];
  v9 = [v8 sceneIfExists];
  v10 = [(SBSpotlightMultiplexingViewController *)self externalKeyboardView];
  if (!v10)
  {
    v11 = objc_alloc(MEMORY[0x277D75D18]);
    v12 = [v9 settings];
    [v12 frame];
    v10 = [v11 initWithFrame:?];

    [(SBSpotlightMultiplexingViewController *)self setExternalKeyboardView:v10];
  }

  if (![(SBSpotlightMultiplexingViewController *)self isActiveDelegate])
  {
    [(SBSpotlightMultiplexingViewController *)self _returnKeyboardToSpotlightIfNecessary];
    goto LABEL_23;
  }

  if (!v5)
  {
    v15 = [(SBSpotlightMultiplexingViewController *)self keyboardPresenter];
    if (v15)
    {
      v14 = v15;
      goto LABEL_16;
    }

    v18 = [v9 layerManager];
    v19 = [v18 layers];
    v20 = [v19 bs_firstObjectPassingTest:&__block_literal_global_158];

    if (v20)
    {
      v21 = [v9 uiPresentationManager];
      v22 = [MEMORY[0x277CCAD78] UUID];
      v23 = [v22 UUIDString];
      v14 = [v21 createPresenterForLayerTarget:v20 identifier:v23];

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __72__SBSpotlightMultiplexingViewController__configureExternalKeyboardView___block_invoke_2;
      v25[3] = &unk_2783A9210;
      v25[4] = self;
      [v14 modifyPresentationContext:v25];
      [(SBSpotlightMultiplexingViewController *)self setKeyboardPresenter:v14];
      [v14 activate];

      if (v14)
      {
LABEL_16:
        v16 = [(SBSpotlightMultiplexingViewController *)self keyboardHostView];

        if (!v16)
        {
          v17 = [v14 presentationView];
          [(SBSpotlightMultiplexingViewController *)self setKeyboardHostView:v17];
          [v10 addSubview:v17];
        }
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  v13 = [(SBSpotlightMultiplexingViewController *)self hostedInputUIView];

  if (!v13)
  {
    v14 = [(SBSpotlightMultiplexingViewController *)self inputUIView];
    if (v14)
    {
      [(SBSpotlightMultiplexingViewController *)self setHostedInputUIView:v14];
      [v10 bounds];
      [v14 setFrame:?];
      [v10 addSubview:v14];
    }

    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v24 = [(SBSpotlightMultiplexingViewController *)self externalKeyboardViewContainsKeyboard];
  if (v7 != v24)
  {
    [(SBSpotlightMultiplexingViewController *)self _notifyExternalKeyboardViewContainsKeyboard:v24];
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

- (void)_notifyExternalKeyboardViewContainsKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBSpotlightMultiplexingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 spotlightMultiplexingViewController:self externalKeyboardViewContainsKeyboardDidChange:v3];
  }
}

- (void)_returnKeyboardToSpotlightIfNecessary
{
  if ([MEMORY[0x277D75658] usesInputSystemUI])
  {
    v3 = [(SBSpotlightMultiplexingViewController *)self hostedInputUIView];
    v4 = [v3 window];
    v5 = [(SBSpotlightMultiplexingViewController *)self view];
    v6 = [v5 window];
    v7 = [v4 isEqual:v6];

    if (v7)
    {
      v8 = [(SBSpotlightMultiplexingViewController *)self hostedInputUIView];
      [v8 removeFromSuperview];
    }

    [(SBSpotlightMultiplexingViewController *)self setHostedInputUIView:0];
    v9 = [(SBSpotlightMultiplexingViewController *)self inputUIView];
    if (v9)
    {
      v13 = v9;
      v10 = [(SBSpotlightMultiplexingViewController *)self view];
      [v10 addSubview:v13];
      [v10 bounds];
      UIRectGetCenter();
      [v13 setCenter:?];

      v9 = v13;
    }
  }

  else
  {
    v11 = [(SBSpotlightMultiplexingViewController *)self keyboardHostView];
    [v11 removeFromSuperview];

    [(SBSpotlightMultiplexingViewController *)self setKeyboardHostView:0];
    v12 = [(SBSpotlightMultiplexingViewController *)self keyboardPresenter];
    [v12 invalidate];

    [(SBSpotlightMultiplexingViewController *)self setKeyboardPresenter:0];
  }
}

- (void)_acquireInputUIPresentingAssertionIfNecessary
{
  if (!self->_inputUIPresenterAssertion)
  {
    v6 = [SBApp systemUIScenesCoordinator];
    v3 = [v6 inputUISceneController];
    v4 = [v3 addPresenter:self];
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

- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4
{
  v5 = (*(a4 + 2))(a4, a2, a3);
  v6 = [v5 traitsOrientedViewController];

  v7 = [v6 view];
  [(SBSpotlightMultiplexingViewController *)self setInputUIView:v7];

  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  return 0;
}

- (id)dismissScene:(id)a3
{
  v4 = [(SBSpotlightMultiplexingViewController *)self inputUIView];
  [v4 removeFromSuperview];

  [(SBSpotlightMultiplexingViewController *)self setInputUIView:0];
  [(SBSpotlightMultiplexingViewController *)self _configureExternalKeyboardView];
  return 0;
}

- (id)parentSceneIdentityToken
{
  v2 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  v3 = [v2 identityToken];

  return v3;
}

- (BOOL)isVisibleOnScreen
{
  v2 = [(SBSpotlightMultiplexingViewController *)self view];
  v3 = [v2 window];
  v4 = v3 != 0;

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