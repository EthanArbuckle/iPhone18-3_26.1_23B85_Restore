@interface PIParallaxInwardFillKernel
+ (void)fillSourceTexture:(id)texture intoDestinationTexture:(id)destinationTexture withCommandBuffer:(id)buffer;
- (void)encodeToCommandBuffer:(id)buffer destinationTexture:(id)texture;
@end

@implementation PIParallaxInwardFillKernel

- (void)encodeToCommandBuffer:(id)buffer destinationTexture:(id)texture
{
  v80 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  textureCopy = texture;
  sourceTexture = [(PIParallaxInwardFillKernel *)self sourceTexture];
  if (!sourceTexture)
  {
    v45 = NUAssertLogger_1364();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing input texture"];
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v48 = NUAssertLogger_1364();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v49)
      {
        v56 = dispatch_get_specific(*callStackSymbols);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols = [v57 callStackSymbols];
        bufferCopy = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v56;
        *&buf[12] = 2114;
        *&buf[14] = bufferCopy;
        _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v49)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v54 = _NUAssertFailHandler();
    goto LABEL_35;
  }

  v4 = sourceTexture;
  v5 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:objc_msgSend(sourceTexture width:"pixelFormat") height:objc_msgSend(v4 mipmapped:"width") >> 1, objc_msgSend(v4, "height") >> 1, 1];
  [v5 setUsage:3];
  [v5 setStorageMode:2];
  device = [bufferCopy device];
  v13 = [device newTextureWithDescriptor:v5];

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

    callStackSymbols = MEMORY[0x1E69B38E8];
    v53 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v48 = NUAssertLogger_1364();
    v54 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (!v53)
    {
      if (v54)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = callStackSymbols;
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
      v59 = dispatch_get_specific(*callStackSymbols);
      v60 = MEMORY[0x1E696AF00];
      v61 = v59;
      callStackSymbols = [v60 callStackSymbols];
      bufferCopy = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v59;
      *&buf[12] = 2114;
      *&buf[14] = bufferCopy;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_37;
  }

  v67 = v13;
  mipmapLevelCount = [v13 mipmapLevelCount];
  v15 = objc_opt_class();
  device2 = [(NUComputeKernel *)self device];
  v78 = 0;
  v6 = [v15 pipelineStateForFunctionWithName:@"pi::inward_fill_down" device:device2 error:&v78];
  v17 = v78;

  v18 = objc_opt_class();
  device3 = [(NUComputeKernel *)self device];
  v77 = 0;
  self = [v18 pipelineStateForFunctionWithName:@"pi::inward_fill_up" device:device3 error:&v77];
  callStackSymbols = v77;

  if (v6 && self)
  {
    selfCopy = self;
    v69 = v6;
    v62 = callStackSymbols;
    v63 = v5;
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:mipmapLevelCount + 1];
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:mipmapLevelCount + 1];
    [v21 addObject:v4];
    v70 = v22;
    [v22 addObject:textureCopy];
    if (mipmapLevelCount)
    {
      for (i = 0; i != mipmapLevelCount; ++i)
      {
        v24 = [v67 newTextureViewWithPixelFormat:objc_msgSend(v67 textureType:"pixelFormat") levels:objc_msgSend(v67 slices:"textureType"), i, 1, 0, 1];
        [v21 addObject:v24];
        [v70 addObject:v24];
      }
    }

    v64 = v4;
    v65 = textureCopy;
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder pushDebugGroup:@"pi::inward_fill_down"];
    [computeCommandEncoder setComputePipelineState:v69];
    v66 = bufferCopy;
    if (mipmapLevelCount)
    {
      v26 = 0;
      do
      {
        v27 = [v21 objectAtIndexedSubscript:v26];
        [computeCommandEncoder setTexture:v27 atIndex:0];
        v28 = [v70 objectAtIndexedSubscript:++v26];
        [computeCommandEncoder setTexture:v28 atIndex:1];
        width = [v28 width];
        height = [v28 height];
        depth = [v28 depth];
        memset(buf, 0, 24);
        *&v75 = width;
        *(&v75 + 1) = height;
        v76 = depth;
        [MEMORY[0x1E69B3A20] groupSizeForImageSize:&v75 pipelineState:v69];
        v75 = 0uLL;
        v76 = 0;
        v73 = *buf;
        v74 = *&buf[16];
        *&v71 = width;
        *(&v71 + 1) = height;
        v72 = depth;
        [MEMORY[0x1E69B3A20] gridSizeForThreadGroupSize:&v73 imageSize:&v71];
        v73 = v75;
        v74 = v76;
        v71 = *buf;
        v72 = *&buf[16];
        [computeCommandEncoder dispatchThreadgroups:&v73 threadsPerThreadgroup:&v71];
      }

      while (mipmapLevelCount != v26);
      [computeCommandEncoder popDebugGroup];
      [computeCommandEncoder endEncoding];

      v32 = 1;
      v33 = mipmapLevelCount;
      bufferCopy = v66;
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
      [computeCommandEncoder popDebugGroup];
      [computeCommandEncoder endEncoding];
    }

    computeCommandEncoder2 = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder2 pushDebugGroup:@"pi::inward_fill_up"];
    [computeCommandEncoder2 setComputePipelineState:selfCopy];
    if (mipmapLevelCount)
    {
      do
      {
        v38 = mipmapLevelCount - 1;
        v39 = [v21 objectAtIndexedSubscript:mipmapLevelCount - 1];
        [computeCommandEncoder2 setTexture:v39 atIndex:0];
        v40 = [v21 objectAtIndexedSubscript:mipmapLevelCount];
        [computeCommandEncoder2 setTexture:v40 atIndex:1];
        v41 = [v70 objectAtIndexedSubscript:v38];
        [computeCommandEncoder2 setTexture:v41 atIndex:2];
        width2 = [v41 width];
        height2 = [v41 height];
        depth2 = [v41 depth];
        memset(buf, 0, 24);
        *&v75 = width2;
        *(&v75 + 1) = height2;
        v76 = depth2;
        [MEMORY[0x1E69B3A20] groupSizeForImageSize:&v75 pipelineState:selfCopy];
        v75 = 0uLL;
        v76 = 0;
        v73 = *buf;
        v74 = *&buf[16];
        *&v71 = width2;
        *(&v71 + 1) = height2;
        v72 = depth2;
        [MEMORY[0x1E69B3A20] gridSizeForThreadGroupSize:&v73 imageSize:&v71];
        v73 = v75;
        v74 = v76;
        v71 = *buf;
        v72 = *&buf[16];
        [computeCommandEncoder2 dispatchThreadgroups:&v73 threadsPerThreadgroup:&v71];

        mipmapLevelCount = v38;
      }

      while (v38);
    }

    [computeCommandEncoder2 popDebugGroup];
    [computeCommandEncoder2 endEncoding];

    textureCopy = v65;
    bufferCopy = v66;
    v5 = v63;
    v4 = v64;
    v35 = v67;
    self = selfCopy;
    v6 = v69;
    callStackSymbols = v62;
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
    *&buf[4] = callStackSymbols;
    _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Failed to load compute pipeline: %@", buf, 0xCu);
  }

