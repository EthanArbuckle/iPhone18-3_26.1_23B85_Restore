@interface PIPerspectiveAutoCalculator
+ (void)undoOrientation:(int64_t)orientation forPitch:(double *)pitch yaw:(double *)yaw angle:(double *)angle;
- (BOOL)canGenerateNewCropRect:(id *)rect;
- (BOOL)hasFrontFacingCameraDimentions:(id)dimentions;
- (BOOL)isFrontFacingCameraImage:(id)image pixelSize:(id)size;
- (BOOL)passesBuildingCheck:(id *)check;
- (BOOL)passesConfidenceCheck:(id)check error:(id *)error;
- (BOOL)passesFaceCheck:(id *)check;
- (BOOL)passesImagePropertiesCheck:(id *)check;
- (BOOL)passesMinimumCorrectionCheck:(id)check error:(id *)error;
- (PIPerspectiveAutoCalculator)initWithComposition:(id)composition;
- (PIPerspectiveAutoCalculator)initWithMedia:(id)media;
- (PIPerspectiveAutoCalculator)initWithRequest:(id)request;
- (float)getSizeOfAllFaces:(id)faces;
- (id)primaryImageProperties:(id *)properties;
- (void)addMethodDiagnostics:(id)diagnostics details:(id)details;
- (void)addMethodResultToDiagnostics:(id)diagnostics error:(id)error setYawPitchError:(BOOL)pitchError;
- (void)submit:(id)submit;
- (void)submitVerified:(id)verified;
- (void)writeDebugDiagnosticsToDisk;
@end

@implementation PIPerspectiveAutoCalculator

- (void)submitVerified:(id)verified
{
  v70 = *MEMORY[0x1E69E9840];
  verifiedCopy = verified;
  if (!verifiedCopy)
  {
    v48 = NUAssertLogger_12170();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v67 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v50 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v52 = NUAssertLogger_12170();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v53)
      {
        v56 = dispatch_get_specific(*v50);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols = [v57 callStackSymbols];
        v60 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v67 = v56;
        v68 = 2114;
        v69 = v60;
        _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v53)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v55 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v67 = v55;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = verifiedCopy;
  v64 = 0;
  v6 = [(PIPerspectiveAutoCalculator *)self canGenerateNewCropRect:&v64];
  v7 = v64;
  [(PIPerspectiveAutoCalculator *)self addMethodResultToDiagnostics:@"canGenerateNewCropRect" error:v7 setYawPitchError:1];
  if (!v6 || v7)
  {
    [(PIPerspectiveAutoCalculator *)self writeDebugDiagnosticsToDisk];
    v8 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v7];
    (v5)[2](v5, v8);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = MEMORY[0x1E696AD98];
    [MEMORY[0x1E69B3A28] defaultFocalLength];
    v10 = [v9 numberWithDouble:?];
    [v8 setObject:v10 forKeyedSubscript:@"focalLength"];

    [v8 setObject:@"v2" forKeyedSubscript:@"version"];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:NUIsAppleInternal()];
    [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695F770]];

    maxAutoPitch = [(PIPerspectiveAutoCalculator *)self maxAutoPitch];

    if (maxAutoPitch)
    {
      v13 = MEMORY[0x1E696AD98];
      maxAutoPitch2 = [(PIPerspectiveAutoCalculator *)self maxAutoPitch];
      [maxAutoPitch2 floatValue];
      v16 = [v13 numberWithDouble:v15 * 3.14159265 / 180.0];
      [v8 setObject:v16 forKeyedSubscript:@"pitchLimit"];
    }

    maxAutoYaw = [(PIPerspectiveAutoCalculator *)self maxAutoYaw];

    if (maxAutoYaw)
    {
      v18 = MEMORY[0x1E696AD98];
      maxAutoYaw2 = [(PIPerspectiveAutoCalculator *)self maxAutoYaw];
      [maxAutoYaw2 floatValue];
      v21 = [v18 numberWithDouble:v20 * 3.14159265 / 180.0];
      [v8 setObject:v21 forKeyedSubscript:@"yawLimit"];
    }

    maxAutoAngle = [(PIPerspectiveAutoCalculator *)self maxAutoAngle];

    if (maxAutoAngle)
    {
      v23 = MEMORY[0x1E696AD98];
      maxAutoAngle2 = [(PIPerspectiveAutoCalculator *)self maxAutoAngle];
      [maxAutoAngle2 floatValue];
      v26 = [v23 numberWithDouble:v25 * 3.14159265 / 180.0];
      [v8 setObject:v26 forKeyedSubscript:@"rollLimit"];
    }

    v27 = MEMORY[0x1E696AD98];
    [(PIPerspectiveAutoCalculator *)self minimumPitchCorrectionArea];
    v28 = [v27 numberWithDouble:?];
    [v8 setObject:v28 forKeyedSubscript:@"minimumPitchCorrectionArea"];

    v29 = MEMORY[0x1E696AD98];
    [(PIPerspectiveAutoCalculator *)self minimumYawCorrectionArea];
    v30 = [v29 numberWithDouble:?];
    [v8 setObject:v30 forKeyedSubscript:@"minimumYawCorrectionArea"];

    v31 = MEMORY[0x1E696AEC0];
    maxAutoPitch3 = [(PIPerspectiveAutoCalculator *)self maxAutoPitch];
    v33 = [v31 stringWithFormat:@"%@", maxAutoPitch3];
    debugDiagnostics = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
    [debugDiagnostics setObject:v33 forKeyedSubscript:@"pitchLimit"];

    v35 = MEMORY[0x1E696AEC0];
    maxAutoYaw3 = [(PIPerspectiveAutoCalculator *)self maxAutoYaw];
    v37 = [v35 stringWithFormat:@"%@", maxAutoYaw3];
    debugDiagnostics2 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
    [debugDiagnostics2 setObject:v37 forKeyedSubscript:@"yawLimit"];

    v39 = MEMORY[0x1E696AEC0];
    maxAutoAngle3 = [(PIPerspectiveAutoCalculator *)self maxAutoAngle];
    v41 = [v39 stringWithFormat:@"%@", maxAutoAngle3];
    debugDiagnostics3 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
    [debugDiagnostics3 setObject:v41 forKeyedSubscript:@"rollLimit"];

    v43 = [objc_alloc(MEMORY[0x1E69B3AE8]) initWithRequest:self dataExtractor:@"CIAutoPerspective" options:v8];
    v44 = +[PIPipelineFilters exifOrientationAndCropStraightenOnly];
    v65 = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    [v43 setPipelineFilters:v45];

    oneToOneScalePolicy = [MEMORY[0x1E69B3A88] oneToOneScalePolicy];
    [v43 setScalePolicy:oneToOneScalePolicy];

    [v43 setSampleMode:3];
    responseQueue = [(NURenderRequest *)self responseQueue];
    [v43 setResponseQueue:responseQueue];

    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __46__PIPerspectiveAutoCalculator_submitVerified___block_invoke;
    v61[3] = &unk_1E82AC510;
    v61[4] = self;
    v62 = 0;
    v63 = v5;
    [v43 submit:v61];
  }
}

