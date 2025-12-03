@interface SBKeyboardHomeAffordanceController
+ (id)sharedInstance;
- (SBKeyboardHomeAffordanceController)init;
- (double)additionalEdgeSpacingForHomeGrabberView:(id)view;
- (void)_didChangeAdditionalEdgeMarginForAssertion:(id)assertion;
- (void)_didChangeKeyboardDocked:(id)docked;
- (void)_getHomeGrabberContainingView:(id *)view isAlwaysPortrait:(BOOL *)portrait;
- (void)_updateHomeAffordance;
- (void)_updateTopMostAssertion;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation;
- (void)dealloc;
- (void)registerAssertion:(id)assertion;
- (void)unregisterAssertion:(id)assertion;
@end

@implementation SBKeyboardHomeAffordanceController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SBKeyboardHomeAffordanceController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_54 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_54, block);
  }

  v2 = sharedInstance___sharedInstance_27;

  return v2;
}

void __52__SBKeyboardHomeAffordanceController_sharedInstance__block_invoke(uint64_t a1)
{
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v2 = objc_alloc_init(*(a1 + 32));
    v3 = sharedInstance___sharedInstance_27;
    sharedInstance___sharedInstance_27 = v2;
  }

  else
  {
    __52__SBKeyboardHomeAffordanceController_sharedInstance__block_invoke_cold_1();
  }
}

