@interface SearchUIButtonBackgroundView
- (void)setColor:(id)color;
- (void)setUseHierarchicalColorRendering:(BOOL)rendering;
- (void)tlk_updateForAppearance:(id)appearance;
@end

@implementation SearchUIButtonBackgroundView

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_color, color);
    [(SearchUIButtonBackgroundView *)self tlk_updateWithCurrentAppearance];
    colorCopy = v6;
  }
}

- (void)setUseHierarchicalColorRendering:(BOOL)rendering
{
  if (self->_useHierarchicalColorRendering != rendering)
  {
    self->_useHierarchicalColorRendering = rendering;
    [(SearchUIButtonBackgroundView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v12.receiver = self;
  v12.super_class = SearchUIButtonBackgroundView;
  [(TLKProminenceView *)&v12 tlk_updateForAppearance:appearanceCopy];
  color = [(SearchUIButtonBackgroundView *)self color];

  if (color)
  {
    [appearanceCopy disableAppearanceForView:self];
  }

  color2 = [(SearchUIButtonBackgroundView *)self color];
  useHierarchicalColorRendering = [(SearchUIButtonBackgroundView *)self useHierarchicalColorRendering];
  v8 = 0.15;
  if (!useHierarchicalColorRendering)
  {
    v8 = 1.0;
  }

  v9 = [color2 colorWithAlphaComponent:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    if ([appearanceCopy isVibrant])
    {
      [appearanceCopy quaternaryColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    }
    v10 = ;
  }

  v11 = v10;
  [(SearchUIButtonBackgroundView *)self setBackgroundColor:v10];
}

@end