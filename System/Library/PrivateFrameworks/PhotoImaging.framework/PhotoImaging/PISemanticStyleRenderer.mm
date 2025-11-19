@interface PISemanticStyleRenderer
+ (BOOL)usingSharedSemanticStyleRendererWithMetalCommandQueue:(id)a3 processingType:(int)a4 useStyleEngine:(BOOL)a5 perform:(id)a6;
- (BOOL)matchesMetalCommandQueue:(id)a3 processingType:(int)a4 useStyleEngine:(BOOL)a5;
- (BOOL)prepareProcessor;
- (PISemanticStyleRenderer)init;
- (PISemanticStyleRenderer)initWithMetalCommandQueue:(id)a3 processingType:(int)a4 useStyleEngine:(BOOL)a5;
- (void)dealloc;
@end

@implementation PISemanticStyleRenderer

- (BOOL)matchesMetalCommandQueue:(id)a3 processingType:(int)a4 useStyleEngine:(BOOL)a5
{
  v8 = a3;
  v9 = [(PISemanticStyleRenderer *)self metalCommandQueue];

  if (v9 == v8 && [(PISemanticStyleRenderer *)self processingType]== a4)
  {
    return [(PISemanticStyleRenderer *)self useStyleEngine]^ a5 ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)prepareProcessor
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->_processor)
  {
    v27 = NUAssertLogger_22529();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Already prepared!"];
      v38 = 138543362;
      v39 = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v38, 0xCu);
    }

    v29 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v30 = NUAssertLogger_22529();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v31)
      {
        specific = dispatch_get_specific(*v29);
        v33 = MEMORY[0x1E696AF00];
        v34 = specific;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        v38 = 138543618;
        v39 = specific;
        v40 = 2114;
        v41 = v36;
        _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v38, 0x16u);
      }
    }

    else if (v31)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [specific componentsJoinedByString:@"\n"];
      v38 = 138543362;
      v39 = v32;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v38, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_31;
  }

  v3 = objc_alloc(MEMORY[0x1E6991778]);
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [(PISemanticStyleRenderer *)self metalCommandQueue];
  v6 = [v3 initWithbundle:v4 andOptionalCommandQueue:v5];
  ctx = self->_ctx;
  self->_ctx = v6;

  if (self->_useStyleEngine)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6991768]);
    [v8 setMemSize:40894464];
    [v8 setWireMemory:1];
    v9 = [(PISemanticStyleRenderer *)self description];
    [v8 setLabel:v9];

    v10 = objc_alloc(MEMORY[0x1E6991750]);
    v11 = [(FigMetalContext *)self->_ctx device];
    v12 = [v10 initWithDevice:v11 allocatorType:2];
    [(FigMetalContext *)self->_ctx setAllocator:v12];

    v13 = [(FigMetalContext *)self->_ctx allocator];
    v14 = [v13 setupWithDescriptor:v8];

    if (v14)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_405);
      }

      v15 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        v38 = 67109120;
        LODWORD(v39) = v14;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Failed to setup FigMetalAllocator, err = %d", &v38, 8u);
      }

      goto LABEL_9;
    }
  }

  v17 = [objc_alloc(MEMORY[0x1E6991710]) initWithMetalContext:self->_ctx];
  processor = self->_processor;
  self->_processor = v17;

  v19 = [(CMISmartStyleMetalRendererV1 *)self->_processor setup];
  if (v19)
  {
    LODWORD(specific) = v19;
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_13:
      v21 = *MEMORY[0x1E69B3D80];
      v16 = os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR);
      if (!v16)
      {
        return v16;
      }

      v38 = 67109120;
      LODWORD(v39) = specific;
      v22 = "PISemanticStyleProcessor: setup failed with error %d";
      v23 = v21;
      goto LABEL_20;
    }

LABEL_31:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_405);
    goto LABEL_13;
  }

  v24 = [(CMISmartStyleMetalRendererV1 *)self->_processor prepareToProcess:self->_processingType];
  if (!v24)
  {
    LOBYTE(v16) = 1;
    return v16;
  }

  v25 = v24;
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_405);
  }

  v26 = *MEMORY[0x1E69B3D80];
  v16 = os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR);
  if (v16)
  {
    v38 = 67109120;
    LODWORD(v39) = v25;
    v22 = "PISemanticStyleProcessor: prepare failed with error %d";
    v23 = v26;
LABEL_20:
    _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, v22, &v38, 8u);
