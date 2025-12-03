@interface PIPipelineFilters
+ (id)applyOrientationFilter;
+ (id)autoCropFilter;
+ (id)autoloopStabilizedVideoFilter;
+ (id)exifOrientationAndCropStraightenOnly;
+ (id)histogramOptimizationFilter;
+ (id)iosCropToolFilter;
+ (id)noCropFilter;
+ (id)noGeometryFilter;
+ (id)noMuteFilter;
+ (id)noOrientationFilter;
+ (id)noRedEyeFilter;
+ (id)noTrimFilter;
+ (id)oneShotPortraitV2ExportFilter;
+ (id)orientationAsMetaDataFilter;
+ (id)perspectiveStraightenWithoutCropFilter;
+ (id)rawFaceBalanceFilter;
+ (id)rawSourceFilterIncludingOrientation;
+ (id)sourceFilter;
+ (id)sourceFilterNoOrientation;
+ (id)stopAtTagIncludeGeometryFilter:(id)filter;
+ (id)stopAtTagIncludeOrientationFilter:(id)filter;
+ (id)stripAllTimeAdjustmentsFilter;
@end

@implementation PIPipelineFilters

+ (id)oneShotPortraitV2ExportFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_190];

  return v2;
}

id __50__PIPipelineFilters_oneShotPortraitV2ExportFilter__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = [a3 objectForKeyedSubscript:@"portraitEffect"];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_9;
  }

  v12 = [v10 objectForKeyedSubscript:@"enabled"];
  if (([v12 BOOLValue] & 1) == 0)
  {

    goto LABEL_9;
  }

  v13 = [v8 versionForPortraitEffect:v11];

  if (v13 <= 1)
  {
LABEL_9:
    v14 = v9;
    goto LABEL_10;
  }

  v23 = 0;
  v14 = [v8 inputForPath:@"/PortraitV2" error:&v23];
  v15 = v23;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v14 settings];
      v17 = [v16 mutableCopy];

      [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"disablePortraitMixing"];
      v18 = [PIPortraitEffectNode alloc];
      v19 = [v14 input];
      v20 = [v14 blurMap];
      v21 = [(PIPortraitEffectNode *)v18 initWithInput:v19 blurMap:v20 settings:v17];

      if ([v8 resetTag:@"/PortraitV2" input:v21 error:a5])
      {
        v14 = v9;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      *a5 = [MEMORY[0x1E69B3A48] mismatchError:@"Unexpected PortraitEffect node" object:v14];

      v14 = 0;
    }
  }

  else
  {
    *a5 = [MEMORY[0x1E69B3A48] errorWithCode:3 reason:@"Missing PortraitV2 tag" object:0 underlyingError:v15];
  }

LABEL_10:

  return v14;
}

+ (id)sourceFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_184_27999];

  return v2;
}

id __33__PIPipelineFilters_sourceFilter__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = [a3 objectForKeyedSubscript:@"source"];
  v9 = [v7 renderNodeFromSource:v8 settings:&unk_1F4724578 error:a5];

  return v9;
}

+ (id)autoloopStabilizedVideoFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_176_28008];

  return v2;
}

id __50__PIPipelineFilters_autoloopStabilizedVideoFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  v9 = [v8 getTagWithPath:@"/AutoLoop/StabilizedVideo" error:a5];
  [v8 resetTag:@"/AutoLoop/Output" input:v9];

  return v7;
}

+ (id)applyOrientationFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_174];

  return v2;
}

id __43__PIPipelineFilters_applyOrientationFilter__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [a3 objectForKeyedSubscript:@"orientation"];
  v9 = v8;
  v10 = v7;
  if (v8)
  {
    v11 = [v8 objectForKeyedSubscript:@"value"];
    v12 = [v11 integerValue];

    v10 = [v6 orientedNode:v7 withOrientation:v12];
  }

  return v10;
}

+ (id)stopAtTagIncludeOrientationFilter:(id)filter
{
  filterCopy = filter;
  v4 = objc_alloc(MEMORY[0x1E69B3C30]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PIPipelineFilters_stopAtTagIncludeOrientationFilter___block_invoke;
  v8[3] = &unk_1E82ACA50;
  v9 = filterCopy;
  v5 = filterCopy;
  v6 = [v4 initWithBlock:v8];

  return v6;
}

id __55__PIPipelineFilters_stopAtTagIncludeOrientationFilter___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = [v7 getTagWithPath:*(a1 + 32) error:a5];
  if (v8)
  {
    [v7 resetTag:@"/pre-Orientation" input:v8];
  }

  v9 = [v7 getTagWithPath:@"/Orientation" error:a5];

  return v9;
}

+ (id)stopAtTagIncludeGeometryFilter:(id)filter
{
  filterCopy = filter;
  v4 = objc_alloc(MEMORY[0x1E69B3C30]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PIPipelineFilters_stopAtTagIncludeGeometryFilter___block_invoke;
  v8[3] = &unk_1E82ACA50;
  v9 = filterCopy;
  v5 = filterCopy;
  v6 = [v4 initWithBlock:v8];

  return v6;
}

id __52__PIPipelineFilters_stopAtTagIncludeGeometryFilter___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = [v7 getTagWithPath:*(a1 + 32) error:a5];
  if (v8)
  {
    [v7 resetTag:@"/pre-Geometry" input:v8];
  }

  v9 = [v7 getTagWithPath:@"/post-Geometry" error:a5];

  return v9;
}

