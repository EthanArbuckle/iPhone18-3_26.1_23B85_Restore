@interface SBDeviceApplicationScreenTimeLockoutViewProvider
- (SBDeviceApplicationScreenTimeLockoutViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate;
- (id)_newBlockingViewControllerWithBundleIdentifier:(id)identifier;
- (id)_realOverlayViewController;
- (void)_activateIfPossible;
- (void)_deactivateIfPossibleRespectingAppBlockedState:(BOOL)state;
- (void)_handleInstalledAppsChanged:(id)changed;
- (void)dealloc;
- (void)hideContentWithAnimation:(BOOL)animation completionHandler:(id)handler;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)showContentWithAnimation:(BOOL)animation completionHandler:(id)handler;
@end

@implementation SBDeviceApplicationScreenTimeLockoutViewProvider

- (void)_activateIfPossible
{
  v30 = *MEMORY[0x277D85DE8];
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  application = [sceneHandle application];

  info = [application info];
  if ([info isBlockedForScreenTimeExpiration])
  {
    privacyPreflightController = [SBApp privacyPreflightController];
    applicationIdentity = [info applicationIdentity];
    v8 = [privacyPreflightController requiresPreflightForApplication:applicationIdentity];

    if (v8)
    {
      v9 = SBLogScreenTime();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier = [application bundleIdentifier];
        *buf = 138543362;
        v27 = bundleIdentifier;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "not activating overlay for %{public}@, exiting early because the app still requires privacy disclosure", buf, 0xCu);
      }

      self->_waitingForPrivacyPreflight = 1;
      sceneHandle2 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
      [sceneHandle2 addObserver:self];
    }

    else
    {
      blockingViewController = self->_blockingViewController;
      v15 = SBLogScreenTime();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (blockingViewController)
      {
        if (v16)
        {
          bundleIdentifier2 = [application bundleIdentifier];
          *buf = 138543618;
          v27 = bundleIdentifier2;
          v28 = 2048;
          screenTimePolicy = [info screenTimePolicy];
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "had existing VC for app %{public}@, updating with new policy %ld", buf, 0x16u);
        }

        v18 = self->_blockingViewController;
        screenTimePolicy2 = [info screenTimePolicy];
        bundleIdentifier3 = [info bundleIdentifier];
        [(STBlockingViewController *)v18 updateAppearanceUsingPolicy:screenTimePolicy2 forBundleIdentifier:bundleIdentifier3];
      }

      else
      {
        if (v16)
        {
          bundleIdentifier4 = [application bundleIdentifier];
          *buf = 138543362;
          v27 = bundleIdentifier4;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "creating new blocking view controller for app %{public}@", buf, 0xCu);
        }

        bundleIdentifier5 = [application bundleIdentifier];
        v23 = [(SBDeviceApplicationScreenTimeLockoutViewProvider *)self _newBlockingViewControllerWithBundleIdentifier:bundleIdentifier5];
        v24 = self->_blockingViewController;
        self->_blockingViewController = v23;

        bundleIdentifier3 = [MEMORY[0x277CCAB98] defaultCenter];
        [bundleIdentifier3 addObserver:self selector:sel__blockingViewControllerDismissedItself name:*MEMORY[0x277D4BDB0] object:self->_blockingViewController];
      }

      self->_isActive = 1;
      v25.receiver = self;
      v25.super_class = SBDeviceApplicationScreenTimeLockoutViewProvider;
      [(SBDeviceApplicationSceneOverlayViewProvider *)&v25 _activateIfPossible];
    }
  }

  else
  {
    v12 = SBLogScreenTime();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier6 = [application bundleIdentifier];
      *buf = 138543362;
      v27 = bundleIdentifier6;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "attempted to activate overlay for %{public}@, exiting early because app is not blocked", buf, 0xCu);
    }
  }
}

- (SBDeviceApplicationScreenTimeLockoutViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = SBDeviceApplicationScreenTimeLockoutViewProvider;
  v4 = [(SBDeviceApplicationSceneOverlayViewProvider *)&v7 initWithSceneHandle:handle delegate:delegate];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__handleInstalledAppsChanged_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:0];
  if (self->_blockingViewController)
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x277D4BDB0] object:?];
  }

  v4.receiver = self;
  v4.super_class = SBDeviceApplicationScreenTimeLockoutViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v4 dealloc];
}

