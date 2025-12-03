@interface SBAppSwitcherPageShadowView
- (SBAppSwitcherPageShadowView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)_applyPrototypeSettingsToConstants;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_updateShadowParameters;
- (void)_updateShadowViews;
- (void)setHighlightType:(unint64_t)type;
- (void)setShadowOffset:(double)offset;
- (void)setShadowPath:(id)path;
- (void)setStyle:(int64_t)style;
- (void)setSwitcherCardScale:(double)scale;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBAppSwitcherPageShadowView

- (void)_updateShadowParameters
{
  v38[1] = *MEMORY[0x277D85DE8];
  _diffuseShadowView = [(SBAppSwitcherPageShadowView *)self _diffuseShadowView];
  _rimShadowView = [(SBAppSwitcherPageShadowView *)self _rimShadowView];
  highlightType = self->_highlightType;
  v6 = MEMORY[0x277CBF3A8];
  if (highlightType > 2)
  {
    v7 = 0.0;
    v10 = 0.0;
    v9 = MEMORY[0x277CBF3A8];
  }

  else
  {
    v7 = *(&self->super.super.super.super.isa + *off_2783A9410[highlightType]);
    v8 = *(&self->super.super.super.super.isa + *off_2783A9428[highlightType]);
    v9 = (self + *off_2783A9440[highlightType]);
    v10 = v8;
  }

  v12 = *v9;
  v11 = v9[1];
  layer = [_diffuseShadowView layer];
  [layer setShadowRadius:v7];

  layer2 = [_diffuseShadowView layer];
  *&v15 = v10;
  [layer2 setShadowOpacity:v15];

  userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  shadowOffset = self->_shadowOffset;
  if (userInterfaceLayoutDirection == 1)
  {
    shadowOffset = -shadowOffset;
  }

  v18 = v12 * shadowOffset;
  layer3 = [_diffuseShadowView layer];
  [layer3 setShadowOffset:{v18, v11}];

  layer4 = [_rimShadowView layer];
  [layer4 setShadowRadius:self->_rimShadowRadius];

  layer5 = [_rimShadowView layer];
  rimShadowOpacity = self->_rimShadowOpacity;
  *&rimShadowOpacity = rimShadowOpacity;
  [layer5 setShadowOpacity:rimShadowOpacity];

  layer6 = [_rimShadowView layer];
  [layer6 setShadowOffset:{*v6, v6[1]}];

  if (self->_style == 2 && (-[SBAppSwitcherPageShadowView traitCollection](self, "traitCollection"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 userInterfaceStyle], v24, v25 == 2))
  {
    v26 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
    v27 = MEMORY[0x277CCAE60];
    medusaSettings = self->_medusaSettings;
    if (medusaSettings)
    {
      [(SBMedusaSettings *)medusaSettings coronaVibrantColorMatrixInput];
    }

    else
    {
      memset(v36, 0, sizeof(v36));
    }

    v31 = [v27 valueWithCAColorMatrix:v36];
    [v26 setValue:v31 forKey:@"inputColorMatrix"];

    layer7 = [_diffuseShadowView layer];
    v38[0] = v26;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    [layer7 setFilters:v33];

    layer8 = [_rimShadowView layer];
    v37 = v26;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [layer8 setFilters:v35];
  }

  else
  {
    layer9 = [_diffuseShadowView layer];
    [layer9 setFilters:0];

    layer10 = [_rimShadowView layer];
    [layer10 setFilters:0];
  }
}

