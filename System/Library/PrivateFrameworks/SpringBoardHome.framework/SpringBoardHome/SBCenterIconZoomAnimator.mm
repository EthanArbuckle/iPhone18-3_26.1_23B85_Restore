@interface SBCenterIconZoomAnimator
- (CGPoint)cameraPosition;
- (CGPoint)iconListView:(id)view centerForIconCoordinate:(SBIconCoordinate)coordinate metrics:(id)metrics proposedCenter:(CGPoint)center;
- (CGPoint)iconListView:(id)view originForIconCoordinate:(SBIconCoordinate)coordinate metrics:(id)metrics proposedOrigin:(CGPoint)origin;
- (SBCenterIconZoomAnimator)initWithFolderController:(id)controller;
- (id)_animationFactoryForDock;
- (id)_animationFactoryForFolderView;
- (id)_animationFactoryForIcon:(id)icon;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_calculateCenters;
- (void)_calculateCentersAndCameraPosition;
- (void)_cleanupAnimation;
- (void)_cleanupAnimationIncludingDock:(BOOL)dock;
- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion;
- (void)_positionView:(id)view forIcon:(id)icon;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)fraction withCenter:(CGPoint)center;
- (void)_setZPositionForView:(id)view center:(CGPoint)center andFraction:(double)fraction;
- (void)_setZoomViewAnchorPoint;
- (void)_updateDockForFraction:(double)fraction;
- (void)iconList:(id)list didAddIcon:(id)icon;
- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon;
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
  iconListView = [(SBIconZoomAnimator *)self iconListView];
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

  [iconListView centerForIconCoordinate:{v4, 1}];
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

  [iconListView centerForIconCoordinate:{v8, 1}];
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

  [iconListView centerForIconCoordinate:{1, v12}];
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

  [iconListView centerForIconCoordinate:{1, v16}];
  [iconListView convertPoint:self->_zoomView toView:{v10, (v14 + v17) * 0.5}];
  self->_cameraPosition.x = v18;
  self->_cameraPosition.y = v19;
}

