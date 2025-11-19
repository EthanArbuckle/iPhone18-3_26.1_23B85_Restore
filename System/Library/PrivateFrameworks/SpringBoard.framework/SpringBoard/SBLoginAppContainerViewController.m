@interface SBLoginAppContainerViewController
- (BOOL)handleHomeButtonDoublePress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)suppressesControlCenter;
- (SBLoginAppContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SBLoginAppContainerViewController)initWithNibName:(id)a3 bundle:(id)a4 sceneHoster:(id)a5 wallpaperController:(id)a6;
- (id)coordinatorRequestedIdleTimerBehavior:(id)a3;
- (void)_addBatteryChargingView;
- (void)_cleanupBatteryChargingViewWithAnimationDuration:(double)a3;
- (void)_fadeViewsForChargingViewVisible:(BOOL)a3;
- (void)_handleBacklightFadeEnded;
- (void)_reallyAcquireStatusBarAssertionIfNecessaryInitiallyVisible:(BOOL)a3;
- (void)_reallyRelinquishStatusBarAssertion;
- (void)_removeBatteryChargingView;
- (void)_setupLoginScene;
- (void)_showOrHideThermalTrapUIAnimated:(BOOL)a3;
- (void)_updateBatteryChargingViewAnimated:(BOOL)a3;
- (void)_updateLegibility;
- (void)addLoginObserver:(id)a3;
- (void)dealloc;
- (void)disableLockScreenPluginWithContext:(id)a3;
- (void)enableLockScreenPluginWithContext:(id)a3;
- (void)loadView;
- (void)noteDeviceBlockedStatusUpdated;
- (void)pluginManager:(id)a3 willUnloadPlugin:(id)a4;
- (void)prepareForUILock;
- (void)prepareForUIUnlock;
- (void)removeLoginObserver:(id)a3;
- (void)sceneInvalidated;
- (void)sceneUpdatedIdleTimerMode:(int64_t)a3;
- (void)sceneUpdatedRotationMode:(int64_t)a3;
- (void)sceneUpdatedStatusBarUserName:(id)a3;
- (void)sceneUpdatedWallpaperMode:(unint64_t)a3;
- (void)startLockScreenFadeInAnimationForSource:(int)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)wallpaperDidChangeForVariant:(int64_t)a3;
- (void)wallpaperLegibilitySettingsDidChange:(id)a3 forVariant:(int64_t)a4;
@end

@implementation SBLoginAppContainerViewController

- (SBLoginAppContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SBLoginAppSceneHoster);
  v9 = +[SBWallpaperController sharedInstance];
  v10 = [(SBLoginAppContainerViewController *)self initWithNibName:v7 bundle:v6 sceneHoster:v8 wallpaperController:v9];

  return v10;
}

- (SBLoginAppContainerViewController)initWithNibName:(id)a3 bundle:(id)a4 sceneHoster:(id)a5 wallpaperController:(id)a6
{
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = SBLoginAppContainerViewController;
  v13 = [(SBLoginAppContainerViewController *)&v20 initWithNibName:a3 bundle:a4];
  if (v13)
  {
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v13 selector:sel__handleBacklightFadeEnded name:*MEMORY[0x277D67A18] object:0];
    v15 = [MEMORY[0x277CBEB58] set];
    showStatusBarReasons = v13->_showStatusBarReasons;
    v13->_showStatusBarReasons = v15;

    objc_storeStrong(&v13->_sceneHoster, a5);
    [(SBLoginAppSceneHoster *)v13->_sceneHoster setDelegate:v13];
    objc_storeStrong(&v13->_wallpaperController, a6);
    [(SBWallpaperController *)v13->_wallpaperController addObserver:v13 forVariant:0];
    v13->_idleTimerMode = 0;
    v17 = objc_alloc_init(SBLockScreenPluginManager);
    pluginManager = v13->_pluginManager;
    v13->_pluginManager = v17;

    [(SBLockScreenPluginManager *)v13->_pluginManager setDelegate:v13];
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[SBWallpaperController sharedInstance];
  [v3 removeObserver:self forVariant:0];

  [(SBLoginAppContainerViewController *)self _reallyRelinquishStatusBarAssertion];
  v4.receiver = self;
  v4.super_class = SBLoginAppContainerViewController;
  [(SBLoginAppContainerViewController *)&v4 dealloc];
}

