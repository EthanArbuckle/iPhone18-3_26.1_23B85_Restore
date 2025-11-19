@interface SBCenterAppIconZoomAnimator
- (CGPoint)cameraPosition;
- (SBCenterAppIconZoomAnimator)initWithFolderController:(id)a3 appView:(id)a4 window:(id)a5;
- (double)_appZoomDelay;
- (double)_iconZoomDelay;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_cleanupAnimation;
- (void)_delayedForRotation;
- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)a3;
- (void)_translateAppForZoomFraction:(double)a3;
- (void)_zoomAppForZoomFraction:(double)a3;
@end

@implementation SBCenterAppIconZoomAnimator

- (SBCenterAppIconZoomAnimator)initWithFolderController:(id)a3 appView:(id)a4 window:(id)a5
{
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = SBCenterAppIconZoomAnimator;
  v11 = [(SBCenterIconZoomAnimator *)&v21 initWithFolderController:a3];
  if (v11)
  {
    if (!v10)
    {
      [SBCenterAppIconZoomAnimator initWithFolderController:a2 appView:v11 window:?];
    }

    [v9 frame];
    v11->_destinationFrame.origin.x = v12;
    v11->_destinationFrame.origin.y = v13;
    v11->_destinationFrame.size.width = v14;
    v11->_destinationFrame.size.height = v15;
    v16 = [[SBZoomableView alloc] initWithFrame:v11->_destinationFrame.origin.x, v11->_destinationFrame.origin.y, v11->_destinationFrame.size.width, v11->_destinationFrame.size.height];
    appView = v11->_appView;
    v11->_appView = &v16->super;

    BSRectWithSize();
    [v9 setFrame:?];
    [(UIView *)v11->_appView addSubview:v9];
    objc_storeStrong(&v11->_window, a5);
    v11->_distantScale = 0.01;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    animationCompletions = v11->_animationCompletions;
    v11->_animationCompletions = v18;

    if ([(SBIconAnimator *)v11 _isDelayedForRotation])
    {
      [(SBCenterAppIconZoomAnimator *)v11 _delayedForRotation];
    }
  }

  return v11;
}

- (void)_delayedForRotation
{
  [(UIView *)self->_appView setHidden:1];
  window = self->_window;
  appView = self->_appView;

  [(UIWindow *)window addSubview:appView];
}

- (void)_prepareAnimation
{
  [(UIView *)self->_appView setHidden:0];
  v28.receiver = self;
  v28.super_class = SBCenterAppIconZoomAnimator;
  [(SBCenterIconZoomAnimator *)&v28 _prepareAnimation];
  v3 = [(SBCenterIconZoomAnimator *)self zoomView];
  v4 = [(SBIconAnimator *)self referenceView];
  v5 = [(SBIconAnimator *)self settings];
  if ([v5 zoomViewBelowIcons])
  {
    appView = self->_appView;
    [v4 bounds];
    UIRectGetCenter();
    [v3 convertPoint:v4 fromView:?];
    [(UIView *)appView setCenter:?];
    [v3 insertSubview:self->_appView atIndex:0];
  }

  else
  {
    [v3 bounds];
    [v4 convertRect:v3 fromView:?];
    v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    appZoomView = self->_appZoomView;
    self->_appZoomView = v11;

    v13 = [(UIView *)self->_appZoomView layer];
    v14 = [v3 layer];
    v15 = v14;
    if (v14)
    {
      [v14 sublayerTransform];
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    [v13 setSublayerTransform:v27];

    [(UIView *)self->_appZoomView frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(UIView *)self->_appZoomView layer];
    v25 = [v3 layer];
    [v25 anchorPoint];
    [v24 setAnchorPoint:?];

    [(UIView *)self->_appZoomView setFrame:v17, v19, v21, v23];
    v26 = self->_appView;
    [v4 bounds];
    UIRectGetCenter();
    [(UIView *)v26 setCenter:?];
    [(UIView *)self->_appZoomView addSubview:self->_appView];
    [v4 addSubview:self->_appZoomView];
  }
}

- (void)_setAnimationFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = SBCenterAppIconZoomAnimator;
  [(SBCenterIconZoomAnimator *)&v5 _setAnimationFraction:?];
  [(SBCenterAppIconZoomAnimator *)self _zoomAppForZoomFraction:a3];
  [(SBCenterAppIconZoomAnimator *)self _translateAppForZoomFraction:a3];
  [(SBCenterAppIconZoomAnimator *)self _fadeAppForZoomFraction:a3];
}

