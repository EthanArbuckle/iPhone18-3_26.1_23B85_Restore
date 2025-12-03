@interface PFMetadataTypeVerifier
- (PFMetadataTypeVerifier)init;
- (id)_coerceValue:(id)value toClass:(Class)class forKey:(id)key;
- (id)_expectedAVMetadataIdentifierTypes;
- (id)_expectedImageArrayPropertyTypes;
- (id)_expectedImageDictionaryPropertyTypes;
- (id)_verifiedValue:(id)value forKey:(id)key expectedTypes:(id)types;
- (id)valueAtIndex:(unint64_t)index forKey:(id)key fromArray:(id)array;
- (id)valueForAVMetadataIdentifier:(id)identifier fromAVMetadataItems:(id)items;
- (id)valueForKey:(id)key fromProperties:(id)properties;
- (id)valueForKey:(id)key keySpace:(id)space fromAVMetadataItems:(id)items;
- (id)valueForKeyPath:(id)path fromProperties:(id)properties;
- (id)valueForKeyPath:(id)path index:(unint64_t)index fromProperties:(id)properties;
@end

@implementation PFMetadataTypeVerifier

- (id)_coerceValue:(id)value toClass:(Class)class forKey:(id)key
{
  v24[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (!valueCopy)
  {
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  v9 = objc_opt_class();
  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v24[0] = valueCopy;
    stringValue = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    goto LABEL_4;
  }

  v13 = [v9 isSubclassOfClass:objc_opt_class()];
  v14 = objc_opt_class();
  if (v13)
  {
    if ([(objc_class *)class isSubclassOfClass:v14])
    {
      stringValue = PFStringFromDate(valueCopy);
      goto LABEL_4;
    }

LABEL_18:
    v16 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543874;
      v19 = v9;
      v20 = 2114;
      classCopy2 = class;
      v22 = 2114;
      v23 = keyCopy;
      _os_log_error_impl(&dword_1B35C1000, v16, OS_LOG_TYPE_ERROR, "Cannot coerce from %{public}@ expected type %{public}@ for key %{public}@.", &v18, 0x20u);
    }

    goto LABEL_20;
  }

  if (![v9 isSubclassOfClass:v14])
  {
    if (![v9 isSubclassOfClass:objc_opt_class()] || !-[objc_class isSubclassOfClass:](class, "isSubclassOfClass:", objc_opt_class()))
    {
      goto LABEL_18;
    }

    stringValue = [valueCopy stringValue];
LABEL_4:
    v11 = stringValue;
    if (stringValue)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    stringValue = PFDateFromString(valueCopy);
    goto LABEL_4;
  }

  if (![(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v15 setNumberStyle:1];
  v11 = [v15 numberFromString:valueCopy];

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_5:
  v12 = metadataLog;
  if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138543874;
    v19 = v9;
    v20 = 2114;
    classCopy2 = class;
    v22 = 2114;
    v23 = keyCopy;
    _os_log_debug_impl(&dword_1B35C1000, v12, OS_LOG_TYPE_DEBUG, "Coerced from %{public}@ to expected type %{public}@ for key %{public}@", &v18, 0x20u);
  }

LABEL_21:

  return v11;
}

- (id)_verifiedValue:(id)value forKey:(id)key expectedTypes:(id)types
{
  v45 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  typesCopy = types;
  v11 = typesCopy;
  v12 = 0;
  if (valueCopy && keyCopy)
  {
    v13 = [typesCopy objectForKeyedSubscript:keyCopy];
    if (![v13 count])
    {
      v14 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v39 = keyCopy;
        _os_log_fault_impl(&dword_1B35C1000, v14, OS_LOG_TYPE_FAULT, "PFMETADATA VALIDATION: key (%{public}@) with no expected types", buf, 0xCu);
      }
    }

    firstObject = [v13 firstObject];
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = valueCopy;
    valueCopy = v17;
    v18 = v17;
    if (isKindOfClass)
    {
      goto LABEL_25;
    }

    valueCopy = v17;
    if ([v13 count] >= 2)
    {
      v19 = [v13 subarrayWithRange:{1, objc_msgSend(v13, "count") - 1}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v33 = v11;
        v22 = 0;
        v23 = *v35;
        v32 = v17;
        valueCopy = v17;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v19);
            }

            if (objc_opt_isKindOfClass())
            {
              if (firstObject != objc_opt_class())
              {
                v25 = [(PFMetadataTypeVerifier *)self _coerceValue:valueCopy toClass:firstObject forKey:keyCopy];

                valueCopy = v25;
              }

              v22 = valueCopy != 0;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v21);

        v18 = valueCopy;
        v11 = v33;
        v17 = v32;
        if (v22)
        {
          goto LABEL_25;
        }
      }

      else
      {

        valueCopy = v17;
      }
    }

    v26 = metadataLog;
    if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_ERROR))
    {
      v28 = v26;
      v29 = objc_opt_class();
      v30 = v29;
      v31 = [v13 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v39 = keyCopy;
      v40 = 2114;
      v41 = v29;
      v42 = 2114;
      v43 = v31;
      _os_log_error_impl(&dword_1B35C1000, v28, OS_LOG_TYPE_ERROR, "Unexpected type for %{public}@: %{public}@. Expected type to be one of %{public}@", buf, 0x20u);
    }

    v18 = 0;
LABEL_25:
    v12 = v18;
  }

  return v12;
}