- (void)addLoginObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v9;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
        v8 = self->_observers;
        self->_observers = v7;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v9];
      v4 = v9;
    }
  }
}

- (void)removeLoginObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = [(NSHashTable *)self->_observers containsObject:v4];
    v4 = v6;
    if (v5)
    {
      [(NSHashTable *)self->_observers removeObject:v6];
      v4 = v6;
    }
  }
}

- (void)loadView
{
  v3 = [SBLoginAppContainerView alloc];
  v4 = [(SBLoginAppContainerView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SBLoginAppContainerView *)v4 setAutoresizingMask:18];
  [(SBLoginAppContainerView *)v4 setAutoresizesSubviews:1];
  [(SBLoginAppContainerViewController *)self setView:v4];
  [(SBLoginAppContainerViewController *)self _updateLegibility];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBLoginAppContainerViewController;
  [(SBLoginAppContainerViewController *)&v5 viewWillAppear:a3];
  [(SBLockScreenPluginManager *)self->_pluginManager setEnabled:1];
  [(SBLoginAppContainerViewController *)self _showOrHideThermalTrapUIAnimated:0];
  v4 = +[SBLockScreenManager sharedInstanceIfExists];
  if ([v4 isInLostMode])
  {
    [v4 enableLostModePlugin];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBLoginAppContainerViewController;
  [(SBLoginAppContainerViewController *)&v4 viewWillDisappear:a3];
  [(SBLockScreenPluginManager *)self->_pluginManager setEnabled:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBLoginAppContainerViewController;
  [(SBLockScreenViewControllerBase *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  sceneHoster = self->_sceneHoster;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__SBLoginAppContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v10[3] = &unk_2783BE728;
  v11 = v7;
  v9 = v7;
  [(SBLoginAppSceneHoster *)sceneHoster updateSettingsWithTransitionBlock:v10];
}

id __88__SBLoginAppContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75188];
  v4 = a2;
  v5 = [v3 transitionContext];
  v6 = MEMORY[0x277CF0B70];
  [*(a1 + 32) transitionDuration];
  v7 = [v6 settingsWithDuration:?];
  [v5 setAnimationSettings:v7];

  v8 = [MEMORY[0x277D75940] _synchronizedDrawingFence];
  [v5 setAnimationFence:v8];

  v9 = SBFWindowForViewControllerTransition();
  [v4 setInterfaceOrientation:{objc_msgSend(v9, "_toWindowOrientation")}];

  return v5;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = SBLoginAppContainerViewController;
  [(SBLoginAppContainerViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    [(SBLoginAppContainerViewController *)self _reallyAcquireStatusBarAssertionIfNecessaryInitiallyVisible:1];
  }

  else
  {
    [(SBLoginAppContainerViewController *)self _reallyRelinquishStatusBarAssertion];
  }
}

- (void)noteDeviceBlockedStatusUpdated
{
  v3 = +[SBBacklightController sharedInstance];
  -[SBLoginAppContainerViewController _showOrHideThermalTrapUIAnimated:](self, "_showOrHideThermalTrapUIAnimated:", [v3 screenIsOn]);
}

- (void)startLockScreenFadeInAnimationForSource:(int)a3
{
  if ((a3 - 21) <= 1 && !self->_batteryChargingViewController)
  {
    [(SBLoginAppContainerViewController *)self _updateBatteryChargingViewAnimated:0];
  }

  v7 = +[SBScreenWakeAnimationController sharedInstance];
  v4 = +[SBBacklightController sharedInstance];
  if (([v4 screenIsOn] & 1) == 0)
  {
    v5 = [v7 isWakeAnimationInProgress];

    if (v5)
    {
      goto LABEL_8;
    }

    v6 = SBUIConvertUnlockSourceToBacklightChangeSource();
    v4 = [(SBLockScreenViewControllerBase *)self legacyWallpaperWakeAnimator];
    [v7 prepareToWakeForSource:v6 timeAlpha:v4 statusBarAlpha:0 target:0 dateView:0.0 completion:0.0];
  }

LABEL_8:
}

- (void)enableLockScreenPluginWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"FindMyiPhoneLockScreen"];

  if (v6 && !self->_pluginWrapperViewController && [(SBLockScreenPluginManager *)self->_pluginManager enableLockScreenPluginWithContext:v4])
  {
    v7 = [SBLoginAppContainerPluginWrapperViewController alloc];
    v8 = [(SBLockScreenPluginManager *)self->_pluginManager activePlugin];
    v9 = [(SBLoginAppContainerPluginWrapperViewController *)v7 initWithPlugin:v8];
    pluginWrapperViewController = self->_pluginWrapperViewController;
    self->_pluginWrapperViewController = v9;

    [(SBLoginAppContainerViewController *)self addChildViewController:self->_pluginWrapperViewController];
    v11 = [(SBLoginAppContainerViewController *)self loginContainerView];
    v12 = [(SBLoginAppContainerPluginWrapperViewController *)self->_pluginWrapperViewController view];
    [v11 setPluginView:v12];

    [(SBLoginAppContainerPluginWrapperViewController *)self->_pluginWrapperViewController didMoveToParentViewController:self];
    v13 = [(SBLoginAppContainerPluginWrapperViewController *)self->_pluginWrapperViewController view];
    [v13 setAlpha:0.0];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__SBLoginAppContainerViewController_enableLockScreenPluginWithContext___block_invoke;
    v14[3] = &unk_2783A8C18;
    v14[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v14 animations:0.5];
  }
}

void __71__SBLoginAppContainerViewController_enableLockScreenPluginWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1072) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) loginContainerView];
  [v3 setContentHidden:1 forRequester:@"LockScreenPlugin"];
}

