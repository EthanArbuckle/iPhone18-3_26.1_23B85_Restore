@interface SBReachabilityBackgroundView
- (SBReachabilityBackgroundView)initWithFrame:(CGRect)a3 wallpaperVariant:(int64_t)a4;
- (id)_newWallpaperViewForVariant:(int64_t)a3;
- (void)_invertColorsChanged:(id)a3;
- (void)_setupChevron;
- (void)_setupColorInvertObservation;
- (void)_setupCornerContentsImageForWallpaperView:(id)a3;
- (void)_setupHitTestBlockerView;
- (void)_setupHomeGrabberView;
- (void)_updateChevronPathForUpFraction:(double)a3;
- (void)_updateColorMatrixAlpha:(double)a3;
- (void)_updateColorMatrixFilters;
- (void)_updateWallpaperViewAnimated:(BOOL)a3;
- (void)_updateWallpaperViewFilters;
- (void)layoutSubviews;
- (void)setContainerViewYOffset:(double)a3;
- (void)setHomeGrabberAdditionalOffset:(double)a3;
- (void)setWallpaperVariant:(int64_t)a3;
@end

@implementation SBReachabilityBackgroundView

- (SBReachabilityBackgroundView)initWithFrame:(CGRect)a3 wallpaperVariant:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = SBReachabilityBackgroundView;
  v5 = [(SBReachabilityBackgroundView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperVariant = a4;
    [(SBReachabilityBackgroundView *)v5 _updateWallpaperViewAnimated:0];
    [(SBReachabilityBackgroundView *)v6 _setupChevron];
    [(SBReachabilityBackgroundView *)v6 _setupHomeGrabberView];
    [(SBReachabilityBackgroundView *)v6 _setupHitTestBlockerView];
    [(SBReachabilityBackgroundView *)v6 _setupColorInvertObservation];
    [(SBReachabilityBackgroundView *)v6 setHomeGrabberAlpha:0.0];
    [(SBReachabilityBackgroundView *)v6 setChevronAlpha:0.0];
    [(SBReachabilityBackgroundView *)v6 setAccessibilityIdentifier:@"reachability-window"];
    v7 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__SBReachabilityBackgroundView_initWithFrame_wallpaperVariant___block_invoke;
    v9[3] = &unk_2783A8C18;
    v10 = v6;
    [v7 _performWithoutRetargetingAnimations:v9];
  }

  return v6;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = SBReachabilityBackgroundView;
  [(SBReachabilityBackgroundView *)&v23 layoutSubviews];
  [(SBReachabilityBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_wallpaperContainerView setFrame:?];
  [(_SBAdaptiveColorMatrixView *)self->_colorMatrixView setFrame:v4, v6, v8, v10];
  topWallpaperView = self->_topWallpaperView;
  [(SBReachabilityBackgroundView *)self _displayCornerRadius];
  v13 = -(v10 - v12 * 2.0);
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v25 = CGRectOffset(v24, 0.0, v13);
  [(UIView *)topWallpaperView setFrame:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
  bottomWallpaperView = self->_bottomWallpaperView;
  [(SBReachabilityBackgroundView *)self _displayCornerRadius];
  v16 = v10 - v15 * 2.0;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v27 = CGRectOffset(v26, 0.0, v16);
  [(UIView *)bottomWallpaperView setFrame:v27.origin.x, v27.origin.y, v27.size.width, v27.size.height];
  homeGrabberView = self->_homeGrabberView;
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v29 = CGRectOffset(v28, 0.0, -self->_containerViewYOffset);
  [(SBHomeGrabberView *)homeGrabberView setFrame:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
  [(UIView *)self->_hitTestBlockerView setFrame:0.0, -self->_containerViewYOffset, v8];
  [(CAShapeLayer *)self->_chevronLayer setPosition:v8 * 0.5, -27.0];
  v18 = +[SBReachabilityDomain rootSettings];
  [v18 yOffset];
  v20 = v19;
  v21 = *MEMORY[0x277CF0B28];
  v22 = *(MEMORY[0x277CF0B28] + 16);
  BSUIConstrainValueToIntervalWithRubberBand();
  [(UIViewFloatAnimatableProperty *)self->_chevronShapeAnimatableProperty setValue:v21, v22];
  if (SBSIsSystemApertureAvailable())
  {
    [(UIViewFloatAnimatableProperty *)self->_colorMatrixOpacityAnimatableProperty setValue:fmax(fmin(self->_containerViewYOffset / v20 + 0.0, v20), 0.0)];
  }
}

- (void)setWallpaperVariant:(int64_t)a3
{
  if (self->_wallpaperVariant != a3)
  {
    self->_wallpaperVariant = a3;
    [(SBReachabilityBackgroundView *)self _updateWallpaperViewAnimated:1];
  }
}

- (void)setContainerViewYOffset:(double)a3
{
  if (self->_containerViewYOffset != a3)
  {
    self->_containerViewYOffset = a3;
    [(SBReachabilityBackgroundView *)self setNeedsLayout];

    [(SBReachabilityBackgroundView *)self layoutIfNeeded];
  }
}

- (void)setHomeGrabberAdditionalOffset:(double)a3
{
  if (self->_homeGrabberAdditionalOffset != a3)
  {
    self->_homeGrabberAdditionalOffset = a3;
    [(SBHomeGrabberView *)self->_homeGrabberView setNeedsLayout];
    homeGrabberView = self->_homeGrabberView;

    [(SBHomeGrabberView *)homeGrabberView layoutIfNeeded];
  }
}

- (id)_newWallpaperViewForVariant:(int64_t)a3
{
  if (SBSIsSystemApertureAvailable())
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(SBReachabilityBackgroundView *)self bounds];
    v5 = [v4 initWithFrame:?];
    v6 = [MEMORY[0x277D75348] blackColor];
    [(SBWallpaperEffectView *)v5 setBackgroundColor:v6];
  }

  else
  {
    v5 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:self->_wallpaperVariant];
    [(PBUIWallpaperEffectViewBase *)v5 setForcesOpaque:1];
    [(SBReachabilityBackgroundView *)self bounds];
    [(SBWallpaperEffectView *)v5 setFrame:?];
    [(PBUIWallpaperEffectViewBase *)v5 setStyle:15];
  }

  return v5;
}

