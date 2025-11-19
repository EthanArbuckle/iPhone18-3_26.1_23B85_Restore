@interface PIFakeBoost
+ (id)boostParametersFromRawProperties:(id)a3;
+ (id)kernelFB0;
+ (id)kernelFB3;
- (id)outputImage;
- (id)outputImageFB0;
- (id)outputImageFB3;
@end

@implementation PIFakeBoost

+ (id)boostParametersFromRawProperties:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v24 = NUAssertLogger_13971();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "properties != nil"];
      *buf = 138543362;
      v39 = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v26 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_13971();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v32 = dispatch_get_specific(*v26);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        v35 = [v33 callStackSymbols];
        v36 = [v35 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v32;
        v40 = 2114;
        v41 = v36;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      v30 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [v30 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v31;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = v3;
  v5 = [v3 rawToneCurveProperties];
  v7 = v5;
  if (v5)
  {
    LODWORD(v6) = 1045220557;
    [v5 boostCurveValueAt:v6];
    v9 = v8;
    LODWORD(v10) = 0.5;
    [v7 boostCurveValueAt:v10];
    v12 = v11;
    LODWORD(v13) = 1061997773;
    [v7 boostCurveValueAt:v13];
    v15 = v14;
    LODWORD(v16) = v9;
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    v37[0] = v17;
    LODWORD(v18) = v12;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    v37[1] = v19;
    LODWORD(v20) = v15;
    v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    v37[2] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)kernelFB3
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v3 = MEMORY[0x1E69B3D70];
    v4 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = v4;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
      *buf = 138543362;
      v24 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v10 = *v2;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v10 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_101_13987);
        }

LABEL_11:
        v16 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v18 = MEMORY[0x1E696AF00];
          v19 = specific;
          v20 = v16;
          v21 = [v18 callStackSymbols];
          v2 = [v21 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v24 = specific;
          v25 = 2114;
          v26 = v2;
          _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v10 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_101_13987);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v15;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v22 = objc_opt_class();
    NSStringFromClass(v22);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_101_13987);
  }
}

+ (id)kernelFB0
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v3 = MEMORY[0x1E69B3D70];
    v4 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = v4;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
      *buf = 138543362;
      v24 = v9;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v10 = *v2;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v10 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_101_13987);
        }

LABEL_11:
        v16 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v18 = MEMORY[0x1E696AF00];
          v19 = specific;
          v20 = v16;
          v21 = [v18 callStackSymbols];
          v2 = [v21 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v24 = specific;
          v25 = 2114;
          v26 = v2;
          _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v10 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_101_13987);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v15;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v22 = objc_opt_class();
    NSStringFromClass(v22);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_101_13987);
  }
}

