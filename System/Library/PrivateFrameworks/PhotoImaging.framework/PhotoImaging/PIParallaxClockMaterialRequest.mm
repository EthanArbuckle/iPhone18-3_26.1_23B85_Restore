@interface PIParallaxClockMaterialRequest
- (PIParallaxClockMaterialRequest)initWithComposition:(id)composition;
- (PIParallaxClockMaterialRequest)initWithLayerStack:(id)stack;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
@end

@implementation PIParallaxClockMaterialRequest

- (id)newRenderJob
{
  v3 = [_PIParallaxClockMaterialJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = PIParallaxClockMaterialRequest;
  v4 = [(NURenderRequest *)&v10 copyWithZone:zone];
  if (v4)
  {
    layerStack = [(PIParallaxClockMaterialRequest *)self layerStack];
    v6 = v4[20];
    v4[20] = layerStack;

    style = [(PIParallaxClockMaterialRequest *)self style];
    v8 = v4[21];
    v4[21] = style;

    v4[22] = [(PIParallaxClockMaterialRequest *)self luminanceCalculationType];
  }

  return v4;
}

- (PIParallaxClockMaterialRequest)initWithComposition:(id)composition
{
  v32 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3639);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3639);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_3639);
  }
}

- (PIParallaxClockMaterialRequest)initWithLayerStack:(id)stack
{
  stackCopy = stack;
  v6 = +[PIPhotoEditHelper newComposition];
  v7 = MEMORY[0x1E695F658];
  whiteColor = [MEMORY[0x1E695F610] whiteColor];
  v9 = [v7 imageWithColor:whiteColor];
  v10 = [PIPhotoEditHelper imageSourceWithCIImage:v9 orientation:1];

  [v6 setObject:v10 forKeyedSubscript:@"source"];
  [v6 setMediaType:1];
  v14.receiver = self;
  v14.super_class = PIParallaxClockMaterialRequest;
  v11 = [(NURenderRequest *)&v14 initWithComposition:v6];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_layerStack, stack);
  }

  return v12;
}

@end