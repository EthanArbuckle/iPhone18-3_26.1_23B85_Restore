@interface PLResourceRecipe
+ (Class)classFromRecipeID:(unsigned int)a3;
+ (id)recipeFromID:(unsigned int)a3;
- (BOOL)isEqual:(id)a3;
- (PLResourceRecipe)initWithRecipeID:(unsigned int)a3;
- (id)chooseIngredientsFrom:(id)a3 version:(unsigned int)a4;
- (id)codecFourCharCodeName;
- (id)colorSpaceGivenSourceColorSpace:(id)a3 inContext:(id)a4;
- (id)recipeErrorWithCode:(int64_t)a3 version:(unsigned int)a4 underlyingError:(id)a5 debugDescription:(id)a6;
- (unsigned)recipeID;
- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6;
- (void)populateAdjustedRecipeIngredients:(id)a3 asset:(id)a4 version:(unsigned int)a5;
@end

@implementation PLResourceRecipe

- (void)populateAdjustedRecipeIngredients:(id)a3 asset:(id)a4 version:(unsigned int)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 hasAdjustments];
  if (a5 == 2 && v9)
  {
    v10 = [v8 adjustmentDataResource];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 adjustmentDictionary];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69BF368]];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 integerValue] == 0;
      }

      else
      {
        v15 = 1;
      }

      [v7 setObject:v11 forKeyedSubscript:@"Adjustment"];
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

    v17 = [v8 overflowAdjustmentDataResource];
    if (v17)
    {
      [v7 setObject:v17 forKeyedSubscript:@"LargeAdjustment"];
    }

    v18 = [v8 cameraProcessingAdjustmentState];
    if (![v8 isPhoto])
    {
      if (![v8 isVideo])
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

      v20 = [v8 firstPersistedResourceMatching:v19];
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

        [v7 setObject:v20 forKeyedSubscript:@"Video"];
        if ((v18 & 1) == 0)
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

        if ((v18 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v27 = [v8 firstPersistedResourceMatching:&__block_literal_global_287];
      [v7 setObject:v27 forKeyedSubscript:@"SpatialOvercapture"];
      goto LABEL_52;
    }

    if (v15)
    {
      [v8 primaryStoreOriginalResource];
    }

    else
    {
      [v8 firstPersistedResourceMatching:&__block_literal_global_268_57494];
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

      [v7 setObject:v20 forKeyedSubscript:@"Image"];
      if (v18)
      {
LABEL_30:
        v25 = [v8 firstPersistedResourceMatching:&__block_literal_global_271];
        [v7 setObject:v25 forKeyedSubscript:@"SpatialOvercapture"];
      }
    }

    else
    {
      if (v24)
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "Resource generation failed to find image for primary image recipe", &v31, 2u);
      }

      if (v18)
      {
        goto LABEL_30;
      }
    }

    if (![v8 isPhotoIris])
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

    v27 = [v8 firstPersistedResourceMatching:v26];
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

      [v7 setObject:v27 forKeyedSubscript:@"VideoComplement"];
      if ((v18 & 1) == 0)
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

      if ((v18 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v30 = [v8 firstPersistedResourceMatching:&__block_literal_global_278];
    [v7 setObject:v30 forKeyedSubscript:@"SpatialOvercapture"];

LABEL_52:
    goto LABEL_53;
  }

LABEL_55:
}

- (id)recipeErrorWithCode:(int64_t)a3 version:(unsigned int)a4 underlyingError:(id)a5 debugDescription:(id)a6
{
  v7 = *&a4;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = v12;
  if (v11)
  {
    [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A278]];
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

  if (v10)
  {
    [v13 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:a3 userInfo:v13];

  return v17;
}

- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D930];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"Subclasses must override %@", v8}];
}

- (id)chooseIngredientsFrom:(id)a3 version:(unsigned int)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Subclasses must override %@", v6}];

  return 0;
}

- (id)colorSpaceGivenSourceColorSpace:(id)a3 inContext:(id)a4
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

- (PLResourceRecipe)initWithRecipeID:(unsigned int)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Subclasses must override %@", v6}];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(PLResourceRecipe *)self recipeID];
    v8 = [(PLResourceRecipe *)v6 recipeID];

    v9 = v7 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)recipeFromID:(unsigned int)a3
{
  v3 = *&a3;
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

+ (Class)classFromRecipeID:(unsigned int)a3
{
  v4 = 0;
  v5 = HIWORD(a3);
  if (HIWORD(a3) <= 2u)
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