- (id)outputImageFB3
{
  v78 = *MEMORY[0x1E69E9840];
  inputImage = self->_inputImage;
  if (!inputImage)
  {
    v41 = NUAssertLogger_13971();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputImage cannot be nil"];
      *buf = 138543362;
      v75 = v42;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v43 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v45 = NUAssertLogger_13971();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v46)
      {
        v60 = dispatch_get_specific(*v43);
        v61 = MEMORY[0x1E696AF00];
        v62 = v60;
        v43 = [v61 callStackSymbols];
        v63 = [v43 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v75 = v60;
        v76 = 2114;
        v77 = v63;
        _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      v47 = [MEMORY[0x1E696AF00] callStackSymbols];
      v43 = [v47 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v75 = v43;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v51 = _NUAssertFailHandler();
    goto LABEL_29;
  }

  v4 = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
  if ([(NSArray *)self->_inputParams count]!= 3)
  {
    v48 = NUAssertLogger_13971();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid boost parameters"];
      *buf = 138543362;
      v75 = v49;
      _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v43 = MEMORY[0x1E69B38E8];
    v50 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v45 = NUAssertLogger_13971();
    v51 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (!v50)
    {
      if (v51)
      {
        v52 = [MEMORY[0x1E696AF00] callStackSymbols];
        v43 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v75 = v43;
        _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_31:

      v57 = _NUAssertFailHandler();
      goto LABEL_32;
    }

LABEL_29:
    if (v51)
    {
      v64 = dispatch_get_specific(*v43);
      v65 = MEMORY[0x1E696AF00];
      v66 = v64;
      v43 = [v65 callStackSymbols];
      v67 = [v43 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v75 = v64;
      v76 = 2114;
      v77 = v67;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v5 = [(NSArray *)self->_inputParams objectAtIndexedSubscript:0];
  [v5 floatValue];
  v7 = v6;

  v8 = [(NSArray *)self->_inputParams objectAtIndexedSubscript:1];
  [v8 floatValue];
  v10 = v9;

  v11 = [(NSArray *)self->_inputParams objectAtIndexedSubscript:2];
  [v11 floatValue];
  v13 = v12;

  if (v7 >= v10 || v10 >= v13)
  {
    v53 = NUAssertLogger_13971();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid points parameters"];
      *buf = 138543362;
      v75 = v55;
      _os_log_error_impl(&dword_1C7694000, v53, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v43 = MEMORY[0x1E69B38E8];
    v56 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v45 = NUAssertLogger_13971();
    v57 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (!v56)
    {
      if (v57)
      {
        v58 = [MEMORY[0x1E696AF00] callStackSymbols];
        v59 = [v58 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v75 = v59;
        _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_34;
    }

LABEL_32:
    if (v57)
    {
      v68 = dispatch_get_specific(*v43);
      v69 = MEMORY[0x1E696AF00];
      v70 = v68;
      v71 = [v69 callStackSymbols];
      v72 = [v71 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v75 = v68;
      v76 = 2114;
      v77 = v72;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_34:

    _NUAssertFailHandler();
  }

  v15 = (v7 * -0.2) + (v13 * 0.8);
  v16 = (v7 * -0.2) + (v10 * 0.5);
  v17 = ((v10 - v7) * v15) - ((v13 - v7) * v16);
  v18 = ((v13 - v7) * -0.3) + ((v10 - v7) * 0.6);
  v19 = (v16 * -0.6) + (v15 * 0.3);
  v20 = ((v7 * (v18 * 0.2)) + (v19 * v7)) + (v17 * -0.2);
  v21 = (v17 * v19) - (v20 * v18);
  v22 = v21 / ((v19 + (v18 * 0.2)) * (v19 + (v18 * 0.2)));
  v23 = v21 / ((v19 + (v18 * 0.8)) * (v19 + (v18 * 0.8)));
  v24 = [MEMORY[0x1E695F688] vectorWithX:v17 Y:v20 Z:v18 W:v19];
  v25 = [MEMORY[0x1E695F688] vectorWithX:0.200000003 Y:v7 Z:v22];
  v26 = [MEMORY[0x1E695F688] vectorWithX:0.800000012 Y:v13 Z:v23];
  v27 = [objc_opt_class() kernelFB3];
  [(CIImage *)self->_inputImage extent];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v73[0] = v4;
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_inputBoost];
  v73[1] = v36;
  v73[2] = v24;
  v73[3] = v25;
  v73[4] = v26;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:5];
  v38 = [v27 applyWithExtent:v37 arguments:{v29, v31, v33, v35}];

  v39 = [v38 imageByPremultiplyingAlpha];

  return v39;
}

- (id)outputImageFB0
{
  v37 = *MEMORY[0x1E69E9840];
  inputImage = self->_inputImage;
  if (!inputImage)
  {
    v19 = NUAssertLogger_13971();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputImage cannot be nil"];
      *buf = 138543362;
      v34 = v20;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v23 = NUAssertLogger_13971();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v27 = dispatch_get_specific(*v21);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        v30 = [v28 callStackSymbols];
        v31 = [v30 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v27;
        v35 = 2114;
        v36 = v31;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v26;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v4 = [(CIImage *)inputImage imageByUnpremultiplyingAlpha];
  v5 = [objc_opt_class() kernelFB0];
  [(CIImage *)self->_inputImage extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:{self->_inputBoost, v4}];
  v32[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v16 = [v5 applyWithExtent:v15 arguments:{v7, v9, v11, v13}];

  v17 = [v16 imageByPremultiplyingAlpha];

  return v17;
}

- (id)outputImage
{
  if ([(NSString *)self->_inputVersion isEqualToString:@"FB3"])
  {
    [(PIFakeBoost *)self outputImageFB3];
  }

  else
  {
    [(PIFakeBoost *)self outputImageFB0];
  }
  v3 = ;

  return v3;
}

@end