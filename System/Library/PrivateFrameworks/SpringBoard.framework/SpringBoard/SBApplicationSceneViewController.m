@interface SBApplicationSceneViewController
- (SBApplicationSceneViewController)initWithSceneHandle:(id)a3;
- (SBApplicationSceneViewControllingStatusBarDelegate)applicationSceneStatusBarDelegate;
- (double)_applicationStatusBarAlpha;
- (double)statusBarAlpha;
- (int64_t)overrideStatusBarStyle;
- (void)_setOverrideStatusBarSettings:(id)a3;
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
  v3 = [(SBStatusBarSettings *)self->_overrideStatusBarSettings alpha];

  if (v3)
  {
    v4 = [(SBStatusBarSettings *)self->_overrideStatusBarSettings alpha];
    [v4 doubleValue];
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
  v2 = [(SBSceneViewController *)self sceneHandle];
  v3 = [v2 sceneIfExists];

  if (v3)
  {
    v4 = [v3 uiClientSettings];
    [v4 statusBarAlpha];
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (SBApplicationSceneViewController)initWithSceneHandle:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBApplicationSceneViewController *)a2 initWithSceneHandle:v5];
  }

  v8.receiver = self;
  v8.super_class = SBApplicationSceneViewController;
  v6 = [(SBSceneViewController *)&v8 initWithSceneHandle:v5];

  return v6;
}

- (void)_setOverrideStatusBarSettings:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBStatusBarSettings *)self->_overrideStatusBarSettings isEqual:v4];
  v6 = SBLogAppStatusBars();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SBApplicationSceneViewController *)self _setOverrideStatusBarSettings:v4, v7];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [(SBSceneViewController *)self sceneHandle];
      v9 = [v8 sceneIdentifier];
      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v4;
      v10 = v16;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "(%@) %@ Override status bar settings did change: %{public}@", &v13, 0x20u);
    }

    v11 = [v4 copy];
    overrideStatusBarSettings = self->_overrideStatusBarSettings;
    self->_overrideStatusBarSettings = v11;

    v7 = [(SBApplicationSceneViewController *)self applicationSceneStatusBarDelegate];
    [v7 applicationSceneViewController:self didUpdateStatusBarSettings:v4];
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