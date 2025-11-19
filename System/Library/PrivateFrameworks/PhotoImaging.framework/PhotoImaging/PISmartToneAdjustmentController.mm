@interface PISmartToneAdjustmentController
- (NSDictionary)statistics;
- (PISmartToneAdjustmentController)initWithAdjustment:(id)a3;
- (double)inputBlack;
- (double)inputBrightness;
- (double)inputContrast;
- (double)inputExposure;
- (double)inputHighlights;
- (double)inputLight;
- (double)inputLightDefault;
- (double)inputLocalLight;
- (double)inputShadows;
- (double)offsetBlack;
- (double)offsetBrightness;
- (double)offsetContrast;
- (double)offsetExposure;
- (double)offsetHighlights;
- (double)offsetLocalLight;
- (double)offsetShadows;
- (id)autoKeysForPaste;
- (id)computedSettings;
- (id)displayInputKeys;
- (id)pasteKeysForMediaType:(int64_t)a3;
- (void)_updateSettingsWithInputLight:(double)a3;
- (void)setInputBlack:(double)a3;
- (void)setInputBrightness:(double)a3;
- (void)setInputContrast:(double)a3;
- (void)setInputExposure:(double)a3;
- (void)setInputHighlights:(double)a3;
- (void)setInputLight:(double)a3;
- (void)setInputLocalLight:(double)a3;
- (void)setInputRawHighlights:(double)a3;
- (void)setInputShadows:(double)a3;
- (void)setOffsetBlack:(double)a3;
- (void)setOffsetBrightness:(double)a3;
- (void)setOffsetContrast:(double)a3;
- (void)setOffsetExposure:(double)a3;
- (void)setOffsetHighlights:(double)a3;
- (void)setOffsetLocalLight:(double)a3;
- (void)setOffsetShadows:(double)a3;
- (void)setStatistics:(id)a3;
@end

@implementation PISmartToneAdjustmentController

- (id)displayInputKeys
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = +[PISmartToneAdjustmentController inputLightKey];
  v3 = +[PISmartToneAdjustmentController offsetBlackKey];
  v11[1] = v3;
  v4 = +[PISmartToneAdjustmentController offsetBrightnessKey];
  v11[2] = v4;
  v5 = +[PISmartToneAdjustmentController offsetContrastKey];
  v11[3] = v5;
  v6 = +[PISmartToneAdjustmentController offsetExposureKey];
  v11[4] = v6;
  v7 = +[PISmartToneAdjustmentController offsetHighlightsKey];
  v11[5] = v7;
  v8 = +[PISmartToneAdjustmentController offsetShadowsKey];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

- (id)pasteKeysForMediaType:(int64_t)a3
{
  v17[8] = *MEMORY[0x1E69E9840];
  v4 = +[PIAdjustmentController enabledKey];
  v5 = v4;
  if (a3 == 2)
  {
    v17[0] = v4;
    v6 = +[PISmartToneAdjustmentController inputLightKey];
    v17[1] = v6;
    v7 = +[PISmartToneAdjustmentController offsetBlackKey];
    v17[2] = v7;
    v8 = +[PISmartToneAdjustmentController offsetBrightnessKey];
    v17[3] = v8;
    v9 = +[PISmartToneAdjustmentController offsetContrastKey];
    v17[4] = v9;
    v10 = +[PISmartToneAdjustmentController offsetExposureKey];
    v17[5] = v10;
    v11 = +[PISmartToneAdjustmentController offsetHighlightsKey];
    v17[6] = v11;
    v12 = +[PISmartToneAdjustmentController offsetShadowsKey];
    v17[7] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:8];
  }

  else
  {
    v6 = +[PISmartToneAdjustmentController inputLightKey];
    v16[1] = v6;
    v7 = +[PISmartToneAdjustmentController offsetBlackKey];
    v16[2] = v7;
    v8 = +[PISmartToneAdjustmentController offsetBrightnessKey];
    v16[3] = v8;
    v9 = +[PISmartToneAdjustmentController offsetContrastKey];
    v16[4] = v9;
    v10 = +[PISmartToneAdjustmentController offsetExposureKey];
    v16[5] = v10;
    v11 = +[PISmartToneAdjustmentController offsetHighlightsKey];
    v16[6] = v11;
    v12 = +[PISmartToneAdjustmentController offsetLocalLightKey];
    v16[7] = v12;
    v14 = +[PISmartToneAdjustmentController offsetShadowsKey];
    v16[8] = v14;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:9];
  }

  return v13;
}

