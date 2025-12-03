@interface _UIModernBarButtonVisualProvider
- (id)_newImageViewWithFrame:(CGRect)frame;
- (id)_newLabelWithFrame:(CGRect)frame;
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
    _imageView = [(UIButton *)v3 _imageView];
    if (_imageView)
    {
      traitCollection = [(UIView *)v4 traitCollection];
      _monochromaticTreatment = [traitCollection _monochromaticTreatment];

      if (_monochromaticTreatment == -1)
      {
        v8 = 0;
      }

      else
      {
        v8 = _monochromaticTreatment;
      }

      [_imageView _setMonochromaticTreatment:v8];
      [_imageView _setEnableMonochromaticTreatment:{-[UIButton enableMonochromaticTreatmentOnImageAndTitle](v4, "enableMonochromaticTreatmentOnImageAndTitle")}];
      if (![(UIControl *)v4 isEnabled])
      {
        tintColor = [(UIView *)v4 tintColor];
        [(UIButton *)v4 _setImageColor:tintColor forState:2];
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
    _titleView = [(UIButton *)v3 _titleView];
    if (_titleView)
    {
      traitCollection = [(UIView *)v4 traitCollection];
      _monochromaticTreatment = [traitCollection _monochromaticTreatment];

      if (_monochromaticTreatment == -1)
      {
        v8 = 0;
      }

      else
      {
        v8 = _monochromaticTreatment;
      }

      [_titleView _setMonochromaticTreatment:v8];
      [_titleView _setEnableMonochromaticTreatment:{-[UIButton enableMonochromaticTreatmentOnImageAndTitle](v4, "enableMonochromaticTreatmentOnImageAndTitle")}];
    }
  }
}

- (id)_newLabelWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIModernBarButtonVisualProvider;
  v3 = [(UIButtonLegacyVisualProvider *)&v5 _newLabelWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [v3 setAdjustsFontForContentSizeCategory:_UIBarsUseDynamicType()];
  return v3;
}

- (id)_newImageViewWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIModernBarButtonVisualProvider;
  v4 = [(UIButtonLegacyVisualProvider *)&v6 _newImageViewWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 _setGuardAgainstDegenerateBaselineCalculation:{-[UIButton _guardAgainstDegenerateBaselineCalculation](self->super._button, "_guardAgainstDegenerateBaselineCalculation")}];
    [v4 setClipsToBounds:0];
  }

  return v4;
}

@end