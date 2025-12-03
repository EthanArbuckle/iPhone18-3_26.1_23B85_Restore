@interface SBFullScreenAlwaysLiveLiveContentOverlay
- (SBFullScreenAlwaysLiveLiveContentOverlay)initWithSceneHandle:(id)handle referenceSize:(CGSize)size containerOrientation:(int64_t)orientation;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (UIRectCornerRadii)cornerRadii;
- (id)liveSceneIdentityToken;
- (void)invalidate;
- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)setOcclusionState:(int64_t)state inSteadyState:(BOOL)steadyState;
- (void)setUsesBrightSceneViewBackgroundMaterial:(BOOL)material;
- (void)setWantsEnhancedWindowingEnabled:(BOOL)enabled;
@end

@implementation SBFullScreenAlwaysLiveLiveContentOverlay

- (SBFullScreenAlwaysLiveLiveContentOverlay)initWithSceneHandle:(id)handle referenceSize:(CGSize)size containerOrientation:(int64_t)orientation
{
  height = size.height;
  width = size.width;
  handleCopy = handle;
  v23.receiver = self;
  v23.super_class = SBFullScreenAlwaysLiveLiveContentOverlay;
  v11 = [(SBFullScreenAlwaysLiveLiveContentOverlay *)&v23 init];
  v12 = v11;
  if (v11)
  {
    v11->_containerOrientation = orientation;
    objc_storeStrong(&v11->_sceneHandle, handle);
    if ([(SBDeviceApplicationSceneHandle *)v12->_sceneHandle _supportsMixedOrientation])
    {
      containerOrientation = v12->_containerOrientation;
    }

    else
    {
      containerOrientation = [(SBDeviceApplicationSceneHandle *)v12->_sceneHandle currentInterfaceOrientation];
    }

    height = [[SBDeviceApplicationSceneView alloc] initWithSceneHandle:handleCopy referenceSize:containerOrientation contentOrientation:orientation containerOrientation:v12 hostRequester:width, height];
    sceneView = v12->_sceneView;
    v12->_sceneView = height;

    sceneHandle = [(SBSceneView *)v12->_sceneView sceneHandle];
    HaveTransparentBackground = SBApplicationMightHaveTransparentBackground(sceneHandle);

    if (HaveTransparentBackground)
    {
      backgroundView = [(SBSceneView *)v12->_sceneView backgroundView];
      if (objc_opt_respondsToSelector())
      {
        [backgroundView setFullscreen:1];
      }

      if (objc_opt_respondsToSelector())
      {
        [backgroundView setTransformOptions:{objc_msgSend(backgroundView, "transformOptions") | 2}];
      }
    }

    [(SBSceneView *)v12->_sceneView setDisplayMode:4 animationFactory:0 completion:0];
    v19 = objc_alloc(MEMORY[0x277CF0D78]);
    BSRectWithSize();
    v20 = [v19 initWithFrame:?];
    transformWrapperView = v12->_transformWrapperView;
    v12->_transformWrapperView = v20;

    [(BSUIOrientationTransformWrapperView *)v12->_transformWrapperView setContentOrientation:containerOrientation];
    [(BSUIOrientationTransformWrapperView *)v12->_transformWrapperView setContainerOrientation:orientation];
    [(BSUIOrientationTransformWrapperView *)v12->_transformWrapperView addContentView:v12->_sceneView];
    [(SBDeviceApplicationSceneHandle *)v12->_sceneHandle addObserver:v12];
  }

  return v12;
}

- (void)invalidate
{
  [(SBDeviceApplicationSceneHandle *)self->_sceneHandle removeObserver:self];
  [(SBDeviceApplicationSceneView *)self->_sceneView invalidate];
  sceneSettingsInspector = self->_sceneSettingsInspector;

  [(UIApplicationSceneSettingsDiffInspector *)sceneSettingsInspector removeAllObservers];
}

- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  handleCopy = handle;
  diffCopy = diff;
  settingsCopy = settings;
  sceneSettingsInspector = self->_sceneSettingsInspector;
  if (!sceneSettingsInspector)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75178]);
    v13 = self->_sceneSettingsInspector;
    self->_sceneSettingsInspector = v12;

    objc_initWeak(&location, self);
    v14 = self->_sceneSettingsInspector;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __99__SBFullScreenAlwaysLiveLiveContentOverlay_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke;
    v15[3] = &unk_2783B0B50;
    objc_copyWeak(&v16, &location);
    v15[4] = self;
    [(UIApplicationSceneSettingsDiffInspector *)v14 observeInterfaceOrientationWithBlock:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    sceneSettingsInspector = self->_sceneSettingsInspector;
  }

  [(UIApplicationSceneSettingsDiffInspector *)sceneSettingsInspector inspectDiff:diffCopy withContext:0];
}

void __99__SBFullScreenAlwaysLiveLiveContentOverlay_sceneHandle_didUpdateSettingsWithDiff_previousSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] setContentOrientation:{objc_msgSend(*(*(a1 + 32) + 16), "currentInterfaceOrientation")}];
    WeakRetained = v3;
  }
}

- (void)setOcclusionState:(int64_t)state inSteadyState:(BOOL)steadyState
{
  IsOccluded = SBOcclusionStateIsOccluded(state);
  sceneHandle = self->_sceneHandle;

  [(SBDeviceApplicationSceneHandle *)sceneHandle setOccluded:IsOccluded];
}

- (void)setUsesBrightSceneViewBackgroundMaterial:(BOOL)material
{
  materialCopy = material;
  backgroundView = [(SBSceneView *)self->_sceneView backgroundView];
  if (objc_opt_respondsToSelector())
  {
    [backgroundView setShouldUseBrightMaterial:materialCopy];
  }
}

- (void)setWantsEnhancedWindowingEnabled:(BOOL)enabled
{
  if (self->_wantsEnhancedWindowingEnabled != enabled)
  {
    self->_wantsEnhancedWindowingEnabled = enabled;
    [(SBDeviceApplicationSceneHandle *)self->_sceneHandle setWantsEnhancedWindowingEnabled:?];
  }
}

- (id)liveSceneIdentityToken
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  if ([sceneIfExists isActive])
  {
    settings = [sceneIfExists settings];
    if ([settings isForeground])
    {
      identityToken = [sceneIfExists identityToken];
    }

    else
    {
      identityToken = 0;
    }
  }

  else
  {
    identityToken = 0;
  }

  return identityToken;
}

- (SBSwitcherLiveContentOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIRectCornerRadii)cornerRadii
{
  topLeft = self->_cornerRadii.topLeft;
  bottomLeft = self->_cornerRadii.bottomLeft;
  bottomRight = self->_cornerRadii.bottomRight;
  topRight = self->_cornerRadii.topRight;
  result.topRight = topRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topLeft = topLeft;
  return result;
}

@end