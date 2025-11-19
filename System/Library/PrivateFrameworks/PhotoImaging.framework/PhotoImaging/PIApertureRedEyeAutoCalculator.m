@interface PIApertureRedEyeAutoCalculator
- (id)apertureRedEyeResultFromFaceObservations:(id)a3 imageSize:(id)a4;
- (void)cancel;
- (void)submit:(id)a3;
@end

@implementation PIApertureRedEyeAutoCalculator

- (id)apertureRedEyeResultFromFaceObservations:(id)a3 imageSize:(id)a4
{
  v82 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(NURenderRequest *)self composition];
  v7 = [v6 objectForKeyedSubscript:@"orientation"];

  v60 = v7;
  v8 = [v7 objectForKeyedSubscript:@"value"];
  [v8 intValue];

  v62 = NUOrientationInverse();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v68;
    v61 = *v68;
    do
    {
      v12 = 0;
      v64 = v10;
      do
      {
        if (*v68 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v67 + 1) + 8 * v12);
        [v13 boundingBox];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [v13 landmarks];
        v23 = [v22 leftEye];

        v24 = [v13 landmarks];
        v25 = [v24 rightEye];

        if ([v23 pointCount] && objc_msgSend(v25, "pointCount"))
        {
          +[PIAutoCalculatorUtils averageCGPoints:pointCount:](PIAutoCalculatorUtils, "averageCGPoints:pointCount:", [v23 normalizedPoints], objc_msgSend(v23, "pointCount"));
          v27 = v26;
          v29 = v28;
          +[PIAutoCalculatorUtils averageCGPoints:pointCount:](PIAutoCalculatorUtils, "averageCGPoints:pointCount:", [v25 normalizedPoints], objc_msgSend(v25, "pointCount"));
          v31 = v30;
          v33 = v32;
          [PIAutoCalculatorUtils convertFacePoint:v62 toImagePointWithFaceRect:v27 orientation:v29, v15, v17, v19, v21];
          v35 = v34;
          v37 = v36;
          [PIAutoCalculatorUtils convertFacePoint:v62 toImagePointWithFaceRect:v31 orientation:v33, v15, v17, v19, v21];
          v39 = v38;
          v41 = v40;
          v42 = sqrt((v35 - v38) * (v35 - v38) + (v37 - v40) * (v37 - v40)) * 0.11;
          v66 = NUOrientationTransformImageSize();
          v44 = v37 * v43;
          v45 = v39 * v66;
          v46 = v41 * v43;
          v47 = v42 * v66;
          v79[0] = @"center";
          v77[0] = @"x";
          v48 = [MEMORY[0x1E696AD98] numberWithDouble:v35 * v66];
          v77[1] = @"y";
          v78[0] = v48;
          v49 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
          v78[1] = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
          v80[0] = v50;
          v79[1] = @"radius";
          v51 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
          v79[2] = @"sensitivity";
          v80[1] = v51;
          v80[2] = &unk_1F471F840;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:3];
          [v63 addObject:v52];

          v75[0] = @"center";
          v73[0] = @"x";
          v53 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
          v73[1] = @"y";
          v74[0] = v53;
          v54 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
          v74[1] = v54;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
          v76[0] = v55;
          v75[1] = @"radius";
          v56 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
          v75[2] = @"sensitivity";
          v76[1] = v56;
          v76[2] = &unk_1F471F840;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];
          [v63 addObject:v57];

          v11 = v61;
          v10 = v64;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v67 objects:v81 count:16];
    }

    while (v10);
  }

  v71 = @"redEyeSpots";
  v72 = v63;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];

  return v58;
}

- (void)submit:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v13 = NUAssertLogger_19851();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_19851();
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
  v6 = [objc_alloc(MEMORY[0x1E69B3A50]) initWithRequest:self];
  faceRequest = self->_faceRequest;
  self->_faceRequest = v6;

  [(NUFaceDetectionRequest *)self->_faceRequest setName:@"PIApertureRedEyeAutoCalculator-faceDetection"];
  v8 = [PIPipelineFilters stopAtTagIncludeOrientationFilter:@"pre-Adjustments"];
  v28 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [(NUFaceDetectionRequest *)self->_faceRequest setPipelineFilters:v9];

  v10 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:1741824];
  [(NUFaceDetectionRequest *)self->_faceRequest setScalePolicy:v10];

  [(NUFaceDetectionRequest *)self->_faceRequest setSampleMode:3];
  v11 = self->_faceRequest;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __41__PIApertureRedEyeAutoCalculator_submit___block_invoke;
  v26[3] = &unk_1E82ACC00;
  v26[4] = self;
  v27 = v5;
  v12 = v5;
  [(NUFaceDetectionRequest *)v11 submit:v26];
}

void __41__PIApertureRedEyeAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v12 = 0;
  v3 = [a2 result:&v12];
  v4 = v12;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 faces];
    v7 = [v3 imageSize];
    v9 = [v5 apertureRedEyeResultFromFaceObservations:v6 imageSize:{v7, v8}];

    v10 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v9];
    (*(*(a1 + 40) + 16))();

    v4 = v10;
  }

  else
  {
    v11 = *(a1 + 40);
    v9 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
    (*(v11 + 16))(v11, v9);
  }
}

- (void)cancel
{
  v2 = [(NUFaceDetectionRequest *)self->_faceRequest renderContext];
  [v2 cancelAllRequests];
}

@end