@interface SBAppContainerViewController
- (CGSize)contentReferenceSize;
- (SBAppContainerViewController)initWithDisplayIdentity:(id)identity;
- (SBDeviceApplicationSceneStatusBarStateObserver)statusBarDelegate;
- (id)_applicationSceneViewControllerForSceneHandle:(id)handle;
- (id)_deviceApplicationSceneHandle;
- (id)_newDisplayLayoutElementForEntity:(id)entity;
- (void)_clearState;
- (void)_updateDisplayLayoutElementForSceneExistence:(id)existence;
- (void)applicationSceneViewController:(id)controller didUpdateStatusBarSettings:(id)settings;
- (void)configureWithWorkspaceEntity:(id)entity forLayoutElement:(id)element layoutState:(id)state referenceFrame:(CGRect)frame;
- (void)didEndTransitionToVisible:(BOOL)visible;
- (void)invalidate;
- (void)prepareForReuse;
- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state;
- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)sceneWithIdentifier:(id)identifier didChangeSceneInterfaceOrientationTo:(int64_t)to;
- (void)setContentWrapperInterfaceOrientation:(int64_t)orientation;
- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion;
- (void)setStatusBarDelegate:(id)delegate;
@end

@implementation SBAppContainerViewController

- (SBAppContainerViewController)initWithDisplayIdentity:(id)identity
{
  v4.receiver = self;
  v4.super_class = SBAppContainerViewController;
  result = [(SBLayoutElementViewController *)&v4 initWithDisplayIdentity:identity];
  if (result)
  {
    result->_requestedDisplayMode = 4;
  }

  return result;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = SBAppContainerViewController;
  [(SBLayoutElementViewController *)&v3 invalidate];
  [(SBAppContainerViewController *)self _clearState];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SBAppContainerViewController;
  [(SBLayoutElementViewController *)&v3 prepareForReuse];
  [(SBAppContainerViewController *)self _clearState];
}