- (void)_calculateCenters
{
  iconListView = [(SBIconZoomAnimator *)self iconListView];
  iconColumnsForCurrentOrientation = [iconListView iconColumnsForCurrentOrientation];
  iconRowsForCurrentOrientation = [iconListView iconRowsForCurrentOrientation];
  settings = [(SBIconAnimator *)self settings];
  preferCenterOfIconGrid = [settings preferCenterOfIconGrid];

  if (preferCenterOfIconGrid)
  {
    if (iconColumnsForCurrentOrientation)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.5;
    }

    self->_centerCol = v7 + (iconColumnsForCurrentOrientation >> 1);
    v8 = (iconRowsForCurrentOrientation >> 1);
    v9 = 184;
    v10 = v8 + 1.0;
    v11 = v8 + 0.5;
    if (iconRowsForCurrentOrientation)
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
    window = [iconListView window];
    [window center];
    v15 = v14;
    v17 = v16;

    window2 = [iconListView window];
    [iconListView convertPoint:window2 fromView:{v15, v17}];
    v20 = v19;
    v22 = v21;

    [iconListView fractionalCoordinateAtPoint:{v20, v22}];
    v12 = round(v23 + v23) * 0.5;
    v24 = BSFloatEqualToFloat();
    settings2 = [(SBIconAnimator *)self settings];
    [settings2 centerRowCoordinate];
    if (v24)
    {
      self->_centerRow = floor(v26) + 0.5;

      if (__sb__runningInSpringBoard())
      {
        v27 = SBFEffectiveDeviceClass() == 2;
      }

      else
      {
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        v27 = [currentDevice userInterfaceIdiom] == 1;
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
  if (centerRow >= iconRowsForCurrentOrientation)
  {
    do
    {
      centerRow = centerRow + -1.0;
    }

    while (centerRow >= iconRowsForCurrentOrientation);
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
  folderController = [(SBCenterIconZoomAnimator *)self folderController];
  innerFolderController = [folderController innerFolderController];
  if (innerFolderController)
  {
    view = [folderController view];
    folderView = self->_folderView;
    self->_folderView = view;
  }

  iconListView = [(SBIconZoomAnimator *)self iconListView];
  v9 = [iconListView addOverridingLayoutDelegate:self reason:@"CenterIconZoom"];
  [(SBCenterIconZoomAnimator *)self setIconListViewOverridingLayoutDelegateAssertion:v9];

  model = [iconListView model];
  [model addListObserver:self];

  v11 = [SBHTouchPassThroughView alloc];
  [iconListView bounds];
  v12 = [(SBHTouchPassThroughView *)v11 initWithFrame:?];
  zoomView = self->_zoomView;
  self->_zoomView = v12;

  [iconListView addSubview:self->_zoomView];
  [(SBCenterIconZoomAnimator *)self _perspectiveTransform];
  v15 = v14;
  layer = [(UIView *)self->_zoomView layer];
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
  [layer setSublayerTransform:v30];

  layer2 = [(UIView *)self->_zoomView layer];
  superlayer = [layer2 superlayer];

  v22 = objc_alloc_init(MEMORY[0x1E6979310]);
  captureOnlyBackdropLayer = self->_captureOnlyBackdropLayer;
  self->_captureOnlyBackdropLayer = v22;

  v24 = self->_captureOnlyBackdropLayer;
  [iconListView bounds];
  [(CABackdropLayer *)v24 setBounds:?];
  [(CABackdropLayer *)self->_captureOnlyBackdropLayer setCaptureOnly:1];
  [(CABackdropLayer *)self->_captureOnlyBackdropLayer setScale:0.25];
  [(CABackdropLayer *)self->_captureOnlyBackdropLayer setGroupName:@"SBRootFolder"];
  v25 = self->_captureOnlyBackdropLayer;
  layer3 = [(UIView *)self->_zoomView layer];
  [superlayer insertSublayer:v25 below:layer3];

  [(SBCenterIconZoomAnimator *)self _calculateCentersAndCameraPosition];
  [(SBCenterIconZoomAnimator *)self _setZoomViewAnchorPoint];
  folderController2 = [(SBCenterIconZoomAnimator *)self folderController];
  v28 = [folderController2 beginModifyingDockOffscreenFractionForReason:@"SBCenterIconZoomDockFractionAnimatorReason"];

  [(SBCenterIconZoomAnimator *)self setDockOffscreenFractionModifier:v28];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __45__SBCenterIconZoomAnimator__prepareAnimation__block_invoke;
  v29[3] = &unk_1E808A3C8;
  v29[4] = self;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v29];
  self->_animatingIcons = 1;
}

- (SBCenterIconZoomAnimator)initWithFolderController:(id)controller
{
  v4.receiver = self;
  v4.super_class = SBCenterIconZoomAnimator;
  result = [(SBIconZoomAnimator *)&v4 initWithAnimationContainer:controller];
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

  layer = [(UIView *)self->_zoomView layer];
  [layer setAnchorPoint:{v14, v13}];

  zoomView = self->_zoomView;

  [(UIView *)zoomView setFrame:v4, v6, v8, v10];
}

- (void)_setAnimationFraction:(double)fraction withCenter:(CGPoint)center
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBCenterIconZoomAnimator__setAnimationFraction_withCenter___block_invoke;
  v6[3] = &unk_1E808A3F0;
  v6[4] = self;
  centerCopy = center;
  fractionCopy = fraction;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v6];
  [(UIView *)self->_folderView setAlpha:1.0 - fraction];
  [(SBCenterIconZoomAnimator *)self _updateDockForFraction:fraction];
}

uint64_t __61__SBCenterIconZoomAnimator__setAnimationFraction_withCenter___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return [*(result + 32) _setZPositionForView:*(result + 40) center:*(result + 48) andFraction:*(result + 56)];
  }

  return result;
}

- (void)_setZPositionForView:(id)view center:(CGPoint)center andFraction:(double)fraction
{
  y = center.y;
  x = center.x;
  viewCopy = view;
  [(SBCenterIconZoomAnimator *)self _zPositionForView:viewCopy center:x andFraction:y, fraction];
  v11 = v10;
  layer = [viewCopy layer];

  [layer setZPosition:v11 * self->_iconZoomedZ];
}

- (void)_updateDockForFraction:(double)fraction
{
  dockOffscreenFractionModifier = [(SBCenterIconZoomAnimator *)self dockOffscreenFractionModifier];
  [dockOffscreenFractionModifier setDockOffscreenFraction:fraction];
}

