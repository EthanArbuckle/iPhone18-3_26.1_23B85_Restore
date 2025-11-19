@interface SBAppSwitcherWallpaperGradientView
- (SBAppSwitcherWallpaperGradientView)initWithPrivateStyle:(int64_t)a3;
- (SBSwitcherWallpaperGradientAttributes)attributes;
- (void)_updateGradientColors;
- (void)layoutSubviews;
- (void)setAttributes:(SBSwitcherWallpaperGradientAttributes)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCornerRadii:(CACornerRadii *)a3;
@end

@implementation SBAppSwitcherWallpaperGradientView

- (SBAppSwitcherWallpaperGradientView)initWithPrivateStyle:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = SBAppSwitcherWallpaperGradientView;
  v3 = [(_UIBackdropView *)&v11 initWithPrivateStyle:a3];
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
    v8 = [(_UIBackdropView *)v4 effectView];
    v9 = [v8 layer];
    [v9 addSublayer:v4->_gradientLayer];
  }

  return v4;
}

- (void)setAttributes:(SBSwitcherWallpaperGradientAttributes)a3
{
  trailingAlpha = a3.trailingAlpha;
  leadingAlpha = a3.leadingAlpha;
  p_attributes = &self->_attributes;
  if ((SBSwitcherWallpaperGradientAttributesEqual() & 1) == 0)
  {
    p_attributes->leadingAlpha = leadingAlpha;
    p_attributes->trailingAlpha = trailingAlpha;

    [(SBAppSwitcherWallpaperGradientView *)self _updateGradientColors];
  }
}

- (void)setCornerRadii:(CACornerRadii *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  p_cornerRadii = &self->_cornerRadii;
  maxXMaxY = self->_cornerRadii.maxXMaxY;
  minXMaxY = self->_cornerRadii.minXMaxY;
  v33 = maxXMaxY;
  minXMinY = self->_cornerRadii.minXMinY;
  maxXMinY = self->_cornerRadii.maxXMinY;
  v35 = minXMinY;
  v8 = a3->maxXMaxY;
  v28 = a3->minXMaxY;
  v29 = v8;
  v9 = a3->minXMinY;
  v30 = a3->maxXMinY;
  v31 = v9;
  if ((CACornerRadiiEqualToRadii() & 1) == 0)
  {
    v10 = a3->minXMaxY;
    v11 = a3->maxXMaxY;
    v12 = a3->minXMinY;
    p_cornerRadii->maxXMinY = a3->maxXMinY;
    p_cornerRadii->minXMinY = v12;
    p_cornerRadii->minXMaxY = v10;
    p_cornerRadii->maxXMaxY = v11;
    v13 = [(SBAppSwitcherWallpaperGradientView *)self layer];
    v14 = p_cornerRadii->maxXMaxY;
    minXMaxY = p_cornerRadii->minXMaxY;
    v33 = v14;
    v15 = p_cornerRadii->minXMinY;
    maxXMinY = p_cornerRadii->maxXMinY;
    v35 = v15;
    [v13 setCornerRadii:&minXMaxY];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [(SBAppSwitcherWallpaperGradientView *)self subviews];
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v24 + 1) + 8 * v20) layer];
          v22 = p_cornerRadii->maxXMaxY;
          minXMaxY = p_cornerRadii->minXMaxY;
          v33 = v22;
          v23 = p_cornerRadii->minXMinY;
          maxXMinY = p_cornerRadii->maxXMinY;
          v35 = v23;
          [v21 setCornerRadii:&minXMaxY];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v18);
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SBAppSwitcherWallpaperGradientView;
  [(SBAppSwitcherWallpaperGradientView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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