- (void)disableLockScreenPluginWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_pluginWrapperViewController)
  {
    v6 = [v4 name];
    v7 = [v6 isEqualToString:@"FindMyiPhoneLockScreen"];

    if (v7)
    {
      v8 = MEMORY[0x277D75D18];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __72__SBLoginAppContainerViewController_disableLockScreenPluginWithContext___block_invoke;
      v11[3] = &unk_2783A8C18;
      v11[4] = self;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __72__SBLoginAppContainerViewController_disableLockScreenPluginWithContext___block_invoke_2;
      v9[3] = &unk_2783A8BF0;
      v9[4] = self;
      v10 = v5;
      [v8 animateWithDuration:v11 animations:v9 completion:0.5];
    }
  }
}

void __72__SBLoginAppContainerViewController_disableLockScreenPluginWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1072) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) loginContainerView];
  [v3 setContentHidden:0 forRequester:@"LockScreenPlugin"];
}

uint64_t __72__SBLoginAppContainerViewController_disableLockScreenPluginWithContext___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1072) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) loginContainerView];
  [v2 setPluginView:0];

  [*(*(a1 + 32) + 1072) removeFromParentViewController];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1072);
  *(v3 + 1072) = 0;

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 1112);

  return [v6 disableLockScreenPluginWithContext:v5];
}

- (BOOL)handleHomeButtonDoublePress
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(SBLoginAppSceneHoster *)self->_sceneHoster hostedApp];
  v3 = [SBApp menuButtonInterceptApp];
  v4 = [v3 processState];
  v5 = v4;
  if (v2 == v3 && [v4 isRunning])
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 bundleIdentifier];
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "intercepting menu button event and forwarding to %{public}@", &v12, 0xCu);
    }

    v8 = [v3 bundleIdentifier];
    SBSendFakeHomeButtonTapEventToApplication(v8, [v5 pid]);

    v9 = [v3 bundleIdentifier];
    SBSendFakeHomeButtonTapEventToApplication(v9, [v5 pid]);

    if (([SBApp menuButtonInterceptAppEnabledForever] & 1) == 0)
    {
      [SBApp setMenuButtonInterceptApp:0 forever:0];
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)handleVolumeUpButtonPress
{
  if ([(SBLoginAppContainerPluginWrapperViewController *)self->_pluginWrapperViewController handleVolumeUpButtonPress])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBLoginAppContainerViewController;
  return [(SBLockScreenViewControllerBase *)&v4 handleVolumeUpButtonPress];
}

