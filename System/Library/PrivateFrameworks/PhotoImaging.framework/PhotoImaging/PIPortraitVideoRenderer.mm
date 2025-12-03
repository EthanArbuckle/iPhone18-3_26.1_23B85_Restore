@interface PIPortraitVideoRenderer
+ (void)renderOnDevice:(id)device colorSize:(id)size disparitySize:(id)disparitySize quality:(int)quality debugMode:(int64_t)mode globalRenderingMetadata:(id)metadata usingBlock:(id)block;
- ($0AC6E346AE4835514AAA8AC86D8F4844)colorSize;
- ($0AC6E346AE4835514AAA8AC86D8F4844)disparitySize;
- (PIPortraitVideoRenderer)initWithDevice:(id)device colorSize:(id)size disparitySize:(id)disparitySize quality:(int)quality debugMode:(int64_t)mode;
- (id)description;
- (void)prepareToRenderWithMetadata:(id)metadata;
@end

@implementation PIPortraitVideoRenderer

- ($0AC6E346AE4835514AAA8AC86D8F4844)disparitySize
{
  height = self->_disparitySize.height;
  width = self->_disparitySize.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)colorSize
{
  height = self->_colorSize.height;
  width = self->_colorSize.width;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (void)prepareToRenderWithMetadata:(id)metadata
{
  v37 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  renderPipeline = self->_renderPipeline;
  renderState = self->_renderState;
  if ((renderPipeline == 0) != (renderState == 0))
  {
    v24 = NUAssertLogger_11997();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected _renderPipeline and _renderState to be allocated at the same time"];
      v33 = 138543362;
      selfCopy2 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v33, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    self = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v7 = NUAssertLogger_11997();
    v27 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (self)
    {
      if (v27)
      {
        self = dispatch_get_specific(*v26);
        v29 = MEMORY[0x1E696AF00];
        selfCopy = self;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        v33 = 138543618;
        selfCopy2 = self;
        v35 = 2114;
        v36 = v32;
        _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v33, 0x16u);
      }
    }

    else if (v27)
    {
      self = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [(PIPortraitVideoRenderer *)self componentsJoinedByString:@"\n"];
      v33 = 138543362;
      selfCopy2 = v28;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v33, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_27;
  }

  v7 = metadataCopy;
  if (!renderPipeline)
  {
    v8 = objc_alloc(MEMORY[0x1E69C4FA8]);
    device = [(PIPortraitVideoRenderer *)self device];
    [(PIPortraitVideoRenderer *)self colorSize];
    NUPixelSizeToCGSize();
    v11 = v10;
    v13 = v12;
    [(PIPortraitVideoRenderer *)self disparitySize];
    NUPixelSizeToCGSize();
    v16 = [v8 initWithDevice:device version:1 colorSize:v11 disparitySize:{v13, v14, v15}];

    [v16 setDebugRendering:{-[PIPortraitVideoRenderer debugMode](self, "debugMode")}];
    [v16 setUseRGBA:1];
    v17 = [objc_alloc(MEMORY[0x1E69C4FA0]) initWithDescriptor:v16];
    v18 = self->_renderPipeline;
    self->_renderPipeline = v17;

    renderState = self->_renderState;
  }

  if (v7 && renderState)
  {
    if (([v7 matchesRenderState:?]& 1) == 0)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_90);
      }

      v19 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_1C7694000, v19, OS_LOG_TYPE_INFO, "CINE: need new render state due to global metadata mismatch", &v33, 2u);
      }

      v20 = self->_renderState;
      self->_renderState = 0;
    }

    renderState = self->_renderState;
  }

  if (!renderState)
  {
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_15:
      v21 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        v33 = 134217984;
        selfCopy2 = v7;
        _os_log_impl(&dword_1C7694000, v21, OS_LOG_TYPE_INFO, "CINE: allocating new renderState with metadata: %p", &v33, 0xCu);
      }

      v22 = [(PTRenderPipeline *)self->_renderPipeline createRenderStateWithQuality:[(PIPortraitVideoRenderer *)self quality]];
      v23 = self->_renderState;
      self->_renderState = v22;

      [v7 applyToRenderState:self->_renderState];
      goto LABEL_18;
    }

LABEL_27:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_90);
    goto LABEL_15;
  }

