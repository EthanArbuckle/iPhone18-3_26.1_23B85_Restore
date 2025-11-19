@interface PLPrimaryResourceDataStoreFileThumbnailRecipe
- (CGSize)sizeForAssetWidth:(int64_t)a3 height:(int64_t)a4;
- (PLPrimaryResourceDataStoreFileThumbnailRecipe)initWithRecipeID:(unsigned int)a3;
- (double)_longSideTargetLength;
- (double)_shortSideTargetLength;
- (id)chooseIngredientsFrom:(id)a3 version:(unsigned int)a4;
- (id)expectedFileURLForVersion:(unsigned int)a3 asset:(id)a4;
- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6;
@end

@implementation PLPrimaryResourceDataStoreFileThumbnailRecipe

- (CGSize)sizeForAssetWidth:(int64_t)a3 height:(int64_t)a4
{
  v5 = a3;
  v6 = a4;
  if ([(PLPrimaryResourceDataStoreFileThumbnailRecipe *)self _isAspectShortSizing])
  {
    [(PLPrimaryResourceDataStoreFileThumbnailRecipe *)self _shortSideTargetLength];
    v8 = v7;
    v9 = objc_opt_class();

    [v9 scaleOriginalSize:v5 toShortSideTarget:v6 maxLongSideLength:{v8, v8 * 5.0}];
  }

  else
  {
    [(PLPrimaryResourceDataStoreFileThumbnailRecipe *)self _longSideTargetLength];
    v13 = v12;
    v14 = objc_opt_class();

    [v14 scaleOriginalSize:v5 toLongSideTarget:{v6, v13}];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6
{
  v45[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = MEMORY[0x1E695DFA8];
  v12 = a6;
  v13 = [v11 set];
  v14 = [v9 assetID];
  v15 = [v14 libraryID];

  v16 = [(PLPrimaryResourceDataStoreFileThumbnailRecipe *)self supportedVersionsForLocalResourceGeneration];
  v40 = v10;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v10, "version")}];
  LODWORD(v10) = [v16 containsObject:v17];

  v38 = v15;
  if (v10)
  {
    if (PLIsAssetsd())
    {
      v18 = -[PLPrimaryResourceDataStoreFileThumbnailRecipe chooseIngredientsFrom:version:](self, "chooseIngredientsFrom:version:", v9, [v40 version]);
      v19 = [v18 objectForKeyedSubscript:@"Image"];

      if (v19)
      {
        v20 = [v19 dataStoreKey];
        v21 = [v9 assetID];
        v22 = [v20 fileURLForAssetID:v21];

        if (v22)
        {
          v41 = 0;
          v23 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v22 options:1 error:&v41];
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      [v9 generateAndUpdateThumbnailsWithPreviewImage:0 thumbnailImage:0 fromImageSource:0 imageData:v23 forceSRGBConversion:0];
      if ([v9 hasAllThumbs])
      {
        v27 = [PLResourceGenerator fileAndTableBackedThumbnailManagerRecipesForLibraryID:v15];
        v29 = [v27 set];
        [v13 unionSet:v29];

        if ([v9 hasAdjustments])
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        v31 = [PLResourceRecipe recipeFromID:65737];
        v32 = [PLResourceInstaller onDemand_installPrimaryImageResourceWithRecipe:v31 version:v30 forAsset:v9];
        if (v32)
        {
          [v13 addObject:v31];
        }

        v25 = [PLResourceRecipe recipeFromID:65741];
        v33 = [PLResourceInstaller onDemand_installPrimaryImageResourceWithRecipe:v25 version:v30 forAsset:v9];
        if (v33)
        {
          [v13 addObject:v25];
        }

        v28 = 0;
      }

      else
      {
        v34 = MEMORY[0x1E696ABC0];
        v35 = *MEMORY[0x1E69BFF48];
        v42[0] = *MEMORY[0x1E696A278];
        v27 = NSStringFromPLErrorCode();
        v43[0] = v27;
        v43[1] = self;
        v42[1] = @"recipe";
        v42[2] = @"version";
        v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v40, "version")}];
        v43[2] = v25;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
        v28 = [v34 errorWithDomain:v35 code:47008 userInfo:v33];
      }

      goto LABEL_24;
    }

    v25 = 0;
    v24 = *MEMORY[0x1E69BFF48];
  }

  else
  {
    v24 = *MEMORY[0x1E69BFF48];
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:47004 userInfo:{0, v15}];
    if (PLIsAssetsd())
    {
      goto LABEL_25;
    }
  }

  v26 = MEMORY[0x1E696ABC0];
  v44[0] = *MEMORY[0x1E696A278];
  v23 = NSStringFromPLErrorCode();
  v45[0] = v23;
  v45[1] = self;
  v44[1] = @"recipe";
  v44[2] = @"version";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v40, "version")}];
  v45[2] = v19;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
  v28 = [v26 errorWithDomain:v24 code:47008 userInfo:v27];
