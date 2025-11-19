@interface PIPortraitAutoCalculator
+ (BOOL)canApplyPortraitEffectsWithMetadata:(id)a3;
+ (BOOL)isTapToFocusEnabled:(id)a3;
+ (id)depthEffectInfoDictionaryFromFaceObservations:(id)a3 metadata:(id)a4 orientation:(int64_t)a5 valuesAtCapture:(id)a6;
+ (id)depthEffectInfoDictionaryFromFaceObservations:(id)a3 valuesAtCapture:(id)a4 lumaNoiseScale:(float)a5 orientation:(int64_t)a6;
+ (id)focusRectDictionaryFromMetadata:(id)a3;
+ (id)focusRectDictionaryFromRect:(CGRect)a3;
+ (id)portraitEffectInfoDictionaryFromFaceObservations:(id)a3 orientation:(int64_t)a4 valuesAtCapture:(id)a5;
+ (id)portraitInfoDictionaryFromCameraMetadata:(id)a3;
+ (id)portraitInfoDictionaryFromFaceObservations:(id)a3 metadata:(id)a4 orientation:(int64_t)a5 valuesAtCapture:(id)a6;
- (void)_calculateWithImageProperties:(id)a3 valuesAtCapture:(id)a4 completion:(id)a5;
- (void)submit:(id)a3;
@end

@implementation PIPortraitAutoCalculator

- (void)_calculateWithImageProperties:(id)a3 valuesAtCapture:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NURenderRequest *)self composition];
  v12 = [v11 objectForKeyedSubscript:@"orientation"];

  v13 = [v12 objectForKeyedSubscript:@"value"];
  v14 = [v13 intValue];
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15;

  v17 = [PIFaceObservationCache faceRequestWithRequest:self];
  v18 = [(NURenderRequest *)self responseQueue];
  [v17 setResponseQueue:v18];

  [v17 setName:@"PIPortraitAutoCalculator-faceDetect"];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __85__PIPortraitAutoCalculator__calculateWithImageProperties_valuesAtCapture_completion___block_invoke;
  v28 = &unk_1E82AC9E0;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v16;
  v19 = v10;
  v20 = v9;
  v21 = v8;
  v22 = MEMORY[0x1CCA61740](&v25);
  v23 = [(PIPortraitAutoCalculator *)self faceObservationCache:v25];

  if (v23)
  {
    v24 = [(PIPortraitAutoCalculator *)self faceObservationCache];
    [v24 submit:v17 response:v22];
  }

  else
  {
    [v17 submit:v22];
  }
}

void __85__PIPortraitAutoCalculator__calculateWithImageProperties_valuesAtCapture_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = 0;
  v3 = [a2 result:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = [v3 faces];
    v6 = [*(a1 + 32) metadata];
    v7 = [PIPortraitAutoCalculator portraitInfoDictionaryFromFaceObservations:v5 metadata:v6 orientation:*(a1 + 56) valuesAtCapture:*(a1 + 40)];

    v8 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v7];
    (*(*(a1 + 48) + 16))();

    v4 = v8;
  }

  else
  {
    v9 = *(a1 + 48);
    v7 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v9 + 16))(v9, v7);
  }
}

- (void)submit:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v13 = NUAssertLogger_27584();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_27584();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v21;
        v31 = 2114;
        v32 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v6 = objc_alloc(MEMORY[0x1E69B3B30]);
  v7 = [(NURenderRequest *)self composition];
  v8 = [v6 initWithComposition:v7];

  v9 = [(NURenderRequest *)self responseQueue];
  [v8 setResponseQueue:v9];

  [v8 setName:@"PIPortraitAutoCalculator-getValuesAtCapture-imageProperties"];
  v10 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"pre-Adjustments"];
  v28 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v8 setPipelineFilters:v11];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __35__PIPortraitAutoCalculator_submit___block_invoke;
  v26[3] = &unk_1E82ACC00;
  v26[4] = self;
  v27 = v5;
  v12 = v5;
  [v8 submit:v26];
}

