@interface SBFullScreenAlwaysLiveLiveContentOverlay
- (SBFullScreenAlwaysLiveLiveContentOverlay)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 containerOrientation:(int64_t)a5;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (UIRectCornerRadii)cornerRadii;
- (id)liveSceneIdentityToken;
- (void)invalidate;
- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5;
- (void)setOcclusionState:(int64_t)a3 inSteadyState:(BOOL)a4;
- (void)setUsesBrightSceneViewBackgroundMaterial:(BOOL)a3;
- (void)setWantsEnhancedWindowingEnabled:(BOOL)a3;
@end

@implementation SBFullScreenAlwaysLiveLiveContentOverlay

- (SBFullScreenAlwaysLiveLiveContentOverlay)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 containerOrientation:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v23.receiver = self;
  v23.super_class = SBFullScreenAlwaysLiveLiveContentOverlay;
  v11 = [(SBFullScreenAlwaysLiveLiveContentOverlay *)&v23 init];
  v12 = v11;
  if (v11)
  {
    v11->_containerOrientation = a5;
    objc_storeStrong(&v11->_sceneHandle, a3);
    if ([(SBDeviceApplicationSceneHandle *)v12->_sceneHandle _supportsMixedOrientation])
    {
      containerOrientation = v12->_containerOrientation;
    }

    else
    {
      containerOrientation = [(SBDeviceApplicationSceneHandle *)v12->_sceneHandle currentInterfaceOrientation];
    }

    v14 = [[SBDeviceApplicationSceneView alloc] initWithSceneHandle:v10 referenceSize:containerOrientation contentOrientation:a5 containerOrientation:v12 hostRequester:width, height];
    sceneView = v12->_sceneView;
    v12->_sceneView = v14;

    v16 = [(SBSceneView *)v12->_sceneView sceneHandle];
    HaveTransparentBackground = SBApplicationMightHaveTransparentBackground(v16);

    if (HaveTransparentBackground)
    {
      v18 = [(SBSceneView *)v12->_sceneView backgroundView];
      if (objc_opt_respondsToSelector())
      {
        [v18 setFullscreen:1];
      }

      if (objc_opt_respondsToSelector())
      {
        [v18 setTransformOptions:{objc_msgSend(v18, "transformOptions") | 2}];
      }
    }

    [(SBSceneView *)v12->_sceneView setDisplayMode:4 animationFactory:0 completion:0];
    v19 = objc_alloc(MEMORY[0x277CF0D78]);
    BSRectWithSize();
    v20 = [v19 initWithFrame:?];
    transformWrapperView = v12->_transformWrapperView;
    v12->_transformWrapperView = v20;

    [(BSUIOrientationTransformWrapperView *)v12->_transformWrapperView setContentOrientation:containerOrientation];
    [(BSUIOrientationTransformWrapperView *)v12->_transformWrapperView setContainerOrientation:a5];
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

- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  [(UIApplicationSceneSettingsDiffInspector *)sceneSettingsInspector inspectDiff:v9 withContext:0];
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

- (void)setOcclusionState:(int64_t)a3 inSteadyState:(BOOL)a4
{
  IsOccluded = SBOcclusionStateIsOccluded(a3);
  sceneHandle = self->_sceneHandle;

  [(SBDeviceApplicationSceneHandle *)sceneHandle setOccluded:IsOccluded];
}

- (void)setUsesBrightSceneViewBackgroundMaterial:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBSceneView *)self->_sceneView backgroundView];
  if (objc_opt_respondsToSelector())
  {
    [v4 setShouldUseBrightMaterial:v3];
  }
}

- (void)setWantsEnhancedWindowingEnabled:(BOOL)a3
{
  if (self->_wantsEnhancedWindowingEnabled != a3)
  {
    self->_wantsEnhancedWindowingEnabled = a3;
    [(SBDeviceApplicationSceneHandle *)self->_sceneHandle setWantsEnhancedWindowingEnabled:?];
  }
}

- (id)liveSceneIdentityToken
{
  v2 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  if ([v2 isActive])
  {
    v3 = [v2 settings];
    if ([v3 isForeground])
    {
      v4 = [v2 identityToken];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
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