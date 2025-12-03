@interface SBDeviceApplicationAppProtectionSceneOverlayViewProvider
- (SBDeviceApplicationAppProtectionSceneOverlayViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate;
- (id)_appProtectionAssistant;
- (void)_acquireKeyboardFocusPreventionAssertionIfNeeded;
- (void)_acquireVisibilityAssertionIfNeeded;
- (void)_activateIfPossible;
- (void)_deactivateIfPossible;
- (void)_invalidateKeyboardFocusPreventionAssertion;
- (void)_invalidateVisibilityAssertion;
- (void)appProtectionAssistantShouldShieldDidChange:(id)change;
- (void)dealloc;
- (void)hideContentWithAnimation:(BOOL)animation completionHandler:(id)handler;
- (void)invalidate;
- (void)sceneHandle:(id)handle didChangeEffectiveForegroundness:(BOOL)foregroundness;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle replacedWithSceneHandle:(id)sceneHandle;
- (void)showContentWithAnimation:(BOOL)animation completionHandler:(id)handler;
@end

@implementation SBDeviceApplicationAppProtectionSceneOverlayViewProvider

- (void)_activateIfPossible
{
  _appProtectionAssistant = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
  if ([_appProtectionAssistant shouldShield])
  {
    shieldViewController = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self shieldViewController];

    if (!shieldViewController)
    {
      _appProtectionAssistant2 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
      createShieldUIViewController = [_appProtectionAssistant2 createShieldUIViewController];
      [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setShieldViewController:createShieldUIViewController];

      v7.receiver = self;
      v7.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
      [(SBDeviceApplicationSceneOverlayViewProvider *)&v7 _activateIfPossible];
    }
  }

  else
  {
  }
}

- (id)_appProtectionAssistant
{
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  application = [sceneHandle application];
  v4 = [SBApplicationAppProtectionAssistant assistantForApplication:application];

  return v4;
}

- (void)_acquireVisibilityAssertionIfNeeded
{
  visibilityAssertion = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self visibilityAssertion];

  if (!visibilityAssertion)
  {
    _appProtectionAssistant = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
    sceneIdentifier = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self sceneIdentifier];
    v5 = sceneIdentifier;
    if (sceneIdentifier)
    {
      v6 = sceneIdentifier;
    }

    else
    {
      v6 = @"NULL scene";
    }

    v7 = [_appProtectionAssistant acquireVisibilityAssertionForReason:v6];
    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setVisibilityAssertion:v7];
  }
}

- (SBDeviceApplicationAppProtectionSceneOverlayViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate
{
  handleCopy = handle;
  v12.receiver = self;
  v12.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
  v7 = [(SBDeviceApplicationSceneOverlayViewProvider *)&v12 initWithSceneHandle:handleCopy delegate:delegate];
  v8 = v7;
  if (v7)
  {
    _appProtectionAssistant = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)v7 _appProtectionAssistant];
    [_appProtectionAssistant addObserver:v8];

    [handleCopy addObserver:v8];
    if ([handleCopy isEffectivelyForeground])
    {
      sceneIdentifier = [handleCopy sceneIdentifier];
      [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)v8 setSceneIdentifier:sceneIdentifier];

      [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)v8 _acquireVisibilityAssertionIfNeeded];
    }
  }

  return v8;
}

- (void)dealloc
{
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v3 dealloc];
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v5 invalidate];
  _appProtectionAssistant = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
  [_appProtectionAssistant removeObserver:self];

  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  [sceneHandle removeObserver:self];

  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _invalidateVisibilityAssertion];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _invalidateKeyboardFocusPreventionAssertion];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setDeallocating:1];
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  if ([handle isEffectivelyForeground])
  {

    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _acquireVisibilityAssertionIfNeeded];
  }
}

- (void)sceneHandle:(id)handle didChangeEffectiveForegroundness:(BOOL)foregroundness
{
  if (foregroundness)
  {
    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _acquireVisibilityAssertionIfNeeded];
  }

  else
  {
    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _invalidateVisibilityAssertion];
  }
}

- (void)sceneHandle:(id)handle replacedWithSceneHandle:(id)sceneHandle
{
  sceneHandleCopy = sceneHandle;
  [handle removeObserver:self];
  [sceneHandleCopy addObserver:self];
}

- (void)_deactivateIfPossible
{
  shieldViewController = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self shieldViewController];
  if (shieldViewController)
  {
    v4 = shieldViewController;
    if ([(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self isDeallocating])
    {
    }

    else
    {
      _appProtectionAssistant = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
      shouldShield = [_appProtectionAssistant shouldShield];

      if (shouldShield)
      {
        return;
      }
    }

    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setShieldViewController:0];
    v7.receiver = self;
    v7.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
    [(SBDeviceApplicationSceneOverlayViewProvider *)&v7 _deactivateIfPossible];
  }
}

- (void)showContentWithAnimation:(BOOL)animation completionHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v5 showContentWithAnimation:animation completionHandler:handler];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _acquireKeyboardFocusPreventionAssertionIfNeeded];
}

- (void)hideContentWithAnimation:(BOOL)animation completionHandler:(id)handler
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v5 hideContentWithAnimation:animation completionHandler:handler];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _invalidateKeyboardFocusPreventionAssertion];
}

- (void)appProtectionAssistantShouldShieldDidChange:(id)change
{
  _appProtectionAssistant = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
  shouldShield = [_appProtectionAssistant shouldShield];

  if (shouldShield)
  {

    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _activateIfPossible];
  }

  else
  {

    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _deactivateIfPossible];
  }
}

- (void)_invalidateVisibilityAssertion
{
  visibilityAssertion = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self visibilityAssertion];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setVisibilityAssertion:0];
  [visibilityAssertion invalidate];
}

- (void)_acquireKeyboardFocusPreventionAssertionIfNeeded
{
  keyboardFocusPreventionAssertion = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self keyboardFocusPreventionAssertion];

  if (!keyboardFocusPreventionAssertion)
  {
    v9 = +[SBWorkspace mainWorkspace];
    keyboardFocusController = [v9 keyboardFocusController];
    sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    sceneIfExists = [sceneHandle sceneIfExists];
    identityToken = [sceneIfExists identityToken];
    v8 = [keyboardFocusController preventFocusForSceneWithIdentityToken:identityToken reason:@"embedded app protection scene overlay preventing focus"];
    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setKeyboardFocusPreventionAssertion:v8];
  }
}

- (void)_invalidateKeyboardFocusPreventionAssertion
{
  keyboardFocusPreventionAssertion = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self keyboardFocusPreventionAssertion];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setKeyboardFocusPreventionAssertion:0];
  [keyboardFocusPreventionAssertion invalidate];
}

@end