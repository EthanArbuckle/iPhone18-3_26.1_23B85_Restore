@interface PICropAutoCalculator
+ (id)updateCropAdjustment:(id)adjustment after:(id)after error:(id *)error;
+ (void)dumpDebugDiagnostics:(id)diagnostics composition:(id)composition filePrefix:(id)prefix;
- (BOOL)undoExifOrientation:(id *)orientation error:(id *)error;
- (PICropAutoCalculator)initWithComposition:(id)composition;
- (PICropAutoCalculator)initWithMedia:(id)media;
- (PICropAutoCalculator)initWithRequest:(id)request;
- (id)imageProperties:(id *)properties;
- (void)submit:(id)submit;
@end

@implementation PICropAutoCalculator

- (void)submit:(id)submit
{
  v75 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (!submitCopy)
  {
    v43 = NUAssertLogger_25669();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      *&buf[4] = v44;
      _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v45 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v47 = NUAssertLogger_25669();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (!v48)
      {
        goto LABEL_26;
      }

      v51 = dispatch_get_specific(*v45);
      v52 = MEMORY[0x1E696AF00];
      v50 = v51;
      callStackSymbols = [v52 callStackSymbols];
      v54 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v51;
      *&buf[12] = 2114;
      *&buf[14] = v54;
      _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    else
    {
      if (!v48)
      {
        goto LABEL_26;
      }

      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v50 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v50;
      _os_log_error_impl(&dword_1C7694000, v47, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_26:
    _NUAssertFailHandler();
  }

  v5 = submitCopy;
  if ([(PICropAutoCalculator *)self debugFilesEnabled])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PICropAutoCalculator shouldPerformAutoStraighten](self, "shouldPerformAutoStraighten")}];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E695F968]];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[PICropAutoCalculator shouldPerformAutoCrop](self, "shouldPerformAutoCrop")}];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E695F950]];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PICropAutoCalculator shouldUseAutoStraightenVerticalDetector](self, "shouldUseAutoStraightenVerticalDetector")}];
  [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695F978]];

  [v7 setObject:self->_autoStraightenVerticalAngleThreshold forKeyedSubscript:*MEMORY[0x1E695F980]];
  [v7 setObject:self->_autoStraightenDominantAngleDiffThreshold forKeyedSubscript:*MEMORY[0x1E695F970]];
  faceObservationCache = [(PICropAutoCalculator *)self faceObservationCache];
  if (faceObservationCache)
  {
    v12 = faceObservationCache;
    shouldPerformAutoCrop = [(PICropAutoCalculator *)self shouldPerformAutoCrop];

    if (shouldPerformAutoCrop)
    {
      v14 = objc_alloc(MEMORY[0x1E69B3C50]);
      composition = [(NURenderRequest *)self composition];
      v16 = [v14 initWithComposition:composition];

      v17 = [PIFaceObservationCache faceRequestWithRequest:v16];
      [v17 setName:@"PICropAutoCalculator-faceDetection"];
      faceObservationCache2 = [(PICropAutoCalculator *)self faceObservationCache];
      v69 = 0;
      v19 = [faceObservationCache2 submitSynchronous:v17 error:&v69];
      v20 = v69;

      faces = [v19 faces];

      if (faces)
      {
        v55 = v20;
        v57 = v17;
        v58 = v16;
        v59 = v7;
        v22 = objc_opt_new();
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v56 = v19;
        obj = [v19 faces];
        v23 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v66;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v66 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v65 + 1) + 8 * i);
              memset(buf, 0, 32);
              [v27 boundingBox];
              *buf = v28;
              *&buf[8] = v29;
              *&buf[16] = v30;
              *&buf[24] = v31;
              v71 = @"bounds";
              v32 = [MEMORY[0x1E696B098] valueWithBytes:buf objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
              v72 = v32;
              v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];

              [v22 addObject:v33];
            }

            v24 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
          }

          while (v24);
        }

        v7 = v59;
        [v59 setObject:v22 forKeyedSubscript:*MEMORY[0x1E695F960]];

        v17 = v57;
        v16 = v58;
        v20 = v55;
        v19 = v56;
      }
    }
  }

  v34 = MEMORY[0x1E696AD98];
  [(PICropAutoCalculator *)self maxAutoStraighten];
  v35 = [v34 numberWithDouble:?];
  [v6 setObject:v35 forKeyedSubscript:@"maxAutoStraighten"];

  v36 = [v7 copy];
  [v6 setObject:v36 forKeyedSubscript:@"filterOptions"];

  v37 = [objc_alloc(MEMORY[0x1E69B3AE8]) initWithRequest:self dataExtractor:@"CIAutoStraighten" options:v7];
  v38 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetPixelSize:{2048, 2048}];
  [v37 setScalePolicy:v38];

  [v37 setSampleMode:2];
  v39 = +[PIPipelineFilters autoCropFilter];
  v70 = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  [v37 setPipelineFilters:v40];

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __31__PICropAutoCalculator_submit___block_invoke;
  v61[3] = &unk_1E82AC510;
  v62 = v6;
  selfCopy = self;
  v64 = v5;
  v41 = v5;
  v42 = v6;
  [v37 submit:v61];
}