void __46__PIPerspectiveAutoCalculator_submitVerified___block_invoke(uint64_t a1, void *a2)
{
  v53 = 0;
  v3 = [a2 result:&v53];
  v4 = v53;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [v3 data];
    v51 = 0.0;
    v52 = 0.0;
    v49 = 0;
    v50 = 0.0;
    v7 = [*(a1 + 32) passesConfidenceCheck:v6 error:&v49];
    v8 = v49;

    [*(a1 + 32) addMethodResultToDiagnostics:@"passesConfidenceCheck" error:v8 setYawPitchError:1];
    v9 = *(a1 + 32);
    v48 = 0;
    v10 = [v9 passesMinimumCorrectionCheck:v6 error:&v48];
    v11 = v48;

    [*(a1 + 32) addMethodResultToDiagnostics:@"passesMinimumCorrectionCheck" error:v11 setYawPitchError:1];
    if (v7 && v10)
    {
      v12 = [v6 objectForKeyedSubscript:@"pitchExpandTopDegrees"];
      [v12 doubleValue];
      v51 = v13;

      v14 = [v6 objectForKeyedSubscript:@"yawExpandLeftDegrees"];
      [v14 doubleValue];
      v52 = v15;

      v16 = [v6 objectForKeyedSubscript:@"rollAngleInDegreesCW"];
      [v16 doubleValue];
      v50 = v17;
    }

    if ([*(a1 + 32) debugFilesEnabled])
    {
      v18 = [v6 objectForKeyedSubscript:@"debugImage"];
      [*(a1 + 32) setDebugLineDetectionImage:v18];

      v19 = [v6 objectForKeyedSubscript:@"pitchCorrectionAreaCoverage"];
      v20 = [*(a1 + 32) debugDiagnostics];
      [v20 setObject:v19 forKeyedSubscript:@"pitchCorrectionAreaCoverage"];

      v21 = [v6 objectForKeyedSubscript:@"yawCorrectionAreaCoverage"];
      v22 = [*(a1 + 32) debugDiagnostics];
      [v22 setObject:v21 forKeyedSubscript:@"yawCorrectionAreaCoverage"];

      v23 = [v6 objectForKeyedSubscript:@"ciPitchError"];
      v24 = PICIPerspectiveAutoCalcFailureReasonDescription([v23 unsignedIntegerValue]);
      v25 = [*(a1 + 32) debugDiagnostics];
      [v25 setObject:v24 forKeyedSubscript:@"pitchError"];

      v26 = [v6 objectForKeyedSubscript:@"ciYawError"];
      v27 = PICIPerspectiveAutoCalcFailureReasonDescription([v26 unsignedIntegerValue]);
      v28 = [*(a1 + 32) debugDiagnostics];
      [v28 setObject:v27 forKeyedSubscript:@"yawError"];
    }

    v29 = [objc_alloc(MEMORY[0x1E69B3B30]) initWithRequest:*(a1 + 32)];
    [v29 setName:@"PIPerspectiveAutoCalculator-getPrimaryOrientation"];
    v47 = 0;
    v30 = [v29 submitSynchronous:&v47];
    v4 = v47;

    if (v30)
    {
      v31 = [v30 properties];
      +[PIPerspectiveAutoCalculator undoOrientation:forPitch:yaw:angle:](PIPerspectiveAutoCalculator, "undoOrientation:forPitch:yaw:angle:", [v31 orientation], &v51, &v52, &v50);

      v46 = v3;
      v32 = [MEMORY[0x1E696AD98] numberWithDouble:-v51];
      [v5 setObject:v32 forKeyedSubscript:@"pitch"];

      v33 = [MEMORY[0x1E696AD98] numberWithDouble:-v52];
      [v5 setObject:v33 forKeyedSubscript:@"yaw"];

      v34 = MEMORY[0x1E696AD98];
      v35 = v50;
      [*(a1 + 32) angleSeedDegreesCCW];
      v37 = [v34 numberWithDouble:v36 - v35];
      [v5 setObject:v37 forKeyedSubscript:@"angle"];

      v38 = [v5 objectForKeyedSubscript:@"pitch"];
      [*(a1 + 32) debugDiagnostics];
      v40 = v39 = v5;
      [v40 setObject:v38 forKeyedSubscript:@"pitch"];

      v41 = [v39 objectForKeyedSubscript:@"yaw"];
      v42 = [*(a1 + 32) debugDiagnostics];
      [v42 setObject:v41 forKeyedSubscript:@"yaw"];

      v43 = [v39 objectForKeyedSubscript:@"angle"];
      v44 = [*(a1 + 32) debugDiagnostics];
      [v44 setObject:v43 forKeyedSubscript:@"angle"];

      v5 = v39;
      v3 = v46;
      v45 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v39];
    }

    else
    {
      v45 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
      [*(a1 + 32) addMethodResultToDiagnostics:@"submitVerified" error:v4 setYawPitchError:1];
    }

    [*(a1 + 32) writeDebugDiagnosticsToDisk];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v45 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    [*(a1 + 32) addMethodResultToDiagnostics:@"submitVerified" error:*(a1 + 40) setYawPitchError:1];
    [*(a1 + 32) writeDebugDiagnosticsToDisk];
    (*(*(a1 + 48) + 16))();
  }
}