void __35__PIPortraitAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v50[13] = *MEMORY[0x1E69E9840];
  v48 = 0;
  v3 = [a2 result:&v48];
  v4 = v48;
  if (v3)
  {
    v5 = [v3 properties];
    v47 = 0;
    v6 = [PIValuesAtCapture valuesAtCaptureFromImageProperties:v5 error:&v47];
    v7 = v47;

    if (v6)
    {
      v8 = [*(a1 + 32) composition];
      v9 = [v8 objectForKeyedSubscript:@"depthEffect"];

      v10 = [*(a1 + 32) composition];
      v11 = [v10 objectForKeyedSubscript:@"portraitEffect"];

      v12 = [v9 objectForKeyedSubscript:@"depthInfo"];
      v46 = [v11 objectForKeyedSubscript:@"portraitInfo"];
      if (v12 && ([v12 objectForKeyedSubscript:@"focusRect"], v13 = objc_claimAutoreleasedReturnValue(), v13, v13) && v46)
      {
        v44 = v7;
        v14 = [v12 objectForKeyedSubscript:@"capturedAperture"];
        if (v14)
        {
          v45 = v14;
        }

        else
        {
          v18 = MEMORY[0x1E696AD98];
          [v6 aperture];
          v19 = [v18 numberWithFloat:?];
          v20 = [v12 mutableCopy];
          v45 = v19;
          [v20 setObject:v19 forKeyedSubscript:@"capturedAperture"];

          v12 = v20;
        }

        v21 = [v46 objectForKeyedSubscript:@"capturedPortraitStrength"];
        v43 = v9;
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v23 = MEMORY[0x1E696AD98];
          [v6 portraitStrength];
          v24 = [v23 numberWithFloat:?];
          v25 = [v46 mutableCopy];
          v22 = v24;
          [v25 setObject:v24 forKeyedSubscript:@"capturedPortraitStrength"];

          v46 = v25;
        }

        v26 = [v12 objectForKeyedSubscript:@"focusRect"];
        v38 = [PIPortraitAutoCalculator isStillImageDisparity:v6];
        v40 = [PIPortraitAutoCalculator isTapToFocusEnabled:v6];
        v42 = v11;
        v27 = [v6 portraitMajorVersion] >= 2 && objc_msgSend(v6, "portraitMinorVersion") != 0;
        v49[0] = @"depthInfo";
        v49[1] = @"aperture";
        v50[0] = v12;
        v50[1] = v45;
        v49[2] = @"focusRect";
        v49[3] = @"portraitInfo";
        v50[2] = v26;
        v50[3] = v46;
        v35 = v22;
        v50[4] = v22;
        v49[4] = @"portraitStrength";
        v49[5] = @"spillMatteAllowed";
        v41 = v26;
        v39 = [MEMORY[0x1E696AD98] numberWithBool:v27];
        v50[5] = v39;
        v49[6] = @"glassesMatteAllowed";
        v37 = [MEMORY[0x1E696AD98] numberWithBool:v27];
        v50[6] = v37;
        v49[7] = @"capturedPortraitMajorVersion";
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "portraitMajorVersion")}];
        v50[7] = v36;
        v49[8] = @"capturedPortraitMinorVersion";
        v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "portraitMinorVersion")}];
        v50[8] = v34;
        v49[9] = @"depthInfoMajorVersion";
        v28 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "depthVersionInfo")}];
        v50[9] = v28;
        v49[10] = @"depthInfoMinorVersion";
        v29 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "depthVersionInfo") >> 32}];
        v50[10] = v29;
        v49[11] = @"portraitDisableStage";
        v30 = [MEMORY[0x1E696AD98] numberWithBool:v38];
        v50[11] = v30;
        v49[12] = @"tapToFocusEnabled";
        v31 = [MEMORY[0x1E696AD98] numberWithBool:v40];
        v50[12] = v31;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:13];

        v33 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v32];
        (*(*(a1 + 40) + 16))();

        v9 = v43;
        v7 = v44;
        v11 = v42;
      }

      else
      {
        [*(a1 + 32) _calculateWithImageProperties:v5 valuesAtCapture:v6 completion:*(a1 + 40)];
      }
    }

    else
    {
      v16 = *(a1 + 40);
      v17 = objc_alloc(MEMORY[0x1E69B3C78]);
      v9 = [v17 initWithResult:MEMORY[0x1E695E0F8]];
      (*(v16 + 16))(v16, v9);
    }

    v4 = v7;
  }

  else
  {
    v15 = *(a1 + 40);
    v5 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v15 + 16))(v15, v5);
  }
}

