@interface PIAutoLoopExportJob
+ (BOOL)shouldUseMetalRenderer;
+ (id)metalRenderer;
- (BOOL)writeVideoFrom:(id)from toWriter:(id)writer stillImageTime:(id *)time createCustomMetadata:(BOOL)metadata geometryTransform:(id)transform inputSize:(CGSize)size outputSize:(CGSize)outputSize error:(id *)self0;
- (PIAutoLoopExportJob)initWithAutoLoopExportRequest:(id)request;
- (PIAutoLoopExportJob)initWithVideoExportRequest:(id)request;
- (id)renderer:(id *)renderer;
@end

@implementation PIAutoLoopExportJob

- (BOOL)writeVideoFrom:(id)from toWriter:(id)writer stillImageTime:(id *)time createCustomMetadata:(BOOL)metadata geometryTransform:(id)transform inputSize:(CGSize)size outputSize:(CGSize)outputSize error:(id *)self0
{
  v111 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  writerCopy = writer;
  transformCopy = transform;
  if (!error)
  {
    v71 = NUAssertLogger_19733();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v72;
      _os_log_error_impl(&dword_1C7694000, v71, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v73 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v75 = NUAssertLogger_19733();
    v76 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v76)
      {
        v77 = dispatch_get_specific(*v73);
        v78 = MEMORY[0x1E696AF00];
        v79 = v77;
        callStackSymbols = [v78 callStackSymbols];
        v81 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v77;
        *&buf[12] = 2114;
        *&buf[14] = v81;
        _os_log_error_impl(&dword_1C7694000, v75, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v76)
    {
LABEL_53:
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v88 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v88;
      _os_log_error_impl(&dword_1C7694000, v75, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_56:

    _NUAssertFailHandler();
    __break(1u);
  }

  v96 = transformCopy;
  v98 = writerCopy;
  v97 = [(PIAutoLoopExportJob *)self renderer:error];
  if (v97)
  {
    if ([(NURenderJob *)self isCanceled])
    {
      v17 = MEMORY[0x1E69B3A48];
      request = [(NURenderJob *)self request];
      error = [request copy];
      v20 = [v17 canceledError:@"AL export was canceled" object:error];
LABEL_5:
      *error = v20;

LABEL_20:
      goto LABEL_21;
    }

    if (([fromCopy startReading] & 1) == 0)
    {
      v52 = MEMORY[0x1E69B3A48];
      request = [fromCopy error];
      *error = [v52 errorWithCode:1 reason:@"Could not start reading AVAsset" object:fromCopy underlyingError:request];
      goto LABEL_20;
    }

    if (([writerCopy startWriting] & 1) == 0)
    {
      v54 = MEMORY[0x1E696AEC0];
      outputURL = [writerCopy outputURL];
      request = [v54 stringWithFormat:@"Could not start writing AVAsset %@", outputURL];

      v56 = MEMORY[0x1E69B3A48];
      error = [writerCopy error];
      v20 = [v56 errorWithCode:1 reason:request object:writerCopy underlyingError:error];
      goto LABEL_5;
    }

    *buf = *MEMORY[0x1E6960CC0];
    *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
    [writerCopy startSessionAtSourceTime:buf];
    outputs = [fromCopy outputs];
    v22 = [outputs count];
    inputs = [writerCopy inputs];
    v24 = v22 == [inputs count];

    if (v24)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_58);
      }

      v25 = *MEMORY[0x1E69B3D88];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v97;
        _os_log_impl(&dword_1C7694000, v25, OS_LOG_TYPE_DEFAULT, "AL Export video using renderer: %{public}@", buf, 0xCu);
      }

      outputGeometry = [(NURenderJob *)self outputGeometry];
      scaledSize = [outputGeometry scaledSize];
      v29 = v28;

      v95 = [[PILongExposureAccumulator alloc] initWithSize:scaledSize renderer:v29 jobNumber:v97, [(NURenderJob *)self jobNumber]];
      if (![(PILongExposureAccumulator *)v95 start:error])
      {
        v51 = 0;
LABEL_39:

        goto LABEL_22;
      }

      NUAbsoluteTime();
      v31 = v30;
      group = dispatch_group_create();
      outputs2 = [fromCopy outputs];
      v33 = [outputs2 count] == 0;

      if (!v33)
      {
        v34 = 0;
        do
        {
          inputs2 = [v98 inputs];
          v36 = [inputs2 objectAtIndexedSubscript:v34];

          outputs3 = [fromCopy outputs];
          v38 = [outputs3 objectAtIndexedSubscript:v34];

          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"export_track_queue_%lu", v34];
          v40 = v39;
          v41 = dispatch_queue_create([v39 UTF8String], 0);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v110) = 0;
          dispatch_group_enter(group);
          v101[0] = MEMORY[0x1E69E9820];
          v101[1] = 3221225472;
          v101[2] = __128__PIAutoLoopExportJob_writeVideoFrom_toWriter_stillImageTime_createCustomMetadata_geometryTransform_inputSize_outputSize_error___block_invoke;
          v101[3] = &unk_1E82AB9C0;
          v107 = buf;
          v42 = v36;
          v102 = v42;
          selfCopy = self;
          v104 = v95;
          v43 = v38;
          v105 = v43;
          errorCopy = error;
          v106 = group;
          [v42 requestMediaDataWhenReadyOnQueue:v41 usingBlock:v101];

          _Block_object_dispose(buf, 8);
          outputs4 = [fromCopy outputs];
          v45 = [outputs4 count];

          ++v34;
        }

        while (v34 < v45);
      }

      dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
      NUAbsoluteTime();
      v47 = v46;
      if ([(NURenderJob *)self isCanceled])
      {
        v48 = MEMORY[0x1E69B3A48];
        request2 = [(NURenderJob *)self request];
        v50 = [request2 copy];
        *error = [v48 canceledError:@"AL export was canceled" object:v50];

        v51 = 0;
LABEL_38:

        goto LABEL_39;
      }

      dispatch_group_enter(group);
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __128__PIAutoLoopExportJob_writeVideoFrom_toWriter_stillImageTime_createCustomMetadata_geometryTransform_inputSize_outputSize_error___block_invoke_38;
      v99[3] = &unk_1E82AC670;
      v57 = group;
      v100 = v57;
      [v98 finishWritingWithCompletionHandler:v99];
      autoLoopExportRequest = [(PIAutoLoopExportJob *)self autoLoopExportRequest];
      destinationLongExposureURL = [autoLoopExportRequest destinationLongExposureURL];
      destinationUTI = [autoLoopExportRequest destinationUTI];
      outputColorSpace = [autoLoopExportRequest outputColorSpace];
      if ([(PILongExposureAccumulator *)v95 writeLongExposureImage:destinationLongExposureURL UTI:destinationUTI colorSpace:outputColorSpace error:error])
      {
        destinationMaskURL = [autoLoopExportRequest destinationMaskURL];
        destinationUTI2 = [autoLoopExportRequest destinationUTI];
        v64 = [(PILongExposureAccumulator *)v95 writeMaskImage:destinationMaskURL UTI:destinationUTI2 error:error];

        if (!v64)
        {
LABEL_36:
          v51 = 0;
LABEL_37:

          request2 = v100;
          goto LABEL_38;
        }

        dispatch_group_wait(v57, 0xFFFFFFFFFFFFFFFFLL);
        NUAbsoluteTime();
        v66 = v65;
        v67 = NURenderLogger();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          *&buf[4] = v47 - v31;
          *&buf[12] = 2048;
          *&buf[14] = v66 - v47;
          *&buf[22] = 2048;
          v110 = v66 - v31;
          _os_log_impl(&dword_1C7694000, v67, OS_LOG_TYPE_DEFAULT, "AL Export timings: loop = %g s, finish = %g s, total = %g s", buf, 0x20u);
        }

        if ([fromCopy status] == 3)
        {
          v68 = MEMORY[0x1E69B3A48];
          destinationLongExposureURL = [fromCopy error];
          v69 = [v68 errorWithCode:1 reason:@"Failed to read from AVAsset" object:fromCopy underlyingError:destinationLongExposureURL];
        }

        else
        {
          if ([v98 status] != 3)
          {
            v51 = 1;
            goto LABEL_37;
          }

          v70 = MEMORY[0x1E69B3A48];
          destinationLongExposureURL = [v98 error];
          v69 = [v70 errorWithCode:1 reason:@"Failed to write to AVAsset" object:v98 underlyingError:destinationLongExposureURL];
        }

        *error = v69;
      }

      else
      {
      }

      goto LABEL_36;
    }

    v82 = NUAssertLogger_19733();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reader outputs should match writer inputs"];
      *buf = 138543362;
      *&buf[4] = v83;
      _os_log_error_impl(&dword_1C7694000, v82, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v84 = MEMORY[0x1E69B38E8];
    v85 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v75 = NUAssertLogger_19733();
    v86 = os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
    if (!v85)
    {
      if (!v86)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }

    if (v86)
    {
      v89 = dispatch_get_specific(*v84);
      v90 = MEMORY[0x1E696AF00];
      v91 = v89;
      callStackSymbols3 = [v90 callStackSymbols];
      v93 = [callStackSymbols3 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v89;
      *&buf[12] = 2114;
      *&buf[14] = v93;
      _os_log_error_impl(&dword_1C7694000, v75, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_56;
  }

LABEL_21:
  v51 = 0;
LABEL_22:

  return v51;
}

void __128__PIAutoLoopExportJob_writeVideoFrom_toWriter_stillImageTime_createCustomMetadata_geometryTransform_inputSize_outputSize_error___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_58);
    }

    v2 = *MEMORY[0x1E69B3D88];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C7694000, v2, OS_LOG_TYPE_INFO, "media data ready after finished", v9, 2u);
    }

    [*(a1 + 32) markAsFinished];
  }

  else
  {
    while ([*(a1 + 32) isReadyForMoreMediaData])
    {
      if ([*(a1 + 40) isCanceled])
      {
        [*(a1 + 48) cancel];
        *(*(*(a1 + 72) + 8) + 24) = 1;
        break;
      }

      v3 = [*(a1 + 56) copyNextSampleBuffer];
      if (v3)
      {
        v4 = v3;
        v5 = [*(a1 + 32) appendSampleBuffer:v3];
        ImageBuffer = CMSampleBufferGetImageBuffer(v4);
        if (ImageBuffer)
        {
          v7 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:ImageBuffer];
          v5 &= [*(a1 + 48) accumulate:v7 error:*(a1 + 80)];
        }

        CFRelease(v4);
        *(*(*(a1 + 72) + 8) + 24) = v5 ^ 1;
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      if (*(*(*(a1 + 72) + 8) + 24) == 1)
      {
        break;
      }
    }

    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      [*(a1 + 32) markAsFinished];
      v8 = *(a1 + 64);

      dispatch_group_leave(v8);
    }
  }
}

