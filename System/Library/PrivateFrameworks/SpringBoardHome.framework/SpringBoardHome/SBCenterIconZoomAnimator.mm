@interface SBCenterIconZoomAnimator
- (CGPoint)cameraPosition;
- (CGPoint)iconListView:(id)a3 centerForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 proposedCenter:(CGPoint)a6;
- (CGPoint)iconListView:(id)a3 originForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 proposedOrigin:(CGPoint)a6;
- (SBCenterIconZoomAnimator)initWithFolderController:(id)a3;
- (id)_animationFactoryForDock;
- (id)_animationFactoryForFolderView;
- (id)_animationFactoryForIcon:(id)a3;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_calculateCenters;
- (void)_calculateCentersAndCameraPosition;
- (void)_cleanupAnimation;
- (void)_cleanupAnimationIncludingDock:(BOOL)a3;
- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7;
- (void)_positionView:(id)a3 forIcon:(id)a4;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)a3 withCenter:(CGPoint)a4;
- (void)_setZPositionForView:(id)a3 center:(CGPoint)a4 andFraction:(double)a5;
- (void)_setZoomViewAnchorPoint;
- (void)_updateDockForFraction:(double)a3;
- (void)iconList:(id)a3 didAddIcon:(id)a4;
- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
@end

@implementation SBCenterIconZoomAnimator

void __45__SBCenterIconZoomAnimator__prepareAnimation__block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 152);
    v8 = a3;
    v9 = a2;
    [v7 addSubview:v8];
    [*(a1 + 32) _positionView:v8 forIcon:v9];
  }
}

- (void)_calculateCentersAndCameraPosition
{
  v20 = [(SBIconZoomAnimator *)self iconListView];
  [(SBCenterIconZoomAnimator *)self _calculateCenters];
  v3 = vcvtmd_s64_f64(self->_centerCol);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  [v20 centerForIconCoordinate:{v4, 1}];
  v6 = v5;
  v7 = vcvtpd_s64_f64(self->_centerCol);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  [v20 centerForIconCoordinate:{v8, 1}];
  v10 = (v6 + v9) * 0.5;
  v11 = vcvtmd_s64_f64(self->_centerRow);
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  [v20 centerForIconCoordinate:{1, v12}];
  v14 = v13;
  v15 = vcvtpd_s64_f64(self->_centerRow);
  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  [v20 centerForIconCoordinate:{1, v16}];
  [v20 convertPoint:self->_zoomView toView:{v10, (v14 + v17) * 0.5}];
  self->_cameraPosition.x = v18;
  self->_cameraPosition.y = v19;
}

- (void)_calculateCenters
{
  v30 = [(SBIconZoomAnimator *)self iconListView];
  v3 = [v30 iconColumnsForCurrentOrientation];
  v4 = [v30 iconRowsForCurrentOrientation];
  v5 = [(SBIconAnimator *)self settings];
  v6 = [v5 preferCenterOfIconGrid];

  if (v6)
  {
    if (v3)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.5;
    }

    self->_centerCol = v7 + (v3 >> 1);
    v8 = (v4 >> 1);
    v9 = 184;
    v10 = v8 + 1.0;
    v11 = v8 + 0.5;
    if (v4)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v13 = [v30 window];
    [v13 center];
    v15 = v14;
    v17 = v16;

    v18 = [v30 window];
    [v30 convertPoint:v18 fromView:{v15, v17}];
    v20 = v19;
    v22 = v21;

    [v30 fractionalCoordinateAtPoint:{v20, v22}];
    v12 = round(v23 + v23) * 0.5;
    v24 = BSFloatEqualToFloat();
    v25 = [(SBIconAnimator *)self settings];
    [v25 centerRowCoordinate];
    if (v24)
    {
      self->_centerRow = floor(v26) + 0.5;

      if (__sb__runningInSpringBoard())
      {
        v27 = SBFEffectiveDeviceClass() == 2;
      }

      else
      {
        v28 = [MEMORY[0x1E69DC938] currentDevice];
        v27 = [v28 userInterfaceIdiom] == 1;
      }

      if (v27)
      {
        v12 = v12 + -0.25;
      }
    }

    else
    {
      self->_centerRow = v26;
    }

    v9 = 192;
  }

  *(&self->super.super.super.isa + v9) = v12;
  centerRow = self->_centerRow;
  if (centerRow >= v4)
  {
    do
    {
      centerRow = centerRow + -1.0;
    }

    while (centerRow >= v4);
    self->_centerRow = centerRow;
  }
}