- (id)valueAtIndex:(unint64_t)index forKey:(id)key fromArray:(id)array
{
  keyCopy = key;
  arrayCopy = array;
  if (keyCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [arrayCopy count] - 1 >= index)
  {
    v12 = [arrayCopy objectAtIndexedSubscript:index];
    v10 = [(PFMetadataTypeVerifier *)self _verifiedValue:v12 forKey:keyCopy expectedTypes:self->_expectedImageArrayPropertyTypes];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueForKey:(id)key keySpace:(id)space fromAVMetadataItems:(id)items
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  spaceCopy = space;
  if (spaceCopy)
  {
    v10 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:items withKey:keyCopy keySpace:spaceCopy];
    if ([v10 count] >= 2)
    {
      v11 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        v13 = [v10 componentsJoinedByString:{@", "}];
        v19 = 138543874;
        v20 = spaceCopy;
        v21 = 2114;
        v22 = keyCopy;
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_1B35C1000, v12, OS_LOG_TYPE_INFO, "Found multiple metadata items for %{public}@/%{public}@. Using the first one out of: %{public}@", &v19, 0x20u);
      }
    }

    firstObject = [v10 firstObject];
    value = [firstObject value];

    v16 = [(NSDictionary *)self->_expectedAVMetadataKeyKeySpaceTypes objectForKeyedSubscript:spaceCopy];
    v17 = [(PFMetadataTypeVerifier *)self _verifiedValue:value forKey:keyCopy expectedTypes:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)valueForAVMetadataIdentifier:(id)identifier fromAVMetadataItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = 0;
  if (identifierCopy && items)
  {
    v8 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:items filteredByIdentifier:identifierCopy];
    if ([v8 count] >= 2)
    {
      v9 = metadataLog;
      if (os_log_type_enabled(metadataLog, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v14 = 134349570;
        v15 = [v8 count];
        v16 = 2114;
        v17 = identifierCopy;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_1B35C1000, v10, OS_LOG_TYPE_INFO, "Found multiple metadata items (%{public}lu) for %{public}@. Using the first one out of: %@", &v14, 0x20u);
      }
    }

    firstObject = [v8 firstObject];
    value = [firstObject value];

    v7 = [(PFMetadataTypeVerifier *)self _verifiedValue:value forKey:identifierCopy expectedTypes:self->_expectedAVMetadataIdentifierTypes];
  }

  return v7;
}

- (id)valueForKeyPath:(id)path index:(unint64_t)index fromProperties:(id)properties
{
  pathCopy = path;
  propertiesCopy = properties;
  if (pathCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [(PFMetadataTypeVerifier *)self valueForKeyPath:pathCopy fromProperties:propertiesCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [pathCopy componentsSeparatedByString:@"."];
    lastObject = [v13 lastObject];

    v15 = [v12 objectAtIndexedSubscript:index];

    v16 = [(PFMetadataTypeVerifier *)self _verifiedValue:v15 forKey:lastObject expectedTypes:self->_expectedImageArrayPropertyTypes];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)valueForKeyPath:(id)path fromProperties:(id)properties
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  propertiesCopy = properties;
  if (pathCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [pathCopy componentsSeparatedByString:@"."];
    v9 = propertiesCopy;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        v14 = v9;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v18 + 1) + 8 * v13);
          v16 = [v14 objectForKeyedSubscript:v15];
          v9 = [(PFMetadataTypeVerifier *)self _verifiedValue:v16 forKey:v15 expectedTypes:self->_expectedImageDictionaryPropertyTypes];

          ++v13;
          v14 = v9;
        }

        while (v11 != v13);
        v11 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)valueForKey:(id)key fromProperties:(id)properties
{
  keyCopy = key;
  propertiesCopy = properties;
  if (keyCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [propertiesCopy objectForKeyedSubscript:keyCopy];
    v9 = [(PFMetadataTypeVerifier *)self _verifiedValue:v8 forKey:keyCopy expectedTypes:self->_expectedImageDictionaryPropertyTypes];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_expectedAVMetadataIdentifierTypes
{
  if (_expectedAVMetadataIdentifierTypes_onceToken != -1)
  {
    dispatch_once(&_expectedAVMetadataIdentifierTypes_onceToken, &__block_literal_global_35);
  }

  v3 = _expectedAVMetadataIdentifierTypes_expectedAVMetadataIdentifierTypes;

  return v3;
}

void __60__PFMetadataTypeVerifier__expectedAVMetadataIdentifierTypes__block_invoke()
{
  v107[40] = *MEMORY[0x1E69E9840];
  v65 = +[PFMetadataIdentifier quickTimeMetadataOriginatingSignature];
  v106[0] = v65;
  v105 = objc_opt_class();
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
  v107[0] = v64;
  v63 = +[PFMetadataIdentifier quickTimeMetadataRenderOriginatingSignature];
  v106[1] = v63;
  v104 = objc_opt_class();
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
  v107[1] = v62;
  v61 = +[PFMetadataIdentifier quickTimeMetadataContentIdentifier];
  v106[2] = v61;
  v103 = objc_opt_class();
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  v107[2] = v60;
  v59 = +[PFMetadataIdentifier quickTimeMetadataSpatialOverCaptureGroupIdentifier];
  v106[3] = v59;
  v102 = objc_opt_class();
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  v107[3] = v58;
  v57 = +[PFMetadataIdentifier quickTimeMetadataContainsSpatialOverCaptureContent];
  v106[4] = v57;
  v101 = objc_opt_class();
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
  v107[4] = v56;
  v55 = +[PFMetadataIdentifier quickTimeMetadataVariationIdentifier];
  v106[5] = v55;
  v100 = objc_opt_class();
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
  v107[5] = v54;
  v53 = +[PFMetadataIdentifier quickTimeMetadataLivePhotoMinimumClientVersion];
  v106[6] = v53;
  v99 = objc_opt_class();
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
  v107[6] = v52;
  v51 = +[PFMetadataIdentifier quickTimeMetadataCaptureMode];
  v106[7] = v51;
  v98 = objc_opt_class();
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
  v107[7] = v50;
  v49 = +[PFMetadataIdentifier quickTimeUserDataVideoLoopingType];
  v106[8] = v49;
  v97 = objc_opt_class();
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v97 count:1];
  v107[8] = v48;
  v47 = +[PFMetadataIdentifier quickTimeUserDataMultitrackMemoryMovieType];
  v106[9] = v47;
  v96 = objc_opt_class();
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
  v107[9] = v46;
  v45 = +[PFMetadataIdentifier quickTimeMetadataStillImageTime];
  v106[10] = v45;
  v95 = objc_opt_class();
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
  v107[10] = v44;
  v43 = +[PFMetadataIdentifier quickTimeMetadataKeyLocationISO6709];
  v106[11] = v43;
  v94 = objc_opt_class();
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
  v107[11] = v42;
  v41 = +[PFMetadataIdentifier quickTimeMetadataKeyActionVideoStabilizationStrength];
  v106[12] = v41;
  v93 = objc_opt_class();
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
  v107[12] = v40;
  v39 = +[PFMetadataIdentifier quickTimeMetadataVitalityTransitionScore];
  v106[13] = v39;
  v92 = objc_opt_class();
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
  v107[13] = v38;
  v37 = +[PFMetadataIdentifier quickTimeMetadataLivePhotoVitalityDisabled];
  v106[14] = v37;
  v91 = objc_opt_class();
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  v107[14] = v36;
  v35 = +[PFMetadataIdentifier quickTimeMetadataLivePhotoVitalityLimitingAllowed];
  v106[15] = v35;
  v90 = objc_opt_class();
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
  v107[15] = v34;
  v106[16] = *MEMORY[0x1E6987798];
  v89 = objc_opt_class();
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
  v107[16] = v33;
  v106[17] = *MEMORY[0x1E6987650];
  v88 = objc_opt_class();
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v107[17] = v32;
  v106[18] = *MEMORY[0x1E6987658];
  v87 = objc_opt_class();
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
  v107[18] = v31;
  v106[19] = *MEMORY[0x1E6987660];
  v86 = objc_opt_class();
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
  v107[19] = v30;
  v106[20] = *MEMORY[0x1E6987640];
  v85 = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
  v107[20] = v29;
  v106[21] = *MEMORY[0x1E6987620];
  v84 = objc_opt_class();
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
  v107[21] = v28;
  v106[22] = *MEMORY[0x1E6987668];
  v83 = objc_opt_class();
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];
  v107[22] = v27;
  v106[23] = *MEMORY[0x1E69877E8];
  v82 = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
  v107[23] = v26;
  v106[24] = *MEMORY[0x1E69877C8];
  v81 = objc_opt_class();
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  v107[24] = v25;
  v106[25] = *MEMORY[0x1E6987788];
  v80 = objc_opt_class();
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v107[25] = v24;
  v106[26] = *MEMORY[0x1E69877E0];
  v79 = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
  v107[26] = v23;
  v106[27] = *MEMORY[0x1E69877D0];
  v78 = objc_opt_class();
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
  v107[27] = v22;
  v106[28] = *MEMORY[0x1E6987630];
  v77 = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v107[28] = v21;
  v106[29] = *MEMORY[0x1E6987648];
  v76 = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  v107[29] = v20;
  v106[30] = *MEMORY[0x1E69877D8];
  v75 = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v107[30] = v19;
  v106[31] = *MEMORY[0x1E6987638];
  v74 = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  v107[31] = v18;
  v17 = +[PFMetadataIdentifier quicktimeMetadataCameraLensModel];
  v106[32] = v17;
  v73 = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
  v107[32] = v16;
  v15 = +[PFMetadataIdentifier quicktimeMetadataCameraFocalLength35mmEquivalent];
  v106[33] = v15;
  v72 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  v107[33] = v14;
  v13 = +[PFMetadataIdentifier quicktimeMetadataSpatialVideoRecommendedForImmersiveMode];
  v106[34] = v13;
  v71 = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
  v107[34] = v12;
  v11 = +[PFMetadataIdentifier quicktimeMetadataFullFrameRatePlaybackIntent];
  v106[35] = v11;
  v70 = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v107[35] = v0;
  v1 = +[PFMetadataIdentifier quicktimeMetadataSpatialAggressorsSeen];
  v106[36] = v1;
  v69 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v107[36] = v2;
  v3 = +[PFMetadataIdentifier quicktimeMetadataSmartStyleCast];
  v106[37] = v3;
  v68 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  v107[37] = v4;
  v5 = +[PFMetadataIdentifier quicktimeMetadataFrontAndRearComposition];
  v106[38] = v5;
  v67 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  v107[38] = v6;
  v7 = +[PFMetadataIdentifier quicktimeMetadataCinematicVideoIntent];
  v106[39] = v7;
  v66 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v107[39] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:40];
  v10 = _expectedAVMetadataIdentifierTypes_expectedAVMetadataIdentifierTypes;
  _expectedAVMetadataIdentifierTypes_expectedAVMetadataIdentifierTypes = v9;
}

