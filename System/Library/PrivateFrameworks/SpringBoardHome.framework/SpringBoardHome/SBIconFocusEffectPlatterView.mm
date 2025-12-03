@interface SBIconFocusEffectPlatterView
- (SBIconFocusEffectPlatterView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SBIconFocusEffectPlatterView

- (SBIconFocusEffectPlatterView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SBIconFocusEffectPlatterView;
  v3 = [(SBIconFocusEffectPlatterView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(SBIconFocusEffectPlatterView *)v3 layer];
    [layer setAllowsGroupOpacity:1];

    [(SBIconFocusEffectPlatterView *)v4 setClipsToBounds:1];
    v6 = [MEMORY[0x1E69AE158] materialViewWithRecipe:MTMaterialRecipeForUIBlurEffectStyle()];
    materialView = v4->_materialView;
    v4->_materialView = v6;

    [(SBIconFocusEffectPlatterView *)v4 addSubview:v4->_materialView];
    v8 = [(MTMaterialView *)v4->_materialView visualStylingProviderForCategory:2];
    v9 = [v8 newAutomaticallyUpdatingViewWithStyle:0];
    vibrantFillView = v4->_vibrantFillView;
    v4->_vibrantFillView = v9;

    [(SBIconFocusEffectPlatterView *)v4 addSubview:v4->_vibrantFillView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBIconFocusEffectPlatterView;
  [(SBIconFocusEffectPlatterView *)&v5 layoutSubviews];
  materialView = self->_materialView;
  [(SBIconFocusEffectPlatterView *)self bounds];
  [(MTMaterialView *)materialView setFrame:?];
  vibrantFillView = self->_vibrantFillView;
  [(SBIconFocusEffectPlatterView *)self bounds];
  [(UIView *)vibrantFillView setFrame:?];
}

@end