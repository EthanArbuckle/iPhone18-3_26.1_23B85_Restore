@interface SBDeviceApplicationScreenTimeLockoutViewProvider
- (SBDeviceApplicationScreenTimeLockoutViewProvider)initWithSceneHandle:(id)a3 delegate:(id)a4;
- (id)_newBlockingViewControllerWithBundleIdentifier:(id)a3;
- (id)_realOverlayViewController;
- (void)_activateIfPossible;
- (void)_deactivateIfPossibleRespectingAppBlockedState:(BOOL)a3;
- (void)_handleInstalledAppsChanged:(id)a3;
- (void)dealloc;
- (void)hideContentWithAnimation:(BOOL)a3 completionHandler:(id)a4;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)showContentWithAnimation:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation SBDeviceApplicationScreenTimeLockoutViewProvider

- (void)_activateIfPossible
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v4 = [v3 application];

  v5 = [v4 info];
  if ([v5 isBlockedForScreenTimeExpiration])
  {
    v6 = [SBApp privacyPreflightController];
    v7 = [v5 applicationIdentity];
    v8 = [v6 requiresPreflightForApplication:v7];

    if (v8)
    {
      v9 = SBLogScreenTime();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v4 bundleIdentifier];
        *buf = 138543362;
        v27 = v10;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "not activating overlay for %{public}@, exiting early because the app still requires privacy disclosure", buf, 0xCu);
      }

      self->_waitingForPrivacyPreflight = 1;
      v11 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
      [v11 addObserver:self];
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
          v17 = [v4 bundleIdentifier];
          *buf = 138543618;
          v27 = v17;
          v28 = 2048;
          v29 = [v5 screenTimePolicy];
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "had existing VC for app %{public}@, updating with new policy %ld", buf, 0x16u);
        }

        v18 = self->_blockingViewController;
        v19 = [v5 screenTimePolicy];
        v20 = [v5 bundleIdentifier];
        [(STBlockingViewController *)v18 updateAppearanceUsingPolicy:v19 forBundleIdentifier:v20];
      }

      else
      {
        if (v16)
        {
          v21 = [v4 bundleIdentifier];
          *buf = 138543362;
          v27 = v21;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "creating new blocking view controller for app %{public}@", buf, 0xCu);
        }

        v22 = [v4 bundleIdentifier];
        v23 = [(SBDeviceApplicationScreenTimeLockoutViewProvider *)self _newBlockingViewControllerWithBundleIdentifier:v22];
        v24 = self->_blockingViewController;
        self->_blockingViewController = v23;

        v20 = [MEMORY[0x277CCAB98] defaultCenter];
        [v20 addObserver:self selector:sel__blockingViewControllerDismissedItself name:*MEMORY[0x277D4BDB0] object:self->_blockingViewController];
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
      v13 = [v4 bundleIdentifier];
      *buf = 138543362;
      v27 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "attempted to activate overlay for %{public}@, exiting early because app is not blocked", buf, 0xCu);
    }
  }
}

- (SBDeviceApplicationScreenTimeLockoutViewProvider)initWithSceneHandle:(id)a3 delegate:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBDeviceApplicationScreenTimeLockoutViewProvider;
  v4 = [(SBDeviceApplicationSceneOverlayViewProvider *)&v7 initWithSceneHandle:a3 delegate:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel__handleInstalledAppsChanged_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:0];
  if (self->_blockingViewController)
  {
    [v3 removeObserver:self name:*MEMORY[0x277D4BDB0] object:?];
  }

  v4.receiver = self;
  v4.super_class = SBDeviceApplicationScreenTimeLockoutViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v4 dealloc];
}

- (void)_handleInstalledAppsChanged:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"SBInstalledApplicationsUpdatedBundleIDs"];

  if ([v5 count])
  {
    v6 = SBLogScreenTime();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "scene overlay got applicationsChanged: %{public}@", &v13, 0xCu);
    }

    v7 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    v8 = [v7 application];

    v9 = [v8 bundleIdentifier];
    v10 = [v8 info];
    v11 = [v10 isBlockedForScreenTimeExpiration];

    v12 = SBLogScreenTime();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138543618;
      v14 = v9;
      v15 = 1024;
      v16 = v11;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "app %{public}@ is now blocked for Downtime: %d", &v13, 0x12u);
    }

    if (([v5 containsObject:v9] & v11) == 1)
    {
      [(SBDeviceApplicationScreenTimeLockoutViewProvider *)self _activateIfPossible];
    }

    else if (self->_isActive && !(v11 & 1 | (([v5 containsObject:v9] & 1) == 0)))
    {
      [(SBDeviceApplicationScreenTimeLockoutViewProvider *)self _deactivateIfPossibleRespectingAppBlockedState:1];
    }
  }
}

- (void)showContentWithAnimation:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogScreenTime();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    v9 = [v8 application];
    v10 = [v9 bundleIdentifier];
    v11[0] = 67109378;
    v11[1] = v4;
    v12 = 2114;
    v13 = v10;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "showing content with animation: %d for app %{public}@", v11, 0x12u);
  }

  [(STBlockingViewController *)self->_blockingViewController showWithAnimation:v4 completionHandler:v6];
}

- (void)hideContentWithAnimation:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogScreenTime();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    v9 = [v8 application];
    v10 = [v9 bundleIdentifier];
    v11[0] = 67109378;
    v11[1] = v4;
    v12 = 2114;
    v13 = v10;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "hiding content with animation: %d for app %{public}@", v11, 0x12u);
  }

  [(STBlockingViewController *)self->_blockingViewController hideWithAnimation:v4 completionHandler:v6];
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  if (self->_waitingForPrivacyPreflight)
  {
    block[7] = v4;
    block[8] = v5;
    self->_waitingForPrivacyPreflight = 0;
    [a3 removeObserver:{self, a4}];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__SBDeviceApplicationScreenTimeLockoutViewProvider_sceneHandle_didCreateScene___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_deactivateIfPossibleRespectingAppBlockedState:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 application];
    v8 = [v7 info];
    v3 = [v8 isBlockedForScreenTimeExpiration];
  }

  if (self->_isActive && (v3 & 1) == 0 && self->_blockingViewController)
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
      v10 = [v6 application];
      v11 = [v10 bundleIdentifier];
      isActive = self->_isActive;
      blockingViewController = self->_blockingViewController;
      *buf = 138544130;
      v16 = v11;
      v17 = 1024;
      v18 = isActive;
      v19 = 1024;
      v20 = v3;
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

- (id)_newBlockingViewControllerWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x277D4BD90];
  v5 = a3;
  v6 = [v4 newTranslucentBlockingViewController];
  v7 = [MEMORY[0x277D4BD90] closeApplicationHandler];
  [v6 setOkButtonHandler:v7];

  v8 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v9 = [v8 application];
  v10 = [v9 info];

  [v6 updateAppearanceUsingPolicy:objc_msgSend(v10 forBundleIdentifier:{"screenTimePolicy"), v5}];
  return v6;
}

@end