- (id)_expectedImageDictionaryPropertyTypes
{
  if (_expectedImageDictionaryPropertyTypes_onceToken[0] != -1)
  {
    dispatch_once(_expectedImageDictionaryPropertyTypes_onceToken, &__block_literal_global_5);
  }

  v3 = _expectedImageDictionaryPropertyTypes_expectedImageDictionaryPropertyTypes;

  return v3;
}

void __63__PFMetadataTypeVerifier__expectedImageDictionaryPropertyTypes__block_invoke()
{
  v477[209] = *MEMORY[0x1E69E9840];
  v419[0] = *MEMORY[0x1E696DB58];
  v418 = objc_opt_class();
  v210 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v418 count:1];
  v477[0] = v210;
  v419[1] = *MEMORY[0x1E696DDE8];
  v417 = objc_opt_class();
  v209 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v417 count:1];
  v477[1] = v209;
  v419[2] = *MEMORY[0x1E696D410];
  v416 = objc_opt_class();
  v208 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v416 count:1];
  v477[2] = v208;
  v419[3] = *MEMORY[0x1E696D448];
  v415 = objc_opt_class();
  v207 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v415 count:1];
  v477[3] = v207;
  v419[4] = *MEMORY[0x1E696D880];
  v414 = objc_opt_class();
  v206 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v414 count:1];
  v477[4] = v206;
  v419[5] = *MEMORY[0x1E696D888];
  v413 = objc_opt_class();
  v205 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v413 count:1];
  v477[5] = v205;
  v419[6] = *MEMORY[0x1E696D890];
  v412 = objc_opt_class();
  v204 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v412 count:1];
  v477[6] = v204;
  v419[7] = *MEMORY[0x1E696DE78];
  v411 = objc_opt_class();
  v203 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v411 count:1];
  v477[7] = v203;
  v419[8] = *MEMORY[0x1E696DEC8];
  v410 = objc_opt_class();
  v202 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v410 count:1];
  v477[8] = v202;
  v419[9] = *MEMORY[0x1E696DED8];
  v409 = objc_opt_class();
  v201 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v409 count:1];
  v477[9] = v201;
  v419[10] = *MEMORY[0x1E696DEE8];
  v408 = objc_opt_class();
  v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v408 count:1];
  v477[10] = v200;
  v419[11] = *MEMORY[0x1E696DEF0];
  v407 = objc_opt_class();
  v199 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v407 count:1];
  v477[11] = v199;
  v419[12] = *MEMORY[0x1E696DDF0];
  v406 = objc_opt_class();
  v198 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v406 count:1];
  v477[12] = v198;
  v419[13] = *MEMORY[0x1E696DD50];
  v405 = objc_opt_class();
  v197 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v405 count:1];
  v477[13] = v197;
  v419[14] = *MEMORY[0x1E696D8B0];
  v404 = objc_opt_class();
  v196 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v404 count:1];
  v477[14] = v196;
  v419[15] = *MEMORY[0x1E696D8C8];
  v403 = objc_opt_class();
  v195 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v403 count:1];
  v477[15] = v195;
  v419[16] = *MEMORY[0x1E696D958];
  v402 = objc_opt_class();
  v194 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v402 count:1];
  v477[16] = v194;
  v419[17] = *MEMORY[0x1E696D8D0];
  v401 = objc_opt_class();
  v193 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v401 count:1];
  v477[17] = v193;
  v419[18] = *MEMORY[0x1E696D8B8];
  v400 = objc_opt_class();
  v192 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v400 count:1];
  v477[18] = v192;
  v419[19] = *MEMORY[0x1E696D8C0];
  v399 = objc_opt_class();
  v191 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v399 count:1];
  v477[19] = v191;
  v419[20] = @"FocusDistance";
  v398 = objc_opt_class();
  v190 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v398 count:1];
  v477[20] = v190;
  v419[21] = @"FocusMode";
  v397 = objc_opt_class();
  v189 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v397 count:1];
  v477[21] = v189;
  v419[22] = @"AFInfo";
  v396 = objc_opt_class();
  v188 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v396 count:1];
  v477[22] = v188;
  v419[23] = *MEMORY[0x1E696D9B0];
  v395 = objc_opt_class();
  v187 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v395 count:1];
  v477[23] = v187;
  v419[24] = *MEMORY[0x1E696D8A8];
  v394 = objc_opt_class();
  v186 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v394 count:1];
  v477[24] = v186;
  v419[25] = *MEMORY[0x1E696D960];
  v393 = objc_opt_class();
  v185 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v393 count:1];
  v477[25] = v185;
  v419[26] = *MEMORY[0x1E696D968];
  v392 = objc_opt_class();
  v184 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v392 count:1];
  v477[26] = v184;
  v419[27] = *MEMORY[0x1E696D970];
  v391 = objc_opt_class();
  v183 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v391 count:1];
  v477[27] = v183;
  v419[28] = *MEMORY[0x1E696D978];
  v390 = objc_opt_class();
  v182 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v390 count:1];
  v477[28] = v182;
  v419[29] = @"CameraSerialNumber";
  v389 = objc_opt_class();
  v181 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v389 count:1];
  v477[29] = v181;
  v419[30] = *MEMORY[0x1E696DA88];
  v388 = objc_opt_class();
  v180 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v388 count:1];
  v477[30] = v180;
  v419[31] = *MEMORY[0x1E696D988];
  v387 = objc_opt_class();
  v179 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v387 count:1];
  v477[31] = v179;
  v419[32] = *MEMORY[0x1E696D998];
  v386[0] = objc_opt_class();
  v386[1] = objc_opt_class();
  v178 = [MEMORY[0x1E695DEC8] arrayWithObjects:v386 count:2];
  v477[32] = v178;
  v419[33] = *MEMORY[0x1E696DB28];
  v385 = objc_opt_class();
  v177 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v385 count:1];
  v477[33] = v177;
  v419[34] = *MEMORY[0x1E696DAA0];
  v384 = objc_opt_class();
  v176 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v384 count:1];
  v477[34] = v176;
  v419[35] = *MEMORY[0x1E696D990];
  v383[0] = objc_opt_class();
  v383[1] = objc_opt_class();
  v175 = [MEMORY[0x1E695DEC8] arrayWithObjects:v383 count:2];
  v477[35] = v175;
  v419[36] = *MEMORY[0x1E696DB20];
  v382 = objc_opt_class();
  v174 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v382 count:1];
  v477[36] = v174;
  v419[37] = *MEMORY[0x1E696DA90];
  v381 = objc_opt_class();
  v173 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v381 count:1];
  v477[37] = v173;
  v419[38] = *MEMORY[0x1E696DB48];
  v380 = objc_opt_class();
  v172 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v380 count:1];
  v477[38] = v172;
  v419[39] = *MEMORY[0x1E696D9C8];
  v379 = objc_opt_class();
  v171 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v379 count:1];
  v477[39] = v171;
  v419[40] = *MEMORY[0x1E696D9D0];
  v378 = objc_opt_class();
  v170 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v378 count:1];
  v477[40] = v170;
  v419[41] = *MEMORY[0x1E696D9D8];
  v377 = objc_opt_class();
  v169 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v377 count:1];
  v477[41] = v169;
  v419[42] = *MEMORY[0x1E696D9E0];
  v376 = objc_opt_class();
  v168 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v376 count:1];
  v477[42] = v168;
  v419[43] = *MEMORY[0x1E696D9E8];
  v375 = objc_opt_class();
  v167 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v375 count:1];
  v477[43] = v167;
  v419[44] = *MEMORY[0x1E696D9F0];
  v374 = objc_opt_class();
  v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v374 count:1];
  v477[44] = v166;
  v419[45] = *MEMORY[0x1E696DA00];
  v373 = objc_opt_class();
  v165 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v373 count:1];
  v477[45] = v165;
  v419[46] = *MEMORY[0x1E696DA08];
  v372 = objc_opt_class();
  v164 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v372 count:1];
  v477[46] = v164;
  v419[47] = *MEMORY[0x1E696DA18];
  v371 = objc_opt_class();
  v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v371 count:1];
  v477[47] = v163;
  v419[48] = *MEMORY[0x1E696DA40];
  v370[0] = objc_opt_class();
  v370[1] = objc_opt_class();
  v162 = [MEMORY[0x1E695DEC8] arrayWithObjects:v370 count:2];
  v477[48] = v162;
  v419[49] = *MEMORY[0x1E696DAB8];
  v369 = objc_opt_class();
  v161 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v369 count:1];
  v477[49] = v161;
  v419[50] = *MEMORY[0x1E696DA28];
  v368 = objc_opt_class();
  v160 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v368 count:1];
  v477[50] = v160;
  v419[51] = *MEMORY[0x1E696DA50];
  v367 = objc_opt_class();
  v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v367 count:1];
  v477[51] = v159;
  v419[52] = *MEMORY[0x1E696DA58];
  v366 = objc_opt_class();
  v158 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v366 count:1];
  v477[52] = v158;
  v419[53] = *MEMORY[0x1E696DA60];
  v365 = objc_opt_class();
  v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v365 count:1];
  v477[53] = v157;
  v419[54] = *MEMORY[0x1E696DA68];
  v364 = objc_opt_class();
  v156 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v364 count:1];
  v477[54] = v156;
  v419[55] = *MEMORY[0x1E696DA80];
  v363 = objc_opt_class();
  v155 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v363 count:1];
  v477[55] = v155;
  v419[56] = *MEMORY[0x1E696DAA8];
  v362 = objc_opt_class();
  v154 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v362 count:1];
  v477[56] = v154;
  v419[57] = *MEMORY[0x1E696DAB0];
  v361 = objc_opt_class();
  v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v361 count:1];
  v477[57] = v153;
  v419[58] = *MEMORY[0x1E696DAC8];
  v360 = objc_opt_class();
  v152 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v360 count:1];
  v477[58] = v152;
  v419[59] = *MEMORY[0x1E696DAD0];
  v359 = objc_opt_class();
  v151 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v359 count:1];
  v477[59] = v151;
  v419[60] = *MEMORY[0x1E696DAD8];
  v358 = objc_opt_class();
  v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v358 count:1];
  v477[60] = v150;
  v419[61] = *MEMORY[0x1E696DAE8];
  v357 = objc_opt_class();
  v149 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v357 count:1];
  v477[61] = v149;
  v419[62] = *MEMORY[0x1E696DAF8];
  v356 = objc_opt_class();
  v148 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v356 count:1];
  v477[62] = v148;
  v419[63] = *MEMORY[0x1E696DB50];
  v355 = objc_opt_class();
  v147 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v355 count:1];
  v477[63] = v147;
  v419[64] = *MEMORY[0x1E696D9C0];
  v354 = objc_opt_class();
  v146 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v354 count:1];
  v477[64] = v146;
  v419[65] = *MEMORY[0x1E696DB40];
  v353 = objc_opt_class();
  v145 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v353 count:1];
  v477[65] = v145;
  v419[66] = *MEMORY[0x1E696DAF0];
  v352 = objc_opt_class();
  v144 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v352 count:1];
  v477[66] = v144;
  v419[67] = *MEMORY[0x1E696DD90];
  v351 = objc_opt_class();
  v143 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v351 count:1];
  v477[67] = v143;
  v419[68] = *MEMORY[0x1E696DD68];
  v350 = objc_opt_class();
  v142 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v350 count:1];
  v477[68] = v142;
  v419[69] = *MEMORY[0x1E696DD80];
  v349 = objc_opt_class();
  v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v349 count:1];
  v477[69] = v141;
  v419[70] = *MEMORY[0x1E696DDA8];
  v348 = objc_opt_class();
  v140 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v348 count:1];
  v477[70] = v140;
  v419[71] = *MEMORY[0x1E696DDB8];
  v347 = objc_opt_class();
  v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v347 count:1];
  v477[71] = v139;
  v419[72] = *MEMORY[0x1E696DDD0];
  v346 = objc_opt_class();
  v138 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v346 count:1];
  v477[72] = v138;
  v419[73] = *MEMORY[0x1E696DD70];
  v345 = objc_opt_class();
  v137 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v345 count:1];
  v477[73] = v137;
  v419[74] = *MEMORY[0x1E696DDD8];
  v344 = objc_opt_class();
  v136 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v344 count:1];
  v477[74] = v136;
  v419[75] = *MEMORY[0x1E696DBF0];
  v343 = objc_opt_class();
  v135 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v343 count:1];
  v477[75] = v135;
  v419[76] = *MEMORY[0x1E696DB88];
  v342 = objc_opt_class();
  v134 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v342 count:1];
  v477[76] = v134;
  v419[77] = *MEMORY[0x1E696DB90];
  v341 = objc_opt_class();
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v341 count:1];
  v477[77] = v133;
  v419[78] = *MEMORY[0x1E696DC70];
  v340 = objc_opt_class();
  v132 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v340 count:1];
  v477[78] = v132;
  v419[79] = *MEMORY[0x1E696DBA8];
  v339 = objc_opt_class();
  v131 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v339 count:1];
  v477[79] = v131;
  v419[80] = *MEMORY[0x1E696DBB0];
  v338 = objc_opt_class();
  v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v338 count:1];
  v477[80] = v130;
  v419[81] = *MEMORY[0x1E696DBB8];
  v337 = objc_opt_class();
  v129 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v337 count:1];
  v477[81] = v129;
  v419[82] = *MEMORY[0x1E696DC00];
  v336 = objc_opt_class();
  v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v336 count:1];
  v477[82] = v128;
  v419[83] = *MEMORY[0x1E696DC08];
  v335 = objc_opt_class();
  v127 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v335 count:1];
  v477[83] = v127;
  v419[84] = *MEMORY[0x1E696DC10];
  v334 = objc_opt_class();
  v126 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v334 count:1];
  v477[84] = v126;
  v419[85] = *MEMORY[0x1E696DC18];
  v333 = objc_opt_class();
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v333 count:1];
  v477[85] = v125;
  v419[86] = *MEMORY[0x1E696DC20];
  v332 = objc_opt_class();
  v124 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v332 count:1];
  v477[86] = v124;
  v419[87] = *MEMORY[0x1E696DC28];
  v331 = objc_opt_class();
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v331 count:1];
  v477[87] = v123;
  v419[88] = *MEMORY[0x1E696DC30];
  v330 = objc_opt_class();
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v330 count:1];
  v477[88] = v122;
  v419[89] = *MEMORY[0x1E696DC58];
  v329 = objc_opt_class();
  v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v329 count:1];
  v477[89] = v121;
  v419[90] = *MEMORY[0x1E696DC60];
  v328 = objc_opt_class();
  v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v328 count:1];
  v477[90] = v120;
  v419[91] = *MEMORY[0x1E696DD40];
  v327 = objc_opt_class();
  v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v327 count:1];
  v477[91] = v119;
  v419[92] = *MEMORY[0x1E696E1E8];
  v326 = objc_opt_class();
  v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v326 count:1];
  v477[92] = v118;
  v419[93] = *MEMORY[0x1E696E178];
  v325 = objc_opt_class();
  v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v325 count:1];
  v477[93] = v117;
  v419[94] = *MEMORY[0x1E696E188];
  v324 = objc_opt_class();
  v116 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v324 count:1];
  v477[94] = v116;
  v419[95] = *MEMORY[0x1E696E198];
  v323 = objc_opt_class();
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v323 count:1];
  v477[95] = v115;
  v419[96] = *MEMORY[0x1E696E1F0];
  v322 = objc_opt_class();
  v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v322 count:1];
  v477[96] = v114;
  v419[97] = *MEMORY[0x1E696E1C0];
  v321 = objc_opt_class();
  v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v321 count:1];
  v477[97] = v113;
  v419[98] = *MEMORY[0x1E696E1D0];
  v320 = objc_opt_class();
  v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v320 count:1];
  v477[98] = v112;
  v419[99] = *MEMORY[0x1E696DE30];
  v319 = objc_opt_class();
  v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v319 count:1];
  v477[99] = v111;
  v419[100] = *MEMORY[0x1E6990B60];
  v318 = objc_opt_class();
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v318 count:1];
  v477[100] = v110;
  v419[101] = *MEMORY[0x1E69867B0];
  v317 = objc_opt_class();
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v317 count:1];
  v477[101] = v109;
  v419[102] = *MEMORY[0x1E6990B18];
  v316 = objc_opt_class();
  v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v316 count:1];
  v477[102] = v108;
  v419[103] = *MEMORY[0x1E6990B10];
  v315 = objc_opt_class();
  v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v315 count:1];
  v477[103] = v107;
  v419[104] = *MEMORY[0x1E6990B20];
  v477[104] = MEMORY[0x1E695E0F0];
  v419[105] = *MEMORY[0x1E6990AE0];
  v314 = objc_opt_class();
  v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v314 count:1];
  v477[105] = v106;
  v419[106] = *MEMORY[0x1E6990B28];
  v313 = objc_opt_class();
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v313 count:1];
  v477[106] = v105;
  v419[107] = *MEMORY[0x1E69867A8];
  v312 = objc_opt_class();
  v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v312 count:1];
  v477[107] = v104;
  v419[108] = *MEMORY[0x1E6990B38];
  v311 = objc_opt_class();
  v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v311 count:1];
  v477[108] = v103;
  v419[109] = *MEMORY[0x1E69867C8];
  v310 = objc_opt_class();
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v310 count:1];
  v477[109] = v102;
  v419[110] = *MEMORY[0x1E6986808];
  v309 = objc_opt_class();
  v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v309 count:1];
  v477[110] = v101;
  v419[111] = *MEMORY[0x1E6986818];
  v308 = objc_opt_class();
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v308 count:1];
  v477[111] = v100;
  v419[112] = *MEMORY[0x1E69867F8];
  v307 = objc_opt_class();
  v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v307 count:1];
  v477[112] = v99;
  v419[113] = *MEMORY[0x1E6990AF0];
  v306 = objc_opt_class();
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v306 count:1];
  v477[113] = v98;
  v419[114] = *MEMORY[0x1E6986810];
  v305 = objc_opt_class();
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v305 count:1];
  v477[114] = v97;
  v419[115] = *MEMORY[0x1E69867D0];
  v304 = objc_opt_class();
  v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v304 count:1];
  v477[115] = v96;
  v419[116] = *MEMORY[0x1E6986800];
  v303 = objc_opt_class();
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v303 count:1];
  v477[116] = v95;
  v419[117] = *MEMORY[0x1E69867C0];
  v302 = objc_opt_class();
  v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v302 count:1];
  v477[117] = v94;
  v419[118] = *MEMORY[0x1E6990AB0];
  v301[0] = objc_opt_class();
  v301[1] = objc_opt_class();
  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v301 count:2];
  v477[118] = v93;
  v419[119] = *MEMORY[0x1E6990A28];
  v300 = objc_opt_class();
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v300 count:1];
  v477[119] = v92;
  v419[120] = *MEMORY[0x1E6986820];
  v299 = objc_opt_class();
  v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v299 count:1];
  v477[120] = v91;
  v419[121] = *MEMORY[0x1E6990B30];
  v298 = objc_opt_class();
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v298 count:1];
  v477[121] = v90;
  v419[122] = *MEMORY[0x1E6990B48];
  v297 = objc_opt_class();
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v297 count:1];
  v477[122] = v89;
  v419[123] = *MEMORY[0x1E6990B40];
  v296 = objc_opt_class();
  v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v296 count:1];
  v477[123] = v88;
  v419[124] = *MEMORY[0x1E6990A18];
  v295 = objc_opt_class();
  v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v295 count:1];
  v477[124] = v87;
  v419[125] = *MEMORY[0x1E6986888];
  v294 = objc_opt_class();
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v294 count:1];
  v477[125] = v86;
  v419[126] = *MEMORY[0x1E69867F0];
  v293 = objc_opt_class();
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v293 count:1];
  v477[126] = v85;
  v419[127] = *MEMORY[0x1E6986890];
  v292 = objc_opt_class();
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v292 count:1];
  v477[127] = v84;
  v419[128] = *MEMORY[0x1E6990A58];
  v291 = objc_opt_class();
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v291 count:1];
  v477[128] = v83;
  v419[129] = *MEMORY[0x1E6990A38];
  v290 = objc_opt_class();
  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v290 count:1];
  v477[129] = v82;
  v419[130] = *MEMORY[0x1E6990A80];
  v289 = objc_opt_class();
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v289 count:1];
  v477[130] = v81;
  v419[131] = *MEMORY[0x1E69867E0];
  v288 = objc_opt_class();
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v288 count:1];
  v477[131] = v80;
  v419[132] = *MEMORY[0x1E6990A20];
  v287 = objc_opt_class();
  v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v287 count:1];
  v477[132] = v79;
  v419[133] = *MEMORY[0x1E6990A98];
  v286 = objc_opt_class();
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v286 count:1];
  v477[133] = v78;
  v419[134] = *MEMORY[0x1E6990AD8];
  v285 = objc_opt_class();
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v285 count:1];
  v477[134] = v77;
  v419[135] = *MEMORY[0x1E6990AC0];
  v284 = objc_opt_class();
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v284 count:1];
  v477[135] = v76;
  v419[136] = *MEMORY[0x1E6990AC8];
  v283 = objc_opt_class();
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v283 count:1];
  v477[136] = v75;
  v419[137] = *MEMORY[0x1E6990AA8];
  v282 = objc_opt_class();
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v282 count:1];
  v477[137] = v74;
  v419[138] = *MEMORY[0x1E6990AA0];
  v281 = objc_opt_class();
  v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v281 count:1];
  v477[138] = v73;
  v419[139] = *MEMORY[0x1E6990AD0];
  v280 = objc_opt_class();
  v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v280 count:1];
  v477[139] = v72;
  v419[140] = *MEMORY[0x1E6990B50];
  v279 = objc_opt_class();
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v279 count:1];
  v477[140] = v71;
  v419[141] = *MEMORY[0x1E6990A10];
  v278 = objc_opt_class();
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v278 count:1];
  v477[141] = v70;
  v419[142] = *MEMORY[0x1E6990A68];
  v277 = objc_opt_class();
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v277 count:1];
  v477[142] = v69;
  v419[143] = *MEMORY[0x1E6990A30];
  v276 = objc_opt_class();
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v276 count:1];
  v477[143] = v68;
  v419[144] = *MEMORY[0x1E6990A70];
  v275 = objc_opt_class();
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v275 count:1];
  v477[144] = v67;
  v419[145] = *MEMORY[0x1E6990AF8];
  v274 = objc_opt_class();
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v274 count:1];
  v477[145] = v66;
  v419[146] = *MEMORY[0x1E6986828];
  v273 = objc_opt_class();
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v273 count:1];
  v477[146] = v65;
  v419[147] = *MEMORY[0x1E6986840];
  v272 = objc_opt_class();
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v272 count:1];
  v477[147] = v64;
  v419[148] = *MEMORY[0x1E6986830];
  v271 = objc_opt_class();
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v271 count:1];
  v477[148] = v63;
  v419[149] = *MEMORY[0x1E6986848];
  v270 = objc_opt_class();
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v270 count:1];
  v477[149] = v62;
  v419[150] = *MEMORY[0x1E6986838];
  v269 = objc_opt_class();
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v269 count:1];
  v477[150] = v61;
  v419[151] = *MEMORY[0x1E69867B8];
  v268 = objc_opt_class();
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v268 count:1];
  v477[151] = v60;
  v420 = *MEMORY[0x1E6990A88];
  v0 = v420;
  v267 = objc_opt_class();
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v267 count:1];
  v477[152] = v59;
  v421 = v0;
  v266 = objc_opt_class();
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v266 count:1];
  v477[153] = v58;
  v422 = *MEMORY[0x1E6990AB8];
  v265 = objc_opt_class();
  v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v265 count:1];
  v477[154] = v57;
  v423 = *MEMORY[0x1E696D270];
  v264 = objc_opt_class();
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v264 count:1];
  v477[155] = v56;
  v424 = *MEMORY[0x1E696D218];
  v263 = objc_opt_class();
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v263 count:1];
  v477[156] = v55;
  v425 = *MEMORY[0x1E696D228];
  v262 = objc_opt_class();
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v262 count:1];
  v477[157] = v54;
  v426 = *MEMORY[0x1E696D220];
  v261 = objc_opt_class();
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v261 count:1];
  v477[158] = v53;
  v427 = @"BytesPerRow";
  v260 = objc_opt_class();
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v260 count:1];
  v477[159] = v52;
  v428 = @"Height";
  v259 = objc_opt_class();
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v259 count:1];
  v477[160] = v51;
  v429 = @"Orientation";
  v258 = objc_opt_class();
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v258 count:1];
  v477[161] = v50;
  v430 = @"PixelFormat";
  v257 = objc_opt_class();
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v257 count:1];
  v477[162] = v49;
  v431 = @"Width";
  v256 = objc_opt_class();
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v256 count:1];
  v477[163] = v48;
  v432 = *MEMORY[0x1E6990B58];
  v255 = objc_opt_class();
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v255 count:1];
  v477[164] = v47;
  v433 = @"epoch";
  v254 = objc_opt_class();
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v254 count:1];
  v477[165] = v46;
  v434 = @"flags";
  v253 = objc_opt_class();
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v253 count:1];
  v477[166] = v45;
  v435 = @"timescale";
  v252 = objc_opt_class();
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v252 count:1];
  v477[167] = v44;
  v436 = @"value";
  v251 = objc_opt_class();
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v251 count:1];
  v477[168] = v43;
  v437 = *MEMORY[0x1E696DE38];
  v250 = objc_opt_class();
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v250 count:1];
  v477[169] = v42;
  v438 = *MEMORY[0x1E696DE50];
  v249 = objc_opt_class();
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v249 count:1];
  v477[170] = v41;
  v439 = *MEMORY[0x1E696DE58];
  v248 = objc_opt_class();
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v248 count:1];
  v477[171] = v40;
  v440 = *MEMORY[0x1E696DF28];
  v247 = objc_opt_class();
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v247 count:1];
  v477[172] = v39;
  v441 = *MEMORY[0x1E696DF20];
  v246[0] = objc_opt_class();
  v246[1] = objc_opt_class();
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v246 count:2];
  v477[173] = v38;
  v442 = *MEMORY[0x1E696DF38];
  v245 = objc_opt_class();
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v245 count:1];
  v477[174] = v37;
  v443 = *MEMORY[0x1E696DF48];
  v244 = objc_opt_class();
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v244 count:1];
  v477[175] = v36;
  v444 = *MEMORY[0x1E696DF50];
  v243 = objc_opt_class();
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v243 count:1];
  v477[176] = v35;
  v445 = *MEMORY[0x1E696DF58];
  v242 = objc_opt_class();
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v242 count:1];
  v477[177] = v34;
  v446 = *MEMORY[0x1E696DF60];
  v241 = objc_opt_class();
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v241 count:1];
  v477[178] = v33;
  v447 = *MEMORY[0x1E696DF68];
  v240 = objc_opt_class();
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v240 count:1];
  v477[179] = v32;
  v448 = *MEMORY[0x1E696DF70];
  v239 = objc_opt_class();
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v239 count:1];
  v477[180] = v31;
  v449 = *MEMORY[0x1E696DF78];
  v238 = objc_opt_class();
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v238 count:1];
  v477[181] = v30;
  v450 = *MEMORY[0x1E696DF88];
  v237 = objc_opt_class();
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v237 count:1];
  v477[182] = v29;
  v451 = *MEMORY[0x1E696DF98];
  v236 = objc_opt_class();
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v236 count:1];
  v477[183] = v28;
  v452 = *MEMORY[0x1E696D438];
  v235 = objc_opt_class();
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v235 count:1];
  v477[184] = v27;
  v453 = *MEMORY[0x1E696D440];
  v234 = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v234 count:1];
  v477[185] = v26;
  v454 = *MEMORY[0x1E696DB70];
  v233 = objc_opt_class();
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v233 count:1];
  v477[186] = v25;
  v455 = *MEMORY[0x1E696DB68];
  v232 = objc_opt_class();
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v232 count:1];
  v477[187] = v24;
  v456 = @"{raw}";
  v231 = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v231 count:1];
  v477[188] = v23;
  v457 = @"Thumbnails";
  v230 = objc_opt_class();
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v230 count:1];
  v477[189] = v22;
  v458 = *MEMORY[0x1E696DFB8];
  v229 = objc_opt_class();
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v229 count:1];
  v477[190] = v21;
  v459 = *MEMORY[0x1E696DD58];
  v228 = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v228 count:1];
  v477[191] = v20;
  v460 = @"JPEGOffset";
  v227 = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v227 count:1];
  v477[192] = v19;
  v461 = @"JPEGLength";
  v226 = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v226 count:1];
  v477[193] = v18;
  v462 = @"Orientation";
  v225 = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v225 count:1];
  v477[194] = v17;
  v463 = *MEMORY[0x1E696DD20];
  v224 = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v224 count:1];
  v477[195] = v16;
  v464 = *MEMORY[0x1E696DD18];
  v223 = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v223 count:1];
  v477[196] = v15;
  v465 = *MEMORY[0x1E696DD00];
  v222 = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v222 count:1];
  v477[197] = v14;
  v466 = *MEMORY[0x1E696DCE0];
  v221 = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v221 count:1];
  v477[198] = v13;
  v467 = *MEMORY[0x1E696DCA0];
  v220 = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v220 count:1];
  v477[199] = v12;
  v468 = *MEMORY[0x1E696DCB8];
  v219 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v219 count:1];
  v477[200] = v1;
  v469 = *MEMORY[0x1E696DC90];
  v218 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v218 count:1];
  v477[201] = v2;
  v470 = kPFImagePropertyMakerAppleSmartStyles;
  v217 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v217 count:1];
  v477[202] = v3;
  v471 = kPFImagePropertyMakerAppleSmartStylesRenderingVersion;
  v216 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v216 count:1];
  v477[203] = v4;
  v472 = kPFImagePropertyMakerAppleSmartStylesColorBias;
  v215 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v215 count:1];
  v477[204] = v5;
  v473 = kPFImagePropertyMakerAppleSmartStylesIntensity;
  v214 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v214 count:1];
  v477[205] = v6;
  v474 = kPFImagePropertyMakerAppleSmartStylesCast;
  v213 = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v213 count:1];
  v477[206] = v7;
  v475 = kPFImagePropertyMakerAppleSmartStylesIsReversible;
  v212 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v212 count:1];
  v477[207] = v8;
  v476 = kPFImagePropertyMakerAppleSmartStylesIsExpectingReversibility;
  v211 = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];
  v477[208] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v477 forKeys:v419 count:209];
  v11 = _expectedImageDictionaryPropertyTypes_expectedImageDictionaryPropertyTypes;
  _expectedImageDictionaryPropertyTypes_expectedImageDictionaryPropertyTypes = v10;
}

