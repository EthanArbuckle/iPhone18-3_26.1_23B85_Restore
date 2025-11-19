@interface SBFluidSwitcherIconOverlayView
- (CGRect)crossfadeViewFrame;
- (SBFluidSwitcherIconOverlayView)initWithIconView:(id)a3 crossfadeViews:(id)a4 crossfadeViewFrame:(CGRect)a5 contentOrientation:(int64_t)a6 containerOrientation:(int64_t)a7;
- (double)_alphaForIconOverlayView:(id)a3 crossfadeFraction:(double)a4;
- (double)_currentFadeValue;
- (double)_iconOverlayScale;
- (void)_applyIconOverlayViewOverlayScaleProperties;
- (void)_setCrossfadeViewsAlpha:(double)a3;
- (void)_setUpIconCrossfadeAnimatableProperty;
- (void)_setUpIconCrossfadeView;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
@end

@implementation SBFluidSwitcherIconOverlayView

- (void)_setUpIconCrossfadeView
{
  [(SBSwitcherIconZooming *)self->_iconOverlayView setEnabled:0];
  [(UIView *)self->_iconOverlayContainerView addSubview:self->_iconOverlayView];
  x = self->_crossfadeViewFrame.origin.x;
  y = self->_crossfadeViewFrame.origin.y;
  width = self->_crossfadeViewFrame.size.width;
  height = self->_crossfadeViewFrame.size.height;
  v7 = [(BSUIOrientationTransformWrapperView *)self containerOrientation];
  v8 = ((v7 - 1) < 2) ^ (([(BSUIOrientationTransformWrapperView *)self contentOrientation]- 1) < 2);
  if (v8)
  {
    v9 = width;
  }

  else
  {
    v9 = height;
  }

  if (v8)
  {
    width = height;
  }

  v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, v9}];
  iconCrossfadeView = self->_iconCrossfadeView;
  self->_iconCrossfadeView = v10;

  [(SBSwitcherIconZooming *)self->_iconOverlayView sizeToFit];
  iconOverlayView = self->_iconOverlayView;
  v13 = self->_iconCrossfadeView;

  [(SBSwitcherIconZooming *)iconOverlayView prepareToCrossfadeImageWithView:v13];
}

- (void)_setUpIconCrossfadeAnimatableProperty
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  iconCrossfadeAnimatableProperty = self->_iconCrossfadeAnimatableProperty;
  self->_iconCrossfadeAnimatableProperty = v3;

  v5 = MEMORY[0x277D75D18];
  v12[0] = self->_iconCrossfadeAnimatableProperty;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBFluidSwitcherIconOverlayView__setUpIconCrossfadeAnimatableProperty__block_invoke;
  v9[3] = &unk_2783A8C68;
  objc_copyWeak(&v10, &location);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SBFluidSwitcherIconOverlayView__setUpIconCrossfadeAnimatableProperty__block_invoke_2;
  v7[3] = &unk_2783A9CE8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v5 _createTransformerWithInputAnimatableProperties:v6 modelValueSetter:v9 presentationValueSetter:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_applyIconOverlayViewOverlayScaleProperties
{
  [(SBFluidSwitcherIconOverlayView *)self _iconOverlayScale];
  v4 = v3;
  iconOverlayView = self->_iconOverlayView;
  CGAffineTransformMakeScale(&v7, v3, v3);
  [(SBSwitcherIconZooming *)iconOverlayView setTransform:&v7];
  [(SBSwitcherIconZooming *)self->_iconOverlayView setCrossfadeCornerRadius:self->_cornerRadius / v4];
  if ([(SBSwitcherIconZooming *)self->_iconOverlayView shouldClipToBoundsWhenSizeChanges])
  {
    [(SBSwitcherIconZooming *)self->_iconOverlayView iconImageFrame];
    v6 = BSSizeEqualToSize() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  [(SBFluidSwitcherIconOverlayView *)self setClipsToBounds:v6];
  [(SBFluidSwitcherIconOverlayView *)self _setContinuousCornerRadius:self->_cornerRadius];
}

- (double)_iconOverlayScale
{
  [(UIView *)self->_iconOverlayContainerView bounds];
  [(SBFluidSwitcherIconOverlayView *)self _currentFadeValue];
  iconOverlayView = self->_iconOverlayView;

  [SBSwitcherIconZooming scaleForFadeValue:"scaleForFadeValue:originalSize:containerSize:" originalSize:? containerSize:?];
  return result;
}

- (double)_currentFadeValue
{
  [(SBFluidSwitcherIconOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  width = self->_initialIconOverlayViewBounds.size.width;
  height = self->_initialIconOverlayViewBounds.size.height;
  v9 = [(BSUIOrientationTransformWrapperView *)self containerOrientation];
  v10 = ((v9 - 1) < 2) ^ (([(BSUIOrientationTransformWrapperView *)self contentOrientation]- 1) < 2);
  if (v10)
  {
    v11 = width;
  }

  else
  {
    v11 = height;
  }

  if (v10)
  {
    v12 = height;
  }

  else
  {
    v12 = width;
  }

  v13 = v12 / v11;
  v14 = 1.0;
  if (v11 == 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = v13;
  }

  v16 = self->_crossfadeViewFrame.size.height;
  if (v16 == 0.0)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = self->_crossfadeViewFrame.size.width / v16;
  }

  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v18 = v4 / v6;
    if (v6 == 0.0)
    {
      v18 = v15;
    }

    return (v18 - v15) / (v17 - v15) + 0.0;
  }

  return v14;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = SBFluidSwitcherIconOverlayView;
  [(BSUIOrientationTransformWrapperView *)&v19 layoutSubviews];
  [(SBFluidSwitcherIconOverlayView *)self _applyIconOverlayViewOverlayScaleProperties];
  [(SBFluidSwitcherIconOverlayView *)self _currentFadeValue];
  v4 = v3;
  [(SBSwitcherIconZooming *)self->_iconOverlayView setMorphFraction:?];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__SBFluidSwitcherIconOverlayView_layoutSubviews__block_invoke;
  v18[3] = &unk_2783A8BC8;
  v18[4] = self;
  *&v18[5] = v4;
  LODWORD(v5) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v6) = *(MEMORY[0x277CD9DD0] + 8);
  [MEMORY[0x277D75D18] sb_modifyAnimationsWithPreferredFrameRateRange:0 updateReason:v18 animations:{COERCE_DOUBLE(*MEMORY[0x277CD9DD0]), v5, v6}];
  [(SBSwitcherIconZooming *)self->_iconOverlayView sizeToFit];
  [(UIView *)self->_iconOverlayContainerView bounds];
  UIRectGetCenter();
  v8 = v7;
  v10 = v9;
  [(SBSwitcherIconZooming *)self->_iconOverlayView bounds];
  v12 = (v11 - self->_initialIconOverlayViewBounds.size.height) * 0.5;
  v13 = [(SBSwitcherIconZooming *)self->_iconOverlayView iconImageAlignment];
  v14 = -v12;
  v15 = 0.0;
  if (v13)
  {
    v15 = v12;
  }

  if (v13 == 2)
  {
    v16 = -v12;
  }

  else
  {
    v16 = v15;
  }

  [(SBFluidSwitcherIconOverlayView *)self _iconOverlayScale:v14];
  [(SBSwitcherIconZooming *)self->_iconOverlayView setCenter:v8, v10 + (1.0 - v4) * (v16 * v17)];
}

