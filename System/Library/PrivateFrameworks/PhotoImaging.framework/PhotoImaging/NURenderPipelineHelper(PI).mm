@interface NURenderPipelineHelper(PI)
- (PIPortraitVideoDebugDetectionsRenderNode)portraitVideoDebugDetectedObjects:()PI source:cinematographyState:monochrome:error:;
- (PIPortraitVideoRenderNode)portraitVideo:()PI disparityInput:disparityKeyframes:apertureKeyframes:debugMode:error:;
- (PIVideoCrossfadeLoopNode)videoCrossfadeLoop:()PI crossfadeAdjustment:error:;
- (PIVideoReframeNode)videoReframe:()PI reframes:error:;
- (id)debugNodeByApplyingFilterWithName:()PI useHDRFilter:settingsAndInputs:;
- (id)nodeByApplyingFilterWithName:()PI useHDRFilter:settingsAndInputs:;
- (id)performApertureRedeyeOnImage:()PI useHDRFilter:redEyeAdjustment:;
- (id)performLongExposureFusionForComposition:()PI longExposureImage:useHDRFilter:error:;
- (id)performRedeyeOnImage:()PI useHDRFilter:redEyeAdjustment:;
- (id)remapPortraitV2Strength:()PI portraitEffectKind:;
- (uint64_t)versionForPortraitEffect:()PI;
@end

@implementation NURenderPipelineHelper(PI)

- (id)debugNodeByApplyingFilterWithName:()PI useHDRFilter:settingsAndInputs:
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v6 = a5;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = *v27;
  v25 = *MEMORY[0x1E695FB40];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v26 + 1) + 8 * i);
      v15 = [v9 objectForKeyedSubscript:v14];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = dictionary2;
      }

      else
      {
        if ([v14 isEqualToString:@"filterVersion"])
        {
          v16 = dictionary;
          v17 = v15;
          v18 = v25;
          goto LABEL_12;
        }

        v16 = dictionary;
      }

      v17 = v15;
      v18 = v14;
LABEL_12:
      [v16 setObject:v17 forKeyedSubscript:v18];
    }

    v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v11);
LABEL_14:

  if (a4)
  {
    v19 = [PIPhotosPipelineHDRFilters HDRFilterForSDRFilter:v24];

    v20 = v19;
  }

  else
  {
    v20 = v24;
  }

  v21 = [objc_alloc(MEMORY[0x1E69B3A30]) initWithFilterName:v20 settings:dictionary inputs:dictionary2];

  return v21;
}

- (id)nodeByApplyingFilterWithName:()PI useHDRFilter:settingsAndInputs:
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v6 = a5;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = *v27;
  v25 = *MEMORY[0x1E695FB40];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v26 + 1) + 8 * i);
      v15 = [v9 objectForKeyedSubscript:v14];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = dictionary2;
      }

      else
      {
        if ([v14 isEqualToString:@"filterVersion"])
        {
          v16 = dictionary;
          v17 = v15;
          v18 = v25;
          goto LABEL_12;
        }

        v16 = dictionary;
      }

      v17 = v15;
      v18 = v14;
LABEL_12:
      [v16 setObject:v17 forKeyedSubscript:v18];
    }

    v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v11);
LABEL_14:

  if (a4)
  {
    v19 = [PIPhotosPipelineHDRFilters HDRFilterForSDRFilter:v24];

    v20 = v19;
  }

  else
  {
    v20 = v24;
  }

  v21 = [objc_alloc(MEMORY[0x1E69B3A70]) initWithFilterName:v20 settings:dictionary inputs:dictionary2];

  return v21;
}

- (id)performRedeyeOnImage:()PI useHDRFilter:redEyeAdjustment:
{
  v20[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:@"inputCorrectionInfo"];
  if ([v10 count])
  {
    v11 = [v9 objectForKeyedSubscript:@"iPhone"];
    v12 = &stru_1F46EAF88;
    if (v11)
    {
      v12 = @"iPhone";
    }

    v13 = v12;

    v19[0] = @"inputImage";
    v14 = objc_alloc(MEMORY[0x1E69B3C70]);
    v15 = [v14 initWithInput:v8 scale:{*MEMORY[0x1E69B3918], *(MEMORY[0x1E69B3918] + 8)}];
    v20[0] = v15;
    v20[1] = v8;
    v19[1] = @"inputDestinationImage";
    v19[2] = @"inputCorrectionInfo";
    v20[2] = v10;
    v20[3] = v13;
    v19[3] = @"inputCameraModel";
    v19[4] = @"__dominantInputSettingsKey";
    v20[4] = @"inputDestinationImage";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];

    v17 = [self nodeByApplyingFilterWithName:@"PIRedEye" useHDRFilter:a4 settingsAndInputs:v16];

    v8 = v17;
  }

  return v8;
}