- (SBKeyboardHomeAffordanceController)init
{
  v8.receiver = self;
  v8.super_class = SBKeyboardHomeAffordanceController;
  v2 = [(SBKeyboardHomeAffordanceController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_isKeyboardDocked = 1;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    assertions = v3->_assertions;
    v3->_assertions = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__didChangeKeyboardDocked_ name:@"SBKeyboardDockedChangedNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  [SBApp removeActiveOrientationObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBHomeGrabberRotationView *)self->_homeGrabberView removeFromSuperview];
  v4.receiver = self;
  v4.super_class = SBKeyboardHomeAffordanceController;
  [(SBKeyboardHomeAffordanceController *)&v4 dealloc];
}

- (void)registerAssertion:(id)assertion
{
  if (assertion)
  {
    [(NSHashTable *)self->_assertions addObject:?];

    [(SBKeyboardHomeAffordanceController *)self _updateTopMostAssertion];
  }
}

- (void)unregisterAssertion:(id)assertion
{
  if (assertion)
  {
    [(NSHashTable *)self->_assertions removeObject:?];

    [(SBKeyboardHomeAffordanceController *)self _updateTopMostAssertion];
  }
}

- (void)_didChangeAdditionalEdgeMarginForAssertion:(id)assertion
{
  assertionCopy = assertion;
  WeakRetained = objc_loadWeakRetained(&self->_topMostAssertion);

  if (WeakRetained == assertionCopy)
  {
    grabberView = [(SBHomeGrabberRotationView *)self->_homeGrabberView grabberView];
    [grabberView setNeedsLayout];
  }
}

- (void)_didChangeKeyboardDocked:(id)docked
{
  userInfo = [docked userInfo];
  v5 = [userInfo objectForKey:@"SBKeyboardDockedKey"];
  self->_isKeyboardDocked = [v5 BOOLValue];

  [(SBKeyboardHomeAffordanceController *)self _updateHomeAffordance];
}

- (void)_getHomeGrabberContainingView:(id *)view isAlwaysPortrait:(BOOL *)portrait
{
  WeakRetained = objc_loadWeakRetained(&self->_topMostAssertion);
  sourceWindow = [WeakRetained sourceWindow];

  v8 = objc_opt_class();
  windowScene = [sourceWindow windowScene];
  v10 = SBSafeCast(v8, windowScene);

  if ([MEMORY[0x277D75658] usesInputSystemUI])
  {
    v11 = objc_opt_class();
    systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
    inputUISceneController = [systemUIScenesCoordinator inputUISceneController];
    hostingWindow = [inputUISceneController hostingWindow];
    view = SBSafeCast(v11, hostingWindow);

    if (v10)
    {
      isMainDisplayWindowScene = [v10 isMainDisplayWindowScene];
    }

    else
    {
      isMainDisplayWindowScene = 1;
    }
  }

  else
  {
    if (!v10)
    {
      view = 0;
      goto LABEL_21;
    }

    medusaHostedKeyboardWindowController = [v10 medusaHostedKeyboardWindowController];
    if ([medusaHostedKeyboardWindowController isUsingMedusaHostedKeyboardWindow])
    {
      medusaHostedKeyboardWindow = [medusaHostedKeyboardWindowController medusaHostedKeyboardWindow];
      rootViewController = [medusaHostedKeyboardWindow rootViewController];
      view = [rootViewController view];

      isMainDisplayWindowScene = [v10 isMainDisplayWindowScene];
    }

    else
    {
      v19 = NSClassFromString(&cfstr_Uikeyboardarbi.isa);
      if (objc_opt_respondsToSelector())
      {
        v20 = [(objc_class *)v19 performSelector:sel_sharedArbiterManager];
      }

      else
      {
        v20 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        keyboardWindow = [v20 keyboardWindow];
        rootViewController2 = [keyboardWindow rootViewController];
        view = [rootViewController2 view];
      }

      else
      {
        view = 0;
      }

      isMainDisplayWindowScene = 0;
    }
  }

  if (view)
  {
    *view = view;
  }

  if (portrait)
  {
    *portrait = isMainDisplayWindowScene;
  }

LABEL_21:
}

- (void)_updateHomeAffordance
{
  WeakRetained = objc_loadWeakRetained(&self->_topMostAssertion);
  if (WeakRetained && self->_isKeyboardDocked)
  {
    v29 = 0;
    v28 = 0;
    [(SBKeyboardHomeAffordanceController *)self _getHomeGrabberContainingView:&v28 isAlwaysPortrait:&v29];
    v4 = v28;
    v5 = v4;
    homeGrabberView = self->_homeGrabberView;
    if (homeGrabberView)
    {
      [v4 bounds];
      [(SBHomeGrabberRotationView *)homeGrabberView setFrame:?];
    }

    else
    {
      v8 = objc_opt_class();
      sourceWindow = [WeakRetained sourceWindow];
      windowScene = [sourceWindow windowScene];
      v11 = SBSafeCast(v8, windowScene);

      if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0 && !v11)
      {
LABEL_17:

        goto LABEL_18;
      }

      medusaHostedKeyboardWindowController = [v11 medusaHostedKeyboardWindowController];
      [medusaHostedKeyboardWindowController addObserver:self];

      v13 = [SBHomeGrabberRotationView alloc];
      [v5 bounds];
      v14 = [(SBHomeGrabberRotationView *)v13 initWithFrame:?];
      v15 = self->_homeGrabberView;
      self->_homeGrabberView = v14;

      grabberView = [(SBHomeGrabberRotationView *)self->_homeGrabberView grabberView];
      if (__sb__runningInSpringBoard())
      {
        [grabberView setSuppressesBounce:SBFEffectiveDeviceClass() == 2];
      }

      else
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        [grabberView setSuppressesBounce:{objc_msgSend(currentDevice, "userInterfaceIdiom") == 1}];
      }

      grabberView2 = [(SBHomeGrabberRotationView *)self->_homeGrabberView grabberView];
      [grabberView2 setDelegate:self];

      [(SBHomeGrabberRotationView *)self->_homeGrabberView setHidden:1];
      [(SBHomeGrabberRotationView *)self->_homeGrabberView setAlpha:0.0];
      [(SBHomeGrabberRotationView *)self->_homeGrabberView setUserInteractionEnabled:0];
      [SBApp addActiveOrientationObserver:self];
    }

    v19 = v29;
    self->_isHomeGrabberContainingViewAlwaysPortrait = v29;
    if (v19)
    {
      activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
    }

    else
    {
      activeInterfaceOrientation = 1;
    }

    [(SBHomeGrabberRotationView *)self->_homeGrabberView setOrientation:activeInterfaceOrientation];
    [v5 addSubview:self->_homeGrabberView];
    grabberView3 = [(SBHomeGrabberRotationView *)self->_homeGrabberView grabberView];
    [grabberView3 setNeedsLayout];

    LODWORD(grabberView3) = [(SBHomeGrabberRotationView *)self->_homeGrabberView isHidden];
    [(SBHomeGrabberRotationView *)self->_homeGrabberView setHidden:0];
    grabberView4 = [(SBHomeGrabberRotationView *)self->_homeGrabberView grabberView];
    [grabberView4 setHomeAffordanceInteractionEnabled:1];

    if (grabberView3)
    {
      v23 = MEMORY[0x277CF0B70];
      v24 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      v25 = [v23 settingsWithDuration:v24 timingFunction:0.25];

      v26 = [MEMORY[0x277CF0D38] factoryWithSettings:v25];
      [v26 setAllowsAdditiveAnimations:1];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __59__SBKeyboardHomeAffordanceController__updateHomeAffordance__block_invoke;
      v27[3] = &unk_2783A8C18;
      v27[4] = self;
      [MEMORY[0x277CF0D38] animateWithFactory:v26 options:4 actions:v27 completion:0];
    }

    goto LABEL_17;
  }

  [(SBHomeGrabberRotationView *)self->_homeGrabberView setHidden:1];
  [(SBHomeGrabberRotationView *)self->_homeGrabberView setAlpha:0.0];
  grabberView5 = [(SBHomeGrabberRotationView *)self->_homeGrabberView grabberView];
  [grabberView5 setHomeAffordanceInteractionEnabled:0];

LABEL_18:
}