- (id)_expectedImageArrayPropertyTypes
{
  if (_expectedImageArrayPropertyTypes_onceToken != -1)
  {
    dispatch_once(&_expectedImageArrayPropertyTypes_onceToken, &__block_literal_global_4244);
  }

  v3 = _expectedImageArrayPropertyTypes_expectedImageArrayPropertyTypes;

  return v3;
}

void __58__PFMetadataTypeVerifier__expectedImageArrayPropertyTypes__block_invoke()
{
  v27[12] = *MEMORY[0x1E69E9840];
  v26[0] = @"AFInfo";
  v25 = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v27[0] = v13;
  v26[1] = *MEMORY[0x1E696D970];
  v24 = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v27[1] = v12;
  v26[2] = *MEMORY[0x1E696DB48];
  v23 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v27[2] = v11;
  v26[3] = *MEMORY[0x1E696DA00];
  v22 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v27[3] = v10;
  v26[4] = *MEMORY[0x1E696DA40];
  v21 = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v27[4] = v0;
  v26[5] = *MEMORY[0x1E696DA60];
  v20 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v27[5] = v1;
  v26[6] = *MEMORY[0x1E696D8C8];
  v19 = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v27[6] = v2;
  v26[7] = *MEMORY[0x1E696DAF8];
  v18 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v27[7] = v3;
  v26[8] = *MEMORY[0x1E696DDD0];
  v17 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v27[8] = v4;
  v26[9] = *MEMORY[0x1E6990B18];
  v16 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v27[9] = v5;
  v26[10] = *MEMORY[0x1E6990A28];
  v15 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v27[10] = v6;
  v26[11] = *MEMORY[0x1E696DE58];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v27[11] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:12];
  v9 = _expectedImageArrayPropertyTypes_expectedImageArrayPropertyTypes;
  _expectedImageArrayPropertyTypes_expectedImageArrayPropertyTypes = v8;
}