+ (id)histogramOptimizationFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_166_28034];

  return v2;
}

id __48__PIPipelineFilters_histogramOptimizationFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a4;
  v9 = [v7 getTagWithPath:@"pre-PortraitVideo" error:a5];
  if (v9)
  {
    [v7 resetTag:@"/post-PortraitVideo" input:v9];
  }

  return v8;
}

+ (id)perspectiveStraightenWithoutCropFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_161];

  return v2;
}

id __59__PIPipelineFilters_perspectiveStraightenWithoutCropFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a4;
  v9 = [v7 getTagWithPath:@"/perspectiveStraighten" error:a5];
  if (v9)
  {
    [v7 resetTag:@"/Crop" input:v9];
  }

  return v8;
}

+ (id)orientationAsMetaDataFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_153];

  return v2;
}

id __48__PIPipelineFilters_orientationAsMetaDataFilter__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [a3 objectForKeyedSubscript:@"orientation"];
  v9 = v8;
  v10 = v7;
  if (v8)
  {
    v11 = [v8 objectForKeyedSubscript:@"value"];
    [v11 integerValue];

    v10 = [v6 orientedNode:v7 withOrientation:NUOrientationInverse()];
  }

  return v10;
}

+ (id)noOrientationFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_148];

  return v2;
}

id __40__PIPipelineFilters_noOrientationFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  v9 = [v8 getTagWithPath:@"/pre-Orientation" error:a5];
  [v8 resetTag:@"/Orientation" input:v9];

  return v7;
}

+ (id)noGeometryFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_143_28048];

  return v2;
}

id __37__PIPipelineFilters_noGeometryFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  v9 = [v8 getTagWithPath:@"/pre-Geometry" error:a5];
  [v8 resetTag:@"/post-Geometry" input:v9];

  return v7;
}

+ (id)stripAllTimeAdjustmentsFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_132];

  return v2;
}

id __50__PIPipelineFilters_stripAllTimeAdjustmentsFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  v9 = [v8 getTagWithPath:@"/pre-Trim" error:a5];
  [v8 resetTag:@"Trim" input:v9];
  v10 = [v8 getTagWithPath:@"pre-SloMo" error:a5];

  [v8 resetTag:@"SloMo" input:v10];

  return v7;
}

+ (id)iosCropToolFilter
{
  if (iosCropToolFilter_onceToken != -1)
  {
    dispatch_once(&iosCropToolFilter_onceToken, &__block_literal_global_122_28062);
  }

  v3 = iosCropToolFilter_filter;

  return v3;
}

uint64_t __38__PIPipelineFilters_iosCropToolFilter__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_124];
  v1 = iosCropToolFilter_filter;
  iosCropToolFilter_filter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __38__PIPipelineFilters_iosCropToolFilter__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  v9 = [v8 getTagWithPath:@"/pre-Geometry" error:a5];
  [v8 resetTag:@"/post-Adjustments" input:v9];

  return v7;
}

+ (id)noCropFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_116_28067];

  return v2;
}

id __33__PIPipelineFilters_noCropFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  v8 = a2;
  v9 = [v8 getTagWithPath:@"/pre-Crop" error:a5];
  [v8 resetTag:@"/pre-Orientation" input:v9];

  return v7;
}

+ (id)noMuteFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_105_28072];

  return v2;
}

id __33__PIPipelineFilters_noMuteFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = [v6 getTagWithPath:@"pre-Mute" error:a5];
  [v6 resetTag:@"Mute" input:v7];
  v8 = [v6 getTagWithPath:@"Image" error:a5];

  return v8;
}

+ (id)noTrimFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_79];

  return v2;
}

id __33__PIPipelineFilters_noTrimFilter__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a3;
  v11 = [v8 getTagWithPath:@"/pre-Trim" error:a5];
  [v8 resetTag:@"/SloMo" input:v11];
  v12 = [v10 objectForKeyedSubscript:@"slomo"];

  v13 = v9;
  if (v12)
  {
    memset(&v27, 0, sizeof(v27));
    v14 = [v12 objectForKeyedSubscript:@"start"];
    v15 = [v14 intValue];
    v16 = [v12 objectForKeyedSubscript:@"startScale"];
    CMTimeMake(&v27, v15, [v16 intValue]);

    memset(&v26, 0, sizeof(v26));
    v17 = [v12 objectForKeyedSubscript:@"end"];
    v18 = [v17 intValue];
    v19 = [v12 objectForKeyedSubscript:@"endScale"];
    CMTimeMake(&v26, v18, [v19 intValue]);

    v20 = [v12 objectForKeyedSubscript:@"rate"];
    [v20 floatValue];
    v22 = v21;

    v25 = v27;
    v24 = v26;
    v13 = [v8 createSloMoWithInput:v9 startTime:&v25 endTime:&v24 rate:a5 error:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v26.value), v22))}];
  }

  return v13;
}

