@interface PIPhotosPipelineDescriptor
+ (id)photosPipelineDescriptorWithAsset:(id)asset version:(id)version;
- (PIPhotosPipelineDescriptor)init;
- (PIPhotosPipelineDescriptor)initWithAsset:(id)asset;
@end

@implementation PIPhotosPipelineDescriptor

- (PIPhotosPipelineDescriptor)initWithAsset:(id)asset
{
  v36 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    v18 = NUAssertLogger_28537();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "asset != nil"];
      *buf = 138543362;
      v33 = v19;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v22 = NUAssertLogger_28537();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(*v20);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v33 = v26;
        v34 = 2114;
        v35 = v30;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v33 = v25;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = assetCopy;
  v31.receiver = self;
  v31.super_class = PIPhotosPipelineDescriptor;
  v6 = [(PIPhotosPipelineDescriptor *)&v31 init];
  asset = v6->_asset;
  v6->_asset = v5;
  v8 = v5;

  v9 = +[PIPhotosPipelineDescriptor pipelineVersion2025];
  basePipelineVersion = v6->_basePipelineVersion;
  v6->_basePipelineVersion = v9;

  v11 = objc_alloc(MEMORY[0x1E69B3AD0]);
  v12 = +[PIPhotosPipelineDescriptor pipelineVersion2025];
  v13 = [v11 initWithNamespace:@"com.apple.photos" name:@"PhotosPipeline" version:v12];
  pipelineIdentifier = v6->_pipelineIdentifier;
  v6->_pipelineIdentifier = v13;

  v15 = +[PISchema registeredPhotosSchemaIdentifier];
  schemaIdentifier = v6->_schemaIdentifier;
  v6->_schemaIdentifier = v15;

  return v6;
}

- (PIPhotosPipelineDescriptor)init
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_28562);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          callStackSymbols = [v20 callStackSymbols];
          v24 = [callStackSymbols componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_28562);
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
      callStackSymbols2 = [v14 callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_28562);
  }
}

+ (id)photosPipelineDescriptorWithAsset:(id)asset version:(id)version
{
  v29 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  versionCopy = version;
  if (!versionCopy)
  {
    v12 = NUAssertLogger_28537();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pipelineVersion != nil"];
      *buf = 138543362;
      v26 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_28537();
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
        v26 = v20;
        v27 = 2114;
        v28 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v19;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = versionCopy;
  v8 = [[PIPhotosPipelineDescriptor alloc] initWithAsset:assetCopy];
  [(PIPhotosPipelineDescriptor *)v8 setBasePipelineVersion:v7];
  v9 = [objc_alloc(MEMORY[0x1E69B3AD0]) initWithNamespace:@"com.apple.photos" name:@"PhotosPipeline" version:v7];
  [(PIPhotosPipelineDescriptor *)v8 setPipelineIdentifier:v9];

  v10 = +[PISchema registeredPhotosSchemaIdentifier];
  [(PIPhotosPipelineDescriptor *)v8 setSchemaIdentifier:v10];

  return v8;
}

@end