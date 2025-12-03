@interface PISensitiveContentAnalysisRequest
+ (BOOL)currentSensitivityExceedsThresholds:(double)thresholds initialSensitivity:(double)sensitivity;
+ (BOOL)currentSensitivityExceedsThresholdsV2:(double)v2 initialSensitivity:(double)sensitivity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dumpFileName;
- (void)_commonInit;
- (void)resolveWithInputBufferResponse:(id)response completion:(id)completion;
- (void)submit:(id)submit;
@end

@implementation PISensitiveContentAnalysisRequest

- (void)submit:(id)submit
{
  v31 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  sanitizeQueue = [(PISensitiveContentAnalysisRequest *)self sanitizeQueue];

  if (!sanitizeQueue)
  {
    v12 = NUAssertLogger_181();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sanitize queue not initialized"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_181();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(*v14);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v20;
        v29 = 2114;
        v30 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v19;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v6 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x40000];
  v7 = [objc_alloc(MEMORY[0x1E69B3AD8]) initWithRequest:self];
  [v7 setScalePolicy:v6];
  sanitizeQueue2 = [(PISensitiveContentAnalysisRequest *)self sanitizeQueue];
  [v7 setResponseQueue:sanitizeQueue2];

  sRGBColorSpace = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  [v7 setColorSpace:sRGBColorSpace];

  bGRA8 = [MEMORY[0x1E69B3BF0] BGRA8];
  [v7 setPixelFormat:bGRA8];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __44__PISensitiveContentAnalysisRequest_submit___block_invoke;
  v25[3] = &unk_1E82ACC00;
  v25[4] = self;
  v26 = submitCopy;
  v11 = submitCopy;
  [v7 submit:v25];
}

- (void)resolveWithInputBufferResponse:(id)response completion:(id)completion
{
  completionCopy = completion;
  responseCopy = response;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __79__PISensitiveContentAnalysisRequest_resolveWithInputBufferResponse_completion___block_invoke;
  v35[3] = &unk_1E82AC510;
  v35[4] = self;
  v9 = completionCopy;
  v37 = v9;
  v10 = v8;
  v36 = v10;
  v11 = MEMORY[0x1CCA61740](v35);
  v34 = 0;
  v12 = [responseCopy result:&v34];

  v13 = v34;
  if (v12)
  {
    gotLoadHelper_x8__OBJC_CLASS___SCMLImageSanitizerConfiguration(v14);
    v16 = objc_alloc_init(*(v15 + 1848));
    [v16 setMode:4];
    [v16 setGranularity:2];
    [v16 setModelManagerServicesUseCaseID:@"GenerativeEdit.CleanUp"];
    gotLoadHelper_x8__OBJC_CLASS___SCMLImageSanitizer(v17);
    v19 = objc_alloc(*(v18 + 1840));
    v33 = v13;
    v20 = [v19 initWithConfiguration:v16 error:&v33];
    v21 = v33;

    if (v20)
    {
      buffer = [v12 buffer];
      cVPixelBuffer = [buffer CVPixelBuffer];

      gotLoadHelper_x8__OBJC_CLASS___SCMLImageSanitizerRequest(v23);
      v25 = [objc_alloc(*(v24 + 1856)) initWithPixelBuffer:cVPixelBuffer];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __79__PISensitiveContentAnalysisRequest_resolveWithInputBufferResponse_completion___block_invoke_3;
      v28[3] = &unk_1E82A9CC0;
      v29 = v20;
      selfCopy = self;
      v31 = v11;
      v32 = cVPixelBuffer;
      [v29 sanitizeRequestAsynchronously:v25 completionHandler:v28];
      dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v26 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Couldn't create SCMLImageSanitizer" object:v16 underlyingError:v21];

      v25 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v26];
      (v11)[2](v11, v25);
      v21 = v26;
    }

    v13 = v21;
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v13];
    (v11)[2](v11, v16);
  }
}

