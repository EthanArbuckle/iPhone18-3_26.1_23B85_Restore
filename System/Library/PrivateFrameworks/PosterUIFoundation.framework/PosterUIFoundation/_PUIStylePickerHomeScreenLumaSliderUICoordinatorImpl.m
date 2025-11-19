@interface _PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl
- (_PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl)initWithStyle:(id)a3;
- (id)effectiveColor;
- (id)variationSliderThumbView;
- (id)variationSliderTrackView;
- (void)_updateSliderThumbView;
- (void)_updateVariationSliderTrackView;
- (void)gradientSliderDidChange:(id)a3;
- (void)setVariation:(double)a3;
@end

@implementation _PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl

- (_PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl)initWithStyle:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl;
  v5 = [(PUIStyleUICoordinatorImpl *)&v14 initWithStyle:v4];
  if (v5)
  {
    [PUIDiscreteGradientVariatedCustomStyle minLuminanceForStyle:v4];
    v5->_minLuminance = v6;
    [PUIDiscreteGradientVariatedCustomStyle maxLuminanceForStyle:v4];
    v5->_maxLuminance = v7;
    if (PUIFeatureEnabled(11))
    {
      [v4 alpha];
      v9 = v8 + -0.25 + v8 + -0.25;
      v10 = 0.75;
    }

    else
    {
      [v4 luminanceValue];
      minLuminance = v5->_minLuminance;
      v9 = v12 - minLuminance + v12 - minLuminance;
      v10 = v5->_maxLuminance - minLuminance;
    }

    [(PUIStyleUICoordinatorImpl *)v5 setVariation:0 updateStyle:fmax(fmin(v9 / v10 + -1.0, 1.0), -1.0)];
  }

  return v5;
}

- (id)effectiveColor
{
  v2 = [(PUIStyleUICoordinatorImpl *)self style];
  v3 = [v2 luminanceAppliedColor];

  return v3;
}

- (void)setVariation:(double)a3
{
  v4 = 1.0;
  v5 = a3 + 1.0;
  v6 = self->_maxLuminance + (a3 + 1.0) * (self->_minLuminance - self->_maxLuminance) * 0.5;
  v7 = v6;
  if (PUIFeatureEnabled(11))
  {
    v8 = [(PUIStyleUICoordinatorImpl *)self style];
    [v8 luminanceValue];
    v7 = v9;

    v4 = v5 * 0.75 * 0.5 + 0.25;
  }

  v13 = [(PUIStyleUICoordinatorImpl *)self style];
  v10 = [v13 copyWithLuminance:v7 alpha:v4];
  [(PUIStyleUICoordinatorImpl *)self setStyle:v10];

  v11 = [v13 copyWithLuminance:v6 alpha:1.0];
  v12 = [v11 luminanceAppliedColor];
  [(UIView *)self->_variationSliderThumbView setBackgroundColor:v12];
}

- (void)gradientSliderDidChange:(id)a3
{
  v25 = a3;
  v4 = [(PUIStyleUICoordinatorImpl *)self style];
  [v4 luminanceValue];
  v6 = v5;

  v7 = [(PUIStyleUICoordinatorImpl *)self style];
  [v7 alpha];
  v9 = v8;

  v10 = [v25 variationAppliedColors];
  v11 = [v10 firstObject];

  v12 = [[PUIColorValues alloc] initWithColor:v11];
  if (PUIFeatureEnabled(11))
  {
    v13 = (v9 + -0.25 + v9 + -0.25) / 0.75;
  }

  else
  {
    v13 = (v6 - self->_minLuminance + v6 - self->_minLuminance) / (self->_maxLuminance - self->_minLuminance);
  }

  v14 = v13 + -1.0;
  [PUIDiscreteGradientVariatedCustomStyle minLuminanceForStyle:v25];
  self->_minLuminance = v15;
  [PUIDiscreteGradientVariatedCustomStyle maxLuminanceForStyle:v25];
  v17 = v16;
  self->_maxLuminance = v16;
  minLuminance = self->_minLuminance;
  v19 = 1.0;
  v20 = v14 + 1.0;
  if (PUIFeatureEnabled(11))
  {
    v21 = self->_minLuminance;
  }

  else
  {
    v21 = minLuminance + v20 * (v17 - minLuminance) * 0.5;
  }

  if (PUIFeatureEnabled(11))
  {
    v19 = v20 * 0.75 * 0.5 + 0.25;
  }

  v22 = [(PUIColorValues *)v12 hslValues];
  [v22 saturation];
  v24 = [v25 copyWithLuminance:v21 saturation:v23 alpha:v19];

  [(PUIStyleUICoordinatorImpl *)self setStyle:v24];
  [(_PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl *)self _updateVariationSliderTrackView];
  [(_PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl *)self _updateSliderThumbView];
}

