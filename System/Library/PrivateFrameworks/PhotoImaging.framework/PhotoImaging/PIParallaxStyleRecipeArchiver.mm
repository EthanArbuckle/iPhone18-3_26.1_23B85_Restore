@interface PIParallaxStyleRecipeArchiver
+ (BOOL)writeRecipe:(id)recipe toURL:(id)l error:(id *)error;
+ (id)_deserializeFilterDefinition:(id)definition version:(unint64_t)version error:(id *)error;
+ (id)_deserializeFilterDefinitions:(id)definitions version:(unint64_t)version error:(id *)error;
+ (id)_deserializeParameter:(id)parameter version:(unint64_t)version error:(id *)error;
+ (id)_deserializeParameters:(id)parameters version:(unint64_t)version error:(id *)error;
+ (id)_serializeDefinition:(id)definition;
+ (id)_serializeFilters:(id)filters;
+ (id)_serializeParameter:(id)parameter;
+ (id)_serializeParameters:(id)parameters;
+ (id)deserializeRecipe:(id)recipe error:(id *)error;
+ (id)serializeRecipe:(id)recipe;
+ (id)unarchivedStyleRecipeWithURL:(id)l error:(id *)error;
@end

@implementation PIParallaxStyleRecipeArchiver

+ (id)_deserializeFilterDefinition:(id)definition version:(unint64_t)version error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  if (!definitionCopy)
  {
    v33 = NUAssertLogger_11562();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v58 = v34;
      _os_log_error_impl(&dword_1C7694000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v37 = NUAssertLogger_11562();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v38)
      {
        v46 = dispatch_get_specific(*callStackSymbols);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        callStackSymbols = [v47 callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v58 = v46;
        v59 = 2114;
        v60 = v49;
        _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v58 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v43 = _NUAssertFailHandler();
    goto LABEL_64;
  }

  if (!error)
  {
    v40 = NUAssertLogger_11562();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v58 = v41;
      _os_log_error_impl(&dword_1C7694000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v42 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v37 = NUAssertLogger_11562();
    v43 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (!v42)
    {
      if (v43)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v45 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v58 = v45;
        _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_66;
    }

LABEL_64:
    if (v43)
    {
      v50 = dispatch_get_specific(*callStackSymbols);
      v51 = MEMORY[0x1E696AF00];
      v52 = v50;
      callStackSymbols4 = [v51 callStackSymbols];
      v54 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v58 = v50;
      v59 = 2114;
      v60 = v54;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_66:

    _NUAssertFailHandler();
  }

  v9 = definitionCopy;
  if (version)
  {
    v10 = [definitionCopy objectForKeyedSubscript:@"type"];
    if (!v10)
    {
      [MEMORY[0x1E69B3A48] missingError:@"Missing definition type" object:v9];
      *error = v16 = 0;
      goto LABEL_43;
    }

    v11 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *error = [MEMORY[0x1E69B3A48] invalidError:@"Invalid filter definition type" object:v11];

      v16 = 0;
      goto LABEL_43;
    }

    if ([(__CFString *)v11 isEqualToString:@"filter"])
    {
      v12 = @"filter";
LABEL_10:
      v14 = [v9 objectForKeyedSubscript:v12];
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v9 objectForKeyedSubscript:@"parameters"];
          if (v15)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = 0;
              v16 = [self _deserializeParameters:v15 version:version error:&v56];
              v17 = v56;
              if (v16)
              {
                v18 = [[PIParallaxStyleFilterDefinition alloc] initWithFilterName:v14 parameters:v16];
LABEL_23:
                v19 = v18;
                goto LABEL_49;
              }

              v31 = MEMORY[0x1E69B3A48];
              v32 = @"Filed to deserialize filter parameters";
              goto LABEL_48;
            }

            v27 = MEMORY[0x1E69B3A48];
            v28 = @"Invalid filter parameters";
LABEL_39:
            v29 = [v27 invalidError:v28 object:v15];
            goto LABEL_40;
          }

          v25 = MEMORY[0x1E69B3A48];
          v26 = @"Missing filter parameters";
          goto LABEL_37;
        }

        v22 = MEMORY[0x1E69B3A48];
        v23 = @"Invalid filter name";
LABEL_32:
        v24 = [v22 invalidError:v23 object:v14];
        goto LABEL_33;
      }

      v20 = MEMORY[0x1E69B3A48];
      v21 = @"Missing filter name";
      goto LABEL_30;
    }
  }

  else
  {
    v11 = @"filter";
    v13 = @"filter";
    if ([@"filter" isEqualToString:@"filter"])
    {
      v12 = @"filterName";
      goto LABEL_10;
    }
  }

  if ([(__CFString *)v11 isEqualToString:@"stack"])
  {
    v14 = [v9 objectForKeyedSubscript:@"name"];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v9 objectForKeyedSubscript:@"filters"];
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v55 = 0;
            v16 = [self _deserializeFilterDefinitions:v15 version:version error:&v55];
            v17 = v55;
            if (v16)
            {
              v18 = [[PIParallaxStyleFilterStackDefinition alloc] initWithStackName:v14 filters:v16];
              goto LABEL_23;
            }

            v31 = MEMORY[0x1E69B3A48];
            v32 = @"Failed to deserialize stack filters";
