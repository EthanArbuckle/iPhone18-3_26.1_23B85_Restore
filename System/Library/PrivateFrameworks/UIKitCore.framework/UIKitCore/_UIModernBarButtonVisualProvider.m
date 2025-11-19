@interface _UIModernBarButtonVisualProvider
- (id)_newImageViewWithFrame:(CGRect)a3;
- (id)_newLabelWithFrame:(CGRect)a3;
- (void)_updateImageView;
- (void)_updateTitleView;
@end

@implementation _UIModernBarButtonVisualProvider

- (void)_updateImageView
{
  v10.receiver = self;
  v10.super_class = _UIModernBarButtonVisualProvider;
  [(UIButtonLegacyVisualProvider *)&v10 _updateImageView];
  v3 = self->super._button;
  v4 = v3;
  if (v3)
  {
    v5 = [(UIButton *)v3 _imageView];
    if (v5)
    {
      v6 = [(UIView *)v4 traitCollection];
      v7 = [v6 _monochromaticTreatment];

      if (v7 == -1)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      [v5 _setMonochromaticTreatment:v8];
      [v5 _setEnableMonochromaticTreatment:{-[UIButton enableMonochromaticTreatmentOnImageAndTitle](v4, "enableMonochromaticTreatmentOnImageAndTitle")}];
      if (![(UIControl *)v4 isEnabled])
      {
        v9 = [(UIView *)v4 tintColor];
        [(UIButton *)v4 _setImageColor:v9 forState:2];
      }
    }
  }
}

- (void)_updateTitleView
{
  v9.receiver = self;
  v9.super_class = _UIModernBarButtonVisualProvider;
  [(UIButtonLegacyVisualProvider *)&v9 _updateTitleView];
  v3 = self->super._button;
  v4 = v3;
  if (v3)
  {
    v5 = [(UIButton *)v3 _titleView];
    if (v5)
    {
      v6 = [(UIView *)v4 traitCollection];
      v7 = [v6 _monochromaticTreatment];

      if (v7 == -1)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7;
      }

      [v5 _setMonochromaticTreatment:v8];
      [v5 _setEnableMonochromaticTreatment:{-[UIButton enableMonochromaticTreatmentOnImageAndTitle](v4, "enableMonochromaticTreatmentOnImageAndTitle")}];
    }
  }
}

- (id)_newLabelWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UIModernBarButtonVisualProvider;
  v3 = [(UIButtonLegacyVisualProvider *)&v5 _newLabelWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [v3 setAdjustsFontForContentSizeCategory:_UIBarsUseDynamicType()];
  return v3;
}

- (id)_newImageViewWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIModernBarButtonVisualProvider;
  v4 = [(UIButtonLegacyVisualProvider *)&v6 _newImageViewWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 _setGuardAgainstDegenerateBaselineCalculation:{-[UIButton _guardAgainstDegenerateBaselineCalculation](self->super._button, "_guardAgainstDegenerateBaselineCalculation")}];
    [v4 setClipsToBounds:0];
  }

  return v4;
}

@end