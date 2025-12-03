@interface PICompositionSerializer
+ (BOOL)_validateValueTypesForKeys:(id)keys requiredKeys:(id)requiredKeys inDictionary:(id)dictionary error:(id *)error;
+ (BOOL)canInterpretDataWithFormatIdentifier:(id)identifier formatVersion:(id)version;
+ (BOOL)validateAdjustmentsEnvelope:(id)envelope error:(id *)error;
+ (BOOL)validateCompositionWithMissingSource:(id)source error:(id *)error;
+ (id)_serializeComposition:(id)composition versionInfo:(id)info skipMetadata:(BOOL)metadata error:(id *)error;
+ (id)adjustmentInformationForComposition:(id)composition skipMetadata:(BOOL)metadata error:(id *)error;
+ (id)deserializeCompositionFromAdjustments:(id)adjustments metadata:(id)metadata formatIdentifier:(id)identifier formatVersion:(id)version sidecarData:(id)data error:(id *)error;
+ (id)deserializeCompositionFromData:(id)data formatIdentifier:(id)identifier formatVersion:(id)version sidecarData:(id)sidecarData error:(id *)error;
+ (id)deserializeDictionaryFromData:(id)data error:(id *)error;
+ (id)serializeComposition:(id)composition versionInfo:(id)info serializerMetadata:(id)metadata error:(id *)error;
+ (id)serializeDictionary:(id)dictionary error:(id *)error;
+ (void)_sanitizeComposition:(id)composition;
+ (void)initialize;
@end

@implementation PICompositionSerializer

+ (id)adjustmentInformationForComposition:(id)composition skipMetadata:(BOOL)metadata error:(id *)error
{
  metadataCopy = metadata;
  v33[4] = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  v10 = _CFCopySystemVersionDictionary();
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
  if (!compositionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PICompositionSerializer.m" lineNumber:620 description:{@"Invalid parameter not satisfying: %@", @"composition"}];
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v14 = [infoDictionary objectForKey:@"CFBundleVersion"];
  v15 = v14;
  v16 = &stru_1F46EAF88;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v32[0] = @"platform";
  v32[1] = @"buildNumber";
  v33[0] = @"iOS";
  v33[1] = v11;
  v32[2] = @"appVersion";
  v32[3] = @"schemaRevision";
  v33[2] = v17;
  v33[3] = &unk_1F471E940;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:4];
  v29 = 0;
  v19 = [PICompositionSerializer _serializeComposition:compositionCopy versionInfo:v18 skipMetadata:metadataCopy error:&v29];

  v20 = v29;
  v21 = v20;
  if (v19)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    data = [v19 data];
    [dictionary setObject:data forKeyedSubscript:@"adjustmentData"];

    formatIdentifier = [v19 formatIdentifier];
    [dictionary setObject:formatIdentifier forKeyedSubscript:@"adjustmentFormatIdentifier"];

    formatVersion = [v19 formatVersion];
    [dictionary setObject:formatVersion forKeyedSubscript:@"adjustmentFormatVersion"];
  }

  else
  {
    if (error)
    {
      v26 = v20;
      *error = v21;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v31 = v21;
      _os_log_error_impl(&dword_1C7694000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to serialize finalized composition: %{public}@", buf, 0xCu);
    }

    dictionary = 0;
  }

  return dictionary;
}

