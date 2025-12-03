@interface PLResourceRecipe
+ (Class)classFromRecipeID:(unsigned int)d;
+ (id)recipeFromID:(unsigned int)d;
- (BOOL)isEqual:(id)equal;
- (PLResourceRecipe)initWithRecipeID:(unsigned int)d;
- (id)chooseIngredientsFrom:(id)from version:(unsigned int)version;
- (id)codecFourCharCodeName;
- (id)colorSpaceGivenSourceColorSpace:(id)space inContext:(id)context;
- (id)recipeErrorWithCode:(int64_t)code version:(unsigned int)version underlyingError:(id)error debugDescription:(id)description;
- (unsigned)recipeID;
- (void)generateAndStoreForAsset:(id)asset options:(id)options progress:(id *)progress completion:(id)completion;
- (void)populateAdjustedRecipeIngredients:(id)ingredients asset:(id)asset version:(unsigned int)version;
@end

@implementation PLResourceRecipe

- (void)populateAdjustedRecipeIngredients:(id)ingredients asset:(id)asset version:(unsigned int)version
{
  v33 = *MEMORY[0x1E69E9840];
  ingredientsCopy = ingredients;
  assetCopy = asset;
  hasAdjustments = [assetCopy hasAdjustments];
  if (version == 2 && hasAdjustments)
  {
    adjustmentDataResource = [assetCopy adjustmentDataResource];
    v11 = adjustmentDataResource;
    if (adjustmentDataResource)
    {
      adjustmentDictionary = [adjustmentDataResource adjustmentDictionary];
      v13 = [adjustmentDictionary objectForKeyedSubscript:*MEMORY[0x1E69BF368]];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 integerValue] == 0;
      }

      else
      {
        v15 = 1;
      }

      [ingredientsCopy setObject:v11 forKeyedSubscript:@"Adjustment"];
    }

    else
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Resource generation failed to find video for adjustment data", &v31, 2u);
      }

      v15 = 1;
    }

    overflowAdjustmentDataResource = [assetCopy overflowAdjustmentDataResource];
    if (overflowAdjustmentDataResource)
    {
      [ingredientsCopy setObject:overflowAdjustmentDataResource forKeyedSubscript:@"LargeAdjustment"];
    }

    cameraProcessingAdjustmentState = [assetCopy cameraProcessingAdjustmentState];
    if (![assetCopy isPhoto])
    {
      if (![assetCopy isVideo])
      {
LABEL_54:

        goto LABEL_55;
      }

      if (v15)
      {
        v19 = &__block_literal_global_281;
      }

      else
      {
        v19 = &__block_literal_global_284;
      }

      v20 = [assetCopy firstPersistedResourceMatching:v19];
      v21 = PLBackendGetLog();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
      if (v20)
      {
        if (v22)
        {
          v31 = 138412290;
          v32 = v20;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "Resource generation selected video resource for primary video recipe: %@", &v31, 0xCu);
        }

        [ingredientsCopy setObject:v20 forKeyedSubscript:@"Video"];
        if ((cameraProcessingAdjustmentState & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v22)
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "Resource generation failed to find video for primary video recipe", &v31, 2u);
        }

        if ((cameraProcessingAdjustmentState & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v27 = [assetCopy firstPersistedResourceMatching:&__block_literal_global_287];
      [ingredientsCopy setObject:v27 forKeyedSubscript:@"SpatialOvercapture"];
      goto LABEL_52;
    }

    if (v15)
    {
      [assetCopy primaryStoreOriginalResource];
    }

    else
    {
      [assetCopy firstPersistedResourceMatching:&__block_literal_global_268_57494];
    }
    v20 = ;
    v23 = PLBackendGetLog();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      if (v24)
      {
        v31 = 138412290;
        v32 = v20;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "Resource generation selected image resource for primary image recipe: %@", &v31, 0xCu);
      }

      [ingredientsCopy setObject:v20 forKeyedSubscript:@"Image"];
      if (cameraProcessingAdjustmentState)
      {
LABEL_30:
        v25 = [assetCopy firstPersistedResourceMatching:&__block_literal_global_271];
        [ingredientsCopy setObject:v25 forKeyedSubscript:@"SpatialOvercapture"];
      }
    }

    else
    {
      if (v24)
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "Resource generation failed to find image for primary image recipe", &v31, 2u);
      }

      if (cameraProcessingAdjustmentState)
      {
        goto LABEL_30;
      }
    }

    if (![assetCopy isPhotoIris])
    {
LABEL_53:

      goto LABEL_54;
    }

    if (v15)
    {
      v26 = &__block_literal_global_273;
    }

    else
    {
      v26 = &__block_literal_global_275_57497;
    }

    v27 = [assetCopy firstPersistedResourceMatching:v26];
    v28 = PLBackendGetLog();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
    if (v27)
    {
      if (v29)
      {
        v31 = 138412290;
        v32 = v27;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "Resource generation selected video complement resource: %@", &v31, 0xCu);
      }

      [ingredientsCopy setObject:v27 forKeyedSubscript:@"VideoComplement"];
      if ((cameraProcessingAdjustmentState & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v29)
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "Resource generation failed to find video complement resource.", &v31, 2u);
      }

      if ((cameraProcessingAdjustmentState & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v30 = [assetCopy firstPersistedResourceMatching:&__block_literal_global_278];
    [ingredientsCopy setObject:v30 forKeyedSubscript:@"SpatialOvercapture"];

LABEL_52:
    goto LABEL_53;
  }

LABEL_55:
}

