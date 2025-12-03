@interface PXStoryMiroMemoryConverter
- (BOOL)containsAnyData;
- (PXStoryMiroMemoryConverter)init;
- (PXStoryMiroMemoryConverter)initWithMemory:(id)memory keyAsset:(id)asset;
- (id)_fetchMiroCuratedAssetsInMemory:(id)memory;
- (id)createNewRecipeFromMiroMetadataWithError:(id *)error;
- (id)description;
- (void)_loadSavedMetadataForMemory:(id)memory;
@end

@implementation PXStoryMiroMemoryConverter

- (id)_fetchMiroCuratedAssetsInMemory:(id)memory
{
  v20 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  v4 = [MEMORY[0x1E6978630] fetchMovieCuratedAssetsInMemory:memoryCopy];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [memoryCopy movieStateDataForAsset:{v11, v15}];
        if (v12)
        {
          v13 = [PXStoryMiroAssetInfo infoWithData:v12];
          if ([v13 isUsed])
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_loadSavedMetadataForMemory:(id)memory
{
  v6 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  v5 = [(PXStoryMiroMemoryConverter *)self _fetchMiroCuratedAssetsInMemory:memoryCopy];
  if ([v5 count])
  {
    PXDisplayAssetFetchResultFromArray();
  }
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  curatedAssets = [(PXStoryMiroMemoryConverter *)self curatedAssets];
  v4 = [v2 stringWithFormat:@"< assets:%lu >", objc_msgSend(curatedAssets, "count")];

  return v4;
}

- (id)createNewRecipeFromMiroMetadataWithError:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (![(PXStoryMiroMemoryConverter *)self containsAnyData])
  {
    v8 = 0;
    v18 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  createRecipe = [MEMORY[0x1E69C08C8] createRecipe];
  v6 = [createRecipe mutableCopyWithZone:0];

  curatedAssets = [(PXStoryMiroMemoryConverter *)self curatedAssets];
  v27 = 0;
  [PFStoryRecipe_PXStoryExtension addPHAssets:curatedAssets toRecipe:v6 withCategory:3 error:&v27];
  v8 = v27;

  v9 = *MEMORY[0x1E69C0DB0];
  v23 = *(MEMORY[0x1E69C0DB0] + 16);
  v10 = *(MEMORY[0x1E69C0DB0] + 48);
  v24 = *(MEMORY[0x1E69C0DB0] + 32);
  v25 = v10;
  v26 = *(MEMORY[0x1E69C0DB0] + 64);
  v22 = v9;
  v21 = 2;
  [v6 setOverallDurationInfo:&v21];
  flexMusicID = [(PXStoryMiroMemoryConverter *)self flexMusicID];

  if (flexMusicID)
  {
    v12 = MEMORY[0x1E69C08D0];
    v13 = *MEMORY[0x1E69C0DD0];
    flexMusicID2 = [(PXStoryMiroMemoryConverter *)self flexMusicID];
    v15 = [v12 createAssetWithCategory:2 subcategory:0 catalog:v13 songID:flexMusicID2 title:0 subtitle:0 colorGradeCategory:0];

    [v6 addAsset:v15];
    v28 = v13;
    identifier = [v15 identifier];
    v29[0] = identifier;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    [v6 setSeedSongIdentifiersByCatalog:v17];
  }

  v18 = [v6 copyWithZone:0];

  if (error)
  {
LABEL_7:
    v19 = v8;
    *error = v8;
  }

LABEL_8:

  return v18;
}

- (BOOL)containsAnyData
{
  curatedAssets = [(PXStoryMiroMemoryConverter *)self curatedAssets];
  v3 = [curatedAssets count] > 0;

  return v3;
}

- (PXStoryMiroMemoryConverter)initWithMemory:(id)memory keyAsset:(id)asset
{
  memoryCopy = memory;
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = PXStoryMiroMemoryConverter;
  v9 = [(PXStoryMiroMemoryConverter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memory, memory);
    objc_storeStrong(&v10->_keyAsset, asset);
    [(PXStoryMiroMemoryConverter *)v10 _loadSavedMetadataForMemory:memoryCopy];
  }

  return v10;
}

- (PXStoryMiroMemoryConverter)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMiroMemoryConverter.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXStoryMiroMemoryConverter init]"}];

  abort();
}

@end