+ (void)_sanitizeComposition:(id)composition
{
  v44 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  v3 = [[PICompositionController alloc] initWithComposition:compositionCopy];
  compositionKeys = [(PICompositionController *)v3 compositionKeys];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [compositionKeys countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    v33 = v3;
    do
    {
      v8 = 0;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(compositionKeys);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        if (([v9 isEqualToString:{@"orientation", v25, v26}] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"mute") & 1) == 0)
        {
          v10 = [(PICompositionController *)v3 adjustmentControllerForKey:v9];
          if ([v10 _isDefault])
          {
            v11 = [compositionCopy debugDescription];
            [compositionCopy setObject:0 forKeyedSubscript:v9];
            if (*MEMORY[0x1E69B3D78] != -1)
            {
              dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_293);
            }

            v12 = *MEMORY[0x1E69B3D70];
            if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
            {
              v13 = MEMORY[0x1E696AEC0];
              v14 = v12;
              v15 = [v13 stringWithFormat:@"Adjustment for %@ is identity\n%@", v9, v11];
              *buf = 138543362;
              v40 = v15;
              _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

              v16 = *MEMORY[0x1E69B3D78];
              if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
              {
                if (v16 != -1)
                {
                  dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_293);
                }

LABEL_16:
                v17 = *MEMORY[0x1E69B3D70];
                if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
                {
                  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
                  v28 = MEMORY[0x1E696AF00];
                  v31 = specific;
                  log = v17;
                  callStackSymbols = [v28 callStackSymbols];
                  v19 = [callStackSymbols componentsJoinedByString:@"\n"];
                  *buf = 138543618;
                  v40 = specific;
                  v41 = 2114;
                  v42 = v19;
                  v20 = log;
                  _os_log_error_impl(&dword_1C7694000, log, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);

                  goto LABEL_26;
                }

                goto LABEL_21;
              }

              if (v16 != -1)
              {
                dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_293);
              }
            }

            else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
            {
              goto LABEL_16;
            }

            v21 = *MEMORY[0x1E69B3D70];
            if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
            {
              v22 = MEMORY[0x1E696AF00];
              v30 = v21;
              callStackSymbols2 = [v22 callStackSymbols];
              v23 = [callStackSymbols2 componentsJoinedByString:@"\n"];
              *buf = 138543362;
              v40 = v23;
              v20 = v30;
              _os_log_error_impl(&dword_1C7694000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);

LABEL_26:
            }

LABEL_21:
            v25 = v9;
            v26 = v11;
            _NUAssertContinueHandler();

            v3 = v33;
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v24 = [compositionKeys countByEnumeratingWithState:&v35 objects:v43 count:16];
      v6 = v24;
    }

    while (v24);
  }
}

+ (id)deserializeDictionaryFromData:(id)data error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    v9 = NUAssertLogger_1936();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "data != nil"];
      *buf = 138543362;
      v34 = v10;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_1936();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (v14)
    {
      v22 = dispatch_get_specific(*v11);
      v23 = MEMORY[0x1E696AF00];
      v24 = v22;
      callStackSymbols = [v23 callStackSymbols];
      v26 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v34 = v22;
      v35 = 2114;
      v36 = v26;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_22:

    _NUAssertFailHandler();
    __break(1u);
    JUMPOUT(0x1C76B891CLL);
  }

  if (!error)
  {
    v15 = NUAssertLogger_1936();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v34 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v18 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_1936();
    v19 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v19)
      {
        v27 = dispatch_get_specific(*v17);
        v28 = MEMORY[0x1E696AF00];
        v29 = v27;
        callStackSymbols2 = [v28 callStackSymbols];
        v31 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v34 = v27;
        v35 = 2114;
        v36 = v31;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
LABEL_16:
      callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [callStackSymbols3 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v34 = v21;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v6 = dataCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x1E69C0948] decompressData:v6 options:0 error:error];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:error];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] mismatchError:@"Data object is not of the correct type" object:v6];
    *error = v8 = 0;
  }

  return v8;
}

