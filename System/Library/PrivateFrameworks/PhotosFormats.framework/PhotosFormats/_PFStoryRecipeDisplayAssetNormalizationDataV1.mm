@interface _PFStoryRecipeDisplayAssetNormalizationDataV1
+ (NSDictionary)limits;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)highKeyProperties;
- (NSDictionary)smartColorProperties;
- (NSDictionary)smartToneProperties;
- (NSDictionary)tempTintProperties;
- (_PFStoryRecipeDisplayAssetNormalizationDataV1)initWithSliderNetPackedDataV1:(id *)a3;
- (unint64_t)hash;
@end

@implementation _PFStoryRecipeDisplayAssetNormalizationDataV1

- (NSDictionary)smartColorProperties
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() limits];
  smartColorInputVibrancy = self->_data.smartColorInputVibrancy;
  v5 = [v3 objectForKeyedSubscript:@"VIBRANCY_MIN"];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v3 objectForKeyedSubscript:@"VIBRANCY_MAX"];
  [v8 doubleValue];
  if (v9 <= v7 || (v10 = v9, v8, v5, smartColorInputCast = self->_data.smartColorInputCast, [v3 objectForKeyedSubscript:@"CAST_MIN"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "doubleValue"), v14 = v13, objc_msgSend(v3, "objectForKeyedSubscript:", @"CAST_MAX"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "doubleValue"), v16 <= v14))
  {
    __assert_rtn("_byteToDoubleInRange", "PFStoryRecipeDisplayAssetNormalization.m", 19, "maxValue > minValue");
  }

  v17 = v7 + smartColorInputVibrancy / 255.0 * (v10 - v7);
  v18 = v14 + smartColorInputCast / 255.0 * (v16 - v14);

  v23[0] = @"inputVibrancy";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v23[1] = @"inputCast";
  v24[0] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  v24[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v21;
}

- (NSDictionary)highKeyProperties
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() limits];
  highKeyInputStrength = self->_data.highKeyInputStrength;
  v5 = [v3 objectForKeyedSubscript:@"HIGHKEY_MIN"];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v3 objectForKeyedSubscript:@"HIGHKEY_MAX"];
  [v8 doubleValue];
  if (v9 <= v7)
  {
    __assert_rtn("_byteToDoubleInRange", "PFStoryRecipeDisplayAssetNormalization.m", 19, "maxValue > minValue");
  }

  v10 = v7 + highKeyInputStrength / 255.0 * (v9 - v7);

  v14 = @"inputStrength";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  return v12;
}

- (NSDictionary)smartToneProperties
{
  v40[4] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() limits];
  smartToneInputContrast = self->_data.smartToneInputContrast;
  v5 = [v3 objectForKeyedSubscript:@"CONTRAST_MIN"];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v3 objectForKeyedSubscript:@"CONTRAST_MAX"];
  [v8 doubleValue];
  if (v9 <= v7 || (v10 = v9, v8, v5, smartToneInputBlack = self->_data.smartToneInputBlack, [v3 objectForKeyedSubscript:@"BLACK_MIN"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "doubleValue"), v14 = v13, objc_msgSend(v3, "objectForKeyedSubscript:", @"BLACK_MAX"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "doubleValue"), v16 <= v14) || (v17 = v16, v15, v12, smartToneInputExposure = self->_data.smartToneInputExposure, objc_msgSend(v3, "objectForKeyedSubscript:", @"EXPOSURE_MIN"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "doubleValue"), v21 = v20, objc_msgSend(v3, "objectForKeyedSubscript:", @"EXPOSURE_MAX"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "doubleValue"), v23 <= v21) || (v24 = v23, v22, v19, smartToneInputHighlights = self->_data.smartToneInputHighlights, objc_msgSend(v3, "objectForKeyedSubscript:", @"HIGHLIGHTS_MIN"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "doubleValue"), v28 = v27, objc_msgSend(v3, "objectForKeyedSubscript:", @"HIGHLIGHTS_MAX"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "doubleValue"), v30 <= v28))
  {
    __assert_rtn("_byteToDoubleInRange", "PFStoryRecipeDisplayAssetNormalization.m", 19, "maxValue > minValue");
  }

  v31 = v7 + smartToneInputContrast / 255.0 * (v10 - v7);
  v32 = v28 + smartToneInputHighlights / 255.0 * (v30 - v28);

  v39[0] = @"inputContrast";
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
  v40[0] = v33;
  v39[1] = @"inputBlack";
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:v14 + smartToneInputBlack / 255.0 * (v17 - v14)];
  v40[1] = v34;
  v39[2] = @"inputExposure";
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:v21 + smartToneInputExposure / 255.0 * (v24 - v21)];
  v40[2] = v35;
  v39[3] = @"inputHighlights";
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
  v40[3] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:4];

  return v37;
}

- (NSDictionary)tempTintProperties
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() limits];
  tempTintInputTemperature = self->_data.tempTintInputTemperature;
  v5 = [v3 objectForKeyedSubscript:@"TEMPERATURE_MIN"];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v3 objectForKeyedSubscript:@"TEMPERATURE_MAX"];
  [v8 doubleValue];
  if (v9 <= v7 || (v10 = v9, v8, v5, tempTintInputTint = self->_data.tempTintInputTint, [v3 objectForKeyedSubscript:@"TINT_MIN"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "doubleValue"), v14 = v13, objc_msgSend(v3, "objectForKeyedSubscript:", @"TINT_MAX"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "doubleValue"), v16 <= v14))
  {
    __assert_rtn("_byteToDoubleInRange", "PFStoryRecipeDisplayAssetNormalization.m", 19, "maxValue > minValue");
  }

  v17 = v7 + tempTintInputTemperature / 255.0 * (v10 - v7);
  v18 = v14 + tempTintInputTint / 255.0 * (v16 - v14);

  v23[0] = @"inputTemperature";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v23[1] = @"inputTint";
  v24[0] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  v24[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && *&self->_data.version == v4[1] && *&self->_data.highKeyInputStrength == *(v4 + 4);

  return v6;
}

- (unint64_t)hash
{
  v2 = 0;
  p_data = &self->_data;
  result = 1;
  do
  {
    result = *(&p_data->version + v2++) - result + 32 * result;
  }

  while (v2 != 12);
  return result;
}

- (_PFStoryRecipeDisplayAssetNormalizationDataV1)initWithSliderNetPackedDataV1:(id *)a3
{
  v6.receiver = self;
  v6.super_class = _PFStoryRecipeDisplayAssetNormalizationDataV1;
  result = [(_PFStoryRecipeDisplayAssetNormalizationDataV1 *)&v6 init];
  if (result)
  {
    v5 = *&a3->var0;
    *&result->_data.highKeyInputStrength = *&a3->var8;
    *&result->_data.version = v5;
  }

  return result;
}

+ (NSDictionary)limits
{
  if (limits_onceToken != -1)
  {
    dispatch_once(&limits_onceToken, &__block_literal_global_1945);
  }

  v3 = limits_limitsV1;

  return v3;
}

@end