- (void)configureWithWorkspaceEntity:(id)entity forLayoutElement:(id)element layoutState:(id)state referenceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  entityCopy = entity;
  elementCopy = element;
  stateCopy = state;
  if (([entityCopy isApplicationSceneEntity] & 1) == 0)
  {
    [SBAppContainerViewController configureWithWorkspaceEntity:a2 forLayoutElement:self layoutState:? referenceFrame:?];
  }

  applicationSceneEntity = [entityCopy applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];
  applicationSceneHandle = self->_applicationSceneHandle;
  if (applicationSceneHandle)
  {
    [(SBApplicationSceneHandle *)applicationSceneHandle removeObserver:self];
    v19 = self->_applicationSceneHandle;
    self->_applicationSceneHandle = 0;
  }

  v51.receiver = self;
  v51.super_class = SBAppContainerViewController;
  [(SBLayoutElementViewController *)&v51 configureWithWorkspaceEntity:applicationSceneEntity forLayoutElement:elementCopy layoutState:stateCopy referenceFrame:x, y, width, height, applicationSceneEntity];
  objc_storeStrong(&self->_applicationSceneHandle, sceneHandle);
  [(SBApplicationSceneHandle *)self->_applicationSceneHandle addObserver:self];
  [(SBDeviceApplicationSceneStatusBarStateProxy *)self->_statusBarObserverProxy invalidate];
  v20 = [_SBAppContainerStatusBarStateProxy alloc];
  _deviceApplicationSceneHandle = [(SBAppContainerViewController *)self _deviceApplicationSceneHandle];
  v22 = [(SBDeviceApplicationSceneStatusBarStateProxy *)v20 initWithDeviceApplicationSceneHandle:_deviceApplicationSceneHandle];
  statusBarObserverProxy = self->_statusBarObserverProxy;
  self->_statusBarObserverProxy = v22;

  [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self->_statusBarObserverProxy addStatusBarObserver:self];
  [(_SBAppContainerStatusBarStateProxy *)self->_statusBarObserverProxy setAppVCBackReference:self];
  v24 = self->_statusBarObserverProxy;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarDelegate);
  [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)v24 addStatusBarObserver:WeakRetained];

  [(SBAppContainerViewController *)self loadViewIfNeeded];
  v26 = self->_applicationSceneViewController;
  v27 = [(SBAppContainerViewController *)self _applicationSceneViewControllerForSceneHandle:self->_applicationSceneHandle];
  applicationSceneViewController = self->_applicationSceneViewController;
  self->_applicationSceneViewController = v27;

  v29 = self->_applicationSceneViewController;
  if (v26 != v29)
  {
    [(SBAppContainerViewController *)self bs_removeChildViewController:v26];
  }

  v30 = self->_applicationSceneViewController;
  v31 = [(SBApplicationSceneHandle *)self->_applicationSceneHandle newScenePlaceholderContentContextWithActivationSettings:entityCopy];
  [(SBApplicationSceneViewControlling *)v30 setPlaceholderContentContext:v31];

  -[SBApplicationSceneViewControlling setContentReferenceSize:withContentOrientation:andContainerOrientation:](self->_applicationSceneViewController, "setContentReferenceSize:withContentOrientation:andContainerOrientation:", [stateCopy interfaceOrientationForLayoutElement:elementCopy], objc_msgSend(stateCopy, "interfaceOrientation"), width, height);
  [(SBApplicationSceneViewControlling *)self->_applicationSceneViewController setApplicationSceneStatusBarDelegate:self];
  [(SBAppContainerViewController *)self _configureViewController:self->_applicationSceneViewController];
  if (v26 != v29)
  {
    v32 = self->_applicationSceneViewController;
    _contentContainerView = [(SBLayoutElementViewController *)self _contentContainerView];
    [(SBAppContainerViewController *)self bs_addChildViewController:v32 withSuperview:_contentContainerView];

    view = [(SBApplicationSceneViewControlling *)self->_applicationSceneViewController view];
    _contentContainerView2 = [(SBLayoutElementViewController *)self _contentContainerView];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    leftAnchor = [view leftAnchor];
    leftAnchor2 = [_contentContainerView2 leftAnchor];
    v38 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v38 setActive:1];

    rightAnchor = [view rightAnchor];
    rightAnchor2 = [_contentContainerView2 rightAnchor];
    v41 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [v41 setActive:1];

    topAnchor = [view topAnchor];
    topAnchor2 = [_contentContainerView2 topAnchor];
    v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v44 setActive:1];

    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [_contentContainerView2 bottomAnchor];
    v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v47 setActive:1];

    [(SBAppContainerViewController *)self setDisplayMode:[(SBAppContainerViewController *)self displayMode] animationFactory:0 completion:0];
  }

  sceneIfExists = [sceneHandle sceneIfExists];
  if (sceneIfExists)
  {
    [(SBAppContainerViewController *)self _updateDisplayLayoutElementForSceneExistence:sceneIfExists];
  }
}

- (void)didEndTransitionToVisible:(BOOL)visible
{
  v7.receiver = self;
  v7.super_class = SBAppContainerViewController;
  [(SBLayoutElementViewController *)&v7 didEndTransitionToVisible:?];
  applicationSceneViewController = self->_applicationSceneViewController;
  if (applicationSceneViewController)
  {
    if (!visible)
    {
      v6 = [(SBApplicationSceneHandle *)self->_applicationSceneHandle newScenePlaceholderContentContextWithActivationSettings:0];
      [(SBApplicationSceneViewControlling *)applicationSceneViewController setPlaceholderContentContext:v6];
    }
  }
}