+ (id)serializeDictionary:(id)dictionary error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v11 = NUAssertLogger_1936();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dictionary != nil"];
      *buf = 138543362;
      v37 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_1936();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (!specific)
    {
      if (!v16)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    if (v16)
    {
      v24 = dispatch_get_specific(*v13);
      v25 = MEMORY[0x1E696AF00];
      v26 = v24;
      callStackSymbols = [v25 callStackSymbols];
      v28 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v37 = v24;
      v38 = 2114;
      v39 = v28;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_23:

    _NUAssertFailHandler();
    __break(1u);
    JUMPOUT(0x1C76B8EBCLL);
  }

  if (!error)
  {
    v17 = NUAssertLogger_1936();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v37 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    v20 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_1936();
    v21 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v21)
      {
        v29 = dispatch_get_specific(*v19);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols2 = [v30 callStackSymbols];
        v33 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v29;
        v38 = 2114;
        v39 = v33;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
LABEL_17:
      callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols3 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v23;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v6 = dictionaryCopy;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryCopy options:0 error:error];
  if (v7)
  {
    v35 = 0;
    v8 = [MEMORY[0x1E69C0948] compressData:v7 options:0 error:&v35];
    v9 = v35;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      *error = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to compress composition data" object:v6 underlyingError:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)_validateValueTypesForKeys:(id)keys requiredKeys:(id)requiredKeys inDictionary:(id)dictionary error:(id *)error
{
  keysCopy = keys;
  requiredKeysCopy = requiredKeys;
  dictionaryCopy = dictionary;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__PICompositionSerializer__validateValueTypesForKeys_requiredKeys_inDictionary_error___block_invoke;
  v16[3] = &unk_1E82A9E70;
  v12 = dictionaryCopy;
  v17 = v12;
  v13 = requiredKeysCopy;
  v18 = v13;
  v19 = &v21;
  v20 = &v27;
  [keysCopy enumerateKeysAndObjectsUsingBlock:v16];
  if (error)
  {
    *error = v22[5];
  }

  v14 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

void __86__PICompositionSerializer__validateValueTypesForKeys_requiredKeys_inDictionary_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = a2;
  v7 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v7)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) containsObject:v21];
    isKindOfClass = 1;
  }

  v10 = objc_opt_class() != a3 && objc_opt_class() != a3;
  if (v9)
  {
    v11 = [MEMORY[0x1E69B3A48] missingError:@"Missing required key" object:v21];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }

  else if (((isKindOfClass | v10) & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"Value for key %@ has type %@ expected type %@", v21, v16, a3];;

    v18 = [MEMORY[0x1E69B3A48] mismatchError:v17 object:0];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (BOOL)validateAdjustmentsEnvelope:(id)envelope error:(id *)error
{
  v27[3] = *MEMORY[0x1E69E9840];
  envelopeCopy = envelope;
  v26[0] = @"metadata";
  v27[0] = objc_opt_class();
  v26[1] = @"formatVersion";
  v27[1] = objc_opt_class();
  v26[2] = @"adjustments";
  v27[2] = objc_opt_class();
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F471FC50];
  v23 = 0;
  v9 = [self _validateValueTypesForKeys:v7 requiredKeys:v8 inDictionary:envelopeCopy error:&v23];
  v10 = v23;
  v11 = v10;
  if (v9)
  {
    v24[0] = @"masterHeight";
    v25[0] = objc_opt_class();
    v24[1] = @"masterWidth";
    v25[1] = objc_opt_class();
    v24[2] = @"orientation";
    v25[2] = objc_opt_class();
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v13 = MEMORY[0x1E695DFD8];
    allKeys = [v12 allKeys];
    v15 = [v13 setWithArray:allKeys];

    v16 = [envelopeCopy objectForKeyedSubscript:@"metadata"];
    v22 = 0;
    v17 = [self _validateValueTypesForKeys:v12 requiredKeys:v15 inDictionary:v16 error:&v22];
    v18 = v22;

    if (error && (v17 & 1) == 0)
    {
      v19 = v18;
      *error = v18;
    }
  }

  else
  {
    if (error)
    {
      v20 = v10;
      v17 = 0;
      *error = v11;
    }

    else
    {
      v17 = 0;
    }

    v18 = v11;
  }

  return v17;
}