+ (id)noRedEyeFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_71_28104];

  return v2;
}

id __35__PIPipelineFilters_noRedEyeFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = [v6 getTagWithPath:@"/pre-RedEye" error:a5];
  [v6 resetTag:@"/post-RedEye" input:v7];
  v8 = [v6 getTagWithPath:@"/post-RedEye" error:a5];

  return v8;
}

+ (id)sourceFilterNoOrientation
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_56_28115];

  return v2;
}

id __46__PIPipelineFilters_sourceFilterNoOrientation__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:&unk_1F4724550];
  v10 = [v8 objectForKeyedSubscript:@"raw"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:@"inputDecoderVersion"];
    [v9 setObject:v12 forKeyedSubscript:@"inputDecoderVersion"];

    v13 = [v11 objectForKeyedSubscript:@"inputSushiLevel"];
    if (v13)
    {
      [v9 setObject:v13 forKeyedSubscript:@"kCGImageSourceShouldExtendRaw"];
    }

    v14 = [v11 objectForKeyedSubscript:@"gainMapVersion"];
    [v9 setObject:v14 forKeyedSubscript:@"gainMapVersion"];

    v15 = [v11 objectForKeyedSubscript:@"gainMapParameters"];
    [v9 setObject:v15 forKeyedSubscript:@"gainMapParameters"];

    v16 = [v8 objectForKeyedSubscript:@"source"];
    v17 = [v7 renderNodeFromSource:v16 settings:v9 error:a5];

    if (v17)
    {
      v18 = [v7 getTagWithPath:@"/ShowOriginalSource" error:a5];
      [v18 setInput:v17];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = [v7 getTagWithPath:@"/ShowOriginalSource" error:a5];
  }

  return v18;
}

+ (id)rawSourceFilterIncludingOrientation
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_39];

  return v2;
}

id __56__PIPipelineFilters_rawSourceFilterIncludingOrientation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = [v9 objectForKeyedSubscript:@"raw"];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 objectForKeyedSubscript:@"inputDecoderVersion"];
    [v11 setObject:v14 forKeyedSubscript:@"inputDecoderVersion"];

    v15 = [v13 objectForKeyedSubscript:@"inputSushiLevel"];
    if (v15)
    {
      [v11 setObject:v15 forKeyedSubscript:@"kCGImageSourceShouldExtendRaw"];
    }

    v16 = [v9 objectForKeyedSubscript:@"source"];
    v17 = [v8 renderNodeFromSource:v16 settings:v11 error:a5];

    return v17;
  }

  else
  {
    v19 = NUAssertLogger_28143();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected RAW in rawSourceFilterIncludingOrientation"];
      v32 = 138543362;
      v33 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v32, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_28143();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(*v21);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        v32 = 138543618;
        v33 = v27;
        v34 = 2114;
        v35 = v31;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v32, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      v32 = 138543362;
      v33 = v26;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v32, 0xCu);
    }

    _NUAssertFailHandler();
    return NUAssertLogger_28143();
  }
}

+ (id)rawFaceBalanceFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_11];

  return v2;
}

id __41__PIPipelineFilters_rawFaceBalanceFilter__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [v8 objectForKeyedSubscript:@"raw"];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:@"inputDecoderVersion"];
    [v9 setObject:v12 forKeyedSubscript:@"inputDecoderVersion"];

    [v9 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"skipOrientation"];
  }

  v13 = [v8 objectForKeyedSubscript:@"source"];
  v14 = [v7 renderNodeFromSource:v13 settings:v9 error:a5];

  v15 = [v7 getTagWithPath:@"Raw/Linear" error:a5];
  if (v15)
  {

    v18[0] = @"inputImage";
    v18[1] = @"inputBoost";
    v19[0] = v15;
    v19[1] = &unk_1F471FC40;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v14 = [v7 nodeByApplyingFilterWithName:@"PIForwardFakeBoost" useHDRFilter:0 settingsAndInputs:v16];
  }

  return v14;
}

+ (id)exifOrientationAndCropStraightenOnly
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_3];

  return v2;
}

id __57__PIPipelineFilters_exifOrientationAndCropStraightenOnly__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = [v6 getTagWithPath:@"/pre-Adjustments" error:a5];
  [v6 resetTag:@"/pre-Crop" input:v7];
  v8 = [v6 getTagWithPath:@"/Crop" error:a5];

  v9 = [v8 outputImageGeometry:a5];
  v10 = [v9 orientation];

  v11 = [v6 orientedNode:v8 withOrientation:v10];

  return v11;
}

+ (id)autoCropFilter
{
  v2 = [objc_alloc(MEMORY[0x1E69B3C30]) initWithBlock:&__block_literal_global_28176];

  return v2;
}

id __35__PIPipelineFilters_autoCropFilter__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  v7 = [v6 getTagWithPath:@"/pre-Adjustments" error:a5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 outputImageGeometry:a5];
    v10 = v9;
    if (v9)
    {
      v11 = [v6 orientedNode:v8 withOrientation:{objc_msgSend(v9, "orientation")}];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end