LABEL_24:

  v25 = v28;
LABEL_25:
  v36 = [v9 managedObjectContext];
  v37 = [MEMORY[0x1E695DFB8] orderedSet];
  v12[2](v12, v36, v25, v13, v37, 0);
}

- (id)expectedFileURLForVersion:(unsigned int)a3 asset:(id)a4
{
  v5 = MEMORY[0x1E69BF308];
  v6 = a4;
  v7 = [v6 thumbnailIdentifier];
  v8 = [v6 pathManager];

  v9 = [v5 thumbnailPathForThumbIdentifier:v7 withPathManager:v8 recipeID:-[PLPrimaryResourceDataStoreFileThumbnailRecipe recipeID](self forDelete:{"recipeID"), 0}];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)chooseIngredientsFrom:(id)a3 version:(unsigned int)a4
{
  v4 = *&a4;
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLPrimaryResourceDataStoreFileThumbnailRecipe *)self supportedVersionsForLocalResourceGeneration];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  v9 = [v7 containsObject:v8];

  if (!v9)
  {
    v24 = 0;
    goto LABEL_39;
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v10 addIndex:0];
  if ([v6 isRAWPlusJPEGWithRAWOnTop])
  {
    [v10 addIndex:4];
  }

  if ([v6 hasAdjustments])
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  [v6 resourcesSortedByQualityWithOptions:1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v34 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (!v13)
  {

LABEL_35:
    v28 = PLBackendGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "Resource generation failed to find image for thumbnail recipe", buf, 2u);
    }

    v26 = 0;
    v24 = 0;
    goto LABEL_38;
  }

  v14 = v13;
  v30 = 0;
  v15 = *v32;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v32 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v31 + 1) + 8 * i);
      if ([v10 containsIndex:{objc_msgSend(v17, "resourceType")}] && objc_msgSend(v17, "version") == v11 && objc_msgSend(v17, "localAvailability") >= 1)
      {
        v18 = v6;
        if ([v6 isRAWPlusJPEGWithRAWOnTop] && (objc_msgSend(v17, "isDerivative") & 1) == 0 && (objc_msgSend(v17, "uniformTypeIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isPrimaryImageFormat"), v19, (v20 & 1) != 0))
        {
          v6 = v18;
        }

        else
        {
          if (([v17 isDerivative] & 1) == 0)
          {
            v25 = v17;

            v30 = v25;
            v6 = v18;
            goto LABEL_31;
          }

          v21 = [v17 recipeID];
          v22 = v21;
          if (v21 == 65938 || v21 == 65737)
          {
            v23 = v17;

            v30 = v23;
          }

          v6 = v18;
          if (v22 == 65737 || v22 == 65938)
          {
            goto LABEL_31;
          }
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v26 = v30;
  if (!v30)
  {
    goto LABEL_35;
  }

  v27 = PLBackendGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v30;
    _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "Resource generation selected image resource for thumbnail recipe: %@", buf, 0xCu);
  }

  v35 = @"Image";
  v36 = v30;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
LABEL_38:

LABEL_39:

  return v24;
}

- (PLPrimaryResourceDataStoreFileThumbnailRecipe)initWithRecipeID:(unsigned int)a3
{
  v3 = *&a3;
  v9.receiver = self;
  v9.super_class = PLPrimaryResourceDataStoreFileThumbnailRecipe;
  v5 = [(PLPrimaryResourceDataStoreFileThumbnailRecipe *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() classFromRecipeID:v3];
    if (v6 != objc_opt_class())
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:v5 file:@"PLPrimaryResourceDataStoreFileThumbnailRecipe.m" lineNumber:85 description:@"wrong recipe class passed to recipe initializer."];
    }

    *(&v5->super._recipeID + 1) = v3;
  }

  return v5;
}

- (double)_longSideTargetLength
{
  v2 = *(&self->super._recipeID + 1);
  if (v2 == 269159)
  {
    return 360.0;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Long side length called on a non-long side recipe ID: %ld", v2}];
  return -1.0;
}

- (double)_shortSideTargetLength
{
  v2 = *(&self->super._recipeID + 1);
  if (v2 == 272151)
  {
    return 256.0;
  }

  if (v2 == 272155)
  {
    return 360.0;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Short side length called on a non-short side recipe ID: %ld", v2}];
  return -1.0;
}

@end