- (void)_updateWallpaperViewAnimated:(BOOL)a3
{
  v22 = a3;
  v31[1] = *MEMORY[0x277D85DE8];
  if (!self->_wallpaperContainerView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    [(SBReachabilityBackgroundView *)self bounds];
    v5 = [v4 initWithFrame:?];
    wallpaperContainerView = self->_wallpaperContainerView;
    self->_wallpaperContainerView = v5;

    [(UIView *)self->_wallpaperContainerView bs_setHitTestingDisabled:1];
    [(SBReachabilityBackgroundView *)self addSubview:self->_wallpaperContainerView];
  }

  v7 = self->_topWallpaperView;
  v8 = self->_bottomWallpaperView;
  v9 = [(SBReachabilityBackgroundView *)self _newWallpaperViewForVariant:self->_wallpaperVariant];
  topWallpaperView = self->_topWallpaperView;
  self->_topWallpaperView = v9;

  v11 = [(SBReachabilityBackgroundView *)self _newWallpaperViewForVariant:self->_wallpaperVariant];
  bottomWallpaperView = self->_bottomWallpaperView;
  self->_bottomWallpaperView = v11;

  [(UIView *)self->_wallpaperContainerView addSubview:self->_topWallpaperView];
  [(UIView *)self->_wallpaperContainerView addSubview:self->_bottomWallpaperView];
  if (!self->_colorMatrixView && SBSIsSystemApertureAvailable())
  {
    v13 = [_SBAdaptiveColorMatrixView alloc];
    [(SBReachabilityBackgroundView *)self bounds];
    v14 = [(_SBAdaptiveColorMatrixView *)v13 initWithFrame:?];
    colorMatrixView = self->_colorMatrixView;
    self->_colorMatrixView = v14;

    v16 = self->_colorMatrixView;
    [(SBReachabilityBackgroundView *)self _displayCornerRadius];
    [(_SBAdaptiveColorMatrixView *)v16 _setCornerRadius:?];
    [(SBReachabilityBackgroundView *)self _updateColorMatrixFilters];
    [(SBReachabilityBackgroundView *)self _updateColorMatrixAlpha:0.0];
    objc_initWeak(&location, self);
    v17 = objc_alloc_init(MEMORY[0x277D75D38]);
    colorMatrixOpacityAnimatableProperty = self->_colorMatrixOpacityAnimatableProperty;
    self->_colorMatrixOpacityAnimatableProperty = v17;

    v19 = MEMORY[0x277D75D18];
    v31[0] = self->_colorMatrixOpacityAnimatableProperty;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __61__SBReachabilityBackgroundView__updateWallpaperViewAnimated___block_invoke;
    v28[3] = &unk_2783A8C68;
    objc_copyWeak(&v29, &location);
    [v19 _createTransformerWithInputAnimatableProperties:v20 presentationValueChangedCallback:v28];

    [(UIView *)self->_wallpaperContainerView addSubview:self->_colorMatrixView];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  [(SBReachabilityBackgroundView *)self _setupCornerContentsImageForWallpaperView:self->_topWallpaperView];
  [(SBReachabilityBackgroundView *)self _setupCornerContentsImageForWallpaperView:self->_bottomWallpaperView];
  [(SBReachabilityBackgroundView *)self _updateWallpaperViewFilters];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__SBReachabilityBackgroundView__updateWallpaperViewAnimated___block_invoke_2;
  v27[3] = &unk_2783A8C18;
  v27[4] = self;
  [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v27];
  if (v7 && v22)
  {
    [(UIView *)self->_topWallpaperView setAlpha:0.0];
    [(UIView *)self->_bottomWallpaperView setAlpha:0.0];
    v21 = MEMORY[0x277D75D18];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __61__SBReachabilityBackgroundView__updateWallpaperViewAnimated___block_invoke_3;
    v26[3] = &unk_2783A8C18;
    v26[4] = self;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __61__SBReachabilityBackgroundView__updateWallpaperViewAnimated___block_invoke_4;
    v23[3] = &unk_2783A8BF0;
    v24 = v7;
    v25 = v8;
    [v21 animateWithDuration:v26 animations:v23 completion:0.3];
  }

  else
  {
    [(UIView *)v7 removeFromSuperview];
    [(UIView *)v8 removeFromSuperview];
  }
}

void __61__SBReachabilityBackgroundView__updateWallpaperViewAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 53);
    if (v3)
    {
      v4 = v2;
      [v3 presentationValue];
      [v4 _updateColorMatrixAlpha:?];
      v2 = v4;
    }
  }
}