- (id)autoKeysForPaste
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = +[PISmartToneAdjustmentController inputLightKey];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)setOffsetShadows:(double)a3
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = +[PISmartToneAdjustmentController offsetShadowsKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)offsetShadows
{
  v3 = +[PISmartToneAdjustmentController offsetShadowsKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setOffsetLocalLight:(double)a3
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = +[PISmartToneAdjustmentController offsetLocalLightKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)offsetLocalLight
{
  v3 = +[PISmartToneAdjustmentController offsetLocalLightKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setOffsetHighlights:(double)a3
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = +[PISmartToneAdjustmentController offsetHighlightsKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)offsetHighlights
{
  v3 = +[PISmartToneAdjustmentController offsetHighlightsKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setOffsetExposure:(double)a3
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = +[PISmartToneAdjustmentController offsetExposureKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)offsetExposure
{
  v3 = +[PISmartToneAdjustmentController offsetExposureKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setOffsetContrast:(double)a3
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = +[PISmartToneAdjustmentController offsetContrastKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)offsetContrast
{
  v3 = +[PISmartToneAdjustmentController offsetContrastKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setOffsetBrightness:(double)a3
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = +[PISmartToneAdjustmentController offsetBrightnessKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)offsetBrightness
{
  v3 = +[PISmartToneAdjustmentController offsetBrightnessKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setOffsetBlack:(double)a3
{
  [(PIAdjustmentController *)self setIsAuto:0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v5 = +[PISmartToneAdjustmentController offsetBlackKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v6 forKey:v5];
}

- (double)offsetBlack
{
  v3 = +[PISmartToneAdjustmentController offsetBlackKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (NSDictionary)statistics
{
  v3 = +[PISmartToneAdjustmentController statisticsKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];

  return v4;
}

- (void)setStatistics:(id)a3
{
  v4 = [a3 copy];
  v5 = +[PISmartToneAdjustmentController statisticsKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v4 forKey:v5];

  [(PISmartToneAdjustmentController *)self inputLight];

  [(PISmartToneAdjustmentController *)self _updateSettingsWithInputLight:?];
}

- (void)setInputRawHighlights:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[PISmartToneAdjustmentController inputRawHighlightsKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputLocalLight
{
  localLight = self->_smartSettings.localLight;
  v4 = +[PISmartToneAdjustmentController offsetLocalLightKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = localLight + v6;

  return v7;
}

- (void)setInputLocalLight:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[PISmartToneAdjustmentController inputLocalLightKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputBlack
{
  black = self->_smartSettings.black;
  v4 = +[PISmartToneAdjustmentController offsetBlackKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = black + v6;

  return v7;
}

- (void)setInputBlack:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[PISmartToneAdjustmentController inputBlackKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputHighlights
{
  highlights = self->_smartSettings.highlights;
  v4 = +[PISmartToneAdjustmentController offsetHighlightsKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = highlights + v6;

  return v7;
}

- (void)setInputHighlights:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[PISmartToneAdjustmentController inputHighlightsKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputShadows
{
  shadows = self->_smartSettings.shadows;
  v4 = +[PISmartToneAdjustmentController offsetShadowsKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = shadows + v6;

  return v7;
}

- (void)setInputShadows:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[PISmartToneAdjustmentController inputShadowsKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputContrast
{
  contrast = self->_smartSettings.contrast;
  v4 = +[PISmartToneAdjustmentController offsetContrastKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = contrast + v6;

  return v7;
}

- (void)setInputContrast:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[PISmartToneAdjustmentController inputContrastKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputBrightness
{
  brightness = self->_smartSettings.brightness;
  v4 = +[PISmartToneAdjustmentController offsetBrightnessKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = brightness + v6;

  return v7;
}

- (void)setInputBrightness:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[PISmartToneAdjustmentController inputBrightnessKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputExposure
{
  exposure = self->_smartSettings.exposure;
  v4 = +[PISmartToneAdjustmentController offsetExposureKey];
  v5 = [(PIAdjustmentController *)self _primitiveValueForKey:v4];
  [v5 doubleValue];
  v7 = exposure + v6;

  return v7;
}

- (void)setInputExposure:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v4 = +[PISmartToneAdjustmentController inputExposureKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v4];
}

- (double)inputLight
{
  v3 = +[PISmartToneAdjustmentController inputLightKey];
  v4 = [(PIAdjustmentController *)self _primitiveValueForKey:v3];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setInputLight:(double)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = +[PISmartToneAdjustmentController inputLightKey];
  [(PIAdjustmentController *)self _setPrimitiveValue:v5 forKey:v6];

  [(PISmartToneAdjustmentController *)self _updateSettingsWithInputLight:a3];
}

- (double)inputLightDefault
{
  v2 = [(PISmartToneAdjustmentController *)self statistics];
  v3 = [v2 objectForKeyedSubscript:@"autoValue"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (id)computedSettings
{
  v23[8] = *MEMORY[0x1E69E9840];
  v21 = +[PISmartToneAdjustmentController inputExposureKey];
  v22[0] = v21;
  p_smartSettings = &self->_smartSettings;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_smartSettings.exposure];
  v23[0] = v20;
  v19 = +[PISmartToneAdjustmentController inputContrastKey];
  v22[1] = v19;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_smartSettings.contrast];
  v23[1] = v18;
  v17 = +[PISmartToneAdjustmentController inputBrightnessKey];
  v22[2] = v17;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_smartSettings.brightness];
  v23[2] = v16;
  v15 = +[PISmartToneAdjustmentController inputShadowsKey];
  v22[3] = v15;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_smartSettings.shadows];
  v23[3] = v14;
  v4 = +[PISmartToneAdjustmentController inputHighlightsKey];
  v22[4] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_smartSettings.highlights];
  v23[4] = v5;
  v6 = +[PISmartToneAdjustmentController inputBlackKey];
  v22[5] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:p_smartSettings->black];
  v23[5] = v7;
  v8 = +[PISmartToneAdjustmentController inputLocalLightKey];
  v22[6] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:p_smartSettings->localLight];
  v23[6] = v9;
  v10 = +[PISmartToneAdjustmentController inputRawHighlightsKey];
  v22[7] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:p_smartSettings->rawHighlights];
  v23[7] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:8];

  return v12;
}

- (void)_updateSettingsWithInputLight:(double)a3
{
  v57 = [(PISmartToneAdjustmentController *)self statistics];
  v5 = MEMORY[0x1E695F658];
  v6 = [v57 objectForKeyedSubscript:@"localAutoValue"];
  [v6 doubleValue];
  v8 = [v5 smartToneAdjustmentsForValue:v57 localLightAutoValue:a3 andStatistics:v7];

  v9 = +[PISmartToneAdjustmentController inputExposureKey];
  v10 = [v8 objectForKeyedSubscript:v9];
  [v10 doubleValue];
  self->_smartSettings.exposure = v11;

  v12 = +[PISmartToneAdjustmentController inputContrastKey];
  v13 = [v8 objectForKeyedSubscript:v12];
  [v13 doubleValue];
  self->_smartSettings.contrast = v14;

  v15 = +[PISmartToneAdjustmentController inputBrightnessKey];
  v16 = [v8 objectForKeyedSubscript:v15];
  [v16 doubleValue];
  self->_smartSettings.brightness = v17;

  v18 = +[PISmartToneAdjustmentController inputShadowsKey];
  v19 = [v8 objectForKeyedSubscript:v18];
  [v19 doubleValue];
  self->_smartSettings.shadows = v20;

  v21 = +[PISmartToneAdjustmentController inputHighlightsKey];
  v22 = [v8 objectForKeyedSubscript:v21];
  [v22 doubleValue];
  self->_smartSettings.highlights = v23;

  v24 = +[PISmartToneAdjustmentController inputBlackKey];
  v25 = [v8 objectForKeyedSubscript:v24];
  [v25 doubleValue];
  self->_smartSettings.black = v26;

  v27 = +[PISmartToneAdjustmentController inputLocalLightKey];
  v28 = [v8 objectForKeyedSubscript:v27];
  [v28 doubleValue];
  self->_smartSettings.localLight = v29;

  v30 = +[PISmartToneAdjustmentController inputRawHighlightsKey];
  v31 = [v8 objectForKeyedSubscript:v30];
  [v31 doubleValue];
  self->_smartSettings.rawHighlights = v32;

  v33 = +[PISmartToneAdjustmentController inputExposureKey];
  v34 = [v8 objectForKeyedSubscript:v33];
  v35 = +[PISmartToneAdjustmentController inputExposureKey];
  [(PIAdjustmentController *)self setObject:v34 forKeyedSubscript:v35];

  v36 = +[PISmartToneAdjustmentController inputContrastKey];
  v37 = [v8 objectForKeyedSubscript:v36];
  v38 = +[PISmartToneAdjustmentController inputContrastKey];
  [(PIAdjustmentController *)self setObject:v37 forKeyedSubscript:v38];

  v39 = +[PISmartToneAdjustmentController inputBrightnessKey];
  v40 = [v8 objectForKeyedSubscript:v39];
  v41 = +[PISmartToneAdjustmentController inputBrightnessKey];
  [(PIAdjustmentController *)self setObject:v40 forKeyedSubscript:v41];

  v42 = +[PISmartToneAdjustmentController inputShadowsKey];
  v43 = [v8 objectForKeyedSubscript:v42];
  v44 = +[PISmartToneAdjustmentController inputShadowsKey];
  [(PIAdjustmentController *)self setObject:v43 forKeyedSubscript:v44];

  v45 = +[PISmartToneAdjustmentController inputHighlightsKey];
  v46 = [v8 objectForKeyedSubscript:v45];
  v47 = +[PISmartToneAdjustmentController inputHighlightsKey];
  [(PIAdjustmentController *)self setObject:v46 forKeyedSubscript:v47];

  v48 = +[PISmartToneAdjustmentController inputBlackKey];
  v49 = [v8 objectForKeyedSubscript:v48];
  v50 = +[PISmartToneAdjustmentController inputBlackKey];
  [(PIAdjustmentController *)self setObject:v49 forKeyedSubscript:v50];

  v51 = +[PISmartToneAdjustmentController inputLocalLightKey];
  v52 = [v8 objectForKeyedSubscript:v51];
  v53 = +[PISmartToneAdjustmentController inputLocalLightKey];
  [(PIAdjustmentController *)self setObject:v52 forKeyedSubscript:v53];

  v54 = +[PISmartToneAdjustmentController inputRawHighlightsKey];
  v55 = [v8 objectForKeyedSubscript:v54];
  v56 = +[PISmartToneAdjustmentController inputRawHighlightsKey];
  [(PIAdjustmentController *)self setObject:v55 forKeyedSubscript:v56];
}

- (PISmartToneAdjustmentController)initWithAdjustment:(id)a3
{
  v7.receiver = self;
  v7.super_class = PISmartToneAdjustmentController;
  v3 = a3;
  v4 = [(PIAdjustmentController *)&v7 initWithAdjustment:v3];
  v5 = [v3 objectForKeyedSubscript:{@"inputLight", v7.receiver, v7.super_class}];

  [v5 doubleValue];
  [(PISmartToneAdjustmentController *)v4 _updateSettingsWithInputLight:?];

  return v4;
}

@end