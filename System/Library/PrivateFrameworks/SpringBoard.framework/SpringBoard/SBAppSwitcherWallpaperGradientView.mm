@interface SBAppSwitcherWallpaperGradientView
- (SBAppSwitcherWallpaperGradientView)initWithPrivateStyle:(int64_t)style;
- (SBSwitcherWallpaperGradientAttributes)attributes;
- (void)_updateGradientColors;
- (void)layoutSubviews;
- (void)setAttributes:(SBSwitcherWallpaperGradientAttributes)attributes;
- (void)setBounds:(CGRect)bounds;
- (void)setCornerRadii:(CACornerRadii *)radii;
@end

@implementation SBAppSwitcherWallpaperGradientView

- (SBAppSwitcherWallpaperGradientView)initWithPrivateStyle:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = SBAppSwitcherWallpaperGradientView;
  v3 = [(_UIBackdropView *)&v11 initWithPrivateStyle:style];
  v4 = v3;
  if (v3)
  {
    v3->_attributes.leadingAlpha = SBSwitcherWallpaperGradientAttributesMakeEmpty();
    v4->_attributes.trailingAlpha = v5;
    v6 = objc_alloc_init(MEMORY[0x277CD9EB0]);
    gradientLayer = v4->_gradientLayer;
    v4->_gradientLayer = v6;

    [(CAGradientLayer *)v4->_gradientLayer setType:*MEMORY[0x277CDA690]];
    [(CAGradientLayer *)v4->_gradientLayer setLocations:&unk_28336F150];
    [(CAGradientLayer *)v4->_gradientLayer setStartPoint:0.0, 0.5];
    [(CAGradientLayer *)v4->_gradientLayer setEndPoint:1.0, 0.5];
    [(CAGradientLayer *)v4->_gradientLayer setCompositingFilter:*MEMORY[0x277CDA310]];
    [(SBAppSwitcherWallpaperGradientView *)v4 _updateGradientColors];
    effectView = [(_UIBackdropView *)v4 effectView];
    layer = [effectView layer];
    [layer addSublayer:v4->_gradientLayer];
  }

  return v4;
}

- (void)setAttributes:(SBSwitcherWallpaperGradientAttributes)attributes
{
  trailingAlpha = attributes.trailingAlpha;
  leadingAlpha = attributes.leadingAlpha;
  p_attributes = &self->_attributes;
  if ((SBSwitcherWallpaperGradientAttributesEqual() & 1) == 0)
  {
    p_attributes->leadingAlpha = leadingAlpha;
    p_attributes->trailingAlpha = trailingAlpha;

    [(SBAppSwitcherWallpaperGradientView *)self _updateGradientColors];
  }
}

- (void)setCornerRadii:(CACornerRadii *)radii
{
  v37 = *MEMORY[0x277D85DE8];
  p_cornerRadii = &self->_cornerRadii;
  maxXMaxY = self->_cornerRadii.maxXMaxY;
  minXMaxY = self->_cornerRadii.minXMaxY;
  v33 = maxXMaxY;
  minXMinY = self->_cornerRadii.minXMinY;
  maxXMinY = self->_cornerRadii.maxXMinY;
  v35 = minXMinY;
  v8 = radii->maxXMaxY;
  v28 = radii->minXMaxY;
  v29 = v8;
  v9 = radii->minXMinY;
  v30 = radii->maxXMinY;
  v31 = v9;
  if ((CACornerRadiiEqualToRadii() & 1) == 0)
  {
    v10 = radii->minXMaxY;
    v11 = radii->maxXMaxY;
    v12 = radii->minXMinY;
    p_cornerRadii->maxXMinY = radii->maxXMinY;
    p_cornerRadii->minXMinY = v12;
    p_cornerRadii->minXMaxY = v10;
    p_cornerRadii->maxXMaxY = v11;
    layer = [(SBAppSwitcherWallpaperGradientView *)self layer];
    v14 = p_cornerRadii->maxXMaxY;
    minXMaxY = p_cornerRadii->minXMaxY;
    v33 = v14;
    v15 = p_cornerRadii->minXMinY;
    maxXMinY = p_cornerRadii->maxXMinY;
    v35 = v15;
    [layer setCornerRadii:&minXMaxY];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    subviews = [(SBAppSwitcherWallpaperGradientView *)self subviews];
    v17 = [subviews countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        v20 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(subviews);
          }

          layer2 = [*(*(&v24 + 1) + 8 * v20) layer];
          v22 = p_cornerRadii->maxXMaxY;
          minXMaxY = p_cornerRadii->minXMaxY;
          v33 = v22;
          v23 = p_cornerRadii->minXMinY;
          maxXMinY = p_cornerRadii->maxXMinY;
          v35 = v23;
          [layer2 setCornerRadii:&minXMaxY];

          ++v20;
        }

        while (v18 != v20);
        v18 = [subviews countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v18);
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = SBAppSwitcherWallpaperGradientView;
  [(SBAppSwitcherWallpaperGradientView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(SBAppSwitcherWallpaperGradientView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBAppSwitcherWallpaperGradientView;
  [(_UIBackdropView *)&v4 layoutSubviews];
  [(SBAppSwitcherWallpaperGradientView *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setBounds:?];
  gradientLayer = self->_gradientLayer;
  UIRectGetCenter();
  [(CAGradientLayer *)gradientLayer setPosition:?];
}

- (void)_updateGradientColors
{
  v7[2] = *MEMORY[0x277D85DE8];
  gradientLayer = self->_gradientLayer;
  p_attributes = &self->_attributes;
  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0 - self->_attributes.trailingAlpha];
  v7[0] = [v4 CGColor];
  v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0 - p_attributes->leadingAlpha];
  v7[1] = [v5 CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  [(CAGradientLayer *)gradientLayer setColors:v6];
}

- (SBSwitcherWallpaperGradientAttributes)attributes
{
  leadingAlpha = self->_attributes.leadingAlpha;
  trailingAlpha = self->_attributes.trailingAlpha;
  result.trailingAlpha = trailingAlpha;
  result.leadingAlpha = leadingAlpha;
  return result;
}

@end