- (void)_prepareAnimation
{
  v35.receiver = self;
  v35.super_class = SBCenterIconZoomAnimator;
  [(SBIconZoomAnimator *)&v35 _prepareAnimation];
  [(SBCenterIconZoomAnimator *)self _perspectiveTransform];
  self->_iconZoomedZ = SBHZPositionForScale(80.0, v3);
  v4 = [(SBCenterIconZoomAnimator *)self folderController];
  v5 = [v4 innerFolderController];
  if (v5)
  {
    v6 = [v4 view];
    folderView = self->_folderView;
    self->_folderView = v6;
  }

  v8 = [(SBIconZoomAnimator *)self iconListView];
  v9 = [v8 addOverridingLayoutDelegate:self reason:@"CenterIconZoom"];
  [(SBCenterIconZoomAnimator *)self setIconListViewOverridingLayoutDelegateAssertion:v9];

  v10 = [v8 model];
  [v10 addListObserver:self];

  v11 = [SBHTouchPassThroughView alloc];
  [v8 bounds];
  v12 = [(SBHTouchPassThroughView *)v11 initWithFrame:?];
  zoomView = self->_zoomView;
  self->_zoomView = v12;

  [v8 addSubview:self->_zoomView];
  [(SBCenterIconZoomAnimator *)self _perspectiveTransform];
  v15 = v14;
  v16 = [(UIView *)self->_zoomView layer];
  v17 = *(MEMORY[0x1E69792E8] + 48);
  v30[2] = *(MEMORY[0x1E69792E8] + 32);
  v30[3] = v17;
  v30[4] = *(MEMORY[0x1E69792E8] + 64);
  v31 = *(MEMORY[0x1E69792E8] + 80);
  v18 = *(MEMORY[0x1E69792E8] + 16);
  v30[0] = *MEMORY[0x1E69792E8];
  v30[1] = v18;
  v32 = v15;
  v19 = *(MEMORY[0x1E69792E8] + 112);
  v33 = *(MEMORY[0x1E69792E8] + 96);
  v34 = v19;
  [v16 setSublayerTransform:v30];

  v20 = [(UIView *)self->_zoomView layer];
  v21 = [v20 superlayer];

  v22 = objc_alloc_init(MEMORY[0x1E6979310]);
  captureOnlyBackdropLayer = self->_captureOnlyBackdropLayer;
  self->_captureOnlyBackdropLayer = v22;

  v24 = self->_captureOnlyBackdropLayer;
  [v8 bounds];
  [(CABackdropLayer *)v24 setBounds:?];
  [(CABackdropLayer *)self->_captureOnlyBackdropLayer setCaptureOnly:1];
  [(CABackdropLayer *)self->_captureOnlyBackdropLayer setScale:0.25];
  [(CABackdropLayer *)self->_captureOnlyBackdropLayer setGroupName:@"SBRootFolder"];
  v25 = self->_captureOnlyBackdropLayer;
  v26 = [(UIView *)self->_zoomView layer];
  [v21 insertSublayer:v25 below:v26];

  [(SBCenterIconZoomAnimator *)self _calculateCentersAndCameraPosition];
  [(SBCenterIconZoomAnimator *)self _setZoomViewAnchorPoint];
  v27 = [(SBCenterIconZoomAnimator *)self folderController];
  v28 = [v27 beginModifyingDockOffscreenFractionForReason:@"SBCenterIconZoomDockFractionAnimatorReason"];

  [(SBCenterIconZoomAnimator *)self setDockOffscreenFractionModifier:v28];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __45__SBCenterIconZoomAnimator__prepareAnimation__block_invoke;
  v29[3] = &unk_1E808A3C8;
  v29[4] = self;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v29];
  self->_animatingIcons = 1;
}