+ (id)portraitInfoDictionaryFromCameraMetadata:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v43 = NUAssertLogger_27584();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "metadata != nil"];
      *buf = 138543362;
      v62 = v44;
      _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v45 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v4 = NUAssertLogger_27584();
    v47 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v47)
      {
        v50 = dispatch_get_specific(*v45);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        v53 = [v51 callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v50;
        v63 = 2114;
        v64 = v54;
        _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v47)
    {
      v48 = [MEMORY[0x1E696AF00] callStackSymbols];
      v49 = [v48 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v49;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v55 = "metadata != nil";
    _NUAssertFailHandler();
    __break(1u);
    goto LABEL_40;
  }

  v4 = v3;
  if (portraitInfoDictionaryFromCameraMetadata__onceToken != -1)
  {
    dispatch_once(&portraitInfoDictionaryFromCameraMetadata__onceToken, &__block_literal_global_27757);
  }

  v5 = MEMORY[0x1E696ACD0];
  v6 = portraitInfoDictionaryFromCameraMetadata__s_expectedClasses;
  v7 = [v4 faceObservationsData];
  v60 = 0;
  v8 = [v5 unarchivedObjectOfClasses:v6 fromData:v7 error:&v60];
  v56 = v60;

  if (!v8)
  {
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_6:
      v9 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v62 = v4;
        v63 = 2112;
        v64 = v56;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Couldn't deserialize face observations from metadata: %@, assuming empty, error: %@.", buf, 0x16u);
      }

      v8 = MEMORY[0x1E695E0F0];
      goto LABEL_9;
    }

LABEL_40:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
    goto LABEL_6;
  }

LABEL_9:
  v10 = v8;
  v59 = [v4 indexesOfShallowDepthOfFieldObservations];
  v11 = v10;
  if (v59)
  {
    v11 = [v10 objectsAtIndexes:v59];
  }

  v12 = [v4 faceOrientation];
  if (NUOrientationIsValid())
  {
    goto LABEL_19;
  }

  if (![v10 count])
  {
    v12 = 1;
LABEL_19:
    [v4 focusRectangle];
    v57 = [a1 focusRectDictionaryFromRect:?];
    [v4 minimumApertureFocalRatio];
    if (v15 <= 0.0)
    {
      v17 = 2143289344;
    }

    else
    {
      [v4 minimumApertureFocalRatio];
      v17 = v16;
    }

    [v4 maximumApertureFocalRatio];
    if (v18 <= 0.0)
    {
      v20 = 2143289344;
    }

    else
    {
      [v4 maximumApertureFocalRatio];
      v20 = v19;
    }

    v21 = [v4 SDOFRenderingVersion];
    v22 = [PIValuesAtCapture alloc];
    [v4 apertureFocalRatio];
    v24 = v23;
    [v4 portraitLightingEffectStrength];
    LODWORD(v26) = v25;
    LODWORD(v27) = v17;
    LODWORD(v28) = v20;
    LODWORD(v29) = v24;
    v30 = [(PIValuesAtCapture *)v22 initFromMinAperture:v57 maxAperture:v21 - (v21 > 3) aperture:0 focusRect:v27 portraitStrength:v28 SDOFRenderingVersion:v29 depthVersionInfo:v26];
    v31 = [v30 portraitMajorVersion] >= 2 && objc_msgSend(v30, "portraitMinorVersion") != 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 luminanceNoiseAmplitude];
    v32 = [a1 depthEffectInfoDictionaryFromFaceObservations:v11 valuesAtCapture:v30 lumaNoiseScale:v12 orientation:?];
    [v14 setObject:v32 forKeyedSubscript:@"depthInfo"];

    v33 = MEMORY[0x1E696AD98];
    [v4 apertureFocalRatio];
    v34 = [v33 numberWithFloat:?];
    [v14 setObject:v34 forKeyedSubscript:@"aperture"];

    v35 = [v30 focusRect];
    v36 = [v35 copy];
    [v14 setObject:v36 forKeyedSubscript:@"focusRect"];

    v37 = [a1 portraitEffectInfoDictionaryFromFaceObservations:v10 orientation:v12 valuesAtCapture:v30];
    [v14 setObject:v37 forKeyedSubscript:@"portraitInfo"];

    v38 = MEMORY[0x1E696AD98];
    [v30 portraitStrength];
    v39 = [v38 numberWithFloat:?];
    [v14 setObject:v39 forKeyedSubscript:@"portraitStrength"];

    v40 = [MEMORY[0x1E696AD98] numberWithBool:v31];
    [v14 setObject:v40 forKeyedSubscript:@"spillMatteAllowed"];

    v41 = [MEMORY[0x1E696AD98] numberWithBool:v31];
    [v14 setObject:v41 forKeyedSubscript:@"glassesMatteAllowed"];

    goto LABEL_29;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
  }

  v13 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v62 = v4;
    _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Couldn't deserialize face observations from metadata: %@", buf, 0xCu);
  }

  v14 = MEMORY[0x1E695E0F8];
LABEL_29:

  return v14;
}

void __69__PIPortraitAutoCalculator_portraitInfoDictionaryFromCameraMetadata___block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = portraitInfoDictionaryFromCameraMetadata__s_expectedClasses;
  portraitInfoDictionaryFromCameraMetadata__s_expectedClasses = v2;
}

