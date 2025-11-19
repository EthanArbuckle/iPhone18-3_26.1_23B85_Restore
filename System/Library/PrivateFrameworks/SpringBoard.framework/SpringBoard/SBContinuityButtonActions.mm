@interface SBContinuityButtonActions
- (BOOL)_processHomeButtonInApp;
- (BOOL)_processHomeButtonInBannerManager;
- (BOOL)_processHomeButtonInCommandTabUI;
- (BOOL)_processHomeButtonInLibraryViewController;
- (BOOL)_processHomeButtonInSwitcherController;
- (BOOL)_processHomeButtonInSystemApertureController;
- (SBContinuityButtonActions)initWithWindowScene:(id)a3 debugName:(id)a4;
- (SBWindowScene)windowScene;
- (void)_requeueHomeButtonRequest;
- (void)invalidate;
- (void)performControlCenterButtonAction;
- (void)performHomeButtonAction;
- (void)performSpotlightButtonAction;
- (void)performSwitcherButtonAction;
@end

@implementation SBContinuityButtonActions

- (SBContinuityButtonActions)initWithWindowScene:(id)a3 debugName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SBContinuityButtonActions;
  v8 = [(SBContinuityButtonActions *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_windowScene, v6);
    v10 = [v7 copy];
    debugName = v9->_debugName;
    v9->_debugName = v10;

    v12 = +[SBDefaults localDefaults];
    v13 = [v12 controlCenterDefaults];
    controlCenterDefaults = v9->_controlCenterDefaults;
    v9->_controlCenterDefaults = v13;
  }

  return v9;
}

- (void)invalidate
{
  v4 = [MEMORY[0x277D0AB20] sharedInstance];
  v3 = [(SBContinuityButtonActions *)self _menuButtonEventName];
  [v4 cancelEventsWithName:v3];
}

- (void)performHomeButtonAction
{
  if (![(SBContinuityButtonActions *)self _processHomeButtonInSystemApertureController]&& ![(SBContinuityButtonActions *)self _processHomeButtonInBannerManager]&& ![(SBContinuityButtonActions *)self _processHomeButtonInCommandTabUI]&& ![(SBContinuityButtonActions *)self _processHomeButtonInLibraryViewController]&& ![(SBContinuityButtonActions *)self _processHomeButtonInSwitcherController]&& ![(SBContinuityButtonActions *)self _processHomeButtonInApp])
  {

    [(SBContinuityButtonActions *)self _requeueHomeButtonRequest];
  }
}

- (void)performSwitcherButtonAction
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v2 = [WeakRetained switcherController];
  [v2 toggleMainSwitcherWithSource:20 animated:1];
}

- (void)performSpotlightButtonAction
{
  if ([(SBControlCenterDefaults *)self->_controlCenterDefaults hijackSpotlightButtonActionForPrototyping])
  {

    [(SBContinuityButtonActions *)self performControlCenterButtonAction];
  }

  else
  {
    v3 = SBApp;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    [v3 toggleSearchOnWindowScene:WeakRetained fromBreadcrumbSource:0 withWillBeginHandler:0 completionHandler:0];
  }
}

- (void)performControlCenterButtonAction
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained controlCenterController];

  if ([v3 isPresented])
  {
    [v3 dismissAnimated:1];
  }

  else
  {
    [v3 presentAnimated:1];
  }
}

- (BOOL)_processHomeButtonInSystemApertureController
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained systemApertureController];

  v4 = [v3 handleHomeButtonPress];
  if (v4)
  {
    v5 = SBLogContinuityDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "System aperture controller handled the home button event", v7, 2u);
    }
  }

  return v4;
}

- (BOOL)_processHomeButtonInBannerManager
{
  v3 = [(SBContinuityButtonActions *)self windowScene];
  v4 = +[SBWorkspace mainWorkspace];
  v5 = [v4 transientOverlayPresentationManager];
  v6 = [v5 transientOverlayPresenterForWindowScene:v3];

  v7 = [SBApp bannerManager];
  v8 = [v7 bannerWindowInWindowScene:v3];
  [v8 windowLevel];
  if ([v6 hasPresentationAboveWindowLevel:?])
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v10 = [v7 handleHomeButtonPressInWindowScene:WeakRetained];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Banner manager handled the home button event", v14, 2u);
  }

  v12 = 1;
LABEL_8:

  return v12;
}

- (BOOL)_processHomeButtonInCommandTabUI
{
  v2 = [(SBContinuityButtonActions *)self windowScene];
  v3 = [v2 commandTabController];
  v4 = [v3 isVisible];
  if (v4)
  {
    [v3 dismiss];
    v5 = SBLogContinuityDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Dismissing command-tab UI", v7, 2u);
    }
  }

  return v4;
}

- (BOOL)_processHomeButtonInLibraryViewController
{
  v2 = [(SBContinuityButtonActions *)self windowScene];
  v3 = [v2 modalLibraryController];
  v4 = [v2 layoutStateProvider];
  v5 = [v4 layoutState];
  v6 = [v5 unlockedEnvironmentMode];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2 && [v3 isPresentingLibraryInForeground])
  {
    v7 = [v3 libraryViewController];
    [v7 popPresentationState];

    v8 = SBLogContinuityDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Library view controller handled the home button event", v11, 2u);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_processHomeButtonInSwitcherController
{
  v2 = [(SBContinuityButtonActions *)self windowScene];
  v3 = [v2 switcherController];
  v4 = [v3 handleHomeButtonPress];
  if (v4)
  {
    v5 = SBLogContinuityDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBMainSwitcherCoordinator handled the home button event", v7, 2u);
    }
  }

  return v4;
}

- (BOOL)_processHomeButtonInApp
{
  v2 = [(SBContinuityButtonActions *)self windowScene];
  v3 = +[SBUIController sharedInstance];
  v4 = [v3 handleHomeButtonSinglePressUpForWindowScene:v2 withSourceType:0];

  if (v4)
  {
    v5 = SBLogContinuityDisplay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "UIController handled the home button event", v7, 2u);
    }
  }

  return v4;
}

- (void)_requeueHomeButtonRequest
{
  v3 = SBLogContinuityDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "SBUIController is busy - queued the home button event for later processing", buf, 2u);
  }

  v4 = [(SBContinuityButtonActions *)self _menuButtonEventName];
  objc_initWeak(buf, self);
  v5 = MEMORY[0x277D0AB18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SBContinuityButtonActions__requeueHomeButtonRequest__block_invoke;
  v8[3] = &unk_2783A8C68;
  objc_copyWeak(&v9, buf);
  v6 = [v5 eventWithName:v4 handler:v8];
  v7 = [MEMORY[0x277D0AB20] sharedInstance];
  [v7 cancelEventsWithName:v4];
  [v7 executeOrAppendEvent:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __54__SBContinuityButtonActions__requeueHomeButtonRequest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performHomeButtonAction];
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end