+ (id)serializeComposition:(id)composition versionInfo:(id)info serializerMetadata:(id)metadata error:(id *)error
{
  v139 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  infoCopy = info;
  metadataCopy = metadata;
  errorCopy = error;
  if (!error)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PICompositionSerializer.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"error != nil"}];
  }

  v92 = infoCopy;
  v14 = objc_opt_new();
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(metadataCopy, "width")}];
  [v14 setObject:v15 forKeyedSubscript:@"masterWidth"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(metadataCopy, "height")}];
  [v14 setObject:v16 forKeyedSubscript:@"masterHeight"];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(metadataCopy, "orientation")}];
  [v14 setObject:v17 forKeyedSubscript:@"orientation"];

  array = [MEMORY[0x1E695DF70] array];
  v18 = [PICompositionNoOpRemoval copyOfCompositionRemovingNoOps:compositionCopy];

  v99 = v18;
  v98 = [[PICompositionController alloc] initWithComposition:v18];
  v19 = [(PICompositionController *)v98 adjustmentControllerForKey:@"orientation"];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 objectForKeyedSubscript:@"orientation"];
    if (v21)
    {
      [v14 setObject:v21 forKeyedSubscript:@"orientation"];
    }
  }

  selfCopy = self;
  v91 = v14;
  v93 = v20;
  v95 = metadataCopy;
  v101 = +[PICompositionSerializerConstants mapForSerialization];
  v22 = [MEMORY[0x1E695DFD8] setWithObjects:{@"source", @"orientation", @"sourceSpatialOvercapture", 0}];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = [(PICompositionController *)v98 compositionKeys];
  v23 = [obj countByEnumeratingWithState:&v120 objects:v138 count:16];
  v96 = v22;
  if (v23)
  {
    v24 = v23;
    v107 = *v121;
LABEL_9:
    v25 = 0;
    v97 = v24;
    while (1)
    {
      if (*v121 != v107)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v120 + 1) + 8 * v25);
      if ([v22 containsObject:v26])
      {
        goto LABEL_45;
      }

      v27 = [v101 objectForKeyedSubscript:v26];
      if (!v27)
      {
        v68 = MEMORY[0x1E69B3D78];
        if (*MEMORY[0x1E69B3D78] != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_293);
        }

        v64 = v91;
        v63 = v92;
        v69 = v95;
        v70 = MEMORY[0x1E69B3D70];
        v71 = *MEMORY[0x1E69B3D70];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_DEFAULT))
        {
          v72 = MEMORY[0x1E696AEC0];
          v73 = v71;
          v74 = [v72 stringWithFormat:@"Serialization map has no entry for %@", v26];
          *buf = 138543362;
          v135 = v74;
          _os_log_impl(&dword_1C7694000, v73, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

          v75 = *v68;
          if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
          {
            if (v75 != -1)
            {
              dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_293);
            }

LABEL_57:
            v76 = *v70;
            if (os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
            {
              specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
              v78 = MEMORY[0x1E696AF00];
              v79 = specific;
              v80 = v76;
              callStackSymbols = [v78 callStackSymbols];
              v82 = [callStackSymbols componentsJoinedByString:@"\n"];
              *buf = 138543618;
              v135 = specific;
              v136 = 2114;
              v137 = v82;
              _os_log_error_impl(&dword_1C7694000, v80, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
            }

LABEL_65:
            _NUAssertContinueHandler();
            [MEMORY[0x1E69B3A48] missingError:@"Serialization map missing adjustment key" object:{v26, v26}];
            *errorCopy = v66 = 0;
            v22 = v96;
            goto LABEL_66;
          }

          if (v75 != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_293);
          }
        }

        else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
        {
          goto LABEL_57;
        }

        v83 = *v70;
        if (os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
        {
          v85 = MEMORY[0x1E696AF00];
          v86 = v83;
          callStackSymbols2 = [v85 callStackSymbols];
          v88 = [callStackSymbols2 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          v135 = v88;
          _os_log_error_impl(&dword_1C7694000, v86, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        goto LABEL_65;
      }

      v28 = v27;
      if (![v26 isEqualToString:@"inpaintMasks"])
      {
        break;
      }

      v29 = [v99 objectForKeyedSubscript:@"inpaintMasks"];

      if (!v29)
      {
        break;
      }

      v30 = [v99 objectForKeyedSubscript:@"inpaintMasks"];
      v31 = PFMap();
      v132[0] = @"identifier";
      v32 = [v28 objectForKeyedSubscript:@"identifierName"];
      v133[0] = v32;
      v132[1] = @"settings";
      v130 = @"maskIdentifiers";
      v131 = v31;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
      v133[1] = v33;
      v133[2] = @"com.apple.photo";
      v132[2] = @"formatIdentifier";
      v132[3] = @"formatVersion";
      v133[3] = &unk_1F471E910;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:4];

      v106 = v34;
      [array addObject:v34];
LABEL_44:

LABEL_45:
      if (++v25 == v24)
      {
        v24 = [obj countByEnumeratingWithState:&v120 objects:v138 count:16];
        if (v24)
        {
          goto LABEL_9;
        }

        goto LABEL_47;
      }
    }

    v35 = [(PICompositionController *)v98 adjustmentControllerForKey:v26];
    if (!v35)
    {
      *errorCopy = [MEMORY[0x1E69B3A48] missingError:@"Missing adjustment" object:v26];

      v66 = 0;
      v64 = v91;
      v63 = v92;
      v69 = v95;
      goto LABEL_66;
    }

    v36 = v35;
    v31 = objc_opt_new();
    v37 = objc_opt_new();
    [v31 setObject:v37 forKeyedSubscript:@"settings"];
    v38 = [MEMORY[0x1E695DFD8] setWithObjects:{@"identifierName", @"compositionName", @"custom", @"customSerialization", @"customIdentifierName", @"customCompositionName", @"omitIfDisabled", @"inputKeys", @"requiresEnabled", 0}];
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __85__PICompositionSerializer_serializeComposition_versionInfo_serializerMetadata_error___block_invoke_139;
    v116[3] = &unk_1E82A9E48;
    v39 = v38;
    v117 = v39;
    v30 = v36;
    v118 = v30;
    v40 = v37;
    v119 = v40;
    [v28 enumerateKeysAndObjectsUsingBlock:v116];
    v41 = [v28 objectForKeyedSubscript:@"inputKeys"];
    if (v41)
    {
      v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v40 setObject:v42 forKeyedSubscript:@"inputKeys"];
      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 3221225472;
      v112[2] = __85__PICompositionSerializer_serializeComposition_versionInfo_serializerMetadata_error___block_invoke_2;
      v112[3] = &unk_1E82A9E48;
      v113 = v39;
      v114 = v30;
      v115 = v42;
      v43 = v42;
      [v41 enumerateKeysAndObjectsUsingBlock:v112];
    }

    v105 = v41;
    v103 = v39;
    v44 = [v28 objectForKeyedSubscript:@"customSerialization"];
    if (v44)
    {
      adjustment = [v30 adjustment];
      (*(v44 + 16))(v44, v40, adjustment);
    }

    v102 = v44;
    v106 = v40;
    v129 = @"enabled";
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v47 = v46;
    v48 = [v47 countByEnumeratingWithState:&v108 objects:v128 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v109;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v109 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v108 + 1) + 8 * i);
          if ([v30 hasInputKey:v52])
          {
            v53 = [v30 objectForKeyedSubscript:v52];

            if (v53)
            {
              v54 = [v30 objectForKeyedSubscript:v52];
              [v31 setObject:v54 forKeyedSubscript:v52];
            }
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v108 objects:v128 count:16];
      }

      while (v49);
    }

    v55 = [v28 objectForKeyedSubscript:@"requiresEnabled"];
    if (v55)
    {
      v56 = v55;
      v57 = [v31 objectForKeyedSubscript:@"enabled"];

      if (!v57)
      {
        [v31 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
      }
    }

    v24 = v97;
    v58 = v105;
    if (![v30 hasInputKey:@"auto"] || (objc_msgSend(v30, "objectForKeyedSubscript:", @"auto"), v59 = objc_claimAutoreleasedReturnValue(), v59, !v59))
    {
LABEL_43:
      v62 = [v28 objectForKeyedSubscript:@"identifierName"];
      [v31 setObject:v62 forKeyedSubscript:@"identifier"];

      [v31 setObject:@"com.apple.photo" forKeyedSubscript:@"formatIdentifier"];
      [v31 setObject:&unk_1F471E910 forKeyedSubscript:@"formatVersion"];
      [array addObject:v31];

      v22 = v96;
      goto LABEL_44;
    }

    v60 = [v28 objectForKeyedSubscript:@"autoValue"];
    if (v60)
    {
      adjustment2 = [v30 adjustment];
      (v60)[2](v60, v31, adjustment2);
    }

    else
    {
      if (![v30 isAuto])
      {
LABEL_42:

        goto LABEL_43;
      }

      v126[0] = @"auto";
      v126[1] = @"current";
      v127[0] = MEMORY[0x1E695E0F8];
      v127[1] = @"auto";
      adjustment2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:2];
      v58 = v105;
      [v31 setObject:adjustment2 forKeyedSubscript:@"auto"];
    }

    v24 = v97;
    goto LABEL_42;
  }

