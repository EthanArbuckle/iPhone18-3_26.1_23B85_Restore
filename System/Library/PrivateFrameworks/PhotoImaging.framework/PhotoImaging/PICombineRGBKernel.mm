@interface PICombineRGBKernel
+ (void)combineRGBTextures:(id)a3 intoDestinationTexture:(id)a4 withCommandBuffer:(id)a5;
- (void)encodeToCommandBuffer:(id)a3 destinationTexture:(id)a4;
@end

@implementation PICombineRGBKernel

- (void)encodeToCommandBuffer:(id)a3 destinationTexture:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a3;
  specific = a4;
  v11 = [(PICombineRGBKernel *)self redTexture];
  if (!v11)
  {
    v34 = NUAssertLogger_6081();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing red input texture"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C7694000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_6081();
    v36 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v36)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_57;
    }

LABEL_55:
    if (v36)
    {
      specific = dispatch_get_specific(*v12);
      v46 = MEMORY[0x1E696AF00];
      v4 = specific;
      v12 = [v46 callStackSymbols];
      v5 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = specific;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_57:

    v39 = _NUAssertFailHandler();
    goto LABEL_58;
  }

  v12 = v11;
  v13 = [(PICombineRGBKernel *)self greenTexture];
  if (!v13)
  {
    v37 = NUAssertLogger_6081();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing green input texture"];
      *buf = 138543362;
      *&buf[4] = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_6081();
    v39 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v39)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_60;
    }

LABEL_58:
    if (v39)
    {
      specific = dispatch_get_specific(*v12);
      v47 = MEMORY[0x1E696AF00];
      v4 = specific;
      v12 = [v47 callStackSymbols];
      v5 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = specific;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_60:

    v42 = _NUAssertFailHandler();
    goto LABEL_61;
  }

  v4 = v13;
  v14 = [(PICombineRGBKernel *)self blueTexture];
  if (!v14)
  {
    v40 = NUAssertLogger_6081();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing blue input texture"];
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_6081();
    v42 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v42)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_63;
    }

LABEL_61:
    if (v42)
    {
      specific = dispatch_get_specific(*v12);
      v48 = MEMORY[0x1E696AF00];
      v4 = specific;
      v12 = [v48 callStackSymbols];
      v5 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = specific;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_63:

    _NUAssertFailHandler();
LABEL_64:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_277);
    goto LABEL_13;
  }

  v5 = v14;
  v6 = [v12 width];
  if (v6 != [specific width] || (v6 = objc_msgSend(v12, "width"), v6 != objc_msgSend(specific, "width")))
  {
    v25 = NUAssertLogger_6081();
    v4 = &qword_1C7845000;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input size mismatch"];
      *buf = 138543362;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_6081();
    v27 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v27)
      {
        specific = dispatch_get_specific(*v12);
        v43 = MEMORY[0x1E696AF00];
        v4 = specific;
        v12 = [v43 callStackSymbols];
        v5 = [v12 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = specific;
        *&buf[12] = 2114;
        *&buf[14] = v5;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v30 = _NUAssertFailHandler();
    goto LABEL_49;
  }

  v6 = [v4 width];
  if (v6 != [specific width] || (v6 = objc_msgSend(v4, "width"), v6 != objc_msgSend(specific, "width")))
  {
    v28 = NUAssertLogger_6081();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input size mismatch"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_6081();
    v30 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v30)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_51:

      v33 = _NUAssertFailHandler();
      goto LABEL_52;
    }

LABEL_49:
    if (v30)
    {
      specific = dispatch_get_specific(*v12);
      v44 = MEMORY[0x1E696AF00];
      v4 = specific;
      v12 = [v44 callStackSymbols];
      v5 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = specific;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_51;
  }

  v6 = [v5 width];
  if (v6 != [specific width] || (v6 = objc_msgSend(v5, "width"), v6 != objc_msgSend(specific, "width")))
  {
    v31 = NUAssertLogger_6081();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Input size mismatch"];
      *buf = 138543362;
      *&buf[4] = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v9 = NUAssertLogger_6081();
    v33 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v33)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        v12 = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v12;
        _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_54:

      v36 = _NUAssertFailHandler();
      goto LABEL_55;
    }

