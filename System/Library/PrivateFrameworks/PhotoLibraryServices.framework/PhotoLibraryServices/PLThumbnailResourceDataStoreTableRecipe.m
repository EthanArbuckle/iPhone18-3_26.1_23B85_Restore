@interface PLThumbnailResourceDataStoreTableRecipe
- (PLThumbnailResourceDataStoreTableRecipe)initWithRecipeID:(unsigned int)a3;
- (id)uti;
- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6;
@end

@implementation PLThumbnailResourceDataStoreTableRecipe

- (void)generateAndStoreForAsset:(id)a3 options:(id)a4 progress:(id *)a5 completion:(id)a6
{
  v21[3] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E69BFF48];
  v20[0] = *MEMORY[0x1E696A578];
  v10 = a6;
  v11 = a4;
  v12 = NSStringFromPLErrorCode();
  v21[0] = v12;
  v21[1] = self;
  v20[1] = @"recipe";
  v20[2] = @"version";
  v13 = MEMORY[0x1E696AD98];
  v14 = [v11 version];

  v15 = [v13 numberWithUnsignedInt:v14];
  v21[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v17 = [v8 errorWithDomain:v9 code:47005 userInfo:v16];

  v18 = [MEMORY[0x1E695DFD8] set];
  v19 = [MEMORY[0x1E695DFB8] orderedSet];
  (*(v10 + 2))(v10, 0, v17, v18, v19, 0);
}

- (id)uti
{
  v2 = [[PLUniformTypeIdentifier alloc] initWithIdentifier:@"public.image" conformanceHint:1];

  return v2;
}

- (PLThumbnailResourceDataStoreTableRecipe)initWithRecipeID:(unsigned int)a3
{
  v3 = *&a3;
  v9.receiver = self;
  v9.super_class = PLThumbnailResourceDataStoreTableRecipe;
  v5 = [(PLThumbnailResourceDataStoreTableRecipe *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() classFromRecipeID:v3];
    if (v6 != objc_opt_class())
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:v5 file:@"PLThumbnailResourceDataStoreTableRecipe.m" lineNumber:37 description:@"wrong recipe class passed to recipe initializer."];
    }

    v5->_recipeID = v3;
  }

  return v5;
}

@end