- (id)performApertureRedeyeOnImage:()PI useHDRFilter:redEyeAdjustment:
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = @"inputImage";
  v15[1] = @"inputSpots";
  v16[0] = a3;
  v8 = MEMORY[0x1E69B3C38];
  v9 = a3;
  v10 = [a5 objectForKeyedSubscript:@"inputCorrectionInfo"];
  v11 = [v8 redEyeSpotsWithCorrectionInfo:v10];
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = [self nodeByApplyingFilterWithName:@"PIApertureRedEyeFilter" useHDRFilter:a4 settingsAndInputs:v12];

  return v13;
}

- (id)performLongExposureFusionForComposition:()PI longExposureImage:useHDRFilter:error:
{
  v44[9] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [v10 objectForKeyedSubscript:@"highResFusion"];
  v13 = [v12 objectForKeyedSubscript:@"alignment"];
  v14 = [v13 objectForKeyedSubscript:@"extent"];
  v15 = [v13 objectForKeyedSubscript:@"transform"];
  v16 = [self getTagWithPath:@"AutoLoop/LongExposureMotion" error:a6];
  if (v16)
  {
    v38 = a5;
    v40 = v10;
    v17 = [v10 objectForKeyedSubscript:@"source"];
    v18 = [self renderNodeFromSource:v17 settings:&unk_1F47245A0 error:a6];

    v41 = v18;
    if (v18)
    {
      v19 = [v11 outputImageGeometry:a6];
      v20 = v19;
      if (v19)
      {
        v37 = v12;
        v43[0] = @"__dominantInputSettingsKey";
        v43[1] = @"__gainMapMode";
        v44[0] = @"inputStillImage";
        v44[1] = &unk_1F471F2E8;
        v43[2] = @"inputVideoScale";
        v21 = MEMORY[0x1E696AD98];
        renderScale = [v19 renderScale];
        [v20 renderScale];
        v35 = [v21 numberWithDouble:renderScale / v23];
        v44[2] = v35;
        v43[3] = @"inputRenderScale";
        v34 = [MEMORY[0x1E69B3C38] scaleMultiplyOfScalar:1.0];
        v44[3] = v34;
        v43[4] = @"inputAlignmentExtent";
        v24 = [self vectorWithFloats:v14];
        v44[4] = v24;
        v43[5] = @"inputAlignmentTransform";
        v25 = [self vectorWithFloats:v15];
        v44[5] = v25;
        v44[6] = v11;
        v43[6] = @"inputImage";
        v43[7] = @"inputStillImage";
        v43[8] = @"inputMaskImage";
        v44[7] = v41;
        v44[8] = v16;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:9];
        v39 = [self nodeByApplyingFilterWithName:@"PILongExposureFusion" useHDRFilter:v38 settingsAndInputs:v26];

        v27 = [v14 objectAtIndexedSubscript:2];
        integerValue = [v27 integerValue];
        v28 = [v14 objectAtIndexedSubscript:3];
        v29 = v15;
        v30 = v20;
        integerValue2 = [v28 integerValue];

        v12 = v37;
        v42[0] = 0;
        v42[1] = 0;
        v42[2] = integerValue;
        v42[3] = integerValue2;
        v20 = v30;
        v15 = v29;
        v32 = [self cropNode:v39 cropRect:v42 cropSettings:0];
      }

      else
      {
        v32 = 0;
      }

      v10 = v40;
    }

    else
    {
      v32 = 0;
      v10 = v40;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (uint64_t)versionForPortraitEffect:()PI
{
  v3 = [a3 objectForKeyedSubscript:@"kind"];
  if ([&unk_1F471FEC0 containsObject:v3])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (PIPortraitVideoDebugDetectionsRenderNode)portraitVideoDebugDetectedObjects:()PI source:cinematographyState:monochrome:error:
{
  v39 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!a7)
  {
    v22 = NUAssertLogger_28934();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v36 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_28934();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(*v24);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v30;
        v37 = 2114;
        v38 = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v29;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v14 = v13;
  definition = [v12 definition];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceDefinitions = [definition sourceDefinitions];
    firstObject = [sourceDefinitions firstObject];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = definition;
    }

    else
    {
      firstObject = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [PIPortraitVideoDebugDetectionsRenderNode alloc];
    v19 = [firstObject url];
    v20 = [(PIPortraitVideoDebugDetectionsRenderNode *)v18 initWithInput:v11 assetURL:v19 cinematographyState:v14 monochrome:a6];
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Unexpected source type" object:v12];
    *a7 = v20 = 0;
  }

  return v20;
}

- (PIPortraitVideoRenderNode)portraitVideo:()PI disparityInput:disparityKeyframes:apertureKeyframes:debugMode:error:
{
  v39 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (!a8)
  {
    v22 = NUAssertLogger_28934();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v36 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v26 = NUAssertLogger_28934();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        v30 = dispatch_get_specific(*v24);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v30;
        v37 = 2114;
        v38 = v34;
        _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = v29;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v17 = v16;
  v18 = __112__NURenderPipelineHelper_PI__portraitVideo_disparityInput_disparityKeyframes_apertureKeyframes_debugMode_error___block_invoke(v15);
  v19 = __112__NURenderPipelineHelper_PI__portraitVideo_disparityInput_disparityKeyframes_apertureKeyframes_debugMode_error___block_invoke(v17);
  v20 = [[PIPortraitVideoRenderNode alloc] initWithInput:v13 disparityInput:v14 disparityKeyframes:v18 apertureKeyframes:v19 debugMode:a7];

  return v20;
}

- (PIVideoCrossfadeLoopNode)videoCrossfadeLoop:()PI crossfadeAdjustment:error:
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!a5)
  {
    v23 = NUAssertLogger_28934();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(v44.start.value) = 138543362;
      *(&v44.start.value + 4) = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v44, 0xCu);
    }

    v25 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_28934();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(*v25);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v44.start.value) = 138543618;
        *(&v44.start.value + 4) = v31;
        LOWORD(v44.start.flags) = 2114;
        *(&v44.start.flags + 2) = v35;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v44, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(v44.start.value) = 138543362;
      *(&v44.start.value + 4) = v30;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v44, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:@"crossfadeDurationValue"];
  v11 = [v9 objectForKeyedSubscript:@"crossfadeDurationTimescale"];
  v12 = [v9 objectForKeyedSubscript:@"startTimeValue"];
  v13 = [v9 objectForKeyedSubscript:@"startTimeTimescale"];
  v14 = [v9 objectForKeyedSubscript:@"timeRangeStartValue"];
  v15 = [v9 objectForKeyedSubscript:@"timeRangeStartTimescale"];
  v16 = [v9 objectForKeyedSubscript:@"timeRangeDurationValue"];
  v36 = [v9 objectForKeyedSubscript:@"timeRangeDurationTimescale"];
  v37 = v10;
  v38 = v11;
  if (v10 && v11)
  {
    if (v7)
    {
      memset(&v43, 0, sizeof(v43));
      CMTimeMake(&v43, [v10 longLongValue], objc_msgSend(v11, "intValue"));
      memset(&v42, 0, sizeof(v42));
      CMTimeMake(&v42, [v12 longLongValue], objc_msgSend(v13, "intValue"));
      memset(&v44, 0, sizeof(v44));
      CMTimeMake(&start.start, [v14 longLongValue], objc_msgSend(v15, "intValue"));
      v17 = v36;
      CMTimeMake(&duration, [v16 longLongValue], objc_msgSend(v36, "intValue"));
      CMTimeRangeMake(&v44, &start.start, &duration);
      v18 = [PIVideoCrossfadeLoopNode alloc];
      start = v44;
      duration = v43;
      v39 = v42;
      v19 = [(PIVideoCrossfadeLoopNode *)v18 initWithInput:v7 timeRange:&start crossfadeDuration:&duration startTime:&v39];
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E69B3A48];
    null = [MEMORY[0x1E695DFB0] null];
    *a5 = [v20 missingError:@"input to VideoCrossfadeLoop cannot be nil" object:null];

    v19 = 0;
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Missing duration for crossfade" object:v9];
    *a5 = v19 = 0;
  }

  v17 = v36;