- (void)_handleInstalledAppsChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:@"SBInstalledApplicationsUpdatedBundleIDs"];

  if ([v5 count])
  {
    v6 = SBLogScreenTime();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "scene overlay got applicationsChanged: %{public}@", &v13, 0xCu);
    }

    sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    application = [sceneHandle application];

    bundleIdentifier = [application bundleIdentifier];
    info = [application info];
    isBlockedForScreenTimeExpiration = [info isBlockedForScreenTimeExpiration];

    v12 = SBLogScreenTime();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138543618;
      v14 = bundleIdentifier;
      v15 = 1024;
      v16 = isBlockedForScreenTimeExpiration;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "app %{public}@ is now blocked for Downtime: %d", &v13, 0x12u);
    }

    if (([v5 containsObject:bundleIdentifier] & isBlockedForScreenTimeExpiration) == 1)
    {
      [(SBDeviceApplicationScreenTimeLockoutViewProvider *)self _activateIfPossible];
    }

    else if (self->_isActive && !(isBlockedForScreenTimeExpiration & 1 | (([v5 containsObject:bundleIdentifier] & 1) == 0)))
    {
      [(SBDeviceApplicationScreenTimeLockoutViewProvider *)self _deactivateIfPossibleRespectingAppBlockedState:1];
    }
  }
}

- (void)showContentWithAnimation:(BOOL)animation completionHandler:(id)handler
{
  animationCopy = animation;
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = SBLogScreenTime();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    application = [sceneHandle application];
    bundleIdentifier = [application bundleIdentifier];
    v11[0] = 67109378;
    v11[1] = animationCopy;
    v12 = 2114;
    v13 = bundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "showing content with animation: %d for app %{public}@", v11, 0x12u);
  }

  [(STBlockingViewController *)self->_blockingViewController showWithAnimation:animationCopy completionHandler:handlerCopy];
}

- (void)hideContentWithAnimation:(BOOL)animation completionHandler:(id)handler
{
  animationCopy = animation;
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = SBLogScreenTime();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    application = [sceneHandle application];
    bundleIdentifier = [application bundleIdentifier];
    v11[0] = 67109378;
    v11[1] = animationCopy;
    v12 = 2114;
    v13 = bundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "hiding content with animation: %d for app %{public}@", v11, 0x12u);
  }

  [(STBlockingViewController *)self->_blockingViewController hideWithAnimation:animationCopy completionHandler:handlerCopy];
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  if (self->_waitingForPrivacyPreflight)
  {
    block[7] = v4;
    block[8] = v5;
    self->_waitingForPrivacyPreflight = 0;
    [handle removeObserver:{self, scene}];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__SBDeviceApplicationScreenTimeLockoutViewProvider_sceneHandle_didCreateScene___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_deactivateIfPossibleRespectingAppBlockedState:(BOOL)state
{
  stateCopy = state;
  v23 = *MEMORY[0x277D85DE8];
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v6 = sceneHandle;
  if (stateCopy)
  {
    application = [sceneHandle application];
    info = [application info];
    stateCopy = [info isBlockedForScreenTimeExpiration];
  }

  if (self->_isActive && (stateCopy & 1) == 0 && self->_blockingViewController)
  {
    self->_isActive = 0;
    v14.receiver = self;
    v14.super_class = SBDeviceApplicationScreenTimeLockoutViewProvider;
    [(SBDeviceApplicationSceneOverlayViewProvider *)&v14 _deactivateIfPossible];
  }

  else
  {
    v9 = SBLogScreenTime();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      application2 = [v6 application];
      bundleIdentifier = [application2 bundleIdentifier];
      isActive = self->_isActive;
      blockingViewController = self->_blockingViewController;
      *buf = 138544130;
      v16 = bundleIdentifier;
      v17 = 1024;
      v18 = isActive;
      v19 = 1024;
      v20 = stateCopy;
      v21 = 2114;
      v22 = blockingViewController;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "attempted to deactivate overlay for %{public}@, exiting early with state %d, %d, %{public}@", buf, 0x22u);
    }
  }
}

- (id)_realOverlayViewController
{
  if (self->_isActive)
  {
    return self->_blockingViewController;
  }

  else
  {
    return 0;
  }
}

- (id)_newBlockingViewControllerWithBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x277D4BD90];
  identifierCopy = identifier;
  newTranslucentBlockingViewController = [v4 newTranslucentBlockingViewController];
  closeApplicationHandler = [MEMORY[0x277D4BD90] closeApplicationHandler];
  [newTranslucentBlockingViewController setOkButtonHandler:closeApplicationHandler];

  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  application = [sceneHandle application];
  info = [application info];

  [newTranslucentBlockingViewController updateAppearanceUsingPolicy:objc_msgSend(info forBundleIdentifier:{"screenTimePolicy"), identifierCopy}];
  return newTranslucentBlockingViewController;
}

@end