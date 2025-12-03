@interface PFStoryRecipeDisplayAssetNormalization
- (BOOL)isEqual:(id)equal;
- (NSData)analysisData;
- (NSString)detailedDescription;
- (PFStoryRecipeDisplayAssetNormalization)initWithAnalysisData:(id)data;
@end

@implementation PFStoryRecipeDisplayAssetNormalization

- (NSString)detailedDescription
{
  tempTintProperties = [(PFStoryRecipeDisplayAssetNormalization *)self tempTintProperties];
  smartToneProperties = [(PFStoryRecipeDisplayAssetNormalization *)self smartToneProperties];
  highKeyProperties = [(PFStoryRecipeDisplayAssetNormalization *)self highKeyProperties];
  smartColorProperties = [(PFStoryRecipeDisplayAssetNormalization *)self smartColorProperties];
  v6 = MEMORY[0x1E696AEC0];
  version = [(PFStoryRecipeDisplayAssetNormalization *)self version];
  v37 = tempTintProperties;
  v36 = [tempTintProperties objectForKeyedSubscript:@"inputTemperature"];
  [v36 floatValue];
  v8 = v7;
  v35 = [tempTintProperties objectForKeyedSubscript:@"inputTint"];
  [v35 floatValue];
  v10 = v9;
  v11 = [smartToneProperties objectForKeyedSubscript:@"inputExposure"];
  [v11 floatValue];
  v13 = v12;
  v14 = [smartToneProperties objectForKeyedSubscript:@"inputBlack"];
  [v14 floatValue];
  v16 = v15;
  v17 = [smartToneProperties objectForKeyedSubscript:@"inputHighlights"];
  [v17 floatValue];
  v19 = v18;
  v20 = [smartToneProperties objectForKeyedSubscript:@"inputContrast"];
  [v20 floatValue];
  v22 = v21;
  v23 = [highKeyProperties objectForKeyedSubscript:@"inputStrength"];
  [v23 floatValue];
  v25 = v24;
  v26 = [smartColorProperties objectForKeyedSubscript:@"inputVibrancy"];
  [v26 floatValue];
  v28 = v27;
  v29 = [smartColorProperties objectForKeyedSubscript:@"inputCast"];
  [v29 floatValue];
  v31 = [v6 stringWithFormat:@"V%d WB{%0.0fT %0.1ft} ST{%0.2fx %0.2fb %0.2fh %0.2fc} HK{%0.2f} SC{%0.2fvi %0.2fca}", version, *&v8, *&v10, *&v13, *&v16, *&v19, *&v22, *&v25, *&v28, v30];

  return v31;
}

- (NSData)analysisData
{
  sliderNetPackedData = [(_PFStoryRecipeDisplayAssetNormalizationData *)self->_normalizationData sliderNetPackedData];
  v3 = MEMORY[0x1E695DEF0];

  return [v3 dataWithBytes:sliderNetPackedData length:12];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  normalizationData = self->_normalizationData;
  if (normalizationData == equalCopy->_normalizationData)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(_PFStoryRecipeDisplayAssetNormalizationData *)normalizationData isEqual:?];
  }

LABEL_7:

  return v6;
}

- (PFStoryRecipeDisplayAssetNormalization)initWithAnalysisData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    _PFAssertFailHandler();
LABEL_19:
    _PFAssertFailHandler();
    goto LABEL_20;
  }

  v5 = dataCopy;
  if (![dataCopy length])
  {
LABEL_9:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "PFStoryRecipeDisplayAssetNormalization: Empty analysis data.", buf, 2u);
    }

    selfCopy = 0;
    goto LABEL_17;
  }

  if ([v5 length] <= 2)
  {
    goto LABEL_19;
  }

  v14.receiver = self;
  v14.super_class = PFStoryRecipeDisplayAssetNormalization;
  self = [(PFStoryRecipeDisplayAssetNormalization *)&v14 init];
  if (!self)
  {
LABEL_16:
    self = self;
    selfCopy = self;
LABEL_17:

    return selfCopy;
  }

  bytes = [v5 bytes];
  v7 = *bytes;
  if (v7 == 2)
  {
    v9 = [[_PFStoryRecipeDisplayAssetNormalizationDataV2 alloc] initWithSliderNetPackedDataV2:bytes];
LABEL_14:
    normalizationData = self->_normalizationData;
    self->_normalizationData = v9;

    goto LABEL_15;
  }

  if (v7 == 1)
  {
    v9 = [[_PFStoryRecipeDisplayAssetNormalizationDataV1 alloc] initWithSliderNetPackedDataV1:bytes];
    goto LABEL_14;
  }

  if (!*bytes)
  {
    _PFAssertFailHandler();
    goto LABEL_9;
  }

LABEL_15:
  if (self->_normalizationData)
  {
    goto LABEL_16;
  }

LABEL_20:
  v12 = _PFAssertFailHandler();
  return [(PFStoryRecipeDisplayAssetNormalization *)v12 init];
}

@end