LABEL_47:

  v124[0] = @"metadata";
  v124[1] = @"adjustments";
  v64 = v91;
  v63 = v92;
  v125[0] = v91;
  v125[1] = array;
  v124[2] = @"formatVersion";
  v124[3] = @"versionInfo";
  v125[2] = &unk_1F471E928;
  v125[3] = v92;
  obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:4];
  v65 = [selfCopy serializeDictionary:? error:?];
  if (v65)
  {
    v66 = objc_opt_new();
    [v66 setFormatIdentifier:@"com.apple.photo"];
    v67 = [PICompositionSerializerFormatVersion adjustmentDataFormatVersionForComposition:v99];
    [v66 setFormatVersion:v67];

    v22 = v96;
    [v66 setData:v65];
  }

  else
  {
    v66 = 0;
  }

  v69 = v95;

LABEL_66:

  return v66;
}

void __85__PICompositionSerializer_serializeComposition_versionInfo_serializerMetadata_error___block_invoke_139(id *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([a1[4] containsObject:v8] & 1) == 0)
  {
    v6 = [a1[5] objectForKeyedSubscript:v8];

    if (v6)
    {
      v7 = [a1[5] objectForKeyedSubscript:v8];
      [a1[6] setObject:v7 forKeyedSubscript:v5];
    }
  }
}