- (id)variationSliderThumbView
{
  variationSliderThumbView = self->_variationSliderThumbView;
  if (!variationSliderThumbView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    v5 = self->_variationSliderThumbView;
    self->_variationSliderThumbView = v4;

    [(_PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl *)self _updateSliderThumbView];
    variationSliderThumbView = self->_variationSliderThumbView;
  }

  return variationSliderThumbView;
}

- (id)variationSliderTrackView
{
  variationSliderTrackView = self->_variationSliderTrackView;
  if (!variationSliderTrackView)
  {
    v4 = [[PUIGradientView alloc] initWithFrame:0.0, 0.0, 100.0, 50.0];
    v5 = self->_variationSliderTrackView;
    self->_variationSliderTrackView = v4;

    [(PUIGradientView *)self->_variationSliderTrackView setUsesBlur:1];
    [(_PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl *)self _updateVariationSliderTrackView];
    variationSliderTrackView = self->_variationSliderTrackView;
  }

  return variationSliderTrackView;
}

- (void)_updateSliderThumbView
{
  v7 = [(PUIStyleUICoordinatorImpl *)self style];
  [v7 alpha];
  v4 = [v7 copyWithLuminance:self->_maxLuminance + ((v3 + -0.25 + v3 + -0.25) / 0.75 + -1.0 + 1.0) * (self->_minLuminance - self->_maxLuminance) * 0.5 alpha:1.0];
  variationSliderThumbView = self->_variationSliderThumbView;
  v6 = [v4 luminanceAppliedColor];
  [(UIView *)variationSliderThumbView setBackgroundColor:v6];
}

- (void)_updateVariationSliderTrackView
{
  v28[1] = *MEMORY[0x1E69E9840];
  v26 = [(PUIStyleUICoordinatorImpl *)self style];
  v3 = [v26 variationAppliedColors];
  v25 = [v3 firstObject];

  v4 = [PUIStyleDiscreteColors alloc];
  v28[0] = v25;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v24 = [(PUIStyleDiscreteColors *)v4 initWithColors:v5 vibrant:0 supportsVariation:1 variationValue:0.0];

  v23 = [(PUIStyleDiscreteColors *)v24 copyWithVariation:0.0];
  v6 = [v23 variationAppliedColors];
  v22 = [v6 firstObject];

  v7 = [v22 pui_hslValues];
  v8 = [PUIColorValues alloc];
  [v7 hue];
  v10 = v9;
  [v7 saturation];
  v12 = [(PUIColorValues *)v8 initWithHue:v10 saturation:v11 luminance:self->_minLuminance alpha:1.0];
  v13 = [(PUIColorValues *)v12 color];
  v14 = [PUIColorValues alloc];
  [v7 hue];
  v16 = v15;
  [v7 saturation];
  v18 = [(PUIColorValues *)v14 initWithHue:v16 saturation:v17 luminance:self->_maxLuminance alpha:1.0];
  v19 = [(PUIColorValues *)v18 color];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  variationSliderTrackView = self->_variationSliderTrackView;
  v27[0] = [v19 CGColor];
  v27[1] = [v13 CGColor];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  [(PUIGradientView *)variationSliderTrackView setColors:v21 locations:0 type:0];

  [(PUIGradientView *)self->_variationSliderTrackView setStartPoint:0.0 endPoint:0.5, 1.0, 0.5];
  [MEMORY[0x1E6979518] commit];
}

@end