- (void)_updateTopMostAssertion
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_assertions;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if (v6)
        {
          sourceWindow = [*(*(&v17 + 1) + 8 * i) sourceWindow];
          [sourceWindow windowLevel];
          v12 = v11;
          sourceWindow2 = [v6 sourceWindow];
          [sourceWindow2 windowLevel];
          v15 = v14;

          if (v12 < v15)
          {
            continue;
          }
        }

        v16 = v9;

        v6 = v16;
      }

      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  objc_storeWeak(&self->_topMostAssertion, v6);
  [(SBKeyboardHomeAffordanceController *)self _updateHomeAffordance];
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation
{
  v16 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  homeGrabberView = self->_homeGrabberView;
  if (homeGrabberView && self->_isHomeGrabberContainingViewAlwaysPortrait && [(SBHomeGrabberRotationView *)homeGrabberView orientation]!= orientation)
  {
    v8 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:[(SBHomeGrabberRotationView *)self->_homeGrabberView orientation] toInterfaceOrientation:orientation];
    [(SBHomeGrabberRotationView *)self->_homeGrabberView setOrientation:orientation animated:1 rotationSettings:v8];
    v9 = SBLogHomeAffordance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      grabberView = [(SBHomeGrabberRotationView *)self->_homeGrabberView grabberView];
      v11 = BSInterfaceOrientationDescription();
      v12 = 134218242;
      v13 = grabberView;
      v14 = 2114;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "grabber=%p rotating keyboard affordance to %{public}@", &v12, 0x16u);
    }
  }
}

- (double)additionalEdgeSpacingForHomeGrabberView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_topMostAssertion);
  [WeakRetained additionalEdgeMargin];
  v5 = v4;

  return v5;
}

void __52__SBKeyboardHomeAffordanceController_sharedInstance__block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[SBKeyboardHomeAffordanceController sharedInstance]_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBKeyboardHomeAffordanceAssertion.m" lineNumber:62 description:@"Attempted to make a home affordance keyboard assertion on a device that shouldn't."];

  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_ERROR, "Attempted to make a home affordance keyboard assertion on a device that shouldn't.", v3, 2u);
  }
}

@end