- (BOOL)passesMinimumCorrectionCheck:(id)check error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  checkCopy = check;
  if (!error)
  {
    v26 = NUAssertLogger_12170();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v42 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_12170();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v34 = dispatch_get_specific(*v28);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v34;
        v43 = 2114;
        v44 = v38;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v33;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = checkCopy;
  v8 = [checkCopy objectForKeyedSubscript:@"pitchExpandTopDegrees"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v7 objectForKeyedSubscript:@"yawExpandLeftDegrees"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v7 objectForKeyedSubscript:@"rollAngleInDegreesCW"];
  [v14 doubleValue];
  v16 = v15;

  v17 = fabs(v10) >= self->_minimumPitchCorrection || fabs(v13) >= self->_minimumYawCorrection || fabs(v16) >= self->_minimumAngleCorrection;
  v39[0] = @"minimumPitchCorrection";
  v18 = MEMORY[0x1E696AD98];
  [(PIPerspectiveAutoCalculator *)self minimumPitchCorrection];
  v19 = [v18 numberWithDouble:?];
  v40[0] = v19;
  v39[1] = @"minimumYawCorrection";
  v20 = MEMORY[0x1E696AD98];
  [(PIPerspectiveAutoCalculator *)self minimumYawCorrection];
  v21 = [v20 numberWithDouble:?];
  v40[1] = v21;
  v39[2] = @"minimumAngleCorrection";
  v22 = MEMORY[0x1E696AD98];
  [(PIPerspectiveAutoCalculator *)self minimumAngleCorrection];
  v23 = [v22 numberWithDouble:?];
  v40[2] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
  [(PIPerspectiveAutoCalculator *)self addMethodDiagnostics:@"passesMinimumCorrectionCheck" details:v24];

  if (!v17)
  {
    *error = [MEMORY[0x1E69B3A48] extraError:@"Less than minimum correction" object:0];
  }

  return v17;
}

- (BOOL)passesConfidenceCheck:(id)check error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  checkCopy = check;
  if (!checkCopy)
  {
    v17 = NUAssertLogger_12170();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "result != nil"];
      *buf = 138543362;
      v42 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_12170();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v30 = dispatch_get_specific(*callStackSymbols);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v30;
        v43 = 2114;
        v44 = v33;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v27 = _NUAssertFailHandler();
    goto LABEL_19;
  }

  if (!error)
  {
    v24 = NUAssertLogger_12170();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_12170();
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v42 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v27)
    {
      v34 = dispatch_get_specific(*callStackSymbols);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      callStackSymbols4 = [v35 callStackSymbols];
      v38 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v42 = v34;
      v43 = 2114;
      v44 = v38;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_21:

    _NUAssertFailHandler();
  }

  v7 = checkCopy;
  v8 = [checkCopy objectForKeyedSubscript:@"confidence"];
  [v8 doubleValue];
  v10 = v9;
  [(PIPerspectiveAutoCalculator *)self minimumConfidence];
  v12 = v11;
  v39[0] = @"confidence";
  v39[1] = @"minConfidence";
  v40[0] = v8;
  v13 = MEMORY[0x1E696AD98];
  [(PIPerspectiveAutoCalculator *)self minimumConfidence];
  v14 = [v13 numberWithDouble:?];
  v40[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  [(PIPerspectiveAutoCalculator *)self addMethodDiagnostics:@"passesConfidenceCheck" details:v15];

  if (v10 < v12)
  {
    *error = [MEMORY[0x1E69B3A48] extraError:@"Confidence value too low" object:v8];
  }

  return v10 >= v12;
}

