@interface SBUILegibilityShadowView
- (BOOL)_updateFilters;
- (id)_contentColor;
- (void)setImage:(id)image strengthenedImage:(id)strengthenedImage strength:(double)strength;
@end

@implementation SBUILegibilityShadowView

- (id)_contentColor
{
  legibilitySettings = [(SBUILegibilityContainerView *)self legibilitySettings];
  shadowColor = [legibilitySettings shadowColor];

  return shadowColor;
}

- (void)setImage:(id)image strengthenedImage:(id)strengthenedImage strength:(double)strength
{
  v5.receiver = self;
  v5.super_class = SBUILegibilityShadowView;
  [(SBUILegibilityContainerView *)&v5 setImage:image strengthenedImage:strengthenedImage strength:strength];
}

- (BOOL)_updateFilters
{
  v14.receiver = self;
  v14.super_class = SBUILegibilityShadowView;
  _updateFilters = [(SBUILegibilityContainerView *)&v14 _updateFilters];
  v13.receiver = self;
  v13.super_class = SBUILegibilityShadowView;
  legibilitySettings = [(SBUILegibilityContainerView *)&v13 legibilitySettings];
  layer = [(SBUILegibilityShadowView *)self layer];
  if (!legibilitySettings)
  {
LABEL_5:
    compositingFilter = [layer compositingFilter];
    v7 = compositingFilter;
    v8 = MEMORY[0x1E6979CC0];
    goto LABEL_8;
  }

  [legibilitySettings shadowSettings];
  if (v12 == 2)
  {
    compositingFilter = [layer compositingFilter];
    v7 = compositingFilter;
    v8 = MEMORY[0x1E6979C38];
  }

  else
  {
    if (v12 != 1)
    {
      if (v12)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    compositingFilter = [layer compositingFilter];
    v7 = compositingFilter;
    v8 = MEMORY[0x1E69798C8];
  }

LABEL_8:
  v9 = *v8;
  v10 = [compositingFilter isEqual:*v8];

  if ((v10 & 1) == 0)
  {
    [layer setCompositingFilter:v9];
    _updateFilters = 1;
  }

LABEL_10:

  return _updateFilters;
}

@end