- (BOOL)handleVolumeDownButtonPress
{
  if ([(SBLoginAppContainerPluginWrapperViewController *)self->_pluginWrapperViewController handleVolumeDownButtonPress])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBLoginAppContainerViewController;
  return [(SBLockScreenViewControllerBase *)&v4 handleVolumeDownButtonPress];
}

- (void)prepareForUILock
{
  v3.receiver = self;
  v3.super_class = SBLoginAppContainerViewController;
  [(SBLockScreenViewControllerBase *)&v3 prepareForUILock];
  [(SBLoginAppContainerViewController *)self _setupLoginScene];
  [(SBLoginAppSceneHoster *)self->_sceneHoster setDeferHIDEvents:1];
}

- (void)prepareForUIUnlock
{
  v3.receiver = self;
  v3.super_class = SBLoginAppContainerViewController;
  [(SBLockScreenViewControllerBase *)&v3 prepareForUIUnlock];
  [(SBLoginAppSceneHoster *)self->_sceneHoster setDeferHIDEvents:0];
}

- (BOOL)suppressesControlCenter
{
  v2 = [MEMORY[0x277CFC880] standardDefaults];
  v3 = [v2 shouldAlwaysBeEnabled];

  return v3 ^ 1;
}

- (void)_reallyAcquireStatusBarAssertionIfNecessaryInitiallyVisible:(BOOL)a3
{
  if (!self->_statusBarAssertion)
  {
    v3 = a3;
    v5 = [(UIViewController *)self _sbWindowScene];

    if (v5)
    {
      v6 = [(UIViewController *)self _sbWindowScene];
      v7 = [v6 statusBarManager];
      v10 = [v7 assertionManager];

      v8 = [v10 newSettingsAssertionWithStatusBarHidden:!v3 atLevel:11 reason:@"login"];
      statusBarAssertion = self->_statusBarAssertion;
      self->_statusBarAssertion = v8;

      [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion acquire];
    }
  }
}

- (void)_reallyRelinquishStatusBarAssertion
{
  [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion invalidate];
  statusBarAssertion = self->_statusBarAssertion;
  self->_statusBarAssertion = 0;
}

- (void)_setupLoginScene
{
  v3 = [MEMORY[0x277D0AB20] sharedInstance];
  v4 = [objc_alloc(MEMORY[0x277D0AB28]) initWithEventQueue:v3 reason:@"Launch LoginUI"];
  v5 = [(SBLoginAppContainerViewController *)self interfaceOrientation];
  sceneHoster = self->_sceneHoster;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SBLoginAppContainerViewController__setupLoginScene__block_invoke;
  v8[3] = &unk_2783BE750;
  v9 = v4;
  v10 = self;
  v11 = v5;
  v7 = v4;
  [(SBLoginAppSceneHoster *)sceneHoster launchLoginAppWithInitialOrientation:v5 completion:v8];
}