- (BOOL)canGenerateNewCropRect:(id *)rect
{
  v44 = *MEMORY[0x1E69E9840];
  if (!rect)
  {
    v26 = NUAssertLogger_12170();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v41 = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_12170();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v34 = dispatch_get_specific(*v28);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols = [v35 callStackSymbols];
        v38 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v41 = v34;
        v42 = 2114;
        v43 = v38;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v41 = v33;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [PICompositionController alloc];
  composition = [(NURenderRequest *)self composition];
  v7 = [(PICompositionController *)v5 initWithComposition:composition];

  [(PICompositionController *)v7 removeAdjustmentWithKey:@"cropStraighten"];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_angleSeedDegreesCCW];
  debugDiagnostics = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
  [debugDiagnostics setObject:v8 forKeyedSubscript:@"preseedRoll"];

  if (self->_angleSeedDegreesCCW == 0.0)
  {
    composition2 = [(PICompositionController *)v7 composition];
    [(NURenderRequest *)self setComposition:composition2];

    [(PIPerspectiveAutoCalculator *)self addMethodDiagnostics:@"canGenerateNewCropRect" details:&unk_1F471FFA0];
    v11 = 1;
  }

  else
  {
    v12 = [(PIPerspectiveAutoCalculator *)self primaryImageProperties:rect];
    v13 = v12;
    v11 = v12 != 0;
    if (v12)
    {
      [v12 size];
      NUPixelSizeToCGSize();
      v15 = v14;
      v17 = v16;
      v18 = [objc_alloc(MEMORY[0x1E69B3A28]) initWithMasterImageSize:{v14, v16}];
      [v18 setCropRect:{0.0, 0.0, v15, v17}];
      [(PIPerspectiveAutoCalculator *)self angleSeedDegreesCCW];
      [v18 setRollAngle:v19 * 3.14159265 / 180.0 constrainCropRectWithTargetArea:v15 * v17];
      [v18 cropRect];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __54__PIPerspectiveAutoCalculator_canGenerateNewCropRect___block_invoke;
      v39[3] = &unk_1E82AAD50;
      v39[5] = v20;
      v39[6] = v21;
      v39[7] = v22;
      v39[8] = v23;
      v39[4] = self;
      [(PICompositionController *)v7 modifyAdjustmentWithKey:@"cropStraighten" modificationBlock:v39];
      composition3 = [(PICompositionController *)v7 composition];
      [(NURenderRequest *)self setComposition:composition3];
    }
  }

  return v11;
}

void __54__PIPerspectiveAutoCalculator_canGenerateNewCropRect___block_invoke(uint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = a2;
  [v7 setCropRect:{v3, v4, v5, v6}];
  [*(a1 + 32) angleSeedDegreesCCW];
  [v7 setAngle:?];
  [v7 setEnabled:1];

  v8 = *(a1 + 32);
  v32 = @"angle";
  v9 = MEMORY[0x1E696AD98];
  [v8 angleSeedDegreesCCW];
  v10 = [v9 numberWithDouble:?];
  v33[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  [v8 addMethodDiagnostics:@"canGenerateNewCropRect" details:v11];

  v12 = *(a1 + 32);
  v30 = @"xOrigin";
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v31 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [v12 addMethodDiagnostics:@"canGenerateNewCropRect" details:v14];

  v15 = *(a1 + 32);
  v28 = @"yOrigin";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v29 = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v15 addMethodDiagnostics:@"canGenerateNewCropRect" details:v17];

  v18 = *(a1 + 32);
  v26 = @"width";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v27 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [v18 addMethodDiagnostics:@"canGenerateNewCropRect" details:v20];

  v21 = *(a1 + 32);
  v24 = @"height";
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 64)];
  v25 = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v21 addMethodDiagnostics:@"canGenerateNewCropRect" details:v23];
}

