@interface SearchUIButtonBackgroundView
- (void)setColor:(id)a3;
- (void)setUseHierarchicalColorRendering:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
@end

@implementation SearchUIButtonBackgroundView

- (void)setColor:(id)a3
{
  v5 = a3;
  if (self->_color != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_color, a3);
    [(SearchUIButtonBackgroundView *)self tlk_updateWithCurrentAppearance];
    v5 = v6;
  }
}

- (void)setUseHierarchicalColorRendering:(BOOL)a3
{
  if (self->_useHierarchicalColorRendering != a3)
  {
    self->_useHierarchicalColorRendering = a3;
    [(SearchUIButtonBackgroundView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SearchUIButtonBackgroundView;
  [(TLKProminenceView *)&v12 tlk_updateForAppearance:v4];
  v5 = [(SearchUIButtonBackgroundView *)self color];

  if (v5)
  {
    [v4 disableAppearanceForView:self];
  }

  v6 = [(SearchUIButtonBackgroundView *)self color];
  v7 = [(SearchUIButtonBackgroundView *)self useHierarchicalColorRendering];
  v8 = 0.15;
  if (!v7)
  {
    v8 = 1.0;
  }

  v9 = [v6 colorWithAlphaComponent:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    if ([v4 isVibrant])
    {
      [v4 quaternaryColor];
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