- (void)_updateShadowViews
{
  [(SBAppSwitcherPageShadowView *)self _continuousCornerRadius];
  v4 = v3;
  rimShadowView = self->_rimShadowView;
  if (self->_style == 2)
  {
    if (!rimShadowView)
    {
      v6 = objc_alloc(MEMORY[0x277D65FB0]);
      [(SBAppSwitcherPageShadowView *)self bounds];
      v7 = [v6 initWithFrame:?];
      v8 = self->_rimShadowView;
      self->_rimShadowView = v7;

      [(SBFView *)self->_rimShadowView setAutoresizingMask:18];
      [(SBFView *)self->_rimShadowView setAnimatedLayerProperties:&unk_28336DB00];
      [(SBFView *)self->_rimShadowView _setContinuousCornerRadius:v4];
      [(SBAppSwitcherPageShadowView *)self addSubview:self->_rimShadowView];
    }
  }

  else if (rimShadowView)
  {
    [(SBFView *)rimShadowView removeFromSuperview];
    v9 = self->_rimShadowView;
    self->_rimShadowView = 0;
  }

  if (!self->_diffuseShadowView)
  {
    v10 = objc_alloc(MEMORY[0x277D65FB0]);
    [(SBAppSwitcherPageShadowView *)self bounds];
    v11 = [v10 initWithFrame:?];
    diffuseShadowView = self->_diffuseShadowView;
    self->_diffuseShadowView = v11;

    [(SBFView *)self->_diffuseShadowView setAutoresizingMask:18];
    [(SBFView *)self->_diffuseShadowView setAnimatedLayerProperties:&unk_28336DB18];
    [(SBFView *)self->_diffuseShadowView _setContinuousCornerRadius:v4];
    [(SBAppSwitcherPageShadowView *)self addSubview:self->_diffuseShadowView];
  }

  v13 = self->_rimShadowView;
  if (v13)
  {
    layer = [(SBFView *)v13 layer];
    [layer setShadowPathIsBounds:self->_shadowPath == 0];

    if (self->_shadowPath)
    {
      layer2 = [(SBFView *)self->_rimShadowView layer];
      [layer2 setShadowPath:{-[UIBezierPath CGPath](self->_shadowPath, "CGPath")}];
    }
  }

  layer3 = [(SBFView *)self->_diffuseShadowView layer];
  [layer3 setShadowPathIsBounds:self->_shadowPath == 0];

  if (self->_shadowPath)
  {
    layer4 = [(SBFView *)self->_diffuseShadowView layer];
    [layer4 setShadowPath:{-[UIBezierPath CGPath](self->_shadowPath, "CGPath")}];
  }
}