- (id)primaryImageProperties:(id *)properties
{
  v31 = *MEMORY[0x1E69E9840];
  if (!properties)
  {
    v13 = NUAssertLogger_12170();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v28 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_12170();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v21;
        v29 = 2114;
        v30 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = objc_alloc(MEMORY[0x1E69B3B30]);
  composition = [(NURenderRequest *)self composition];
  v7 = [v5 initWithComposition:composition];

  [v7 setName:@"PIPerspectiveAutoCalculator-primaryImageProperties"];
  v8 = +[PIPipelineFilters sourceFilter];
  v26 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  [v7 setPipelineFilters:v9];

  v10 = [v7 submitSynchronous:properties];
  properties = [v10 properties];

  return properties;
}

- (void)submit:(id)submit
{
  v41 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (!submitCopy)
  {
    v21 = NUAssertLogger_12170();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v38 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_12170();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(*v23);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v29;
        v39 = 2114;
        v40 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v28;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = submitCopy;
  v36 = 0;
  v6 = [(PIPerspectiveAutoCalculator *)self passesImagePropertiesCheck:&v36];
  v7 = v36;
  [(PIPerspectiveAutoCalculator *)self addMethodResultToDiagnostics:@"passesImagePropertiesCheck" error:v7 setYawPitchError:1];
  if (v6)
  {
    v35 = 0;
    v8 = [(PIPerspectiveAutoCalculator *)self passesFaceCheck:&v35];
    v9 = v35;

    [(PIPerspectiveAutoCalculator *)self addMethodResultToDiagnostics:@"passesFaceCheck" error:v9 setYawPitchError:1];
    if (v8)
    {
      if (![(PIPerspectiveAutoCalculator *)self shouldRunBuildingCheck])
      {
        v7 = v9;
LABEL_14:
        [(PIPerspectiveAutoCalculator *)self submitVerified:v5];
        goto LABEL_12;
      }

      v34 = 0;
      v10 = [(PIPerspectiveAutoCalculator *)self passesBuildingCheck:&v34];
      v7 = v34;

      [(PIPerspectiveAutoCalculator *)self addMethodResultToDiagnostics:@"passesBuildingCheck" error:v7 setYawPitchError:1];
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = v9;
    }
  }

  nonLocalizedFailureReason = [v7 nonLocalizedFailureReason];
  v12 = PIPerspectiveErrorUnexpectedRuntimeError;

  if (nonLocalizedFailureReason == v12)
  {
    v20 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v7];
  }

  else
  {
    v13 = objc_opt_new();
    [v13 setObject:&unk_1F471F700 forKeyedSubscript:@"pitch"];
    [v13 setObject:&unk_1F471F700 forKeyedSubscript:@"yaw"];
    [v13 setObject:&unk_1F471F700 forKeyedSubscript:@"angle"];
    v14 = [v13 objectForKeyedSubscript:@"pitch"];
    debugDiagnostics = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
    [debugDiagnostics setObject:v14 forKeyedSubscript:@"pitch"];

    v16 = [v13 objectForKeyedSubscript:@"yaw"];
    debugDiagnostics2 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
    [debugDiagnostics2 setObject:v16 forKeyedSubscript:@"yaw"];

    v18 = [v13 objectForKeyedSubscript:@"angle"];
    debugDiagnostics3 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
    [debugDiagnostics3 setObject:v18 forKeyedSubscript:@"angle"];

    v20 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v13];
  }

  [(PIPerspectiveAutoCalculator *)self writeDebugDiagnosticsToDisk];
  (v5)[2](v5, v20);

LABEL_12:
}