LABEL_48:
            [v31 errorWithCode:1 reason:v32 object:v15 underlyingError:v17];
            *error = v19 = 0;
LABEL_49:

            if (v16)
            {
              v19 = v19;
              v16 = v19;
            }

            goto LABEL_42;
          }

          v27 = MEMORY[0x1E69B3A48];
          v28 = @"Invalid stack filters";
          goto LABEL_39;
        }

        v25 = MEMORY[0x1E69B3A48];
        v26 = @"Missing stack filters";
LABEL_37:
        v29 = [v25 missingError:v26 object:v9];
LABEL_40:
        *error = v29;

        goto LABEL_41;
      }

      v22 = MEMORY[0x1E69B3A48];
      v23 = @"Invalid stack name";
      goto LABEL_32;
    }

    v20 = MEMORY[0x1E69B3A48];
    v21 = @"Missing stack name";
LABEL_30:
    v24 = [v20 missingError:v21 object:v9];
LABEL_33:
    *error = v24;
LABEL_41:

    v19 = 0;
    v16 = 0;
    goto LABEL_42;
  }

  [MEMORY[0x1E69B3A48] invalidError:@"Unrecognized definition type" object:v11];
  v19 = 0;
  *error = v16 = 0;
LABEL_42:

LABEL_43:

  return v16;
}

+ (id)_deserializeFilterDefinitions:(id)definitions version:(unint64_t)version error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  definitionsCopy = definitions;
  if (!definitionsCopy)
  {
    v15 = NUAssertLogger_11562();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "serializedFilters != nil"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_11562();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v28 = dispatch_get_specific(*v17);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v32 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v32;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
LABEL_18:
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v27 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_24:

    _NUAssertFailHandler();
    __break(1u);
  }

  if (!error)
  {
    v21 = NUAssertLogger_11562();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_11562();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (!v25)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    if (v25)
    {
      v33 = dispatch_get_specific(*v23);
      v34 = MEMORY[0x1E696AF00];
      v35 = v33;
      callStackSymbols3 = [v34 callStackSymbols];
      v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      *&buf[4] = v33;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v9 = definitionsCopy;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v44 = __Block_byref_object_copy__11641;
  v45 = __Block_byref_object_dispose__11642;
  v46 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __77__PIParallaxStyleRecipeArchiver__deserializeFilterDefinitions_version_error___block_invoke;
  v38[3] = &unk_1E82AACB8;
  v40 = buf;
  selfCopy = self;
  versionCopy = version;
  v11 = v10;
  v39 = v11;
  [v9 enumerateObjectsUsingBlock:v38];
  v12 = *(*&buf[8] + 40);
  if (v12)
  {
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = v11;
  }

  _Block_object_dispose(buf, 8);

  return v13;
}

void __77__PIParallaxStyleRecipeArchiver__deserializeFilterDefinitions_version_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 40) + 8);
    obj = 0;
    v10 = [v7 _deserializeFilterDefinition:v6 version:v8 error:&obj];

    objc_storeStrong((v9 + 40), obj);
    if (v10)
    {
      [*(a1 + 32) addObject:v10];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid definition dictionary" object:v6];

    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a4 = 1;
  }
}