uint64_t __61__SBReachabilityBackgroundView__updateWallpaperViewAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __61__SBReachabilityBackgroundView__updateWallpaperViewAnimated___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 440);

  return [v2 setAlpha:1.0];
}

uint64_t __61__SBReachabilityBackgroundView__updateWallpaperViewAnimated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (void)_setupCornerContentsImageForWallpaperView:(id)a3
{
  v4 = a3;
  [(SBReachabilityBackgroundView *)self _displayCornerRadius];
  v6 = v5;
  if ((BSFloatIsZero() & 1) == 0)
  {
    [v4 bounds];
    v8 = v7;
    BSRectWithSize();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = objc_alloc(MEMORY[0x277D75560]);
    v18 = [MEMORY[0x277D75568] preferredFormat];
    v19 = [v17 initWithBounds:v18 format:{v10, v12, v14, v16}];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __74__SBReachabilityBackgroundView__setupCornerContentsImageForWallpaperView___block_invoke;
    v24[3] = &__block_descriptor_72_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v24[4] = v10;
    *&v24[5] = v12;
    *&v24[6] = v14;
    *&v24[7] = v16;
    v24[8] = v6;
    v20 = [v19 imageWithActions:v24];
    v21 = [v4 layer];
    [v21 setCornerRadius:v8 * 0.5];

    v22 = [v4 layer];
    [v22 setCornerContents:{objc_msgSend(v20, "CGImage")}];

    v23 = [v4 layer];
    [v23 setCornerCurve:*MEMORY[0x277CDA130]];
  }
}