void __31__PICropAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v44[0] = 0;
  v3 = [a2 result:v44];
  v4 = v44[0];
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [v3 data];
    v7 = [v6 description];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:@"data"];

    v8 = [v6 objectForKeyedSubscript:@"straightenAngleInDegreesCCW"];
    [v8 doubleValue];
    v10 = fabs(v9);
    [*(a1 + 40) maxAutoStraighten];
    if (v10 <= v11)
    {
      v13 = v5;
      v12 = v8;
    }

    else
    {
      [*(a1 + 32) setObject:v8 forKeyedSubscript:@"limitExceeded"];
      v12 = &unk_1F471F270;
      v13 = v5;
    }

    [v13 setObject:v12 forKeyedSubscript:@"angle"];
    [v8 doubleValue];
    v16 = fabs(v15);
    [*(a1 + 40) minAutoStraighten];
    if (v16 <= v17)
    {
      [*(a1 + 32) setObject:v8 forKeyedSubscript:@"belowMinimum"];
      [v5 setObject:&unk_1F471F270 forKeyedSubscript:@"angle"];
    }

    v18 = [v3 geometry];
    v19 = [v6 objectForKeyedSubscript:@"autoCrop"];
    v20 = v19;
    if (v19 && v18)
    {
      v43 = 0u;
      v42 = 0u;
      [v19 CGRectValue];
      NUPixelRectFromCGRect();
      v40 = 0u;
      v41 = 0u;
      [v18 renderScale];
      NUScaleInvert();
      v38 = 0u;
      v39 = 0u;
      NUPixelRectScaleRational();
      v21 = *(a1 + 40);
      v37 = 0;
      [v21 undoExifOrientation:&v40 error:&v37];
      v22 = v37;

      v23 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
      [v5 setObject:v23 forKeyedSubscript:@"xOrigin"];

      v24 = [MEMORY[0x1E696AD98] numberWithInteger:*(&v40 + 1)];
      [v5 setObject:v24 forKeyedSubscript:@"yOrigin"];

      v25 = [MEMORY[0x1E696AD98] numberWithInteger:v41];
      [v5 setObject:v25 forKeyedSubscript:@"width"];

      v26 = [MEMORY[0x1E696AD98] numberWithInteger:*(&v41 + 1)];
      [v5 setObject:v26 forKeyedSubscript:@"height"];

      v4 = v22;
    }

    v27 = [v5 copy];
    [*(a1 + 32) setObject:v27 forKeyedSubscript:@"result"];

    if (v4)
    {
      v28 = [v4 description];
      [*(a1 + 32) setObject:v28 forKeyedSubscript:@"error"];

      v29 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    }

    else
    {
      v30 = [v5 objectForKeyedSubscript:@"angle"];
      [*(a1 + 32) setObject:v30 forKeyedSubscript:@"angle"];

      v29 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v5];
    }

    v14 = v29;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  }

  if ([*(a1 + 40) debugFilesEnabled])
  {
    v31 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__PICropAutoCalculator_submit___block_invoke_87;
    block[3] = &unk_1E82AC4E8;
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v35 = v32;
    v36 = v33;
    dispatch_async(v31, block);
  }

  (*(*(a1 + 48) + 16))();
}

