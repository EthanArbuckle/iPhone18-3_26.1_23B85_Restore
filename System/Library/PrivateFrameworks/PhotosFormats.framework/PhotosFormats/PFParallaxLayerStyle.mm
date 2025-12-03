@interface PFParallaxLayerStyle
+ (BOOL)isSegmentedStyle:(id)style;
+ (BOOL)styleKind:(id)kind supportsParameter:(id)parameter;
+ (BOOL)validateParameterKey:(id)key value:(id)value error:(id *)error;
+ (BOOL)validateParameters:(id)parameters error:(id *)error;
+ (PFParallaxLayerStyle)styleWithDictionary:(id)dictionary error:(id *)error;
+ (id)deserializeColorSuggestions:(id)suggestions error:(id *)error;
+ (id)deserializeParameter:(id)parameter forKey:(id)key error:(id *)error;
+ (id)deserializeParameters:(id)parameters error:(id *)error;
+ (id)dictionaryWithStyle:(id)style;
+ (id)serializeParameter:(id)parameter forKey:(id)key;
+ (id)serializeParameters:(id)parameters;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToParallaxLayerStyle:(id)style;
- (PFParallaxLayerStyle)initWithCoder:(id)coder;
- (PFParallaxLayerStyle)initWithKind:(id)kind parameters:(id)parameters colorSuggestions:(id)suggestions;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFParallaxLayerStyle

- (PFParallaxLayerStyle)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v7 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:3];
  v9 = [v7 setWithArray:{v8, v14, v15}];
  v10 = [coderCopy decodeDictionaryWithKeysOfClasses:v6 objectsOfClasses:v9 forKey:@"parameters"];

  v11 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"colorSuggestions"];

  v12 = [(PFParallaxLayerStyle *)self initWithKind:v5 parameters:v10 colorSuggestions:v11];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  kind = [(PFParallaxLayerStyle *)self kind];
  [coderCopy encodeObject:kind forKey:@"kind"];

  parameters = [(PFParallaxLayerStyle *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];

  colorSuggestions = [(PFParallaxLayerStyle *)self colorSuggestions];
  [coderCopy encodeObject:colorSuggestions forKey:@"colorSuggestions"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  kind = [(PFParallaxLayerStyle *)self kind];
  parameters = [(PFParallaxLayerStyle *)self parameters];
  colorSuggestions = [(PFParallaxLayerStyle *)self colorSuggestions];
  v8 = [v3 stringWithFormat:@"<%@: %p, kind: %@, parameters: %@, color suggestions: %@", v4, self, kind, parameters, colorSuggestions];

  return v8;
}

- (BOOL)isEqualToParallaxLayerStyle:(id)style
{
  styleCopy = style;
  kind = [(PFParallaxLayerStyle *)self kind];
  kind2 = [styleCopy kind];
  v7 = [kind isEqualToString:kind2];

  if (v7 && (-[PFParallaxLayerStyle parameters](self, "parameters"), v8 = objc_claimAutoreleasedReturnValue(), [styleCopy parameters], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToDictionary:", v9), v9, v8, v10))
  {
    colorSuggestions = [(PFParallaxLayerStyle *)self colorSuggestions];
    colorSuggestions2 = [styleCopy colorSuggestions];
    v13 = [colorSuggestions isEqualToArray:colorSuggestions2];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PFParallaxLayerStyle *)self isEqualToParallaxLayerStyle:equalCopy];

  return v5;
}

- (PFParallaxLayerStyle)initWithKind:(id)kind parameters:(id)parameters colorSuggestions:(id)suggestions
{
  kindCopy = kind;
  parametersCopy = parameters;
  suggestionsCopy = suggestions;
  v21 = 0;
  [PFParallaxLayerStyle validateParameters:parametersCopy error:&v21];
  v11 = v21;
  v20.receiver = self;
  v20.super_class = PFParallaxLayerStyle;
  v12 = [(PFParallaxLayerStyle *)&v20 init];
  if (v12)
  {
    v13 = [kindCopy copy];
    kind = v12->_kind;
    v12->_kind = v13;

    v15 = [parametersCopy copy];
    parameters = v12->_parameters;
    v12->_parameters = v15;

    v17 = [suggestionsCopy copy];
    colorSuggestions = v12->_colorSuggestions;
    v12->_colorSuggestions = v17;
  }

  return v12;
}

+ (BOOL)validateParameterKey:(id)key value:(id)value error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  if (validateParameterKey_value_error__onceToken != -1)
  {
    dispatch_once(&validateParameterKey_value_error__onceToken, &__block_literal_global_123_9190);
  }

  v9 = [validateParameterKey_value_error__parameterValidationMap objectForKeyedSubscript:keyCopy];
  v10 = v9;
  if (!v9)
  {
    if (!error)
    {
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }

    v13 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A278];
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown parameter key: %@", keyCopy];
    v23[0] = keyCopy;
    v15 = MEMORY[0x1E695DF20];
    v16 = v23;
    v17 = &v22;
LABEL_9:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    *error = [v13 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v18];

    goto LABEL_10;
  }

  v11 = (*(v9 + 16))(v9, valueCopy);
  v12 = v11;
  if (error && (v11 & 1) == 0)
  {
    v13 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A278];
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter for key: %@, value: %@", keyCopy, valueCopy];
    v21 = keyCopy;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v21;
    v17 = &v20;
    goto LABEL_9;
  }

