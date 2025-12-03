@interface PIParallaxStyleFilterDefinition
- (BOOL)isEqualToParallaxStyleDefinition:(id)definition;
- (BOOL)isEqualToParallaxStyleFilterDefinition:(id)definition;
- (PIParallaxStyleFilterDefinition)init;
- (PIParallaxStyleFilterDefinition)initWithFilterName:(id)name parameters:(id)parameters;
- (id)description;
- (id)evaluateWithContext:(id)context error:(id *)error;
@end

@implementation PIParallaxStyleFilterDefinition

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  filterName = [(PIParallaxStyleFilterDefinition *)self filterName];
  parameters = [(PIParallaxStyleFilterDefinition *)self parameters];
  v7 = [v3 stringWithFormat:@"<%@:%p filter:%@ parameters: %@>", v4, self, filterName, parameters];

  return v7;
}

- (id)evaluateWithContext:(id)context error:(id *)error
{
  v95 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
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
        callStackSymbols = [v78 callStackSymbols];
        v81 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v76 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v76;
      _os_log_error_impl(&dword_1C7694000, v68, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_54:

    _NUAssertFailHandler();
    __break(1u);
  }

  if (!error)
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
      callStackSymbols3 = [v83 callStackSymbols];
      v86 = [callStackSymbols3 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v82;
      *&buf[12] = 2114;
      *&buf[14] = v86;
      _os_log_error_impl(&dword_1C7694000, v68, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_54;
  }

  v7 = contextCopy;
  v8 = MEMORY[0x1E695F648];
  filterName = [(PIParallaxStyleFilterDefinition *)self filterName];
  v10 = [v8 filterWithName:filterName];

  if (!v10)
  {
    v17 = MEMORY[0x1E69B3A48];
    filterName2 = [(PIParallaxStyleFilterDefinition *)self filterName];
    *error = [v17 invalidError:@"Unknown filter" object:filterName2];

    v19 = 0;
    goto LABEL_30;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v92 = __Block_byref_object_copy__15325;
  v93 = __Block_byref_object_dispose__15326;
  v94 = 0;
  parameters = [(PIParallaxStyleFilterDefinition *)self parameters];
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __61__PIParallaxStyleFilterDefinition_evaluateWithContext_error___block_invoke;
  v87[3] = &unk_1E82AB3F8;
  v12 = v10;
  v88 = v12;
  v13 = v7;
  v89 = v13;
  v90 = buf;
  [parameters enumerateKeysAndObjectsUsingBlock:v87];

  if (*(*&buf[8] + 40))
  {
    v14 = MEMORY[0x1E69B3A48];
    parameters2 = [(PIParallaxStyleFilterDefinition *)self parameters];
    v16 = [v14 errorWithCode:1 reason:@"Failed to evaluate filter parameters" object:parameters2 underlyingError:*(*&buf[8] + 40)];
  }

  else
  {
    name = [v12 name];
    v21 = [name containsString:@"Local"];

    inputKeys = [v12 inputKeys];
    v23 = *MEMORY[0x1E695FAB0];
    v24 = [inputKeys containsObject:*MEMORY[0x1E695FAB0]];

    if (v24)
    {
      outputImage = [v13 outputImage];
      if (v21)
      {
        inputImage = [v13 inputImage];
        [inputImage extent];
        v27 = [outputImage imageByCroppingToRect:?];

        outputImage = v27;
      }

      [v12 setValue:outputImage forKey:v23];
    }

    inputKeys2 = [v12 inputKeys];
    v29 = *MEMORY[0x1E695FA48];
    v30 = [inputKeys2 containsObject:*MEMORY[0x1E695FA48]];

    if (v30)
    {
      inputImage2 = [v13 inputImage];
      [v12 setValue:inputImage2 forKey:v29];
    }

    inputKeys3 = [v12 inputKeys];
    v33 = *MEMORY[0x1E695FB28];
    v34 = [inputKeys3 containsObject:*MEMORY[0x1E695FB28]];

    if (v34)
    {
      guideImage = [v13 guideImage];
      [v12 setValue:guideImage forKey:v33];
    }

    inputKeys4 = [v12 inputKeys];
    v37 = *MEMORY[0x1E695FAA8];
    v38 = [inputKeys4 containsObject:*MEMORY[0x1E695FAA8]];

    if (v38)
    {
      v39 = MEMORY[0x1E695F688];
      inputImage3 = [v13 inputImage];
      [inputImage3 extent];
      v41 = [v39 vectorWithCGRect:?];
      [v12 setValue:v41 forKey:v37];
    }

    inputKeys5 = [v12 inputKeys];
    v43 = *MEMORY[0x1E695FAD0];
    v44 = [inputKeys5 containsObject:*MEMORY[0x1E695FAD0]];

    if (v44)
    {
      matteImage = [v13 matteImage];
      [v12 setValue:matteImage forKey:v43];
    }

    inputKeys6 = [v12 inputKeys];
    v47 = *MEMORY[0x1E695FAC8];
    v48 = [inputKeys6 containsObject:*MEMORY[0x1E695FAC8]];

    if (v48)
    {
      matteImage2 = [v13 matteImage];
      [v12 setValue:matteImage2 forKey:v47];
    }

    inputKeys7 = [v12 inputKeys];
    v51 = [inputKeys7 containsObject:@"inputLightMapImage"];

    if (v51)
    {
      lightMapImage = [v13 lightMapImage];
      [v12 setValue:lightMapImage forKey:@"inputLightMapImage"];
    }

    inputKeys8 = [v12 inputKeys];
    v54 = [inputKeys8 containsObject:@"inputTargetBackgroundImage"];

    if (v54)
    {
      backgroundImage = [v13 backgroundImage];
      [v12 setValue:backgroundImage forKey:@"inputTargetBackgroundImage"];
    }

    outputImage2 = [v12 outputImage];
    parameters2 = outputImage2;
    if (outputImage2)
    {
      [outputImage2 extent];
      if (!CGRectIsEmpty(v97))
      {
        if (v21)
        {
          cache = [v13 cache];
          if (cache)
          {
            name2 = [v12 name];
            v60 = [name2 isEqualToString:@"CILocalContrast"];

            if (v60)
            {
              cache2 = [v13 cache];
              v62 = [cache2 cachedImage:parameters2 forKey:@"LocalContrast"];

              parameters2 = v62;
            }
          }

          imageByClampingToExtent = [parameters2 imageByClampingToExtent];

          parameters2 = imageByClampingToExtent;
        }

        parameters2 = parameters2;
        v19 = parameters2;
        goto LABEL_29;
      }
    }

    v16 = [MEMORY[0x1E69B3A48] invalidError:@"filter produced invalid image" object:v12];
  }

  v19 = 0;
  *error = v16;
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

- (BOOL)isEqualToParallaxStyleFilterDefinition:(id)definition
{
  definitionCopy = definition;
  filterName = [(PIParallaxStyleFilterDefinition *)self filterName];
  filterName2 = [definitionCopy filterName];
  v7 = [filterName isEqualToString:filterName2];

  if (v7)
  {
    parameters = [(PIParallaxStyleFilterDefinition *)self parameters];
    parameters2 = [definitionCopy parameters];
    v10 = [parameters isEqualToDictionary:parameters2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqualToParallaxStyleDefinition:(id)definition
{
  definitionCopy = definition;
  type = [definitionCopy type];
  v6 = [type isEqualToString:@"filter"];

  if (v6)
  {
    v7 = [(PIParallaxStyleFilterDefinition *)self isEqualToParallaxStyleFilterDefinition:definitionCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PIParallaxStyleFilterDefinition)initWithFilterName:(id)name parameters:(id)parameters
{
  v13.receiver = self;
  v13.super_class = PIParallaxStyleFilterDefinition;
  parametersCopy = parameters;
  nameCopy = name;
  v7 = [(PIParallaxStyleFilterDefinition *)&v13 init];
  v8 = [nameCopy copy];

  filterName = v7->_filterName;
  v7->_filterName = v8;

  v10 = [parametersCopy copy];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_15274);
  }
}

@end