@interface PIColorNormalizationFilter
+ (id)colorCubeForNormalization:(id)normalization dimension:(int64_t)dimension targetColorSpace:(CGColorSpace *)space;
+ (id)logger;
- (BOOL)isEqual:(id)equal;
- (PFStoryRecipeDisplayAssetNormalization)outputNormalization;
- (id)outputImage;
- (unint64_t)hash;
@end

@implementation PIColorNormalizationFilter

- (PFStoryRecipeDisplayAssetNormalization)outputNormalization
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (self->inputImage)
  {
    v3 = +[PIColorNormalizationFilter logger];
    v4 = os_signpost_id_make_with_pointer(v3, self);
    v5 = v3;
    v6 = v5;
    v7 = v4 - 1;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PIColorNormalizationAnalysis", "", buf, 2u);
    }

    mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
    visionSession = [mEMORY[0x1E69B3A58] visionSession];

    v10 = objc_alloc(MEMORY[0x1E69845B8]);
    v11 = [v10 initWithCIImage:self->inputImage options:MEMORY[0x1E695E0F8] session:visionSession];
    v12 = objc_alloc_init(MEMORY[0x1E69843E0]);
    [v12 setRevision:1];
    v43[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    v40 = 0;
    v14 = [v11 performRequests:v13 error:&v40];
    v15 = v40;

    v16 = 0;
    if (v14)
    {
      results = [v12 results];
      firstObject = [results firstObject];

      if (firstObject)
      {
        v31 = v15;
        v32 = v11;
        v33 = v4 - 1;
        v34 = visionSession;
        v35 = v4;
        v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        adjustmentKeys = [firstObject adjustmentKeys];
        v21 = [adjustmentKeys countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v37;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v37 != v23)
              {
                objc_enumerationMutation(adjustmentKeys);
              }

              v25 = *(*(&v36 + 1) + 8 * i);
              v26 = [firstObject adjustmentValuesForKey:v25];
              [v19 setObject:v26 forKeyedSubscript:v25];
            }

            v22 = [adjustmentKeys countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v22);
        }

        v27 = PFStoryRecipeDisplayAssetNormalizationDataFromMediaAnalysisDictionaryAndRevision();
        if (v27)
        {
          v16 = [objc_alloc(MEMORY[0x1E69C08C0]) initWithAnalysisData:v27];
        }

        else
        {
          v16 = 0;
        }

        visionSession = v34;
        v4 = v35;
        v15 = v31;
        v11 = v32;

        v7 = v33;
      }

      else
      {
        v16 = 0;
      }
    }

    v28 = v6;
    v29 = v28;
    if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v29, OS_SIGNPOST_INTERVAL_END, v4, "PIColorNormalizationAnalysis", "", buf, 2u);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)outputImage
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (self->inputImage && (inputNormalization = self->inputNormalization) != 0)
  {
    v4 = inputNormalization;
    inputImage = [(PIColorNormalizationFilter *)self inputImage];
    v19[0] = @"temperature";
    tempTintProperties = [(PFStoryRecipeDisplayAssetNormalization *)v4 tempTintProperties];
    v7 = [tempTintProperties objectForKeyedSubscript:@"inputTemperature"];
    v19[1] = @"tint";
    v20[0] = v7;
    tempTintProperties2 = [(PFStoryRecipeDisplayAssetNormalization *)v4 tempTintProperties];
    v9 = [tempTintProperties2 objectForKeyedSubscript:@"inputTint"];
    v20[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v11 = [inputImage imageByApplyingFilter:@"PITempTintFilter" withInputParameters:v10];

    highKeyProperties = [(PFStoryRecipeDisplayAssetNormalization *)v4 highKeyProperties];
    v13 = [v11 imageByApplyingFilter:@"PIHighKey" withInputParameters:highKeyProperties];

    smartToneProperties = [(PFStoryRecipeDisplayAssetNormalization *)v4 smartToneProperties];
    v15 = [v13 imageByApplyingFilter:@"CISmartToneFilter" withInputParameters:smartToneProperties];

    smartColorProperties = [(PFStoryRecipeDisplayAssetNormalization *)v4 smartColorProperties];

    v17 = [v15 imageByApplyingFilter:@"CISmartColorFilter" withInputParameters:smartColorProperties];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      inputNormalization = [(PIColorNormalizationFilter *)self inputNormalization];
      inputNormalization2 = [(PIColorNormalizationFilter *)v5 inputNormalization];

      v8 = [inputNormalization isEqual:inputNormalization2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  inputNormalization = [(PIColorNormalizationFilter *)self inputNormalization];
  v3 = [inputNormalization hash];

  return v3;
}

+ (id)colorCubeForNormalization:(id)normalization dimension:(int64_t)dimension targetColorSpace:(CGColorSpace *)space
{
  v50 = *MEMORY[0x1E69E9840];
  normalizationCopy = normalization;
  if (!normalizationCopy)
  {
    v21 = NUAssertLogger_666();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "normalization != nil"];
      *buf = 138543362;
      v47 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_666();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v34 = dispatch_get_specific(*callStackSymbols);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v37 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v34;
        v48 = 2114;
        v49 = v37;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v31 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  if (!space)
  {
    v28 = NUAssertLogger_666();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "colorSpace != NULL"];
      *buf = 138543362;
      v47 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v30 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_666();
    v31 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v30)
    {
      if (v31)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v47 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v31)
    {
      v38 = dispatch_get_specific(*callStackSymbols);
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      callStackSymbols4 = [v39 callStackSymbols];
      v42 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v47 = v38;
      v48 = 2114;
      v49 = v42;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  v8 = normalizationCopy;
  v9 = objc_alloc_init(PIColorNormalizationFilter);
  [(PIColorNormalizationFilter *)v9 setInputNormalization:v8];
  v10 = MEMORY[0x1E695F620];
  v11 = *MEMORY[0x1E695F830];
  v45[0] = @"PIColorNormalization";
  v12 = *MEMORY[0x1E695F868];
  v44[0] = v11;
  v44[1] = v12;
  v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  v14 = *MEMORY[0x1E695F7F0];
  v45[1] = v13;
  v45[2] = MEMORY[0x1E695E110];
  v15 = *MEMORY[0x1E695F7E0];
  v44[2] = v14;
  v44[3] = v15;
  v45[3] = MEMORY[0x1E695E118];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4];
  v17 = [v10 contextWithOptions:v16];

  v43 = v9;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v19 = [v17 pi_createColorCubeDataForFilters:v18 dimension:dimension colorSpace:space];

  return v19;
}

+ (id)logger
{
  if (logger_s_once != -1)
  {
    dispatch_once(&logger_s_once, &__block_literal_global_677);
  }

  v3 = logger_s_logger;

  return v3;
}

uint64_t __36__PIColorNormalizationFilter_logger__block_invoke()
{
  logger_s_logger = os_log_create("PhotoImaging", "PIColorNormalizationFilter");

  return MEMORY[0x1EEE66BB8]();
}

@end