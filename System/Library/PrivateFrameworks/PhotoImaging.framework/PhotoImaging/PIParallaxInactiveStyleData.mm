@interface PIParallaxInactiveStyleData
+ (id)loadFromSerializedData:(id)a3 error:(id *)a4;
- (CGSize)imageSize;
- (PIParallaxInactiveStyleData)init;
- (PIParallaxInactiveStyleData)initWithData:(id)a3 imageSize:(CGSize)a4 configuration:(id)a5 tuningParameters:(id)a6;
- (id)description;
- (id)serializedDataWithError:(id *)a3;
@end

@implementation PIParallaxInactiveStyleData

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)serializedDataWithError:(id *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v16 = NUAssertLogger_4909();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v31 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_4909();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(*v18);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        v27 = [v25 callStackSymbols];
        v28 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v24;
        v32 = 2114;
        v33 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_imageSize.width];
  [v5 setObject:v6 forKeyedSubscript:@"imageWidth"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_imageSize.height];
  [v5 setObject:v7 forKeyedSubscript:@"imageHeight"];

  [v5 setObject:self->_configuration forKeyedSubscript:@"configuration"];
  [v5 setObject:self->_tuningParameters forKeyedSubscript:@"parameters"];
  [v5 setObject:self->_data forKeyedSubscript:@"data"];
  v29 = 0;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:&v29];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E69B3A48];
    v12 = v29;
    v13 = [v11 errorWithCode:1 reason:@"Failed to serialize style data" object:self underlyingError:v12];
    v14 = v13;

    *a3 = v13;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PIParallaxInactiveStyleData *)self configuration];
  v6 = [(PIParallaxInactiveStyleData *)self tuningParameters];
  [(PIParallaxInactiveStyleData *)self imageSize];
  v8 = v7;
  [(PIParallaxInactiveStyleData *)self imageSize];
  v10 = v9;
  v11 = [(PIParallaxInactiveStyleData *)self data];
  v12 = [v3 stringWithFormat:@"<%@:%p config: %@, tuning: %@, size: %fx%f data: [%lu bytes]>", v4, self, v5, v6, v8, v10, objc_msgSend(v11, "length")];

  return v12;
}

- (PIParallaxInactiveStyleData)initWithData:(id)a3 imageSize:(CGSize)a4 configuration:(id)a5 tuningParameters:(id)a6
{
  height = a4.height;
  width = a4.width;
  v68 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v23 = NUAssertLogger_4909();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v65 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_4909();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v46 = dispatch_get_specific(*v25);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v25 = [v47 callStackSymbols];
        v49 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v46;
        v66 = 2114;
        v67 = v49;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      v29 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v29 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v25;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v33 = _NUAssertFailHandler();
    goto LABEL_30;
  }

  if (width <= 0.0 || height <= 0.0)
  {
    v30 = NUAssertLogger_4909();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "imageSize.width > 0.f && imageSize.height > 0.f"];
      *buf = 138543362;
      v65 = v31;
      _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = MEMORY[0x1E69B38E8];
    v32 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_4909();
    v33 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      if (v33)
      {
        v34 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v34 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v65 = v25;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_32:

      v38 = _NUAssertFailHandler();
      goto LABEL_33;
    }

