@interface SBCoverSheetAnimator
- (SBCoverSheetAnimator)initWithCoverSheetWindow:(id)window sceneManager:(id)manager hostingWindow:(id)hostingWindow switcherWindow:(id)switcherWindow wallpaperController:(id)controller folderController:(id)folderController unlockSettings:(id)settings;
- (UIWindow)coverSheetWindow;
- (void)_prepareIconAnimatorIncludingLockScreen:(BOOL)screen;
- (void)_setWallpaperToLocked:(BOOL)locked duration:(double)duration;
- (void)_updateCoverSheetHosting;
- (void)animateToCoverSheet:(BOOL)sheet animated:(BOOL)animated withCompletion:(id)completion;
@end

@implementation SBCoverSheetAnimator

- (SBCoverSheetAnimator)initWithCoverSheetWindow:(id)window sceneManager:(id)manager hostingWindow:(id)hostingWindow switcherWindow:(id)switcherWindow wallpaperController:(id)controller folderController:(id)folderController unlockSettings:(id)settings
{
  obj = window;
  managerCopy = manager;
  hostingWindowCopy = hostingWindow;
  switcherWindowCopy = switcherWindow;
  controllerCopy = controller;
  folderControllerCopy = folderController;
  settingsCopy = settings;
  v25.receiver = self;
  v25.super_class = SBCoverSheetAnimator;
  v18 = [(SBCoverSheetAnimator *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_coverSheetWindow, obj);
    objc_storeStrong(&v19->_sceneManager, manager);
    objc_storeStrong(&v19->_hostingWindow, hostingWindow);
    objc_storeStrong(&v19->_switcherWindow, switcherWindow);
    objc_storeStrong(&v19->_wallpaperController, controller);
    objc_storeStrong(&v19->_folderController, folderController);
    objc_storeStrong(&v19->_unlockSettings, settings);
  }

  return v19;
}

- (void)animateToCoverSheet:(BOOL)sheet animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9 = 0.0;
  if (sheet)
  {
    v10 = 0;
    v11 = 0.0;
  }

  else
  {
    if (animatedCopy)
    {
      v12 = SBLogTelemetrySignposts();
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21ED4E000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SB_LOCKSCREEN_UNLOCK_ANIMATION_START", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
      }

      kdebug_trace();
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"SBCoverSheetWillAnimateDeactivation" object:self];
    }

    v14 = objc_alloc_init(SBLockToAppStatusBarAnimator);
    statusBarAnimator = self->_statusBarAnimator;
    self->_statusBarAnimator = v14;

    [(SBLockToAppStatusBarAnimator *)self->_statusBarAnimator animateStatusBarFromLockToHome];
    [(SBCoverSheetAnimator *)self _prepareIconAnimatorIncludingLockScreen:1];
    v11 = 1.0;
    [(SBIconZoomAnimator *)self->_iconAnimator setFraction:1.0];
    [MEMORY[0x277D75940] _synchronizeDrawing];
    v16 = MEMORY[0x277CF0BA0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke;
    v29[3] = &unk_2783A98A0;
    v29[4] = self;
    v30 = completionCopy;
    v17 = [v16 sentinelWithQueue:MEMORY[0x277D85CD0] signalCount:2 completion:v29];
    iconAnimator = self->_iconAnimator;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_2;
    v27[3] = &unk_2783A9398;
    v10 = v17;
    v28 = v10;
    [(SBIconZoomAnimator *)iconAnimator animateToFraction:v27 afterDelay:0.0 withCompletion:0.0];
  }

  if (animatedCopy)
  {
    v9 = 0.5;
  }

  v19 = MEMORY[0x277D75D18];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_3;
  v25[3] = &unk_2783AE7A0;
  v25[4] = self;
  sheetCopy = sheet;
  *&v25[5] = v11;
  *&v25[6] = v9;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_4;
  v22[3] = &unk_2783A9C98;
  v23 = v10;
  v24 = completionCopy;
  v20 = completionCopy;
  v21 = v10;
  [v19 animateWithDuration:v25 animations:v22 completion:v9];
}

uint64_t __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) cleanup];
  [*(*(a1 + 32) + 32) stopHosting];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setAlpha:*(a1 + 40)];
  [*(*(a1 + 32) + 56) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);

  return [v2 _setWallpaperToLocked:v3 duration:v4];
}

uint64_t __68__SBCoverSheetAnimator_animateToCoverSheet_animated_withCompletion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return [v2 signal];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateCoverSheetHosting
{
  coverSheetWindowHostWrapper = self->_coverSheetWindowHostWrapper;
  if (coverSheetWindowHostWrapper)
  {
    [(SBWindowSelfHostWrapper *)coverSheetWindowHostWrapper stopHosting];
  }

  coverSheetWindow = [(SBCoverSheetAnimator *)self coverSheetWindow];
  hostingWindow = self->_hostingWindow;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [coverSheetWindow sb_hostWrapperForUseInWindow:hostingWindow hostRequester:v6];
  v8 = self->_coverSheetWindowHostWrapper;
  self->_coverSheetWindowHostWrapper = v7;
}

- (void)_prepareIconAnimatorIncludingLockScreen:(BOOL)screen
{
  if (screen)
  {
    [(SBCoverSheetAnimator *)self _updateCoverSheetHosting];
    hostView = [(SBWindowSelfHostWrapper *)self->_coverSheetWindowHostWrapper hostView];
  }

  else
  {
    hostView = 0;
  }

  view = [(SBFolderController *)self->_folderController view];
  window = [view window];

  v6 = [[SBCenterAppIconZoomAnimator alloc] initWithFolderController:self->_folderController appView:hostView window:window];
  iconAnimator = self->_iconAnimator;
  self->_iconAnimator = &v6->super.super;

  [(SBIconZoomAnimator *)self->_iconAnimator setSettings:self->_unlockSettings];
  [(SBIconZoomAnimator *)self->_iconAnimator setDistantScale:0.26];
  [(SBIconZoomAnimator *)self->_iconAnimator prepare];
}

- (void)_setWallpaperToLocked:(BOOL)locked duration:(double)duration
{
  v6 = !locked;
  v8 = [MEMORY[0x277CF0D38] factoryWithDuration:?];
  v7 = [MEMORY[0x277CF0D38] factoryWithDuration:duration];
  [(SBWallpaperController *)self->_wallpaperController setActiveVariant:v6 withOutAnimationFactory:v7 inAnimationFactory:v8 completion:0];
}

- (UIWindow)coverSheetWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetWindow);

  return WeakRetained;
}

@end