LABEL_11:

  return v12;
}

void __57__PFParallaxLayerStyle_validateParameterKey_value_error___block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v2[0] = @"mode";
  v2[1] = @"color";
  v3[0] = &__block_literal_global_120;
  v3[1] = &__block_literal_global_116;
  v2[2] = @"primaryColor";
  v2[3] = @"secondaryColor";
  v3[2] = &__block_literal_global_116;
  v3[3] = &__block_literal_global_116;
  v2[4] = @"clockFont";
  v2[5] = @"clockColor";
  v3[4] = &__block_literal_global_118;
  v3[5] = &__block_literal_global_116;
  v2[6] = @"clockVibrancy";
  v2[7] = @"lowKey";
  v3[6] = &__block_literal_global_120;
  v3[7] = &__block_literal_global_120;
  v2[8] = @"highKey";
  v2[9] = @"background";
  v3[8] = &__block_literal_global_120;
  v3[9] = &__block_literal_global_120;
  v2[10] = @"headroomLook";
  v3[10] = &__block_literal_global_120;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = validateParameterKey_value_error__parameterValidationMap;
  validateParameterKey_value_error__parameterValidationMap = v0;
}

+ (BOOL)validateParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9200;
  v14 = __Block_byref_object_dispose__9201;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PFParallaxLayerStyle_validateParameters_error___block_invoke;
  v9[3] = &unk_1E7B661A0;
  v9[5] = &v10;
  v9[6] = self;
  v9[4] = &v16;
  [parametersCopy enumerateKeysAndObjectsUsingBlock:v9];
  v7 = *(v17 + 24);
  if (error && (v17[3] & 1) == 0)
  {
    *error = v11[5];
    v7 = *(v17 + 24);
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v7 & 1;
}

void __49__PFParallaxLayerStyle_validateParameters_error___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[6];
  v10 = 0;
  v7 = [v6 validateParameterKey:a2 value:a3 error:&v10];
  v8 = v10;
  v9 = v10;
  *(*(a1[4] + 8) + 24) = v7;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
    objc_storeStrong((*(a1[5] + 8) + 40), v8);
  }
}

+ (id)deserializeColorSuggestions:(id)suggestions error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = suggestionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v16 = MEMORY[0x1E696ABC0];
            v24 = *MEMORY[0x1E696A278];
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid color suggestion value: %@", v12];
            v25 = v17;
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
            *error = [v16 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v18];
          }

LABEL_13:

          v15 = 0;
          goto LABEL_14;
        }

        v13 = [PFParallaxPaletteSuggestion paletteSuggestionWithDictionary:v12 error:error];
        if (!v13)
        {
          goto LABEL_13;
        }

        v14 = v13;
        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = v6;
LABEL_14:

  return v15;
}

+ (id)deserializeParameter:(id)parameter forKey:(id)key error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  keyCopy = key;
  if (deserializeParameter_forKey_error__onceToken != -1)
  {
    dispatch_once(&deserializeParameter_forKey_error__onceToken, &__block_literal_global_105);
  }

  v9 = [deserializeParameter_forKey_error__parameterDeserializationMap objectForKeyedSubscript:keyCopy];
  v10 = v9;
  if (v9)
  {
    error = (*(v9 + 16))(v9, parameterCopy, error);
  }

  else if (error)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown parameter key: %@", keyCopy, *MEMORY[0x1E696A278]];
    v16[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v11 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v13];

    error = 0;
  }

  return error;
}