- (id)recipeErrorWithCode:(int64_t)code version:(unsigned int)version underlyingError:(id)error debugDescription:(id)description
{
  v7 = *&version;
  errorCopy = error;
  descriptionCopy = description;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = dictionary;
  if (descriptionCopy)
  {
    [dictionary setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  else
  {
    v14 = NSStringFromPLErrorCode();
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696A278]];
  }

  v15 = [(PLResourceRecipe *)self description];
  [v13 setObject:v15 forKeyedSubscript:@"recipe"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  [v13 setObject:v16 forKeyedSubscript:@"version"];

  if (errorCopy)
  {
    [v13 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:code userInfo:v13];

  return v17;
}

- (void)generateAndStoreForAsset:(id)asset options:(id)options progress:(id *)progress completion:(id)completion
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"Subclasses must override %@", v8}];
}

- (id)chooseIngredientsFrom:(id)from version:(unsigned int)version
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Subclasses must override %@", v6}];

  return 0;
}

- (id)colorSpaceGivenSourceColorSpace:(id)space inContext:(id)context
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Subclasses must override %@", v6}];

  return 0;
}

- (id)codecFourCharCodeName
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Subclasses must override %@", v4}];

  return 0;
}

- (unsigned)recipeID
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Subclasses must override %@", v4}];

  return 0;
}

- (PLResourceRecipe)initWithRecipeID:(unsigned int)d
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Subclasses must override %@", v6}];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    recipeID = [(PLResourceRecipe *)self recipeID];
    recipeID2 = [(PLResourceRecipe *)v6 recipeID];

    v9 = recipeID == recipeID2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)recipeFromID:(unsigned int)d
{
  v3 = *&d;
  if (recipeFromID__s_onceToken != -1)
  {
    dispatch_once(&recipeFromID__s_onceToken, &__block_literal_global_57519);
  }

  os_unfair_lock_lock(&recipeFromID__s_lock);
  v4 = recipeFromID__s_recipesByID;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v8 = [objc_opt_class() classFromRecipeID:v3];
    if (v8)
    {
      v6 = [[v8 alloc] initWithRecipeID:v3];
      if (v6)
      {
        v9 = recipeFromID__s_recipesByID;
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
        [v9 setObject:v6 forKeyedSubscript:v10];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  os_unfair_lock_unlock(&recipeFromID__s_lock);

  return v6;
}

void __33__PLResourceRecipe_recipeFromID___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = recipeFromID__s_recipesByID;
  recipeFromID__s_recipesByID = v0;

  recipeFromID__s_lock = 0;
}

+ (Class)classFromRecipeID:(unsigned int)d
{
  v4 = 0;
  v5 = HIWORD(d);
  if (HIWORD(d) <= 2u)
  {
    if (v5 == 1 || v5 == 2)
    {
      goto LABEL_8;
    }
  }

  else if (v5 == 3 || v5 == 4 || v5 == 5)
  {
LABEL_8:
    v4 = objc_opt_class();
  }

  return v4;
}

@end