@interface PICurvesAutoCalculator
+ (id)_defaultCurveArray;
+ (id)autoValuesForBlackPoint:(double)point whitePoint:(double)whitePoint;
+ (id)dictionariesFromPoints:(id)points;
- (id)computeCurvesForImageHistogram:(id)histogram;
- (void)submit:(id)submit;
@end

@implementation PICurvesAutoCalculator

+ (id)autoValuesForBlackPoint:(double)point whitePoint:(double)whitePoint
{
  _defaultCurveArray = [self _defaultCurveArray];
  v7 = [_defaultCurveArray mutableCopy];

  v8 = [v7 objectAtIndex:1];
  v9 = [PICurveControlPoint alloc];
  [v8 y];
  v11 = -[PICurveControlPoint initWithX:y:editable:](v9, "initWithX:y:editable:", [v8 isEditable], point, v10);

  [v7 replaceObjectAtIndex:1 withObject:v11];
  v12 = [v7 objectAtIndex:2];

  v13 = [PICurveControlPoint alloc];
  [v12 y];
  v15 = -[PICurveControlPoint initWithX:y:editable:](v13, "initWithX:y:editable:", [v12 isEditable], whitePoint, v14);

  [v7 replaceObjectAtIndex:2 withObject:v15];
  v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];

  return v16;
}

+ (id)_defaultCurveArray
{
  if (_defaultCurveArray_onceToken != -1)
  {
    dispatch_once(&_defaultCurveArray_onceToken, &__block_literal_global_29536);
  }

  v3 = _defaultCurveArray_defaultCurveArray;

  return v3;
}

void __44__PICurvesAutoCalculator__defaultCurveArray__block_invoke()
{
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v0 = [[PICurveControlPoint alloc] initWithX:0 y:0.0 editable:0.0];
  [v6 addObject:v0];

  v1 = [[PICurveControlPoint alloc] initWithX:0 y:0.0 editable:0.0];
  [v6 addObject:v1];

  v2 = [[PICurveControlPoint alloc] initWithX:0 y:1.0 editable:1.0];
  [v6 addObject:v2];

  v3 = [[PICurveControlPoint alloc] initWithX:0 y:2.0 editable:2.0];
  [v6 addObject:v3];

  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];
  v5 = _defaultCurveArray_defaultCurveArray;
  _defaultCurveArray_defaultCurveArray = v4;
}

+ (id)dictionariesFromPoints:(id)points
{
  v25 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(pointsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = pointsCopy;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v22[0] = @"x";
        v10 = MEMORY[0x1E696AD98];
        [v9 x];
        v11 = [v10 numberWithDouble:?];
        v23[0] = v11;
        v22[1] = @"y";
        v12 = MEMORY[0x1E696AD98];
        [v9 y];
        v13 = [v12 numberWithDouble:?];
        v23[1] = v13;
        v22[2] = @"editable";
        v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isEditable")}];
        v23[2] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

        [v4 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)computeCurvesForImageHistogram:(id)histogram
{
  v29 = *MEMORY[0x1E69E9840];
  histogramCopy = histogram;
  v4 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v5 = MEMORY[0x1E69B3D70];
    v6 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v10];
      *buf = 138543362;
      v26 = v11;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v4;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_112);
        }

LABEL_11:
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          callStackSymbols = [v20 callStackSymbols];
          v4 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v26 = specific;
          v27 = 2114;
          v28 = v4;
          _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_112);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols2 = [v14 callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v24 = objc_opt_class();
    NSStringFromClass(v24);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_112);
  }
}

- (void)submit:(id)submit
{
  v36 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  if (!submitCopy)
  {
    v17 = NUAssertLogger_29578();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_29578();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(*v19);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = submitCopy;
  v6 = [objc_alloc(MEMORY[0x1E69B3AC8]) initWithRequest:self];
  v7 = objc_alloc_init(MEMORY[0x1E69B3AC0]);
  v8 = *(MEMORY[0x1E69B38F0] + 16);
  *buf = *MEMORY[0x1E69B38F0];
  *&buf[16] = v8;
  v9 = *(MEMORY[0x1E69B38F0] + 48);
  v34 = *(MEMORY[0x1E69B38F0] + 32);
  v35 = v9;
  [v7 setColorMatrix:buf];
  [v6 setParameters:v7];
  v10 = [PIPipelineFilters stopAtTagIncludeGeometryFilter:@"pre-Curves"];
  v32[0] = v10;
  v11 = +[PIPipelineFilters histogramOptimizationFilter];
  v32[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v6 setPipelineFilters:v12];

  [v6 setSampleMode:2];
  histogramCalculationColorSpace = [v6 histogramCalculationColorSpace];
  itur2100HLGColorSpace = [MEMORY[0x1E69B3A10] itur2100HLGColorSpace];
  LOBYTE(v12) = [histogramCalculationColorSpace isEqual:itur2100HLGColorSpace];

  if ((v12 & 1) == 0)
  {
    displayP3ColorSpace = [MEMORY[0x1E69B3A10] displayP3ColorSpace];
    [v6 setHistogramCalculationColorSpace:displayP3ColorSpace];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __33__PICurvesAutoCalculator_submit___block_invoke;
  v30[3] = &unk_1E82ACC00;
  v30[4] = self;
  v31 = v5;
  v16 = v5;
  [v6 submit:v30];
}

void __33__PICurvesAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = [a2 result:&v8];
  v4 = v8;
  v5 = [v3 histogram];

  if (v5)
  {
    v6 = [*(a1 + 32) computeCurvesForImageHistogram:v5];
    v7 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v6];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v4];
  }

  (*(*(a1 + 40) + 16))();
}

@end