void __58__PFParallaxLayerStyle_deserializeParameter_forKey_error___block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v2[0] = @"mode";
  v2[1] = @"color";
  v3[0] = &__block_literal_global_103;
  v3[1] = &__block_literal_global_97_9207;
  v2[2] = @"primaryColor";
  v2[3] = @"secondaryColor";
  v3[2] = &__block_literal_global_97_9207;
  v3[3] = &__block_literal_global_97_9207;
  v2[4] = @"clockFont";
  v2[5] = @"clockColor";
  v3[4] = &__block_literal_global_103;
  v3[5] = &__block_literal_global_97_9207;
  v2[6] = @"clockVibrancy";
  v2[7] = @"lowKey";
  v3[6] = &__block_literal_global_103;
  v3[7] = &__block_literal_global_103;
  v2[8] = @"highKey";
  v2[9] = @"background";
  v3[8] = &__block_literal_global_103;
  v3[9] = &__block_literal_global_103;
  v2[10] = @"headroomLook";
  v3[10] = &__block_literal_global_103;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = deserializeParameter_forKey_error__parameterDeserializationMap;
  deserializeParameter_forKey_error__parameterDeserializationMap = v0;
}

+ (id)deserializeParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9200;
  v20 = __Block_byref_object_dispose__9201;
  v21 = 0;
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(parametersCopy, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__PFParallaxLayerStyle_deserializeParameters_error___block_invoke;
  v12[3] = &unk_1E7B66158;
  selfCopy = self;
  v8 = v7;
  v13 = v8;
  v14 = &v16;
  [parametersCopy enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v17[5];
  if (v9)
  {
    v10 = 0;
    if (error)
    {
      *error = v9;
    }
  }

  else
  {
    v10 = v8;
  }

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __52__PFParallaxLayerStyle_deserializeParameters_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 48);
  v12 = 0;
  v9 = [v8 deserializeParameter:a3 forKey:v7 error:&v12];
  v10 = v12;
  v11 = v12;
  if (v9)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
    *a4 = 1;
  }
}

+ (PFParallaxLayerStyle)styleWithDictionary:(id)dictionary error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"kind"];
  if (!v7)
  {
    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A278];
      dictionaryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dictionary missing a style kind: %@", dictionaryCopy];
      v32[0] = dictionaryCopy;
      v14 = MEMORY[0x1E695DF20];
      v15 = v32;
      v16 = &v31;
LABEL_14:
      dictionaryCopy2 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
      [v13 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:dictionaryCopy2];
      *error = v17 = 0;
LABEL_27:

      v9 = dictionaryCopy;
      goto LABEL_28;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A278];
      dictionaryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid style kind: %@", v7];
      v30 = dictionaryCopy;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v30;
      v16 = &v29;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"parameters"];
  if (!v8)
  {
    if (error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A278];
      dictionaryCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dictionary missing style parameters: %@", dictionaryCopy];
      v28 = dictionaryCopy2;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [v18 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v12];
      dictionaryCopy = 0;
      *error = v17 = 0;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v9 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionaryCopy = [self deserializeParameters:v9 error:error];

    if (dictionaryCopy)
    {
      dictionaryCopy2 = [dictionaryCopy objectForKeyedSubscript:@"colorSuggestions"];
      if (dictionaryCopy2)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
LABEL_32:
            v17 = 0;
            goto LABEL_27;
          }

          v20 = MEMORY[0x1E696ABC0];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid color suggestions: %@", dictionaryCopy2, *MEMORY[0x1E696A278]];
          v24 = v12;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          *error = [v20 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v21];

          v17 = 0;
          goto LABEL_26;
        }

        v12 = [self deserializeColorSuggestions:dictionaryCopy2 error:error];
        if (!v12)
        {
          goto LABEL_32;
        }
      }

      else
      {
        NSLog(&cfstr_DictionaryMiss_1.isa);
        v12 = MEMORY[0x1E695E0F0];
      }

      v17 = [[PFParallaxLayerStyle alloc] initWithKind:v7 parameters:dictionaryCopy colorSuggestions:v12];
LABEL_26:

      goto LABEL_27;
    }

LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  if (error)
  {
    v19 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    dictionaryCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid style parameters: %@", v9];
    v26 = dictionaryCopy2;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v19 errorWithDomain:@"com.apple.PhotosFormats" code:7 userInfo:v12];
    *error = v17 = 0;
    dictionaryCopy = v9;
    goto LABEL_26;
  }

LABEL_21:
  v17 = 0;
LABEL_28:

LABEL_29:

  return v17;
}

+ (id)serializeParameter:(id)parameter forKey:(id)key
{
  v5 = serializeParameter_forKey__onceToken;
  keyCopy = key;
  parameterCopy = parameter;
  if (v5 != -1)
  {
    dispatch_once(&serializeParameter_forKey__onceToken, &__block_literal_global_71);
  }

  v8 = [serializeParameter_forKey__parameterSerializationMap objectForKeyedSubscript:keyCopy];

  v9 = (v8)[2](v8, parameterCopy);

  return v9;
}

