@interface PIPosterInactiveFrameLayoutRequest
- (PIPosterInactiveFrameLayoutRequest)initWithComposition:(id)composition;
- (PIPosterInactiveFrameLayoutRequest)initWithSegmentationItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
@end

@implementation PIPosterInactiveFrameLayoutRequest

- (id)newRenderJob
{
  v3 = [_PIPosterInactiveFrameLayoutJob alloc];

  return [(_PIPosterInactiveFrameLayoutJob *)v3 initWithInactiveFrameLayoutRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = PIPosterInactiveFrameLayoutRequest;
  v4 = [(NURenderRequest *)&v10 copyWithZone:zone];
  if (v4)
  {
    segmentationItem = [(PIPosterInactiveFrameLayoutRequest *)self segmentationItem];
    v6 = v4[20];
    v4[20] = segmentationItem;

    layout = [(PIPosterInactiveFrameLayoutRequest *)self layout];
    v8 = v4[21];
    v4[21] = layout;
  }

  return v4;
}

- (PIPosterInactiveFrameLayoutRequest)initWithSegmentationItem:(id)item
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy)
  {
    v10 = NUAssertLogger_24860();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "segmentationItem != nil"];
      *buf = 138543362;
      v25 = v11;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_24860();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(*v12);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v22;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v17;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = itemCopy;
  composition = [(PISegmentationItem *)itemCopy composition];
  v23.receiver = self;
  v23.super_class = PIPosterInactiveFrameLayoutRequest;
  v7 = [(NURenderRequest *)&v23 initWithComposition:composition];

  segmentationItem = v7->_segmentationItem;
  v7->_segmentationItem = v5;

  return v7;
}

- (PIPosterInactiveFrameLayoutRequest)initWithComposition:(id)composition
{
  v29 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_24874);
        }

LABEL_11:
        v18 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          callStackSymbols = [v20 callStackSymbols];
          v4 = [callStackSymbols componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_24874);
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
      callStackSymbols2 = [v14 callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_24874);
  }
}

@end