void __53__SBLoginAppContainerViewController__setupLoginScene__block_invoke(uint64_t a1, int a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogWorkspace();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v29 = a2;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "LoginUI app activation completed: %d", buf, 8u);
  }

  [*(a1 + 32) relinquish];
  if (a2)
  {
    v7 = [*(a1 + 40) loginContainerView];
    v8 = [*(*(a1 + 40) + 1048) contentView];
    [v7 setContentView:v8];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [*(*(a1 + 40) + 1128) allObjects];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v23 + 1) + 8 * v13++) loginAppDidFinishLaunching:*(a1 + 40)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    if ([*(a1 + 40) interfaceOrientation] != *(a1 + 48))
    {
      v14 = *(a1 + 40);
      v15 = *(v14 + 1048);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __53__SBLoginAppContainerViewController__setupLoginScene__block_invoke_62;
      v22[3] = &unk_2783BE728;
      v22[4] = v14;
      [v15 updateSettingsWithTransitionBlock:v22];
    }
  }

  else
  {
    v16 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SBLoginAppContainerViewController__setupLoginScene__block_invoke_2;
    block[3] = &unk_2783A92D8;
    v17 = v5;
    v18 = *(a1 + 40);
    v20 = v17;
    v21 = v18;
    dispatch_after(v16, MEMORY[0x277D85CD0], block);
  }
}

id __53__SBLoginAppContainerViewController__setupLoginScene__block_invoke_62(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75188];
  v4 = a2;
  v5 = [v3 transitionContext];
  [v4 setInterfaceOrientation:{objc_msgSend(*(a1 + 32), "interfaceOrientation")}];

  return v5;
}

uint64_t __53__SBLoginAppContainerViewController__setupLoginScene__block_invoke_2(uint64_t a1)
{
  v2 = SBLogWorkspace();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __53__SBLoginAppContainerViewController__setupLoginScene__block_invoke_2_cold_1(a1, v2);
  }

  return [*(a1 + 40) _setupLoginScene];
}

- (void)sceneInvalidated
{
  v3 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SBLoginAppContainerViewController_sceneInvalidated__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

uint64_t __53__SBLoginAppContainerViewController_sceneInvalidated__block_invoke(uint64_t a1)
{
  v2 = SBLogWorkspace();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __53__SBLoginAppContainerViewController_sceneInvalidated__block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) _setupLoginScene];
}

- (void)sceneUpdatedIdleTimerMode:(int64_t)a3
{
  if (self->_idleTimerMode != a3)
  {
    self->_idleTimerMode = a3;
    v5 = [(SBLockScreenViewControllerBase *)self idleTimerCoordinator];
    if (v5)
    {
      v8 = v5;
      v6 = [(SBLoginAppContainerViewController *)self coordinatorRequestedIdleTimerBehavior:v5];
      v7 = [v8 idleTimerProvider:self didProposeBehavior:v6 forReason:@"SBLoginAppContainerViewControllerSceneUpdatedIdleTimerMode"];

      v5 = v8;
    }
  }
}

- (void)sceneUpdatedStatusBarUserName:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 statusBarStateAggregator];
  [v5 setUserNameOverride:v4];
}

- (void)sceneUpdatedRotationMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"LoginAppDisablingRotation"];
    deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
    self->_deferOrientationUpdatesAssertion = v4;
  }

  else
  {
    [(BSInvalidatable *)self->_deferOrientationUpdatesAssertion invalidate];
    deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
    self->_deferOrientationUpdatesAssertion = 0;
  }
}

- (void)sceneUpdatedWallpaperMode:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(SBWallpaperController *)self->_wallpaperController _updateWallpaperForLocations:1 options:0 wallpaperMode:v3 withCompletion:0];
}

- (void)_handleBacklightFadeEnded
{
  v3 = +[SBBacklightController sharedInstance];
  v4 = [v3 screenIsOn];

  if ((v4 & 1) == 0)
  {

    [(SBLoginAppContainerViewController *)self _cleanupBatteryChargingViewWithAnimationDuration:0.0];
  }
}

- (void)_addBatteryChargingView
{
  batteryChargingViewController = self->_batteryChargingViewController;
  if (!batteryChargingViewController)
  {
    v4 = [[SBLockScreenBatteryChargingViewController alloc] initForDisplayOfBattery:1];
    v5 = self->_batteryChargingViewController;
    self->_batteryChargingViewController = v4;

    [(SBLockScreenBatteryChargingViewController *)self->_batteryChargingViewController setDelegate:self];
    batteryChargingViewController = self->_batteryChargingViewController;
  }

  [(SBLoginAppContainerViewController *)self addChildViewController:batteryChargingViewController];
  v6 = [(SBLoginAppContainerViewController *)self loginContainerView];
  v7 = [(SBLockScreenBatteryChargingViewController *)self->_batteryChargingViewController chargingView];
  [v6 setBatteryChargingView:v7];

  v8 = self->_batteryChargingViewController;

  [(SBLockScreenBatteryChargingViewController *)v8 didMoveToParentViewController:self];
}