LABEL_30:
    if (v33)
    {
      v50 = dispatch_get_specific(*v25);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      v25 = [v51 callStackSymbols];
      v53 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v65 = v50;
      v66 = 2114;
      v67 = v53;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_32;
  }

  if (!v12)
  {
    v35 = NUAssertLogger_4909();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "configuration != nil"];
      *buf = 138543362;
      v65 = v36;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = MEMORY[0x1E69B38E8];
    v37 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_4909();
    v38 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!v37)
    {
      if (v38)
      {
        v39 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [v39 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v65 = v25;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_35:

      v43 = _NUAssertFailHandler();
      goto LABEL_36;
    }

LABEL_33:
    if (v38)
    {
      v54 = dispatch_get_specific(*v25);
      v55 = MEMORY[0x1E696AF00];
      v56 = v54;
      v25 = [v55 callStackSymbols];
      v57 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v65 = v54;
      v66 = 2114;
      v67 = v57;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v14 = v13;
  if (!v13)
  {
    v40 = NUAssertLogger_4909();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "tuningParameters != nil"];
      *buf = 138543362;
      v65 = v41;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = MEMORY[0x1E69B38E8];
    v42 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v27 = NUAssertLogger_4909();
    v43 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!v42)
    {
      if (v43)
      {
        v44 = [MEMORY[0x1E696AF00] callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v65 = v45;
        _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_38;
    }

LABEL_36:
    if (v43)
    {
      v58 = dispatch_get_specific(*v25);
      v59 = MEMORY[0x1E696AF00];
      v60 = v58;
      v61 = [v59 callStackSymbols];
      v62 = [v61 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v65 = v58;
      v66 = 2114;
      v67 = v62;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_38:

    _NUAssertFailHandler();
  }

  v63.receiver = self;
  v63.super_class = PIParallaxInactiveStyleData;
  v15 = [(PIParallaxInactiveStyleData *)&v63 init];
  v16 = [v11 copy];
  data = v15->_data;
  v15->_data = v16;

  v15->_imageSize.width = width;
  v15->_imageSize.height = height;
  v18 = [v12 copy];
  configuration = v15->_configuration;
  v15->_configuration = v18;

  v20 = [v14 copy];
  tuningParameters = v15->_tuningParameters;
  v15->_tuningParameters = v20;

  return v15;
}

- (PIParallaxInactiveStyleData)init
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_4920);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_4920);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_4920);
  }
}

+ (id)loadFromSerializedData:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v21 = NUAssertLogger_4909();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v45 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_4909();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v34 = dispatch_get_specific(*v23);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v23 = [v35 callStackSymbols];
        v37 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v34;
        v46 = 2114;
        v47 = v37;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v23;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v31 = _NUAssertFailHandler();
    goto LABEL_40;
  }

  if (!a4)
  {
    v28 = NUAssertLogger_4909();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v45 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    v30 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_4909();
    v31 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v30)
    {
      if (v31)
      {
        v32 = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v45 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v31)
    {
      v38 = dispatch_get_specific(*v23);
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      v41 = [v39 callStackSymbols];
      v42 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v45 = v38;
      v46 = 2114;
      v47 = v42;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_42:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v43 = 0;
  v8 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v43];
  v9 = v43;
  if (!v8)
  {
    v19 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize style data" object:v7 underlyingError:v9];
LABEL_13:
    v18 = 0;
    *a4 = v19;
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid style data" object:v8];
    goto LABEL_13;
  }

  v10 = [v8 objectForKeyedSubscript:@"imageWidth"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 objectForKeyedSubscript:@"imageHeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v8 objectForKeyedSubscript:@"configuration"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v8 objectForKeyedSubscript:@"parameters"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v8 objectForKeyedSubscript:@"data"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 doubleValue];
            v16 = v15;
            [v11 doubleValue];
            v18 = [[a1 alloc] initWithData:v14 imageSize:v12 configuration:v13 tuningParameters:{v16, v17}];
          }

          else
          {
            [MEMORY[0x1E69B3A48] invalidError:@"Invalid style data (data)" object:v14];
            *a4 = v18 = 0;
          }
        }

        else
        {
          [MEMORY[0x1E69B3A48] invalidError:@"Invalid style data (params)" object:v13];
          *a4 = v18 = 0;
        }
      }

      else
      {
        [MEMORY[0x1E69B3A48] invalidError:@"Invalid style data (config)" object:v12];
        *a4 = v18 = 0;
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] invalidError:@"Invalid style data (height)" object:v11];
      *a4 = v18 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Invalid style data (width)" object:v10];
    *a4 = v18 = 0;
  }

LABEL_24:

  return v18;
}

@end