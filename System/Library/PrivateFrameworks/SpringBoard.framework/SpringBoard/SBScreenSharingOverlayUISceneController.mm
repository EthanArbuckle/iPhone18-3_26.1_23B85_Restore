@interface SBScreenSharingOverlayUISceneController
+ (BOOL)_isEssoniteEnabled;
+ (id)_setupInfo;
- (CGAffineTransform)_convertTransformToReferenceSpace:(SEL)space;
- (NSValue)_clientPreferredAdditionalRootLayerTransform;
- (id)_rootSceneWindow;
- (id)_systemGestureWindow;
- (id)displayConfiguration;
- (void)_setCanSetAdditionalRootLayerTransform:(BOOL)transform;
- (void)_setClientPreferredAdditionalRootLayerTransform:(id)transform;
- (void)_updateAdditionalRootLayerTransformsIfNeeded;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scenePresenter:(id)presenter didPresentScene:(id)scene;
- (void)scenePresenter:(id)presenter willDismissScene:(id)scene;
- (void)setDefaultPresenter:(id)presenter;
@end

@implementation SBScreenSharingOverlayUISceneController

+ (BOOL)_isEssoniteEnabled
{
  if (_isEssoniteEnabled_onceToken != -1)
  {
    +[SBScreenSharingOverlayUISceneController _isEssoniteEnabled];
  }

  return _isEssoniteEnabled__isEssoniteEnabled;
}

void __61__SBScreenSharingOverlayUISceneController__isEssoniteEnabled__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D6EED8]);
  _isEssoniteEnabled__isEssoniteEnabled = [v0 screenSharingRemoteControlEnabled];
}

+ (id)_setupInfo
{
  v9[7] = *MEMORY[0x277D85DE8];
  v8[0] = @"class";
  v9[0] = objc_opt_class();
  v8[1] = @"enabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "_isEssoniteEnabled")}];
  v9[1] = v3;
  v9[2] = @"SBTraitsParticipantRoleSystemUIScene";
  v8[2] = @"traitsRole";
  v8[3] = @"hostLevel";
  v9[3] = &unk_28336F5F0;
  v8[4] = @"jobLabel";
  v4 = objc_opt_new();
  uiSceneSessionRole = [v4 uiSceneSessionRole];
  v9[4] = uiSceneSessionRole;
  v9[5] = &unk_283371A38;
  v8[5] = @"presentationStyle";
  v8[6] = @"vendingStrategy";
  v9[6] = &unk_283371A38;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:7];

  return v6;
}

- (void)scenePresenter:(id)presenter willDismissScene:(id)scene
{
  sceneCopy = scene;
  [(SBScreenSharingOverlayUISceneController *)self _setCanSetAdditionalRootLayerTransform:0];
  [sceneCopy removeObserver:self];
}

- (void)scenePresenter:(id)presenter didPresentScene:(id)scene
{
  sceneCopy = scene;
  clientSettings = [sceneCopy clientSettings];
  preferredSystemRootTransform = [clientSettings preferredSystemRootTransform];
  [(SBScreenSharingOverlayUISceneController *)self _setClientPreferredAdditionalRootLayerTransform:preferredSystemRootTransform];

  [(SBScreenSharingOverlayUISceneController *)self _setCanSetAdditionalRootLayerTransform:1];
  [sceneCopy addObserver:self];
}