- (void)_cleanupAnimation
{
  v23 = *MEMORY[0x277D85DE8];
  appView = self->_appView;
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v21[0] = *MEMORY[0x277CBF2C0];
  v21[1] = v4;
  v21[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)appView setTransform:v21];
  v5 = [(UIView *)self->_appView layer];
  [v5 setZPosition:0.0];

  [(UIView *)self->_appView removeFromSuperview];
  v6 = self->_appView;
  self->_appView = 0;

  [(UIView *)self->_appZoomView removeFromSuperview];
  appZoomView = self->_appZoomView;
  self->_appZoomView = 0;

  v8 = [(SBCenterAppIconZoomAnimator *)self animationCompletions];
  v9 = [v8 copy];

  if ([v9 count])
  {
    v10 = [(SBCenterAppIconZoomAnimator *)self animationCompletions];
    [v10 removeAllObjects];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v17 + 1) + 8 * v15++) + 16))();
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }
  }

  [(SBReversibleLayerPropertyAnimator *)self->_appZoomAnimator invalidate];
  [(SBCenterAppIconZoomAnimator *)self setAppZoomAnimator:0];
  v16.receiver = self;
  v16.super_class = SBCenterAppIconZoomAnimator;
  [(SBCenterIconZoomAnimator *)&v16 _cleanupAnimation];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = SBCenterAppIconZoomAnimator;
  return [(SBCenterIconZoomAnimator *)&v3 _numberOfSignificantAnimations]+ 2;
}

- (void)_performAnimationToFraction:(double)a3 withCentralAnimationSettings:(id)a4 delay:(double)a5 alreadyAnimating:(BOOL)a6 sharedCompletion:(id)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a7;
  v64.receiver = self;
  v64.super_class = SBCenterAppIconZoomAnimator;
  v52 = v12;
  [(SBCenterIconZoomAnimator *)&v64 _performAnimationToFraction:v12 withCentralAnimationSettings:v8 delay:v13 alreadyAnimating:a3 sharedCompletion:a5];
  [(SBCenterAppIconZoomAnimator *)self _appZoomDelay];
  v15 = v14 + a5;
  v16 = [(SBIconAnimator *)self settings];
  v17 = 4;
  if (!v8)
  {
    v17 = 0;
  }

  v53 = v17;
  if (v8)
  {
    v15 = 0.0;
  }

  v18 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] isRunningTest])
  {
    v19 = @"AppOpenCenterZoom";
    v20 = [*v18 isRunningTest:@"AppOpenCenterZoom"];
    v21 = *v18;
    if (v20)
    {
      v22 = @"workspaceActivate";
LABEL_10:
      [v21 finishedSubTest:v22 forTest:v19];
      goto LABEL_11;
    }

    v19 = @"AppCloseCenterZoom";
    if ([v21 isRunningTest:@"AppCloseCenterZoom"])
    {
      v21 = *v18;
      v22 = @"workspaceDeactivate";
      goto LABEL_10;
    }
  }

LABEL_11:
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __128__SBCenterAppIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke;
  v62[3] = &unk_2783A9C98;
  v62[4] = self;
  v51 = v13;
  v63 = v51;
  v23 = MEMORY[0x223D6F7F0](v62);
  v54 = v16;
  v24 = [v16 appZoomSettings];
  v25 = [v24 BSAnimationSettings];

  v26 = [v25 mutableCopy];
  [v26 delay];
  [v26 setDelay:v15 + v27];
  v28 = [(SBCenterAppIconZoomAnimator *)self animationCompletions];
  v55 = v23;
  v29 = MEMORY[0x223D6F7F0](v23);
  [v28 addObject:v29];

  ++self->_testCompletionCount;
  v30 = [(SBCenterAppIconZoomAnimator *)self appZoomAnimator];
  if (v30 && (v31 = v30, -[SBCenterAppIconZoomAnimator appZoomAnimator](self, "appZoomAnimator"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 hasReversed], v32, v31, (v33 & 1) == 0))
  {
    if (BSFloatIsOne())
    {
      v34 = [MEMORY[0x277CF0CF0] settingsWithMass:3.0 stiffness:1000.0 damping:500.0];
      v45 = [MEMORY[0x277D661A0] rootSettings];
      v46 = [v45 iconAnimationSettings];
      v47 = [v46 crossfadeAcceleratedSuspendSettings];
      v48 = [v47 centralAnimationSettings];
      v50 = [v48 BSAnimationSettings];

      v49 = [(SBCenterAppIconZoomAnimator *)self appZoomAnimator];
      [v49 reverseWithSettings:v34 directionChangeSettings:v50 headStart:0.0002];
    }

    else
    {
      v34 = [(SBCenterAppIconZoomAnimator *)self appZoomAnimator];
      [v34 reverse];
    }
  }

  else
  {
    [(SBCenterAppIconZoomAnimator *)self _appZPositionForZoomFraction:a3];
    v34 = [(UIView *)self->_appView layer];
    v35 = objc_alloc(MEMORY[0x277D66410]);
    [v34 zPosition];
    v36 = [v35 initWithLayer:v34 keyPath:@"zPosition" initialValue:? targetValue:?];
    [(SBCenterAppIconZoomAnimator *)self setAppZoomAnimator:v36];
    objc_initWeak(&location, self);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __128__SBCenterAppIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_2;
    v58[3] = &unk_2783ABB98;
    objc_copyWeak(&v60, &location);
    v37 = v36;
    v59 = v37;
    v38 = MEMORY[0x223D6F7F0](v58);
    [v37 animateWithSettings:v26 completion:v38];

    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  v39 = v54;

  v40 = [MEMORY[0x277CF0D38] factoryWithSettings:v25];
  if (!v8 || BSFloatIsZero())
  {
    [v40 setAllowsAdditiveAnimations:{1, v50}];
  }

  ++self->_testCompletionCount;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __128__SBCenterAppIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3;
  v57[3] = &unk_2783A8BC8;
  v57[4] = self;
  *&v57[5] = a3;
  [MEMORY[0x277CF0D38] animateWithFactory:v40 additionalDelay:v53 options:v57 actions:v55 completion:{v15, v50}];
  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    v41 = [v54 appFadeSettings];
    v42 = [v41 BSAnimationSettings];
    v43 = [v42 mutableCopy];

    if (v8)
    {
      [v43 setDelay:0.0];
    }

    v44 = [MEMORY[0x277CF0D38] factoryWithSettings:v43];
    if (!v8 || BSFloatIsZero())
    {
      [v44 setAllowsAdditiveAnimations:1];
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __128__SBCenterAppIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_6;
    v56[3] = &unk_2783A8BC8;
    v56[4] = self;
    *&v56[5] = a3;
    [MEMORY[0x277CF0D38] animateWithFactory:v44 additionalDelay:v53 options:v56 actions:0 completion:v15];

    v39 = v54;
  }
}