void __85__PICompositionSerializer_serializeComposition_versionInfo_serializerMetadata_error___block_invoke_2(id *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([a1[4] containsObject:v8] & 1) == 0)
  {
    v6 = [a1[5] objectForKeyedSubscript:v8];

    if (v6)
    {
      v7 = [a1[5] objectForKeyedSubscript:v8];
      [a1[6] setObject:v7 forKeyedSubscript:v5];
    }
  }
}

+ (id)_serializeComposition:(id)composition versionInfo:(id)info skipMetadata:(BOOL)metadata error:(id *)error
{
  compositionCopy = composition;
  infoCopy = info;
  v12 = objc_alloc_init(PICompositionSerializerMetadata);
  if (metadata)
  {
    goto LABEL_4;
  }

  v13 = [PIPhotoEditHelper geometryRequestWithComposition:compositionCopy];
  [v13 setName:@"PICompositionSerializer-geometry"];
  v14 = [v13 submitSynchronous:error];
  if (v14)
  {
    v15 = v14;
    geometry = [v14 geometry];
    -[PICompositionSerializerMetadata setWidth:](v12, "setWidth:", [geometry size]);

    geometry2 = [v15 geometry];
    [geometry2 size];
    [(PICompositionSerializerMetadata *)v12 setHeight:v18];

    geometry3 = [v15 geometry];
    -[PICompositionSerializerMetadata setOrientation:](v12, "setOrientation:", [geometry3 orientation]);

LABEL_4:
    v20 = [self serializeComposition:compositionCopy versionInfo:infoCopy serializerMetadata:v12 error:error];
    goto LABEL_5;
  }

  v20 = 0;
LABEL_5:

  return v20;
}

