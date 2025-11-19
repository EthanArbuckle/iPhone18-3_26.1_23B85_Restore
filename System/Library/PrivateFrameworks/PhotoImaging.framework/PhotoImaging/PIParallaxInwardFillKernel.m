@interface PIParallaxInwardFillKernel
+ (void)fillSourceTexture:(id)a3 intoDestinationTexture:(id)a4 withCommandBuffer:(id)a5;
- (void)encodeToCommandBuffer:(id)a3 destinationTexture:(id)a4;
@end

@implementation PIParallaxInwardFillKernel

- (void)encodeToCommandBuffer:(id)a3 destinationTexture:(id)a4
{
  v80 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [(PIParallaxInwardFillKernel *)self sourceTexture];
  if (!v11)
  {
    v45 = NUAssertLogger_1364();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing input texture"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v48 = NUAssertLogger_1364();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v49)
      {
        v56 = dispatch_get_specific(*v20);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        v20 = [v57 callStackSymbols];
        v9 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = v9;
        _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      v50 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v50 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v54 = _NUAssertFailHandler();
    goto LABEL_35;
  }

  v4 = v11;
  v5 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:objc_msgSend(v11 width:"pixelFormat") height:objc_msgSend(v4 mipmapped:"width") >> 1, objc_msgSend(v4, "height") >> 1, 1];
  [v5 setUsage:3];
  [v5 setStorageMode:2];
  v12 = [v9 device];
  v13 = [v12 newTextureWithDescriptor:v5];

  if (!v13)
  {
    v51 = NUAssertLogger_1364();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to allocate intermediate texture"];
      *buf = 138543362;
      *&buf[4] = v52;
      _os_log_error_impl(&dword_1C7694000, v51, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    v53 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v48 = NUAssertLogger_1364();
    v54 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (!v53)
    {
      if (v54)
      {
        v55 = [MEMORY[0x1E696AF00] callStackSymbols];
        v20 = [v55 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_37:

      _NUAssertFailHandler();
LABEL_38:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_106);
      goto LABEL_15;
    }

LABEL_35:
    if (v54)
    {
      v59 = dispatch_get_specific(*v20);
      v60 = MEMORY[0x1E696AF00];
      v61 = v59;
      v20 = [v60 callStackSymbols];
      v9 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v59;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_37;
  }

  v67 = v13;
  v14 = [v13 mipmapLevelCount];
  v15 = objc_opt_class();
  v16 = [(NUComputeKernel *)self device];
  v78 = 0;
  v6 = [v15 pipelineStateForFunctionWithName:@"pi::inward_fill_down" device:v16 error:&v78];
  v17 = v78;

  v18 = objc_opt_class();
  v19 = [(NUComputeKernel *)self device];
  v77 = 0;
  self = [v18 pipelineStateForFunctionWithName:@"pi::inward_fill_up" device:v19 error:&v77];
  v20 = v77;

  if (v6 && self)
  {
    v68 = self;
    v69 = v6;
    v62 = v20;
    v63 = v5;
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14 + 1];
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v14 + 1];
    [v21 addObject:v4];
    v70 = v22;
    [v22 addObject:v10];
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v24 = [v67 newTextureViewWithPixelFormat:objc_msgSend(v67 textureType:"pixelFormat") levels:objc_msgSend(v67 slices:"textureType"), i, 1, 0, 1];
        [v21 addObject:v24];
        [v70 addObject:v24];
      }
    }

    v64 = v4;
    v65 = v10;
    v25 = [v9 computeCommandEncoder];
    [v25 pushDebugGroup:@"pi::inward_fill_down"];
    [v25 setComputePipelineState:v69];
    v66 = v9;
    if (v14)
    {
      v26 = 0;
      do
      {
        v27 = [v21 objectAtIndexedSubscript:v26];
        [v25 setTexture:v27 atIndex:0];
        v28 = [v70 objectAtIndexedSubscript:++v26];
        [v25 setTexture:v28 atIndex:1];
        v29 = [v28 width];
        v30 = [v28 height];
        v31 = [v28 depth];
        memset(buf, 0, 24);
        *&v75 = v29;
        *(&v75 + 1) = v30;
        v76 = v31;
        [MEMORY[0x1E69B3A20] groupSizeForImageSize:&v75 pipelineState:v69];
        v75 = 0uLL;
        v76 = 0;
        v73 = *buf;
        v74 = *&buf[16];
        *&v71 = v29;
        *(&v71 + 1) = v30;
        v72 = v31;
        [MEMORY[0x1E69B3A20] gridSizeForThreadGroupSize:&v73 imageSize:&v71];
        v73 = v75;
        v74 = v76;
        v71 = *buf;
        v72 = *&buf[16];
        [v25 dispatchThreadgroups:&v73 threadsPerThreadgroup:&v71];
      }

      while (v14 != v26);
      [v25 popDebugGroup];
      [v25 endEncoding];

      v32 = 1;
      v33 = v14;
      v9 = v66;
      do
      {
        v34 = [v21 objectAtIndexedSubscript:v32];
        [v70 addObject:v34];

        ++v32;
        --v33;
      }

      while (v33);
    }

    else
    {
      [v25 popDebugGroup];
      [v25 endEncoding];
    }

    v37 = [v9 computeCommandEncoder];
    [v37 pushDebugGroup:@"pi::inward_fill_up"];
    [v37 setComputePipelineState:v68];
    if (v14)
    {
      do
      {
        v38 = v14 - 1;
        v39 = [v21 objectAtIndexedSubscript:v14 - 1];
        [v37 setTexture:v39 atIndex:0];
        v40 = [v21 objectAtIndexedSubscript:v14];
        [v37 setTexture:v40 atIndex:1];
        v41 = [v70 objectAtIndexedSubscript:v38];
        [v37 setTexture:v41 atIndex:2];
        v42 = [v41 width];
        v43 = [v41 height];
        v44 = [v41 depth];
        memset(buf, 0, 24);
        *&v75 = v42;
        *(&v75 + 1) = v43;
        v76 = v44;
        [MEMORY[0x1E69B3A20] groupSizeForImageSize:&v75 pipelineState:v68];
        v75 = 0uLL;
        v76 = 0;
        v73 = *buf;
        v74 = *&buf[16];
        *&v71 = v42;
        *(&v71 + 1) = v43;
        v72 = v44;
        [MEMORY[0x1E69B3A20] gridSizeForThreadGroupSize:&v73 imageSize:&v71];
        v73 = v75;
        v74 = v76;
        v71 = *buf;
        v72 = *&buf[16];
        [v37 dispatchThreadgroups:&v73 threadsPerThreadgroup:&v71];

        v14 = v38;
      }

      while (v38);
    }

    [v37 popDebugGroup];
    [v37 endEncoding];

    v10 = v65;
    v9 = v66;
    v5 = v63;
    v4 = v64;
    v35 = v67;
    self = v68;
    v6 = v69;
    v20 = v62;
    goto LABEL_21;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_38;
  }