+ (id)portraitEffectInfoDictionaryFromFaceObservations:(id)a3 orientation:(int64_t)a4 valuesAtCapture:(id)a5
{
  v103 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v71 = a5;
  if (!v7)
  {
    v48 = NUAssertLogger_27584();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "faceObservations != nil"];
      *buf = 138543362;
      v100 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v52 = NUAssertLogger_27584();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v53)
      {
        v61 = dispatch_get_specific(*v50);
        v62 = MEMORY[0x1E696AF00];
        v63 = v61;
        v64 = [v62 callStackSymbols];
        v65 = [v64 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v100 = v61;
        v101 = 2114;
        v102 = v65;
        _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v53)
    {
LABEL_37:
      v59 = [MEMORY[0x1E696AF00] callStackSymbols];
      v60 = [v59 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v100 = v60;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_43:

    _NUAssertFailHandler();
    __break(1u);
  }

  if ((NUOrientationIsValid() & 1) == 0)
  {
    v54 = NUAssertLogger_27584();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v100 = v55;
      _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v56 = MEMORY[0x1E69B38E8];
    v57 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v52 = NUAssertLogger_27584();
    v58 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (!v57)
    {
      if (!v58)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    if (v58)
    {
      v66 = dispatch_get_specific(*v56);
      v67 = MEMORY[0x1E696AF00];
      v68 = v66;
      v69 = [v67 callStackSymbols];
      v70 = [v69 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v100 = v66;
      v101 = 2114;
      v102 = v70;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_43;
  }

  v74 = a4;
  v75 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v7;
  v76 = [obj countByEnumeratingWithState:&v87 objects:v98 count:16];
  if (v76)
  {
    v73 = *v88;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v88 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v87 + 1) + 8 * i);
        objc_sync_enter(v8);
        v78 = v8;
        [v8 boundingBox];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:15];
        v96[0] = @"x";
        v105.origin.x = v10;
        v105.origin.y = v12;
        v105.size.width = v14;
        v105.size.height = v16;
        v17 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinX(v105)];
        v97[0] = v17;
        v96[1] = @"y";
        v106.origin.x = v10;
        v106.origin.y = v12;
        v106.size.width = v14;
        v106.size.height = v16;
        v18 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinY(v106)];
        v97[1] = v18;
        v96[2] = @"w";
        v107.origin.x = v10;
        v107.origin.y = v12;
        v107.size.width = v14;
        v107.size.height = v16;
        v19 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetWidth(v107)];
        v97[2] = v19;
        v96[3] = @"h";
        v108.origin.x = v10;
        v108.origin.y = v12;
        v108.size.width = v14;
        v108.size.height = v16;
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetHeight(v108)];
        v97[3] = v20;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:4];
        [v79 setObject:v21 forKeyedSubscript:@"faceBoundingBox"];

        v22 = [MEMORY[0x1E696AD98] numberWithInteger:v74];
        [v79 setObject:v22 forKeyedSubscript:@"orientation"];

        v23 = MEMORY[0x1E696AD98];
        [v78 faceJunkinessIndex];
        v24 = [v23 numberWithFloat:?];
        [v79 setObject:v24 forKeyedSubscript:@"faceJunkinessIndex"];

        v25 = MEMORY[0x1E696AD98];
        [v78 faceOrientationIndex];
        v26 = [v25 numberWithFloat:?];
        [v79 setObject:v26 forKeyedSubscript:@"faceOrientationIndex"];

        v27 = [v78 roll];
        [v79 setObject:v27 forKeyedSubscript:@"roll"];

        v28 = [v78 yaw];
        [v79 setObject:v28 forKeyedSubscript:@"yaw"];

        v81 = [v78 landmarks];
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v29 = [&unk_1F471FEA8 countByEnumeratingWithState:&v83 objects:v95 count:16];
        if (v29)
        {
          v80 = *v84;
          do
          {
            v82 = v29;
            for (j = 0; j != v82; ++j)
            {
              if (*v84 != v80)
              {
                objc_enumerationMutation(&unk_1F471FEA8);
              }

              v31 = *(*(&v83 + 1) + 8 * j);
              v32 = [v81 valueForKey:v31];
              v33 = v32;
              if (v32)
              {
                v34 = [v32 pointCount];
                v35 = v33;
                v36 = [v33 normalizedPoints];
                v37 = v36;
                if (v34 && v36 != 0)
                {
                  v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v34];
                  v40 = (v37 + 8);
                  do
                  {
                    v93[0] = @"x";
                    v41 = [MEMORY[0x1E696AD98] numberWithDouble:*(v40 - 1)];
                    v93[1] = @"y";
                    v94[0] = v41;
                    v42 = [MEMORY[0x1E696AD98] numberWithDouble:*v40];
                    v94[1] = v42;
                    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:2];
                    [v39 addObject:v43];

                    v40 += 2;
                    --v34;
                  }

                  while (v34);
                  [v79 setObject:v39 forKeyedSubscript:v31];
                }
              }
            }

            v29 = [&unk_1F471FEA8 countByEnumeratingWithState:&v83 objects:v95 count:16];
          }

          while (v29);
        }

        [v75 addObject:v79];

        objc_sync_exit(v78);
      }

      v76 = [obj countByEnumeratingWithState:&v87 objects:v98 count:16];
    }

    while (v76);
  }

  v91[0] = @"faceLandmarks";
  v91[1] = @"capturedPortraitStrength";
  v92[0] = v75;
  v44 = MEMORY[0x1E696AD98];
  [v71 portraitStrength];
  v45 = [v44 numberWithFloat:?];
  v92[1] = v45;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];

  return v46;
}