void __79__PISensitiveContentAnalysisRequest_resolveWithInputBufferResponse_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] responseQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PISensitiveContentAnalysisRequest_resolveWithInputBufferResponse_completion___block_invoke_2;
  block[3] = &unk_1E82ABF90;
  v9 = a1[6];
  v7 = v3;
  v8 = a1[5];
  v5 = v3;
  dispatch_async(v4, block);
}

void __79__PISensitiveContentAnalysisRequest_resolveWithInputBufferResponse_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 BOOLForKey:@"PI_FORCE_REGIONAL_GUARDRAIL_OUT_OF_DATE"];

  if (v8)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_186);
    }

    v9 = *MEMORY[0x1E69B3D80];
    if (!os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v10 = "PISensitiveContent: user default set, overriding GuardrailOutOfDate to YES";
    v11 = v9;
    v12 = 2;
LABEL_6:
    _os_log_impl(&dword_1C7694000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:
    v13 = [MEMORY[0x1E69B3A48] errorWithCode:2000 reason:@"Failed to run SCMLImageSanitizer: asset out of date" object:*(a1 + 32)];
LABEL_28:
    v38 = v13;

    v39 = *(a1 + 48);
    v14 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:v38];
    (*(v39 + 16))(v39, v14);
    v6 = v38;
    goto LABEL_29;
  }

  if (!v5)
  {
    v30 = [v6 domain];
    Helper_x8__SCMLErrorDomain = gotLoadHelper_x8__SCMLErrorDomain(v31);
    if ([v34 isEqualToString:{**(v33 + 1944), Helper_x8__SCMLErrorDomain}])
    {
      v35 = [v6 code];

      if (v35 == 20)
      {
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_186);
        }

        v36 = *MEMORY[0x1E69B3D80];
        if (!os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        *buf = 138412290;
        v41 = v6;
        v10 = "PISensitiveContent: sanitization returned GuardrailOutOfDate error: %@";
        v11 = v36;
        v12 = 12;
        goto LABEL_6;
      }
    }

    else
    {
    }

    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_186);
    }

    v37 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v6;
      _os_log_impl(&dword_1C7694000, v37, OS_LOG_TYPE_DEFAULT, "PISensitiveContent: sanitization returned general error: %@", buf, 0xCu);
    }

    v13 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to run SCMLImageSanitizer" object:*(a1 + 32) underlyingError:v6];
    goto LABEL_28;
  }

  v14 = [[_PISensitiveContentAnalysisResult alloc] initWithSanitization:v5];
  v15 = +[PIGlobalSettings globalSettings];
  v16 = [v15 sensitivityCheckDumpsImages];

  if (v16)
  {
    v17 = [*(a1 + 40) dumpFileName];
    [(_PISensitiveContentAnalysisResult *)v14 sensitivityScore];
    v19 = [v17 stringByAppendingFormat:@"-score_%f.jpg", v18];

    v20 = NSTemporaryDirectory();
    v21 = [v20 stringByAppendingPathComponent:v19];

    v22 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:*(a1 + 56)];
    v23 = [MEMORY[0x1E695F620] context];
    v24 = [MEMORY[0x1E69B3A10] sRGBColorSpace];
    v25 = [v24 CGColorSpace];
    v26 = [v23 JPEGRepresentationOfImage:v22 colorSpace:v25 options:MEMORY[0x1E695E0F8]];

    [v26 writeToFile:v21 atomically:1];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_186);
    }

    v27 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v21;
      _os_log_impl(&dword_1C7694000, v27, OS_LOG_TYPE_DEFAULT, "Dumped sensitivity image to %@", buf, 0xCu);
    }
  }

  v28 = *(a1 + 48);
  v29 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v14];
  (*(v28 + 16))(v28, v29);

LABEL_29:
}

