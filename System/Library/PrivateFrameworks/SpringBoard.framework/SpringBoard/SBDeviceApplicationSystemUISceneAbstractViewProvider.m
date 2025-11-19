@interface SBDeviceApplicationSystemUISceneAbstractViewProvider
- (BOOL)_isUnderUILock;
- (BOOL)isVisibleOnScreen;
- (NSString)description;
- (id)acquireSystemUIScenePresentingAssertion;
- (id)dismissScene:(id)a3;
- (id)parentSceneIdentityToken;
- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4;
- (id)presentingDelegate;
- (void)_acquireSystemUIScenePresentingAssertionIfNecessary;
- (void)_activateIfPossible;
- (void)_deactivateIfPossible;
- (void)_invalidateSystemUIScenePresentingAssertion;
- (void)_windowManagementStyleDidChange:(id)a3;
- (void)dealloc;
- (void)noteDisplayModeChange:(int64_t)a3;
- (void)scene:(id)a3 didChangeTraitsParticipantDelegate:(id)a4;
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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];
    [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self _acquireSystemUIScenePresentingAssertionIfNecessary];
  }
}

- (void)_acquireSystemUIScenePresentingAssertionIfNecessary
{
  if (!self->_systemUIScenePresenterAssertion)
  {
    v3 = [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self acquireSystemUIScenePresentingAssertion];
    systemUIScenePresenterAssertion = self->_systemUIScenePresenterAssertion;
    self->_systemUIScenePresenterAssertion = v3;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self _invalidateSystemUIScenePresentingAssertion];
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSystemUISceneAbstractViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v4 dealloc];
}

- (id)acquireSystemUIScenePresentingAssertion
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"SBDeviceApplicationSystemUISceneAbstractViewProvider.m" lineNumber:46 description:{@"For subclasses to override, [%@] cannot be used on its own", v6}];

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

- (void)noteDisplayModeChange:(int64_t)a3
{
  self->_displayMode = a3;
  WeakRetained = objc_loadWeakRetained(&self->_systemUIScenePresentingDelegate);
  [WeakRetained scenePresenterVisibilityDidChange:self];
}

- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4
{
  v6 = a3;
  v7 = (*(a4 + 2))(a4);
  v8 = [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self viewControllerWithBuilder:v7];

  if (!self->_isActive || v8 != self->_systemSceneUIViewController)
  {
    objc_storeWeak(&self->_presentedScene, v6);
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
    v15 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    v16 = [v15 sceneIfExists];
    v17 = [v16 settings];
    v18 = [v17 displayConfiguration];

    [WeakRetained scenePresenter:self updateDisplayConfiguration:v18 forScene:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    v20 = [v19 wantsEnhancedWindowingEnabled];

    [WeakRetained scenePresenter:self updateEnhancedWindowingModeEnabled:v20 forScene:v6];
  }

  return 0;
}

- (id)dismissScene:(id)a3
{
  objc_storeWeak(&self->_presentedScene, 0);
  [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self _deactivateIfPossible];
  return 0;
}

- (id)parentSceneIdentityToken
{
  v2 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v3 = [v2 sceneIfExists];
  v4 = [v3 identityToken];

  return v4;
}

- (id)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemUIScenePresentingDelegate);

  return WeakRetained;
}

- (BOOL)isVisibleOnScreen
{
  v3 = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v4 = [v3 overlayViewProviderIsHostedInSecureWindow:self];

  return ((v4 & 1) != 0 || ![(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self _isUnderUILock]) && self->_displayMode == 4;
}

- (BOOL)_isUnderUILock
{
  v3 = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v4 = [v3 windowSceneForOverlayViewProvider:self];
  v5 = [v4 uiLockStateProvider];
  v6 = [v5 isUILocked];

  return v6;
}

- (void)_invalidateSystemUIScenePresentingAssertion
{
  [(BSInvalidatable *)self->_systemUIScenePresenterAssertion invalidate];
  systemUIScenePresenterAssertion = self->_systemUIScenePresenterAssertion;
  self->_systemUIScenePresenterAssertion = 0;
}

- (void)scene:(id)a3 didChangeTraitsParticipantDelegate:(id)a4
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
  v5 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v6 = [v5 sceneIdentifier];
  v7 = [v3 stringWithFormat:@"%@ - %@", v4, v6];

  return v7;
}

- (void)_windowManagementStyleDidChange:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 object];

  v11 = SBSafeCast(v5, v6);

  v7 = [v11 windowManagementContext];
  v8 = [v7 isChamoisOrFlexibleWindowing];

  WeakRetained = objc_loadWeakRetained(&self->_systemUIScenePresentingDelegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_loadWeakRetained(&self->_presentedScene);
    [WeakRetained scenePresenter:self updateEnhancedWindowingModeEnabled:v8 forScene:v10];
  }
}

@end