void __50__PFParallaxLayerStyle_serializeParameter_forKey___block_invoke()
{
  v3[11] = *MEMORY[0x1E69E9840];
  v2[0] = @"mode";
  v2[1] = @"color";
  v3[0] = &__block_literal_global_69;
  v3[1] = &__block_literal_global_66;
  v2[2] = @"primaryColor";
  v2[3] = @"secondaryColor";
  v3[2] = &__block_literal_global_66;
  v3[3] = &__block_literal_global_66;
  v2[4] = @"clockFont";
  v2[5] = @"clockVibrancy";
  v3[4] = &__block_literal_global_69;
  v3[5] = &__block_literal_global_69;
  v2[6] = @"clockColor";
  v2[7] = @"lowKey";
  v3[6] = &__block_literal_global_66;
  v3[7] = &__block_literal_global_69;
  v2[8] = @"highKey";
  v2[9] = @"background";
  v3[8] = &__block_literal_global_69;
  v3[9] = &__block_literal_global_69;
  v2[10] = @"headroomLook";
  v3[10] = &__block_literal_global_69;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:11];
  v1 = serializeParameter_forKey__parameterSerializationMap;
  serializeParameter_forKey__parameterSerializationMap = v0;
}

+ (id)serializeParameters:(id)parameters
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__PFParallaxLayerStyle_serializeParameters___block_invoke;
  v5[3] = &__block_descriptor_40_e21__24__0__NSString_8_16l;
  v5[4] = self;
  v3 = PFMapDictionary(parameters, v5);

  return v3;
}

+ (id)dictionaryWithStyle:(id)style
{
  v13[3] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  colorSuggestions = [styleCopy colorSuggestions];
  v6 = [self serializeColorSuggestions:colorSuggestions];

  parameters = [styleCopy parameters];
  v8 = [self serializeParameters:parameters];

  v12[0] = @"kind";
  kind = [styleCopy kind];

  v13[0] = kind;
  v13[1] = v8;
  v12[1] = @"parameters";
  v12[2] = @"colorSuggestions";
  v13[2] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (BOOL)isSegmentedStyle:(id)style
{
  styleCopy = style;
  if ([styleCopy isEqualToString:@"Studio"] & 1) != 0 || (objc_msgSend(styleCopy, "isEqualToString:", @"BlackWhite") & 1) != 0 || (objc_msgSend(styleCopy, "isEqualToString:", @"ColorBGStandard") & 1) != 0 || (objc_msgSend(styleCopy, "isEqualToString:", @"GreenScreen") & 1) != 0 || (objc_msgSend(styleCopy, "isEqualToString:", @"GreenScreenMono") & 1) != 0 || (objc_msgSend(styleCopy, "isEqualToString:", @"GreenScreenBlur"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [styleCopy isEqualToString:@"GreenScreenGraphic"];
  }

  return v4;
}

+ (BOOL)styleKind:(id)kind supportsParameter:(id)parameter
{
  kindCopy = kind;
  parameterCopy = parameter;
  if (![parameterCopy isEqualToString:@"mode"])
  {
    if ([parameterCopy isEqualToString:@"color"])
    {
      if (([kindCopy isEqualToString:@"ColorWashSingle"] & 1) == 0 && (objc_msgSend(kindCopy, "isEqualToString:", @"ColorBGStandard") & 1) == 0 && (objc_msgSend(kindCopy, "isEqualToString:", @"GreenScreen") & 1) == 0 && (objc_msgSend(kindCopy, "isEqualToString:", @"GreenScreenMono") & 1) == 0 && (objc_msgSend(kindCopy, "isEqualToString:", @"GreenScreenBlur") & 1) == 0)
      {
        v7 = @"GreenScreenGraphic";
        goto LABEL_14;
      }
    }

    else
    {
      if ([parameterCopy isEqualToString:@"primaryColor"] & 1) != 0 || (objc_msgSend(parameterCopy, "isEqualToString:", @"secondaryColor"))
      {
        v7 = @"ColorWashDuotone";
        goto LABEL_14;
      }

      if (([parameterCopy isEqualToString:@"clockFont"] & 1) == 0 && (objc_msgSend(parameterCopy, "isEqualToString:", @"clockColor") & 1) == 0 && (objc_msgSend(parameterCopy, "isEqualToString:", @"clockVibrancy") & 1) == 0)
      {
        if (![parameterCopy isEqualToString:@"headroomLook"])
        {
          v8 = 0;
          goto LABEL_19;
        }

        v7 = @"Original";
        goto LABEL_14;
      }
    }

LABEL_18:
    v8 = 1;
    goto LABEL_19;
  }

  if ([kindCopy isEqualToString:@"Studio"])
  {
    goto LABEL_18;
  }

  v7 = @"BlackWhite";
LABEL_14:
  v8 = [kindCopy isEqualToString:v7];
LABEL_19:

  return v8;
}

@end