- (BOOL)passesBuildingCheck:(id *)check
{
  v40 = *MEMORY[0x1E69E9840];
  if (!check)
  {
    v20 = NUAssertLogger_12170();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v37 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_12170();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(*v22);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v28;
        v38 = 2114;
        v39 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [objc_alloc(MEMORY[0x1E69B3A00]) initWithRequest:self];
  v6 = +[PIPipelineFilters sourceFilterNoOrientation];
  v7 = +[PIPipelineFilters applyOrientationFilter];
  v35[0] = v6;
  v35[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  [v5 setPipelineFilters:v8];

  v9 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:89401];
  [v5 setScalePolicy:v9];

  [v5 setSampleMode:3];
  responseQueue = [(NURenderRequest *)self responseQueue];
  [v5 setResponseQueue:responseQueue];

  [v5 setName:@"PIPerspectiveAutoCalculator-classify"];
  v11 = [v5 submitGenericSynchronous:check];
  v12 = v11;
  if (v11)
  {
    [v11 confidence];
    v14 = v13;
    v33[0] = @"confidence";
    v15 = MEMORY[0x1E696AD98];
    [v12 confidence];
    v16 = [v15 numberWithFloat:?];
    v33[1] = @"minConfidence";
    v34[0] = v16;
    v34[1] = &unk_1F471F6F0;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

    [(PIPerspectiveAutoCalculator *)self addMethodDiagnostics:@"passesBuildingCheck" details:v17];
    v18 = v14 > 0.4;
    if (v14 <= 0.4)
    {
      *check = [MEMORY[0x1E69B3A48] notFoundError:@"No building detected" object:v17];
    }
  }

  else
  {
    [(PIPerspectiveAutoCalculator *)self wrapAsUnexpectedError:*check];
    *check = v18 = 0;
  }

  return v18;
}

- (BOOL)passesImagePropertiesCheck:(id *)check
{
  v48 = *MEMORY[0x1E69E9840];
  if (!check)
  {
    v29 = NUAssertLogger_12170();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v45 = v30;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v31 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v33 = NUAssertLogger_12170();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v34)
      {
        v37 = dispatch_get_specific(*v31);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols = [v38 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v37;
        v46 = 2114;
        v47 = v41;
        _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v36;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  if (self->_disableOnPanos || self->_disableOnFrontFacingCameraImages)
  {
    v5 = objc_alloc(MEMORY[0x1E69B3B30]);
    composition = [(NURenderRequest *)self composition];
    v7 = [v5 initWithComposition:composition];

    responseQueue = [(NURenderRequest *)self responseQueue];
    [v7 setResponseQueue:responseQueue];

    [v7 setName:@"PIPerspectiveAutoCalculator-selfieAndAspectRatioCheck"];
    v9 = [v7 submitSynchronous:check];
    v10 = v9;
    if (v9)
    {
      properties = [v9 properties];
      v12 = [properties size];
      [properties size];
      v14 = v12 / v13;
      disableOnPanos = [(PIPerspectiveAutoCalculator *)self disableOnPanos];
      v17 = v14 >= 0.5 && v14 <= 2.0;
      v18 = !disableOnPanos || v17;
      if ([(PIPerspectiveAutoCalculator *)self disableOnFrontFacingCameraImages])
      {
        metadata = [properties metadata];
        v21 = [properties size];
        v23 = ![(PIPerspectiveAutoCalculator *)self isFrontFacingCameraImage:metadata pixelSize:v21, v22];
      }

      else
      {
        v23 = 1;
      }

      v24 = v18 & v23;
      v42[0] = @"aspectRatio";
      *&v19 = v14;
      v25 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      v42[1] = @"isSelfieCam";
      v43[0] = v25;
      v26 = [MEMORY[0x1E696AD98] numberWithInt:v23 ^ 1u];
      v43[1] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];

      [(PIPerspectiveAutoCalculator *)self addMethodDiagnostics:@"passesImagePropertiesCheck" details:v27];
      if ((v24 & 1) == 0)
      {
        *check = [MEMORY[0x1E69B3A48] extraError:@"Panos and FFC not supported" object:v27];
      }
    }

    else
    {
      [(PIPerspectiveAutoCalculator *)self wrapAsUnexpectedError:*check];
      *check = v24 = 0;
    }
  }

  else
  {
    v24 = 1;
  }

  return v24 & 1;
}

- (BOOL)isFrontFacingCameraImage:(id)image pixelSize:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  imageCopy = image;
  v8 = [imageCopy objectForKey:*MEMORY[0x1E696D9B0]];
  v9 = [v8 objectForKey:*MEMORY[0x1E696DA50]];
  v10 = [v8 objectForKey:*MEMORY[0x1E696DA58]];
  lowercaseString = [v10 lowercaseString];

  if (v9)
  {
    v12 = lowercaseString == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if ([v9 isEqualToString:@"Apple"] && objc_msgSend(lowercaseString, "containsString:", @"front") && (objc_msgSend(lowercaseString, "containsString:", @"camera") & 1) != 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v13 = [imageCopy objectForKey:*MEMORY[0x1E696DF28]];
  v14 = v13;
  if (!v13)
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = [v13 objectForKey:*MEMORY[0x1E696DF48]];
  if (![v15 isEqualToString:@"Apple"] || !-[PIPerspectiveAutoCalculator hasFrontFacingCameraDimentions:](self, "hasFrontFacingCameraDimentions:", var0, var1))
  {

    goto LABEL_15;
  }

LABEL_13:
  v16 = 1;
LABEL_17:

  return v16;
}

- (BOOL)hasFrontFacingCameraDimentions:(id)dimentions
{
  if (dimentions.var0 == 640 && dimentions.var1 == 480 || dimentions.var0 == 480 && dimentions.var1 == 640 || dimentions.var0 == 1280 && dimentions.var1 == 960)
  {
    return 1;
  }

  return dimentions.var0 == 960 && dimentions.var1 == 1280;
}

- (BOOL)passesFaceCheck:(id *)check
{
  v40 = *MEMORY[0x1E69E9840];
  if (!check)
  {
    v21 = NUAssertLogger_12170();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v37 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_12170();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(*v23);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v29;
        v38 = 2114;
        v39 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v28;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  if (self->_maxFaceSize < 100.0)
  {
    v5 = [PIFaceObservationCache faceRequestWithRequest:self];
    responseQueue = [(NURenderRequest *)self responseQueue];
    [v5 setResponseQueue:responseQueue];

    [v5 setName:@"PIPerspectiveAutoCalculator-faceCheck"];
    faceObservationCache = [(PIPerspectiveAutoCalculator *)self faceObservationCache];

    if (faceObservationCache)
    {
      faceObservationCache2 = [(PIPerspectiveAutoCalculator *)self faceObservationCache];
      v9 = [faceObservationCache2 submitSynchronous:v5 error:check];

      if (v9)
      {
LABEL_5:
        faces = [v9 faces];
        [(PIPerspectiveAutoCalculator *)self getSizeOfAllFaces:faces];
        v12 = v11;

        [(PIPerspectiveAutoCalculator *)self maxFaceSize];
        v34[0] = @"faceSize";
        v14 = v13 / 100.0;
        *&v13 = v12;
        v15 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
        v34[1] = @"maxFaceSize";
        v35[0] = v15;
        v16 = MEMORY[0x1E696AD98];
        [(PIPerspectiveAutoCalculator *)self maxFaceSize];
        v17 = [v16 numberWithDouble:?];
        v35[1] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

        [(PIPerspectiveAutoCalculator *)self addMethodDiagnostics:@"passesFaceCheck" details:v18];
        v19 = v14 >= v12;
        if (v14 < v12)
        {
          *check = [MEMORY[0x1E69B3A48] extraError:@"Faces too large" object:v18];
        }

        goto LABEL_11;
      }
    }

    else
    {
      v9 = [v5 submitGenericSynchronous:check];
      if (v9)
      {
        goto LABEL_5;
      }
    }

    [(PIPerspectiveAutoCalculator *)self wrapAsUnexpectedError:*check];
    *check = v19 = 0;
LABEL_11:

    return v19;
  }

  return 1;
}

- (float)getSizeOfAllFaces:(id)faces
{
  v36 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  if (!facesCopy)
  {
    v14 = NUAssertLogger_12170();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "faces != nil"];
      *buf = 138543362;
      v33 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_12170();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        callStackSymbols = [v23 callStackSymbols];
        v26 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v22;
        v34 = 2114;
        v35 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = facesCopy;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [facesCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v27 + 1) + 8 * i) boundingBox];
        v8 = v8 + v10 * v11;
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
    v12 = v8;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (void)writeDebugDiagnosticsToDisk
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(PIPerspectiveAutoCalculator *)self debugFilesEnabled])
  {
    composition = [(NURenderRequest *)self composition];
    v24 = 0;
    v4 = [PICaptureDebugUtilities createCaptureDebugDirectoryForComposition:composition error:&v24];
    v5 = v24;

    if (v4)
    {
      v6 = MEMORY[0x1E696AEC0];
      debugFilesPrefix = [(PIPerspectiveAutoCalculator *)self debugFilesPrefix];
      v8 = [v6 stringWithFormat:@"%@PerspectiveEvaluation-txt.DBG", debugFilesPrefix];
      v9 = [v4 URLByAppendingPathComponent:v8];

      v10 = MEMORY[0x1E696AEC0];
      debugFilesPrefix2 = [(PIPerspectiveAutoCalculator *)self debugFilesPrefix];
      v12 = [v10 stringWithFormat:@"%@PerspectiveLineDetection-png.DBG", debugFilesPrefix2];
      v13 = [v4 URLByAppendingPathComponent:v12];

      debugFilesPrefix3 = [(PIPerspectiveAutoCalculator *)self debugFilesPrefix];
      LODWORD(v12) = [debugFilesPrefix3 isEqualToString:@"Edit"];

      if (v12)
      {
        v15 = 6000000000;
      }

      else
      {
        v15 = 0;
      }

      v16 = dispatch_time(0, v15);
      v17 = dispatch_get_global_queue(-32768, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__PIPerspectiveAutoCalculator_writeDebugDiagnosticsToDisk__block_invoke;
      block[3] = &unk_1E82AC0A0;
      block[4] = self;
      v22 = v13;
      v23 = v9;
      v18 = v9;
      v19 = v13;
      dispatch_after(v16, v17, block);
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_612);
      }

      v20 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v26 = v5;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Failed to create debug directory, error: %{public}@", buf, 0xCu);
      }
    }
  }
}