- (SBCenterIconZoomAnimator)initWithFolderController:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBCenterIconZoomAnimator;
  result = [(SBIconZoomAnimator *)&v4 initWithAnimationContainer:a3];
  if (result)
  {
    result->_iconZoomedZ = 0.0;
  }

  return result;
}

- (void)_setZoomViewAnchorPoint
{
  [(UIView *)self->_zoomView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_zoomView bounds];
  v13 = 0.5;
  v14 = 0.5;
  if (v11 != 0.0)
  {
    v14 = self->_cameraPosition.x / v11;
  }

  if (v12 != 0.0)
  {
    v13 = self->_cameraPosition.y / v12;
  }

  v15 = [(UIView *)self->_zoomView layer];
  [v15 setAnchorPoint:{v14, v13}];

  zoomView = self->_zoomView;

  [(UIView *)zoomView setFrame:v4, v6, v8, v10];
}

- (void)_setAnimationFraction:(double)a3 withCenter:(CGPoint)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBCenterIconZoomAnimator__setAnimationFraction_withCenter___block_invoke;
  v6[3] = &unk_1E808A3F0;
  v6[4] = self;
  v7 = a4;
  v8 = a3;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v6];
  [(UIView *)self->_folderView setAlpha:1.0 - a3];
  [(SBCenterIconZoomAnimator *)self _updateDockForFraction:a3];
}

uint64_t __61__SBCenterIconZoomAnimator__setAnimationFraction_withCenter___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return [*(result + 32) _setZPositionForView:*(result + 40) center:*(result + 48) andFraction:*(result + 56)];
  }

  return result;
}

- (void)_setZPositionForView:(id)a3 center:(CGPoint)a4 andFraction:(double)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  [(SBCenterIconZoomAnimator *)self _zPositionForView:v9 center:x andFraction:y, a5];
  v11 = v10;
  v12 = [v9 layer];

  [v12 setZPosition:v11 * self->_iconZoomedZ];
}

- (void)_updateDockForFraction:(double)a3
{
  v4 = [(SBCenterIconZoomAnimator *)self dockOffscreenFractionModifier];
  [v4 setDockOffscreenFraction:a3];
}

- (void)_cleanupAnimation
{
  [(SBCenterIconZoomAnimator *)self _cleanupAnimationIncludingDock:1];
  v3.receiver = self;
  v3.super_class = SBCenterIconZoomAnimator;
  [(SBIconZoomAnimator *)&v3 _cleanupAnimation];
}

- (void)_cleanupAnimationIncludingDock:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBIconZoomAnimator *)self iconListView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SBCenterIconZoomAnimator__cleanupAnimationIncludingDock___block_invoke;
  v11[3] = &unk_1E808A3C8;
  v6 = v5;
  v12 = v6;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v11];
  v7 = [(SBCenterIconZoomAnimator *)self iconListViewOverridingLayoutDelegateAssertion];
  [v7 invalidate];

  [(SBCenterIconZoomAnimator *)self setIconListViewOverridingLayoutDelegateAssertion:0];
  [(CABackdropLayer *)self->_captureOnlyBackdropLayer removeFromSuperlayer];
  captureOnlyBackdropLayer = self->_captureOnlyBackdropLayer;
  self->_captureOnlyBackdropLayer = 0;

  [(UIView *)self->_zoomView removeFromSuperview];
  zoomView = self->_zoomView;
  self->_zoomView = 0;

  if (v3)
  {
    v10 = [(SBCenterIconZoomAnimator *)self dockOffscreenFractionModifier];
    [v10 invalidate];

    [(SBCenterIconZoomAnimator *)self setDockOffscreenFractionModifier:0];
  }

  self->_animatingIcons = 0;
}