void __74__SBReachabilityBackgroundView__setupCornerContentsImageForWallpaperView___block_invoke(double *a1)
{
  v9 = [MEMORY[0x277D75208] bezierPathWithRect:{a1[4], a1[5], a1[6], a1[7]}];
  v2 = MEMORY[0x277D75208];
  v11 = *(a1 + 1);
  v12 = CGRectOffset(v11, 0.0, v11.size.height - a1[8] * 2.0);
  v3 = [v2 bezierPathWithRoundedRect:v12.origin.x cornerRadius:{v12.origin.y, v12.size.width, v12.size.height, a1[8]}];
  v4 = [v3 bezierPathByReversingPath];
  [v9 appendPath:v4];

  v5 = MEMORY[0x277D75208];
  v13 = *(a1 + 1);
  v14 = CGRectOffset(v13, 0.0, -(v13.size.height - a1[8] * 2.0));
  v6 = [v5 bezierPathWithRoundedRect:v14.origin.x cornerRadius:{v14.origin.y, v14.size.width, v14.size.height, a1[8]}];
  v7 = [v6 bezierPathByReversingPath];
  [v9 appendPath:v7];

  v8 = [MEMORY[0x277D75348] blackColor];
  [v8 setFill];

  [v9 fill];
}

- (void)_setupChevron
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
  chevronLayer = self->_chevronLayer;
  self->_chevronLayer = v3;

  [(CAShapeLayer *)self->_chevronLayer setAnchorPoint:0.5, 1.0];
  [(CAShapeLayer *)self->_chevronLayer setCompositingFilter:*MEMORY[0x277CDA5E8]];
  v5 = self->_chevronLayer;
  v6 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.2];
  -[CAShapeLayer setStrokeColor:](v5, "setStrokeColor:", [v6 CGColor]);

  v7 = self->_chevronLayer;
  v8 = [MEMORY[0x277D75348] clearColor];
  -[CAShapeLayer setFillColor:](v7, "setFillColor:", [v8 CGColor]);

  [(CAShapeLayer *)self->_chevronLayer setLineWidth:5.0];
  [(CAShapeLayer *)self->_chevronLayer setLineCap:*MEMORY[0x277CDA780]];
  [(CAShapeLayer *)self->_chevronLayer setLineJoin:*MEMORY[0x277CDA7A0]];
  [(CAShapeLayer *)self->_chevronLayer setAllowsGroupBlending:0];
  v9 = [(SBReachabilityBackgroundView *)self layer];
  [v9 setAllowsGroupBlending:0];

  v10 = [(SBReachabilityBackgroundView *)self layer];
  [v10 addSublayer:self->_chevronLayer];

  objc_initWeak(&location, self);
  v11 = objc_alloc_init(MEMORY[0x277D75D38]);
  chevronShapeAnimatableProperty = self->_chevronShapeAnimatableProperty;
  self->_chevronShapeAnimatableProperty = v11;

  v13 = MEMORY[0x277D75D18];
  v18[0] = self->_chevronShapeAnimatableProperty;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__SBReachabilityBackgroundView__setupChevron__block_invoke;
  v15[3] = &unk_2783A8C68;
  objc_copyWeak(&v16, &location);
  [v13 _createTransformerWithInputAnimatableProperties:v14 presentationValueChangedCallback:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __45__SBReachabilityBackgroundView__setupChevron__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 60);
    if (v3)
    {
      v4 = v2;
      [v3 presentationValue];
      [v4 _updateChevronPathForUpFraction:?];
      v2 = v4;
    }
  }
}

- (void)_updateChevronPathForUpFraction:(double)a3
{
  v4 = a3 * 9.0;
  v7 = objc_alloc_init(MEMORY[0x277D75208]);
  [v7 moveToPoint:{-20.0, v4 * 0.5}];
  [v7 addCurveToPoint:20.0 controlPoint1:v4 * 0.5 controlPoint2:{6.66666667, v4 * -0.5, -6.66666667, v4 * -0.5}];
  chevronLayer = self->_chevronLayer;
  v6 = v7;
  -[CAShapeLayer setPath:](chevronLayer, "setPath:", [v7 CGPath]);
}