- (void)_removeBatteryChargingView
{
  [(SBLockScreenBatteryChargingViewController *)self->_batteryChargingViewController willMoveToParentViewController:0];
  v3 = [(SBLoginAppContainerViewController *)self loginContainerView];
  [v3 setBatteryChargingView:0];

  [(SBLockScreenBatteryChargingViewController *)self->_batteryChargingViewController removeFromParentViewController];
  batteryChargingViewController = self->_batteryChargingViewController;
  self->_batteryChargingViewController = 0;
}

- (void)_updateBatteryChargingViewAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = +[SBUIController sharedInstanceIfExists];
  v6 = [v5 isConnectedToExternalChargingSource];

  if (v6)
  {
    if (v3)
    {
      v7 = 0.25;
    }

    else
    {
      v7 = 0.0;
    }

    [(SBLoginAppContainerViewController *)self _addBatteryChargingView];
    [(SBLockScreenBatteryChargingViewController *)self->_batteryChargingViewController showChargeLevelWithBatteryVisible:1];
    v8 = [(SBLockScreenBatteryChargingViewController *)self->_batteryChargingViewController view];
    [v8 setAlpha:0.0];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__SBLoginAppContainerViewController__updateBatteryChargingViewAnimated___block_invoke;
    v10[3] = &unk_2783A8C18;
    v10[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__SBLoginAppContainerViewController__updateBatteryChargingViewAnimated___block_invoke_2;
    v9[3] = &unk_2783B3C38;
    *&v9[5] = v7;
    v9[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v9 completion:v7];
  }

  else if (self->_batteryChargingViewController)
  {

    [(SBLoginAppContainerViewController *)self _cleanupBatteryChargingViewWithAnimationDuration:0.0];
  }
}

uint64_t __72__SBLoginAppContainerViewController__updateBatteryChargingViewAnimated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__SBLoginAppContainerViewController__updateBatteryChargingViewAnimated___block_invoke_3;
  v3[3] = &unk_2783A8C18;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v1];
}

void __72__SBLoginAppContainerViewController__updateBatteryChargingViewAnimated___block_invoke_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1056) view];
  [v1 setAlpha:1.0];
}

- (void)_fadeViewsForChargingViewVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBLoginAppContainerViewController *)self loginContainerView];
  [v4 setContentHidden:v3 forRequester:@"ChargingView"];
}

- (void)_cleanupBatteryChargingViewWithAnimationDuration:(double)a3
{
  [(SBLockScreenBatteryChargingViewController *)self->_batteryChargingViewController prepareForDismissalWithAnimation:0];
  [(SBLoginAppContainerViewController *)self _removeBatteryChargingView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __86__SBLoginAppContainerViewController__cleanupBatteryChargingViewWithAnimationDuration___block_invoke;
  v5[3] = &unk_2783A8C18;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:a3];
}

