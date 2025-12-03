@interface PISmartColorAdjustmentController
- (PISmartColorAdjustmentController)initWithAdjustment:(id)adjustment;
- (double)inputCast;
- (double)inputColor;
- (double)inputContrast;
- (double)inputSaturation;
- (double)offsetCast;
- (double)offsetContrast;
- (double)offsetSaturation;
- (id)computedSettings;
- (id)pasteKeysForMediaType:(int64_t)type;
- (void)_updateSettingsWithInputColor:(double)color;
- (void)setInputCast:(double)cast;
- (void)setInputColor:(double)color;
- (void)setInputContrast:(double)contrast;
- (void)setInputSaturation:(double)saturation;
- (void)setOffsetCast:(double)cast;
- (void)setOffsetContrast:(double)contrast;
- (void)setOffsetSaturation:(double)saturation;
- (void)setStatistics:(id)statistics;
@end

@implementation PISmartColorAdjustmentController

- (id)pasteKeysForMediaType:(int64_t)type
{
  v10[5] = *MEMORY[0x1E69E9840];
  v3 = +[PIAdjustmentController enabledKey];
  v4 = +[PISmartColorAdjustmentController inputColorKey];
  v10[1] = v4;
  v5 = +[PISmartColorAdjustmentController offsetSaturationKey];
  v10[2] = v5;
  v6 = +[PISmartColorAdjustmentController offsetContrastKey];
  v10[3] = v6;
  v7 = +[PISmartColorAdjustmentController offsetCastKey];
  v10[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  return v8;
}

- (void)setStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = [statisticsCopy copy];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:@"statistics"];

  v6 = [statisticsCopy objectForKeyedSubscript:@"satPercentile75"];
  [v6 doubleValue];
  self->_stats.p75 = v7;

  v8 = [statisticsCopy objectForKeyedSubscript:@"satPercentile98"];
  [v8 doubleValue];
  self->_stats.p98 = v9;

  v10 = [statisticsCopy objectForKeyedSubscript:@"satPercentileG98"];

  [v10 doubleValue];
  self->_stats.g98 = v11;

  [(PISmartColorAdjustmentController *)self inputColor];

  [(PISmartColorAdjustmentController *)self _updateSettingsWithInputColor:?];
}

- (double)offsetSaturation
{
  v3 = +[PISmartColorAdjustmentController offsetSaturationKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setOffsetSaturation:(double)saturation
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:saturation];
  v5 = +[PISmartColorAdjustmentController offsetSaturationKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)offsetContrast
{
  v3 = +[PISmartColorAdjustmentController offsetContrastKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setOffsetContrast:(double)contrast
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:contrast];
  v5 = +[PISmartColorAdjustmentController offsetContrastKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)offsetCast
{
  v3 = +[PISmartColorAdjustmentController offsetCastKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setOffsetCast:(double)cast
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:cast];
  v5 = +[PISmartColorAdjustmentController offsetCastKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)inputCast
{
  cast = self->_smartSettings.cast;
  v4 = +[PISmartColorAdjustmentController offsetCastKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = cast + v6;

  return v7;
}

- (void)setInputCast:(double)cast
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:cast];
  v4 = +[PISmartColorAdjustmentController inputCastKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputContrast
{
  contrast = self->_smartSettings.contrast;
  v4 = +[PISmartColorAdjustmentController offsetContrastKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = contrast + v6;

  return v7;
}

- (void)setInputContrast:(double)contrast
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:contrast];
  v4 = +[PISmartColorAdjustmentController inputContrastKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputSaturation
{
  sat = self->_smartSettings.sat;
  v4 = +[PISmartColorAdjustmentController offsetSaturationKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = sat + v6;

  return v7;
}

- (void)setInputSaturation:(double)saturation
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:saturation];
  v4 = +[PISmartColorAdjustmentController inputSaturationKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputColor
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = +[PISmartColorAdjustmentController inputColorKey];
  v4 = [adjustment objectForKeyedSubscript:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setInputColor:(double)color
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = +[PISmartColorAdjustmentController inputColorKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v6];

  [(PISmartColorAdjustmentController *)self _updateSettingsWithInputColor:color];
}

- (id)computedSettings
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = +[PISmartColorAdjustmentController inputSaturationKey];
  v12[0] = v3;
  p_smartSettings = &self->_smartSettings;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_smartSettings.sat];
  v13[0] = v5;
  v6 = +[PISmartColorAdjustmentController inputContrastKey];
  v12[1] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:p_smartSettings->contrast];
  v13[1] = v7;
  v8 = +[PISmartColorAdjustmentController inputCastKey];
  v12[2] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:p_smartSettings->cast];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (void)_updateSettingsWithInputColor:(double)color
{
  v4 = *&self->_stats.autoValue;
  v12[0] = *&self->_stats.p75;
  v12[1] = v4;
  p_smartSettings = &self->_smartSettings;
  smart_color_adjustments_from_stats(&self->_smartSettings.sat, v12, color);
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:p_smartSettings->sat];
  v7 = +[PISmartColorAdjustmentController inputSaturationKey];
  [(PIAdjustmentController *)self setObject:v6 forKeyedSubscript:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:p_smartSettings->contrast];
  v9 = +[PISmartColorAdjustmentController inputContrastKey];
  [(PIAdjustmentController *)self setObject:v8 forKeyedSubscript:v9];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:p_smartSettings->cast];
  v10 = +[PISmartColorAdjustmentController inputCastKey];
  [(PIAdjustmentController *)self setObject:v11 forKeyedSubscript:v10];
}

- (PISmartColorAdjustmentController)initWithAdjustment:(id)adjustment
{
  v20.receiver = self;
  v20.super_class = PISmartColorAdjustmentController;
  adjustmentCopy = adjustment;
  v4 = [(PIAdjustmentController *)&v20 initWithAdjustment:adjustmentCopy];
  v5 = [PISmartColorAdjustmentController statisticsKey:v20.receiver];
  v6 = [adjustmentCopy objectForKeyedSubscript:v5];
  v7 = [v6 objectForKeyedSubscript:@"satPercentile75"];
  [v7 doubleValue];
  v4->_stats.p75 = v8;

  v9 = +[PISmartColorAdjustmentController statisticsKey];
  v10 = [adjustmentCopy objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:@"satPercentile98"];
  [v11 doubleValue];
  v4->_stats.p98 = v12;

  v13 = +[PISmartColorAdjustmentController statisticsKey];
  v14 = [adjustmentCopy objectForKeyedSubscript:v13];
  v15 = [v14 objectForKeyedSubscript:@"satPercentileG98"];
  [v15 doubleValue];
  v4->_stats.g98 = v16;

  v17 = +[PISmartColorAdjustmentController inputColorKey];
  v18 = [adjustmentCopy objectForKeyedSubscript:v17];

  [v18 doubleValue];
  [(PISmartColorAdjustmentController *)v4 _updateSettingsWithInputColor:?];

  return v4;
}

@end