- (void)_applyPrototypeSettingsToConstants
{
  traitCollection = [(SBAppSwitcherPageShadowView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  [(SBMedusaSettings *)self->_medusaSettings rimShadowRadius];
  self->_rimShadowRadius = v5;
  medusaSettings = self->_medusaSettings;
  if (userInterfaceStyle == 2)
  {
    [(SBMedusaSettings *)medusaSettings coronaRimShadowOpacity];
  }

  else
  {
    [(SBMedusaSettings *)medusaSettings rimShadowOpacity];
  }

  self->_rimShadowOpacity = v7;
  style = self->_style;
  if (style > 3)
  {
    if (style == 4)
    {
      [(SBMedusaSettings *)self->_medusaSettings switcherPeekingWindowShadowRadius];
      self->_diffuseShadowRadius = v37;
      p_diffuseShadowOffset = &self->_diffuseShadowOffset;
      [(SBMedusaSettings *)self->_medusaSettings switcherPeekingWindowShadowOffsetY];
      self->_diffuseShadowOffset.width = 0.0;
      self->_diffuseShadowOffset.height = v38;
      [(SBMedusaSettings *)self->_medusaSettings switcherPeekingWindowShadowOpacity];
      goto LABEL_15;
    }

    if (style != 5)
    {
      goto LABEL_11;
    }

    windowingSettings = [(SBAppSwitcherSettings *)self->_switcherSettings windowingSettings];
    [windowingSettings rimShadowOpacity];
    self->_rimShadowOpacity = v18;
    [windowingSettings rimShadowRadius];
    self->_rimShadowRadius = v19;
    [windowingSettings diffuseShadowOpacity];
    self->_diffuseShadowOpacity = v20;
    [windowingSettings diffuseShadowRadius];
    self->_diffuseShadowRadius = v21;
    [windowingSettings diffuseShadowOffset];
    self->_diffuseShadowOffset.width = v22;
    self->_diffuseShadowOffset.height = v23;
    self->_diffuseShadowRadiusWhileTouched = self->_diffuseShadowRadius;
    self->_diffuseShadowOffsetWhileTouched = self->_diffuseShadowOffset;
    self->_diffuseShadowOpacityWhileTouched = self->_diffuseShadowOpacity;
  }

  else
  {
    if (style != 2)
    {
      if (style == 3)
      {
        [(SBMedusaSettings *)self->_medusaSettings switcherShelfCardShadowRadius];
        v10 = v9;
        [(SBMedusaSettings *)self->_medusaSettings switcherShelfCardScale];
        self->_diffuseShadowRadius = v10 / v11;
        p_diffuseShadowOffset = &self->_diffuseShadowOffset;
        [(SBMedusaSettings *)self->_medusaSettings switcherShelfCardShadowOffsetY];
        v14 = v13;
        [(SBMedusaSettings *)self->_medusaSettings switcherShelfCardScale];
        self->_diffuseShadowOffset.width = 0.0;
        self->_diffuseShadowOffset.height = v14 / v15;
        [(SBMedusaSettings *)self->_medusaSettings switcherShelfCardShadowOpacity];
LABEL_15:
        self->_diffuseShadowOpacity = v16;
        self->_diffuseShadowRadiusWhileTouched = self->_diffuseShadowRadius;
        self->_diffuseShadowOffsetWhileTouched = *p_diffuseShadowOffset;
        self->_diffuseShadowOpacityWhileTouched = self->_diffuseShadowOpacity;
        goto LABEL_21;
      }

LABEL_11:
      [(SBAppSwitcherSettings *)self->_switcherSettings switcherCardShadowRadius];
      self->_diffuseShadowRadius = v24;
      [(SBAppSwitcherSettings *)self->_switcherSettings switcherCardShadowOpacity];
      self->_diffuseShadowOpacity = v25;
      [(SBAppSwitcherSettings *)self->_switcherSettings switcherCardShadowOffsetHorizontal];
      v27 = v26;
      [(SBAppSwitcherSettings *)self->_switcherSettings switcherCardShadowOffsetVertical];
      self->_diffuseShadowOffset.width = v27;
      self->_diffuseShadowOffset.height = v28;
      [(SBAppSwitcherSettings *)self->_switcherSettings switcherCardShadowRadiusWhileTouched];
      self->_diffuseShadowRadiusWhileTouched = v29;
      [(SBAppSwitcherSettings *)self->_switcherSettings switcherCardShadowOpacityWhileTouched];
      self->_diffuseShadowOpacityWhileTouched = v30;
      [(SBAppSwitcherSettings *)self->_switcherSettings switcherCardShadowOffsetHorizontalWhileTouched];
      v32 = v31;
      [(SBAppSwitcherSettings *)self->_switcherSettings switcherCardShadowOffsetVerticalWhileTouched];
      self->_diffuseShadowOffsetWhileTouched.width = v32;
      self->_diffuseShadowOffsetWhileTouched.height = v33;
      goto LABEL_21;
    }

    [(SBMedusaSettings *)self->_medusaSettings diffuseShadowRadius];
    self->_diffuseShadowRadius = v34;
    v35 = self->_medusaSettings;
    if (userInterfaceStyle == 2)
    {
      [(SBMedusaSettings *)v35 coronaDiffuseShadowOpacity];
    }

    else
    {
      [(SBMedusaSettings *)v35 diffuseShadowOpacity];
    }

    self->_diffuseShadowOpacity = v36;
    [(SBMedusaSettings *)self->_medusaSettings diffuseShadowOffsetHorizontal];
    v40 = v39;
    [(SBMedusaSettings *)self->_medusaSettings diffuseShadowOffsetVertical];
    self->_diffuseShadowOffset.width = v40;
    self->_diffuseShadowOffset.height = v41;
    [(SBMedusaSettings *)self->_medusaSettings diffuseShadowRadiusWhileTouched];
    self->_diffuseShadowRadiusWhileTouched = v42;
    v43 = self->_medusaSettings;
    if (userInterfaceStyle == 2)
    {
      [(SBMedusaSettings *)v43 coronaDiffuseShadowOpacityWhileTouched];
    }

    else
    {
      [(SBMedusaSettings *)v43 diffuseShadowOpacityWhileTouched];
    }

    self->_diffuseShadowOpacityWhileTouched = v44;
    [(SBMedusaSettings *)self->_medusaSettings diffuseShadowOffsetHorizontalWhileTouched];
    v46 = v45;
    [(SBMedusaSettings *)self->_medusaSettings diffuseShadowOffsetVerticalWhileTouched];
    self->_diffuseShadowOffsetWhileTouched.width = v46;
    self->_diffuseShadowOffsetWhileTouched.height = v47;
  }

LABEL_21:
  [(SBAppSwitcherSettings *)self->_switcherSettings cursorHoverShadowRadiusInterpolationAmount];
  self->_diffuseShadowRadiusWhileCursorHovered = v48 * self->_diffuseShadowRadiusWhileTouched + (1.0 - v48) * self->_diffuseShadowRadius;
  [(SBAppSwitcherSettings *)self->_switcherSettings cursorHoverShadowOpacityInterpolationAmount];
  self->_diffuseShadowOpacityWhileCursorHovered = v49 * self->_diffuseShadowOpacityWhileTouched + (1.0 - v49) * self->_diffuseShadowOpacity;
  [(SBAppSwitcherSettings *)self->_switcherSettings cursorHoverShadowOffsetInterpolationAmount];
  self->_diffuseShadowOffsetWhileCursorHovered = vmlaq_n_f64(vmulq_n_f64(self->_diffuseShadowOffsetWhileTouched, v50), self->_diffuseShadowOffset, 1.0 - v50);
}

- (SBAppSwitcherPageShadowView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v13.receiver = self;
  v13.super_class = SBAppSwitcherPageShadowView;
  v5 = [(SBAppSwitcherPageShadowView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    v5->_switcherCardScale = 1.0;
    v7 = +[SBAppSwitcherDomain rootSettings];
    switcherSettings = v6->_switcherSettings;
    v6->_switcherSettings = v7;

    [(PTSettings *)v6->_switcherSettings addKeyObserver:v6];
    v9 = +[SBMedusaDomain rootSettings];
    medusaSettings = v6->_medusaSettings;
    v6->_medusaSettings = v9;

    [(PTSettings *)v6->_medusaSettings addKeyObserver:v6];
    [(SBFView *)v6 setAnimatedLayerProperties:&unk_28336DAE8];
    layer = [(SBAppSwitcherPageShadowView *)v6 layer];
    [layer setShadowPathIsBounds:1];

    [(SBAppSwitcherPageShadowView *)v6 _updateShadowViews];
    [(SBAppSwitcherPageShadowView *)v6 _applyPrototypeSettingsToConstants];
    [(SBAppSwitcherPageShadowView *)v6 _updateShadowParameters];
  }

  return v6;
}

- (void)setHighlightType:(unint64_t)type
{
  if (self->_highlightType != type)
  {
    self->_highlightType = type;
    [(SBAppSwitcherPageShadowView *)self _updateShadowParameters];
  }
}

- (void)setSwitcherCardScale:(double)scale
{
  if (self->_switcherCardScale != scale)
  {
    self->_switcherCardScale = scale;
    [(SBAppSwitcherPageShadowView *)self _applyPrototypeSettingsToConstants];

    [(SBAppSwitcherPageShadowView *)self _updateShadowParameters];
  }
}

- (void)setStyle:(int64_t)style
{
  if (!style)
  {
    [(SBAppSwitcherPageShadowView *)self setStyle:a2];
  }

  if (self->_style != style)
  {
    self->_style = style;
    [(SBAppSwitcherPageShadowView *)self _updateShadowViews];
    [(SBAppSwitcherPageShadowView *)self _applyPrototypeSettingsToConstants];

    [(SBAppSwitcherPageShadowView *)self _updateShadowParameters];
  }
}

- (void)setShadowOffset:(double)offset
{
  if (self->_shadowOffset != offset)
  {
    self->_shadowOffset = offset;
    [(SBAppSwitcherPageShadowView *)self _updateShadowParameters];
  }
}

- (void)setShadowPath:(id)path
{
  pathCopy = path;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_shadowPath, path);
    [(SBAppSwitcherPageShadowView *)self _updateShadowViews];
  }
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = SBAppSwitcherPageShadowView;
  [(SBAppSwitcherPageShadowView *)&v5 _setContinuousCornerRadius:?];
  [(SBFView *)self->_diffuseShadowView _setContinuousCornerRadius:radius];
  [(SBFView *)self->_rimShadowView _setContinuousCornerRadius:radius];
}

- (void)traitCollectionDidChange:(id)change
{
  userInterfaceStyle = [change userInterfaceStyle];
  traitCollection = [(SBAppSwitcherPageShadowView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(SBAppSwitcherPageShadowView *)self _applyPrototypeSettingsToConstants];

    [(SBAppSwitcherPageShadowView *)self _updateShadowParameters];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_switcherSettings == settings || self->_medusaSettings == settings)
  {
    [(SBAppSwitcherPageShadowView *)self _applyPrototypeSettingsToConstants];

    [(SBAppSwitcherPageShadowView *)self _updateShadowParameters];
  }
}

- (void)setStyle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"SBAppSwitcherPageShadowView.m" lineNumber:93 description:{@"%@ shouldn't be created for SBAppSwitcherPageShadowStyleNone", v5}];
}

@end