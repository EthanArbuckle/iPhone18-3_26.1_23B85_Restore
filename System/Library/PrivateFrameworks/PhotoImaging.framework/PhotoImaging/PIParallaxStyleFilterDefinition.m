@interface PIParallaxStyleFilterDefinition
- (BOOL)isEqualToParallaxStyleDefinition:(id)a3;
- (BOOL)isEqualToParallaxStyleFilterDefinition:(id)a3;
- (PIParallaxStyleFilterDefinition)init;
- (PIParallaxStyleFilterDefinition)initWithFilterName:(id)a3 parameters:(id)a4;
- (id)description;
- (id)evaluateWithContext:(id)a3 error:(id *)a4;
@end

@implementation PIParallaxStyleFilterDefinition

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PIParallaxStyleFilterDefinition *)self filterName];
  v6 = [(PIParallaxStyleFilterDefinition *)self parameters];
  v7 = [v3 stringWithFormat:@"<%@:%p filter:%@ parameters: %@>", v4, self, v5, v6];

  return v7;
}

- (id)evaluateWithContext:(id)a3 error:(id *)a4
{
  v95 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v64 = NUAssertLogger_15312();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "context != nil"];
      *buf = 138543362;
      *&buf[4] = v65;
      _os_log_error_impl(&dword_1C7694000, v64, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v66 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v68 = NUAssertLogger_15312();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v69)
      {
        v77 = dispatch_get_specific(*v66);
        v78 = MEMORY[0x1E696AF00];
        v79 = v77;
        v80 = [v78 callStackSymbols];
        v81 = [v80 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v77;
        *&buf[12] = 2114;
        *&buf[14] = v81;
        _os_log_error_impl(&dword_1C7694000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v69)
    {
LABEL_48:
      v75 = [MEMORY[0x1E696AF00] callStackSymbols];
      v76 = [v75 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v76;
      _os_log_error_impl(&dword_1C7694000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_54:

    _NUAssertFailHandler();
    __break(1u);
  }

  if (!a4)
  {
    v70 = NUAssertLogger_15312();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v71;
      _os_log_error_impl(&dword_1C7694000, v70, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v72 = MEMORY[0x1E69B38E8];
    v73 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v68 = NUAssertLogger_15312();
    v74 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
    if (!v73)
    {
      if (!v74)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

    if (v74)
    {
      v82 = dispatch_get_specific(*v72);
      v83 = MEMORY[0x1E696AF00];
      v84 = v82;
      v85 = [v83 callStackSymbols];
      v86 = [v85 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v82;
      *&buf[12] = 2114;
      *&buf[14] = v86;
      _os_log_error_impl(&dword_1C7694000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  v7 = v6;
  v8 = MEMORY[0x1E695F648];
  v9 = [(PIParallaxStyleFilterDefinition *)self filterName];
  v10 = [v8 filterWithName:v9];

  if (!v10)
  {
    v17 = MEMORY[0x1E69B3A48];
    v18 = [(PIParallaxStyleFilterDefinition *)self filterName];
    *a4 = [v17 invalidError:@"Unknown filter" object:v18];

    v19 = 0;
    goto LABEL_30;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v92 = __Block_byref_object_copy__15325;
  v93 = __Block_byref_object_dispose__15326;
  v94 = 0;
  v11 = [(PIParallaxStyleFilterDefinition *)self parameters];
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __61__PIParallaxStyleFilterDefinition_evaluateWithContext_error___block_invoke;
  v87[3] = &unk_1E82AB3F8;
  v12 = v10;
  v88 = v12;
  v13 = v7;
  v89 = v13;
  v90 = buf;
  [v11 enumerateKeysAndObjectsUsingBlock:v87];

  if (*(*&buf[8] + 40))
  {
    v14 = MEMORY[0x1E69B3A48];
    v15 = [(PIParallaxStyleFilterDefinition *)self parameters];
    v16 = [v14 errorWithCode:1 reason:@"Failed to evaluate filter parameters" object:v15 underlyingError:*(*&buf[8] + 40)];
  }

  else
  {
    v20 = [v12 name];
    v21 = [v20 containsString:@"Local"];

    v22 = [v12 inputKeys];
    v23 = *MEMORY[0x1E695FAB0];
    v24 = [v22 containsObject:*MEMORY[0x1E695FAB0]];

    if (v24)
    {
      v25 = [v13 outputImage];
      if (v21)
      {
        v26 = [v13 inputImage];
        [v26 extent];
        v27 = [v25 imageByCroppingToRect:?];

        v25 = v27;
      }

      [v12 setValue:v25 forKey:v23];
    }

    v28 = [v12 inputKeys];
    v29 = *MEMORY[0x1E695FA48];
    v30 = [v28 containsObject:*MEMORY[0x1E695FA48]];

    if (v30)
    {
      v31 = [v13 inputImage];
      [v12 setValue:v31 forKey:v29];
    }

    v32 = [v12 inputKeys];
    v33 = *MEMORY[0x1E695FB28];
    v34 = [v32 containsObject:*MEMORY[0x1E695FB28]];

    if (v34)
    {
      v35 = [v13 guideImage];
      [v12 setValue:v35 forKey:v33];
    }

    v36 = [v12 inputKeys];
    v37 = *MEMORY[0x1E695FAA8];
    v38 = [v36 containsObject:*MEMORY[0x1E695FAA8]];

    if (v38)
    {
      v39 = MEMORY[0x1E695F688];
      v40 = [v13 inputImage];
      [v40 extent];
      v41 = [v39 vectorWithCGRect:?];
      [v12 setValue:v41 forKey:v37];
    }

    v42 = [v12 inputKeys];
    v43 = *MEMORY[0x1E695FAD0];
    v44 = [v42 containsObject:*MEMORY[0x1E695FAD0]];

    if (v44)
    {
      v45 = [v13 matteImage];
      [v12 setValue:v45 forKey:v43];
    }

    v46 = [v12 inputKeys];
    v47 = *MEMORY[0x1E695FAC8];
    v48 = [v46 containsObject:*MEMORY[0x1E695FAC8]];

    if (v48)
    {
      v49 = [v13 matteImage];
      [v12 setValue:v49 forKey:v47];
    }

    v50 = [v12 inputKeys];
    v51 = [v50 containsObject:@"inputLightMapImage"];

    if (v51)
    {
      v52 = [v13 lightMapImage];
      [v12 setValue:v52 forKey:@"inputLightMapImage"];
    }

    v53 = [v12 inputKeys];
    v54 = [v53 containsObject:@"inputTargetBackgroundImage"];

    if (v54)
    {
      v55 = [v13 backgroundImage];
      [v12 setValue:v55 forKey:@"inputTargetBackgroundImage"];
    }

    v56 = [v12 outputImage];
    v15 = v56;
    if (v56)
    {
      [v56 extent];
      if (!CGRectIsEmpty(v97))
      {
        if (v21)
        {
          v58 = [v13 cache];
          if (v58)
          {
            v59 = [v12 name];
            v60 = [v59 isEqualToString:@"CILocalContrast"];

            if (v60)
            {
              v61 = [v13 cache];
              v62 = [v61 cachedImage:v15 forKey:@"LocalContrast"];

              v15 = v62;
            }
          }

          v63 = [v15 imageByClampingToExtent];

          v15 = v63;
        }

        v15 = v15;
        v19 = v15;
        goto LABEL_29;
      }
    }

    v16 = [MEMORY[0x1E69B3A48] invalidError:@"filter produced invalid image" object:v12];
  }

  v19 = 0;
  *a4 = v16;
LABEL_29:

  _Block_object_dispose(buf, 8);
LABEL_30:

  return v19;
}

void __61__PIParallaxStyleFilterDefinition_evaluateWithContext_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) inputKeys];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 48) + 8);
    obj = 0;
    v13 = [v8 evaluateWithContext:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if (v13)
    {
      [*(a1 + 32) setValue:v13 forKey:v7];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E69B3A48] unsupportedError:@"Unknown filter parameter" object:v7];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *a4 = 1;
  }
}

- (BOOL)isEqualToParallaxStyleFilterDefinition:(id)a3
{
  v4 = a3;
  v5 = [(PIParallaxStyleFilterDefinition *)self filterName];
  v6 = [v4 filterName];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(PIParallaxStyleFilterDefinition *)self parameters];
    v9 = [v4 parameters];
    v10 = [v8 isEqualToDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqualToParallaxStyleDefinition:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"filter"];

  if (v6)
  {
    v7 = [(PIParallaxStyleFilterDefinition *)self isEqualToParallaxStyleFilterDefinition:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PIParallaxStyleFilterDefinition)initWithFilterName:(id)a3 parameters:(id)a4
{
  v13.receiver = self;
  v13.super_class = PIParallaxStyleFilterDefinition;
  v5 = a4;
  v6 = a3;
  v7 = [(PIParallaxStyleFilterDefinition *)&v13 init];
  v8 = [v6 copy];

  filterName = v7->_filterName;
  v7->_filterName = v8;

  v10 = [v5 copy];
  parameters = v7->_parameters;
  v7->_parameters = v10;

  return v7;
}

- (PIParallaxStyleFilterDefinition)init
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
  }
}

@end