void __59__SBCenterIconZoomAnimator__cleanupAnimationIncludingDock___block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v10 = a2;
  v7 = a3;
  v8 = [v7 layer];
  [v8 setZPosition:0.0];

  if ((a4 & 1) == 0)
  {
    v9 = [*(a1 + 32) displayedIconViewForIcon:v10];

    if (v9 == v7)
    {
      [*(a1 + 32) addSubview:v7];
    }
  }
}

- (unint64_t)_numberOfSignificantAnimations
{
  v8.receiver = self;
  v8.super_class = SBCenterIconZoomAnimator;
  v3 = [(SBIconZoomAnimator *)&v8 _numberOfSignificantAnimations];
  v4 = &v3[[(SBIconZoomAnimator *)self listIconCount]];
  v5 = [(SBCenterIconZoomAnimator *)self folderController];
  v6 = &v4[[v5 hasDock]];

  return v6;
}

- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7
{
  v7 = a6;
  v12 = a7;
  v31.receiver = self;
  v31.super_class = SBCenterIconZoomAnimator;
  [(SBIconZoomAnimator *)&v31 _performAnimationToFraction:a4 withCentralAnimationSettings:v7 delay:v12 alreadyAnimating:a3 sharedCompletion:a5];
  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    [(SBCenterIconZoomAnimator *)self _iconZoomDelay];
    v14 = v13 + a5;
    if (v7)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v14;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __125__SBCenterIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
    v26[3] = &unk_1E808A418;
    v26[4] = self;
    v28 = v15;
    if (v7)
    {
      v16 = 6;
    }

    else
    {
      v16 = 2;
    }

    v29 = v16;
    v30 = a3;
    v17 = v12;
    v27 = v17;
    [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v26];
    v18 = [(SBCenterIconZoomAnimator *)self folderController];
    v19 = [v18 hasDock];

    if (v19)
    {
      v20 = MEMORY[0x1E698E7D0];
      v21 = [(SBCenterIconZoomAnimator *)self _animationFactoryForDock];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __125__SBCenterIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3;
      v25[3] = &unk_1E8088CB8;
      v25[4] = self;
      *&v25[5] = a3;
      [v20 animateWithFactory:v21 additionalDelay:v16 options:v25 actions:v17 completion:v15];
    }

    if (self->_folderView)
    {
      v22 = MEMORY[0x1E698E7D0];
      v23 = [(SBCenterIconZoomAnimator *)self _animationFactoryForFolderView];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __125__SBCenterIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_4;
      v24[3] = &unk_1E8088CB8;
      v24[4] = self;
      *&v24[5] = a3;
      [v22 animateWithFactory:v23 additionalDelay:v16 options:v24 actions:v15];
    }
  }
}

void __125__SBCenterIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  if ((a4 & 1) == 0)
  {
    v8 = MEMORY[0x1E698E7D0];
    v9 = [*(a1 + 32) _animationFactoryForIcon:a2];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __125__SBCenterIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_2;
    v15[3] = &unk_1E808A090;
    v12 = v7;
    v18 = *(a1 + 64);
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = v12;
    v17 = v14;
    [v8 animateWithFactory:v9 additionalDelay:v11 options:v15 actions:v13 completion:v10];
  }
}

void __125__SBCenterIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setZPosition:*(a1 + 48) * *(*(a1 + 40) + 168)];
}

void __125__SBCenterIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) dockOffscreenFractionModifier];
  [v2 setDockOffscreenFraction:*(a1 + 40)];
}