- (void)_cleanupAnimation
{
  [(SBCenterIconZoomAnimator *)self _cleanupAnimationIncludingDock:1];
  v3.receiver = self;
  v3.super_class = SBCenterIconZoomAnimator;
  [(SBIconZoomAnimator *)&v3 _cleanupAnimation];
}

- (void)_cleanupAnimationIncludingDock:(BOOL)dock
{
  dockCopy = dock;
  iconListView = [(SBIconZoomAnimator *)self iconListView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__SBCenterIconZoomAnimator__cleanupAnimationIncludingDock___block_invoke;
  v11[3] = &unk_1E808A3C8;
  v6 = iconListView;
  v12 = v6;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v11];
  iconListViewOverridingLayoutDelegateAssertion = [(SBCenterIconZoomAnimator *)self iconListViewOverridingLayoutDelegateAssertion];
  [iconListViewOverridingLayoutDelegateAssertion invalidate];

  [(SBCenterIconZoomAnimator *)self setIconListViewOverridingLayoutDelegateAssertion:0];
  [(CABackdropLayer *)self->_captureOnlyBackdropLayer removeFromSuperlayer];
  captureOnlyBackdropLayer = self->_captureOnlyBackdropLayer;
  self->_captureOnlyBackdropLayer = 0;

  [(UIView *)self->_zoomView removeFromSuperview];
  zoomView = self->_zoomView;
  self->_zoomView = 0;

  if (dockCopy)
  {
    dockOffscreenFractionModifier = [(SBCenterIconZoomAnimator *)self dockOffscreenFractionModifier];
    [dockOffscreenFractionModifier invalidate];

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
  _numberOfSignificantAnimations = [(SBIconZoomAnimator *)&v8 _numberOfSignificantAnimations];
  v4 = &_numberOfSignificantAnimations[[(SBIconZoomAnimator *)self listIconCount]];
  folderController = [(SBCenterIconZoomAnimator *)self folderController];
  v6 = &v4[[folderController hasDock]];

  return v6;
}

- (void)_performAnimationToFraction:(double)fraction withCentralAnimationSettings:(id)settings delay:(double)delay alreadyAnimating:(BOOL)animating sharedCompletion:(id)completion
{
  animatingCopy = animating;
  completionCopy = completion;
  v31.receiver = self;
  v31.super_class = SBCenterIconZoomAnimator;
  [(SBIconZoomAnimator *)&v31 _performAnimationToFraction:settings withCentralAnimationSettings:animatingCopy delay:completionCopy alreadyAnimating:fraction sharedCompletion:delay];
  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    [(SBCenterIconZoomAnimator *)self _iconZoomDelay];
    v14 = v13 + delay;
    if (animatingCopy)
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
    if (animatingCopy)
    {
      v16 = 6;
    }

    else
    {
      v16 = 2;
    }

    v29 = v16;
    fractionCopy = fraction;
    v17 = completionCopy;
    v27 = v17;
    [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v26];
    folderController = [(SBCenterIconZoomAnimator *)self folderController];
    hasDock = [folderController hasDock];

    if (hasDock)
    {
      v20 = MEMORY[0x1E698E7D0];
      _animationFactoryForDock = [(SBCenterIconZoomAnimator *)self _animationFactoryForDock];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __125__SBCenterIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3;
      v25[3] = &unk_1E8088CB8;
      v25[4] = self;
      *&v25[5] = fraction;
      [v20 animateWithFactory:_animationFactoryForDock additionalDelay:v16 options:v25 actions:v17 completion:v15];
    }

    if (self->_folderView)
    {
      v22 = MEMORY[0x1E698E7D0];
      _animationFactoryForFolderView = [(SBCenterIconZoomAnimator *)self _animationFactoryForFolderView];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __125__SBCenterIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_4;
      v24[3] = &unk_1E8088CB8;
      v24[4] = self;
      *&v24[5] = fraction;
      [v22 animateWithFactory:_animationFactoryForFolderView additionalDelay:v16 options:v24 actions:v15];
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

- (CGPoint)iconListView:(id)view originForIconCoordinate:(SBIconCoordinate)coordinate metrics:(id)metrics proposedOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  viewCopy = view;
  iconListView = [(SBIconZoomAnimator *)self iconListView];

  if (iconListView == viewCopy)
  {
    [(UIView *)self->_zoomView convertPoint:viewCopy fromView:x, y];
    x = v11;
    y = v12;
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)iconListView:(id)view centerForIconCoordinate:(SBIconCoordinate)coordinate metrics:(id)metrics proposedCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  viewCopy = view;
  iconListView = [(SBIconZoomAnimator *)self iconListView];

  if (iconListView == viewCopy)
  {
    [(UIView *)self->_zoomView convertPoint:viewCopy fromView:x, y];
    x = v11;
    y = v12;
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)iconList:(id)list didAddIcon:(id)icon
{
  iconCopy = icon;
  listCopy = list;
  iconListView = [(SBIconZoomAnimator *)self iconListView];
  model = [iconListView model];

  if (model == listCopy)
  {
    v9 = [(SBIconZoomAnimator *)self iconViewForIcon:iconCopy];
    [(SBCenterIconZoomAnimator *)self _positionView:v9 forIcon:iconCopy];
  }
}

- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  withIconCopy = withIcon;
  listCopy = list;
  iconListView = [(SBIconZoomAnimator *)self iconListView];
  model = [iconListView model];

  if (model == listCopy)
  {
    v10 = [(SBIconZoomAnimator *)self iconViewForIcon:withIconCopy];
    [(SBCenterIconZoomAnimator *)self _positionView:v10 forIcon:withIconCopy];
  }
}

- (void)_positionView:(id)view forIcon:(id)icon
{
  viewCopy = view;
  iconCopy = icon;
  iconListView = [(SBIconZoomAnimator *)self iconListView];
  [iconListView centerForIcon:iconCopy];
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_zoomView convertPoint:iconListView fromView:v9, v11];
  [viewCopy setCenter:?];
}

- (id)_animationFactoryForIcon:(id)icon
{
  iconCopy = icon;
  settings = [(SBIconAnimator *)self settings];
  centralAnimationSettings = [settings centralAnimationSettings];
  if ([settings distanceEffect])
  {
    iconListView = [(SBIconZoomAnimator *)self iconListView];
    v8 = [iconListView coordinateForIcon:iconCopy];
    v10 = v9;

    if (SBIconCoordinateIsNotFound(v8, v10))
    {
      v11 = 0;
    }

    else
    {
      v11 = (floor(vabdd_f64(v10, self->_centerRow)) + floor(vabdd_f64(v8, self->_centerCol)));
    }

    [centralAnimationSettings mass];
    v13 = v12;
    [settings firstHopIncrement];
    if (v11)
    {
      v15 = v14;
      if (v14 > 0.0)
      {
        v16 = 1;
        do
        {
          v13 = v13 + v15 * [settings distanceEffect];
          [settings hopIncrementAcceleration];
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

    [centralAnimationSettings mass];
    if (v13 != v18)
    {
      v19 = [centralAnimationSettings copy];

      [v19 setMass:v13];
      centralAnimationSettings = v19;
    }
  }

  v20 = MEMORY[0x1E698E7D0];
  bSAnimationSettings = [centralAnimationSettings BSAnimationSettings];
  v22 = [v20 factoryWithSettings:bSAnimationSettings];

  [v22 setAllowsAdditiveAnimations:1];

  return v22;
}

- (id)_animationFactoryForDock
{
  settings = [(SBIconAnimator *)self settings];
  centralAnimationSettings = [settings centralAnimationSettings];
  [settings dockMass];
  v5 = v4;
  [centralAnimationSettings mass];
  if (v6 != v5)
  {
    v7 = [centralAnimationSettings copy];

    [v7 setMass:v5];
    centralAnimationSettings = v7;
  }

  v8 = MEMORY[0x1E698E7D0];
  bSAnimationSettings = [centralAnimationSettings BSAnimationSettings];
  v10 = [v8 factoryWithSettings:bSAnimationSettings];

  [v10 setAllowsAdditiveAnimations:1];

  return v10;
}

- (id)_animationFactoryForFolderView
{
  v2 = MEMORY[0x1E698E7D0];
  settings = [(SBIconAnimator *)self settings];
  centralAnimationSettings = [settings centralAnimationSettings];
  bSAnimationSettings = [centralAnimationSettings BSAnimationSettings];
  v6 = [v2 factoryWithSettings:bSAnimationSettings];

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