+ (id)depthEffectInfoDictionaryFromFaceObservations:(id)a3 valuesAtCapture:(id)a4 lumaNoiseScale:(float)a5 orientation:(int64_t)a6
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v75 = a4;
  v9 = NUOrientationInverse();
  v10 = v8;
  v11 = v10;
  if ([v10 count] >= 5)
  {
    v11 = [v10 subarrayWithRange:{0, 4}];
  }

  v80 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count", v10)}];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v11;
  v81 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v81)
  {
    v79 = *v83;
    do
    {
      v12 = 0;
      do
      {
        if (*v83 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v82 + 1) + 8 * v12);
        v14 = [MEMORY[0x1E695DF90] dictionary];
        v15 = [v13 landmarks];
        [v13 boundingBox];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [v15 leftEye];
        +[PIAutoCalculatorUtils averagePoints:pointCount:](PIAutoCalculatorUtils, "averagePoints:pointCount:", [v24 normalizedPoints], objc_msgSend(v24, "pointCount"));
        [PIAutoCalculatorUtils convertFacePoint:"convertFacePoint:toImagePointWithFaceRect:orientation:" toImagePointWithFaceRect:v9 orientation:?];
        v26 = v25;
        v27 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [v14 setObject:v27 forKeyedSubscript:@"leftEyeX"];

        v28 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
        [v14 setObject:v28 forKeyedSubscript:@"leftEyeY"];

        v29 = [v15 rightEye];

        +[PIAutoCalculatorUtils averagePoints:pointCount:](PIAutoCalculatorUtils, "averagePoints:pointCount:", [v29 normalizedPoints], objc_msgSend(v29, "pointCount"));
        [PIAutoCalculatorUtils convertFacePoint:"convertFacePoint:toImagePointWithFaceRect:orientation:" toImagePointWithFaceRect:v9 orientation:?];
        v31 = v30;
        v32 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [v14 setObject:v32 forKeyedSubscript:@"rightEyeX"];

        v33 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
        [v14 setObject:v33 forKeyedSubscript:@"rightEyeY"];

        v34 = [v15 nose];

        +[PIAutoCalculatorUtils averagePoints:pointCount:](PIAutoCalculatorUtils, "averagePoints:pointCount:", [v34 normalizedPoints], objc_msgSend(v34, "pointCount"));
        [PIAutoCalculatorUtils convertFacePoint:"convertFacePoint:toImagePointWithFaceRect:orientation:" toImagePointWithFaceRect:v9 orientation:?];
        v36 = v35;
        v37 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [v14 setObject:v37 forKeyedSubscript:@"noseX"];

        v38 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
        [v14 setObject:v38 forKeyedSubscript:@"noseY"];

        v39 = [v15 allPoints];

        if ([v39 pointCount] > 0x2E)
        {
          v40 = [v39 normalizedPoints];
          [PIAutoCalculatorUtils convertFacePoint:v9 toImagePointWithFaceRect:*(v40 + 736) orientation:*(v40 + 744), v17, v19, v21, v23];
          v42 = v41;
          v43 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [v14 setObject:v43 forKeyedSubscript:@"chinX"];

          v44 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
          [v14 setObject:v44 forKeyedSubscript:@"chinY"];

          goto LABEL_23;
        }

        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_389);
        }

        v45 = *MEMORY[0x1E69B3D70];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
        {
          v46 = MEMORY[0x1E696AEC0];
          v47 = v45;
          v48 = [v46 stringWithFormat:@"Insufficient number of landmark points"];
          *buf = 138543362;
          v87 = v48;
          _os_log_impl(&dword_1C7694000, v47, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

          v49 = *MEMORY[0x1E69B3D78];
          if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
          {
            if (v49 != -1)
            {
              dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_389);
            }

LABEL_17:
            v50 = *MEMORY[0x1E69B3D70];
            if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
            {
              specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
              v52 = MEMORY[0x1E696AF00];
              v77 = specific;
              log = v50;
              v53 = [v52 callStackSymbols];
              v54 = [v53 componentsJoinedByString:@"\n"];
              *buf = 138543618;
              v87 = specific;
              v88 = 2114;
              v89 = v54;
              v55 = log;
              _os_log_error_impl(&dword_1C7694000, log, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);

LABEL_26:
              goto LABEL_22;
            }

            goto LABEL_22;
          }

          if (v49 != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_389);
          }
        }

        else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
        {
          goto LABEL_17;
        }

        v56 = *MEMORY[0x1E69B3D70];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
        {
          v57 = MEMORY[0x1E696AF00];
          v55 = v56;
          v58 = [v57 callStackSymbols];
          v59 = [v58 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v87 = v59;
          _os_log_error_impl(&dword_1C7694000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);

          goto LABEL_26;
        }

LABEL_22:
        _NUAssertContinueHandler();
LABEL_23:
        [v80 addObject:v14];

        ++v12;
      }

      while (v81 != v12);
      v60 = [obj countByEnumeratingWithState:&v82 objects:v90 count:16];
      v81 = v60;
    }

    while (v60);
  }

  v61 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v62 = [v75 minimumAperture];
  [v61 setObject:v62 forKeyedSubscript:@"minimumAperture"];

  v63 = [v75 maximumAperture];
  [v61 setObject:v63 forKeyedSubscript:@"maximumAperture"];

  v64 = MEMORY[0x1E696AD98];
  [v75 aperture];
  v65 = [v64 numberWithFloat:?];
  [v61 setObject:v65 forKeyedSubscript:@"capturedAperture"];

  *&v66 = a5;
  v67 = [MEMORY[0x1E696AD98] numberWithFloat:v66];
  [v61 setObject:v67 forKeyedSubscript:@"lumaNoiseScale"];

  v68 = [v75 focusRect];

  if (v68)
  {
    v69 = [v75 focusRect];
    v70 = [v69 copy];
    [v61 setObject:v70 forKeyedSubscript:@"focusRect"];
  }

  [v61 setObject:v80 forKeyedSubscript:@"faces"];
  v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v75, "SDOFRenderingVersion")}];
  [v61 setObject:v71 forKeyedSubscript:@"SDOFRenderingVersion"];

  v72 = [v61 copy];

  return v72;
}