void __31__PICropAutoCalculator_submit___block_invoke_87(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) composition];
  v3 = [*(a1 + 40) debugFilesPrefix];
  [PICropAutoCalculator dumpDebugDiagnostics:v2 composition:v4 filePrefix:v3];
}

- (BOOL)undoExifOrientation:(id *)orientation error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  if (!error)
  {
    v15 = NUAssertLogger_25669();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_25669();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = [(PICropAutoCalculator *)self imageProperties:error];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (![v7 size] || (objc_msgSend(v8, "size"), !v9))
  {
    v12 = MEMORY[0x1E69B3A48];
    composition = [(NURenderRequest *)self composition];
    *error = [v12 errorWithCode:2 reason:@"Source geometry has 0 size" object:composition];

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  [v8 orientation];
  NUOrientationInverse();
  [v8 size];
  NUOrientationTransformImageSize();
  NUOrientationTransformImageRect();
  v10 = *&buf[16];
  orientation->var0 = *buf;
  orientation->var1 = v10;
  v11 = 1;
LABEL_8:

  return v11;
}

- (id)imageProperties:(id *)properties
{
  v5 = objc_alloc(MEMORY[0x1E69B3B30]);
  composition = [(NURenderRequest *)self composition];
  v7 = [v5 initWithComposition:composition];

  [v7 setName:@"PICropAutoCalculator-imageProperties"];
  v8 = [v7 submitSynchronous:properties];
  properties = [v8 properties];

  return properties;
}

- (PICropAutoCalculator)initWithMedia:(id)media
{
  v32 = *MEMORY[0x1E69E9840];
  mediaCopy = media;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v8 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v14 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_25751);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          callStackSymbols = [v22 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_25751);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      callStackSymbols2 = [v16 callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_25751);
  }
}

- (PICropAutoCalculator)initWithRequest:(id)request
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v8 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v14 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_25751);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          callStackSymbols = [v22 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_25751);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      callStackSymbols2 = [v16 callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_25751);
  }
}

- (PICropAutoCalculator)initWithComposition:(id)composition
{
  v8.receiver = self;
  v8.super_class = PICropAutoCalculator;
  v3 = [(NURenderRequest *)&v8 initWithComposition:composition];
  v3->_maxAutoStraighten = 10.0;
  v3->_shouldPerformAutoCrop = 1;
  v3->_shouldPerformAutoStraighten = 1;
  v3->_shouldUseAutoStraightenVerticalDetector = 0;
  autoStraightenVerticalAngleThreshold = v3->_autoStraightenVerticalAngleThreshold;
  v3->_autoStraightenVerticalAngleThreshold = 0;

  autoStraightenDominantAngleDiffThreshold = v3->_autoStraightenDominantAngleDiffThreshold;
  v3->_autoStraightenDominantAngleDiffThreshold = 0;

  v3->_minAutoStraighten = 1.0;
  debugFilesPrefix = v3->_debugFilesPrefix;
  v3->_debugFilesPrefix = &stru_1F46EAF88;

  return v3;
}

+ (void)dumpDebugDiagnostics:(id)diagnostics composition:(id)composition filePrefix:(id)prefix
{
  v22 = *MEMORY[0x1E69E9840];
  diagnosticsCopy = diagnostics;
  compositionCopy = composition;
  prefixCopy = prefix;
  v19 = 0;
  v10 = [PICaptureDebugUtilities createCaptureDebugDirectoryForComposition:compositionCopy error:&v19];
  v11 = v19;
  if (v10)
  {
    prefixCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@AutoCropEvaluation-txt.DBG", prefixCopy];
    v13 = [v10 URLByAppendingPathComponent:prefixCopy];

    v18 = v11;
    v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:diagnosticsCopy options:3 error:&v18];
    v15 = v18;

    if (v14)
    {
      [v14 writeToURL:v13 atomically:1];
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_249);
      }

      v17 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v15;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Failed to serialize diagnostic data, error: %@", buf, 0xCu);
      }
    }

    v11 = v15;
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_249);
    }

    v16 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Failed to create debug directory, error: %{public}@", buf, 0xCu);
    }
  }
}

