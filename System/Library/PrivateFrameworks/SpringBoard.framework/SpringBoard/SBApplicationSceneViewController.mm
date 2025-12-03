@interface SBApplicationSceneViewController
- (SBApplicationSceneViewController)initWithSceneHandle:(id)handle;
- (SBApplicationSceneViewControllingStatusBarDelegate)applicationSceneStatusBarDelegate;
- (double)_applicationStatusBarAlpha;
- (double)statusBarAlpha;
- (int64_t)overrideStatusBarStyle;
- (void)_setOverrideStatusBarSettings:(id)settings;
@end

@implementation SBApplicationSceneViewController

- (int64_t)overrideStatusBarStyle
{
  overrideStatusBarSettings = self->_overrideStatusBarSettings;
  if (overrideStatusBarSettings)
  {
    return [(SBStatusBarSettings *)overrideStatusBarSettings style];
  }

  else
  {
    return -1;
  }
}

- (SBApplicationSceneViewControllingStatusBarDelegate)applicationSceneStatusBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationSceneStatusBarDelegate);

  return WeakRetained;
}

- (double)statusBarAlpha
{
  alpha = [(SBStatusBarSettings *)self->_overrideStatusBarSettings alpha];

  if (alpha)
  {
    alpha2 = [(SBStatusBarSettings *)self->_overrideStatusBarSettings alpha];
    [alpha2 doubleValue];
    v6 = v5;

    return v6;
  }

  else
  {

    [(SBApplicationSceneViewController *)self _applicationStatusBarAlpha];
  }

  return result;
}

- (double)_applicationStatusBarAlpha
{
  sceneHandle = [(SBSceneViewController *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];

  if (sceneIfExists)
  {
    uiClientSettings = [sceneIfExists uiClientSettings];
    [uiClientSettings statusBarAlpha];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (SBApplicationSceneViewController)initWithSceneHandle:(id)handle
{
  handleCopy = handle;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBApplicationSceneViewController *)a2 initWithSceneHandle:handleCopy];
  }

  v8.receiver = self;
  v8.super_class = SBApplicationSceneViewController;
  v6 = [(SBSceneViewController *)&v8 initWithSceneHandle:handleCopy];

  return v6;
}

- (void)_setOverrideStatusBarSettings:(id)settings
{
  v19 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v5 = [(SBStatusBarSettings *)self->_overrideStatusBarSettings isEqual:settingsCopy];
  v6 = SBLogAppStatusBars();
  applicationSceneStatusBarDelegate = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SBApplicationSceneViewController *)self _setOverrideStatusBarSettings:settingsCopy, applicationSceneStatusBarDelegate];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      sceneHandle = [(SBSceneViewController *)self sceneHandle];
      sceneIdentifier = [sceneHandle sceneIdentifier];
      v13 = 138412802;
      v14 = sceneIdentifier;
      v15 = 2112;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = settingsCopy;
      v10 = v16;
      _os_log_impl(&dword_21ED4E000, applicationSceneStatusBarDelegate, OS_LOG_TYPE_INFO, "(%@) %@ Override status bar settings did change: %{public}@", &v13, 0x20u);
    }

    v11 = [settingsCopy copy];
    overrideStatusBarSettings = self->_overrideStatusBarSettings;
    self->_overrideStatusBarSettings = v11;

    applicationSceneStatusBarDelegate = [(SBApplicationSceneViewController *)self applicationSceneStatusBarDelegate];
    [applicationSceneStatusBarDelegate applicationSceneViewController:self didUpdateStatusBarSettings:settingsCopy];
  }
}

- (void)initWithSceneHandle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBApplicationSceneViewController.m" lineNumber:25 description:{@"ApplicationSceneHandle must be of type SBApplicationSceneHandle, but was: %@", a3}];
}

- (void)_setOverrideStatusBarSettings:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a1 sceneHandle];
  v6 = [v5 sceneIdentifier];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = objc_opt_class();
  v12 = 2114;
  v13 = a2;
  v7 = v11;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "(%@) %@ Override status bar settings did not change: %{public}@", &v8, 0x20u);
}

@end