+ (id)_serializeDefinition:(id)definition
{
  v41 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  type = [definitionCopy type];
  [v5 setObject:type forKeyedSubscript:@"type"];

  type2 = [definitionCopy type];
  v8 = [type2 isEqualToString:@"filter"];

  if (v8)
  {
    v9 = definitionCopy;
    filterName = [v9 filterName];
    [v5 setObject:filterName forKeyedSubscript:@"filter"];

    parameters = [v9 parameters];

    v12 = [self _serializeParameters:parameters];
    v13 = @"parameters";
LABEL_5:
    [v5 setObject:v12 forKeyedSubscript:v13];

    return v5;
  }

  type3 = [definitionCopy type];
  v15 = [type3 isEqualToString:@"stack"];

  if (v15)
  {
    v16 = definitionCopy;
    stackName = [v16 stackName];
    [v5 setObject:stackName forKeyedSubscript:@"name"];

    parameters = [v16 filters];

    v12 = [self _serializeFilters:parameters];
    v13 = @"filters";
    goto LABEL_5;
  }

  v19 = NUAssertLogger_11562();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = MEMORY[0x1E696AEC0];
    type4 = [definitionCopy type];
    v22 = [v20 stringWithFormat:@"Unknown definition type: %@", type4];
    *buf = 138543362;
    v38 = v22;
    _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v23 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v25 = NUAssertLogger_11562();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v26)
    {
      v29 = dispatch_get_specific(*v23);
      v30 = MEMORY[0x1E696AF00];
      v31 = v29;
      callStackSymbols = [v30 callStackSymbols];
      v33 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v38 = v29;
      v39 = 2114;
      v40 = v33;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v26)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v38 = v28;
    _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  [definitionCopy type];
  objc_claimAutoreleasedReturnValue();
  v34 = _NUAssertFailHandler();
  return [(PIParallaxStyleRecipeArchiver *)v34 _serializeFilters:v35, v36];
}

+ (id)_serializeFilters:(id)filters
{
  v4 = MEMORY[0x1E695DF70];
  filtersCopy = filters;
  v6 = objc_alloc_init(v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PIParallaxStyleRecipeArchiver__serializeFilters___block_invoke;
  v9[3] = &unk_1E82AAC90;
  selfCopy = self;
  v7 = v6;
  v10 = v7;
  [filtersCopy enumerateObjectsUsingBlock:v9];

  return v7;
}

void __51__PIParallaxStyleRecipeArchiver__serializeFilters___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _serializeDefinition:a2];
  [*(a1 + 32) addObject:v3];
}