LABEL_18:
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(MTLDevice *)self->_device name];
  v6 = [v3 stringWithFormat:@"<%@:%p device:%@ color=%ldx%ld disparity=%ldx%ld quality=%d debug=%ld>", v4, self, name, self->_colorSize.width, self->_colorSize.height, self->_disparitySize.width, self->_disparitySize.height, self->_quality, self->_debugMode];

  return v6;
}

- (PIPortraitVideoRenderer)initWithDevice:(id)device colorSize:(id)size disparitySize:(id)disparitySize quality:(int)quality debugMode:(int64_t)mode
{
  var1 = disparitySize.var1;
  var0 = disparitySize.var0;
  v10 = size.var1;
  v11 = size.var0;
  v63 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v18 = NUAssertLogger_11997();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "device != nil"];
      *buf = 138543362;
      v60 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_11997();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v41 = dispatch_get_specific(*callStackSymbols);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols = [v42 callStackSymbols];
        v44 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v60 = v41;
        v61 = 2114;
        v62 = v44;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v28 = _NUAssertFailHandler();
    goto LABEL_29;
  }

  v14 = deviceCopy;
  if (NUPixelSizeIsEmpty())
  {
    v25 = NUAssertLogger_11997();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelSizeIsEmpty(colorSize)"];
      *buf = 138543362;
      v60 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v27 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_11997();
    v28 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      if (v28)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_31:

      v33 = _NUAssertFailHandler();
      goto LABEL_32;
    }

LABEL_29:
    if (v28)
    {
      v45 = dispatch_get_specific(*callStackSymbols);
      v46 = MEMORY[0x1E696AF00];
      v47 = v45;
      callStackSymbols = [v46 callStackSymbols];
      v48 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = v45;
      v61 = 2114;
      v62 = v48;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  if (NUPixelSizeIsEmpty())
  {
    v30 = NUAssertLogger_11997();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "!NUPixelSizeIsEmpty(disparitySize)"];
      *buf = 138543362;
      v60 = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v32 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_11997();
    v33 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      if (v33)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_34:

      v38 = _NUAssertFailHandler();
      goto LABEL_35;
    }

LABEL_32:
    if (v33)
    {
      v49 = dispatch_get_specific(*callStackSymbols);
      v50 = MEMORY[0x1E696AF00];
      v51 = v49;
      callStackSymbols = [v50 callStackSymbols];
      v52 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = v49;
      v61 = 2114;
      v62 = v52;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  if (quality >= 0x65)
  {
    v35 = NUAssertLogger_11997();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "quality >= PTQualityPreviewLow && quality <= PTQualityExportProfessional"];
      *buf = 138543362;
      v60 = v36;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v37 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_11997();
    v38 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!v37)
    {
      if (v38)
      {
        callStackSymbols5 = [MEMORY[0x1E696AF00] callStackSymbols];
        v40 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v60 = v40;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_37;
    }

LABEL_35:
    if (v38)
    {
      v53 = dispatch_get_specific(*callStackSymbols);
      v54 = MEMORY[0x1E696AF00];
      v55 = v53;
      callStackSymbols6 = [v54 callStackSymbols];
      v57 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v60 = v53;
      v61 = 2114;
      v62 = v57;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_37:

    _NUAssertFailHandler();
  }

  v58.receiver = self;
  v58.super_class = PIPortraitVideoRenderer;
  v15 = [(PIPortraitVideoRenderer *)&v58 init];
  device = v15->_device;
  v15->_device = v14;

  v15->_colorSize.width = v11;
  v15->_colorSize.height = v10;
  v15->_disparitySize.width = var0;
  v15->_disparitySize.height = var1;
  v15->_quality = quality;
  v15->_debugMode = mode;
  return v15;
}

