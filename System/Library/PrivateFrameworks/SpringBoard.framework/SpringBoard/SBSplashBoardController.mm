@interface SBSplashBoardController
- (id)_splashBoardApplicationForBundleID:(id)d;
- (void)_checkForChangedLocale;
- (void)_handleLocaleDidChangeNotification;
- (void)_observeLocaleChanges;
- (void)configureForLocaleChanges;
- (void)dealloc;
@end

@implementation SBSplashBoardController

- (void)dealloc
{
  if (self->_isObservingAppLanguageChanges)
  {
    [MEMORY[0x277D218D0] unsubscribeFromAppLanguageChanges];
  }

  v3.receiver = self;
  v3.super_class = SBSplashBoardController;
  [(XBApplicationController *)&v3 dealloc];
}

- (void)configureForLocaleChanges
{
  [(SBSplashBoardController *)self _observeLocaleChanges];
  v3 = +[SBSetupManager sharedInstance];
  isInSetupMode = [v3 isInSetupMode];

  if (isInSetupMode)
  {
    v5 = XBLogFileManifest();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SBSplashBoardController *)v5 configureForLocaleChanges];
    }
  }

  else
  {

    [(SBSplashBoardController *)self _checkForChangedLocale];
  }
}

- (void)_checkForChangedLocale
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "checking if locale has changed: %{public}@ to %{public}@", &v3, 0x16u);
}

- (void)_handleLocaleDidChangeNotification
{
  v3 = +[SBSetupManager sharedInstance];
  isInSetupMode = [v3 isInSetupMode];

  if (isInSetupMode)
  {

    [(SBSplashBoardController *)self _checkForChangedLocale];
  }
}

- (id)_splashBoardApplicationForBundleID:(id)d
{
  dCopy = d;
  applicationProvider = [(XBApplicationController *)self applicationProvider];
  allSplashBoardApplications = [applicationProvider allSplashBoardApplications];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__SBSplashBoardController__splashBoardApplicationForBundleID___block_invoke;
  v10[3] = &unk_2783B6EF0;
  v11 = dCopy;
  v7 = dCopy;
  v8 = [allSplashBoardApplications bs_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __62__SBSplashBoardController__splashBoardApplicationForBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_observeLocaleChanges
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSplashBoardController.m" lineNumber:86 description:@"configureForLocaleChanges can only be called once"];
}

void __48__SBSplashBoardController__observeLocaleChanges__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _splashBoardApplicationForBundleID:v3];
  v5 = XBLogFileManifest();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v10 = v3;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "locale changed for %{public}@; purging generated launch images. appInfo: %{public}@", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    [v7 removeCachedLaunchImagesForApplications:v6 forgettingApps:0];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "informed locale changed for %{public}@, but not a splashboard app so we're skipping", buf, 0xCu);
  }
}

@end