+ (id)_deserializeParameter:(id)parameter version:(unint64_t)version error:(id *)error
{
  v103 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  if (!parameterCopy)
  {
    v59 = NUAssertLogger_11562();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v100 = v60;
      _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v63 = NUAssertLogger_11562();
    v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v64)
      {
        v72 = dispatch_get_specific(*callStackSymbols);
        v73 = MEMORY[0x1E696AF00];
        v74 = v72;
        callStackSymbols = [v73 callStackSymbols];
        v75 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v100 = v72;
        v101 = 2114;
        v102 = v75;
        _os_log_error_impl(&dword_1C7694000, v63, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v64)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v100 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v63, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v69 = _NUAssertFailHandler();
    goto LABEL_118;
  }

  if (!error)
  {
    v66 = NUAssertLogger_11562();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v100 = v67;
      _os_log_error_impl(&dword_1C7694000, v66, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v68 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v63 = NUAssertLogger_11562();
    v69 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
    if (!v68)
    {
      if (v69)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v71 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v100 = v71;
        _os_log_error_impl(&dword_1C7694000, v63, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_120;
    }

LABEL_118:
    if (v69)
    {
      v76 = dispatch_get_specific(*callStackSymbols);
      v77 = MEMORY[0x1E696AF00];
      v78 = v76;
      callStackSymbols4 = [v77 callStackSymbols];
      v80 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v100 = v76;
      v101 = 2114;
      v102 = v80;
      _os_log_error_impl(&dword_1C7694000, v63, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_120:

    _NUAssertFailHandler();
  }

  v8 = parameterCopy;
  v9 = [parameterCopy objectForKeyedSubscript:@"type"];
  if (!v9)
  {
    v17 = [MEMORY[0x1E69B3A48] missingError:@"Missing parameter type" object:v8];
LABEL_20:
    v16 = 0;
    *error = v17;
    goto LABEL_63;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x1E69B3A48];
    v19 = @"Invalid parameter type";
LABEL_19:
    v17 = [v18 invalidError:v19 object:v9];
    goto LABEL_20;
  }

  if ([v9 isEqualToString:@"number"])
  {
    v10 = [v8 objectForKeyedSubscript:@"value"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = @"none";
        v12 = @"none";
        if (version < 3)
        {
LABEL_14:
          v16 = [[PIParallaxStyleNumberParameter alloc] initWithNumber:v10 unit:v11];
LABEL_15:

LABEL_16:
          goto LABEL_63;
        }

        v13 = [v8 objectForKeyedSubscript:@"unit"];
        if (!v13)
        {
LABEL_13:

          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v97[0] = @"none";
          v97[1] = @"pixels";
          v98[0] = @"none";
          v98[1] = @"pixels";
          v97[2] = @"degrees";
          v97[3] = @"count";
          v98[2] = @"degrees";
          v98[3] = @"count";
          v97[4] = @"logic";
          v97[5] = &stru_1F46EAF88;
          v98[4] = @"logic";
          v98[5] = @"none";
          v97[6] = @"px";
          v97[7] = @"deg";
          v98[6] = @"pixels";
          v98[7] = @"degrees";
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:8];
          v15 = [(__CFString *)v14 objectForKey:v13];

          if (v15)
          {

            v11 = v15;
            goto LABEL_13;
          }

          v52 = [MEMORY[0x1E69B3A48] unknownError:@"Unknown unit value" object:v13];
        }

        else
        {
          v52 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid unit value" object:v13];
          v14 = @"none";
        }

        *error = v52;

LABEL_102:
        goto LABEL_61;
      }

      v39 = MEMORY[0x1E69B3A48];
      v40 = @"Expected a number value";
      goto LABEL_59;
    }

    v37 = MEMORY[0x1E69B3A48];
    v38 = @"Missing number value";
LABEL_57:
    v42 = [v37 missingError:v38 object:v8];
LABEL_60:
    *error = v42;
LABEL_61:

    goto LABEL_62;
  }

  if ([v9 isEqualToString:@"color"])
  {
    v10 = [v8 objectForKeyedSubscript:@"value"];
    if (!v10)
    {
      v37 = MEMORY[0x1E69B3A48];
      v38 = @"Missing color values";
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v10 count];
      if (version < 5)
      {
        if (v20 == 3)
        {
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v13 = v10;
          v45 = [v13 countByEnumeratingWithState:&v86 objects:v95 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v87;
            while (2)
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v87 != v47)
                {
                  objc_enumerationMutation(v13);
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v53 = MEMORY[0x1E69B3A48];
                  v54 = @"Expected 3 numbers";
LABEL_97:
                  *error = [v53 mismatchError:v54 object:v8];
                  goto LABEL_102;
                }
              }

              v46 = [v13 countByEnumeratingWithState:&v86 objects:v95 count:16];
              if (v46)
              {
                continue;
              }

              break;
            }
          }

          v49 = [PIParallaxStyleColorParameter alloc];
          v26 = [v13 objectAtIndexedSubscript:0];
          v27 = [v13 objectAtIndexedSubscript:1];
          v28 = [v13 objectAtIndexedSubscript:2];
          v16 = [(PIParallaxStyleColorParameter *)v49 initWithRed:v26 green:v27 blue:v28 alpha:&unk_1F471F6B0];
          goto LABEL_82;
        }

        v39 = MEMORY[0x1E69B3A48];
        v40 = @"Expected 3 color values";
      }

      else
      {
        if (v20 == 4)
        {
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v13 = v10;
          v21 = [v13 countByEnumeratingWithState:&v90 objects:v96 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v91;
            while (2)
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v91 != v23)
                {
                  objc_enumerationMutation(v13);
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v53 = MEMORY[0x1E69B3A48];
                  v54 = @"Expected 4 numbers";
                  goto LABEL_97;
                }
              }

              v22 = [v13 countByEnumeratingWithState:&v90 objects:v96 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v25 = [PIParallaxStyleColorParameter alloc];
          v26 = [v13 objectAtIndexedSubscript:0];
          v27 = [v13 objectAtIndexedSubscript:1];
          v28 = [v13 objectAtIndexedSubscript:2];
          v29 = [v13 objectAtIndexedSubscript:3];
          v16 = [(PIParallaxStyleColorParameter *)v25 initWithRed:v26 green:v27 blue:v28 alpha:v29];

LABEL_82:
          goto LABEL_16;
        }

        v39 = MEMORY[0x1E69B3A48];
        v40 = @"Expected 4 color values";
      }
    }

    else
    {
      v39 = MEMORY[0x1E69B3A48];
      v40 = @"Expected color values";
    }