+ (id)deserializeCompositionFromAdjustments:(id)adjustments metadata:(id)metadata formatIdentifier:(id)identifier formatVersion:(id)version sidecarData:(id)data error:(id *)error
{
  v93 = *MEMORY[0x1E69E9840];
  adjustmentsCopy = adjustments;
  metadataCopy = metadata;
  identifierCopy = identifier;
  versionCopy = version;
  dataCopy = data;
  if (!error)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PICompositionSerializer.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"error != NULL"}];
  }

  v16 = +[PICompositionSerializerConstants conversionMap];
  v17 = +[PIPhotoEditHelper newComposition];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v18 = adjustmentsCopy;
  v19 = [v18 countByEnumeratingWithState:&v88 objects:v92 count:16];
  v75 = v16;
  v76 = v18;
  if (!v19)
  {
    goto LABEL_42;
  }

  v20 = v19;
  v21 = *v89;
  v68 = metadataCopy;
  errorCopy = error;
  v74 = v17;
  v77 = *v89;
  while (2)
  {
    v22 = 0;
    v73 = v20;
    v23 = dataCopy;
    do
    {
      if (*v89 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v88 + 1) + 8 * v22);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v24 objectForKeyedSubscript:@"identifier"];
        if (!v25)
        {
          *errorCopy = [MEMORY[0x1E69B3A48] missingError:@"Adjustment missing identifier" object:v24];
          goto LABEL_55;
        }

        v26 = v25;
        v27 = [v16 objectForKeyedSubscript:v25];
        if (!v27)
        {
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Conversion map is missing adjustment identifier '%@'", v26];
          *errorCopy = [MEMORY[0x1E69B3A48] missingError:v64 object:v16];

          goto LABEL_55;
        }

        v28 = v27;
        v29 = [v24 objectForKeyedSubscript:@"settings"];
        v82 = [v28 objectForKeyedSubscript:@"customIdentifierName"];
        v30 = [v28 objectForKeyedSubscript:@"supported"];
        v31 = v30;
        if (v30 && ((*(v30 + 16))(v30, v29) & 1) == 0)
        {
          *errorCopy = [MEMORY[0x1E69B3A48] unsupportedError:@"Unsupported adjustment" object:v26];

          goto LABEL_54;
        }

        v81 = v31;
        if (sDisableApertureEffects == 1 && (([v26 isEqualToString:@"DepthEffect"] & 1) != 0 || objc_msgSend(v26, "isEqualToString:", @"PortraitEffect")))
        {
          *errorCopy = [MEMORY[0x1E69B3A48] unsupportedError:@"Configuration does not support Aperture adjustments" object:0];

          goto LABEL_52;
        }

        if (v82)
        {
          v82[2]();
        }

        else
        {
          [v28 objectForKeyedSubscript:@"identifierName"];
        }
        v32 = ;

        if (!v32)
        {
          *errorCopy = [MEMORY[0x1E69B3A48] failureError:@"Failed to generate or read identifier from composition definition" object:v28];
LABEL_52:
          v31 = v81;
LABEL_54:

LABEL_55:
          metadataCopy = v68;
          v17 = v74;
LABEL_56:

          goto LABEL_57;
        }

        v80 = v29;
        if ([v32 isEqualToString:@"InpaintMasks"])
        {
          v33 = [v29 objectForKeyedSubscript:@"maskIdentifiers"];
          maskSources = [v23 maskSources];
          if (!maskSources)
          {
            v39 = v32;
            v41 = v81;
LABEL_39:

            v21 = v77;
            goto LABEL_40;
          }

          v35 = [MEMORY[0x1E695DFD8] setWithArray:v33];
          v36 = MEMORY[0x1E695DFD8];
          v37 = PFMap();
          v38 = [v36 setWithArray:v37];

          v17 = v74;
          if (![v35 isEqualToSet:v38])
          {
            *errorCopy = [MEMORY[0x1E69B3A48] mismatchError:@"Sidecar mask sources do not match serialized mask identifiers" object:v35];

            metadataCopy = v68;
            v16 = v75;
            v18 = v76;
            goto LABEL_56;
          }

          v79 = v35;
          v39 = v32;
          v40 = [v28 objectForKeyedSubscript:@"compositionName"];
          [v74 setObject:maskSources forKeyedSubscript:v40];

          v16 = v75;
          v20 = v73;
          v41 = v81;
          v23 = dataCopy;
LABEL_38:

          v18 = v76;
          goto LABEL_39;
        }

        v42 = [PIPhotoEditHelper newAdjustmentWithName:v32];
        v43 = [v24 objectForKeyedSubscript:@"enabled"];
        [v42 setObject:v43 forKeyedSubscript:@"enabled"];

        v44 = [v24 objectForKeyedSubscript:@"auto"];
        if (v44)
        {
          v45 = MEMORY[0x1E695E118];
        }

        else
        {
          v45 = 0;
        }

        [v42 setObject:v45 forKeyedSubscript:@"auto"];

        v46 = [v29 objectForKeyedSubscript:@"inputKeys"];
        v47 = [MEMORY[0x1E695DFD8] setWithObjects:{@"identifierName", @"compositionName", @"custom", @"customSerialization", @"customIdentifierName", @"customCompositionName", @"omitIfDisabled", @"auto", 0}];
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __123__PICompositionSerializer_deserializeCompositionFromAdjustments_metadata_formatIdentifier_formatVersion_sidecarData_error___block_invoke_2;
        v83[3] = &unk_1E82A9E20;
        v79 = v47;
        v84 = v79;
        v48 = v42;
        v49 = v29;
        v33 = v48;
        v85 = v48;
        v50 = v49;
        v86 = v50;
        v72 = v46;
        v87 = v72;
        [v28 enumerateKeysAndObjectsUsingBlock:v83];
        v51 = [v28 objectForKeyedSubscript:@"custom"];
        v52 = v51;
        if (v51)
        {
          (*(v51 + 16))(v51, v24, v33);
        }

        v53 = [v28 objectForKeyedSubscript:@"customCompositionName"];
        v54 = v53;
        if (v53)
        {
          (*(v53 + 16))(v53, v50, v33);
        }

        else
        {
          [v28 objectForKeyedSubscript:@"compositionName"];
        }
        v55 = ;
        v39 = v32;
        v56 = [v33 objectForKeyedSubscript:@"enabled"];
        if ([v56 BOOLValue])
        {

          v41 = v81;
        }

        else
        {
          v57 = [v28 objectForKeyedSubscript:@"omitIfDisabled"];
          bOOLValue = [v57 BOOLValue];

          v41 = v81;
          if (bOOLValue)
          {
LABEL_37:

            v38 = v84;
            v23 = dataCopy;
            v16 = v75;
            maskSources = v72;
            v20 = v73;
            goto LABEL_38;
          }
        }

        [v74 setObject:v33 forKeyedSubscript:v55];
        goto LABEL_37;
      }