void __58__PIPerspectiveAutoCalculator_writeDebugDiagnosticsToDisk__block_invoke(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) debugLineDetectionImage];

  if (v2)
  {
    v3 = MEMORY[0x1E695F620];
    v4 = *MEMORY[0x1E695F830];
    v17[0] = *MEMORY[0x1E695F7F0];
    v17[1] = v4;
    v18[0] = MEMORY[0x1E695E110];
    v18[1] = @"PIPerspectiveAutoCalculator-debug";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v6 = [v3 contextWithOptions:v5];

    v7 = [*(a1 + 32) debugLineDetectionImage];
    v8 = *MEMORY[0x1E695F8A8];
    v9 = [MEMORY[0x1E69B3A10] displayP3ColorSpace];
    v10 = [v9 CGColorSpace];
    v11 = [v6 PNGRepresentationOfImage:v7 format:v8 colorSpace:v10 options:MEMORY[0x1E695E0F8]];

    [v11 writeToURL:*(a1 + 40) atomically:1];
  }

  v12 = MEMORY[0x1E696ACB0];
  v13 = [*(a1 + 32) debugDiagnostics];
  v16 = 0;
  v14 = [v12 dataWithJSONObject:v13 options:3 error:&v16];
  v15 = v16;

  [v14 writeToURL:*(a1 + 48) atomically:1];
}

- (void)addMethodResultToDiagnostics:(id)diagnostics error:(id)error setYawPitchError:(BOOL)pitchError
{
  pitchErrorCopy = pitchError;
  diagnosticsCopy = diagnostics;
  errorCopy = error;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:errorCopy == 0];
  debugDiagnostics = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
  [debugDiagnostics setObject:v9 forKeyedSubscript:diagnosticsCopy];

  if (errorCopy)
  {
    nonLocalizedFailureReason = [errorCopy nonLocalizedFailureReason];

    if (!nonLocalizedFailureReason)
    {
      v12 = [MEMORY[0x1E69B3A48] errorWithCode:7 reason:PIPerspectiveErrorUnexpectedRuntimeError object:0 underlyingError:errorCopy];

      errorCopy = v12;
    }

    nonLocalizedFailureReason2 = [errorCopy nonLocalizedFailureReason];
    debugDiagnostics2 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
    diagnosticsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.error", diagnosticsCopy];
    [debugDiagnostics2 setObject:nonLocalizedFailureReason2 forKeyedSubscript:diagnosticsCopy];

    userInfo = [errorCopy userInfo];
    v17 = *MEMORY[0x1E696AA08];
    v18 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v19 = [v18 description];
    debugDiagnostics3 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
    diagnosticsCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.underlyingError", diagnosticsCopy];
    [debugDiagnostics3 setObject:v19 forKeyedSubscript:diagnosticsCopy2];

    if (pitchErrorCopy)
    {
      nonLocalizedFailureReason3 = [errorCopy nonLocalizedFailureReason];
      debugDiagnostics4 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
      [debugDiagnostics4 setObject:nonLocalizedFailureReason3 forKeyedSubscript:@"pitchError"];

      nonLocalizedFailureReason4 = [errorCopy nonLocalizedFailureReason];
      debugDiagnostics5 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
      [debugDiagnostics5 setObject:nonLocalizedFailureReason4 forKeyedSubscript:@"yawError"];

      userInfo2 = [errorCopy userInfo];
      v27 = [userInfo2 objectForKeyedSubscript:v17];
      v28 = [v27 description];
      debugDiagnostics6 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
      [debugDiagnostics6 setObject:v28 forKeyedSubscript:@"pitchError.underlyingError"];

      userInfo3 = [errorCopy userInfo];
      v31 = [userInfo3 objectForKeyedSubscript:v17];
      v32 = [v31 description];
      debugDiagnostics7 = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
      [debugDiagnostics7 setObject:v32 forKeyedSubscript:@"yawError.underlyingError"];
    }
  }
}