LABEL_59:
    v42 = [v39 mismatchError:v40 object:v8];
    goto LABEL_60;
  }

  if (![v9 isEqualToString:@"point"])
  {
    if ([v9 isEqualToString:@"mode"])
    {
      v10 = [v8 objectForKeyedSubscript:@"value"];
      if (!v10)
      {
        v37 = MEMORY[0x1E69B3A48];
        v38 = @"Missing mode value";
        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v39 = MEMORY[0x1E69B3A48];
        v40 = @"Expected mode value";
        goto LABEL_59;
      }

      v41 = [[PIParallaxStyleModeParameter alloc] initWithMode:v10];
LABEL_70:
      v16 = v41;
      goto LABEL_16;
    }

    if ([v9 isEqualToString:@"binding"])
    {
      v10 = [v8 objectForKeyedSubscript:@"value"];
      if (!v10)
      {
        v37 = MEMORY[0x1E69B3A48];
        v38 = @"Missing binding value";
        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v39 = MEMORY[0x1E69B3A48];
        v40 = @"Expected binding value";
        goto LABEL_59;
      }

      v41 = [[PIParallaxStyleBindingParameter alloc] initWithVariableName:v10];
      goto LABEL_70;
    }

    v18 = MEMORY[0x1E69B3A48];
    v19 = @"Unrecognized parameter type";
    goto LABEL_19;
  }

  v30 = [v8 objectForKeyedSubscript:@"value"];
  if (!v30)
  {
    v44 = [MEMORY[0x1E69B3A48] missingError:@"Missing point values" object:v8];
    goto LABEL_90;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v50 = MEMORY[0x1E69B3A48];
    v51 = @"Expected point values";
LABEL_89:
    v44 = [v50 mismatchError:v51 object:v8];
LABEL_90:
    *error = v44;
LABEL_91:

    goto LABEL_62;
  }

  if ([v30 count] != 2)
  {
    v50 = MEMORY[0x1E69B3A48];
    v51 = @"Expected 2 point values";
    goto LABEL_89;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v30;
  v31 = [obj countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v83;
    while (2)
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v83 != v33)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          *error = [MEMORY[0x1E69B3A48] mismatchError:@"Expected 2 numbers" object:v8];

          goto LABEL_91;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v82 objects:v94 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v11 = [v8 objectForKeyedSubscript:@"unit"];
  if (!v11)
  {
    v36 = @"none";
    goto LABEL_104;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v36 = v11;
  if (isKindOfClass)
  {
LABEL_104:
    v55 = v36;
    v56 = [PIParallaxStylePointParameter alloc];
    v10 = obj;
    v57 = [obj objectAtIndexedSubscript:0];
    v58 = [obj objectAtIndexedSubscript:1];
    v16 = [(PIParallaxStylePointParameter *)v56 initWithX:v57 Y:v58 unit:v55];

    goto LABEL_15;
  }

  *error = [MEMORY[0x1E69B3A48] mismatchError:@"Invalid unit value" object:v11];

LABEL_62:
  v16 = 0;
LABEL_63:

  return v16;
}

+ (id)_deserializeParameters:(id)parameters version:(unint64_t)version error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  if (!error)
  {
    v15 = NUAssertLogger_11562();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_11562();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(*v17);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    __break(1u);
  }

  v9 = parametersCopy;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__11641;
  v35 = __Block_byref_object_dispose__11642;
  v36 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __70__PIParallaxStyleRecipeArchiver__deserializeParameters_version_error___block_invoke;
  v28[3] = &unk_1E82AAC68;
  v30 = buf;
  selfCopy = self;
  versionCopy = version;
  v11 = v10;
  v29 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v28];
  v12 = *(*&buf[8] + 40);
  if (v12)
  {
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = v11;
  }

  _Block_object_dispose(buf, 8);

  return v13;
}