LABEL_15:
  v35 = v67;
  v36 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Failed to load compute pipeline: %@", buf, 0xCu);
  }

LABEL_21:
}

+ (void)fillSourceTexture:(id)a3 intoDestinationTexture:(id)a4 withCommandBuffer:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v7 = a4;
  v8 = a5;
  if (!v43)
  {
    v12 = NUAssertLogger_1364();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputTexture != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_1364();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v30 = dispatch_get_specific(*v14);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v14 = [v31 callStackSymbols];
        v33 = [v14 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v30;
        v46 = 2114;
        v47 = v33;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v14;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v22 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  if (!v7)
  {
    v19 = NUAssertLogger_1364();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputTexture != nil"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    v21 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_1364();
    v22 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v21)
    {
      if (v22)
      {
        v23 = [MEMORY[0x1E696AF00] callStackSymbols];
        v14 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v45 = v14;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_27:

      v27 = _NUAssertFailHandler();
      goto LABEL_28;
    }

LABEL_25:
    if (v22)
    {
      v34 = dispatch_get_specific(*v14);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      v14 = [v35 callStackSymbols];
      v37 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v45 = v34;
      v46 = 2114;
      v47 = v37;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (!v8)
  {
    v24 = NUAssertLogger_1364();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "commandBuffer != nil"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_1364();
    v27 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        v28 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v45 = v29;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v27)
    {
      v38 = dispatch_get_specific(*v14);
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      v41 = [v39 callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v45 = v38;
      v46 = 2114;
      v47 = v42;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_30:

    _NUAssertFailHandler();
  }

  v9 = [PIParallaxInwardFillKernel alloc];
  v10 = [v8 device];
  v11 = [(NUComputeKernel *)v9 initWithDevice:v10];

  [(PIParallaxInwardFillKernel *)v11 setSourceTexture:v43];
  [(PIParallaxInwardFillKernel *)v11 encodeToCommandBuffer:v8 destinationTexture:v7];
}

@end