- (PFMetadataTypeVerifier)init
{
  v13.receiver = self;
  v13.super_class = PFMetadataTypeVerifier;
  v2 = [(PFMetadataTypeVerifier *)&v13 init];
  v3 = v2;
  if (v2)
  {
    _expectedImageDictionaryPropertyTypes = [(PFMetadataTypeVerifier *)v2 _expectedImageDictionaryPropertyTypes];
    expectedImageDictionaryPropertyTypes = v3->_expectedImageDictionaryPropertyTypes;
    v3->_expectedImageDictionaryPropertyTypes = _expectedImageDictionaryPropertyTypes;

    _expectedImageArrayPropertyTypes = [(PFMetadataTypeVerifier *)v3 _expectedImageArrayPropertyTypes];
    expectedImageArrayPropertyTypes = v3->_expectedImageArrayPropertyTypes;
    v3->_expectedImageArrayPropertyTypes = _expectedImageArrayPropertyTypes;

    _expectedAVMetadataIdentifierTypes = [(PFMetadataTypeVerifier *)v3 _expectedAVMetadataIdentifierTypes];
    expectedAVMetadataIdentifierTypes = v3->_expectedAVMetadataIdentifierTypes;
    v3->_expectedAVMetadataIdentifierTypes = _expectedAVMetadataIdentifierTypes;

    _expectedAVMetadataKeyKeySpaceTypes = [(PFMetadataTypeVerifier *)v3 _expectedAVMetadataKeyKeySpaceTypes];
    expectedAVMetadataKeyKeySpaceTypes = v3->_expectedAVMetadataKeyKeySpaceTypes;
    v3->_expectedAVMetadataKeyKeySpaceTypes = _expectedAVMetadataKeyKeySpaceTypes;
  }

  return v3;
}

@end