void __70__PIParallaxStyleRecipeArchiver__deserializeParameters_version_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x1E69B3A48];
    v14 = @"Invalid parameter name";
    v15 = v7;
LABEL_7:
    v16 = [v13 invalidError:v14 object:v15];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    *a4 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x1E69B3A48];
    v14 = @"Invalid parameter dictionary";
    v15 = v8;
    goto LABEL_7;
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(*(a1 + 40) + 8);
  obj = 0;
  v12 = [v9 _deserializeParameter:v8 version:v10 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v7];
  }

  else
  {
    *a4 = 1;
  }

LABEL_10:
}

+ (id)_serializeParameter:(id)parameter
{
  v53[4] = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  type = [parameterCopy type];
  [v4 setObject:type forKeyedSubscript:@"type"];

  type2 = [parameterCopy type];
  v7 = [type2 isEqualToString:@"number"];

  if (v7)
  {
    redValue = parameterCopy;
    numberValue = [redValue numberValue];
    [v4 setObject:numberValue forKeyedSubscript:@"value"];
    goto LABEL_3;
  }

  type3 = [parameterCopy type];
  v14 = [type3 isEqualToString:@"color"];

  if (v14)
  {
    v15 = parameterCopy;
    redValue = [v15 redValue];
    v53[0] = redValue;
    greenValue = [v15 greenValue];
    v53[1] = greenValue;
    blueValue = [v15 blueValue];
    v53[2] = blueValue;
    alphaValue = [v15 alphaValue];

    v53[3] = alphaValue;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
    [v4 setObject:v19 forKeyedSubscript:@"value"];

LABEL_14:

    return v4;
  }

  type4 = [parameterCopy type];
  v21 = [type4 isEqualToString:@"point"];

  if (v21)
  {
    redValue = parameterCopy;
    numberValue = [redValue xValue];
    v52[0] = numberValue;
    yValue = [redValue yValue];
    v52[1] = yValue;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    [v4 setObject:v23 forKeyedSubscript:@"value"];

LABEL_3:
    unit = [redValue unit];
    v11 = [unit isEqual:@"none"];

    if ((v11 & 1) == 0)
    {
      unit2 = [redValue unit];
      [v4 setObject:unit2 forKeyedSubscript:@"unit"];
    }

    goto LABEL_14;
  }

  type5 = [parameterCopy type];
  v25 = [type5 isEqualToString:@"mode"];

  if (v25)
  {
    modeValue = [parameterCopy modeValue];
LABEL_13:
    redValue = modeValue;
    [v4 setObject:modeValue forKeyedSubscript:@"value"];
    goto LABEL_14;
  }

  type6 = [parameterCopy type];
  v28 = [type6 isEqualToString:@"binding"];

  if (v28)
  {
    modeValue = [parameterCopy variableName];
    goto LABEL_13;
  }

  v30 = NUAssertLogger_11562();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = MEMORY[0x1E696AEC0];
    type7 = [parameterCopy type];
    v33 = [v31 stringWithFormat:@"Unknown parameter type: %@", type7];
    *buf = 138543362;
    v49 = v33;
    _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v34 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v36 = NUAssertLogger_11562();
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v37)
    {
      v40 = dispatch_get_specific(*v34);
      v41 = MEMORY[0x1E696AF00];
      v42 = v40;
      callStackSymbols = [v41 callStackSymbols];
      v44 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v49 = v40;
      v50 = 2114;
      v51 = v44;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v37)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v39 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v49 = v39;
    _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  [parameterCopy type];
  objc_claimAutoreleasedReturnValue();
  v45 = _NUAssertFailHandler();
  return [(PIParallaxStyleRecipeArchiver *)v45 _serializeParameters:v46, v47];
}

