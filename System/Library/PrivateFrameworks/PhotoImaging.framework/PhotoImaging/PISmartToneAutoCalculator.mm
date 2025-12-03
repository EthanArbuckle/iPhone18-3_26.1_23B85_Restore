@interface PISmartToneAutoCalculator
- (id)submitSynchronous:(id *)synchronous;
- (void)submit:(id)submit;
@end

@implementation PISmartToneAutoCalculator

- (void)submit:(id)submit
{
  v53[1] = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  v5 = MEMORY[0x1E69B3A18];
  v37 = submitCopy;
  composition = [(NURenderRequest *)self composition];
  v7 = [v5 isHDRComposition:composition];

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v8 = MEMORY[0x1E69B3D80];
  v9 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v10 = "No";
    if (v7)
    {
      v10 = "Yes";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&dword_1C7694000, v9, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator submit isHDRComposition: %s", buf, 0xCu);
  }

  if (!v37)
  {
    v26 = NUAssertLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "completion != nil"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C7694000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v28 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        v34 = dispatch_get_specific(*v28);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v36;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v33;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v11 = dispatch_queue_create("PISmartToneAutoCalculator", 0);
  responseQueue = [(NURenderRequest *)self responseQueue];
  dispatch_set_target_queue(v11, responseQueue);

  if (v7)
  {
    v13 = [PIPhotosPipelineHDRFilters HDRFilterForSDRFilter:@"CISmartTone"];
  }

  else
  {
    v13 = @"CISmartTone";
  }

  v14 = [objc_alloc(MEMORY[0x1E69B3AE8]) initWithRequest:self dataExtractor:v13 options:0];
  v15 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x40000];
  [v14 setScalePolicy:v15];

  [v14 setSampleMode:1];
  v16 = [PIPipelineFilters stopAtTagIncludeGeometryFilter:@"pre-Adjustments"];
  v53[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  [v14 setPipelineFilters:v17];

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v18 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_1C7694000, v18, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator smartTone request submitting: %{public}@", buf, 0xCu);
  }

  [MEMORY[0x1E69B3C60] begin];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v50 = __Block_byref_object_copy__26627;
  v51 = __Block_byref_object_dispose__26628;
  v52 = 0;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __36__PISmartToneAutoCalculator_submit___block_invoke;
  v45[3] = &unk_1E82AC5F8;
  v45[4] = buf;
  [v14 submit:v45];

  if (v7)
  {
    v19 = [PIPhotosPipelineHDRFilters HDRFilterForSDRFilter:@"CILocalLight"];
  }

  else
  {
    v19 = @"CILocalLight";
  }

  [v14 setDataExtractor:v19];
  v20 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"pre-Adjustments"];
  v48 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  [v14 setPipelineFilters:v21];

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__26627;
  v43[4] = __Block_byref_object_dispose__26628;
  v44 = 0;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v22 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 138543362;
    v47 = v14;
    _os_log_impl(&dword_1C7694000, v22, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator localLight request submitting: %{public}@", v46, 0xCu);
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __36__PISmartToneAutoCalculator_submit___block_invoke_29;
  v42[3] = &unk_1E82AC5F8;
  v42[4] = v43;
  [v14 submit:v42];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v23 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 0;
    _os_log_impl(&dword_1C7694000, v23, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator going to commit and wait", v46, 2u);
  }

  v24 = MEMORY[0x1E69B3C60];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __36__PISmartToneAutoCalculator_submit___block_invoke_30;
  v38[3] = &unk_1E82AC620;
  v40 = buf;
  v41 = v43;
  v25 = v37;
  v39 = v25;
  [v24 commitAndNotifyOnQueue:v11 withBlock:v38];

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(buf, 8);
}

void __36__PISmartToneAutoCalculator_submit___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v5 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1C7694000, v5, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator global result: %{public}@", &v7, 0xCu);
  }
}

void __36__PISmartToneAutoCalculator_submit___block_invoke_29(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v5 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1C7694000, v5, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator localLight result: %{public}@", &v7, 0xCu);
  }
}