- (void)_setupHomeGrabberView
{
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v3 = [SBHomeGrabberView alloc];
    [(SBReachabilityBackgroundView *)self bounds];
    v4 = [(SBHomeGrabberView *)v3 initWithFrame:?];
    homeGrabberView = self->_homeGrabberView;
    self->_homeGrabberView = v4;

    [(SBHomeGrabberView *)self->_homeGrabberView setDelegate:self];
    [(SBHomeGrabberView *)self->_homeGrabberView setHomeAffordanceInteractionEnabled:0];
    v6 = self->_homeGrabberView;

    [(SBReachabilityBackgroundView *)self addSubview:v6];
  }
}

- (void)_setupHitTestBlockerView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [(SBReachabilityBackgroundView *)self bounds];
  v4 = [v3 initWithFrame:?];
  hitTestBlockerView = self->_hitTestBlockerView;
  self->_hitTestBlockerView = v4;

  v6 = self->_hitTestBlockerView;
  v7 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v6 setBackgroundColor:v7];

  v8 = [(UIView *)self->_hitTestBlockerView layer];
  [v8 setHitTestsAsOpaque:1];

  v9 = [(UIView *)self->_hitTestBlockerView layer];
  [v9 setAllowsHitTesting:1];

  v10 = self->_hitTestBlockerView;

  [(SBReachabilityBackgroundView *)self addSubview:v10];
}

- (void)_setupColorInvertObservation
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__invertColorsChanged_ name:*MEMORY[0x277D76480] object:0];
}

- (void)_updateColorMatrixAlpha:(double)a3
{
  if (SBSIsSystemApertureAvailable())
  {
    colorMatrixView = self->_colorMatrixView;

    [(_SBAdaptiveColorMatrixView *)colorMatrixView setAlpha:a3];
  }
}

- (void)_updateColorMatrixFilters
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (SBSIsSystemApertureAvailable())
  {
    v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v4 = +[SBReachabilityDomain rootSettings];
    v5 = [v4 jindoTintColorMatrixSettings];
    v6 = v5;
    if (v5)
    {
      [v5 colorMatrix];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
    }

    v14[2] = v17;
    v14[3] = v18;
    v14[4] = v19;
    v14[0] = v15;
    v14[1] = v16;
    v7 = [MEMORY[0x277CCAE60] valueWithBytes:v14 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];
    [v3 setValue:v7 forKey:@"inputColorMatrix"];

    v21[0] = v3;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    if ([(SBReachabilityBackgroundView *)self _invertColorsIsEnabled])
    {
      v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B0]];
      v20 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      v11 = [v10 arrayByAddingObjectsFromArray:v8];

      v8 = v11;
    }

    v12 = [(_SBAdaptiveColorMatrixView *)self->_colorMatrixView backdropLayer];
    [v12 setAllowsInPlaceFiltering:1];

    v13 = [(_SBAdaptiveColorMatrixView *)self->_colorMatrixView layer];
    [v13 setFilters:v8];
  }
}

- (void)_updateWallpaperViewFilters
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (SBSIsSystemApertureAvailable())
  {
    v3 = [(SBReachabilityBackgroundView *)self _invertColorsIsEnabled];
    v4 = [(UIView *)self->_topWallpaperView layer];
    v5 = v4;
    if (v3)
    {
      v6 = *MEMORY[0x277CDA2B0];
      v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B0]];
      v15[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      [v5 setFilters:v8];

      v9 = [(UIView *)self->_bottomWallpaperView layer];
      v10 = [MEMORY[0x277CD9EA0] filterWithType:v6];
      v14 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      [v9 setFilters:v11];
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
      [v4 setFilters:MEMORY[0x277CBEBF8]];

      v13 = [(UIView *)self->_bottomWallpaperView layer];
      [v13 setFilters:v12];
    }
  }
}

- (void)_invertColorsChanged:(id)a3
{
  [(SBReachabilityBackgroundView *)self _updateColorMatrixFilters];

  [(SBReachabilityBackgroundView *)self _updateWallpaperViewFilters];
}

@end