LABEL_40:
      ++v22;
    }

    while (v20 != v22);
    v20 = [v18 countByEnumeratingWithState:&v88 objects:v92 count:16];
    metadataCopy = v68;
    error = errorCopy;
    v17 = v74;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v59 = [v17 objectForKeyedSubscript:@"orientation"];

  if (!v59)
  {
    v60 = [metadataCopy objectForKeyedSubscript:@"orientation"];
    if ([v60 integerValue])
    {
      v61 = [objc_alloc(MEMORY[0x1E69B3AD0]) initWithName:@"Orientation"];
      v62 = [objc_alloc(MEMORY[0x1E69B3A98]) initWithIdentifier:v61];
      [v62 setObject:v60 forKeyedSubscript:@"value"];
      [v17 setObject:v62 forKeyedSubscript:@"orientation"];

      v16 = v75;
      v18 = v76;
    }
  }

  [self _sanitizeComposition:v17];
  if ([self validateCompositionWithMissingSource:v17 error:error])
  {
    v63 = v17;
  }

  else
  {
LABEL_57:
    v63 = 0;
  }

  return v63;
}

void __123__PICompositionSerializer_deserializeCompositionFromAdjustments_metadata_formatIdentifier_formatVersion_sidecarData_error___block_invoke_2(id *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([a1[4] containsObject:v9] & 1) == 0)
  {
    v6 = [a1[5] objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = [a1[6] objectForKeyedSubscript:v9];
      if (v7 || ([a1[7] objectForKeyedSubscript:v9], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = v7;
        [a1[5] setObject:v7 forKeyedSubscript:v5];
      }
    }
  }
}

+ (BOOL)validateCompositionWithMissingSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v6 = [sourceCopy objectForKeyedSubscript:@"source"];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69B3CB8]);
    [v7 setAssetIdentifier:@"dummy"];
    [sourceCopy setObject:v7 forKeyedSubscript:@"source"];
  }

  schema = [sourceCopy schema];
  v9 = [schema validateComposition:sourceCopy error:error];

  if (!v6)
  {
    [sourceCopy setObject:0 forKeyedSubscript:@"source"];
  }

  return v9;
}

+ (id)deserializeCompositionFromData:(id)data formatIdentifier:(id)identifier formatVersion:(id)version sidecarData:(id)sidecarData error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  versionCopy = version;
  sidecarDataCopy = sidecarData;
  if (!error)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PICompositionSerializer.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"error != NULL"}];
  }

  v17 = [self deserializeDictionaryFromData:dataCopy error:error];
  if (v17 && [self validateAdjustmentsEnvelope:v17 error:error])
  {
    v18 = [v17 objectForKeyedSubscript:@"adjustments"];
    v19 = [v17 objectForKeyedSubscript:@"metadata"];
    v20 = [self deserializeCompositionFromAdjustments:v18 metadata:v19 formatIdentifier:identifierCopy formatVersion:versionCopy sidecarData:sidecarDataCopy error:error];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (BOOL)canInterpretDataWithFormatIdentifier:(id)identifier formatVersion:(id)version
{
  versionCopy = version;
  if ([__s_allowedIdentifiers containsObject:identifier])
  {
    v6 = [__s_allowedVersions containsObject:versionCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.photo", 0}];
    v3 = __s_allowedIdentifiers;
    __s_allowedIdentifiers = v2;

    v4 = MEMORY[0x1E695DFD8];
    v7 = +[PICompositionSerializerFormatVersion locallySupportedFormatVersions];
    v5 = [v4 setWithArray:v7];
    v6 = __s_allowedVersions;
    __s_allowedVersions = v5;
  }
}

@end