- (id)_newDisplayLayoutElementForEntity:(id)entity
{
  entityCopy = entity;
  applicationSceneEntity = [entityCopy applicationSceneEntity];
  uniqueIdentifier = [applicationSceneEntity uniqueIdentifier];

  v6 = [objc_alloc(MEMORY[0x277D66A50]) initWithIdentifier:uniqueIdentifier];
  applicationSceneEntity2 = [entityCopy applicationSceneEntity];

  application = [applicationSceneEntity2 application];
  bundleIdentifier = [application bundleIdentifier];
  [v6 setBundleIdentifier:bundleIdentifier];

  [v6 setUIApplicationElement:1];
  return v6;
}

- (id)_applicationSceneViewControllerForSceneHandle:(id)handle
{
  newSceneViewController = [handle newSceneViewController];

  return newSceneViewController;
}

- (CGSize)contentReferenceSize
{
  [(SBApplicationSceneViewControlling *)self->_applicationSceneViewController contentReferenceSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentWrapperInterfaceOrientation:(int64_t)orientation
{
  v5.receiver = self;
  v5.super_class = SBAppContainerViewController;
  [(SBLayoutElementViewController *)&v5 setContentWrapperInterfaceOrientation:?];
  [(SBAppContainerViewController *)self containerContentWrapperInterfaceOrientationChangedTo:orientation];
}

- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  v9 = completionCopy;
  self->_requestedDisplayMode = mode;
  applicationSceneViewController = self->_applicationSceneViewController;
  if (applicationSceneViewController)
  {
    [(SBApplicationSceneViewControlling *)applicationSceneViewController setDisplayMode:[(SBAppContainerViewController *)self displayMode] animationFactory:factoryCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  handleCopy = handle;
  diffCopy = diff;
  settingsCopy = settings;
  sceneSettingsDiffInspector = self->_sceneSettingsDiffInspector;
  if (!sceneSettingsDiffInspector)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75178]);
    v13 = self->_sceneSettingsDiffInspector;
    self->_sceneSettingsDiffInspector = v12;

    objc_initWeak(&location, self);
    v14 = self->_sceneSettingsDiffInspector;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __87__SBAppContainerViewController_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke;
    v18[3] = &unk_2783AC8A0;
    objc_copyWeak(&v19, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v14 observeIsForegroundWithBlock:v18];
    v15 = self->_sceneSettingsDiffInspector;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __87__SBAppContainerViewController_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2;
    v16[3] = &unk_2783AC8A0;
    objc_copyWeak(&v17, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v15 observeUnderLockWithBlock:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    sceneSettingsDiffInspector = self->_sceneSettingsDiffInspector;
  }

  [diffCopy evaluateWithInspector:sceneSettingsDiffInspector context:0];
}

void __87__SBAppContainerViewController_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateDisplayLayoutElementVisibility];
    WeakRetained = v2;
  }
}

void __87__SBAppContainerViewController_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateDisplayLayoutElementVisibility];
    WeakRetained = v2;
  }
}

- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__SBAppContainerViewController_sceneHandle_didUpdateContentState___block_invoke;
  v4[3] = &unk_2783A8BC8;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __66__SBAppContainerViewController_sceneHandle_didUpdateContentState___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 2)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 1120);
    v4 = [*(v2 + 1104) newScenePlaceholderContentContextWithActivationSettings:0];
    [v3 setPlaceholderContentContext:v4];
  }
}

- (void)setStatusBarDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarDelegate);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_statusBarDelegate, obj);
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self->_statusBarObserverProxy removeStatusBarObserver:WeakRetained];
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self->_statusBarObserverProxy addStatusBarObserver:obj];
  }
}

- (id)_deviceApplicationSceneHandle
{
  v3 = objc_opt_class();
  applicationSceneHandle = self->_applicationSceneHandle;

  return SBSafeCast(v3, applicationSceneHandle);
}