- (void)setDefaultPresenter:(id)presenter
{
  presenterCopy = presenter;
  v5.receiver = self;
  v5.super_class = SBScreenSharingOverlayUISceneController;
  [(SBSystemUISceneController *)&v5 setDefaultPresenter:presenterCopy];
  if (objc_opt_respondsToSelector())
  {
    [presenterCopy setPresentingDelegate:self];
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  clientSettings = [scene clientSettings];
  preferredSystemRootTransform = [clientSettings preferredSystemRootTransform];
  [(SBScreenSharingOverlayUISceneController *)self _setClientPreferredAdditionalRootLayerTransform:preferredSystemRootTransform];
}

- (id)_systemGestureWindow
{
  _systemGestureManager = [(SBScreenSharingOverlayUISceneController *)self _systemGestureManager];
  windowForSystemGestures = [_systemGestureManager windowForSystemGestures];

  return windowForSystemGestures;
}

- (id)_rootSceneWindow
{
  v2 = +[SBMainDisplayRootWindowScenePresentationBinder sharedInstance];
  rootWindow = [v2 rootWindow];

  return rootWindow;
}

- (NSValue)_clientPreferredAdditionalRootLayerTransform
{
  clientPreferredAdditionalRootLayerTransform = self->__clientPreferredAdditionalRootLayerTransform;
  if (clientPreferredAdditionalRootLayerTransform)
  {
    v3 = clientPreferredAdditionalRootLayerTransform;
  }

  else
  {
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v6[0] = *MEMORY[0x277CBF2C0];
    v6[1] = v4;
    v6[2] = *(MEMORY[0x277CBF2C0] + 32);
    v3 = [MEMORY[0x277CCAE60] valueWithCGAffineTransform:v6];
  }

  return v3;
}

- (void)_setClientPreferredAdditionalRootLayerTransform:(id)transform
{
  transformCopy = transform;
  if (![(NSValue *)self->__clientPreferredAdditionalRootLayerTransform isEqualToValue:?])
  {
    objc_storeStrong(&self->__clientPreferredAdditionalRootLayerTransform, transform);
    if ([(SBScreenSharingOverlayUISceneController *)self _canSetAdditionalRootLayerTransform])
    {
      [(SBScreenSharingOverlayUISceneController *)self _updateAdditionalRootLayerTransformsIfNeeded];
    }
  }
}

- (void)_setCanSetAdditionalRootLayerTransform:(BOOL)transform
{
  if (self->__canSetAdditionalRootLayerTransform != transform)
  {
    self->__canSetAdditionalRootLayerTransform = transform;
    [(SBScreenSharingOverlayUISceneController *)self _updateAdditionalRootLayerTransformsIfNeeded];
  }
}

- (id)displayConfiguration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__103;
  v9 = __Block_byref_object_dispose__103;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SBScreenSharingOverlayUISceneController_displayConfiguration__block_invoke;
  v4[3] = &unk_2783ACCF0;
  v4[4] = &v5;
  [(SBSystemUISceneController *)self enumerateScenesWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __63__SBScreenSharingOverlayUISceneController_displayConfiguration__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 settings];
  v6 = [v5 sb_displayConfigurationForSceneManagers];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

- (CGAffineTransform)_convertTransformToReferenceSpace:(SEL)space
{
  displayConfiguration = [(SBScreenSharingOverlayUISceneController *)self displayConfiguration];
  [displayConfiguration pointScale];
  v9 = v8;

  displayConfiguration2 = [(SBScreenSharingOverlayUISceneController *)self displayConfiguration];
  [displayConfiguration2 nativeOrientation];
  v12 = v11;

  v13 = 6.28318531 - v12;
  memset(&v18.c, 0, 32);
  if (v12 == 0.0)
  {
    v13 = 0.0;
  }

  *&v18.a = 0uLL;
  CGAffineTransformMakeRotation(&v16, v13);
  UIIntegralTransform();
  result = CGAffineTransformScale(&v18, &v17, 1.0 / v9, 1.0 / v9);
  *&a4->tx = vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, a4->ty), *&v18.a, a4->tx));
  v15 = *&a4->c;
  *&retstr->a = *&a4->a;
  *&retstr->c = v15;
  *&retstr->tx = *&a4->tx;
  return result;
}

- (void)_updateAdditionalRootLayerTransformsIfNeeded
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v3;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  if ([(SBScreenSharingOverlayUISceneController *)self _canSetAdditionalRootLayerTransform])
  {
    _clientPreferredAdditionalRootLayerTransform = [(SBScreenSharingOverlayUISceneController *)self _clientPreferredAdditionalRootLayerTransform];
    v5 = _clientPreferredAdditionalRootLayerTransform;
    if (_clientPreferredAdditionalRootLayerTransform)
    {
      [_clientPreferredAdditionalRootLayerTransform CGAffineTransformValue];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    v21 = v20;
  }

  v20 = v21;
  IsIdentity = CGAffineTransformIsIdentity(&v20);
  _requireSystemGesturesShouldIgnoreHIDEdgeFlagsAssertion = [(SBScreenSharingOverlayUISceneController *)self _requireSystemGesturesShouldIgnoreHIDEdgeFlagsAssertion];
  v8 = _requireSystemGesturesShouldIgnoreHIDEdgeFlagsAssertion;
  if (IsIdentity)
  {
    [_requireSystemGesturesShouldIgnoreHIDEdgeFlagsAssertion invalidate];

    [(SBScreenSharingOverlayUISceneController *)self _setRequireSystemGesturesShouldIgnoreHIDEdgeFlagsAssertion:0];
  }

  else
  {

    if (!v8)
    {
      _systemGestureManager = [(SBScreenSharingOverlayUISceneController *)self _systemGestureManager];
      v10 = [_systemGestureManager acquireSystemEdgeGesturesIgnoreHIDEdgeFlagsForReason:@"Screen Sharing Overlay UI requests it"];

      [(SBScreenSharingOverlayUISceneController *)self _setRequireSystemGesturesShouldIgnoreHIDEdgeFlagsAssertion:v10];
    }
  }

  v11 = SBFIsShellSceneKitAvailable();
  _systemGestureWindow = [(SBScreenSharingOverlayUISceneController *)self _systemGestureWindow];
  v20 = v21;
  [_systemGestureWindow _setAdditionalRootLayerAffineTransform:&v20];

  if (v11)
  {
    displayProfileManager = [SBApp displayProfileManager];
    v19 = v21;
    [(SBScreenSharingOverlayUISceneController *)self _convertTransformToReferenceSpace:&v19];
    displayConfiguration = [(SBScreenSharingOverlayUISceneController *)self displayConfiguration];
    [displayProfileManager setSystemRootTransform:&v20 forDisplayConfiguration:displayConfiguration];

    v15 = +[SBTouchRegionManager sharedInstance];
    v20 = v21;
    [v15 setRootWindowTransform:&v20];
  }

  else
  {
    _rootSceneWindow = [(SBScreenSharingOverlayUISceneController *)self _rootSceneWindow];
    v20 = v21;
    [_rootSceneWindow _setAdditionalRootLayerAffineTransform:&v20];

    v17 = +[SBTouchRegionManager sharedInstance];
    v20 = v21;
    [v17 setRootWindowTransform:&v20];
  }

  mousePointerManager = [SBApp mousePointerManager];
  v20 = v21;
  [mousePointerManager setRootWindowTransformForEmbeddedDisplay:&v20];
}

@end