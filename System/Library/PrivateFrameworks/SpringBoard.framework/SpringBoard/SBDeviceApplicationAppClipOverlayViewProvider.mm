@interface SBDeviceApplicationAppClipOverlayViewProvider
- (SBDeviceApplicationAppClipOverlayViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate;
- (void)_activateIfPossible;
- (void)_deactivateIfPossible;
- (void)_updateOverlaySceneActivationState;
- (void)dealloc;
@end

@implementation SBDeviceApplicationAppClipOverlayViewProvider

- (void)_activateIfPossible
{
  if (!self->_appClipViewController)
  {
    sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    application = [sceneHandle application];
    info = [application info];
    isAppClip = [info isAppClip];

    if (isAppClip)
    {
      bundleIdentifier = [application bundleIdentifier];
      sceneIdentifier = [sceneHandle sceneIdentifier];
      v9 = [SBAppClipOverlayViewController alloc];
      appClipOverlayCoordinator = [SBApp appClipOverlayCoordinator];
      v11 = [(SBAppClipOverlayViewController *)v9 initWithCoordinator:appClipOverlayCoordinator bundleIdentifier:bundleIdentifier sceneIdentifier:sceneIdentifier];
      appClipViewController = self->_appClipViewController;
      self->_appClipViewController = v11;

      [(SBAppClipOverlayViewController *)self->_appClipViewController setDisplayedOverPlaceholder:0 animated:0];
      [(SBDeviceApplicationAppClipOverlayViewProvider *)self _updateOverlaySceneActivationState];
      v13.receiver = self;
      v13.super_class = SBDeviceApplicationAppClipOverlayViewProvider;
      [(SBDeviceApplicationSceneOverlayViewProvider *)&v13 _activateIfPossible];
    }
  }
}

- (void)_updateOverlaySceneActivationState
{
  if (self->_appClipViewController)
  {
    sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    sceneIfExists = [sceneHandle sceneIfExists];
    v4 = sceneIfExists;
    if (sceneIfExists)
    {
      settings = [sceneIfExists settings];
      isForeground = [settings isForeground];

      settings2 = [v4 settings];
      if ([settings2 isUISubclass])
      {
        v8 = ([settings2 deactivationReasons] & 0xFFFFFFFFFFFFFEFFLL) != 0;
      }

      else
      {
        v8 = 0;
      }

      if (isForeground)
      {
        v9 = v8;
      }

      else
      {
        v9 = 2;
      }

      [(SBAppClipOverlayViewController *)self->_appClipViewController setSceneActivationState:v9 animated:1];
    }
  }
}

- (SBDeviceApplicationAppClipOverlayViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate
{
  handleCopy = handle;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = SBDeviceApplicationAppClipOverlayViewProvider;
  v8 = [(SBDeviceApplicationSceneOverlayViewProvider *)&v16 initWithSceneHandle:handleCopy delegate:delegateCopy];
  if (v8)
  {
    [handleCopy addObserver:v8];
    v9 = objc_alloc_init(MEMORY[0x277D75178]);
    sceneSettingsDiffInspector = v8->_sceneSettingsDiffInspector;
    v8->_sceneSettingsDiffInspector = v9;

    objc_initWeak(&location, v8);
    v11 = v8->_sceneSettingsDiffInspector;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__SBDeviceApplicationAppClipOverlayViewProvider_initWithSceneHandle_delegate___block_invoke;
    v13[3] = &unk_2783AC8A0;
    objc_copyWeak(&v14, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v11 observeDeactivationReasonsWithBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __78__SBDeviceApplicationAppClipOverlayViewProvider_initWithSceneHandle_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateOverlaySceneActivationState];
}

- (void)dealloc
{
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  [sceneHandle removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBDeviceApplicationAppClipOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v4 dealloc];
}

- (void)_deactivateIfPossible
{
  appClipViewController = self->_appClipViewController;
  if (appClipViewController)
  {
    self->_appClipViewController = 0;
  }

  v4.receiver = self;
  v4.super_class = SBDeviceApplicationAppClipOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v4 _deactivateIfPossible];
}

@end