+ (id)_serializeParameters:(id)parameters
{
  v4 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  v6 = objc_alloc_init(v4);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __54__PIParallaxStyleRecipeArchiver__serializeParameters___block_invoke;
  v13 = &unk_1E82AAC40;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [parametersCopy enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __54__PIParallaxStyleRecipeArchiver__serializeParameters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 _serializeParameter:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

+ (id)deserializeRecipe:(id)recipe error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  if (!error)
  {
    v28 = NUAssertLogger_11562();
    v18 = "error != NULL";
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v48 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_11562();
    v30 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v36 = MEMORY[0x1E696AF00];
        error = specific;
        callStackSymbols = [v36 callStackSymbols];
        v4 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = specific;
        v49 = 2114;
        v50 = v4;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v33 = _NUAssertFailHandler();
    goto LABEL_64;
  }

  v10 = recipeCopy;
  if (!recipeCopy)
  {
    v31 = NUAssertLogger_11562();
    v18 = "dictionary != nil";
    error = &qword_1C7845000;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v48 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_11562();
    v33 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (v33)
      {
        specific = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [specific componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v48 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_66:

      v38 = v18;
      _NUAssertFailHandler();
LABEL_67:
      v34 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize matte filters" object:v4 underlyingError:{self, v38}];
      selfCopy2 = self;
      goto LABEL_50;
    }

LABEL_64:
    if (v33)
    {
      specific = dispatch_get_specific(*callStackSymbols);
      v37 = MEMORY[0x1E696AF00];
      error = specific;
      callStackSymbols = [v37 callStackSymbols];
      v4 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v48 = specific;
      v49 = 2114;
      v50 = v4;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_66;
  }

  specific = [recipeCopy objectForKeyedSubscript:@"version"];
  if (specific)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid version info" object:specific];
      goto LABEL_22;
    }
  }

  unsignedIntegerValue = [specific unsignedIntegerValue];
  if (unsignedIntegerValue >= 6)
  {
    v13 = [MEMORY[0x1E69B3A48] unsupportedError:@"Unsupported version" object:specific];
LABEL_22:
    v23 = 0;
    *error = v13;
    goto LABEL_58;
  }

  v14 = unsignedIntegerValue;
  callStackSymbols = [v10 objectForKeyedSubscript:@"parameters"];
  if (callStackSymbols)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = 0;
      v16 = [self _deserializeParameters:callStackSymbols version:v14 error:&v46];
      v17 = v46;
      if (!v16)
      {
        [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize recipe parameters" object:callStackSymbols underlyingError:v17];
        *error = v23 = 0;
LABEL_56:

        goto LABEL_57;
      }

      v18 = [v10 objectForKeyedSubscript:@"foreground"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v42 = v16;
          v45 = 0;
          v19 = [self _deserializeFilterDefinitions:v18 version:v14 error:&v45];
          v20 = v45;

          v41 = v19;
          if (!v19)
          {
            [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize foreground filters" object:v18 underlyingError:v20];
            *error = v23 = 0;
            v26 = 0;
            v16 = v42;
LABEL_54:

            v17 = v20;
            goto LABEL_55;
          }

          v21 = v20;
          v5 = [v10 objectForKeyedSubscript:@"background"];
          if (v5)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = 0;
              v22 = [self _deserializeFilterDefinitions:v5 version:v14 error:&v44];
              selfCopy2 = v44;

              if (!v22)
              {
                v21 = selfCopy2;
                [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to deserialize background filters" object:v5 underlyingError:selfCopy2];
                *error = v23 = 0;
                v26 = v41;
LABEL_52:

                goto LABEL_53;
              }

              if (v14 < 2)
              {
                v6 = MEMORY[0x1E695E0F0];
                goto LABEL_36;
              }

              v39 = v22;
              v4 = [v10 objectForKeyedSubscript:@"matte"];
              if (v4)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v43 = 0;
                  v6 = [self _deserializeFilterDefinitions:v4 version:v14 error:&v43];
                  self = v43;

                  if (v6)
                  {

                    selfCopy2 = self;
                    v22 = v39;
LABEL_36:
                    v26 = v41;
                    v23 = [[PIParallaxStyleRecipe alloc] initWithParameters:v42 foregroundFilters:v41 backgroundFilters:v22 matteFilters:v6];
LABEL_51:

                    v21 = selfCopy2;
                    goto LABEL_52;
                  }

                  goto LABEL_67;
                }

                v34 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid matte filters dictionary" object:v4];
              }

              else
              {
                v34 = [MEMORY[0x1E69B3A48] missingError:@"Missing matte filters" object:v10];
              }

              v6 = MEMORY[0x1E695E0F0];
LABEL_50:
              *error = v34;

              v23 = 0;
              v26 = v41;
              v22 = v39;
              goto LABEL_51;
            }

            v27 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid background filters dictionary" object:v5];
          }

          else
          {
            v27 = [MEMORY[0x1E69B3A48] missingError:@"Missing background filters" object:v10];
          }

          v23 = 0;
          *error = v27;
          v26 = v41;
LABEL_53:
          v20 = v21;
          v16 = v42;

          goto LABEL_54;
        }

        v25 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid foreground filters dictionary" object:v18];
      }

      else
      {
        v25 = [MEMORY[0x1E69B3A48] missingError:@"Missing foreground filters" object:v10];
      }

      v23 = 0;
      *error = v25;
