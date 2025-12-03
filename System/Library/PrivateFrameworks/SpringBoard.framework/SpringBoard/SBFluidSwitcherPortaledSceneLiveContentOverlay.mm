@interface SBFluidSwitcherPortaledSceneLiveContentOverlay
- (CGSize)referenceSize;
- (SBFluidSwitcherPortaledSceneLiveContentOverlay)initWithSceneHandle:(id)handle referenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation livePortalView:(id)view;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (UIRectCornerRadii)cornerRadii;
- (id)sceneViewPresentationIdentifier:(id)identifier;
- (void)sizeObservingView:(id)view didChangeSize:(CGSize)size;
@end

@implementation SBFluidSwitcherPortaledSceneLiveContentOverlay

- (SBFluidSwitcherPortaledSceneLiveContentOverlay)initWithSceneHandle:(id)handle referenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation livePortalView:(id)view
{
  height = size.height;
  width = size.width;
  handleCopy = handle;
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = SBFluidSwitcherPortaledSceneLiveContentOverlay;
  v16 = [(SBFluidSwitcherPortaledSceneLiveContentOverlay *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sceneHandle, handle);
    v17->_referenceSize.width = width;
    v17->_referenceSize.height = height;
    v17->_contentOrientation = orientation;
    v17->_containerOrientation = containerOrientation;
    objc_storeStrong(&v17->_livePortalView, view);
    v18 = [handleCopy newSceneViewWithReferenceSize:orientation contentOrientation:containerOrientation containerOrientation:v17 hostRequester:{width, height}];
    sceneView = v17->_sceneView;
    v17->_sceneView = v18;

    [(SBSceneView *)v17->_sceneView setCustomContentView:v17->_livePortalView];
    [(SBSceneView *)v17->_sceneView setDisplayMode:1 animationFactory:0 completion:0];
    v20 = objc_alloc(MEMORY[0x277D67DB0]);
    SBRectWithSize();
    v21 = [v20 initWithFrame:?];
    sizeObservingView = v17->_sizeObservingView;
    v17->_sizeObservingView = v21;

    [(SBUISizeObservingView *)v17->_sizeObservingView setDelegate:v17];
    [(SBUISizeObservingView *)v17->_sizeObservingView addSubview:v17->_sceneView];
    [(SBFluidSwitcherPortaledSceneLiveContentOverlay *)v17 sizeObservingView:v17->_sizeObservingView didChangeSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  }

  return v17;
}

- (id)sceneViewPresentationIdentifier:(id)identifier
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

- (void)sizeObservingView:(id)view didChangeSize:(CGSize)size
{
  if ([view isEqual:{self->_sizeObservingView, size.width, size.height}])
  {
    sceneView = self->_sceneView;
    [(SBUISizeObservingView *)self->_sizeObservingView bounds];

    [(SBDeviceApplicationSceneView *)sceneView setFrame:?];
  }
}

- (SBSwitcherLiveContentOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (UIRectCornerRadii)cornerRadii
{
  topLeft = self->cornerRadii.topLeft;
  bottomLeft = self->cornerRadii.bottomLeft;
  bottomRight = self->cornerRadii.bottomRight;
  topRight = self->cornerRadii.topRight;
  result.topRight = topRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topLeft = topLeft;
  return result;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end