void __71__SBFluidSwitcherIconOverlayView__setUpIconCrossfadeAnimatableProperty__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[68];
    if (v3)
    {
      v6 = v2;
      [v3 value];
      v5 = v4;
      [v6 _setCrossfadeViewsAlpha:?];
      [v6 _alphaForIconOverlayView:v6[55] crossfadeFraction:v5];
      [v6[55] setAlpha:?];
      v2 = v6;
    }
  }
}

void __71__SBFluidSwitcherIconOverlayView__setUpIconCrossfadeAnimatableProperty__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 134);
    v4 = *&v3[136]._os_unfair_lock_opaque;
    v5 = *&v3[124]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3 + 134);
    if (v4)
    {
      [v4 value];
      v7 = v6;
      [v4 presentationValue];
      v9 = (v8 + -0.15) / 0.45;
      v10 = v9 <= 0.0 ? 0.0 : v9 + 0.0;
      if (v7 == 0.0)
      {
        [*(*(a1 + 32) + 440) adjustedCrossfadeProgressForCrossfadeProgress:{v8, v10}];
      }

      else
      {
        v11 = fmin(v10, 1.0);
      }

      *&v11 = v11;
      [*&v3[138]._os_unfair_lock_opaque _solveForInput:v11];
      v13 = 1.0 - v12;
      v14 = *&v3[110]._os_unfair_lock_opaque;
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v14 _setPresentationValue:v15 forKey:@"opacity"];

      if (v5)
      {
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v5 = v5;
        v16 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = fmin(fmax((v13 + -0.9) / -0.1 + 1.0, 0.0), 1.0);
          v19 = *v24;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v24 != v19)
              {
                objc_enumerationMutation(v5);
              }

              v21 = *(*(&v23 + 1) + 8 * i);
              v22 = [MEMORY[0x277CCABB0] numberWithDouble:{v18, v23}];
              [v21 _setPresentationValue:v22 forKey:@"opacity"];
            }

            v17 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v17);
        }
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }
}

- (void)invalidate
{
  iconCrossfadeAnimatableProperty = self->_iconCrossfadeAnimatableProperty;
  if (iconCrossfadeAnimatableProperty)
  {
    [(UIViewFloatAnimatableProperty *)iconCrossfadeAnimatableProperty invalidate];
    os_unfair_lock_lock(&self->_iconCrossfadeC2ThreadLock);
    v4 = self->_iconCrossfadeAnimatableProperty;
    self->_iconCrossfadeAnimatableProperty = 0;

    os_unfair_lock_unlock(&self->_iconCrossfadeC2ThreadLock);
  }

  [(SBSwitcherIconZooming *)self->_iconOverlayView cleanUpAfterCrossfadeCompletion];
  [(SBFluidSwitcherIconOverlayView *)self _setCrossfadeViewsAlpha:1.0];
  os_unfair_lock_lock(&self->_iconCrossfadeC2ThreadLock);
  crossfadeViews = self->_crossfadeViews;
  self->_crossfadeViews = 0;

  os_unfair_lock_unlock(&self->_iconCrossfadeC2ThreadLock);
}