- (id)renderer:(id *)renderer
{
  v5 = +[PIAutoLoopExportJob metalRenderer];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PIAutoLoopExportJob;
    v7 = [(NUVideoExportJob *)&v10 renderer:renderer];
  }

  v8 = v7;

  return v8;
}

- (PIAutoLoopExportJob)initWithVideoExportRequest:(id)request
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_56);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_56);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_56);
  }
}

- (PIAutoLoopExportJob)initWithAutoLoopExportRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = PIAutoLoopExportJob;
  return [(NUVideoExportJob *)&v4 initWithVideoExportRequest:request];
}

+ (id)metalRenderer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PIAutoLoopExportJob_metalRenderer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (metalRenderer_onceToken != -1)
  {
    dispatch_once(&metalRenderer_onceToken, block);
  }

  v2 = metalRenderer_metalRenderer;

  return v2;
}

void __36__PIAutoLoopExportJob_metalRenderer__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldUseMetalRenderer])
  {
    v1 = MTLCreateSystemDefaultDevice();
    if (v1)
    {
      v4 = v1;
      v2 = [objc_alloc(MEMORY[0x1E69B3B78]) initWithMetalDevice:v1 options:0];
      v3 = metalRenderer_metalRenderer;
      metalRenderer_metalRenderer = v2;

      v1 = v4;
    }
  }
}

+ (BOOL)shouldUseMetalRenderer
{
  globalSettings = [MEMORY[0x1E69B3AB0] globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"PI_AUTOLOOP_EXPORT_USE_METAL" defaultValue:&__block_literal_global_19799];

  return v3;
}

@end