void __36__PISmartToneAutoCalculator_submit___block_invoke_30(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v3 = MEMORY[0x1E69B3D80];
  v4 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7694000, v4, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator committed", buf, 2u);
  }

  v5 = *(*(a1[5] + 8) + 40);
  v21 = 0;
  v6 = [v5 result:&v21];
  v7 = v21;
  v8 = [v6 data];

  v9 = *(*(a1[6] + 8) + 40);
  v20 = v7;
  v10 = [v9 result:&v20];
  v11 = v20;

  v12 = [v10 data];

  if (v8)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (v11)
    {
      v14 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v11];
      (*(a1[4] + 16))();
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
      }

      v15 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v11;
        _os_log_impl(&dword_1C7694000, v15, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
      }

      v19 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7694000, v19, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator coalesced", buf, 2u);
      }
    }
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v16 addEntriesFromDictionary:v8];
    [v16 addEntriesFromDictionary:v12];
    v17 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v16];
    (*(a1[4] + 16))();
    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
    }

    v18 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7694000, v18, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator completed", buf, 2u);
    }
  }
}

- (id)submitSynchronous:(id *)synchronous
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69B3A18];
  composition = [(NURenderRequest *)self composition];
  v7 = [v5 isHDRComposition:composition];

  v8 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v9 = MEMORY[0x1E69B3D80];
  v10 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v11 = "No";
    if (v7)
    {
      v11 = "Yes";
    }

    *buf = 136315138;
    v34 = v11;
    _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator submitSynchronous isHDRComposition: %s", buf, 0xCu);
  }

  v12 = dispatch_queue_create("PISmartToneAutoCalculator", 0);
  responseQueue = [(NURenderRequest *)self responseQueue];
  dispatch_set_target_queue(v12, responseQueue);

  if (v7)
  {
    v14 = [PIPhotosPipelineHDRFilters HDRFilterForSDRFilter:@"CISmartTone"];
  }

  else
  {
    v14 = @"CISmartTone";
  }

  v15 = [objc_alloc(MEMORY[0x1E69B3AE8]) initWithRequest:self dataExtractor:v14 options:0];
  v16 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x40000];
  [v15 setScalePolicy:v16];

  [v15 setSampleMode:1];
  v17 = [PIPipelineFilters stopAtTagIncludeGeometryFilter:@"pre-Adjustments"];
  v32 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [v15 setPipelineFilters:v18];

  if (*v8 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v19 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v15;
    _os_log_impl(&dword_1C7694000, v19, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator smartTone request submitting: %{public}@", buf, 0xCu);
  }

  v20 = [v15 submitGenericSynchronous:synchronous];
  data = [v20 data];

  if (*v8 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
  }

  v22 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = data;
    _os_log_impl(&dword_1C7694000, v22, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator smartTone result: %{public}@", buf, 0xCu);
  }

  if (data)
  {

    if (v7)
    {
      v14 = [PIPhotosPipelineHDRFilters HDRFilterForSDRFilter:@"CILocalLight"];
    }

    else
    {
      v14 = @"CILocalLight";
    }

    [v15 setDataExtractor:v14];
    v24 = [MEMORY[0x1E69B3C30] stopAtTagFilter:@"pre-Adjustments"];
    v31 = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [v15 setPipelineFilters:v25];

    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
    }

    v26 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = v15;
      _os_log_impl(&dword_1C7694000, v26, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator localLight request submitting: %{public}@", buf, 0xCu);
    }

    v27 = [v15 submitGenericSynchronous:synchronous];
    data2 = [v27 data];

    if (*v8 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_26603);
    }

    v29 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v34 = data2;
      _os_log_impl(&dword_1C7694000, v29, OS_LOG_TYPE_DEFAULT, "PISmartToneAutoCalculator localLight result: %{public}@", buf, 0xCu);
    }

    if (data2)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v23 addEntriesFromDictionary:data];
      [v23 addEntriesFromDictionary:data2];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end