- (void)dealloc
{
  [(SBFluidSwitcherIconOverlayView *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherIconOverlayView;
  [(SBFluidSwitcherIconOverlayView *)&v3 dealloc];
}

- (SBFluidSwitcherIconOverlayView)initWithIconView:(id)a3 crossfadeViews:(id)a4 crossfadeViewFrame:(CGRect)a5 contentOrientation:(int64_t)a6 containerOrientation:(int64_t)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = a3;
  v18 = a4;
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBFluidSwitcherIconOverlayView initWithIconView:a2 crossfadeViews:self crossfadeViewFrame:? contentOrientation:? containerOrientation:?];
    if (v19)
    {
      goto LABEL_3;
    }
  }

  [SBFluidSwitcherIconOverlayView initWithIconView:a2 crossfadeViews:self crossfadeViewFrame:? contentOrientation:? containerOrientation:?];
LABEL_3:
  v36.receiver = self;
  v36.super_class = SBFluidSwitcherIconOverlayView;
  v20 = [(SBFluidSwitcherIconOverlayView *)&v36 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_iconOverlayView, a3);
    [v17 bounds];
    v21->_initialIconOverlayViewBounds.origin.x = v22;
    v21->_initialIconOverlayViewBounds.origin.y = v23;
    v21->_initialIconOverlayViewBounds.size.width = v24;
    v21->_initialIconOverlayViewBounds.size.height = v25;
    v26 = [v19 copy];
    crossfadeViews = v21->_crossfadeViews;
    v21->_crossfadeViews = v26;

    v21->_crossfadeViewFrame.origin.x = x;
    v21->_crossfadeViewFrame.origin.y = y;
    v21->_crossfadeViewFrame.size.width = width;
    v21->_crossfadeViewFrame.size.height = height;
    v35.receiver = v21;
    v35.super_class = SBFluidSwitcherIconOverlayView;
    [(BSUIOrientationTransformWrapperView *)&v35 setContentOrientation:a6];
    v34.receiver = v21;
    v34.super_class = SBFluidSwitcherIconOverlayView;
    [(BSUIOrientationTransformWrapperView *)&v34 setContainerOrientation:a7];
    [(SBFluidSwitcherIconOverlayView *)v21 setUserInteractionEnabled:0];
    v21->_iconCrossfadeC2ThreadLock._os_unfair_lock_opaque = 0;
    v28 = objc_alloc(MEMORY[0x277D75D18]);
    [(SBFluidSwitcherIconOverlayView *)v21 bounds];
    v29 = [v28 initWithFrame:?];
    iconOverlayContainerView = v21->_iconOverlayContainerView;
    v21->_iconOverlayContainerView = v29;

    [(UIView *)v21->_iconOverlayContainerView setUserInteractionEnabled:0];
    [(BSUIOrientationTransformWrapperView *)v21 addContentView:v21->_iconOverlayContainerView];
    [(SBFluidSwitcherIconOverlayView *)v21 _setUpIconCrossfadeView];
    v31 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7A8]];
    iconCrossfadeTimingFunction = v21->_iconCrossfadeTimingFunction;
    v21->_iconCrossfadeTimingFunction = v31;

    [(SBFluidSwitcherIconOverlayView *)v21 _setUpIconCrossfadeAnimatableProperty];
  }

  return v21;
}

- (CGRect)crossfadeViewFrame
{
  x = self->_crossfadeViewFrame.origin.x;
  y = self->_crossfadeViewFrame.origin.y;
  width = self->_crossfadeViewFrame.size.width;
  height = self->_crossfadeViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(SBFluidSwitcherIconOverlayView *)self _applyIconOverlayViewOverlayScaleProperties];
  }
}

- (void)_setCrossfadeViewsAlpha:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_crossfadeViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAlpha:{a3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (double)_alphaForIconOverlayView:(id)a3 crossfadeFraction:(double)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 1.0 - a4;
  v10 = v8;

  if (v10)
  {
    v11 = [v10 icon];
    v12 = objc_opt_class();
    v13 = v11;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v13;
      }

      else
      {
        v12 = 0;
      }
    }

    v14 = 0.011;
    if (v9 >= 0.011)
    {
      v14 = v9;
    }

    if (v12)
    {
      v9 = v14;
    }
  }

  return v9;
}

- (void)initWithIconView:(uint64_t)a1 crossfadeViews:(uint64_t)a2 crossfadeViewFrame:contentOrientation:containerOrientation:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherIconOverlayView.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"iconView"}];
}

- (void)initWithIconView:(uint64_t)a1 crossfadeViews:(uint64_t)a2 crossfadeViewFrame:contentOrientation:containerOrientation:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherIconOverlayView.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"crossfadeViews"}];
}

@end