LABEL_21:
}

+ (void)fillSourceTexture:(id)texture intoDestinationTexture:(id)destinationTexture withCommandBuffer:(id)buffer
{
  v48 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  bufferCopy = buffer;
  if (!textureCopy)
  {
    v12 = NUAssertLogger_1364();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputTexture != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_1364();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v30 = dispatch_get_specific(*callStackSymbols);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        callStackSymbols = [v31 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v30;
        v46 = 2114;
        v47 = v33;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v22 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  if (!destinationTextureCopy)
  {
    v19 = NUAssertLogger_1364();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "outputTexture != nil"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v21 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_1364();
    v22 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v21)
    {
      if (v22)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v45 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_27:

      v27 = _NUAssertFailHandler();
      goto LABEL_28;
    }

LABEL_25:
    if (v22)
    {
      v34 = dispatch_get_specific(*callStackSymbols);
      v35 = MEMORY[0x1E696AF00];
      v36 = v34;
      callStackSymbols = [v35 callStackSymbols];
      v37 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v45 = v34;
      v46 = 2114;
      v47 = v37;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if (!bufferCopy)
  {
    v24 = NUAssertLogger_1364();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "commandBuffer != nil"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v26 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_1364();
    v27 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v26)
    {
      if (v27)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v29 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v45 = v29;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_28:
    if (v27)
    {
      v38 = dispatch_get_specific(*callStackSymbols);
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      callStackSymbols5 = [v39 callStackSymbols];
      v42 = [callStackSymbols5 componentsJoinedByString:@"\n"];
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
  device = [bufferCopy device];
  v11 = [(NUComputeKernel *)v9 initWithDevice:device];

  [(PIParallaxInwardFillKernel *)v11 setSourceTexture:textureCopy];
  [(PIParallaxInwardFillKernel *)v11 encodeToCommandBuffer:bufferCopy destinationTexture:destinationTextureCopy];
}

@end