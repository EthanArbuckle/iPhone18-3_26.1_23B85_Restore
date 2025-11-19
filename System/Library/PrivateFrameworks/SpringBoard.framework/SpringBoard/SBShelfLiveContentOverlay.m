@interface SBShelfLiveContentOverlay
- (SBShelfLiveContentOverlay)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 livePortalView:(id)a7;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (UIRectCornerRadii)cornerRadii;
- (void)_updateSceneViewInSideSizeObservingViewIfNecessary;
- (void)setDisplayMode:(unint64_t)a3;
- (void)sizeObservingView:(id)a3 didChangeSize:(CGSize)a4;
@end

@implementation SBShelfLiveContentOverlay

- (SBShelfLiveContentOverlay)initWithSceneHandle:(id)a3 referenceSize:(CGSize)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 livePortalView:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a7;
  v24.receiver = self;
  v24.super_class = SBShelfLiveContentOverlay;
  v16 = [(SBShelfLiveContentOverlay *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_sceneHandle, a3);
    v18 = [(SBDeviceApplicationSceneHandle *)v17->_sceneHandle newSceneViewWithReferenceSize:a5 contentOrientation:a6 containerOrientation:v17 hostRequester:width, height];
    sceneView = v17->_sceneView;
    v17->_sceneView = v18;

    [(SBSceneView *)v17->_sceneView setCustomContentView:v15];
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

- (void)setDisplayMode:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
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

- (void)sizeObservingView:(id)a3 didChangeSize:(CGSize)a4
{
  if (self->_sizeObservingView == a3)
  {
    [(SBShelfLiveContentOverlay *)self _updateSceneViewInSideSizeObservingViewIfNecessary:a4.width];
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