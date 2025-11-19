@interface PIParallaxLayerStackRequest
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time;
- (BOOL)shouldUseVideoFrame;
- (PIParallaxLayerStackRequest)initWithComposition:(id)a3;
- (PIParallaxLayerStackRequest)initWithSegmentationItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
- (int64_t)mediaComponentType;
@end

@implementation PIParallaxLayerStackRequest

- (BOOL)shouldUseVideoFrame
{
  if ([(PIParallaxLayerStackRequest *)self layerStackMode]!= 3)
  {
    return 0;
  }

  return [(PIParallaxLayerStackRequest *)self isSettlingEffectEnabled];
}

- (int64_t)mediaComponentType
{
  if ([(PIParallaxLayerStackRequest *)self shouldUseVideoFrame])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)time
{
  result = [(PIParallaxLayerStackRequest *)self shouldUseVideoFrame];
  if (result)
  {
    v6 = MEMORY[0x1E6960CC0];
    *&retstr->var0 = *MEMORY[0x1E6960CC0];
    retstr->var3 = *(v6 + 16);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PIParallaxLayerStackRequest;
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)&v7 time];
  }

  return result;
}

- (id)newRenderJob
{
  v3 = [_PIParallaxLayerStackJob alloc];

  return [(_PIParallaxLayerStackJob *)v3 initWithParallaxLayerStackRequest:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19.receiver = self;
  v19.super_class = PIParallaxLayerStackRequest;
  v4 = [(NURenderRequest *)&v19 copyWithZone:a3];
  if (v4)
  {
    v5 = [(PIParallaxLayerStackRequest *)self segmentationItem];
    v6 = v4[21];
    v4[21] = v5;

    v7 = [(PIParallaxLayerStackRequest *)self layout];
    v8 = v4[23];
    v4[23] = v7;

    v9 = [(PIParallaxLayerStackRequest *)self auxiliaryLayout];
    v10 = v4[24];
    v4[24] = v9;

    v11 = [(PIParallaxLayerStackRequest *)self style];
    v12 = v4[22];
    v4[22] = v11;

    v4[25] = [(PIParallaxLayerStackRequest *)self layerStackMode];
    v13 = [(PIParallaxLayerStackRequest *)self cache];
    v14 = v4[27];
    v4[27] = v13;

    *(v4 + 163) = [(PIParallaxLayerStackRequest *)self isSettlingEffectEnabled];
    *(v4 + 164) = [(PIParallaxLayerStackRequest *)self isSpatialPhotoEnabled];
    *(v4 + 165) = [(PIParallaxLayerStackRequest *)self userAdjustedVisibleFrame];
    v15 = [(PIParallaxLayerStackRequest *)self spatialPhotoProgressHandler];
    v16 = [v15 copy];
    v17 = v4[28];
    v4[28] = v16;

    *(v4 + 166) = [(PIParallaxLayerStackRequest *)self isForegroundLayerEnabled];
    *(v4 + 160) = [(PIParallaxLayerStackRequest *)self headroomBlurEnabled];
    v4[26] = [(PIParallaxLayerStackRequest *)self allowedLayoutStrategies];
    *(v4 + 161) = [(PIParallaxLayerStackRequest *)self useLegacyHeadroom];
    *(v4 + 162) = [(PIParallaxLayerStackRequest *)self headroomDisabled];
  }

  return v4;
}

- (PIParallaxLayerStackRequest)initWithComposition:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_644);
        }

LABEL_11:
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v4 = [v23 componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_644);
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
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_644);
  }
}

- (PIParallaxLayerStackRequest)initWithSegmentationItem:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = NUAssertLogger_21137();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "segmentationItem != nil"];
      *buf = 138543362;
      v25 = v11;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_21137();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(*v12);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v22;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v17;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v6 = [(PISegmentationItem *)v4 composition];
  v23.receiver = self;
  v23.super_class = PIParallaxLayerStackRequest;
  v7 = [(NURenderRequest *)&v23 initWithComposition:v6];

  segmentationItem = v7->_segmentationItem;
  v7->_segmentationItem = v5;

  v7->_layerStackMode = 0;
  v7->_headroomBlurEnabled = 1;
  v7->_foregroundLayerEnabled = 1;
  return v7;
}

@end