+ (id)depthEffectInfoDictionaryFromFaceObservations:(id)a3 metadata:(id)a4 orientation:(int64_t)a5 valuesAtCapture:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [a4 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69867D0]];
  v15 = v13;
  if (v13)
  {
    [v13 floatValue];
  }

  else
  {
    LODWORD(v14) = 1008981770;
  }

  v16 = [a1 depthEffectInfoDictionaryFromFaceObservations:v10 valuesAtCapture:v11 lumaNoiseScale:a5 orientation:v14];

  return v16;
}

+ (id)portraitInfoDictionaryFromFaceObservations:(id)a3 metadata:(id)a4 orientation:(int64_t)a5 valuesAtCapture:(id)a6
{
  v70 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    v34 = NUAssertLogger_27584();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "faceObservations != nil"];
      *buf = 138543362;
      v67 = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v38 = NUAssertLogger_27584();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v39)
      {
        v52 = dispatch_get_specific(*v36);
        v53 = MEMORY[0x1E696AF00];
        v54 = v52;
        v36 = [v53 callStackSymbols];
        v55 = [v36 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v52;
        v68 = 2114;
        v69 = v55;
        _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v36;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v44 = _NUAssertFailHandler();
    goto LABEL_31;
  }

  if (!v11)
  {
    v41 = NUAssertLogger_27584();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "metadata != nil"];
      *buf = 138543362;
      v67 = v42;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = MEMORY[0x1E69B38E8];
    v43 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v38 = NUAssertLogger_27584();
    v44 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (!v43)
    {
      if (v44)
      {
        v45 = [MEMORY[0x1E696AF00] callStackSymbols];
        v36 = [v45 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v67 = v36;
        _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_33:

      v49 = _NUAssertFailHandler();
      goto LABEL_34;
    }

LABEL_31:
    if (v44)
    {
      v56 = dispatch_get_specific(*v36);
      v57 = MEMORY[0x1E696AF00];
      v58 = v56;
      v36 = [v57 callStackSymbols];
      v59 = [v36 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v67 = v56;
      v68 = 2114;
      v69 = v59;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  v13 = v12;
  if ((NUOrientationIsValid() & 1) == 0)
  {
    v46 = NUAssertLogger_27584();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUOrientationIsValid(orientation)"];
      *buf = 138543362;
      v67 = v47;
      _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = MEMORY[0x1E69B38E8];
    v48 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v38 = NUAssertLogger_27584();
    v49 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (!v48)
    {
      if (v49)
      {
        v50 = [MEMORY[0x1E696AF00] callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v67 = v51;
        _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_36;
    }

LABEL_34:
    if (v49)
    {
      v60 = dispatch_get_specific(*v36);
      v61 = MEMORY[0x1E696AF00];
      v62 = v60;
      v63 = [v61 callStackSymbols];
      v64 = [v63 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v67 = v60;
      v68 = 2114;
      v69 = v64;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_36:

    _NUAssertFailHandler();
  }

  if ([a1 canApplyPortraitEffectsWithMetadata:v11])
  {
    v14 = [a1 portraitEffectInfoDictionaryFromFaceObservations:v10 orientation:a5 valuesAtCapture:v13];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  v15 = [PIPortraitAutoCalculator isStillImageDisparity:v13];
  v65 = [PIPortraitAutoCalculator isTapToFocusEnabled:v13];
  v16 = [v13 portraitMajorVersion] >= 2 && objc_msgSend(v13, "portraitMinorVersion") != 0;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = [a1 depthEffectInfoDictionaryFromFaceObservations:v10 metadata:v11 orientation:a5 valuesAtCapture:v13];
  [v17 setObject:v18 forKeyedSubscript:@"depthInfo"];

  v19 = MEMORY[0x1E696AD98];
  [v13 aperture];
  v20 = [v19 numberWithFloat:?];
  [v17 setObject:v20 forKeyedSubscript:@"aperture"];

  v21 = [v13 focusRect];
  v22 = [v21 copy];
  [v17 setObject:v22 forKeyedSubscript:@"focusRect"];

  [v17 setObject:v14 forKeyedSubscript:@"portraitInfo"];
  v23 = MEMORY[0x1E696AD98];
  [v13 portraitStrength];
  v24 = [v23 numberWithFloat:?];
  [v17 setObject:v24 forKeyedSubscript:@"portraitStrength"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:v16];
  [v17 setObject:v25 forKeyedSubscript:@"spillMatteAllowed"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:v16];
  [v17 setObject:v26 forKeyedSubscript:@"glassesMatteAllowed"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:v15];
  [v17 setObject:v27 forKeyedSubscript:@"portraitDisableStage"];

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "portraitMajorVersion")}];
  [v17 setObject:v28 forKeyedSubscript:@"capturedPortraitMajorVersion"];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "portraitMinorVersion")}];
  [v17 setObject:v29 forKeyedSubscript:@"capturedPortraitMinorVersion"];

  v30 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v13, "depthVersionInfo")}];
  [v17 setObject:v30 forKeyedSubscript:@"depthInfoMajorVersion"];

  v31 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v13, "depthVersionInfo") >> 32}];
  [v17 setObject:v31 forKeyedSubscript:@"depthInfoMinorVersion"];

  v32 = [MEMORY[0x1E696AD98] numberWithBool:v65];
  [v17 setObject:v32 forKeyedSubscript:@"tapToFocusEnabled"];

  return v17;
}