- (void)addMethodDiagnostics:(id)diagnostics details:(id)details
{
  v21 = *MEMORY[0x1E69E9840];
  diagnosticsCopy = diagnostics;
  detailsCopy = details;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [detailsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(detailsCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [detailsCopy objectForKeyedSubscript:v12];
        debugDiagnostics = [(PIPerspectiveAutoCalculator *)self debugDiagnostics];
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", diagnosticsCopy, v12];
        [debugDiagnostics setObject:v13 forKeyedSubscript:v15];
      }

      v9 = [detailsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (PIPerspectiveAutoCalculator)initWithMedia:(id)media
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12230);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12230);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12230);
  }
}

- (PIPerspectiveAutoCalculator)initWithRequest:(id)request
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12230);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12230);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_12230);
  }
}

- (PIPerspectiveAutoCalculator)initWithComposition:(id)composition
{
  v9.receiver = self;
  v9.super_class = PIPerspectiveAutoCalculator;
  v3 = [(NURenderRequest *)&v9 initWithComposition:composition];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  debugDiagnostics = v3->_debugDiagnostics;
  v3->_debugDiagnostics = v4;

  debugLineDetectionImage = v3->_debugLineDetectionImage;
  v3->_debugLineDetectionImage = 0;

  v3->_minimumConfidence = 0.6;
  v3->_maxFaceSize = 0.0;
  v3->_disableOnPanos = 1;
  v3->_disableOnFrontFacingCameraImages = 1;
  v3->_angleSeedDegreesCCW = 0.0;
  v3->_debugFilesEnabled = 0;
  debugFilesPrefix = v3->_debugFilesPrefix;
  v3->_debugFilesPrefix = &stru_1F46EAF88;

  v3->_minimumYawCorrection = 0.4;
  v3->_minimumPitchCorrection = 0.4;
  v3->_minimumAngleCorrection = 0.4;
  v3->_shouldRunBuildingCheck = 0;
  v3->_minimumPitchCorrectionArea = 0.25;
  v3->_minimumYawCorrectionArea = 0.25;
  return v3;
}

+ (void)undoOrientation:(int64_t)orientation forPitch:(double *)pitch yaw:(double *)yaw angle:(double *)angle
{
  v43 = *MEMORY[0x1E69E9840];
  if (!pitch)
  {
    v8 = NUAssertLogger_12170();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pitch != nil"];
      *buf = 138543362;
      v40 = v9;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_12170();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v26 = dispatch_get_specific(*callStackSymbols);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = v26;
        v41 = 2114;
        v42 = v29;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v18 = _NUAssertFailHandler();
    goto LABEL_41;
  }

  if (!yaw)
  {
    v15 = NUAssertLogger_12170();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "yaw != nil"];
      *buf = 138543362;
      v40 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v17 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_12170();
    v18 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!v17)
    {
      if (v18)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v40 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_43:

      v23 = _NUAssertFailHandler();
      goto LABEL_44;
    }

LABEL_41:
    if (v18)
    {
      v30 = dispatch_get_specific(*callStackSymbols);
      v31 = MEMORY[0x1E696AF00];
      v32 = v30;
      callStackSymbols = [v31 callStackSymbols];
      v33 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v40 = v30;
      v41 = 2114;
      v42 = v33;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_43;
  }

  if (!angle)
  {
    v20 = NUAssertLogger_12170();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "angle != nil"];
      *buf = 138543362;
      v40 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v22 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v12 = NUAssertLogger_12170();
    v23 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      if (v23)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v40 = v25;
        _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_46;
    }

LABEL_44:
    if (v23)
    {
      v34 = dispatch_get_specific(*callStackSymbols);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      callStackSymbols5 = [v35 callStackSymbols];
      v38 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v40 = v34;
      v41 = 2114;
      v42 = v38;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_46:

    _NUAssertFailHandler();
  }

  v6 = *pitch;
  v7 = *yaw;
  if (orientation <= 4)
  {
    if (orientation != 2)
    {
      if (orientation == 3)
      {
        *pitch = -v6;
        v6 = -v7;
        goto LABEL_21;
      }

      if (orientation != 4)
      {
        return;
      }

      *pitch = -v6;
LABEL_19:
      *angle = -*angle;
      return;
    }

    v6 = -v7;
LABEL_18:
    *yaw = v6;
    goto LABEL_19;
  }

  if (orientation <= 6)
  {
    if (orientation != 5)
    {
      *pitch = -v7;
      goto LABEL_21;
    }

    *pitch = -v7;
    v6 = -v6;
    goto LABEL_18;
  }

  if (orientation == 7)
  {
    *pitch = v7;
    goto LABEL_18;
  }

  if (orientation != 8)
  {
    return;
  }

  *pitch = v7;
  v6 = -v6;
LABEL_21:
  *yaw = v6;
}

@end