+ (id)updateCropAdjustment:(id)adjustment after:(id)after error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  adjustmentCopy = adjustment;
  afterCopy = after;
  if (!error)
  {
    v54 = NUAssertLogger_25669();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v55;
      _os_log_error_impl(&dword_1C7694000, v54, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v56 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v58 = NUAssertLogger_25669();
    v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v59)
      {
        v62 = dispatch_get_specific(*v56);
        v63 = MEMORY[0x1E696AF00];
        v64 = v62;
        callStackSymbols = [v63 callStackSymbols];
        v66 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2114;
        *&buf[14] = v66;
        _os_log_error_impl(&dword_1C7694000, v58, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v59)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v61 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v61;
      _os_log_error_impl(&dword_1C7694000, v58, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v9 = afterCopy;
  v10 = [[PICompositionController alloc] initWithComposition:adjustmentCopy];
  v11 = [[PICompositionController alloc] initWithComposition:v9];
  cropAdjustmentController = [(PICompositionController *)v10 cropAdjustmentController];
  if (([cropAdjustmentController enabled] & 1) == 0)
  {

    goto LABEL_9;
  }

  cropAdjustmentController2 = [(PICompositionController *)v11 cropAdjustmentController];
  enabled = [cropAdjustmentController2 enabled];

  if ((enabled & 1) == 0)
  {
LABEL_9:
    composition = v9;
    goto LABEL_27;
  }

  v15 = [objc_alloc(MEMORY[0x1E69B3AA8]) initWithComposition:adjustmentCopy];
  v16 = +[PIPipelineFilters inputToCropFilter];
  v71[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
  [v15 setPipelineFilters:v17];

  [v15 setName:@"PICropAutoCalculator-getBeforeGeometry"];
  v18 = [v15 submitSynchronous:error];
  if (v18)
  {
    [v15 setComposition:v9];
    [v15 setName:@"PICropAutoCalculator-getAfterGeometry"];
    v19 = [v15 submitSynchronous:error];
    if (v19)
    {
      geometry = [v18 geometry];
      v21 = geometry;
      if (geometry)
      {
        [geometry extent];
      }

      else
      {
        memset(buf, 0, 32);
      }

      geometry2 = [v19 geometry];
      v24 = geometry2;
      if (geometry2)
      {
        [geometry2 extent];
      }

      else
      {
        v68 = 0u;
        v69 = 0u;
      }

      v25 = NUPixelRectEqualToRect();

      if (v25)
      {
        composition = v9;
      }

      else
      {
        geometry3 = [v18 geometry];
        v27 = geometry3;
        if (geometry3)
        {
          [geometry3 extent];
        }

        else
        {
          memset(buf, 0, 32);
        }

        NUPixelRectToCGRect();

        geometry4 = [v19 geometry];
        v29 = geometry4;
        if (geometry4)
        {
          [geometry4 extent];
        }

        else
        {
          memset(buf, 0, 32);
        }

        NUPixelRectToCGRect();
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        cropAdjustmentController3 = [(PICompositionController *)v10 cropAdjustmentController];
        [cropAdjustmentController3 cropRect];

        NUCGRectConvertFromRectToRect();
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v47 = [objc_alloc(MEMORY[0x1E69B3A28]) initWithMasterImageSize:{v35, v37, v31, v33, *&v35, *&v37}];
        cropAdjustmentController4 = [(PICompositionController *)v11 cropAdjustmentController];
        [cropAdjustmentController4 yawRadians];
        [v47 setYawRadians:?];
        [cropAdjustmentController4 pitchRadians];
        [v47 setPitchRadians:?];
        [cropAdjustmentController4 angleRadians];
        [v47 setRollRadians:?];
        [v47 setCropRect:{v40, v42, v44, v46}];
        [v47 cropRect];
        [v47 integralCropRect:?];
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __68__PICropAutoCalculator_Utilities__updateCropAdjustment_after_error___block_invoke;
        v67[3] = &__block_descriptor_64_e36_v16__0__PICropAdjustmentController_8l;
        v67[4] = v49;
        v67[5] = v50;
        v67[6] = v51;
        v67[7] = v52;
        [(PICompositionController *)v11 modifyAdjustmentWithKey:@"cropStraighten" modificationBlock:v67];
        composition = [(PICompositionController *)v11 composition];
      }
    }

    else
    {
      composition = 0;
    }
  }

  else
  {
    composition = 0;
  }

LABEL_27:

  return composition;
}

@end