void __79__PISensitiveContentAnalysisRequest_resolveWithInputBufferResponse_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (id)dumpFileName
{
  v2 = MEMORY[0x1E69B3A18];
  composition = [(NURenderRequest *)self composition];
  v4 = [v2 debugDiagnosticNameForComposition:composition];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"SensitivityCheckImage";
  }

  v6 = dumpFileName_sDumpIndex++;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld", v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PISensitiveContentAnalysisRequest;
  v4 = [(NURenderRequest *)&v6 copyWithZone:zone];
  [v4 setPerformRegionSpecificChecks:self->_performRegionSpecificChecks];
  return v4;
}

- (void)_commonInit
{
  v8.receiver = self;
  v8.super_class = PISensitiveContentAnalysisRequest;
  [(NURenderRequest *)&v8 _commonInit];
  name = [(NURenderRequest *)self name];
  uTF8String = [name UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(uTF8String, v5);
  sanitizeQueue = self->_sanitizeQueue;
  self->_sanitizeQueue = v6;
}

+ (BOOL)currentSensitivityExceedsThresholds:(double)thresholds initialSensitivity:(double)sensitivity
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [self currentSensitivityExceedsThresholdsV2:? initialSensitivity:?];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_186);
  }

  v7 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v10 = 134218498;
    thresholdsCopy = thresholds;
    if (v6)
    {
      v8 = @"YES";
    }

    v12 = 2048;
    sensitivityCopy = sensitivity;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_1C7694000, v7, OS_LOG_TYPE_DEFAULT, "PISensitiveContent: current %.5f, initial %.5f, should filter: %{public}@", &v10, 0x20u);
  }

  return v6;
}

+ (BOOL)currentSensitivityExceedsThresholdsV2:(double)v2 initialSensitivity:(double)sensitivity
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__PISensitiveContentAnalysisRequest_currentSensitivityExceedsThresholdsV2_initialSensitivity___block_invoke_2;
  v11[3] = &unk_1E82A9C98;
  v12 = &__block_literal_global_105;
  v5 = MEMORY[0x1CCA61740](v11, a2);
  v6 = v5;
  v7 = vdupq_lane_s64(*&sensitivity, 0);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_f64(xmmword_1C7845C60, v7), vcgtq_f64(xmmword_1C7845C70, v7)))) & 1) != 0 || sensitivity < 0.6 || sensitivity < 0.8)
  {
    v8 = (v2 > 0.8) | (*(v5 + 16))(v5);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

BOOL __94__PISensitiveContentAnalysisRequest_currentSensitivityExceedsThresholdsV2_initialSensitivity___block_invoke_2(uint64_t a1, double a2, double a3)
{
  v6 = (*(*(a1 + 32) + 16))();
  v7 = (*(*(a1 + 32) + 16))(a3);
  if (v7 <= v6)
  {
    return 0;
  }

  if (v7 == 2)
  {
    v8 = vabdd_f64(a3, a2);
    v9 = 0.002;
  }

  else if (v7 == 3 && v6 == 2)
  {
    v8 = vabdd_f64(a3, a2);
    v9 = 0.02;
  }

  else
  {
    if ((v7 != 4 || v6 != 3) && (v7 != 5 || v6 != 4) && (v7 != 6 || v6 != 5))
    {
      return 1;
    }

    v8 = vabdd_f64(a3, a2);
    v9 = 0.04;
  }

  return v8 > v9;
}

uint64_t __94__PISensitiveContentAnalysisRequest_currentSensitivityExceedsThresholdsV2_initialSensitivity___block_invoke(double a1)
{
  if (a1 < 0.01)
  {
    return 1;
  }

  if (a1 < 0.11)
  {
    return 2;
  }

  if (a1 < 0.2)
  {
    return 3;
  }

  if (a1 < 0.45)
  {
    return 4;
  }

  if (a1 < 0.6)
  {
    return 5;
  }

  if (a1 >= 0.8)
  {
    return 7;
  }

  return 6;
}

@end