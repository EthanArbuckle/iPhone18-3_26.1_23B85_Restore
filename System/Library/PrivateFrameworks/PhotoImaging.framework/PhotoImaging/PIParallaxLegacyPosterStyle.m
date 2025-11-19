@interface PIParallaxLegacyPosterStyle
+ (id)_localLightDataForImage:(id)a3;
+ (id)applyInactiveStyleToImage:(id)a3 error:(id *)a4;
+ (void)initialize;
@end

@implementation PIParallaxLegacyPosterStyle

+ (id)_localLightDataForImage:(id)a3
{
  v3 = MEMORY[0x1E69B3BE8];
  v4 = a3;
  v5 = [[v3 alloc] initWithTargetPixelCount:0x40000];
  [v4 extent];
  v6 = NUPixelSizeFromCGSize();
  [v5 scaleForImageSize:{v6, v7}];
  NUScaleToDouble();
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, v8, v8);
  v12 = v13;
  v9 = [v4 imageByApplyingTransform:&v12];

  v10 = [v9 localLightStatisticsNoProxy];

  return v10;
}

+ (id)applyInactiveStyleToImage:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v20 = NUAssertLogger_10647();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "image != nil"];
      *buf = 138543362;
      v34 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_10647();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(*v22);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v28;
        v35 = 2114;
        v36 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = +[(PIParallaxStyle *)PIParallaxOriginalStyle];
  v9 = [v8 inactiveFilter];
  if (v9)
  {
    v10 = s_log;
    v11 = v10;
    v12 = s_signpost;
    if ((s_signpost - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PIParallaxLegacyPosterStyle.localLight", "", buf, 2u);
    }

    v13 = [a1 _localLightDataForImage:v7];
    v14 = s_log;
    v15 = v14;
    v16 = s_signpost;
    if ((s_signpost - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7694000, v15, OS_SIGNPOST_INTERVAL_END, v16, "PIParallaxLegacyPosterStyle.localLight", "", buf, 2u);
    }

    [v7 extent];
    [v9 setVisibleFrame:?];
    [v9 setRenderScale:1.0];
    [v9 setLocalLightData:v13];
    [v9 setInputGuideImage:v7];
    [v9 setInputBackgroundImage:v7];
    v17 = [v9 outputBackgroundImage];
    v18 = v17;
    if (a4 && !v17)
    {
      *a4 = [MEMORY[0x1E69B3A48] failureError:@"Failed to produce background image with filter" object:v9];
    }
  }

  else if (a4)
  {
    [MEMORY[0x1E69B3A48] resourceUnavailableError:@"Inactive filter is not available" object:0];
    *a4 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PIParallaxLegacyPosterStyle_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

os_signpost_id_t __41__PIParallaxLegacyPosterStyle_initialize__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.photos.PhotoImaging", "legacyPosterStyle");
  v3 = s_log;
  s_log = v2;

  result = os_signpost_id_make_with_pointer(s_log, *(a1 + 32));
  s_signpost = result;
  return result;
}

@end