uint64_t __128__SBCenterAppIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke(uint64_t a1)
{
  if (!--*(*(a1 + 32) + 288))
  {
    v2 = MEMORY[0x277D76620];
    if ([*MEMORY[0x277D76620] isRunningTest])
    {
      v3 = @"AppOpenCenterZoom";
      v4 = [*v2 isRunningTest:@"AppOpenCenterZoom"];
      v5 = *v2;
      if (v4)
      {
        v6 = @"AppOpenCenterZoomAnimation";
      }

      else
      {
        v3 = @"AppCloseCenterZoom";
        if (![v5 isRunningTest:@"AppCloseCenterZoom"])
        {
          goto LABEL_8;
        }

        v5 = *v2;
        v6 = @"AppCloseCenterZoomAnimation";
      }

      [v5 finishedSubTest:v6 forTest:v3];
    }
  }

LABEL_8:
  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __128__SBCenterAppIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained appZoomAnimator];
  LODWORD(v1) = [v3 isEqual:*(v1 + 32)];

  if (v1)
  {
    [WeakRetained setAppZoomAnimator:0];
    v4 = [WeakRetained animationCompletions];
    v5 = [v4 copy];

    if ([v5 count])
    {
      v6 = [WeakRetained animationCompletions];
      [v6 removeAllObjects];

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }
  }
}

uint64_t __128__SBCenterAppIconZoomAnimator__performAnimationToFraction_withCentralAnimationSettings_delay_alreadyAnimating_sharedCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _translateAppForZoomFraction:*(a1 + 40)];
  v1 = MEMORY[0x277D76620];
  result = [*MEMORY[0x277D76620] isRunningTest];
  if (result)
  {
    v3 = [*v1 isRunningTest:@"AppOpenCenterZoom"];
    v4 = *v1;
    if (v3)
    {
      v5 = &__block_literal_global_382;
    }

    else
    {
      result = [v4 isRunningTest:@"AppCloseCenterZoom"];
      if (!result)
      {
        return result;
      }

      v4 = *v1;
      v5 = &__block_literal_global_42_7;
    }

    return [v4 installCACommitCompletionBlock:v5];
  }

  return result;
}

- (double)_iconZoomDelay
{
  v2 = [(SBIconAnimator *)self settings];
  [v2 appHeadStart];
  v4 = v3;

  return fmax(v4, 0.0);
}

- (CGPoint)cameraPosition
{
  v3 = [(SBIconAnimator *)self referenceView];
  UIRectGetCenter();
  v5 = v4;
  v7 = v6;
  v8 = [(SBCenterIconZoomAnimator *)self zoomView];
  [v3 convertPoint:v8 toView:{v5, v7}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (double)_appZoomDelay
{
  v2 = [(SBIconAnimator *)self settings];
  [v2 appHeadStart];
  v4 = v3;

  result = -v4;
  if (v4 >= 0.0)
  {
    return 0.0;
  }

  return result;
}

- (void)_zoomAppForZoomFraction:(double)a3
{
  [(SBCenterAppIconZoomAnimator *)self _appZPositionForZoomFraction:a3];
  v5 = v4;
  v6 = [(UIView *)self->_appView layer];
  [v6 setZPosition:v5];
}

- (void)_translateAppForZoomFraction:(double)a3
{
  [(UIView *)self->_appView center];
  v6 = v5;
  v8 = v7;
  [(SBCenterAppIconZoomAnimator *)self cameraPosition];
  appView = self->_appView;
  CGAffineTransformMakeTranslation(&v12, (v9 - v6) * a3, (v10 - v8) * a3);
  [(UIView *)appView setTransform:&v12];
}

- (void)initWithFolderController:(uint64_t)a1 appView:(uint64_t)a2 window:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCenterAppIconZoomAnimator.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"window"}];
}

@end