LABEL_55:

      goto LABEL_56;
    }

    v24 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid recipe parameters" object:callStackSymbols];
  }

  else
  {
    v24 = [MEMORY[0x1E69B3A48] missingError:@"Missing recipe parameters" object:v10];
  }

  v23 = 0;
  *error = v24;
LABEL_57:

LABEL_58:

  return v23;
}

+ (id)unarchivedStyleRecipeWithURL:(id)l error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v13 = NUAssertLogger_11562();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v36 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_11562();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v26 = dispatch_get_specific(*callStackSymbols);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v29;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v36 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v23 = _NUAssertFailHandler();
    goto LABEL_25;
  }

  if (!error)
  {
    v20 = NUAssertLogger_11562();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v36 = v21;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v22 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_11562();
    v23 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      if (v23)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v25 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v36 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_27;
    }

LABEL_25:
    if (v23)
    {
      v30 = dispatch_get_specific(*callStackSymbols);
      v31 = MEMORY[0x1E696AF00];
      v32 = v30;
      callStackSymbols4 = [v31 callStackSymbols];
      v34 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v36 = v30;
      v37 = 2114;
      v38 = v34;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_27:

    _NUAssertFailHandler();
  }

  v7 = lCopy;
  v8 = [MEMORY[0x1E695DF48] inputStreamWithURL:lCopy];
  v9 = v8;
  if (v8)
  {
    [v8 open];
    v10 = [MEMORY[0x1E696AE40] propertyListWithStream:v9 options:0 format:0 error:error];
    if (v10)
    {
      v11 = [self deserializeRecipe:v10 error:error];
    }

    else
    {
      v11 = 0;
    }

    [v9 close];
  }

  else
  {
    [MEMORY[0x1E69B3A48] failureError:@"Failed to open recipe source file" object:v7];
    *error = v11 = 0;
  }

  return v11;
}

+ (id)serializeRecipe:(id)recipe
{
  v35 = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  if (!recipeCopy)
  {
    v16 = NUAssertLogger_11562();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "recipe != nil"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_11562();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v24 = dispatch_get_specific(*v18);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v24;
        v33 = 2114;
        v34 = v28;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v23;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = recipeCopy;
  v30[0] = &unk_1F471ED00;
  v29[0] = @"version";
  v29[1] = @"parameters";
  parameters = [recipeCopy parameters];
  v7 = [self _serializeParameters:parameters];
  v30[1] = v7;
  v29[2] = @"foreground";
  foregroundFilters = [v5 foregroundFilters];
  v9 = [self _serializeFilters:foregroundFilters];
  v30[2] = v9;
  v29[3] = @"background";
  backgroundFilters = [v5 backgroundFilters];
  v11 = [self _serializeFilters:backgroundFilters];
  v30[3] = v11;
  v29[4] = @"matte";
  matteFilters = [v5 matteFilters];
  v13 = [self _serializeFilters:matteFilters];
  v30[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:5];

  return v14;
}

+ (BOOL)writeRecipe:(id)recipe toURL:(id)l error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  lCopy = l;
  if (!error)
  {
    v17 = NUAssertLogger_11562();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v31 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_11562();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(*v19);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v25;
        v32 = 2114;
        v33 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v10 = lCopy;
  v11 = [self serializeRecipe:recipeCopy];
  v12 = [MEMORY[0x1E695DFC0] outputStreamWithURL:v10 append:0];
  v13 = v12;
  if (v12)
  {
    [v12 open];
    v14 = [MEMORY[0x1E696AE40] writePropertyList:v11 toStream:v13 format:100 options:0 error:error];
    [v13 close];
    v15 = v14 > 0;
  }

  else
  {
    [MEMORY[0x1E69B3A48] failureError:@"Failed to open recipe destination file" object:v10];
    *error = v15 = 0;
  }

  return v15;
}

@end