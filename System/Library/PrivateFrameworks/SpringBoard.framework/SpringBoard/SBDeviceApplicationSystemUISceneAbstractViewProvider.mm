@interface SBDeviceApplicationSystemUISceneAbstractViewProvider
- (BOOL)_isUnderUILock;
- (BOOL)isVisibleOnScreen;
- (NSString)description;
- (id)acquireSystemUIScenePresentingAssertion;
- (id)dismissScene:(id)scene;
- (id)parentSceneIdentityToken;
- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block;
- (id)presentingDelegate;
- (void)_acquireSystemUIScenePresentingAssertionIfNecessary;
- (void)_activateIfPossible;
- (void)_deactivateIfPossible;
- (void)_invalidateSystemUIScenePresentingAssertion;
- (void)_windowManagementStyleDidChange:(id)change;
- (void)dealloc;
- (void)noteDisplayModeChange:(int64_t)change;
- (void)scene:(id)scene didChangeTraitsParticipantDelegate:(id)delegate;
@end

@implementation SBDeviceApplicationSystemUISceneAbstractViewProvider

- (void)_activateIfPossible
{
  if (self->_systemSceneUIViewController)
  {
    self->_isActive = 1;
    v4.receiver = self;
    v4.super_class = SBDeviceApplicationSystemUISceneAbstractViewProvider;
    [(SBDeviceApplicationSceneOverlayViewProvider *)&v4 _activateIfPossible];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];
    [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self _acquireSystemUIScenePresentingAssertionIfNecessary];
  }
}

- (void)_acquireSystemUIScenePresentingAssertionIfNecessary
{
  if (!self->_systemUIScenePresenterAssertion)
  {
    acquireSystemUIScenePresentingAssertion = [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self acquireSystemUIScenePresentingAssertion];
    systemUIScenePresenterAssertion = self->_systemUIScenePresenterAssertion;
    self->_systemUIScenePresenterAssertion = acquireSystemUIScenePresentingAssertion;
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self _invalidateSystemUIScenePresentingAssertion];
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSystemUISceneAbstractViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v4 dealloc];
}

- (id)acquireSystemUIScenePresentingAssertion
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSystemUISceneAbstractViewProvider.m" lineNumber:46 description:{@"For subclasses to override, [%@] cannot be used on its own", v6}];

  return 0;
}

- (void)_deactivateIfPossible
{
  if (self->_isActive)
  {
    v7 = v2;
    v8 = v3;
    self->_isActive = 0;
    systemSceneUIViewController = self->_systemSceneUIViewController;
    self->_systemSceneUIViewController = 0;

    v6.receiver = self;
    v6.super_class = SBDeviceApplicationSystemUISceneAbstractViewProvider;
    [(SBDeviceApplicationSceneOverlayViewProvider *)&v6 _deactivateIfPossible];
  }
}

- (void)noteDisplayModeChange:(int64_t)change
{
  self->_displayMode = change;
  WeakRetained = objc_loadWeakRetained(&self->_systemUIScenePresentingDelegate);
  [WeakRetained scenePresenterVisibilityDidChange:self];
}

- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block
{
  sceneCopy = scene;
  v7 = (*(block + 2))(block);
  v8 = [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self viewControllerWithBuilder:v7];

  if (!self->_isActive || v8 != self->_systemSceneUIViewController)
  {
    objc_storeWeak(&self->_presentedScene, sceneCopy);
    objc_storeStrong(&self->_systemSceneUIViewController, v8);
    [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self _activateIfPossible];
    systemSceneUIViewController = self->_systemSceneUIViewController;
    v10 = objc_opt_class();
    v11 = systemSceneUIViewController;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    [(UIViewController *)v13 setContainerParticipant:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_systemUIScenePresentingDelegate);
  if (objc_opt_respondsToSelector())
  {
    sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    sceneIfExists = [sceneHandle sceneIfExists];
    settings = [sceneIfExists settings];
    displayConfiguration = [settings displayConfiguration];

    [WeakRetained scenePresenter:self updateDisplayConfiguration:displayConfiguration forScene:sceneCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    sceneHandle2 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    wantsEnhancedWindowingEnabled = [sceneHandle2 wantsEnhancedWindowingEnabled];

    [WeakRetained scenePresenter:self updateEnhancedWindowingModeEnabled:wantsEnhancedWindowingEnabled forScene:sceneCopy];
  }

  return 0;
}

- (id)dismissScene:(id)scene
{
  objc_storeWeak(&self->_presentedScene, 0);
  [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self _deactivateIfPossible];
  return 0;
}

- (id)parentSceneIdentityToken
{
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  identityToken = [sceneIfExists identityToken];

  return identityToken;
}

- (id)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemUIScenePresentingDelegate);

  return WeakRetained;
}

- (BOOL)isVisibleOnScreen
{
  delegate = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v4 = [delegate overlayViewProviderIsHostedInSecureWindow:self];

  return ((v4 & 1) != 0 || ![(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self _isUnderUILock]) && self->_displayMode == 4;
}

- (BOOL)_isUnderUILock
{
  delegate = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v4 = [delegate windowSceneForOverlayViewProvider:self];
  uiLockStateProvider = [v4 uiLockStateProvider];
  isUILocked = [uiLockStateProvider isUILocked];

  return isUILocked;
}

- (void)_invalidateSystemUIScenePresentingAssertion
{
  [(BSInvalidatable *)self->_systemUIScenePresenterAssertion invalidate];
  systemUIScenePresenterAssertion = self->_systemUIScenePresenterAssertion;
  self->_systemUIScenePresenterAssertion = 0;
}

- (void)scene:(id)scene didChangeTraitsParticipantDelegate:(id)delegate
{
  systemSceneUIViewController = self->_systemSceneUIViewController;
  v5 = objc_opt_class();
  v6 = systemSceneUIViewController;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(UIViewController *)v8 setContainerParticipant:0];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = SBDeviceApplicationSystemUISceneAbstractViewProvider;
  v4 = [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)&v9 description];
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];
  v7 = [v3 stringWithFormat:@"%@ - %@", v4, sceneIdentifier];

  return v7;
}

- (void)_windowManagementStyleDidChange:(id)change
{
  changeCopy = change;
  v5 = objc_opt_class();
  object = [changeCopy object];

  v11 = SBSafeCast(v5, object);

  windowManagementContext = [v11 windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  WeakRetained = objc_loadWeakRetained(&self->_systemUIScenePresentingDelegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_loadWeakRetained(&self->_presentedScene);
    [WeakRetained scenePresenter:self updateEnhancedWindowingModeEnabled:isChamoisOrFlexibleWindowing forScene:v10];
  }
}

@end