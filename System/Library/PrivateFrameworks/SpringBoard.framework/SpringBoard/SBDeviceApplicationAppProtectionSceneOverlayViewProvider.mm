@interface SBDeviceApplicationAppProtectionSceneOverlayViewProvider
- (SBDeviceApplicationAppProtectionSceneOverlayViewProvider)initWithSceneHandle:(id)a3 delegate:(id)a4;
- (id)_appProtectionAssistant;
- (void)_acquireKeyboardFocusPreventionAssertionIfNeeded;
- (void)_acquireVisibilityAssertionIfNeeded;
- (void)_activateIfPossible;
- (void)_deactivateIfPossible;
- (void)_invalidateKeyboardFocusPreventionAssertion;
- (void)_invalidateVisibilityAssertion;
- (void)appProtectionAssistantShouldShieldDidChange:(id)a3;
- (void)dealloc;
- (void)hideContentWithAnimation:(BOOL)a3 completionHandler:(id)a4;
- (void)invalidate;
- (void)sceneHandle:(id)a3 didChangeEffectiveForegroundness:(BOOL)a4;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 replacedWithSceneHandle:(id)a4;
- (void)showContentWithAnimation:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation SBDeviceApplicationAppProtectionSceneOverlayViewProvider

- (void)_activateIfPossible
{
  v6 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
  if ([v6 shouldShield])
  {
    v3 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self shieldViewController];

    if (!v3)
    {
      v4 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
      v5 = [v4 createShieldUIViewController];
      [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setShieldViewController:v5];

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
  v2 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v3 = [v2 application];
  v4 = [SBApplicationAppProtectionAssistant assistantForApplication:v3];

  return v4;
}

- (void)_acquireVisibilityAssertionIfNeeded
{
  v3 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self visibilityAssertion];

  if (!v3)
  {
    v8 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
    v4 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self sceneIdentifier];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = @"NULL scene";
    }

    v7 = [v8 acquireVisibilityAssertionForReason:v6];
    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setVisibilityAssertion:v7];
  }
}

- (SBDeviceApplicationAppProtectionSceneOverlayViewProvider)initWithSceneHandle:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
  v7 = [(SBDeviceApplicationSceneOverlayViewProvider *)&v12 initWithSceneHandle:v6 delegate:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)v7 _appProtectionAssistant];
    [v9 addObserver:v8];

    [v6 addObserver:v8];
    if ([v6 isEffectivelyForeground])
    {
      v10 = [v6 sceneIdentifier];
      [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)v8 setSceneIdentifier:v10];

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
  v3 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
  [v3 removeObserver:self];

  v4 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  [v4 removeObserver:self];

  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _invalidateVisibilityAssertion];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _invalidateKeyboardFocusPreventionAssertion];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setDeallocating:1];
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  if ([a3 isEffectivelyForeground])
  {

    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _acquireVisibilityAssertionIfNeeded];
  }
}

- (void)sceneHandle:(id)a3 didChangeEffectiveForegroundness:(BOOL)a4
{
  if (a4)
  {
    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _acquireVisibilityAssertionIfNeeded];
  }

  else
  {
    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _invalidateVisibilityAssertion];
  }
}

- (void)sceneHandle:(id)a3 replacedWithSceneHandle:(id)a4
{
  v6 = a4;
  [a3 removeObserver:self];
  [v6 addObserver:self];
}

- (void)_deactivateIfPossible
{
  v3 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self shieldViewController];
  if (v3)
  {
    v4 = v3;
    if ([(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self isDeallocating])
    {
    }

    else
    {
      v5 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
      v6 = [v5 shouldShield];

      if (v6)
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

- (void)showContentWithAnimation:(BOOL)a3 completionHandler:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v5 showContentWithAnimation:a3 completionHandler:a4];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _acquireKeyboardFocusPreventionAssertionIfNeeded];
}

- (void)hideContentWithAnimation:(BOOL)a3 completionHandler:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBDeviceApplicationAppProtectionSceneOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v5 hideContentWithAnimation:a3 completionHandler:a4];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _invalidateKeyboardFocusPreventionAssertion];
}

- (void)appProtectionAssistantShouldShieldDidChange:(id)a3
{
  v4 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self _appProtectionAssistant];
  v5 = [v4 shouldShield];

  if (v5)
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
  v3 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self visibilityAssertion];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setVisibilityAssertion:0];
  [v3 invalidate];
}

- (void)_acquireKeyboardFocusPreventionAssertionIfNeeded
{
  v3 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self keyboardFocusPreventionAssertion];

  if (!v3)
  {
    v9 = +[SBWorkspace mainWorkspace];
    v4 = [v9 keyboardFocusController];
    v5 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    v6 = [v5 sceneIfExists];
    v7 = [v6 identityToken];
    v8 = [v4 preventFocusForSceneWithIdentityToken:v7 reason:@"embedded app protection scene overlay preventing focus"];
    [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setKeyboardFocusPreventionAssertion:v8];
  }
}

- (void)_invalidateKeyboardFocusPreventionAssertion
{
  v3 = [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self keyboardFocusPreventionAssertion];
  [(SBDeviceApplicationAppProtectionSceneOverlayViewProvider *)self setKeyboardFocusPreventionAssertion:0];
  [v3 invalidate];
}

@end