LABEL_9:
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_405);
  }

  v3 = *MEMORY[0x1E69B3D80];
  v4 = v3;
  sid = self->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    metalCommandQueue = self->_metalCommandQueue;
    ctx = self->_ctx;
    v8 = [(FigMetalContext *)ctx allocator];
    *buf = 134218752;
    v11 = self;
    v12 = 2048;
    v13 = metalCommandQueue;
    v14 = 2048;
    v15 = ctx;
    v16 = 2048;
    v17 = [v8 memSize];
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v4, OS_SIGNPOST_INTERVAL_END, sid, "PISemanticStyleRenderer", "%p q=%p ctx=%p mem=%zu", buf, 0x2Au);
  }

  v9.receiver = self;
  v9.super_class = PISemanticStyleRenderer;
  [(PISemanticStyleRenderer *)&v9 dealloc];
}

- (PISemanticStyleRenderer)initWithMetalCommandQueue:(id)a3 processingType:(int)a4 useStyleEngine:(BOOL)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    v20 = NUAssertLogger_22529();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "commandQueue != nil"];
      *buf = 138543362;
      v35 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v22 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v24 = NUAssertLogger_22529();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v25)
      {
        v28 = dispatch_get_specific(*v22);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v31 = [v29 callStackSymbols];
        v32 = [v31 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v28;
        v36 = 2114;
        v37 = v32;
        _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v25)
    {
      v26 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [v26 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v27;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = v9;
  v33.receiver = self;
  v33.super_class = PISemanticStyleRenderer;
  v11 = [(PISemanticStyleRenderer *)&v33 init];
  objc_storeStrong(&v11->_metalCommandQueue, a3);
  v11->_processingType = a4;
  v11->_useStyleEngine = a5;
  v12 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_405);
  }

  v13 = MEMORY[0x1E69B3D80];
  v14 = *MEMORY[0x1E69B3D80];
  v11->_sid = os_signpost_id_make_with_pointer(v14, v11);

  if (*v12 != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_405);
  }

  v15 = *v13;
  v16 = v15;
  sid = v11->_sid;
  if (sid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    metalCommandQueue = v11->_metalCommandQueue;
    *buf = 134218240;
    v35 = v11;
    v36 = 2048;
    v37 = metalCommandQueue;
    _os_signpost_emit_with_name_impl(&dword_1C7694000, v16, OS_SIGNPOST_INTERVAL_BEGIN, sid, "PISemanticStyleRenderer", "%p q=%p", buf, 0x16u);
  }

  return v11;
}

- (PISemanticStyleRenderer)init
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = MEMORY[0x1E69B3D70];
    v5 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v3;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_407);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v24 = [v23 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = specific;
          v28 = 2114;
          v29 = v24;
          _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_407);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v25 = objc_opt_class();
    NSStringFromClass(v25);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_407);
  }
}

+ (BOOL)usingSharedSemanticStyleRendererWithMetalCommandQueue:(id)a3 processingType:(int)a4 useStyleEngine:(BOOL)a5 perform:(id)a6
{
  v7 = a5;
  v8 = *&a4;
  v10 = a3;
  v11 = a6;
  v12 = NSStringFromClass(a1);
  v13 = [MEMORY[0x1E69B3C58] shared];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __119__PISemanticStyleRenderer_usingSharedSemanticStyleRendererWithMetalCommandQueue_processingType_useStyleEngine_perform___block_invoke;
  v25 = &unk_1E82ABD18;
  v14 = v10;
  v26 = v14;
  v27 = v8;
  v28 = v7;
  v15 = [v13 checkOutResourceForKey:v12 matching:&v22];

  if (v15 || (v16 = [PISemanticStyleRenderer alloc], v15 = [(PISemanticStyleRenderer *)v16 initWithMetalCommandQueue:v14 processingType:v8 useStyleEngine:v7, v22, v23, v24, v25], [(PISemanticStyleRenderer *)v15 prepareProcessor]))
  {
    v17 = [(PISemanticStyleRenderer *)v15 processor:v22];
    v18 = v11[2](v11, v17);

    v19 = [(PISemanticStyleRenderer *)v15 processor];
    [v19 resetState];

    v20 = [MEMORY[0x1E69B3C58] shared];
    [v20 checkInResource:v15 forKey:v12];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end