+ (BOOL)canApplyPortraitEffectsWithMetadata:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6986800]];
  v5 = [v4 unsignedIntegerValue];

  return v5 & 1;
}

+ (BOOL)isTapToFocusEnabled:(id)a3
{
  v3 = a3;
  v4 = [v3 depthVersionInfo];
  v5 = 0;
  if ((HIDWORD(v4) - 21000) >= 0x3E8 && (HIDWORD(v4) - 51000) >= 0x3E8)
  {
    v6 = [v3 portraitMajorVersion];
    v7 = [v3 SDOFRenderingVersion];
    v5 = v6 > 1 && v7 > 5;
  }

  return v5;
}

+ (id)focusRectDictionaryFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v25[4] = *MEMORY[0x1E69E9840];
  v7 = a3.origin.x < 0.0 || a3.origin.x > 1.0;
  if (v7 || (a3.origin.y >= 0.0 ? (v8 = a3.origin.y > 1.0) : (v8 = 1), v8 || a3.size.width <= 0.0 || !NUIsRoughlyLessThan() || height <= 0.0 || !NUIsRoughlyLessThan()))
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
    }

    v14 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v16 = 134218752;
      v17 = x;
      v18 = 2048;
      v19 = y;
      v20 = 2048;
      v21 = width;
      v22 = 2048;
      v23 = height;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Invalid focus rect: {%g,%g,%g,%g}", &v16, 0x2Au);
    }

    v13 = 0;
  }

  else
  {
    v24[0] = @"x";
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:x];
    v25[0] = v9;
    v24[1] = @"y";
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(1.0 - y - height, 0.0)}];
    v25[1] = v10;
    v24[2] = @"w";
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:width];
    v25[2] = v11;
    v24[3] = @"h";
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:height];
    v25[3] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  }

  return v13;
}