- (void)_showOrHideThermalTrapUIAnimated:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.5;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [SBApp lockOutController];
  v6 = [v5 isThermallyBlocked];

  thermalWarningViewController = self->_thermalWarningViewController;
  if (v6)
  {
    if (!thermalWarningViewController)
    {
      v8 = [[SBLockScreenTemperatureWarningViewController alloc] initWithNibName:0 bundle:0];
      v9 = self->_thermalWarningViewController;
      self->_thermalWarningViewController = v8;

      v10 = [(SBLockOverlayViewController *)self->_thermalWarningViewController overlayView];
      v11 = [SBLoginAppContainerOverlayWrapperView alloc];
      v12 = [(SBLoginAppContainerOverlayWrapperView *)v11 initWithFrame:v10 overlayView:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [(SBLoginAppContainerViewController *)self addChildViewController:self->_thermalWarningViewController];
      v13 = [(SBLoginAppContainerViewController *)self loginContainerView];
      [v13 setThermalWarningView:v12];

      [(SBLockScreenTemperatureWarningViewController *)self->_thermalWarningViewController didMoveToParentViewController:self];
      [(SBLoginAppContainerOverlayWrapperView *)v12 setAlpha:0.0];
      v14 = MEMORY[0x277D75D18];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __70__SBLoginAppContainerViewController__showOrHideThermalTrapUIAnimated___block_invoke;
      v18[3] = &unk_2783A92D8;
      v19 = v12;
      v20 = self;
      v15 = v12;
      [v14 animateWithDuration:v18 animations:v4];
    }
  }

  else if (thermalWarningViewController)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__SBLoginAppContainerViewController__showOrHideThermalTrapUIAnimated___block_invoke_2;
    v17[3] = &unk_2783A8C18;
    v17[4] = self;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SBLoginAppContainerViewController__showOrHideThermalTrapUIAnimated___block_invoke_3;
    v16[3] = &unk_2783A9398;
    v16[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v17 animations:v16 completion:v4];
  }
}

void __70__SBLoginAppContainerViewController__showOrHideThermalTrapUIAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 40) loginContainerView];
  [v2 setContentHidden:1 forRequester:@"ThermalTrap"];
}

void __70__SBLoginAppContainerViewController__showOrHideThermalTrapUIAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) loginContainerView];
  v3 = [v2 thermalWarningView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) loginContainerView];
  [v4 setContentHidden:0 forRequester:@"ThermalTrap"];
}

void __70__SBLoginAppContainerViewController__showOrHideThermalTrapUIAnimated___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 1064) willMoveToParentViewController:0];
  v2 = [*(a1 + 32) loginContainerView];
  [v2 setThermalWarningView:0];

  [*(*(a1 + 32) + 1064) removeFromParentViewController];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1064);
  *(v3 + 1064) = 0;
}

- (void)wallpaperLegibilitySettingsDidChange:(id)a3 forVariant:(int64_t)a4
{
  if (!a4)
  {
    [(SBLoginAppContainerViewController *)self _updateLegibility];
  }
}

- (void)wallpaperDidChangeForVariant:(int64_t)a3
{
  if (!a3)
  {
    [(SBLoginAppContainerViewController *)self _updateLegibility];
  }
}

- (void)_updateLegibility
{
  v4 = [(SBLoginAppContainerViewController *)self loginContainerView];
  v2 = +[SBWallpaperController sharedInstance];
  v3 = [v2 legibilitySettingsForVariant:0];
  [v4 setLegibilitySettings:v3];
}

- (void)pluginManager:(id)a3 willUnloadPlugin:(id)a4
{
  v12 = a3;
  v6 = a4;
  pluginWrapperViewController = self->_pluginWrapperViewController;
  if (pluginWrapperViewController)
  {
    v8 = [(SBLoginAppContainerPluginWrapperViewController *)pluginWrapperViewController plugin];

    if (v8 == v6)
    {
      v9 = MEMORY[0x277D67958];
      v10 = [v6 name];
      v11 = [v9 contextWithName:v10];
      [(SBLoginAppContainerViewController *)self disableLockScreenPluginWithContext:v11];
    }
  }
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)a3
{
  v4 = a3;
  idleTimerMode = self->_idleTimerMode;
  if (idleTimerMode == 1)
  {
    v6 = +[SBIdleTimerBehavior lockScreenBehavior];
  }

  else
  {
    if (idleTimerMode)
    {
      goto LABEL_6;
    }

    v6 = +[SBIdleTimerBehavior autoLockBehavior];
  }

  self = v6;
LABEL_6:

  return self;
}

void __53__SBLoginAppContainerViewController__setupLoginScene__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to activate login scene, retrying; error = %@", &v3, 0xCu);
}

@end