- (void)sceneWithIdentifier:(id)identifier didChangeSceneInterfaceOrientationTo:(int64_t)to
{
  identifierCopy = identifier;
  v5 = self->_statusBarObserverProxy;
  v6 = v5;
  if (v5)
  {
    statusBarOrientation = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)v5 statusBarOrientation];
    if (statusBarOrientation)
    {
      v8 = statusBarOrientation;
      _deviceApplicationSceneHandle = [(SBAppContainerViewController *)self _deviceApplicationSceneHandle];
      wantsDeviceOrientationEventsEnabled = [_deviceApplicationSceneHandle wantsDeviceOrientationEventsEnabled];

      if (wantsDeviceOrientationEventsEnabled)
      {
        [(SBAppContainerViewController *)self setContentWrapperInterfaceOrientation:v8];
      }
    }
  }
}

- (void)applicationSceneViewController:(id)controller didUpdateStatusBarSettings:(id)settings
{
  settingsCopy = settings;
  v6 = SBLogAppStatusBars();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(SBAppContainerViewController *)self applicationSceneViewController:settingsCopy didUpdateStatusBarSettings:v6];
  }

  [(SBDeviceApplicationSceneStatusBarStateProxy *)self->_statusBarObserverProxy invalidateStatusBarSettings];
}

- (void)_clearState
{
  self->_requestedDisplayMode = 4;
  sceneSettingsDiffInspector = self->_sceneSettingsDiffInspector;
  if (sceneSettingsDiffInspector)
  {
    [(UIApplicationSceneSettingsDiffInspector *)sceneSettingsDiffInspector removeAllObservers];
    v4 = self->_sceneSettingsDiffInspector;
    self->_sceneSettingsDiffInspector = 0;
  }

  if (self->_applicationSceneViewController)
  {
    [(SBAppContainerViewController *)self bs_removeChildViewController:?];
    applicationSceneViewController = self->_applicationSceneViewController;
    self->_applicationSceneViewController = 0;
  }

  applicationSceneHandle = self->_applicationSceneHandle;
  if (applicationSceneHandle)
  {
    [(SBApplicationSceneHandle *)applicationSceneHandle removeObserver:self];
    v7 = self->_applicationSceneHandle;
    self->_applicationSceneHandle = 0;
  }

  statusBarObserverProxy = self->_statusBarObserverProxy;
  if (statusBarObserverProxy)
  {
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)statusBarObserverProxy removeStatusBarObserver:self];
    [(SBDeviceApplicationSceneStatusBarStateProxy *)self->_statusBarObserverProxy invalidate];
    v9 = self->_statusBarObserverProxy;
    self->_statusBarObserverProxy = 0;
  }
}

- (void)_updateDisplayLayoutElementForSceneExistence:(id)existence
{
  if ([existence isValid])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __77__SBAppContainerViewController__updateDisplayLayoutElementForSceneExistence___block_invoke;
    v4[3] = &unk_2783B66A8;
    v4[4] = self;
    [(SBLayoutElementViewController *)self _updateDisplayLayoutElementWithBuilder:v4];
  }
}

void __77__SBAppContainerViewController__updateDisplayLayoutElementForSceneExistence___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sceneHandle];
  [v3 setHasKeyboardFocus:{objc_msgSend(v4, "isPairedWithExternalSceneWithIdentifier:", *MEMORY[0x277D22AC8])}];
}

- (SBDeviceApplicationSceneStatusBarStateObserver)statusBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarDelegate);

  return WeakRetained;
}

- (void)configureWithWorkspaceEntity:(uint64_t)a1 forLayoutElement:(uint64_t)a2 layoutState:referenceFrame:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAppContainerViewController.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"[workspaceEntity isApplicationSceneEntity]"}];
}

- (void)applicationSceneViewController:(NSObject *)a3 didUpdateStatusBarSettings:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 1104) sceneIdentifier];
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = objc_opt_class();
  v11 = 2112;
  v12 = a2;
  v6 = v10;
  _os_log_debug_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_DEBUG, "(%@) %@ applying settings: %@", &v7, 0x20u);
}

@end