+ (id)focusRectDictionaryFromMetadata:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DED8]];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DEC8]];
  v8 = [v7 integerValue];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696D8B0]];
    v13 = v12;
    if (!v12)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
      }

      v28 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v63 = v4;
        _os_log_impl(&dword_1C7694000, v28, OS_LOG_TYPE_DEFAULT, "Cant get focusRect - Metadata dictionary missing exif aux dictionary:\n%@", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_70;
    }

    v14 = [v12 objectForKeyedSubscript:@"Regions"];
    v15 = v14;
    if (!v14)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
      }

      v29 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v63 = v13;
        _os_log_impl(&dword_1C7694000, v29, OS_LOG_TYPE_DEFAULT, "Cant get focusRect - Exif aux dictionary missing MWG region dictionary:\n%@", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_69;
    }

    v16 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696D930]];
    v17 = v16;
    if (v16)
    {
      v53 = a1;
      v54 = v16;
      v55 = v15;
      v56 = v13;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v58;
        v22 = *MEMORY[0x1E696D938];
        v23 = *MEMORY[0x1E696D920];
LABEL_16:
        v24 = 0;
        while (1)
        {
          if (*v58 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v57 + 1) + 8 * v24);
          v26 = [v25 objectForKeyedSubscript:{v22, v53}];
          v27 = [v26 isEqualToString:v23];

          if (v27)
          {
            break;
          }

          if (v20 == ++v24)
          {
            v20 = [v18 countByEnumeratingWithState:&v57 objects:v61 count:16];
            if (v20)
            {
              goto LABEL_16;
            }

            goto LABEL_22;
          }
        }

        v30 = v25;

        if (!v30)
        {
          goto LABEL_50;
        }

        v31 = [v30 objectForKeyedSubscript:*MEMORY[0x1E696D948]];
        v32 = [v30 objectForKeyedSubscript:*MEMORY[0x1E696D950]];
        v33 = [v30 objectForKeyedSubscript:*MEMORY[0x1E696D940]];
        v34 = [v30 objectForKeyedSubscript:*MEMORY[0x1E696D928]];
        v35 = v34;
        if (v31)
        {
          v36 = v32 == 0;
        }

        else
        {
          v36 = 1;
        }

        v38 = v36 || v33 == 0 || v34 == 0;
        v15 = v55;
        if (v38)
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
          }

          v13 = v56;
          v39 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v63 = v30;
            _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Cant get focusRect - Malformed focus rect dictionary:\n%@", buf, 0xCu);
          }

          v11 = 0;
        }

        else
        {
          [v31 floatValue];
          v43 = v42;
          [v32 floatValue];
          v45 = v44;
          [v33 floatValue];
          v47 = v46;
          [v35 floatValue];
          v49 = v48;
          v50 = v43 - (v47 * 0.5);
          v51 = v45 - (v48 * 0.5);
          if (v50 < 0.0 && NUIsRoughlyEqual())
          {
            v50 = 0.0;
          }

          if (v51 < 0.0 && NUIsRoughlyEqual())
          {
            v51 = 0.0;
          }

          v13 = v56;
          v11 = [v53 focusRectDictionaryFromRect:{v50, v51, v47, v49}];
        }

        v17 = v54;
        goto LABEL_68;
      }

LABEL_22:

LABEL_50:
      v15 = v55;
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
      }

      v13 = v56;
      v40 = *MEMORY[0x1E69B3D80];
      v17 = v54;
      if (!os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
LABEL_59:
        v11 = 0;
LABEL_68:

LABEL_69:
LABEL_70:

        goto LABEL_71;
      }

      *buf = 138412290;
      v63 = v18;
      v41 = "Cant get focusRect - Region list does not contain a focus rect:\n%@";
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
      }

      v40 = *MEMORY[0x1E69B3D80];
      if (!os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      *buf = 138412290;
      v63 = v15;
      v41 = "Cant get focusRect - MWG region dictionary missing region list:\n%@";
    }

    _os_log_impl(&dword_1C7694000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
    goto LABEL_59;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_394);
  }

  v10 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v4;
    _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_DEFAULT, "Cant get focusRect - Metadata dictionary missing fullSizeWith or fullSizeHeight:\n%@", buf, 0xCu);
  }

  v11 = 0;
LABEL_71:

  return v11;
}

@end