LABEL_52:
    if (v33)
    {
      specific = dispatch_get_specific(*v12);
      v45 = MEMORY[0x1E696AF00];
      v4 = specific;
      v12 = [v45 callStackSymbols];
      v5 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = specific;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  v15 = objc_opt_class();
  v16 = [(NUComputeKernel *)self device];
  v57 = 0;
  self = [v15 pipelineStateForFunctionWithName:@"pi::combineRGB" device:v16 error:&v57];
  v6 = v57;

  if (self)
  {
    v17 = [v9 computeCommandEncoder];
    [v17 pushDebugGroup:@"pi::combineRGB"];
    [v17 setComputePipelineState:self];
    [v17 setTexture:v12 atIndex:0];
    [v17 setTexture:v4 atIndex:1];
    [v17 setTexture:v5 atIndex:2];
    [v17 setTexture:specific atIndex:3];
    v56[0] = [specific width];
    v56[1] = [specific height];
    [v17 setBytes:v56 length:4 atIndex:0];
    v18 = [specific width];
    v19 = [specific height];
    v49 = v5;
    v20 = v4;
    v21 = v12;
    v22 = v9;
    v23 = [specific depth];
    memset(buf, 0, sizeof(buf));
    *&v54 = v18;
    *(&v54 + 1) = v19;
    v55 = v23;
    [MEMORY[0x1E69B3A20] groupSizeForImageSize:&v54 pipelineState:self];
    v54 = 0uLL;
    v55 = 0;
    v52 = *buf;
    v53 = *&buf[16];
    *&v50 = v18;
    *(&v50 + 1) = v19;
    v51 = v23;
    v9 = v22;
    v12 = v21;
    v4 = v20;
    v5 = v49;
    [MEMORY[0x1E69B3A20] gridSizeForThreadGroupSize:&v52 imageSize:&v50];
    v52 = v54;
    v53 = v55;
    v50 = *buf;
    v51 = *&buf[16];
    [v17 dispatchThreadgroups:&v52 threadsPerThreadgroup:&v50];
    [v17 popDebugGroup];
    [v17 endEncoding];

    goto LABEL_15;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_64;
  }

LABEL_13:
  v24 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Failed to load compute pipeline: %@", buf, 0xCu);
  }

LABEL_15:
}

+ (void)combineRGBTextures:(id)a3 intoDestinationTexture:(id)a4 withCommandBuffer:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v7 = a4;
  v8 = a5;
  if ([v46 count] != 3)
  {
    v15 = NUAssertLogger_6081();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcTextures.count == 3"];
      *buf = 138543362;
      v48 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_6081();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v33 = dispatch_get_specific(*v17);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        v17 = [v34 callStackSymbols];
        v36 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v33;
        v49 = 2114;
        v50 = v36;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v17;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  if (!v7)
  {
    v22 = NUAssertLogger_6081();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputTexture != nil"];
      *buf = 138543362;
      v48 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_6081();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        v26 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v48 = v17;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_27:

      v30 = _NUAssertFailHandler();
      goto LABEL_28;
    }

LABEL_25:
    if (v25)
    {
      v37 = dispatch_get_specific(*v17);
      v38 = MEMORY[0x1E696AF00];
      v39 = v37;
      v17 = [v38 callStackSymbols];
      v40 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v48 = v37;
      v49 = 2114;
      v50 = v40;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (!v8)
  {
    v27 = NUAssertLogger_6081();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "commandBuffer != nil"];
      *buf = 138543362;
      v48 = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v29 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_6081();
    v30 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v29)
    {
      if (v30)
      {
        v31 = [MEMORY[0x1E696AF00] callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v48 = v32;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v30)
    {
      v41 = dispatch_get_specific(*v17);
      v42 = MEMORY[0x1E696AF00];
      v43 = v41;
      v44 = [v42 callStackSymbols];
      v45 = [v44 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v48 = v41;
      v49 = 2114;
      v50 = v45;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_30:

    _NUAssertFailHandler();
  }

  v9 = [PICombineRGBKernel alloc];
  v10 = [v8 device];
  v11 = [(NUComputeKernel *)v9 initWithDevice:v10];

  v12 = [v46 objectAtIndexedSubscript:0];
  [(PICombineRGBKernel *)v11 setRedTexture:v12];

  v13 = [v46 objectAtIndexedSubscript:1];
  [(PICombineRGBKernel *)v11 setGreenTexture:v13];

  v14 = [v46 objectAtIndexedSubscript:2];
  [(PICombineRGBKernel *)v11 setBlueTexture:v14];

  [(PICombineRGBKernel *)v11 encodeToCommandBuffer:v8 destinationTexture:v7];
}

@end