- (CGPoint)iconListView:(id)a3 originForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 proposedOrigin:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v9 = a3;
  v10 = [(SBIconZoomAnimator *)self iconListView];

  if (v10 == v9)
  {
    [(UIView *)self->_zoomView convertPoint:v9 fromView:x, y];
    x = v11;
    y = v12;
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)iconListView:(id)a3 centerForIconCoordinate:(SBIconCoordinate)a4 metrics:(id)a5 proposedCenter:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v9 = a3;
  v10 = [(SBIconZoomAnimator *)self iconListView];

  if (v10 == v9)
  {
    [(UIView *)self->_zoomView convertPoint:v9 fromView:x, y];
    x = v11;
    y = v12;
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)iconList:(id)a3 didAddIcon:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(SBIconZoomAnimator *)self iconListView];
  v8 = [v7 model];

  if (v8 == v6)
  {
    v9 = [(SBIconZoomAnimator *)self iconViewForIcon:v10];
    [(SBCenterIconZoomAnimator *)self _positionView:v9 forIcon:v10];
  }
}

- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v11 = a5;
  v7 = a3;
  v8 = [(SBIconZoomAnimator *)self iconListView];
  v9 = [v8 model];

  if (v9 == v7)
  {
    v10 = [(SBIconZoomAnimator *)self iconViewForIcon:v11];
    [(SBCenterIconZoomAnimator *)self _positionView:v10 forIcon:v11];
  }
}

- (void)_positionView:(id)a3 forIcon:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(SBIconZoomAnimator *)self iconListView];
  [v7 centerForIcon:v6];
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_zoomView convertPoint:v7 fromView:v9, v11];
  [v12 setCenter:?];
}

- (id)_animationFactoryForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBIconAnimator *)self settings];
  v6 = [v5 centralAnimationSettings];
  if ([v5 distanceEffect])
  {
    v7 = [(SBIconZoomAnimator *)self iconListView];
    v8 = [v7 coordinateForIcon:v4];
    v10 = v9;

    if (SBIconCoordinateIsNotFound(v8, v10))
    {
      v11 = 0;
    }

    else
    {
      v11 = (floor(vabdd_f64(v10, self->_centerRow)) + floor(vabdd_f64(v8, self->_centerCol)));
    }

    [v6 mass];
    v13 = v12;
    [v5 firstHopIncrement];
    if (v11)
    {
      v15 = v14;
      if (v14 > 0.0)
      {
        v16 = 1;
        do
        {
          v13 = v13 + v15 * [v5 distanceEffect];
          [v5 hopIncrementAcceleration];
          if (v16 >= v11)
          {
            break;
          }

          v15 = v15 + v17;
          ++v16;
        }

        while (v15 > 0.0);
      }
    }

    if (v13 < 0.1)
    {
      v13 = 0.1;
    }

    [v6 mass];
    if (v13 != v18)
    {
      v19 = [v6 copy];

      [v19 setMass:v13];
      v6 = v19;
    }
  }

  v20 = MEMORY[0x1E698E7D0];
  v21 = [v6 BSAnimationSettings];
  v22 = [v20 factoryWithSettings:v21];

  [v22 setAllowsAdditiveAnimations:1];

  return v22;
}

- (id)_animationFactoryForDock
{
  v2 = [(SBIconAnimator *)self settings];
  v3 = [v2 centralAnimationSettings];
  [v2 dockMass];
  v5 = v4;
  [v3 mass];
  if (v6 != v5)
  {
    v7 = [v3 copy];

    [v7 setMass:v5];
    v3 = v7;
  }

  v8 = MEMORY[0x1E698E7D0];
  v9 = [v3 BSAnimationSettings];
  v10 = [v8 factoryWithSettings:v9];

  [v10 setAllowsAdditiveAnimations:1];

  return v10;
}

- (id)_animationFactoryForFolderView
{
  v2 = MEMORY[0x1E698E7D0];
  v3 = [(SBIconAnimator *)self settings];
  v4 = [v3 centralAnimationSettings];
  v5 = [v4 BSAnimationSettings];
  v6 = [v2 factoryWithSettings:v5];

  [v6 setAllowsAdditiveAnimations:1];

  return v6;
}

- (CGPoint)cameraPosition
{
  x = self->_cameraPosition.x;
  y = self->_cameraPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end