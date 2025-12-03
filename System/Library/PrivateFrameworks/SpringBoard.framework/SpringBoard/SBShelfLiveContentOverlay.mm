@interface SBShelfLiveContentOverlay
- (SBShelfLiveContentOverlay)initWithSceneHandle:(id)handle referenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation livePortalView:(id)view;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (UIRectCornerRadii)cornerRadii;
- (void)_updateSceneViewInSideSizeObservingViewIfNecessary;
- (void)setDisplayMode:(unint64_t)mode;
- (void)sizeObservingView:(id)view didChangeSize:(CGSize)size;
@end

@implementation SBShelfLiveContentOverlay

- (SBShelfLiveContentOverlay)initWithSceneHandle:(id)handle referenceSize:(CGSize)size contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation livePortalView:(id)view
{
  height = size.height;
  width = size.width;
  handleCopy = handle;
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = SBShelfLiveContentOverlay;
  v16 = [(SBShelfLiveContentOverlay *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sceneHandle, handle);
    height = [(SBDeviceApplicationSceneHandle *)v17->_sceneHandle newSceneViewWithReferenceSize:orientation contentOrientation:containerOrientation containerOrientation:v17 hostRequester:width, height];
    sceneView = v17->_sceneView;
    v17->_sceneView = height;

    [(SBSceneView *)v17->_sceneView setCustomContentView:viewCopy];
    [(SBSceneView *)v17->_sceneView setDisplayMode:1 animationFactory:0 completion:0];
    v20 = objc_alloc(MEMORY[0x277D67DB0]);
    v21 = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    sizeObservingView = v17->_sizeObservingView;
    v17->_sizeObservingView = v21;

    [(SBUISizeObservingView *)v17->_sizeObservingView setDelegate:v17];
    [(SBUISizeObservingView *)v17->_sizeObservingView addSubview:v17->_sceneView];
    [(SBShelfLiveContentOverlay *)v17 _updateSceneViewInSideSizeObservingViewIfNecessary];
  }

  return v17;
}

- (void)setDisplayMode:(unint64_t)mode
{
  if (mode)
  {
    if (mode != 1)
    {
      return;
    }

    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  sceneView = self->_sceneView;
  v5 = [MEMORY[0x277CF0D38] factoryWithDuration:0.35];
  [(SBSceneView *)sceneView setDisplayMode:v3 animationFactory:v5 completion:0];
}

- (void)sizeObservingView:(id)view didChangeSize:(CGSize)size
{
  if (self->_sizeObservingView == view)
  {
    [(SBShelfLiveContentOverlay *)self _updateSceneViewInSideSizeObservingViewIfNecessary:size.width];
  }
}

- (void)_updateSceneViewInSideSizeObservingViewIfNecessary
{
  [(SBUISizeObservingView *)self->_sizeObservingView bounds];
  v4 = v3;
  v6 = v5;
  [(SBSceneView *)self->_sceneView referenceSize];
  v8 = v7;
  v10 = v9;
  v11 = [(SBSceneView *)self->_sceneView orientation]- 3;
  if (v11 >= 2)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  sceneView = self->_sceneView;
  if (v12 >= v4)
  {
    SBRectWithSize();
    [(SBDeviceApplicationSceneView *)sceneView setBounds:?];
    [(SBDeviceApplicationSceneView *)self->_sceneView setCenter:v4 * 0.5, v6 * 0.5];
    v17 = self->_sceneView;
    v18 = *(MEMORY[0x277CBF2C0] + 16);
    *&v19.a = *MEMORY[0x277CBF2C0];
    *&v19.c = v18;
    *&v19.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(SBDeviceApplicationSceneView *)v17 setTransform:&v19];
  }

  else
  {
    if (v11 >= 2)
    {
      v14 = v10;
    }

    else
    {
      v14 = v8;
    }

    SBRectWithSize();
    [(SBDeviceApplicationSceneView *)sceneView setBounds:?];
    v15 = self->_sceneView;
    v16 = v4 / v12;
    CGAffineTransformMakeScale(&v19, v16, v16);
    [(SBDeviceApplicationSceneView *)v15 setTransform:&v19];
    [(SBDeviceApplicationSceneView *)self->_sceneView setCenter:v12 * v16 * 0.5, v14 * v16 * 0.5];
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

@end