+ (void)renderOnDevice:(id)device colorSize:(id)size disparitySize:(id)disparitySize quality:(int)quality debugMode:(int64_t)mode globalRenderingMetadata:(id)metadata usingBlock:(id)block
{
  var1 = disparitySize.var1;
  var0 = disparitySize.var0;
  v10 = size.var1;
  v11 = size.var0;
  deviceCopy = device;
  metadataCopy = metadata;
  blockCopy = block;
  if (renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__onceToken != -1)
  {
    dispatch_once(&renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__onceToken, &__block_literal_global_16_12052);
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__12053;
  v50 = __Block_byref_object_dispose__12054;
  v51 = 0;
  v15 = renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_poolQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke_19;
  block[3] = &unk_1E82AAD28;
  v16 = deviceCopy;
  v39 = v11;
  v40 = v10;
  v41 = var0;
  v42 = var1;
  qualityCopy = quality;
  modeCopy = mode;
  v45 = blockCopy == &__block_literal_global_12049;
  v37 = v16;
  v38 = &v46;
  dispatch_sync(v15, block);
  v17 = metadataCopy;
  if (v47[5])
  {
    v18 = renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_poolQueue;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke_22;
    v33[3] = &unk_1E82AB580;
    v35 = &v46;
    v34 = v17;
    dispatch_sync(v18, v33);
    (*(blockCopy + 2))(blockCopy, *(v47[5] + 8), *(v47[5] + 16));
    v19 = [MEMORY[0x1E695DF00] now];
    v20 = renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_poolQueue;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke_2_24;
    v30[3] = &unk_1E82AB580;
    v32 = &v46;
    v21 = v19;
    v31 = v21;
    dispatch_sync(v20, v30);
    v22 = dispatch_time(0, 3000000000);
    v23 = renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_poolQueue;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke_3;
    v27[3] = &unk_1E82AB580;
    v28 = v21;
    v29 = &v46;
    v24 = v21;
    dispatch_after(v22, v23, v27);
  }

  _Block_object_dispose(&v46, 8);
}

void __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke_19(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_rendererPool;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke_2;
  v17 = &unk_1E82AAD00;
  v18 = *(a1 + 32);
  v3 = *(a1 + 64);
  v19 = *(a1 + 48);
  v20 = v3;
  v22 = *(a1 + 88);
  v21 = *(a1 + 80);
  v23 = *(a1 + 92);
  v4 = [v2 indexOfObjectPassingTest:&v14];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [PIPortraitVideoRenderer alloc];
    v6 = [(PIPortraitVideoRenderer *)v5 initWithDevice:*(a1 + 32) colorSize:*(a1 + 48) disparitySize:*(a1 + 56) quality:*(a1 + 64) debugMode:*(a1 + 72), *(a1 + 88), *(a1 + 80), v14, v15, v16, v17];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_90);
    }

    v9 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_1C7694000, v9, OS_LOG_TYPE_INFO, "CINE: allocating new PT renderer: %@", buf, 0xCu);
    }

    [renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_rendererPool addObject:*(*(*(a1 + 40) + 8) + 40)];
  }

  else if ((*(a1 + 92) & 1) == 0)
  {
    v11 = [renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_rendererPool objectAtIndex:v4];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  [*(*(*(a1 + 40) + 8) + 40) setInUse:1];
}

uint64_t __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke_2_24(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) setInUse:0];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);

  return [v3 setLastUseTime:v2];
}

void __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 40) + 8) + 40) lastUseTime];
  v3 = [v2 isEqualToDate:*(a1 + 32)];

  if (v3)
  {
    [renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_rendererPool removeObjectIdenticalTo:*(*(*(a1 + 40) + 8) + 40)];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_90);
    }

    v4 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v5 = *(*(*(a1 + 40) + 8) + 40);
      v6 = renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_rendererPool;
      v7 = v4;
      v8 = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = [v6 count];
      _os_log_impl(&dword_1C7694000, v7, OS_LOG_TYPE_INFO, "CINE: recycling unused PT renderer: %@ (%lu remaining)", &v8, 0x16u);
    }
  }
}

BOOL __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 device];
  v5 = *(a1 + 32);

  v6 = 0;
  if (v4 == v5)
  {
    [v3 colorSize];
    if (NUPixelSizeEqualToSize())
    {
      [v3 disparitySize];
      if (NUPixelSizeEqualToSize())
      {
        if ([v3 quality] == *(a1 + 80) && objc_msgSend(v3, "debugMode") == *(a1 + 72) && (!objc_msgSend(v3, "isInUse") || *(a1 + 84) == 1))
        {
          v6 = 1;
        }
      }
    }
  }

  return v6;
}

uint64_t __119__PIPortraitVideoRenderer_renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("PIPortraitVideoRenderer.pool", v0);
  v2 = renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_poolQueue;
  renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_poolQueue = v1;

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_rendererPool;
  renderOnDevice_colorSize_disparitySize_quality_debugMode_globalRenderingMetadata_usingBlock__s_rendererPool = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

@end