LABEL_9:

  return v19;
}

- (PIVideoReframeNode)videoReframe:()PI reframes:error:
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!a5)
  {
    v23 = NUAssertLogger_28934();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_28934();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(*v25);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2114;
        *&buf[14] = v35;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v30;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:@"keyframes"];
  v11 = [v9 objectForKeyedSubscript:@"stabCropRect"];
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      v38 = [PIReframeKeyframe keyframesFromDictionaryRepresentations:v10];
      v13 = [v12 objectForKeyedSubscript:@"X"];
      intValue = [v13 intValue];
      v14 = [v12 objectForKeyedSubscript:@"Y"];
      intValue2 = [v14 intValue];
      v15 = [v12 objectForKeyedSubscript:@"Width"];
      intValue3 = [v15 intValue];
      v17 = [v12 objectForKeyedSubscript:@"Height"];
      intValue4 = [v17 intValue];

      *buf = intValue;
      *&buf[8] = intValue2;
      *&buf[16] = intValue3;
      v40 = intValue4;
      v19 = [[PIVideoReframeNode alloc] initWithKeyframes:v38 stabCropRect:buf input:v7];

      goto LABEL_8;
    }

    v20 = MEMORY[0x1E69B3A48];
    v21 = @"Invalid data type for stabCropRect";
  }

  else
  {
    v20 = MEMORY[0x1E69B3A48];
    v21 = @"Invalid data type for keyframes";
  }

  [v20 invalidError:v21 object:v9];
  *a5 = v19 = 0;
LABEL_8:

  return v19;
}

- (id)remapPortraitV2Strength:()PI portraitEffectKind:
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.5;
  }

  if (([v6 isEqualToString:@"StudioV2"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"StageWhite"))
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = pow(v8, 0.75);
    v11 = v9;
  }

  else if (([v6 isEqualToString:@"ContourV2"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"StageV2") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"StageMonoV2"))
  {
    v11 = MEMORY[0x1E696AD98];
    v10 = v8 * 1.8 + v8 * v8 * -0.8;
  }

  else
  {
    v11 = MEMORY[0x1E696AD98];
    v10 = v8;
  }

  v12 = [v11 numberWithDouble:v10];

  return v12;
}

@end